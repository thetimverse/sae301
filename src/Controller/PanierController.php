<?php

namespace App\Controller;

use App\Entity\Commande;
use DateTime;
use Doctrine\ORM\EntityManagerInterface;
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
        $panier = json_decode($request->cookies->get('panier'), true);
        $total=0;
        foreach ($panier as $article) {
            $total+=$article['quantite']*$article['prix'];
        }

        return $this->render('panier/validation.html.twig', [
            'panier' => $panier,
            'total' => $total,
            'controller_name' => 'PanierController',
        ]);
    }
    #[Route('/panier/achat', name: 'panier_achat')]
    public function panierAchat(HttpFoundationRequest $request, EntityManagerInterface $entityManagerInterface): Response
    {
        $user = $this->getUser();
        if ($user==null) {
            return $this->redirectToRoute('app_login', ["panier"=>true]);
        }
        $panier = json_decode($request->cookies->get('panier'), true);
        $recupDonnee = $request->request->all();
        $total=0;
        foreach ($panier as $article) {
            $total+=$article['quantite']*$article['prix'];
        }
        $commande = new Commande;
        $commande -> setUser($user)
        -> setManifestations($panier)
        -> setTotal($total)
        -> setDate(new DateTime('now'))
        -> setNom($recupDonnee['nom'])
        -> setPrenom($recupDonnee['prenom'])
        -> setAdresse($recupDonnee['adresse'])
        -> setVille($recupDonnee['ville'])
        -> setCp($recupDonnee['cp']);

        $entityManagerInterface->persist($commande);
        $entityManagerInterface->flush();

        $this -> addFlash("success", "Commande réussie !");
        $response = new Response();
        $response->headers->clearCookie('panier', '/', null);
        return $this->redirectToRoute('app_accueil');
    }
}
