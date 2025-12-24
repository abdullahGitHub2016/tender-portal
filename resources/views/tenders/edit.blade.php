<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Update Tender') }}: <span class="text-blue-600">{{ $tender->tender_no }}</span>
            </h2>
            <a href="{{ route('tenders.index') }}" class="text-sm text-gray-600 hover:text-gray-900 bg-gray-100 px-3 py-1 rounded border">
                &larr; Back to List
            </a>
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-4xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-8">
                    <form action="{{ route('tenders.update', $tender) }}" method="POST">
                        @csrf
                        @method('PUT')

                        <div class="mb-6">
                            <x-input-label for="tender_no" :value="__('Tender Reference Number')" />
                            <x-text-input id="tender_no" name="tender_no" type="text" class="block mt-1 w-full bg-gray-50" :value="old('tender_no', $tender->tender_no)" required />
                            <x-input-error :messages="$errors->get('tender_no')" class="mt-2" />
                        </div>

                        <div class="mb-6">
                            <x-input-label for="title" :value="__('Tender Title')" />
                            <x-text-input id="title" name="title" type="text" class="block mt-1 w-full" :value="old('title', $tender->title)" required />
                            <x-input-error :messages="$errors->get('title')" class="mt-2" />
                        </div>

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                            <div>
                                <x-input-label for="closing_date" :value="__('Closing Date')" />
                                <x-text-input id="closing_date" name="closing_date" type="datetime-local" class="block mt-1 w-full" :value="date('Y-m-d\TH:i', strtotime($tender->closing_date))" required />
                                <x-input-error :messages="$errors->get('closing_date')" class="mt-2" />
                            </div>

                            <div>
                                <x-input-label for="status" :value="__('Current Status')" />
                                <select name="status" id="status" class="block mt-1 w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                    <option value="open" {{ old('status', $tender->status) == 'open' ? 'selected' : '' }}>Open for Bidding</option>
                                    <option value="closed" {{ old('status', $tender->status) == 'closed' ? 'selected' : '' }}>Closed / Under Review</option>
                                </select>
                                <x-input-error :messages="$errors->get('status')" class="mt-2" />
                            </div>
                        </div>

                        <div class="mb-6">
                            <x-input-label for="description" :value="__('Detailed Specifications')" />
                            <textarea id="description" name="description" rows="6" class="block mt-1 w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">{{ old('description', $tender->description) }}</textarea>
                            <x-input-error :messages="$errors->get('description')" class="mt-2" />
                        </div>

                        <div class="flex items-center justify-end border-t pt-6">
                            <x-secondary-button type="button" onclick="window.location='{{ route('tenders.index') }}'" class="mr-3">
                                {{ __('Cancel') }}
                            </x-secondary-button>
                            
                            <x-primary-button class="bg-blue-600 hover:bg-blue-700">
                                {{ __('Save Changes') }}
                            </x-primary-button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>