-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 31 juil. 2022 à 12:15
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gbaf`
--

-- --------------------------------------------------------

--
-- Structure de la table `gbaf_actor`
--

DROP TABLE IF EXISTS `gbaf_actor`;
CREATE TABLE IF NOT EXISTS `gbaf_actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `logo_file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gbaf_actor`
--

INSERT INTO `gbaf_actor` (`id`, `name`, `description`, `logo_file`) VALUES
(1, 'Formation&co', 'Formation&co est une association française présente sur tout le territoire.<br/>\r\nNous proposons à des personnes issues de tout milieu de devenir entrepreneur grâce à un crédit et un accompagnement professionnel et personnalisé.<br/>Notre proposition :<br/>\r\n<ul> \r\n<li>- un financement jusqu’à 30 000€</li>\r\n<li>- un suivi personnalisé et gratuit</li>\r\n<li>- une lutte acharnée contre les freins sociétaux et les stéréotypes.</li>\r\n</ul>\r\nLe financement est possible, peu importe le métier : coiffeur, banquier, éleveur de chèvres...<br/> Nous collaborons avec des personnes talentueuses et motivées.\r\nVous n’avez pas de diplômes ? Ce n’est pas un problème pour nous ! Nos financements s’adressent à tous.', 'actor_formation_co.png'),
(2, 'Protectpeople', 'Protectpeople finance la solidarité nationale.<br/>\r\nNous appliquons le principe édifié par la Sécurité sociale française en 1945 : permettre à chacun de bénéficier d’une protection sociale.<br/><br/>\r\nChez Protectpeople, chacun cotise selon ses moyens et reçoit selon ses besoins.\r\nProectecpeople est ouvert à tous, sans considération d’âge ou d’état de santé.\r\nNous garantissons un accès aux soins et une retraite.<br/><br/>\r\nChaque année, nous collectons et répartissons 300 milliards d’euros.\r\nNotre mission est double :<br/>\r\nsociale : nous garantissons la fiabilité des données sociales ; <br/>\r\néconomique : nous apportons une contribution aux activités économiques.', 'actor_protectpeople.png'),
(3, 'DSA France', 'Dsa France accélère la croissance du territoire et s’engage avec les collectivités territoriales.<br/><br/>\r\nNous accompagnons les entreprises dans les étapes clés de leur évolution.<br/>\r\nNotre philosophie : s’adapter à chaque entreprise.<br/><br/>\r\nNous les accompagnons pour voir plus grand et plus loin et proposons des solutions de financement adaptées à chaque étape de la vie des entreprises.\r\n', 'actor_Dsa_france.png'),
(4, 'CDE', 'La CDE (Chambre Des Entrepreneurs) accompagne les entreprises dans leurs démarches de formation.<br/><br/>\r\nSon président est élu pour 3 ans par ses pairs, chefs d’entreprises et présidents des CDE.', 'actor_CDE.png');

-- --------------------------------------------------------

--
-- Structure de la table `gbaf_comment`
--

DROP TABLE IF EXISTS `gbaf_comment`;
CREATE TABLE IF NOT EXISTS `gbaf_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL,
  `gbaf_actor_id` int(11) NOT NULL,
  `gbaf_member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`gbaf_actor_id`,`gbaf_member_id`),
  KEY `fk_gbaf_comment_gbaf_actor1_idx` (`gbaf_actor_id`),
  KEY `fk_gbaf_comment_gbaf_member1_idx` (`gbaf_member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gbaf_comment`
--

INSERT INTO `gbaf_comment` (`id`, `comment`, `date_add`, `gbaf_actor_id`, `gbaf_member_id`) VALUES
(1, 'super génial comme centre de formation', '2022-07-31 10:09:20', 1, 17),
(2, 'super génial belle cotisation', '2022-07-31 12:31:08', 2, 17),
(3, 'bon accompagnement je recommande', '2022-07-31 12:39:46', 3, 17),
(4, 'je recommande cet acteur, super génial', '2022-07-31 12:43:24', 4, 19);

-- --------------------------------------------------------

--
-- Structure de la table `gbaf_member`
--

DROP TABLE IF EXISTS `gbaf_member`;
CREATE TABLE IF NOT EXISTS `gbaf_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(70) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gbaf_member`
--

INSERT INTO `gbaf_member` (`id`, `lastname`, `firstname`, `username`, `password`, `question`, `answer`) VALUES
(17, 'Dreux', 'Rodolphe', 'RDX28', '$2y$10$xuM9cJHqEztwg8lLelVte.i2Dp4ZuyzYA5o4UMnJir/F1zdUub4nS', 'Mon animal préféré?', 'Perroquet'),
(18, 'Durand', 'Marie', 'MarieD', '$2y$10$46UDWkw2Gb/RIsEVNyKnpOPLjChZ1nIs05YWNAFJzxKlGoZl01Edy', 'animal préféré?', 'chat'),
(19, 'Dupont', 'patrick', 'Dpatrick', '$2y$10$i0Zyf0t1u/of68.3dskef.9TKnK0U1u9QP.iZ806xiji8qrwyDzfi', 'animal préféré?', 'perroquet');

-- --------------------------------------------------------

--
-- Structure de la table `gbaf_vote`
--

DROP TABLE IF EXISTS `gbaf_vote`;
CREATE TABLE IF NOT EXISTS `gbaf_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote` tinyint(1) NOT NULL,
  `gbaf_actor_id` int(11) NOT NULL,
  `gbaf_member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`gbaf_actor_id`,`gbaf_member_id`),
  KEY `fk_gbaf_vote_gbaf_actor1_idx` (`gbaf_actor_id`),
  KEY `fk_gbaf_vote_gbaf_member1_idx` (`gbaf_member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gbaf_vote`
--

INSERT INTO `gbaf_vote` (`id`, `vote`, `gbaf_actor_id`, `gbaf_member_id`) VALUES
(1, 1, 1, 17),
(2, 0, 1, 19),
(3, 1, 3, 17),
(4, 1, 4, 17),
(5, 1, 4, 17),
(6, 1, 4, 19),
(7, 1, 4, 18),
(8, 1, 4, 18),
(9, 1, 4, 18),
(10, 1, 4, 18),
(11, 1, 3, 18),
(12, 1, 3, 18),
(13, 1, 3, 18),
(14, 1, 3, 18),
(15, 1, 3, 18),
(16, 1, 3, 18);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `gbaf_comment`
--
ALTER TABLE `gbaf_comment`
  ADD CONSTRAINT `fk_gbaf_comment_gbaf_actor1` FOREIGN KEY (`gbaf_actor_id`) REFERENCES `gbaf_actor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gbaf_comment_gbaf_member1` FOREIGN KEY (`gbaf_member_id`) REFERENCES `gbaf_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `gbaf_vote`
--
ALTER TABLE `gbaf_vote`
  ADD CONSTRAINT `fk_gbaf_vote_gbaf_actor1` FOREIGN KEY (`gbaf_actor_id`) REFERENCES `gbaf_actor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gbaf_vote_gbaf_member1` FOREIGN KEY (`gbaf_member_id`) REFERENCES `gbaf_member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
