<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Preference;
use App\Models\Article;
use App\Models\User;

class PreferenceController extends Controller
{
     /**
     * @OA\Post(
     *     path="/api/preferences",
     *     summary="Store user preferences",
     *     description="Store or update user preferences such as sources, categories, and authors.",
     *     tags={"Preferences"},
     *     security={{"sanctum": {}}},
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"sources", "categories", "authors"},
     *             @OA\Property(property="sources", type="array", items=@OA\Items(type="string"), description="Preferred news sources"),
     *             @OA\Property(property="categories", type="array", items=@OA\Items(type="string"), description="Preferred categories"),
     *             @OA\Property(property="authors", type="array", items=@OA\Items(type="string"), description="Preferred authors")
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Preferences saved successfully",
     *         @OA\JsonContent(
     *             @OA\Property(property="message", type="string", example="Preferences saved successfully"),
     *             @OA\Property(property="data", type="object", 
     *                 @OA\Property(property="sources", type="array", items=@OA\Items(type="string")),
     *                 @OA\Property(property="categories", type="array", items=@OA\Items(type="string")),
     *                 @OA\Property(property="authors", type="array", items=@OA\Items(type="string"))
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Bad request - invalid input",
     *         @OA\JsonContent(
     *             @OA\Property(property="message", type="string", example="Invalid input")
     *         )
     *     )
     * )
     */

    //store
    public function store(Request $request)
    {
        $request->validate([
            'sources' => 'array',
            'categories' => 'array',
            'authors' => 'array',
        ]);

        $preference = auth()->user()->preference()->updateOrCreate(
            ['user_id' => auth()->id()],
            $request->only(['sources', 'categories', 'authors'])
        );

        return response()->json(['message' => 'Preferences saved successfully', 'data' => $preference]);
    }
     
    /**
     * @OA\Get(
     *     path="/api/preferences",
     *     summary="Show user preferences",
     *     description="Retrieve the stored preferences for the authenticated user.",
     *     tags={"Preferences"},
     *     security={{"sanctum": {}}},
     *     @OA\Response(
     *         response=200,
     *         description="Preferences retrieved successfully",
     *         @OA\JsonContent(
     *             @OA\Property(property="data", type="object", 
     *                 @OA\Property(property="sources", type="array", items=@OA\Items(type="string")),
     *                 @OA\Property(property="categories", type="array", items=@OA\Items(type="string")),
     *                 @OA\Property(property="authors", type="array", items=@OA\Items(type="string"))
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="No preferences found",
     *         @OA\JsonContent(
     *             @OA\Property(property="message", type="string", example="No preferences found")
     *         )
     *     )
     * )
     */

    //show
    public function show()
    {
        $preference = auth()->user()->preference;

        if (!$preference) {
            return response()->json(['message' => 'No preferences found'], 404);
        }

        return response()->json(['data' => $preference]);
    }
}
