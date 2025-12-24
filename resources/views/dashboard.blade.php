<x-app-layout>
    <style>
        .nssd-grid {
            display: grid;
            grid-template-columns: repeat(1, minmax(0, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
            width: 100%;
        }
        @media (min-width: 768px) { .nssd-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); } }
        @media (min-width: 1024px) { .nssd-grid { grid-template-columns: repeat(4, minmax(0, 1fr)); } }

        .metric-card {
            background: #ffffff !important;
            padding: 1.5rem !important;
            border-radius: 12px;
            border: 1px solid #e2e8f0;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
            max-width: 450px;
            width: 100%;
        }
        .btn-action {
            background-color: #334155 !important;
            color: white !important;
            border-radius: 12px;
            padding: 1.5rem;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-decoration: none !important;
            transition: background 0.2s;
            max-width: 450px;
        }
        .btn-action:hover { background-color: #1e293b !important; }
        .big-num { font-size: 2.5rem; font-weight: 900; color: #0f172a; line-height: 1; margin-top: 8px;}
        .label-text { font-size: 0.75rem; font-weight: 800; text-transform: uppercase; color: #64748b; letter-spacing: 1px; }
    </style>

    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="font-extrabold text-2xl text-slate-800 tracking-tight">Tender Management Portal</h2>
            <div class="text-xs font-bold px-3 py-1 bg-blue-50 text-blue-700 rounded-full border border-blue-100">
                PRACTICE ENVIRONMENT
            </div>
        </div>
    </x-slot>

    <div class="py-10">
        <div class="max-w-full mx-auto px-4 sm:px-10 lg:px-16">

            <div style="background: linear-gradient(to right, #1e293b, #334155); padding: 3rem; border-radius: 16px; margin-bottom: 2.5rem; color: white;">
                <h1 style="font-size: 2rem; font-weight: 900; margin-bottom: 10px;">Welcome to TenderApp</h1>
                <p style="color: #cbd5e1; font-size: 1rem; max-width: 700px;">
                    Monitor active procurement cycles, review supplier submissions, and manage system assets through this centralized administration interface.
                </p>
            </div>

            <div class="nssd-grid mb-12">
                <a href="{{ route('tenders.index') }}" class="metric-card border-t-4 border-t-blue-500 block no-underline">
                    <div class="flex justify-between items-start">
                        <span class="label-text">Active Tenders</span>
                        <svg class="w-6 h-6 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" /></svg>
                    </div>
                    <div class="big-num">{{ \App\Models\Tender::where('status', 'open')->count() }}</div>
                </a>

                <div class="metric-card border-t-4 border-t-indigo-500">
                    <div class="flex justify-between items-start">
                        <span class="label-text">Bids Received</span>
                        <svg class="w-6 h-6 text-indigo-500" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" /></svg>
                    </div>
                    <div class="big-num">{{ \App\Models\Bid::count() }}</div>
                </div>

                <div class="metric-card border-t-4 border-t-slate-300">
                    <div class="flex justify-between items-start">
                        <span class="label-text">Completed</span>
                        <svg class="w-6 h-6 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 8h14M5 8a2 2 0 110-4h14a2 2 0 110 4M5 8v10a2 2 0 002 2h10a2 2 0 002-2V8m-9 4h4" /></svg>
                    </div>
                    <div class="big-num text-slate-400">{{ \App\Models\Tender::where('status', 'closed')->count() }}</div>
                </div>

                <a href="{{ route('tenders.create') }}" class="btn-action shadow-lg no-underline">
                    <svg class="w-8 h-8 text-white mb-2" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M12 4v16m8-8H4" /></svg>
                    <span style="font-weight: 800; text-transform: uppercase; font-size: 0.75rem; letter-spacing: 1px;">Add New Record</span>
                </a>
            </div>

            <div class="bg-white rounded-xl border border-slate-200 shadow-sm overflow-hidden">
                <div class="px-6 py-4 border-b border-slate-100 bg-slate-50 flex justify-between items-center">
                    <h3 class="text-xs font-black text-slate-500 uppercase tracking-widest">Recent Platform Activity</h3>
                    <a href="{{ route('tenders.index') }}" class="text-xs font-bold text-blue-600 hover:underline uppercase">View Full List</a>
                </div>
                <div class="overflow-x-auto">
                    <table class="w-full text-left">
                        <tbody class="divide-y divide-slate-100 text-sm">
                            @foreach(\App\Models\Tender::latest()->take(5)->get() as $tender)
                            <tr class="hover:bg-slate-50/50">
                                <td class="px-8 py-4 font-bold text-blue-900">REF-{{ $tender->tender_no }}</td>
                                <td class="px-8 py-4 text-slate-600 font-medium">{{ $tender->title }}</td>
                                <td class="px-8 py-4 text-right">
                                    <span class="px-2 py-1 rounded text-[10px] font-black uppercase {{ $tender->status == 'open' ? 'bg-green-100 text-green-700' : 'bg-slate-100 text-slate-500' }}">
                                        {{ $tender->status }}
                                    </span>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</x-app-layout>
