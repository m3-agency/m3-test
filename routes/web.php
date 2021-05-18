<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\TodoController;

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
    $a = 1 + 1;
    return view('welcome');
});

Route::get('/list', function () {

  $todos = \App\Models\Todo::where('user_id',Auth::user()->id)
    ->orderBy('completed_at')->orderBy('due_date')->get();

  return view('list',['todos'=>$todos]);

})->middleware(['auth'])->name('list');

Route::post('/add', [TodoController::class, 'add_todo_item']);
Route::post('/mark-completed', [TodoController::class, 'markCompleted']);

require __DIR__.'/auth.php';
