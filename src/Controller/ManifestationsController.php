<?php

namespace App\Controller;

use App\Entity\Manifestations;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Repository\ManifestationsRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ManifestationsController extends AbstractController
{
    #[Route('/manifestations', name: 'app_manifestations')]
    public function index(EntityManagerInterface $entityManager): Response
    {
        $manifs = $entityManager->getRepository(Manifestations::class) -> findAlllieux();
        return $this->render('manifestations/index.html.twig', [
            'manifs' => $manifs,
        ]);
    }

    #[Route('/manifestations/{manifestation}', name: 'manifestation_detail')]
    public function detailManif(Manifestations $manifestation, EntityManagerInterface $entityManager): Response
    {
        return $this->render('manifestations/detail.html.twig', [
            'manif' => $manifestation,
        ]);
    }

    #[Route('/manifestations/recherche/resultat', name: 'recherche_resultat')]
    public function resultat(Request $request, EntityManagerInterface $entityManager, ManifestationsRepository $manifestationsRepository): Response
    {
        $manifs = [];

            $mot_cle = $request->request->get('mot_cle');
            $genre = $request->request->get('genre');
            $date= $request->request->get('date_debut');
            
            switch (true) {
                case ($mot_cle != null && $date != null && $genre != null):
                    $manifs = array_merge($manifs, $manifestationsRepository->rechercheAll($date, $mot_cle, $genre));
                    break;
                case ($mot_cle != null && $genre != null):
                    $manifs = array_merge($manifs, $manifestationsRepository->rechercheMotGenre($mot_cle, $genre));
                    break;
                case ($genre != null && $date != null):
                    $manifs = array_merge($manifs, $manifestationsRepository->rechercheDateGenre($date, $genre));
                    break;
                case ($mot_cle != null && $date != null):
                    $manifs = array_merge($manifs, $manifestationsRepository->rechercheDateMot($date, $mot_cle));
                    break;
                case ($mot_cle != null):
                    $manifs = array_merge($manifs, $manifestationsRepository->rechercheMotCle($mot_cle));
                    break;
                case ($genre != null):
                    $manifs = array_merge($manifs, $manifestationsRepository->rechercheGenre($genre));
                    break;
                case ($date != null):
                    $manifs = array_merge($manifs, $manifestationsRepository->rechercheDate($date));
                    break;
                case ($mot_cle == null && $genre == null && $date == null ):
                    $manifs = $manifestationsRepository->findAll();
                    break;
            }

            $manifs = array_unique($manifs, SORT_REGULAR);
            

        return $this->render('manifestations/render_manif.html.twig', [
            'manifs' => $manifs,
        ]);
    }
}
