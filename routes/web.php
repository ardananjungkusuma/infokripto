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

// Route::get('/', function () {
//     return view('welcome');
// });


// Route::get('/auth/login', 'AuthController@index')->name('login');
Route::get('/loaderio-3892d7f84f1e0501400db29ce8b3821b', 'HomeController@loader');
Route::get('/', 'HomeController@index');
Route::get('/', 'HomeController@index');
Route::get('/home/pilihDompet', 'HomeController@pilihDompet');
Route::post('/home/cariDompet', 'HomeController@cariDompet');
Route::get('/krisar', 'KrisarController@index');
Route::post('/krisar/kirim', 'KrisarController@kirim');

// Auth::routes();
Route::get('/auth', 'AuthController@index');
Route::match(array('GET', 'POST'), '/auth/login', 'AuthController@login')->name('login');
Route::get('/auth/logout', 'AuthController@logout');

// Route::get('/home', 'HomeController@index')->name('home');

Route::match(array('GET', 'POST'), '/content', 'ArtikelController@content');
Route::get('/content/{slug}', 'ArtikelController@content');

Route::group(['middleware' => ['auth', 'role:superadmin|admin']], function () {
    Route::get('/admin', 'AdminController@index');

    Route::get('/cwallet', 'CwalletController@index')->name('cwallet');
    Route::post('/cwallet/tambah', 'CwalletController@tambah');
    Route::get('/cwallet/detail/{id}', 'CwalletController@detail');
    Route::match(array('GET', 'POST'), '/cwallet/edit/{id?}', 'CwalletController@edit');
    Route::get('/cwallet/hapus/{id}', 'CwalletController@hapus');
    Route::get('/cwallet/manageCoinNetwork/{id}', 'CwalletController@manageCoinNetwork');

    // Ajax request
    Route::post('/cwallet/tambahCoinWallet', 'CwalletController@tambahCoinWallet');
    Route::post('/cwallet/tambahNetworkWallet', 'CwalletController@tambahNetworkWallet');
    Route::get('/cwallet/hapusCoinWallet/{id}', 'CwalletController@hapusCoinWallet');
    Route::get('/cwallet/hapusNetworkWallet/{id}', 'CwalletController@hapusNetworkWallet');
    Route::get('/coin/getCoinByWallet/{id}', 'CoinController@getCoinByWallet');
    Route::get('/cnetwork/getNetworkByWallet/{id}', 'CnetworkController@getNetworkByWallet');

    Route::get('/coin', 'CoinController@index')->name('coin');
    Route::post('/coin/tambah', 'CoinController@tambah');
    Route::match(array('GET', 'POST'), '/coin/edit/{id?}', 'CoinController@edit');
    Route::get('/coin/hapus/{id}', 'CoinController@hapus');

    Route::get('/cnetwork', 'CnetworkController@index')->name('cnetwork');
    Route::post('/cnetwork/tambah', 'CnetworkController@tambah');
    Route::match(array('GET', 'POST'), '/cnetwork/edit/{id?}', 'CnetworkController@edit');
    Route::get('/cnetwork/hapus/{id}', 'CnetworkController@hapus');

    Route::get('/artikel', 'ArtikelController@index')->name('artikel');
    Route::match(array('GET', 'POST'), '/artikel/tambah', 'ArtikelController@tambah');
    Route::match(array('GET', 'POST'), '/artikel/edit/{slug?}', 'ArtikelController@edit');
    Route::post('/artikel/upload', 'ArtikelController@upload')->name('artikel.upload');
    Route::get('/artikel/hapus/{slug}', 'ArtikelController@hapus');
    Route::get('/artikel/manage/gambar', 'ArtikelController@gambarmanage');
    // json res
    Route::get('/artikel/getAll', 'ArtikelController@getAll');

    // json res
    Route::get('/arcategory/artikel/{idartikel}', 'ArCategoryController@getArCategory');
    Route::get('/arcategory/artikel/hapus/{idartikel}', 'ArCategoryController@deleteArCategory');

    Route::get('/krisar/manage', 'KrisarController@manage');
    Route::get('/krisar/resolve/{id}', 'KrisarController@resolve');
});
