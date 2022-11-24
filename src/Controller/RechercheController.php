<?php

namespace App\Controller;

use App\Entity\Manifestations;
use App\Repository\ManifestationsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RechercheController extends AbstractController
{
    #[Route('/recherche', name: 'app_recherche')]
    public function index(): Response
    {
        return $this->render('recherche/index.html.twig', [
            'controller_name' => 'RechercheController',
        ]);
    }

    #[Route('/recherche/resultat', name: 'recherche_resultat')]
    public function resultat(Request $request, EntityManagerInterface $entityManager, ManifestationsRepository $manifestationsRepository): Response
    {
        $manifs = [];

            $mot_cle = $request->query->get('mot_cle');
            $genre = $request->query->get('genre');
            $date_debut= $request->query->get('date_debut');
            $date_fin= $request->query->get('date_fin');


            if (isset($mot_cle)){
                $manifs = array_merge($manifs, $manifestationsRepository-> rechercheMotCle($mot_cle));
            }
            dump($request->request);
            if (isset($genre)){
                $manifs = array_merge($manifs, $manifestationsRepository -> rechercheGenre($genre));
            }

            if (isset($date_debut)){
                
            }

            if (isset($date_fin)){
                
            }
            

        return $this->render('recherche/resultat.html.twig', [
            'manifs' => $manifs,
        ]);
    }
}
