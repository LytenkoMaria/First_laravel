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
Route::get('/announcements/show', 'AnnouncementsController@getAnnouncements')->name('announcements.show')->middleware('auth');
Route::post('/announcement/show', 'AnnouncementsController@getAnnouncement')->name('announcement.show')->middleware('auth');
Route::get('/comments/show/{id}', 'CommentsController@getComments')->name('comments.show')->middleware('auth');
Route::post('/comments/create', 'CommentsController@createComments')->name('comments.create')->middleware('auth');
Route::post('/childComments/create', 'CommentsController@newChildComments')->name('childComments.create')->middleware('auth');
