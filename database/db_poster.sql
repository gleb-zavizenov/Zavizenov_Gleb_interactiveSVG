-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2019 at 08:39 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_poster`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_main_data`
--

DROP TABLE IF EXISTS `tbl_main_data`;
CREATE TABLE IF NOT EXISTS `tbl_main_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(15) NOT NULL,
  `consumption` varchar(10) NOT NULL,
  `happiness` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_main_data`
--

INSERT INTO `tbl_main_data` (`ID`, `country`, `consumption`, `happiness`) VALUES
(1, 'France', '370', '6.48'),
(2, 'Portugal', '339', '5.12'),
(3, 'Switzerland', '280', '7.51'),
(4, 'Namibia', '376', '4.57'),
(5, 'Czech Republic', '361', '6.60'),
(6, 'Gabon', '347', '4.12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup_data`
--

DROP TABLE IF EXISTS `tbl_popup_data`;
CREATE TABLE IF NOT EXISTS `tbl_popup_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hemisphere` varchar(20) NOT NULL,
  `vine` varchar(15) NOT NULL,
  `beer` varchar(15) NOT NULL,
  `gdp` varchar(15) NOT NULL,
  `happiness` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_popup_data`
--

INSERT INTO `tbl_popup_data` (`ID`, `hemisphere`, `vine`, `beer`, `gdp`, `happiness`) VALUES
(1, 'North', '66.59', '137.56', '91.48', '5.52'),
(2, 'South', '62.37', '136.25', '80.55', '5.48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
