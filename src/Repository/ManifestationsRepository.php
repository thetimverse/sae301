<?php

namespace App\Repository;

use App\Entity\Manifestations;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Manifestations>
 *
 * @method Manifestations|null find($id, $lockMode = null, $lockVersion = null)
 * @method Manifestations|null findOneBy(array $criteria, array $orderBy = null)
 * @method Manifestations[]    findAll()
 * @method Manifestations[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ManifestationsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Manifestations::class);
    }

    public function save(Manifestations $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Manifestations $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function findAlllieux()
    {
        return $this->createQueryBuilder('m')
        ->innerJoin('m.lieux', 'l')
        ->getQuery()
        ->getResult()
        ;
    }

    public function rechercheMotCle($motcle)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.Titre like (:val)')
            ->setParameter('val', $motcle)
            ->getQuery()
            ->getResult()
        ;
    }

    public function rechercheGenre($categories_array)
    {
        return $this->createQueryBuilder('m') 
        // ->Join('m.Lieux', 'l')
        ->andWhere('m.Genre LIKE (:val)')
        ->setParameter('val', $categories_array)

        ->getQuery()
        ->getResult()
        ;
    }

    // public function rechercheDateDebut()
    // {
    //     return $this->createQueryBuilder('m')
    //     ->innerJoin('m.lieux', 'l')
    //     ->getQuery()
    //     ->getResult()
    //     ;
    // }

    // public function rechercheDateFin()
    // {
    //     return $this->createQueryBuilder('m')
    //     ->innerJoin('m.lieux', 'l')
    //     ->getQuery()
    //     ->getResult()
    //     ;
    // }
//    /**
//     * @return Manifestations[] Returns an array of Manifestations objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('m')
//            ->andWhere('m.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('m.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Manifestations
//    {
//        return $this->createQueryBuilder('m')
//            ->andWhere('m.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
