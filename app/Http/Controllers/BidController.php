<?php

namespace App\Http\Controllers;

use App\Models\Bid;
use App\Models\Tender;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BidController extends Controller
{
    // Supplier submits a bid
    public function store(Request $request, Tender $tender)
    {
        // 1. Security Check: Is tender still open?
        if ($tender->closing_date < now() || $tender->status !== 'open') {
            return back()->with('error', 'This tender is closed for submissions.');
        }

        // 2. Validation
        $request->validate([
            'quoted_amount' => 'required|numeric|min:1',
            'document' => 'required|mimes:pdf|max:10240', // Max 10MB PDF
        ]);

        // 3. Handle File Upload (Stored in private 'storage/app/bids' folder)
        $path = $request->file('document')->store('bids');

        // 4. Create Bid record
        Bid::create([
            'tender_id' => $tender->id,
            'user_id' => Auth::id(),
            'quoted_amount' => $request->quoted_amount,
            'document_path' => $path,
        ]);

        return redirect()->route('dashboard')->with('success', 'Your bid has been submitted.');
    }

    // Admin downloads the bid document
    public function download(Bid $bid)
    {
        // Add security check: only Admin can download
        if (!Auth::user()->hasRole('Navy Admin')) {
            abort(403);
        }

        return response()->download(storage_path('app/' . $bid->document_path));
    }
}
