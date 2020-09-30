<?php

declare(strict_types=1);

namespace App\Controller;

class BaseController
{
    public function index()
    {
        return "I'm index() method from BaseController::class";
    }
}