<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Http\Request;
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


    protected function getAnnouncements()
    {
        $announcements = DB::table('announcements')->get();

        return response()->json(["announcements"=> $announcements]);
    }

    protected function getAnnouncement(Request $request)
    {
        $announcement = DB::table('announcements')->where('id', $request["id"])->first();

        return response()->json(["announcement"=> $announcement]);
    }

}
