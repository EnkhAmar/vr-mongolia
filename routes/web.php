<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Http\Controllers\Controllers\HomeController;

Route::get('/', 'HomeController@index')->name('index');
Route::post('register', 'HomeController@register')->name('register');
Route::post('register-corp', 'HomeController@registerCorp')->name('registerCorp');
Route::post('feedback', 'HomeController@feedback')->name('feedback');

Route::get('/locale-lang/{locale}', function ($locale){
    Session::put('locale', $locale);
    return redirect()->back();
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
