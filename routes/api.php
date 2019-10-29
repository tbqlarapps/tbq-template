<?php

Route::group(['prefix' => 'v1', 'namespace' => '\App\Api\V1\Controllers'], function () {
    Route::prefix('user')->group(function () {
        Route::post('register', 'UserController@register');
        Route::post('login', 'UserController@login');
        Route::middleware('auth:api')->get('/', 'UserController@index');
    });
});
