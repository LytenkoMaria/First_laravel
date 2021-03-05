<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('password/reset', 'Auth\ResetPasswordController@reset');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/user/check', 'UserController@authCheck')->name('user.checkAuth');
Route::get('/profile/user', 'ProfileController@getAuthUserData')->name('user.data')->middleware('auth');
Route::post('/profile/update', 'ProfileController@updateUserData')->name('user.update')->middleware('auth');
Route::post('/profile/update/img', 'ProfileController@updateImg')->name('user.updateImg')->middleware('auth');
