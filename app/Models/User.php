<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\DB;
use function Symfony\Component\Translation\t;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','country','city','picture','api_token','slack_webhook'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public static function updateUserData(array $userData)
    {

        $returnUpdateData = DB::table('users')
            ->where('id', $userData["id"])
            ->update(['name' => $userData["name"], 'email'=> $userData["email"], 'slack_webhook'=> $userData["slack_webhook"], 'country' => $userData["country"], 'city' => $userData["city"]]);

        return response()->json(["status"=> "success"]);
    }

        public static function updateImg(array $userData)
        {

            $returnUpdateData = DB::table('users')
                ->where('id', $userData["id"])
                ->update(['picture' => $userData["picture"]]);

            return response()->json(["status"=> "success"]);
        }

        public function routeNotificationForSlack($notification)
        {
            return $this->slack_webhook;
        }

    }
