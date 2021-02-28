<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * @return JsonResponse
     */
    public function getAuthUserData(): JsonResponse
    {
        $user = Auth::user();
        return response()->json(["user"=>$user]);
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function updateUserData(Request $request): JsonResource
    {
        $user = $request->get('user');
        User::updateUserData($user);
        return response()->json(["user"=>$user]);
    }
}

