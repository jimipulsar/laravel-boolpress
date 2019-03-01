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
// Route::get('/', function () {
// 	return view('welcome');
// });
Route::get('welcome', 'HomePageController@home')->name('welcome');
Route::get('/', 'HomeController@index')->name('welcome');
// Route::get('/', function() {
// 	return redirect()->route('users.index');
// });
Route::resource('posts', 'PostController');

Route::get('/uploadfile', 'UploadfileController@index');
Route::post('/uploadfile', 'UploadfileController@upload');
