<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Services\NewsService;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // Register NewsService for dependency injection
        $this->app->singleton(NewsService::class, function ($app) {
            return new NewsService();
        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
