<?php

use Illuminate\Support\Facades\Route; 

Route::group(['as' => 'frontend.', 'namespace' => 'Frontend'], function () {

    Route::get('/', 'HomeController@index')->name('home'); 
    Route::get('consultants', 'HomeController@consultants')->name('consultants'); 
    Route::get('about', 'HomeController@about')->name('about'); 
    Route::get('join_us', 'HomeController@join_us')->name('join_us'); 
    Route::get('team', 'HomeController@team')->name('team'); 
    Route::get('reg_company', 'HomeController@reg_company')->name('reg_company'); 
    Route::get('reg_user', 'HomeController@reg_user')->name('reg_user'); 

    // news
    Route::get('news', 'HomeController@news')->name('news'); 
    Route::get('news/{id}', 'HomeController@news_details')->name('news_details'); 
    
    // services
    Route::get('services/{id}', 'HomeController@services')->name('services'); 
    Route::get('service/{id}', 'HomeController@service')->name('service'); 
    

    // joinings
    Route::post('joining', 'HomeController@joining')->name('joining'); 
    Route::post('joinings/media', 'HomeController@storeMedia')->name('joinings.storeMedia');
    Route::post('joinings/ckmedia', 'HomeController@storeCKEditorImages')->name('joinings.storeCKEditorImages');

    // contact_us
    Route::get('contact', 'HomeController@contact')->name('contact'); 
    Route::post('contact_us', 'HomeController@contact_us')->name('contact_us'); 
}); 
