<?php

namespace App\Controller;


use App\Repository\CategoryRepository;
use App\Repository\PlatRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

final class AccueilController extends AbstractController
{
    #[Route('/', name: 'app_accueil')]
    public function index(CategoryRepository $categoryRepository,PlatRepository $platRepository): Response
    {
        $category = $categoryRepository->findAll();

        $tousLesPlats = $platRepository->findBy(['is_valid' => true]);
        shuffle($tousLesPlats); // mélange aléatoire
        $platsAleatoires = array_slice($tousLesPlats, 0, 6); // en prendre 6
    
        return $this->render('accueil/index.html.twig', [
            'plats' => $platsAleatoires,
            'category' => $category,
        
        ]);
    }
}
