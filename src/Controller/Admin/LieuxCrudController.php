<?php

namespace App\Controller\Admin;

use App\Entity\Lieux;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;

class LieuxCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Lieux::class;
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
            TextField::new('nom'),
            TextField::new('adresse'),
            TextField::new('ville'),
            TextField::new('cp'),
            NumberField::new('capacite'),
            ImageField::new('image')->setBasePath('img/')->setUploadDir('public/img/'),
            AssociationField::new('manifestations', 'Manifestations')
        ];
    }

    public function __toString(): string
    {
        return $this->libelle;
    }
}