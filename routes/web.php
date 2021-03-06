<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/contact', function () {
    return view('contact');
});

Route::get('/addCategory', function () {
    return view('addCategory');
});

Route::get('/addBrand', function () {
    return view('addBrand');
});

Route::get('/addProduct', function () {
    return view('addProduct',['categoryID'=>App\Models\Category::all()],['BrandID'=>App\Models\brands::all()]);
});
Route::post('/addCategory/store',[App\Http\Controllers\CategoryController::class, 'add'])
->name('addCategory');

Route::post('/addBrand/store',[App\Http\Controllers\BrandController::class, 'add'])
->name('addBrand');

Route::get('/viewBrand',[App\Http\Controllers\BrandController::class, 'view'])
->name('viewBrand');

Route::post('/addProduct/store',[App\Http\Controllers\ProductController::class, 'add'])
->name('addProduct');


Route::get('/viewCategory',[App\Http\Controllers\CategoryController::class, 'view'])
->name('viewCategory');


Route::get('/viewProduct',[App\Http\Controllers\ProductController::class, 'view'])
->name('viewProduct');

Route::get('/phone',[App\Http\Controllers\ProductController::class, 'phone'])
->name('phone');

Route::get('/computer',[App\Http\Controllers\ProductController::class, 'computer'])
->name('computer');

Route::get('/watch',[App\Http\Controllers\ProductController::class, 'watch'])
->name('watch');

Route::get('/headphone',[App\Http\Controllers\ProductController::class, 'headphone'])
->name('headphone');

Route::get('/tv',[App\Http\Controllers\ProductController::class, 'tv'])
->name('tv');

Route::get('/accesssories',[App\Http\Controllers\ProductController::class, 'accesssories'])
->name('accesssories');

Route::get('/editProduct/{id}',[App\Http\Controllers\ProductController::class, 'edit'])
->name('editProduct');

Route::get('/deleteProduct/{id}',[App\Http\Controllers\ProductController::class, 'delete'])
->name('deleteProduct');

Route::get('/editbrand/{id}',[App\Http\Controllers\BrandController::class, 'edit'])
->name('editbrand');

Route::get('/deletebrand/{id}',[App\Http\Controllers\BrandController::class, 'delete'])
->name('deletebrand');

Route::get('/editCategory/{id}',[App\Http\Controllers\CategoryController::class, 'edit'])
->name('editCategory');

Route::get('/deleteCategory/{id}',[App\Http\Controllers\CategoryController::class, 'delete'])
->name('deleteCategory');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::post('/updateProduct',[App\Http\Controllers\ProductController::class, 'update'])
->name('updateProduct');

Route::get('/productDetail/{id}',[App\Http\Controllers\ProductController::class,'productdetail'])->name('productdetail');

Route::get('/allProduct',[App\Http\Controllers\ProductController::class, 'allProduct'])
->name('allProduct');
 
Route::post('addCart',[App\Http\Controllers\CartController::class,'add'])->name('add.to.cart');

Route::get('/myCart',[App\Http\Controllers\CartController::class, 'view'])->name('myCart');

Route::post('/checkout', [App\Http\Controllers\PaymentController::class, 'paymentPost'])->name('payment.post');

Route::post('/products',[App\Http\Controllers\ProductController::class, 'searchProduct'] ) ->name('search.products');

Route::get('/pdfReport',[App\Http\Controllers\OrderController::class,'pdfReport'])->name('pdfReport');

Route::get('/myOrder',[App\Http\Controllers\OrderController::class, 'view'])->name('myOrder');


