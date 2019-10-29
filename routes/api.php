<?php

use Illuminate\Http\Request;

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
Route::group(['prefix' => 'v1'], function () {
    Route::get('foo', function () {
        return 'Hello World';
    });
    Route::namespace ('\App\Api\Controllers')->group(function () {
        /***
         * 管理员后台接口路由
         */
        Route::prefix('user')->group(function () {
            Route::post('register', 'UserController@register');
            Route::post('login', 'UserController@login');
        });
        Route::prefix('user')->middleware('auth:api')->group(function () {
            Route::get('/', 'UserController@index'); //用户信息
        });
    });
});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
