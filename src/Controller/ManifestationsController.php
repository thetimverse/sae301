<?php

namespace App\Controller;

use App\Entity\Manifestations;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
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
}
