<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Tender>
 */
class TenderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'tender_no' => 'NSSD/' . now()->year . '/' . $this->faker->unique()->bothify('??-####'),
            'title' => $this->faker->sentence(4) . ' Procurement',
            'description' => $this->faker->paragraph(),
            'closing_date' => $this->faker->dateTimeBetween('now', '+1 month'),
            'status' => 'open',
        ];
    }
}
