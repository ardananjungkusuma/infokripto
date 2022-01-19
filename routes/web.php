<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});


// Route::get('/auth/login', 'AuthController@index')->name('login');
Route::get('/home', 'HomeController@index')->name('home');

// Auth::routes();
Route::match(array('GET', 'POST'), '/auth/login', 'AuthController@login')->name('login');
Route::get('/auth/logout', 'AuthController@logout');

// Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth', 'role:superadmin|admin']], function () {
    Route::get('/admin', 'AdminController@index');

    Route::get('/cwallet', 'CwalletController@index')->name('cwallet');
    Route::post('/cwallet/tambah', 'CwalletController@tambah');
    Route::post('/cwallet/detail/{id}', 'CwalletController@detail');

    Route::get('/coin', 'CoinController@index')->name('coin');
    Route::post('/coin/tambah', 'CoinController@tambah');
    Route::match(array('GET', 'POST'), '/coin/edit/{id?}', 'CoinController@edit');
});
