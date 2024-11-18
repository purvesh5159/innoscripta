<?php

namespace App\Console\Commands;

use App\Services\NewsService;
use App\Models\Article;
use Illuminate\Console\Command;
use App\Http\Controllers\ArticlesController;

class FetchArticles extends Command
{
    protected $signature = 'fetch:articles';
    protected $description = 'Fetch articles from multiple news APIs';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        $controller = app(ArticlesController::class);
        $controller->fetchAndStoreArticles();
        $this->info('Articles fetched and stored successfully.');
    }
    
}
