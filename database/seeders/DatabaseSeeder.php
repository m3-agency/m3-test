<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Factories\Sequence;
use \App\Models\User;
use \App\Models\Todo;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory()->state([
            'id' => 1,
            'email' => 'test@test.test',
        ])->create();
        Todo::factory(5)->state([
            'user_id' => 1,
        ])->create();
        Todo::factory(2)->completed()->state([
            'user_id' => 1,
        ])->create();


        User::factory(9)->create();
        Todo::factory(20)->state(new Sequence(
            fn () => ['user_id' => User::all()->random()->id],
        ))->create();
        Todo::factory(10)->completed()->state(new Sequence(
            fn () => ['user_id' => User::all()->random()->id],
        ))->create();
    }
}
