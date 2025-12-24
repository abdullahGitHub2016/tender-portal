<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ $tender->title }} ({{ $tender->tender_no }})
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white p-6 shadow-sm sm:rounded-lg">
                <div class="mb-6">
                    <h3 class="text-lg font-bold">Description</h3>
                    <p class="text-gray-600">{{ $tender->description }}</p>
                    <p class="mt-4 text-sm text-red-600 font-bold">Closing Date: {{ $tender->closing_date }}</p>
                </div>

                <hr class="my-6">

                @role('Supplier')
                <h3 class="text-lg font-bold mb-4">Submit Your Bid</h3>
                <form action="{{ route('bids.store', $tender) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-4">
                        <x-input-label for="quoted_amount" value="Your Total Price (BDT)" />
                        <x-text-input id="quoted_amount" name="quoted_amount" type="number" class="block mt-1 w-full" required />
                    </div>

                    <div class="mb-4">
                        <x-input-label for="document" value="Technical Proposal (PDF)" />
                        <input type="file" name="document" class="block mt-1 w-full border-gray-300 rounded-md shadow-sm" required>
                    </div>

                    <x-primary-button>Submit Proposal</x-primary-button>
                </form>
                @endrole

                @role('Navy Admin')
                <h3 class="text-lg font-bold mb-4">Submitted Bids</h3>
                <table class="min-w-full border">
                    <thead>
                        <tr class="bg-gray-100">
                            <th class="border px-4 py-2">Supplier</th>
                            <th class="border px-4 py-2">Amount</th>
                            <th class="border px-4 py-2">Document</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($tender->bids as $bid)
                        <tr>
                            <td class="border px-4 py-2">{{ $bid->user->name }}</td>
                            <td class="border px-4 py-2">৳{{ is_numeric($bid->quoted_amount) }}</td>
                            <td class="border px-4 py-2 text-blue-600">
                                <a href="{{ route('bids.download', $bid) }}">Download PDF</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                @endrole
            </div>
        </div>
    </div>
</x-app-layout>