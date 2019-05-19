-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2019 at 12:28 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `selln`
--

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE IF NOT EXISTS `shoppingcart` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT '1',
  `size` varchar(4) DEFAULT 'M',
  `products_pid` int(11) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `pcode` varchar(45) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_shoppingCart_products_idx` (`products_pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `fk_shoppingCart_products` FOREIGN KEY (`products_pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
