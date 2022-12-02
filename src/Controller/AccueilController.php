<?php

namespace App\Controller;

use App\Entity\Manifestations;
use DateTime;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AccueilController extends AbstractController
{
    #[Route('/', name: 'app_accueil')]
    public function index(EntityManagerInterface $em): Response
    {
        $manifs = $em->getRepository(Manifestations::class)->lastManifs(new DateTime('now'));
        return $this->render('accueil/index.html.twig', [
            'manifs' => $manifs,
        ]);
    }
}
