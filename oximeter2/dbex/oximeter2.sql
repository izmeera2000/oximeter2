-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2022 at 07:40 PM
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
-- Database: `oximeter2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataup`
--

DROP TABLE IF EXISTS `dataup`;
CREATE TABLE IF NOT EXISTS `dataup` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `bpm` varchar(4) NOT NULL,
  `o2` varchar(3) NOT NULL,
  `time_up` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataup`
--

INSERT INTO `dataup` (`id`, `bpm`, `o2`, `time_up`) VALUES
(1, '89', '99', '2022-12-03 17:02:56'),
(2, '89', '99', '2022-12-03 17:03:11'),
(3, '89', '99', '2022-12-03 17:03:13'),
(4, '77', '97', '2022-12-03 19:19:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
