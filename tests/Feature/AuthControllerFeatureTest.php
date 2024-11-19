<?php
namespace Tests\Feature;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class AuthControllerTest extends TestCase
{
    use RefreshDatabase; // Use database refresh between tests

    // Test user registration
    public function test_register_user()
    {
        $response = $this->postJson('/api/register', [
            'name' => 'John Doe',
            'email' => 'john@example.com',
            'password' => 'password123',
            'password_confirmation' => 'password123',
        ]);

        $response->assertStatus(201) // Assert HTTP 201 Created
                 ->assertJsonStructure([
                     'access_token',
                     'token_type',
                     'message',
                 ]);
    }

    // Test user login
    public function test_login_user()
    {
        $user = User::factory()->create([
            'email' => 'john@example.com',
            'password' => Hash::make('password123'),
        ]);

        $response = $this->postJson('/api/login', [
            'email' => 'john@example.com',
            'password' => 'password123',
        ]);

        $response->assertStatus(200) // Assert HTTP 200 OK
                 ->assertJsonStructure([
                     'access_token',
                     'token_type',
                     'message',
                 ]);
    }

    // Test user logout
    public function test_logout_user()
    {
        $user = User::factory()->create();
        $token = $user->createToken('auth_token')->plainTextToken;

        $response = $this->withHeader('Authorization', 'Bearer ' . $token)
                         ->postJson('/api/logout');

        $response->assertStatus(200) // Assert HTTP 200 OK
                 ->assertJson(['message' => 'User Logged out successfully']);
    }

    // Test password reset
    public function test_reset_password()
    {
        $user = User::factory()->create([
            'password' => Hash::make('oldpassword123'),
        ]);

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $user->createToken('auth_token')->plainTextToken,
        ])->postJson('/api/reset-password', [
            'current_password' => 'oldpassword123',
            'new_password' => 'newpassword123',
            'new_password_confirmation' => 'newpassword123',
        ]);

        $response->assertStatus(200) // Assert HTTP 200 OK
                 ->assertJson(['message' => 'Password reset successfully']);
    }

    // Test password reset with incorrect current password
    public function test_reset_password_incorrect_current_password()
    {
        $user = User::factory()->create([
            'password' => Hash::make('oldpassword123'),
        ]);

        $response = $this->withHeaders([
            'Authorization' => 'Bearer ' . $user->createToken('auth_token')->plainTextToken,
        ])->postJson('/api/reset-password', [
            'current_password' => 'incorrectpassword',
            'new_password' => 'newpassword123',
            'new_password_confirmation' => 'newpassword123',
        ]);

        $response->assertStatus(400) // Assert HTTP 400 Bad Request
                 ->assertJson(['message' => 'Current password is incorrect']);
    }
}
