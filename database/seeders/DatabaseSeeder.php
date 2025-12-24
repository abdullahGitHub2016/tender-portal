<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

    // 1. Setup Roles and Permissions
    $this->call(RoleSeeder::class);

    // 2. Create a Navy Admin
    $admin = \App\Models\User::factory()->create([
        'name' => 'Navy Admin Officer',
        'email' => 'admin@example.com',
    ]);
    $admin->assignRole('Navy Admin');

    // 3. Create 5 Suppliers
    \App\Models\User::factory(5)->create()->each(function ($user) {
        $user->assignRole('Supplier');
    });

    // 4. Create 10 Tenders, and for each tender, create 3 random bids
    \App\Models\Tender::factory(10)
        ->has(\App\Models\Bid::factory()->count(3))
        ->create();
    }
}
