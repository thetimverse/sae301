<?php

namespace App\Controller;

use App\Entity\Lieux;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class LieuxController extends AbstractController
{
    #[Route('/lieux', name: 'app_lieux')]
    public function index(EntityManagerInterface $entityManager): Response
    {
        $lieux = $entityManager->getRepository(Lieux::class) -> findAll();
        return $this->render('lieux/index.html.twig', [
            'lieux' => $lieux,
        ]);
    }

    #[Route('/lieux/{lieu}', name: 'lieu_detail')]
    public function detailLieu(Lieux $lieu, EntityManagerInterface $entityManager): Response
    {
        $events = $lieu->getManifestations();
        return $this->render('lieux/detail.html.twig', [
            'lieu' => $lieu,
            'events' => $events,
        ]);
    }
}
