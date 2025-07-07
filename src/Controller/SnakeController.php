<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class SnakeController extends AbstractController
{
    #[Route('/snake', name: 'app_snake')]
    public function index(): Response
    {
        return $this->render('easter_egg/snake.html.twig', [
            'controller_name' => 'SnakeController',
        ]);
    }
}
