-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : mariadb
-- Généré le : dim. 04 déc. 2022 à 16:43
-- Version du serveur : 10.8.4-MariaDB-1:10.8.4+maria~ubu2204
-- Version de PHP : 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae301`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'oue@mail.com', '[\"ROLE_USER\"]', '$2y$13$l9P8Me8302YRB0xP6h.4iuv3tEGkvvXqaUYlKJzOq0scwT46BoSXG'),
(2, 'tim@ote.com', '[\"ROLE_ADMIN\"]', '$2y$13$m6I3PlBt6gQlXxZDoyb7OOtKP5IGjVOcDuNOA3wu2jsAcj7iZUwmy'),
(3, 'prof@prof.fr', '[\"ROLE_ADMIN\"]', '$2y$13$.8Esf2.E.d9JVkNgB.fklunm74dzkbfndXgcuUHLTFL6bAPj1fOZG'),
(4, 'juju.v.h@hotmail.fr', '[]', '$2y$13$XcIDBiVFVAffZE8lgTLHeuXlqI5e5LZ8e4cldRBuSpV9MPtX02vr6');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
