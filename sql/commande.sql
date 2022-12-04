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
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `manifestations` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `user_id`, `nom`, `prenom`, `adresse`, `ville`, `cp`, `date`, `manifestations`, `total`) VALUES
(1, 2, 'vh', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-01 20:05:11', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"40\";s:5:\"titre\";s:24:\"Green Montana en concert\";s:4:\"date\";s:11:\"02 Dec 2022\";s:7:\"horaire\";s:3:\"20h\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/37.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:5:\"22.05\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:2:\"14\";}}', 94.15),
(2, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-01 20:11:13', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"40\";s:5:\"titre\";s:24:\"Green Montana en concert\";s:4:\"date\";s:11:\"02 Dec 2022\";s:7:\"horaire\";s:3:\"20h\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/37.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:5:\"22.05\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:2:\"14\";}}', 94.15),
(3, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-01 20:12:00', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"40\";s:5:\"titre\";s:24:\"Green Montana en concert\";s:4:\"date\";s:11:\"02 Dec 2022\";s:7:\"horaire\";s:3:\"20h\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/37.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:5:\"22.05\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:2:\"14\";}}', 94.15),
(4, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 17:39:42', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:2:\"14\";}}', 49.6),
(5, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 18:29:23', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:2:\"14\";}}', 49.6),
(6, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 18:30:40', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:2:\"14\";}}', 49.6),
(7, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 18:46:12', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:2;s:4:\"prix\";s:2:\"14\";}}', 49.6),
(8, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 18:48:49', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:2:\"14\";}}', 74.4),
(9, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 19:55:32', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:4;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:2:\"14\";}}', 85.2),
(10, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 20:01:20', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:4;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:2:\"14\";}}', 85.2),
(11, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 20:02:10', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:4;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:2:\"14\";}}', 85.2),
(12, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 20:03:05', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:4;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:3;s:4:\"prix\";s:2:\"14\";}}', 85.2),
(13, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 21:27:44', 'a:2:{i:0;a:7:{s:2:\"id\";s:2:\"26\";s:5:\"titre\";s:16:\"Festival Spirale\";s:4:\"date\";s:11:\"06 Jan 2023\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/26.jpg.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:4:\"10.8\";}i:1;a:7:{s:2:\"id\";s:2:\"31\";s:5:\"titre\";s:31:\"Blanche-Neige règle ses contes\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"19h30\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/28.jpg.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:2:\"14\";}}', 24.8),
(14, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 21:35:40', 'a:1:{i:0;a:7:{s:2:\"id\";s:2:\"24\";s:5:\"titre\";s:25:\"Les merveilles de l\'Hiver\";s:4:\"date\";s:11:\"07 Dec 2022\";s:7:\"horaire\";s:3:\"14h\";s:5:\"image\";s:44:\"http://localhost:8088/sae301/img/24.jpg.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(15, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 21:42:35', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(16, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 21:43:20', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(17, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 21:47:55', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(18, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 21:51:47', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(19, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 21:55:26', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(20, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 22:01:22', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(21, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 22:17:49', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(22, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 22:21:51', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(23, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 22:25:43', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(24, 2, 'Van Houdenhove', 'Julie', '55 Av. Edouard Herriot', 'Troyes', '10000', '2022-12-02 22:29:53', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:5:\"titre\";s:20:\"Le temps à l\'œuvre\";s:4:\"date\";s:11:\"24 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:39:\"http://localhost:8088/sae301/img/1.webp\";s:8:\"quantite\";i:1;s:4:\"prix\";s:1:\"0\";}}', 0),
(25, 4, 'dfghj', 'sdfghjkl', 'fvgbhnj,', 'cvgbhnj,', '456', '2022-12-03 14:28:13', 'a:1:{i:0;a:7:{s:2:\"id\";s:1:\"4\";s:5:\"titre\";s:32:\"Le silure, le géant d\'eau douce\";s:4:\"date\";s:11:\"30 Nov 2022\";s:7:\"horaire\";s:5:\"18h30\";s:5:\"image\";s:43:\"http://localhost:8088/sae301/img/4.jpg.webp\";s:8:\"quantite\";i:4;s:4:\"prix\";s:1:\"0\";}}', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DA76ED395` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
