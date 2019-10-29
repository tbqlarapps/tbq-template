<?php
namespace App\Api\Controllers;

use App\Http\Controllers\Controller;

class UserController extends Controller
{
    public function login()
    {
        return response()->json([1]);
    }
    public function registe()
    {
        return response()->json([2]);
    }
}
