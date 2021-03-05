<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function authCheck()
    {
        $userAuth = Auth::check();
        return response()->json(["userAuth" => $userAuth]);
    }
}
