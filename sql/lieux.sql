-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : mariadb
-- Généré le : dim. 04 déc. 2022 à 16:42
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
-- Structure de la table `lieux`
--

CREATE TABLE `lieux` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lieux`
--

INSERT INTO `lieux` (`id`, `nom`, `adresse`, `cp`, `ville`, `capacite`, `image`) VALUES
(1, 'Centre Culturel Bellegarde', '17 rue Bellegarde', '31000', 'Toulouse', 200, 'centre_culturel_bellegarde.jpg.webp'),
(2, 'Espace diversités laïcité', '38 rue d\'Aubuisson', '31000', 'Toulouse', 250, 'espace_diversites_laicite.jpg.webp'),
(3, 'Muséum de Toulouse', '35 allées Jules Guesde', '31400', 'Toulouse', 300, 'museum.jpg.webp'),
(4, 'Médialudo', '4 Av. du Parc', '31700', 'Blagnac', 175, 'medialudo.jpg'),
(5, 'Galerie le Château d\'Eau', '1 place Laganne', '31300', 'Toulouse', 300, 'galerie_le_chateau_d_eau.jpg.webp'),
(6, 'Altigone', '1 Bis Pl. Jean Bellières', '31650', 'Saint-Orens-de-Gameville', 600, 'altigone.jpg'),
(7, 'Centre Culturel Saint-Cyprien', '56 allées Charles de Fitte', '31300', 'Toulouse', 200, 'centre_culturel_saintcyprien.jpg.webp'),
(8, 'Médiathèque Georges Wolinski', 'pl Flandres Dunkerque', '31150', 'Fenouillet', 150, 'mediatheque.jpg'),
(9, 'Espaces Edf Bazacle', '11 quai Saint-Pierre', '31000', 'Toulouse', 200, 'espace_edf_bazacle.jpg.webp'),
(10, 'Le Castelet', '18 bis grande rue Saint-Michel', '31400', 'Toulouse', 130, 'le_castelet.jpg.webp'),
(11, 'Centre Culturel Théâtre des Mazades', '10 Avenue des Mazades', '31200', 'Toulouse', 400, 'centre_culturel_mazades.jpg.webp'),
(12, 'Le Metronum', '2 Rdpt Madame de Mondonville', '31200', 'Toulouse', 600, 'metronum.jpg.webp'),
(13, 'Centre Culturel Saint-Simon', '10 Chemin de Liffard', '31100', 'Toulouse', 150, 'centre_culturel_saint-simon.jpg.webp'),
(14, 'Le Petit Capitole (centre de loisirs)', '153 avenue de Lardenne', '31100', 'Toulouse', 220, 'le_petit_capitole.jpg'),
(15, 'L\'école les Vergers', '2 impasse des Vergers', '31100', 'Toulouse', 75, 'les_vergers.jpg'),
(16, 'Centre culturel Alban-Minville', '1 Place Martin Luther King', '31100', 'Toulouse', 150, 'centre_culturel_alban_minville.jpg.webp'),
(17, 'Le Connexion Live', '8 Rue Gabriel Péri', '31000', 'Toulouse', 350, 'connexion_live.jpg'),
(18, 'Le Crit\'Art', '16 Rue Rouget de Lisle', '32001', 'Auch', 350, 'critart.jpeg'),
(19, 'Le bikini', 'Rue Théodore Monod', '31520', 'Ramonville-Saint-Agne', 1500, 'bikini.jpg'),
(20, 'Halle aux Grains', '1 Pl. Dupuy', '31000', 'Toulouse', 2200, 'halles_aux_grains.png'),
(21, 'Théâtre de la Violette', '67 chemin Pujibet', '31200', 'Toulouse', 120, 'theatre_de_la_violette.jpg.webp'),
(22, 'Centre Culturel de Quartier Renan', '5 chemin d’Audibert', '31200', 'Toulouse', 125, 'centre_culturel_renan.jpg.webp'),
(23, 'Centre Culturel Espace Job', '105 Route de Blagnac', '31200', 'Toulouse', 240, 'centre_culturel_job.jpg.webp');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `lieux`
--
ALTER TABLE `lieux`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `lieux`
--
ALTER TABLE `lieux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
