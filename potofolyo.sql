-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Aug 29, 2023 at 10:57 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `potofolyo`
--
CREATE DATABASE IF NOT EXISTS `potofolyo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `potofolyo`;

-- --------------------------------------------------------

--
-- Table structure for table `itilizatè`
--

DROP TABLE IF EXISTS `itilizatè`;
CREATE TABLE IF NOT EXISTS `itilizatè` (
  `id_itilizatè` int(11) NOT NULL AUTO_INCREMENT,
  `non` varchar(30) NOT NULL,
  `siyati` varchar(30) NOT NULL,
  `imel` varchar(30) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `telefòn` varchar(30) NOT NULL,
  PRIMARY KEY (`id_itilizatè`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itilizatè`
--

INSERT INTO `itilizatè` (`id_itilizatè`, `non`, `siyati`, `imel`, `foto`, `telefòn`) VALUES
(1, 'Anne Sarah', 'gabrielle ', 'annesa@gmail.com', 'https://vu.fr/aJrbj', '+50946991864'),
(2, 'Halissa', 'Tidor', 'tidorlisa10.@gmail.com', 'https://vu.fr/zmjO', '+50941569081'),
(3, 'pierre jean', 'Jodlin', 'jodlinpj.100@yahoo.com', 'https://vu.fr/ZWwy', '+50948109863'),
(4, 'Macron', 'Jean Mirleau', 'mirlaumac.8@gmail.com', 'https://vu.fr/BsoE', '+5095686487'),
(5, 'Loveda', 'Maximin', 'lovedamax@gmmail.com', 'https://vu.fr/dLKix', '+50931236750'),
(6, 'Frantzley', 'Toussaint', 'toussaintfranz@gmail.com', 'https://vu.fr/ktYM', '+50938104631'),
(7, 'Janvier', 'Yvens', 'yvens.10@gmail.com', 'https://vu.fr/XKrsV', '+50933070127'),
(8, 'Carlenz', 'Paraison', 'parisoncaelenz@gmail.com', 'https://vu.fr/XKrsV', '+509398642690');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `id_pwojè` int(11) DEFAULT NULL,
  `non` varchar(50) DEFAULT 'programming',
  PRIMARY KEY (`id_kategori`),
  KEY `id_pwojè` (`id_pwojè`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_pwojè`, `non`) VALUES
(1, 1, 'food'),
(2, 3, 'energy'),
(3, 4, 'education'),
(4, 5, 'food'),
(5, 2, 'programming');

-- --------------------------------------------------------

--
-- Table structure for table `pwojè`
--

DROP TABLE IF EXISTS `pwojè`;
CREATE TABLE IF NOT EXISTS `pwojè` (
  `id_pwojè` int(11) NOT NULL AUTO_INCREMENT,
  `id_itilizatè` int(11) DEFAULT NULL,
  `tit` varchar(50) NOT NULL,
  `slug` varchar(45) NOT NULL,
  `dat_kreye` date NOT NULL,
  `deskripsyon` varchar(150) NOT NULL,
  `foto` varchar(60) NOT NULL,
  PRIMARY KEY (`id_pwojè`),
  KEY `id_itilizatè` (`id_itilizatè`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pwojè`
--

INSERT INTO `pwojè` (`id_pwojè`, `id_itilizatè`, `tit`, `slug`, `dat_kreye`, `deskripsyon`, `foto`) VALUES
(1, 1, 'reset kwizinn', 'pi-bon-reset-kwizinn', '2020-02-10', 'fe yon bwayaj an itili a trave plat italyen yo', 'https://vu.fr/dpoHx'),
(2, 6, 'mizajou sit web kod9', 'mizajou-sit-kod9', '2023-07-26', 'langaj pwogramasyon ki itilize pou fe mizajou a se django', 'https://vu.fr/eoHB'),
(3, 7, 'elektrisite24/24', 'elektrisite-24-sou-24', '2022-10-16', 'konstriksyon yon pak sole ,pou alimante tou peyi a', 'https://vu.fr/JbaB'),
(4, 6, 'mwen konn li', 'mwen-konn-li', '2023-10-17', 'yon platfom an liy pou pemet timoun aprann li pi byen ', 'https://vu.fr/wMaiw'),
(5, 1, 'manje kreyol', 'ann-manje-kreyol', '2022-04-27', 'manje kreyol la pou pwouvwa  manje ayisyen ', 'https://vu.fr');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
