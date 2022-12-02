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

        /**
     * @return Manifestations[] Returns an array of Manifestations objects
     */
    public function rechercheMotCle($value): array
    {
        return $this->createQueryBuilder('m')
            ->select('DISTINCT m')
            ->andWhere('m.titre LIKE :mot_cle OR m.description LIKE :mot_cle OR m.casting LIKE :mot_cle')
            ->setParameter('mot_cle', '%'.$value.'%')
            ->getQuery()
            ->getResult()
        ;
    }

    /**
     * @return Manifestations[] Returns an array of Manifestations objects
     */
    public function rechercheGenre($value): array
    {
        return $this->createQueryBuilder('m')
            ->select('DISTINCT m')
            ->andWhere('m.genre LIKE :genre')
            ->setParameter('genre', '%'.$value.'%')
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    /**
     * @return Manifestations[] Returns an array of Manifestations objects
     */
    public function rechercheDate($value): array
    {
        return $this->createQueryBuilder('m')
            ->select('DISTINCT m')
            ->andWhere('m.date LIKE :date')
            ->setParameter('date', $value)
            ->getQuery()
            ->getResult()
        ;
    }

    /**
     * @return Manifestations[] Returns an array of Manifestations objects
     */
    public function lastManifs($value): array
    {
        return $this->createQueryBuilder('m')
            ->select('DISTINCT m')
            ->andWhere('m.date >= :date')
            ->setParameter('date', $value)
            ->orderBy('m.date', 'ASC')
            ->setMaxResults(3)
            ->getQuery()
            ->getResult()
        ;
    }

    /**
     * @return Manifestations[] Returns an array of Manifestations objects
     */
    public function rechercheAll($date, $mot_cle, $genre): array
    {
        return $this->createQueryBuilder('m')
            ->select('DISTINCT m')
            ->andWhere('m.date LIKE :date')
            ->setParameter('date', $date)
            ->andWhere('m.titre LIKE :mot_cle OR m.description LIKE :mot_cle OR m.casting LIKE :mot_cle')
            ->setParameter('mot_cle', '%'.$mot_cle.'%')
            ->andWhere('m.genre LIKE :genre')
            ->setParameter('genre', '%'.$genre.'%')
            ->getQuery()
            ->getResult()
        ;
    }

        /**
     * @return Manifestations[] Returns an array of Manifestations objects
     */
    public function rechercheDateMot($date, $mot_cle): array
    {
        return $this->createQueryBuilder('m')
            ->select('DISTINCT m')
            ->andWhere('m.date LIKE :date')
            ->setParameter('date', $date)
            ->andWhere('m.titre LIKE :mot_cle OR m.description LIKE :mot_cle OR m.casting LIKE :mot_cle')
            ->setParameter('mot_cle', '%'.$mot_cle.'%')
            ->getQuery()
            ->getResult()
        ;
    }

        /**
     * @return Manifestations[] Returns an array of Manifestations objects
     */
    public function rechercheDateGenre($date, $genre): array
    {
        return $this->createQueryBuilder('m')
            ->select('DISTINCT m')
            ->andWhere('m.date LIKE :date')
            ->setParameter('date', $date)
            ->andWhere('m.genre LIKE :genre')
            ->setParameter('genre', '%'.$genre.'%')
            ->getQuery()
            ->getResult()
        ;
    }

        /**
     * @return Manifestations[] Returns an array of Manifestations objects
     */
    public function rechercheMotGenre($mot_cle, $genre): array
    {
        return $this->createQueryBuilder('m')
            ->select('DISTINCT m')
            ->andWhere('m.titre LIKE :mot_cle OR m.description LIKE :mot_cle OR m.casting LIKE :mot_cle')
            ->setParameter('mot_cle', '%'.$mot_cle.'%')
            ->andWhere('m.genre LIKE :genre')
            ->setParameter('genre', '%'.$genre.'%')
            ->getQuery()
            ->getResult()
        ;
    }

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
