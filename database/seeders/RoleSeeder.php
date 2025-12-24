<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\PermissionRegistrar;

class RoleSeeder extends Seeder
{
    public function run()
    {
        // 1. Mandatory: Reset cached roles and permissions
        app()[PermissionRegistrar::class]->forgetCachedPermissions();

        // 2. Define Permissions with explicit guard
        $permissions = [
            'create tenders',
            'edit tenders',
            'submit bids',
            'view all bids'
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate([
                'name' => $permission,
                'guard_name' => 'web' // Explicitly set the guard
            ]);
        }

        // 3. Create Roles and Assign Permissions
        $admin = Role::firstOrCreate(['name' => 'Navy Admin', 'guard_name' => 'web']);
        $admin->syncPermissions(['create tenders', 'edit tenders', 'view all bids']);

        $supplier = Role::firstOrCreate(['name' => 'Supplier', 'guard_name' => 'web']);
        $supplier->syncPermissions(['submit bids']);
    }
}
