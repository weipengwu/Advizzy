-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2015 at 06:02 AM
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
  `myAvatar` varchar(150) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `city` varchar(500) NOT NULL,
  `careerPosition` varchar(500) NOT NULL,
  `familyOrientation` varchar(500) NOT NULL,
  `incomeLevel` varchar(500) NOT NULL,
  `hobby` varchar(500) NOT NULL,
  `country` varchar(500) NOT NULL,
  `careerIndustry` varchar(500) NOT NULL,
  `pet` varchar(500) NOT NULL,
  `values` varchar(500) NOT NULL,
  `goals` varchar(500) NOT NULL,
  `astrology` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `resetLink` varchar(500) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
