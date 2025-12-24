<?php

namespace App\Http\Controllers;

use App\Models\Tender;
use Illuminate\Http\Request;

class TenderController extends Controller
{
    // Display all tenders
    public function index()
    {
        $tenders = Tender::latest()->paginate(10);
        return view('tenders.index', compact('tenders'));
    }

    // Show form to create a tender
    public function create()
    {
        return view('tenders.create');
    }

    // Store a new tender
    public function store(Request $request)
    {
        $validated = $request->validate([
            'tender_no' => 'required|unique:tenders',
            'title' => 'required|string|max:255',
            'description' => 'required',
            'closing_date' => 'required|date|after:today',
        ]);

        Tender::create($validated);

        return redirect()->route('tenders.index')->with('success', 'Tender published successfully.');
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
        if (!auth()->user()->hasRole('Navy Admin')) {
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
