<?php

use App\Http\Controllers\Api\DonneurControlleur;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/



Route::get('donneur', [DonneurControlleur::class, 'index']);
 
Route::post('donneur/create', [DonneurControlleur::class, 'store']);
Route::put('donneur/edit/{donneur}', [DonneurControlleur::class, 'update']);
Route::delete('donneur/{donneur}', [DonneurControlleur::class, 'delete']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


