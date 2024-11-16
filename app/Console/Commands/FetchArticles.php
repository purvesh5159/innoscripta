<?php

namespace App\Console\Commands;

use App\Services\NewsService;
use App\Models\Article;
use Illuminate\Console\Command;

class FetchArticles extends Command
{
    protected $signature = 'fetch:articles';
    protected $description = 'Fetch articles from multiple news APIs';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle(NewsService $newsService)
    {
        $params = [
            'q' => 'latest',
            'page' => 1,
        ];

        $articles = [];
        $sources = ['newsapi', 'nytimes']; 

        foreach ($sources as $source) {
            $articles = array_merge($articles, $newsService->{"fetchFrom" . ucfirst($source)}($params)['articles'] ?? []);
        }

        foreach ($articles as $articleData) {
            Article::updateOrCreate(
                ['source_id' => $articleData['source']['id']],  
                [
                    'title' => $articleData['title'],
                    'description' => $articleData['description'],
                    'url' => $articleData['url'],
                    'published_at' => $articleData['publishedAt'],
                    'source' => $articleData['source']['name'],
                ]
            );
        }

        $this->info('Articles fetched and stored successfully!');
    }
    
}
