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

use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpClient\HttpClient;

class ParsingDataCommand extends Command
{
    private $mas=[];
    private $last_date_bd;
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'parsing:start';

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
        $last_date_bd = Announcements::orderBy('date_announcement' ,'DESC')->get()
            ->pluck('date_announcement')
            ->first();
        $this->last_date_bd = date("Y-m-d H:i:s",strtotime($last_date_bd));
        $client = new Client();
        $crawler = $client->request('GET', 'https://www.olx.ua/transport/legkovye-avtomobili/daewoo/?search%5Border%5D=created_at%3Adesc');
        $crawler->filter('.offer-wrapper')->each(function ($node) {

            $this->mas['link'] = $node->filter('a.thumb')->attr('href');
            $this->mas['images_url'] = $node->filter('img.fleft')->attr('src');
            $this->mas['advertisements_name'] = $node->filter('a > strong')->text();
            $this->mas['price']= $node->filter('p.price > strong')->text();
            $client2 = new Client();
            $announcement = $client2->request('GET',  $this->mas['link']);
            $en_months = array( 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' );
            $ru_months = array( 'января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря' );
            $date = $announcement->filter('.offer-bottombar__item em')->text();
            $date = trim( $date ," в");
            $date_trim = str_replace($ru_months, $en_months, $date);
            $this->mas['date_announcement'] = date("Y-m-d H:i:s",strtotime($date_trim));
                if($this->mas['date_announcement']>$this->last_date_bd) {
                        $announcement->filter('.offer-details__param')->each(function ($node) {
                            if ($node->filter('.offer-details__name')->text() == 'Год выпуска') {
                                $this->mas['year'] = $node->filter('strong')->text();
                            }
                            if ($node->filter('.offer-details__name')->text() == 'Вид топлива') {
                                $this->mas['type_of_fuel'] = $node->filter('strong')->text();
                            }
                            if ($node->filter('.offer-details__name')->text() == 'Пробег') {
                                $this->mas['mileage'] = $node->filter('strong')->text();
                            }
                        });
                        $this->mas['description'] = $announcement->filter('#textContent')->text();
                        Announcements::create($this->mas);
                        echo "good";
                        $data = $this->mas;
                        $users = User::where('slack_webhook' ,'!=' , null)
                            ->select('slack_webhook')
                            ->get();
                        foreach ($users as $user)
                        {
                            $user->notify(new SendNewAnnouncementsToSlack($data));
                        }
                }
        });
    }
}
