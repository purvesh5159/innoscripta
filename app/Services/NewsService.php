<?php

// app/Services/NewsService.php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class NewsService
{
    public function fetchFromNewsAPI($params)
    {
        $response = Http::get('https://newsapi.org/v2/everything', array_merge($params, [
            'apiKey' => env('NEWS_API_KEY')
        ]));
        
        return $response->json();
    }

    public function fetchFromNYTimes($params)
    {
        $response = Http::get('https://api.nytimes.com/svc/search/v2/articlesearch.json', array_merge($params, [
            'api-key' => env('NYTIMES_API_KEY')
        ]));
        
        return $response->json();
    }
}
