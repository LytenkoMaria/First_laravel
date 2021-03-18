<?php

namespace App\Console\Commands;
use App\Models\User;
use App\Notifications;
use Illuminate\Notifications\Notification;
use App\Notifications\SendNewAnnouncementsToSlack;
use Illuminate\Console\Command;
use Illuminate\Foundation\Auth;
use Goutte\Client;
use App\Models\Announcements;


class ParsingDataCommand extends Command
{
    private $data=[];
    private $lastDate;
    //'https://www.olx.ua/transport/legkovye-avtomobili/daewoo/?search%5Border%5D=created_at%3Adesc';
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'parsing:start {url}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $lastDate = Announcements::orderBy('date_announcement' ,'DESC')->get()
            ->pluck('date_announcement')
            ->first();
        $url = $this->argument('url');
        $this->lastDate = date("Y-m-d H:i:s",strtotime($lastDate));
        $client = new Client();
        $crawler = $client->request('GET', $url);
        $crawler->filter('.offer-wrapper')->each(function ($node) {

            $this->data['link'] = $node->filter('a.thumb')->attr('href');
            $this->data['images_url'] = $node->filter('img.fleft')->attr('src');
            $this->data['advertisements_name'] = $node->filter('a > strong')->text();
            $this->data['price']= $node->filter('p.price > strong')->text();
            $client2 = new Client();
            $announcement = $client2->request('GET',  $this->data['link']);
            $enMonths = array( 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' );
            $ruMonths = array( 'января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря' );
            $date = $announcement->filter('.offer-bottombar__item em')->text();
            $date = trim( $date ," в");
            $dateTrim = str_replace($ruMonths, $enMonths, $date);
            $this->data['date_announcement'] = date("Y-m-d H:i:s",strtotime($dateTrim));
                if($this->data['date_announcement']>$this->lastDate) {
                        $announcement->filter('.offer-details__param')->each(function ($node) {
                            if ($node->filter('.offer-details__name')->text() == 'Год выпуска') {
                                $this->data['year'] = $node->filter('strong')->text();
                            }
                            if ($node->filter('.offer-details__name')->text() == 'Вид топлива') {
                                $this->data['type_of_fuel'] = $node->filter('strong')->text();
                            }
                            if ($node->filter('.offer-details__name')->text() == 'Пробег') {
                                $this->data['mileage'] = $node->filter('strong')->text();
                            }
                        });
                        $this->data['description'] = $announcement->filter('#textContent')->text();
                        Announcements::create($this->data);
                        $users = User::where('slack_webhook' ,'!=' , null)
                            ->select('slack_webhook')
                            ->get();
                        foreach ($users as $user)
                        {
                            $user->notify(new SendNewAnnouncementsToSlack($this->data));
                        }
                }
        });
    }
}
