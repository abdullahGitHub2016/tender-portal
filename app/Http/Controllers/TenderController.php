<?php

namespace App\Http\Controllers;

use App\Models\Tender;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TenderController extends Controller
{

    // Display all tenders
    public function index()
    {
        $tenders = Tender::latest()->paginate(10);
        return view('tenders.index', compact('tenders'));
    }

    public function create()
    {
        // Correct way to get the user:
        $user = Auth::user();

        // Optional: Check if the user has 'Navy Admin' role before showing the page
        if (!$user || !$user->hasRole('Admin')) {
            abort(403, 'Unauthorized action.');
        }

        //dd($user); // Debugging line to check the user object

        return view('tenders.create');
    }

    // Store a new tender
    public function store(Request $request)
    {
        $validated = $request->validate([
            'tender_no'    => 'required|unique:tenders|max:255',
            'title'        => 'required|max:255',
            'closing_date' => 'required|date',
            'description'  => 'nullable',
        ]);

        // This will only work if $fillable is set in the Model
        Tender::create($validated);

        return redirect()->route('tenders.index')->with('success', 'Tender published successfully!');
    }

    // Show specific tender with its bids
    public function show(Tender $tender)
    {
        $tender->load('bids.user'); // Eager load bids and the supplier info
        return view('tenders.show', compact('tender'));
    }

    /**
     * Show the form for editing the specified tender.
     */
    public function edit(Tender $tender)
    {
        // Ensure only Admins can access this page
        if (!Auth::user() || !Auth::user()->hasRole('Admin')) {
            abort(403);
        }

        return view('tenders.edit', compact('tender'));
    }

    /**
     * Update the specified tender in the database.
     */
    public function update(Request $request, Tender $tender)
    {
        $validated = $request->validate([
            'tender_no' => 'required|unique:tenders,tender_no,' . $tender->id,
            'title' => 'required|string|max:255',
            'description' => 'required',
            'closing_date' => 'required|date',
            'status' => 'required|in:open,closed',
        ]);

        $tender->update($validated);

        return redirect()->route('tenders.index')
            ->with('success', 'Tender updated successfully');
    }

    // Remove a tender
    public function destroy(Tender $tender)
    {
        $tender->delete();
        return redirect()->route('tenders.index')->with('success', 'Tender removed.');
    }
}
