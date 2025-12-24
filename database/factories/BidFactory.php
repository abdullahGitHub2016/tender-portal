<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Bid>
 */
class BidFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'tender_id' => \App\Models\Tender::factory(), // Creates a tender if none exists
            'user_id' => \App\Models\User::factory(),     // Creates a user if none exists
            'quoted_amount' => $this->faker->randomFloat(2, 50000, 1000000),
            'document_path' => 'tenders/bids/sample_bid.pdf',
        ];
    }
}
