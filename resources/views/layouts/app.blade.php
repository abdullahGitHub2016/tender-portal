<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>TenderApp - Practice Portal</title>

        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600,900&display=swap" rel="stylesheet" />

        @vite(['resources/css/app.css', 'resources/js/app.js'])
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body class="font-sans antialiased bg-slate-50">
        <div class="min-h-screen">
            @include('layouts.navigation')

            @if (isset($header))
                <header class="bg-white shadow-sm border-b border-slate-200">
                    <div class="max-w-full mx-auto py-6 px-4 sm:px-10 lg:px-16">
                        {{ $header }}
                    </div>
                </header>
            @endif

            <main>
                {{ $slot }}
            </main>

            <footer style="display: block !important; background-color: #1e293b !important; color: white !important; padding: 60px 0; margin-top: 80px; border-top: 4px solid #334155;">
                <div style="max-width: 1400px; margin: 0 auto; padding: 0 40px;">
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 50px;">

                        <div>
                            <h4 style="color: #f8fafc; font-size: 16px; font-weight: 800; text-transform: uppercase; margin-bottom: 20px; letter-spacing: 1px;">TenderApp Systems</h4>
                            <p style="font-size: 13px; color: #94a3b8; line-height: 1.8;">
                                A portfolio practice project demonstrating a full-stack procurement management system built with Laravel and Tailwind CSS.
                            </p>
                        </div>

                        <div>
                            <h4 style="color: #f8fafc; font-size: 14px; font-weight: 700; text-transform: uppercase; margin-bottom: 20px;">Platform</h4>
                            <ul style="list-style: none; padding: 0; font-size: 13px; line-height: 2.2;">
                                <li><a href="/dashboard" style="color: #94a3b8; text-decoration: none;">Admin Dashboard</a></li>
                                <li><a href="/tenders" style="color: #94a3b8; text-decoration: none;">Tender Listings</a></li>
                                <li><a href="#" style="color: #94a3b8; text-decoration: none;">Resource Center</a></li>
                            </ul>
                        </div>

                        <div>
                            <h4 style="color: #f8fafc; font-size: 14px; font-weight: 700; text-transform: uppercase; margin-bottom: 20px;">Contact Demo</h4>
                            <p style="font-size: 13px; color: #94a3b8; line-height: 1.8;">
                                Email: support@example-demo.com<br>
                                Phone: +880 1234 567 890<br>
                                Location: Dhaka, Bangladesh
                            </p>
                        </div>

                        <div>
                            <h4 style="color: #f8fafc; font-size: 14px; font-weight: 700; text-transform: uppercase; margin-bottom: 20px;">Status</h4>
                            <div style="background: #0f172a; padding: 15px; border-radius: 8px; border: 1px solid #334155;">
                                <p style="font-size: 11px; color: #10b981; font-weight: 900; margin-bottom: 5px;">● SYSTEM ONLINE</p>
                                <p style="font-size: 10px; color: #64748b; text-transform: uppercase;">Demo Environment v1.0</p>
                            </div>
                        </div>
                    </div>

                    <div style="margin-top: 60px; padding-top: 20px; border-top: 1px solid #334155; display: flex; justify-content: space-between; font-size: 11px; color: #64748b; text-transform: uppercase; font-weight: 600;">
                        <span>&copy; {{ date('Y') }} TenderApp Portfolio Project.</span>
                        <span>Designed for Practice</span>
                    </div>
                </div>
            </footer>
        </div>
    </body>
</html>
