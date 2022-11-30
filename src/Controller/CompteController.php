<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CompteController extends AbstractController
{
    #[Route('/compte', name: 'app_compte')]
    public function index(): Response
    {
        $user=$this->getUser();
        $commandes=$user->getCommandes;

        return $this->render('compte/index.html.twig', [
            'commandes' => $commandes,
        ]);
    }
}
