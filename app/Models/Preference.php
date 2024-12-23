<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Preference;

class Preference extends Model
{
    use HasFactory;

    protected $fillable = ['sources', 'categories', 'authors'];

    protected $casts = [
        'sources' => 'array',
        'categories' => 'array',
        'authors' => 'array',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
