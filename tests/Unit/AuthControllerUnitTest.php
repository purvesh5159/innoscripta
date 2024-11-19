<?php
namespace Tests\Unit;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Testing\RefreshDatabase;  // Add this for database refresh
use Tests\TestCase;

class AuthControllerUnitTest extends TestCase
{
    use RefreshDatabase;  // Ensures the database is refreshed before/after each test

    public function test_password_hashing()
    {
        $password = 'securepassword';
        $hashedPassword = Hash::make($password);

        // Assert that the plain password matches the hashed password
        $this->assertTrue(Hash::check($password, $hashedPassword), 'Password hashing failed.');
    }

    public function test_user_creation()
    {
        // Use factory to create a user for testing
        $user = User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
            'password' => Hash::make('password123'),
        ]);

        // Assert that the created object is an instance of User
        $this->assertInstanceOf(User::class, $user);

        // Assert that the user exists in the database
        $this->assertDatabaseHas('users', [
            'email' => 'test@example.com',
        ]);
    }
}

