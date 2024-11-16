<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    protected $commands = [
        \App\Console\Commands\FetchArticles::class,
    ];

    protected function schedule(Schedule $schedule)
    {
        // Schedule the FetchArticles command to run every hour
        $schedule->command('fetch:articles')->everyThirtyMinutes();
    }

    protected function commands()
    {
        $this->load(__DIR__.'/Commands');
    }
}
