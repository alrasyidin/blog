<?php

namespace App\Controllers;

use System\Database;
use System\Controller;

class HomeController extends Controller
{
    public function index()
    {
        echo assets('images/logo.png');
    }
}