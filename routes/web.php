<?php

use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;



Route::get('/', [ProductController::class, 'index'])->name('products.index');
Route::get('/load-products', [ProductController::class, 'loadProducts'])->name('products.loadProducts');
Route::post('/save-search-count', [ProductController::class, 'saveSearchCount'])->name('products.saveSearchCount');
Route::get('/get-search-data-for-chart', [ProductController::class, 'getSearchDataForChart'])->name('products.getSearchDataForChart');



Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
