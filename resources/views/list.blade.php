<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Todo List  | 
            {{\App\Models\Todo::where('user_id',Auth::user()->id)
                    ->orderBy('completed_at')->orderBy('date')->whereNull('completed_at')->count()}}
            Due | 
            {{\App\Models\Todo::where('user_id',Auth::user()->id)
                    ->orderBy('completed_at')->orderBy('date')->whereNotNull('completed_at')->count()}}
            Completed
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    You're logged in!
                </div>
            </div>
        </div>
    </div>
    <div class="py-12">
        @foreach($todos as $todo)
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 bg-white border-b border-gray-200">
                        @php
                            $user = \App\Models\User::find($todo->user_id)
                        @endphp
                        {{$user->name}} - <span>Due {{date('d/m/Y',strtotime($todo->due_date))}}</span>

                        <form action="/mark-completed" method="post">
                            @csrf
                            <input type="hidden" name="id" value="{{$todo->id}}">
                            <label class="float-right"> Completed:
                                <input type="checkbox" name="is_completed" value="1" {{$todo->completed_at?'checked':''}} onchange="this.form.submit()"/>
                            </label>
                        </form>
                        <div>
                            {{$todo->todo}}
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="mt-5 md:mt-0 md:col-span-2">
                <form action="/add" method="post">
                    @csrf
                    <input type="hidden" name="user_id" value="{{Illuminate\Support\Facades\Auth::user()->id}}"/>
                    <div class="shadow sm:rounded-md sm:overflow-hidden">
                        <div class="px-4 py-5 bg-white space-y-6 sm:p-6">
                            <h2>Add new@</h2>
                            <div class="grid grid-cols-3 gap-6">
                                <div class="col-span-3 sm:col-span-2">
                                    <label for="due-date" class="block text-sm font-medium text-gray-700">
                                        Due Date
                                    </label>
                                    <div class="mt-1 flex rounded-md shadow-sm">
                                        <input type="date" name="due-date" id="due-date" class="focus:ring-indigo-500 focus:border-indigo-500 flex-1 block w-full rounded-none rounded-r-md sm:text-sm border-gray-300" placeholder="{{date('d/m/Y')}}">
                                    </div>
                                </div>
                            </div>

                            <div>
                                <label for="todo" class="block text-sm font-medium text-gray-700">
                                    Todo
                                </label>
                                <div class="mt-1">
                                    <textarea id="todo" name="todo" rows="3" class="shadow-sm focus:ring-indigo-500 focus:border-indigo-500 mt-1 block w-full sm:text-sm border-gray-300 rounded-md" placeholder="Lorem Ipsum"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="px-4 py-3 bg-gray-50 text-right sm:px-6">
                            <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                                Save
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
