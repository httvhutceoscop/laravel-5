<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/contact2', function () {
	return view('pages.contact');
});

Route::get('/about', 'PagesController@about');

Route::get('/contact', 'PagesController@contact');

// Route::get('articles', 'ArticlesController@index');

// Route::get('articles/create', 'ArticlesController@create');

// Route::post('articles', 'ArticlesController@store');

Route::resource('articles', 'ArticlesController');

Auth::routes();

Route::get('/home', 'HomeController@index');
