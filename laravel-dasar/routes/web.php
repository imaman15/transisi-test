<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\CompaniesController;
use App\Http\Controllers\EmployeesController;

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

Auth::routes(['reset' => false, 'register' => false, 'email' => false, 'request' => false, 'udpate' => false, 'confirm' => false]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware('auth')->group(function () {
    Route::resource('companies', CompaniesController::class);
    Route::post('companies/import', [CompaniesController::class, 'import'])->name('companies.import');
    Route::post('companies/list', [companiesController::class, 'getCompanies'])->name('companies.list');
    Route::resource('employees', EmployeesController::class);
    Route::post('employees/import', [EmployeesController::class, 'import'])->name('employees.import');
    Route::get('employees/{id}/pdf', [EmployeesController::class, 'pdf'])->name('employees.pdf');
});
