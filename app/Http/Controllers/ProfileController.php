<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
//    public function __construct()
//    {
//        $this->middleware('auth');
//    }

    /**
     * @return JsonResponse
     */
    public function getAuthUserData()
    {
        $user = Auth::user();
        return response()->json(["user" => $user]);
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function updateUserData(Request $request)
    {
        $user = $request->get('user');
        $status = User::updateUserData($user);

        return response()->json(["status" => $status]);
    }

    public function updateImg(Request $request)
    {
        $id = $request->id;
        $img = $request->attachment;
        $imgn=$img->getClientOriginalName();
        $newName = $id.$imgn;
        $img->move(public_path() . '/images/usersProfilePicture/',$newName);
        $userData= ['picture' => $newName, 'id' => $id ];
        $status = User::updateImg( $userData);

        return response()->json(["newPicture" => $newName]);
    }
}

