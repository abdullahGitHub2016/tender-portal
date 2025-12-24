<?php

namespace App\Models;

use App\Models\Bid;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tender extends Model
{
    // 2. Add it inside the class
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'tender_no',
        'title',
        'description',
        'closing_date',
        'status'
    ];

    // Define the relationship
    public function bids(): HasMany
    {
        return $this->hasMany(Bid::class);
    }
}
