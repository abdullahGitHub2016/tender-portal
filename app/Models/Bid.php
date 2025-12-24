<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
/**
 * @property-read \App\Models\User $user
 */
class Bid extends Model
{
    use HasFactory;

    protected $fillable = ['tender_id', 'user_id', 'quoted_amount', 'document_path'];

    /**
     * Get the user (supplier) that owns the bid.
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get the tender this bid belongs to.
     */
    public function tender(): BelongsTo
    {
        return $this->belongsTo(Tender::class);
    }
}
