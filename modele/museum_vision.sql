-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 29 mars 2022 à 07:06
-- Version du serveur :  5.7.11
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `museum vision2`
--
DROP DATABASE IF EXISTS museum_vision;
CREATE DATABASE museum_vision;
USE museum_vision;
-- --------------------------------------------------------

--
-- Structure de la table `exposition`
--

CREATE TABLE `exposition` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Permanent` tinyint(1) NOT NULL,
  `TarifEnfant` decimal(6,2) NOT NULL,
  `TarifAdulte` decimal(6,2) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exposition`
--

INSERT INTO `exposition` (`id`, `Nom`, `Permanent`, `TarifEnfant`, `TarifAdulte`, `Active`) VALUES
(1, 'Les Zèbres du Bengale', 1, '3.50', '5.00', 1),
(2, 'La Légende Lionel Messi', 0, '3.50', '5.00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `NbAdulte` int(11) NOT NULL,
  `NbEnfant` int(11) NOT NULL,
  `DateHeureEntree` datetime NOT NULL,
  `DateHeureSortie` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`id`, `NbAdulte`, `NbEnfant`, `DateHeureEntree`, `DateHeureSortie`) VALUES
(1, 2, 3, '2022-02-07 09:16:38', '2022-02-07 11:34:23'),
(2, 3, 1, '2022-02-08 13:47:25', '2022-02-08 15:33:14');

-- --------------------------------------------------------

--
-- Structure de la table `visiteexposition`
--

CREATE TABLE `visiteexposition` (
  `idExposition` int(11) NOT NULL,
  `idVisite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visiteexposition`
--

INSERT INTO `visiteexposition` (`idExposition`, `idVisite`) VALUES
(1, 1),
(2, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `exposition`
--
ALTER TABLE `exposition`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteexposition`
--
ALTER TABLE `visiteexposition`
  ADD PRIMARY KEY (`idExposition`,`idVisite`),
  ADD KEY `idExposition` (`idExposition`),
  ADD KEY `idVisite` (`idVisite`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `visiteexposition`
--
ALTER TABLE `visiteexposition`
  ADD CONSTRAINT `visiteexposition_ibfk_1` FOREIGN KEY (`idExposition`) REFERENCES `exposition` (`id`),
  ADD CONSTRAINT `visiteexposition_ibfk_2` FOREIGN KEY (`idVisite`) REFERENCES `visite` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
