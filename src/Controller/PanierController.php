<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request as HttpFoundationRequest;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PanierController extends AbstractController
{
    #[Route('/panier', name: 'app_panier')]
    public function index(): Response
    {
        return $this->render('panier/index.html.twig', [
            'controller_name' => 'PanierController',
        ]);
    }

    #[Route('/panier/validation', name: 'panier_validation')]
    public function panierValidation(HttpFoundationRequest $request): Response
    {
        $user = $this->getUser();
        if ($user==null) {
            return $this->redirectToRoute('app_login', ["panier"=>true]);
        }
        dd($request->cookies->get('panier'));
        return $this->render('panier/validation.html.twig', [
            'controller_name' => 'PanierController',
        ]);
    }
}
