<?php

namespace App\Http\Controllers;

use App\Services\NewsService;
use Illuminate\Http\Request;

class ArticlesController extends Controller
{
    protected $newsService;

    // Inject NewsService into the controller
    public function __construct(NewsService $newsService)
    {
        $this->newsService = $newsService;
    }

    // Fetch articles with pagination
    public function index(Request $request)
    {
        // Extract query parameters for searching
        $params = [
            'q' => $request->input('keyword'),
            'from' => $request->input('date'),
            'category' => $request->input('category'),
            'page' => $request->input('page', 1)  // Default to page 1 if not provided
        ];

        $articles = [];
        $sources = ['newsapi', 'guardian', 'nytimes'];  // Supported news sources

        // Fetch articles from all sources
        foreach ($sources as $source) {
            $response = $this->newsService->{"fetchFrom" . ucfirst($source)}($params);
            $articles = array_merge($articles, $response['articles'] ?? []);  // Merge articles
        }

        // Paginate the results (you can adjust pagination logic as needed)
        $paginatedArticles = array_slice($articles, ($params['page'] - 1) * 10, 10); // Paginate 10 per page

        return response()->json([
            'data' => $paginatedArticles,
            'pagination' => [
                'current_page' => $params['page'],
                'total' => count($articles),
                'per_page' => 10
            ]
        ]);
    }

    // Search for articles with filters
    public function search(Request $request)
    {
        $params = [
            'q' => $request->input('keyword'),
            'from' => $request->input('date'),
            'category' => $request->input('category'),
            'source' => $request->input('source'),
        ];

        $articles = [];
        $sources = ['newsapi', 'guardian', 'nytimes'];

        // Fetch articles from sources
        foreach ($sources as $source) {
            if (!$request->has('source') || $request->input('source') === $source) {
                $response = $this->newsService->{"fetchFrom" . ucfirst($source)}($params);
                $articles = array_merge($articles, $response['articles'] ?? []);
            }
        }

        return response()->json(['data' => $articles]);
    }

    // Retrieve a single article by ID
    public function show($id, Request $request)
    {
        // Check for the article in each source
        $article = $this->newsService->fetchFromNewsAPI(['id' => $id])['article'] ??
                   $this->newsService->fetchFromGuardian(['id' => $id])['article'] ??
                   $this->newsService->fetchFromNYTimes(['id' => $id])['article'];

        // Return error if not found
        if (!$article) {
            return response()->json(['message' => 'Article not found'], 404);
        }

        return response()->json(['data' => $article]);
    }
}
