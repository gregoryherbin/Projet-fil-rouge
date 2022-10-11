-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 11 oct. 2022 à 07:51
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `voitures`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartenir`
--

CREATE TABLE `appartenir` (
  `Id_Voiture` int(11) NOT NULL,
  `Id_Photos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `appartenir`
--

INSERT INTO `appartenir` (`Id_Voiture`, `Id_Photos`) VALUES
(1, 1),
(2, 2),
(4, 4),
(3, 5),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `description`
--

CREATE TABLE `description` (
  `Id_Description` int(11) NOT NULL,
  `Description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `description`
--

INSERT INTO `description` (`Id_Description`, `Description`) VALUES
(1, 'BMW Série 1 116i 136ch SIEGCHAUF/CLIM/PDC/JA/GAR12MOIS berline, noir, 7 cv, 5 portes, couleur intérieure : noir, première mise en circulation le 10/05/2013, garantie 12 mois.\r\n\r\n5 places\r\n\r\nOPTIONS ET EQUIPEMENTS :\r\nExtérieur :\r\n- vitres électriques\r\n\r\nIntérieur et confort :\r\n- ordinateur de bord\r\n- sièges chauffants'),
(2, 'Lorem Ipsum est simplement un faux texte de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, lorsqu\'un imprimeur inconnu a pris une galère de caractères et l\'a brouillé pour en faire un livre de spécimens de caractères. Il a survécu non seulement à cinq siècles, mais aussi au saut dans la composition électronique, restant essentiellement inchangé. Il a été popularisé dans les années 1960 avec la sortie de feuilles Letraset contenant des passages de Lorem Ipsum, et plus récemment avec des logiciels de publication assistée par ordinateur comme Aldus PageMaker comprenant des versions de Lorem Ipsum.'),
(3, 'Lorem Ipsum est simplement un faux texte de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, lorsqu\'un imprimeur inconnu a pris une galère de caractères et l\'a brouillé pour en faire un livre de spécimens de caractères. Il a survécu non seulement à cinq siècles, mais aussi au saut dans la composition électronique, restant essentiellement inchangé. Il a été popularisé dans les années 1960 avec la sortie de feuilles Letraset contenant des passages de Lorem Ipsum, et plus récemment avec des logiciels de publication assistée par ordinateur comme Aldus PageMaker comprenant des versions de Lorem Ipsum.'),
(4, 'Lorem Ipsum est simplement un faux texte de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, lorsqu\'un imprimeur inconnu a pris une galère de caractères et l\'a brouillé pour en faire un livre de spécimens de caractères. Il a survécu non seulement à cinq siècles, mais aussi au saut dans la composition électronique, restant essentiellement inchangé. Il a été popularisé dans les années 1960 avec la sortie de feuilles Letraset contenant des passages de Lorem Ipsum, et plus récemment avec des logiciels de publication assistée par ordinateur comme Aldus PageMaker comprenant des versions de Lorem Ipsum.'),
(5, 'Lorem Ipsum est simplement un faux texte de l\'industrie de l\'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l\'industrie depuis les années 1500, lorsqu\'un imprimeur inconnu a pris une galère de caractères et l\'a brouillé pour en faire un livre de spécimens de caractères. Il a survécu non seulement à cinq siècles, mais aussi au saut dans la composition électronique, restant essentiellement inchangé. Il a été popularisé dans les années 1960 avec la sortie de feuilles Letraset contenant des passages de Lorem Ipsum, et plus récemment avec des logiciels de publication assistée par ordinateur comme Aldus PageMaker comprenant des versions de Lorem Ipsum.');

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `Id_Localisation` int(11) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `Departement` varchar(50) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `Code_Postal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `localisation`
--

INSERT INTO `localisation` (`Id_Localisation`, `Region`, `Departement`, `Ville`, `Code_Postal`) VALUES
(1, 'Hauts de France', 'Nord', 'Maubeuge', 59600),
(2, 'Hauts de France', 'Pas de Calais', 'Lens', 62000),
(3, 'Hauts de France', 'Nord', 'Lille', 59000),
(4, 'Ile de France', 'Essonne', 'Palaiseau', 91120),
(5, 'Hauts de France', 'Pas de Calais', 'vimy', 62155);

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `Id_Photos` int(11) NOT NULL,
  `Nom_photo` varchar(50) DEFAULT NULL,
  `Lien` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photos`
--

INSERT INTO `photos` (`Id_Photos`, `Nom_photo`, `Lien`) VALUES
(1, 'BMW', ''),
(2, 'renault', ''),
(3, 'peugeot', ''),
(4, 'audi', ''),
(5, 'citroen', '');

-- --------------------------------------------------------

--
-- Structure de la table `prix`
--

CREATE TABLE `prix` (
  `Id_Prix_` int(11) NOT NULL,
  `Montant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prix`
--

INSERT INTO `prix` (`Id_Prix_`, `Montant`) VALUES
(1, 3000),
(2, 4000),
(3, 4500),
(4, 5000),
(5, 5500);

-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

CREATE TABLE `vendeur` (
  `Id_Vendeur` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Anciennete` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vendeur`
--

INSERT INTO `vendeur` (`Id_Vendeur`, `Nom`, `Prenom`, `Anciennete`) VALUES
(1, 'Dupont', 'Paul', '2022-09-02'),
(2, 'Depierre', 'Jacques', '2022-09-07'),
(3, 'Danslemur', 'Yvon', '2022-10-02'),
(4, 'Versaire', 'EslaRoseLaureAnnie', '2022-10-02'),
(5, 'terrieur', 'alain & alex', '2022-07-27');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `Id_Voiture` int(11) NOT NULL,
  `Marques` varchar(50) DEFAULT NULL,
  `modele` varchar(50) DEFAULT NULL,
  `Annee_modele` int(11) DEFAULT NULL,
  `Mise_en_circulation` date DEFAULT NULL,
  `Type_de_vehicule` varchar(50) DEFAULT NULL,
  `Kilometrage` varchar(50) DEFAULT NULL,
  `Carburant` varchar(50) DEFAULT NULL,
  `couleur` varchar(50) DEFAULT NULL,
  `nombre_de_porte` int(11) DEFAULT NULL,
  `nombre_de_place` int(11) DEFAULT NULL,
  `puissance_fiscale` varchar(50) DEFAULT NULL,
  `puissance_din` varchar(50) DEFAULT NULL,
  `permis` varchar(50) DEFAULT NULL,
  `critaire` int(11) DEFAULT NULL,
  `boite_de_vitesse` varchar(50) DEFAULT NULL,
  `Id_Prix_` int(11) DEFAULT NULL,
  `Id_Vendeur` int(11) DEFAULT NULL,
  `Id_Description` int(11) NOT NULL,
  `Id_Localisation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`Id_Voiture`, `Marques`, `modele`, `Annee_modele`, `Mise_en_circulation`, `Type_de_vehicule`, `Kilometrage`, `Carburant`, `couleur`, `nombre_de_porte`, `nombre_de_place`, `puissance_fiscale`, `puissance_din`, `permis`, `critaire`, `boite_de_vitesse`, `Id_Prix_`, `Id_Vendeur`, `Id_Description`, `Id_Localisation`) VALUES
