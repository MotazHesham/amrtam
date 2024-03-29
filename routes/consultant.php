<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route; 

Route::group(['prefix' => 'consultant', 'as' => 'consultant.', 'namespace' => 'Consultant', 'middleware' => ['auth']], function () { 
    Route::post('request-services/update_stages', 'RequestServiceController@update_stages')->name('request-services.update_stages');
    Route::post('request-services/media', 'RequestServiceController@storeMedia')->name('request-services.storeMedia');
    Route::post('request-services/ckmedia', 'RequestServiceController@storeCKEditorImages')->name('request-services.storeCKEditorImages');
}); 
Route::group(['prefix' => 'consultant', 'as' => 'consultant.', 'namespace' => 'Consultant', 'middleware' => ['auth','consultant']], function () {
    Route::get('/', 'HomeController@index')->name('home');  

    // Request Service
    Route::delete('request-services/destroy', 'RequestServiceController@massDestroy')->name('request-services.massDestroy');
    Route::resource('request-services', 'RequestServiceController'); 
    
    // Request Service
    Route::get('request-services/confirm_contract/{id}', 'RequestServiceController@confirm_contract')->name('request-services.confirm_contract'); 
    Route::resource('request-services', 'RequestServiceController');

    Route::get('messenger', 'MessengerController@index')->name('messenger.index');
    Route::get('messenger/create', 'MessengerController@createTopic')->name('messenger.createTopic');
    Route::post('messenger', 'MessengerController@storeTopic')->name('messenger.storeTopic');
    Route::get('messenger/inbox', 'MessengerController@showInbox')->name('messenger.showInbox');
    Route::get('messenger/outbox', 'MessengerController@showOutbox')->name('messenger.showOutbox');
    Route::get('messenger/{topic}', 'MessengerController@showMessages')->name('messenger.showMessages');
    Route::delete('messenger/{topic}', 'MessengerController@destroyTopic')->name('messenger.destroyTopic');
    Route::post('messenger/{topic}/reply', 'MessengerController@replyToTopic')->name('messenger.reply');
    Route::get('messenger/{topic}/reply', 'MessengerController@showReply')->name('messenger.showReply');
}); 
