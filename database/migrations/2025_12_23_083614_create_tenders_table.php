<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tenders', function (Blueprint $table) {
            $table->id();
            $table->string('tender_no')->unique();
            $table->string('title');
            $table->text('description');
            $table->dateTime('closing_date');
            $table->enum('status', ['open', 'closed', 'processing'])->default('open');
            $table->timestamps();
            $table->softDeletes(); // Adds a 'deleted_at' column
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tenders');
    }
};
