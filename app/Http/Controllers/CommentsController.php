<?php

namespace App\Http\Controllers;

use App\Models\Comments;
use App\Models\Announcements;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class CommentsController extends Controller
{
    protected function getComments(string $id)
    {
        $comments = Comments::getComments((int) $id);

        return response()->json(["comments"=> $comments]);
    }

    protected function createComments(Request $request)
    {
        $comments = Comments::createComments($request);

        return response()->json(["comments"=> $comments]);
    }

    protected function newChildComments(Request $request)
    {
        Comments::newChildComments($request);

        return response()->json(["success"=> true], 200);
    }
}
