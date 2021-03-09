<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class Announcements extends Model
{
    protected $table = 'announcements';

    protected $fillable = [
        'advertisements_name', 'price', 'year','type_of_fuel','mileage','description','link','date_announcement','images_url'
    ];

    public $timestamps=false;

    /**
     * Create a new announcement.
     *
     * @param  array  $data
     * @return \App\Models\Announcements
     */


/*
    protected function create(array $data)
    {
        return Announcements::create([
            'advertisements_name' => $data['advertisements_name'],
            'price' => $data['price'],
            'year' => $data['year'],
            'type_of_fuel' => $data['type_of_fuel'],
            'mileage' => $data['mileage'],
            'description' => $data['description'],
            'link' =>  $data['link'],
            'date_announcement' =>  $data['date_announcement'],
             'images_url' =>  $data['images_url'],
        ]);
    }*/
}
