<?php

use App\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = User::create([
            'name' => 'Ardan Anjung Kusuma',
            'alamat' => 'Bojonegoro',
            'no_hp' => '085212345678',
            'username' => 'ardan',
            'email' => 'ardan@gmail.com',
            'password' => bcrypt('ardan123')
        ]);

        $admin->assignRole('superadmin');
    }
}
