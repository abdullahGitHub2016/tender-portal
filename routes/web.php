<?php

use App\Http\Controllers\BidController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\TenderController;
use Illuminate\Support\Facades\Route;


// Standard Breeze Auth Routes (Dashboard, Profile, etc.)
Route::get('/', function () { return view('welcome'); });

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


Route::middleware(['auth', 'verified'])->group(function () {

// --- PROFILE ROUTES (Fixes profile.edit error) ---
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');


    // --- TENDER ROUTES ---
    // All authenticated users can view the list and individual tenders
    Route::get('/tenders', [TenderController::class, 'index'])->name('tenders.index');
    Route::get('/tenders/{tender}', [TenderController::class, 'show'])->name('tenders.show');

    // ONLY Navy Admins can Create, Edit, or Delete Tenders
    Route::middleware(['role:Navy Admin'])->group(function () {
        Route::get('/tenders/create', [TenderController::class, 'create'])->name('tenders.create');
        Route::post('/tenders', [TenderController::class, 'store'])->name('tenders.store');
        Route::get('/tenders/{tender}/edit', [TenderController::class, 'edit'])->name('tenders.edit');
        Route::put('/tenders/{tender}', [TenderController::class, 'update'])->name('tenders.update');
        Route::delete('/tenders/{tender}', [TenderController::class, 'destroy'])->name('tenders.destroy');

        // Admin only: Download a specific bid document
        Route::get('/bids/{bid}/download', [BidController::class, 'download'])->name('bids.download');
    });

    // --- BID ROUTES ---
    // ONLY Suppliers can submit bids
    Route::middleware(['role:Supplier'])->group(function () {
        Route::post('/tenders/{tender}/bids', [BidController::class, 'store'])->name('bids.store');
    });

});

require __DIR__.'/auth.php';
