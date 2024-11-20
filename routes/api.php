<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ArticlesController;
use App\Http\Controllers\PreferenceController;


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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');
Route::post('reset-password', [AuthController::class, 'resetPassword'])->middleware('auth:sanctum');

Route::get('/articles', [ArticlesController::class, 'index']);
Route::get('/articles/search', [ArticlesController::class, 'search']);
Route::get('/articles/{id}', [ArticlesController::class, 'show']);
Route::post('/fetch-and-store-articles', [ArticlesController::class, 'fetchAndStoreArticles']);

Route::middleware('throttle:getallarticles')->get('/getallarticles', [ArticlesController::class, 'getAllArticles']);

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/preferences', [PreferenceController::class, 'store']);
    Route::get('/preferences', [PreferenceController::class, 'show']);
    Route::get('/personalized-feed', [ArticlesController::class, 'personalizedFeed']);
});



