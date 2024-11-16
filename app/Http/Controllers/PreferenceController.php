<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Preference;

class PreferenceController extends Controller
{
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
