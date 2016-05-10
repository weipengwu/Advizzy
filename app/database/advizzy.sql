-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 17, 2015 at 04:14 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `advizzy`
--
CREATE DATABASE IF NOT EXISTS `advizzy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `advizzy`;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'role1'),
(2, 'role2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eMail` varchar(100) NOT NULL,
  `uName` varchar(100) NOT NULL,
  `fName` varchar(100) NOT NULL,
  `lName` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `resetLink` varchar(500) NOT NULL,
  `profilePicLink` varchar(150) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `eMail`, `uName`, `fName`, `lName`, `password`, `resetLink`, `active`, `role`, `telephone`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'brn.rajoriya@gmail.com', 'brnBhaskar', 'Bhaskar', 'Rajoriya', '$2y$10$k7AQryd5O62SYuuQhAjzwu4P2pRDZoihrDmxANPxIyv5aGZ/11z8S', '', 1, 2, '8817778900', 'wb05QHfeiPTijcykNfj7bxFveehruJH3jBzEyrDf1eTY68GkOGwbnJghrfmC', '2015-04-17 03:58:59', '2015-04-16 22:28:59');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
