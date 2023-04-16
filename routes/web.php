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

Route::get('maintenance', function(){
    return view('maintenance');
})->name('maintenance');

Route::get('/teste', function() {
    $products = \Botble\Ecommerce\Models\Product::get();
    foreach ($products as $product) {
        $product->update([
            'percentage_discount' => str_replace('-', '', (($product->price - $product->sale_price) / ($product->price > 0 ?$product->price :  1)) * 100)
        ]);
    }
});
