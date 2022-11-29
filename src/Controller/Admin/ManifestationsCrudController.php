<?php

namespace App\Controller\Admin;

use App\Entity\Manifestations;

use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;

class ManifestationsCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Manifestations::class;
    }

    /*
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id'),
            TextField::new('title'),
            TextEditorField::new('description'),
        ];
    }
    */

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->onlyOnIndex(),
            TextField::new('titre'),
            TextField::new('description'),
            TextField::new('casting'),
            TextField::new('genre'),
            ImageField::new('affiche')->setBasePath('img/')->setUploadDir('public/img/'),
            NumberField::new('prix'),
            TextField::new('horaire'),
            DateField::new('date')->setFormat('dd.MM.yyyy'),
            AssociationField::new('lieux', 'Lieux')
        ];
    }

    public function __toString(): string
    {
        return $this->libelle;
    }
}
