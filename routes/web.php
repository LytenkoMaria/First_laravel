<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('layouts/app');
});

//Route::post('/registration/submit','RegistrationController@submit' );

Auth::routes();

Route::post('/home', 'HomeController@index')->name('home');
Route::get('/profile/user', 'ProfileController@getAuthUserData')->name('user.data')->middleware('auth');;
Route::post('/profile/update', 'ProfileController@updateUserData')->name('user.update')->middleware('auth');
