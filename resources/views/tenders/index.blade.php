<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="text-xl font-semibold">Tender Opportunities</h2>
            {{-- Only show Create button to Admin --}}
            @role('Navy Admin')
                <a href="{{ route('tenders.create') }}" class="px-4 py-2 bg-blue-600 text-white rounded">Create Tender</a>
            @endrole
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white p-6 shadow sm:rounded-lg">
                <table class="w-full text-left border-collapse">
                    <thead>
                        <tr class="border-b">
                            <th class="p-3">Tender No</th>
                            <th class="p-3">Title</th>
                            <th class="p-3">Deadline</th>
                            <th class="p-3">Status</th>
                            <th class="p-3">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($tenders as $tender)
                            <tr class="border-b hover:bg-gray-50">
                                <td class="p-3">{{ $tender->tender_no }}</td>
                                <td class="p-3">{{ $tender->title }}</td>
                                <td class="p-3 text-red-600 font-medium">{{ $tender->closing_date }}</td>
                                <td class="px-6 py-4">
                                    @if ($tender->status == 'open')
                                        <div class="flex items-center">
                                            <span class="mr-2"
                                                style="height: 12px; width: 12px; background-color: #10b981; border-radius: 50%; display: inline-block;"></span>
                                            <span
                                                style="background-color: #d1fae5; color: #065f46; border: 1px solid #10b981; padding: 2px 10px; border-radius: 12px; font-size: 12px; font-weight: bold; text-transform: uppercase;">
                                                Live / Open
                                            </span>
                                        </div>
                                    @else
                                        <div class="flex items-center">
                                            <span class="mr-2"
                                                style="height: 12px; width: 12px; background-color: #6b7280; border-radius: 50%; display: inline-block;"></span>
                                            <span
                                                style="background-color: #f3f4f6; color: #374151; border: 1px solid #9ca3af; padding: 2px 10px; border-radius: 12px; font-size: 12px; font-weight: bold; text-transform: uppercase;">
                                                Closed
                                            </span>
                                        </div>
                                    @endif
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                                    <div class="flex justify-end items-center space-x-3">

                                        <a href="{{ route('tenders.show', $tender) }}"
                                            class="text-gray-400 hover:text-blue-600 transition-colors"
                                            title="View Details">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor"
                                                viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                    d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                    d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                            </svg>
                                        </a>

                                        @role('Navy Admin')
                                            <a href="{{ route('tenders.edit', $tender) }}"
                                                class="text-gray-400 hover:text-yellow-500 transition-colors"
                                                title="Edit Tender">
                                                <svg class="w-5 h-5" fill="none" stroke="currentColor"
                                                    viewBox="0 0 24 24">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                        d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                                                </svg>
                                            </a>

                                            <form action="{{ route('tenders.destroy', $tender) }}" method="POST"
                                                id="delete-form-{{ $tender->id }}" class="inline">
                                                @csrf
                                                @method('DELETE')
                                                <button type="button" onclick="window.confirmDelete({{ $tender->id }})"
                                                    class="text-gray-400 hover:text-red-600 transition-colors"
                                                    title="Delete">
                                                    <svg class="w-5 h-5" fill="none" stroke="currentColor"
                                                        viewBox="0 0 24 24">
                                                        <path stroke-linecap="round" stroke-linejoin="round"
                                                            stroke-width="2"
                                                            d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                                    </svg>
                                                </button>
                                            </form>
                                        @endrole
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</x-app-layout>
<script>
    window.confirmDelete = function(id) {
        Swal.fire({
            title: 'Are you sure?',
            text: "This will permanently delete the tender and all associated bids!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33', // Red for delete
            cancelButtonColor: '#3085d6', // Blue for cancel
            confirmButtonText: 'Yes, delete it!',
            background: '#ffffff',
            customClass: {
                title: 'text-xl font-bold text-gray-800',
                content: 'text-gray-600'
            }
        }).then((result) => {
            if (result.isConfirmed) {
                document.getElementById('delete-form-' + id).submit();
            }
        });
    }
</script>
