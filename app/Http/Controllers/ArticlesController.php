<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Services\NewsService;
use App\Models\Article;
use App\Models\Preference;
use Illuminate\Support\Facades\Log;

class ArticlesController extends Controller
{
    protected $newsService;

    public function __construct(NewsService $newsService)
    {
        $this->newsService = $newsService;
    }

    // Main method to fetch articles
    public function index(Request $request)
    {
        $params = [
            'keyword' => $request->input('keyword'),
            'source' => $request->input('source'),
            'category' => $request->input('category'),
            'date' => $request->input('date'),
            'page' => $request->input('page', 1),
        ];

        if ($params['source'] === 'newsapi' && empty($params['keyword'])) {
            return response()->json(['message' => 'Keyword is required when using NewsAPI source.'], 400);
        }

        $articles = [];

        if ($params['source'] === 'nytimes') {
            $nyTimesArticles = $this->newsService->fetchFromNYTimes($params); 
            $articles = array_merge($articles, $nyTimesArticles);
        } elseif ($params['source'] === 'newsapi') {
            $newsApiArticles = $this->newsService->fetchFromNewsAPI($params);
            $articles = array_merge($articles, $newsApiArticles);
        } elseif ($params['source'] === 'guardian') {
            $guardianArticles = $this->newsService->fetchFromGuardian($params);
            $articles = array_merge($articles, $guardianArticles);
        } else {
            $nyTimesArticles = $this->newsService->fetchFromNYTimes($params);
            $newsApiArticles = $this->newsService->fetchFromNewsAPI($params);
            $guardianArticles = $this->newsService->fetchFromGuardian($params);
            
            $articles = array_merge($nyTimesArticles, $newsApiArticles, $guardianArticles);
        }

        $validArticles = [];
        foreach ($articles as $article) {
            if ($params['source'] === 'newsapi' || $params['source'] === null) {
                if (!empty($article['title']) && !empty($article['url'])) {
                    $validArticles[] = [
                        'source' => 'NewsAPI',
                        'title' => $article['title'] ?? '',
                        'description' => $article['description'] ?? '',
                        'publishedAt' => $article['publishedAt'] ?? '',
                    ];
                }
            }

            if ($params['source'] === 'nytimes' || $params['source'] === null) {
                if (!empty($article['headline']['main']) && !empty($article['web_url'])) {
                    $validArticles[] = [
                        'source' => 'NewYorkTimes',
                        'title' => $article['headline']['main'] ?? '',
                        'description' => $article['lead_paragraph'] ?? '',
                        'publishedAt' => $article['pub_date'] ?? '',
                    ];
                }
            }

            if ($params['source'] === 'guardian' || $params['source'] === null) {
                if (!empty($article['webTitle']) && !empty($article['webUrl'])) {
                    $validArticles[] = [
                        'source' => 'Guardian',
                        'title' => $article['webTitle'] ?? '',
                        'description' => $article['apiUrl'] ?? '',
                        'publishedAt' => $article['webPublicationDate'] ?? '',
                    ];
                }
            }
        }

        $perPage = 10;
        $paginatedArticles = array_slice($validArticles, ($params['page'] - 1) * $perPage, $perPage); // Paginate 10 per page

        return response()->json([
            'data' => $paginatedArticles,
            'pagination' => [
                'current_page' => $params['page'],
                'total' => count($validArticles),
                'per_page' => $perPage
            ]
        ]);
    }

    public function fetchAndStoreArticles()
    {
        $query = 'latest'; 
        $sources = [
            'NewsAPI' => fn() => $this->newsService->fetchFromNewsAPI($query),
            'NYTimes' => fn() => $this->newsService->fetchFromNYTimes($query),
            'Guardian' => fn() => $this->newsService->fetchFromGuardian($query),
        ];

        foreach ($sources as $sourceName => $fetcher) {
            try {
                $response = $fetcher();
                \Log::info("Fetched articles from {$sourceName}", ['response' => $response]);

                if (count($response) > 0) {
                    $this->saveArticles($response, $sourceName);
                } else {
                    \Log::warning("No articles fetched from {$sourceName}");
                }
            } catch (\Exception $e) {
                Log::error("Failed to fetch articles from {$sourceName}: " . $e->getMessage());
            }
        }

        return response()->json(['message' => 'Articles fetched and stored successfully']);
    }

    private function saveArticles($response, $source)
    {
        foreach ($response as $article) {
            try {
                $data = $this->mapArticleData($article, $source);
                \Log::info("Saving article data", $data);
                Article::updateOrCreate(['url' => $data['url']], $data);
            } catch (\Exception $e) {
                Log::error("Failed to save article from {$source}: " . $e->getMessage());
            }
        }
    }

    private function mapArticleData($article, $source)
    {
        \Log::info("Mapping data for source {$source}", ['article' => $article]);

        switch ($source) {
            case 'NewsAPI':
                return [
                    'title' => $article['title'],
                    'description' => $article['description'] ?? null,
                    'author' => $article['author'] ?? 'Unknown',
                    'source' => 'NewsAPI',
                    'url' => $article['url'],
                    'published_at' => $article['publishedAt'] ?? now(),
                ];
            case 'NYTimes':
                return [
                    'title' => $article['headline']['main'],
                    'description' => $article['lead_paragraph'] ?? null,
                    'author' => $article['byline']['original'] ?? 'Unknown',
                    'source' => 'NYTimes',
                    'url' => $article['web_url'],
                    'published_at' => $article['pub_date'] ?? now(),
                ];
            case 'Guardian':
                return [
                    'title' => $article['webTitle'],
                    'content' => $article['description'] ?? 'No description available',
                    'author' => 'Unknown',
                    'source' => 'Guardian',
                    'url' => $article['webUrl'],
                    'published_at' => $article['webPublicationDate'] ?? now(),
                ];
            default:
                throw new \Exception('Unknown source');
        }
    }

    // Retrieve a single article by ID
    public function show($id, Request $request)
    {
        $article = $this->newsService->fetchFromNewsAPI(['id' => $id])['article'] ?? 
                   $this->newsService->fetchFromNYTimes(['id' => $id])['article'];

        if (!$article) {
            return response()->json(['message' => 'Article not found'], 404);
        }

        return response()->json(['data' => $article]);
    }

    public function personalizedFeed(Request $request)
    {
        $preference = Preference::where('user_id', Auth::id())->first();

        if (!$preference) {
            return response()->json(['message' => 'No preferences found'], 404);
        }

        $query = Article::query();

        if (!empty($preference->sources) && is_array($preference->sources)) {
            $query->whereIn('source', $preference->sources);
        }

        if (!empty($preference->categories) && is_array($preference->categories)) {
            foreach ($preference->categories as $category) {
                $query->orWhere('title', 'like', '%' . $category . '%');
            }
        }

        if (!empty($preference->authors) && is_array($preference->authors)) {
            $query->whereIn('author', $preference->authors);
        }

        $articles = $query->paginate(10);
        return response()->json(['data' => $articles], 200);
    }

    public function search(Request $request)
    {
        $query = Article::query();

        if ($request->filled('keyword')) {
            $query->where('title', 'like', '%' . $request->keyword . '%');
        }

        if ($request->filled('date')) {
            $query->where('published_at', '>=', $request->date);
        }

        if ($request->filled('author')) {
            $query->where('author', '<=', $request->author);
        }

        if ($request->filled('source')) {
            $query->where('source', $request->source);
        }

        if ($request->filled('id')) {
            $query->where('id', $request->id);
        }

        $articles = $query->paginate(10);

        return response()->json($articles);
    }
}
