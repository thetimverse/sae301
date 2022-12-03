<?php

namespace App\Controller;

use App\Entity\Commande;
use PHPUnit\TextUI\Command;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Dompdf\Dompdf;
use Dompdf\Options;

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
    public function pdf(Commande $commande)
    {
        // Configure Dompdf according to your needs
        $pdfOptions = new Options();
        $pdfOptions->set('defaultFont', 'Roboto');

        // Instantiate Dompdf with our options
        $dompdf = new Dompdf($pdfOptions);

        // Retrieve the HTML generated in our twig file
        $html = $this->renderView('compte/pdf.html.twig', [
            'title' => "Welcome to our PDF Test",
            'commande' => $commande
        ]);

        // Load HTML to Dompdf
        $dompdf->loadHtml($html);

        // (Optional) Setup the paper size and orientation 'portrait' or 'portrait'
        $dompdf->setPaper('A4', 'portrait');

        // Render the HTML as PDF
        $dompdf->render();

        // Output the generated PDF to Browser (inline view)
        $dompdf->stream("facture.pdf", [
            "Attachment" => false
        ]);
    }
}