(1, 'BMW', 'serie3', 2021, '2022-09-05', 'break', '54100', 'electrique', 'vert', 3, 2, '5', '200', 'permis B', 1, 'auto', 5, 3, 1, 4),
(2, 'renault', 'clio 3', 2014, '2015-10-02', 'loisir', '20', 'diesel', 'bleu', 5, 4, '4', '65', 'permis B', 3, 'manuelle', 1, 1, 5, 5),
(3, 'citroen', 'c3', 2008, '2008-10-03', 'serie', '0', 'essence', 'gris', 3, 5, '5', '120', 'permis B', 1, 'manuelle', 3, 2, 3, 5),
(4, 'audi', 'a3', 2019, '2020-10-02', 'serie', '20000', 'diesel', 'rouge', 5, 2, '5', '65', 'permis B', 2, 'auto', 4, 1, 4, 2),
(5, 'audi', 'a4', 2019, '2020-10-04', 'serie', '14500', 'essence', 'jaune', 5, 4, '5', '95', 'permis B', 3, 'manuelle', 5, 2, 2, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD PRIMARY KEY (`Id_Voiture`,`Id_Photos`),
  ADD KEY `Id_Photos` (`Id_Photos`);

--
-- Index pour la table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`Id_Description`);

--
-- Index pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`Id_Localisation`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`Id_Photos`);

--
-- Index pour la table `prix`
--
ALTER TABLE `prix`
  ADD PRIMARY KEY (`Id_Prix_`);

--
-- Index pour la table `vendeur`
--
ALTER TABLE `vendeur`
  ADD PRIMARY KEY (`Id_Vendeur`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`Id_Voiture`),
  ADD UNIQUE KEY `Id_Description` (`Id_Description`),
  ADD KEY `Id_Prix_` (`Id_Prix_`),
  ADD KEY `Id_Vendeur` (`Id_Vendeur`),
  ADD KEY `Id_Localisation` (`Id_Localisation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartenir`
--
ALTER TABLE `appartenir`
  ADD CONSTRAINT `appartenir_ibfk_1` FOREIGN KEY (`Id_Voiture`) REFERENCES `voiture` (`Id_Voiture`),
  ADD CONSTRAINT `appartenir_ibfk_2` FOREIGN KEY (`Id_Photos`) REFERENCES `photos` (`Id_Photos`);

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `voiture_ibfk_1` FOREIGN KEY (`Id_Prix_`) REFERENCES `prix` (`Id_Prix_`),
  ADD CONSTRAINT `voiture_ibfk_2` FOREIGN KEY (`Id_Vendeur`) REFERENCES `vendeur` (`Id_Vendeur`),
  ADD CONSTRAINT `voiture_ibfk_3` FOREIGN KEY (`Id_Description`) REFERENCES `description` (`Id_Description`),
  ADD CONSTRAINT `voiture_ibfk_4` FOREIGN KEY (`Id_Localisation`) REFERENCES `localisation` (`Id_Localisation`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
