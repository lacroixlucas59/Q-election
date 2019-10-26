-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 26 oct. 2019 à 17:31
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `q-election`
--

-- --------------------------------------------------------

--
-- Structure de la table `liste`
--

DROP TABLE IF EXISTS `liste`;
CREATE TABLE IF NOT EXISTS `liste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(500) DEFAULT NULL,
  `pour` int(11) NOT NULL,
  `contre` int(11) NOT NULL,
  `resultat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `liste`
--

INSERT INTO `liste` (`id`, `adresse`, `pour`, `contre`, `resultat`) VALUES
(1, 'https://cdn.dribbble.com/users/1913212/screenshots/6414669/01.jpg', 28, 5, 23),
(2, 'https://cdn.dribbble.com/users/1913212/screenshots/6414661/02.jpg', 21, 8, 13),
(3, 'https://cdn.dribbble.com/users/2984909/screenshots/6375612/q_logo-01_4x.jpg', 21, 12, 9),
(4, 'https://cdn.dribbble.com/users/495010/screenshots/6332464/quantum-dot.jpg', 27, 6, 21),
(5, 'https://cdn.dribbble.com/users/495010/screenshots/6334341/q-d.jpg', 16, 19, -3),
(6, 'https://cdn.dribbble.com/users/2021586/screenshots/6362821/bq-logo_4x.png', 17, 18, -1),
(7, 'https://cdn.dribbble.com/users/501966/screenshots/6317628/birdq_4x.jpg', 25, 5, 20),
(8, 'https://cdn.dribbble.com/users/3405494/screenshots/6278208/rect1510_4x.png', 17, 14, 3),
(9, 'https://cdn.dribbble.com/users/1919466/screenshots/6178330/quizwer.png', 21, 8, 13),
(10, 'https://cdn.dribbble.com/users/1935992/screenshots/6186813/01_4x.jpg', 23, 7, 16),
(11, 'https://cdn.dribbble.com/users/1365445/screenshots/5891947/quotesing-logo.png', 21, 11, 10),
(12, 'https://cdn.dribbble.com/users/1609948/screenshots/5557851/artboard_1_4x.jpg', 18, 12, 6),
(13, 'https://cdn.dribbble.com/users/1815004/screenshots/4913629/qazale.jpg', 21, 6, 15),
(14, 'https://cdn.dribbble.com/users/1189478/screenshots/4953942/qatib-shot.png', 16, 9, 7),
(15, 'https://cdn.dribbble.com/users/1829216/screenshots/5360547/untitled-2_4x.jpg', 17, 16, 1),
(16, 'https://cdn.dribbble.com/users/2068059/screenshots/5455224/q-brand-logo.png', 24, 9, 15),
(17, 'https://cdn.dribbble.com/users/815597/screenshots/4080701/q_grid_dribbble-01.png', 24, 6, 18),
(18, 'https://cdn.dribbble.com/users/815597/screenshots/4077933/arrow_q-01.png', 31, 6, 25),
(19, 'https://cdn.dribbble.com/users/978160/screenshots/2431591/ql-minimal-logo-design.jpg', 29, 5, 24),
(20, 'https://cdn.dribbble.com/users/28308/screenshots/1138067/query_logo-01.png', 21, 13, 8),
(21, 'https://cdn.dribbble.com/users/278287/screenshots/1204035/q-updated.jpg', 16, 17, -1),
(22, 'https://cdn.dribbble.com/users/278287/screenshots/1124498/q-wip.jpg', 16, 17, -1),
(23, 'https://cdn.dribbble.com/users/1362380/screenshots/5744530/ddd_4x.png', 31, 5, 26),
(24, 'https://cdn.dribbble.com/users/418288/screenshots/6454484/letters_dribble-17_4x.png', 29, 5, 24),
(25, 'https://cdn.dribbble.com/users/297873/screenshots/6358046/q-06_final_dribbble_4x.jpg', 17, 23, -6),
(26, 'https://cdn.dribbble.com/users/2694531/screenshots/6180714/shot-cropped-1552613407358.png', 28, 5, 23),
(27, 'https://cdn.dribbble.com/users/1693462/screenshots/5313697/plan_de_travail_1_copie_3-100.jpg', 16, 12, 4),
(28, 'https://cdn.dribbble.com/users/846370/screenshots/6525201/logo_1381.jpg', 25, 6, 19),
(29, 'https://cdn.dribbble.com/users/695545/screenshots/5589895/q-10_4x.jpg', 25, 8, 17),
(30, 'https://cdn.dribbble.com/users/1559930/screenshots/5774922/dribbble-01.png', 26, 6, 20),
(31, 'https://cdn.dribbble.com/users/230124/screenshots/4296888/qampersand1.png', 27, 5, 22),
(32, 'https://cdn.dribbble.com/users/1312159/screenshots/4493879/letter-q-dribbble.png', 31, 5, 26),
(33, 'https://cdn.dribbble.com/users/1278378/screenshots/6263216/q-tiaose_4x.jpg', 17, 14, 3),
(34, 'https://cdn.dribbble.com/users/2030073/screenshots/6164472/asset_5.png', 22, 7, 15),
(35, 'https://cdn.dribbble.com/users/1171903/screenshots/4521213/qtalk-logo-solution-_recovered_.jpg', 29, 7, 22),
(36, 'https://cdn.dribbble.com/users/846370/screenshots/6519981/logo_1438.jpg', 22, 6, 16),
(37, 'https://cdn.dribbble.com/users/2884205/screenshots/6024275/q-01_4x.png', 19, 6, 13),
(38, 'https://cdn.dribbble.com/users/1479564/screenshots/6421844/26.jpg', 17, 13, 4),
(39, 'https://cdn.dribbble.com/users/1713810/screenshots/6513357/q_4x.jpg', 16, 15, 1),
(40, 'https://cdn.dribbble.com/users/1584156/screenshots/4521952/17_q_quest_drbl.jpg', 24, 9, 15),
(41, 'https://cdn.dribbble.com/users/1207383/screenshots/5395643/eq-logo_4x.jpg', 28, 6, 22),
(42, 'https://cdn.dribbble.com/users/2321724/screenshots/6491924/36days_q.jpg', 19, 9, 10),
(43, 'https://cdn.dribbble.com/users/2110127/screenshots/4499393/untitled-1.jpg', 20, 21, -1),
(44, 'https://cdn.dribbble.com/users/180271/screenshots/6248601/q3_4x.jpg', 22, 8, 14),
(45, 'https://cdn.dribbble.com/users/2239878/screenshots/6322734/parrot_letter_q_logo_1x.jpg', 17, 18, -1),
(46, 'https://cdn.dribbble.com/users/1158237/screenshots/6445841/dbd_drib_1x1_1600x1600_36-days-q_4x.png', 24, 6, 18),
(47, 'https://cdn.dribbble.com/users/2363177/screenshots/6359181/q_letter_4x.jpg', 17, 18, -1),
(48, 'https://cdn.dribbble.com/users/2301819/screenshots/6360150/q_dribbble-02_4x.png', 29, 5, 24),
(49, 'https://cdn.dribbble.com/users/137192/screenshots/4517628/q.png', 16, 16, 0),
(50, 'https://cdn.dribbble.com/users/1090562/screenshots/6362009/q-800x600-01_4x.jpg', 16, 16, 0),
(51, 'https://cdn.dribbble.com/users/873445/screenshots/6361268/q_dribbble.gif', 16, 19, -3),
(52, 'https://cdn.dribbble.com/users/462448/screenshots/6441532/08102016_dribbble-layout-new-1600x1200_edit__1__4x.jpg', 18, 18, 0),
(53, 'https://cdn.dribbble.com/users/1672258/screenshots/5336805/q-new-black_4x.png', 27, 9, 18),
(54, 'https://cdn.dribbble.com/users/86317/screenshots/5559375/in_touch_magazine_q_1_dribbble_4x.jpg', 16, 26, -10),
(55, 'https://cdn.dribbble.com/users/17126/screenshots/4173116/letter-q.png', 20, 16, 4),
(56, 'https://cdn.dribbble.com/users/1638653/screenshots/4460660/q.gif', 24, 5, 19),
(57, 'https://cdn.dribbble.com/users/462982/screenshots/4492799/q_v01_dribbble.jpg', 29, 7, 22),
(58, 'https://cdn.dribbble.com/users/2405049/screenshots/5645078/q_queen_4x.png', 27, 5, 22),
(59, 'https://cdn.dribbble.com/users/1358460/screenshots/2941185/dribbble-quest.jpg', 24, 5, 19),
(60, 'https://cdn.dribbble.com/users/557720/screenshots/5472555/q_4x.jpg', 26, 5, 21),
(61, 'https://cdn.dribbble.com/users/1193858/screenshots/3736499/q.jpg', 29, 5, 24),
(62, 'https://cdn.dribbble.com/users/1843676/screenshots/4207046/q.png', 17, 13, 4),
(63, 'https://cdn.dribbble.com/users/846370/screenshots/6519981/logo_1438.jpg', 30, 5, 25),
(64, 'https://cdn.dribbble.com/users/2007184/screenshots/5302340/quetzalcoatlus_4x.jpg', 22, 6, 16),
(65, 'https://cdn.dribbble.com/users/86317/screenshots/5559375/in_touch_magazine_q_1_dribbble_4x.jpg', 16, 12, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
