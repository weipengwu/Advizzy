-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2015 at 09:59 AM
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
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext NOT NULL,
  `questionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `repliesCount` int(11) NOT NULL,
  `likesCount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `commentsCount` int(11) NOT NULL,
  `likesCount` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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
  `designation` varchar(20) NOT NULL,
  `address1` varchar(500) NOT NULL,
  `address2` varchar(500) NOT NULL,
  `eMail2` varchar(200) NOT NULL,
  `postalCode` int(11) NOT NULL,
  `province` varchar(300) NOT NULL,
  `digestFrequency` varchar(10) NOT NULL,
  `maxRequest` int(11) NOT NULL,
  `contactPreference` varchar(10) NOT NULL,
  `resetLink` varchar(500) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
