<?php

namespace App\Models;

use App\Mail\MyEmail;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class Comments extends Model
{
    protected $table = 'comments';
    private static $from;

    protected $fillable = [
        'announcement_id', 'parent_comment_id', 'user_id', 'comments', 'data_comment'
    ];

    public $timestamps=false;

    /**
     * Get comments.
     *
     * @param  array  $data
     * @return \App\Models\Comments
     */

    public static function getComments(int $id)
    {
        $comments =[];
        $parent_comments = DB::table('comments')->where('parent_comment_id' , null )
            ->where('announcement_id' , $id )
            ->join('users', 'users.id', '=', 'comments.user_id')
            ->select('users.email', 'users.name', 'users.picture' ,'comments.id' , 'comments' ,'comments.user_id', 'comments.data_comment', 'comments.announcement_id' )
            ->get();
        foreach ($parent_comments as $value) {
            $value->child=self::childComments($value->id);
            $comments[] = $value;
        }

        return $comments;
    }

    private static function childComments( $id ) {
        $child = DB::table('comments')->where('parent_comment_id', $id)
        ->join('users', 'users.id', '=', 'comments.user_id')
            ->select('users.email','users.name', 'users.picture' ,'comments.id' , 'comments' ,'comments.user_id', 'comments.data_comment', 'comments.announcement_id' )

            ->get();

        return $child;
    }

    public static function createComments(Request $request)
    {
        self::create([
            'announcement_id' => $request["announcement_id"],
            'parent_comment_id' => $request["parent_comment_id"],
            'user_id' =>  $request["userId"],
            'comments' => $request["comments"],
            'data_comment' => date("Y-m-d H:i:s"),
        ]);

        return response()->json(["status" => "success"]);
    }

    public static function newChildComments(Request $request)
    {
        $data = date("Y-m-d H:i:s");
        self::create([
            'announcement_id' => $request["announcement_id"],
            'parent_comment_id' => $request["parent_comment_id"],
            'user_id' =>  $request["userId"],
            'comments' => $request["comments"],
            'data_comment' => $data,
        ]);
        ;
        //dd(is_string ( strval($request["replyUserEmail"] )));
        $str = strpos($request["comments"], " ");
        $text = substr($request["comments"], $str+2);
        $mes = ['mess'  => $text, 'fromUser' => $request["parentCommentUserName"],
            'data' => $data,
         'replyComment' => $request["replyComment"] ,
        ];
        $message= $mes;
       // dd($message);
        self::$from = $request["replyUserEmail"];

            Mail::send('mail', ['text' => $message], function ($message) {
            $message->to( self::$from);
            $message->from('workproject3006@gmail.com','Laravel project');
        });

        return response()->json(["status" => "success"]);
    }

}
