-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2012 at 11:39 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcustomer`, `customername`) VALUES
(1, 'Cookie Monster'),
(2, 'Guy Smiley'),
(3, 'Big Bird'),
(4, 'Oscar Grouch'),
(5, 'Alastair Cookie');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `iditem` int(11) NOT NULL AUTO_INCREMENT,
  `customerfk` int(11) DEFAULT NULL,
  `itemname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iditem`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`iditem`, `customerfk`, `itemname`) VALUES
(1, 1, 'Milk'),
(2, 1, 'Cookies'),
(3, 1, 'Napkins'),
(4, 2, 'Toothpaste'),
(5, 2, 'Hair Gel'),
(6, 2, 'Razors'),
(7, 2, 'Tooth Whitener'),
(8, 2, 'Comb'),
(9, 3, 'Seeds'),
(10, 3, 'Bread'),
(11, 3, 'Snuffalupagus Treats'),
(12, 4, 'Febreeze'),
(13, 4, 'Earplugs'),
(14, 4, 'St Johns Wort'),
(15, 5, 'Cookies'),
(16, 5, 'Milk'),
(17, 5, 'Eyeglass cleaner');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
