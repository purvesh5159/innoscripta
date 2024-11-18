<?php

// app/Services/NewsService.php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class NewsService
{
    public function fetchFromNewsAPI($query)
    {
        $queryParams = [
            'q' => $query ?? null,  // Only include keyword for NewsAPI
            'apiKey' => env('NEWS_API_KEY')
        ];

        $response = Http::withOptions(['verify' => false])->get('https://newsapi.org/v2/everything', $queryParams);
           
        if ($response->failed()) {
            \Log::error("NewsAPI Response Error: " . $response->body());
        }

        return $response->successful() ? $response->json()['articles'] ?? [] : [];
    }

    public function fetchFromGuardian($query)
    {
        $queryParams = [
            'q' => $query ?? null, // Only include keyword for NewsAPI
            'api-key' => env('GUARDIAN_API_KEY')
        ];

        $response = Http::withOptions(['verify' => false])->get('https://content.guardianapis.com/search', $queryParams);
        
        if ($response->failed()) {
            \Log::error("Guardian Response Error: " . $response->body());
        }

        return $response->successful() ? $response->json()['response']['results'] ?? [] : [];
        
    }

    // Fetch from New York Times API
    public function fetchFromNYTimes($query)
    {
        $queryParams = [
            'q' =>  $query ?? null,  // Only include keyword for NewsAPI
            'api-key' => env('NYTIMES_API_KEY')
        ];

        $response = Http::withOptions(['verify' => false])->get('https://api.nytimes.com/svc/search/v2/articlesearch.json', $queryParams);
        
            if ($response->failed()) {
            \Log::error("NYTimes Response Error: " . $response->body());
        }
        return $response->successful() ? $response->json()['response']['docs'] ?? [] : [];
    }
 
}
