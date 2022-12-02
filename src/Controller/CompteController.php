<?php

namespace App\Controller;

use App\Entity\Commande;
use PHPUnit\TextUI\Command;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Mpdf\Mpdf;

class CompteController extends AbstractController
{
    #[Route('/compte', name: 'app_compte')]
    public function index(): Response
    {
        $user = $this->getUser();
        if ($user==null) {
            return $this->redirectToRoute('app_login', ["panier"=>true]);
        }
        $commandes=$user->getCommandes();

        return $this->render('compte/index.html.twig', [
            'commandes' => $commandes,
        ]);
    }

    #[Route('/compte/pdf/{commande}', name: 'pdf')]
    public function pdf(Commande $commande): Response
    {
        $mpdf = new \Mpdf\Mpdf();
        $mpdf->useSubstitutions = false;
        $mpdf->simpleTables = true;

        $mpdf->SetFooter('Toulouse Culture');
        $mpdf->WriteHTML($html);

        $mpdf->SetTitle('Ticket commande'.$commande->getId());
        $mpdf->SetAuthor('TC');
        $mpdf->SetCreator('TC');
        $mpdf->SetSubject('Validation de commande');

        $mpdf->Output('Ticket commande'.$commande->getId());
        return new JsonResponse([
            'success' => true,
            'data'    => []
        ]);
    }
}
