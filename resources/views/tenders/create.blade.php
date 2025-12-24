<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">Create New Tender</h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white p-6 shadow-sm sm:rounded-lg">
                <form action="{{ route('tenders.store') }}" method="POST">
                    @csrf
                    <div class="mb-4">
                        <x-input-label for="tender_no" value="Tender Number" />
                        <x-text-input id="tender_no" name="tender_no" type="text" class="block mt-1 w-full" required />
                    </div>

                    <div class="mb-4">
                        <x-input-label for="title" value="Tender Title" />
                        <x-text-input id="title" name="title" type="text" class="block mt-1 w-full" required />
                    </div>

                    <div class="mb-4">
                        <x-input-label for="closing_date" value="Closing Date & Time" />
                        <x-text-input id="closing_date" name="closing_date" type="datetime-local" class="block mt-1 w-full" required />
                    </div>

                    <div class="mb-4">
                        <x-input-label for="description" value="Description" />
                        <textarea name="description" class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm w-full" rows="4"></textarea>
                    </div>

                    <x-primary-button>Publish Tender</x-primary-button>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>