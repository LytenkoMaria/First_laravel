<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\SlackMessage;
use Illuminate\Notifications\Notification;

class SendNewAnnouncementsToSlack extends Notification
{
    use Queueable;

    protected $data;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['slack'];
    }

    public function toSlack($data)
    {

        $url = $this->data["link"];
        $image = $this->data["images_url"];
        $name = $this->data["advertisements_name"];
        $price = $this->data["price"];
        $date_announcement = $this->data["date_announcement"];
        return (new slackMessage)
            ->from('New announcements')
            ->to('#random')
            ->image($image)
            ->attachment(function ($attachment) use ($url, $name, $price, $date_announcement, $image) {
                $attachment->title($name, $url)
                    ->fields([
                        'Price' => $price,
                        'data' => $date_announcement,
                    ]);
            });
    }

}
