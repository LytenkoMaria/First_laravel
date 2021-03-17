<?php

namespace App\Http\Controllers;

use App\Models\Announcements;
use App\Models\User;
use Illuminate\Http\Request;

class AnnouncementsController extends Controller
{
    public function getAnnouncements()
    {
        $announcements = Announcements::getAnnouncements();

        return response()->json(["announcements" => $announcements]);
    }

    public function getAnnouncement(Request $request)
    {
        $announcement = Announcements::getAnnouncement($request);

        return response()->json(["announcement" => $announcement]);
    }

}
