<?php

declare(strict_types=1);

use App\Controller\BaseController;

require dirname(__DIR__) . '/vendor/autoload.php';

dump((new BaseController())->index());