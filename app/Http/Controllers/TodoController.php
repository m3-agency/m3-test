<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Todo;

class TodoController extends Controller
{
    public function add_todo_item(Request $request)
    {
        $todo = new Todo();
        $todo->user_id = $request->input('user_id');
        $todo->due_date = date('Y-m-d',strtotime($request->input('due_date')));
        $todo->todo = $request->input('todo');
        $todo->save();

        return redirect('/list');
    }

    public function markCompleted(Request $request)
    {
        $todo = Todo::find($_POST['id']);
        $todo->completed_at = ($_POST['is_completed'])?now():null;
        $todo->save();

        return redirect('/list');
    }
}
