-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2015 at 01:12 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gyrixco_advizzy`
--
CREATE DATABASE IF NOT EXISTS `gyrixco_advizzy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gyrixco_advizzy`;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `commentsCount`, `likesCount`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'bvbvnbv cgv g gf', 0, 0, 1, '2015-05-20 08:56:40', '0000-00-00 00:00:00'),
(2, 'bvbvnbv cgv g gf', 0, 0, 1, '2015-05-20 08:56:40', '0000-00-00 00:00:00'),
(3, 'what is your name?', 0, 0, 1, '2015-05-20 08:56:40', '0000-00-00 00:00:00'),
(4, 'what is your name?', 0, 0, 1, '2015-05-20 08:56:40', '0000-00-00 00:00:00'),
(5, 'what is your name', 0, 0, 1, '2015-05-20 08:56:40', '0000-00-00 00:00:00'),
(6, 'gbfgbv gfbgfbgfb\r\nGFbfgb g', 0, 0, 1, '2015-05-20 08:56:50', '0000-00-00 00:00:00'),
(7, 'wjkbkj''jkbkwdjbkw '' dkjcdkjscklsdnc '' dkcndklsc''  "sdcdskcnklsd" /n $nbsp', 0, 0, 1, '2015-05-20 09:14:46', '0000-00-00 00:00:00'),
(8, 't rht htygh th t', 0, 0, 1, '2015-05-20 10:01:33', '0000-00-00 00:00:00'),
(9, 'jhjkbkjb', 0, 0, 1, '2015-05-20 11:45:07', '0000-00-00 00:00:00'),
(10, 'gh fgfdg fddfg', 0, 0, 1, '2015-05-20 12:48:23', '0000-00-00 00:00:00'),
(11, 'bhaskar', 0, 0, 1, '2015-05-20 12:48:32', '0000-00-00 00:00:00'),
(12, 'fvdfvfdvdfv', 0, 0, 1, '2015-05-20 12:53:40', '0000-00-00 00:00:00'),
(13, 'uih dvnodvfh richa', 0, 0, 1, '2015-05-20 12:54:03', '0000-00-00 00:00:00');

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `eMail`, `uName`, `fName`, `lName`, `password`, `myAvatar`, `telephone`, `gender`, `dob`, `city`, `careerPosition`, `familyOrientation`, `incomeLevel`, `hobby`, `country`, `careerIndustry`, `pet`, `values`, `goals`, `astrology`, `active`, `role`, `designation`, `address1`, `address2`, `eMail2`, `postalCode`, `province`, `digestFrequency`, `maxRequest`, `contactPreference`, `resetLink`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bhaskar.rajoriya@gyrix.co', 'bhaskar', 'Bhaskar', 'Rajoriya', '$2y$10$diyEeOCHQfTut8/MmjXQpOAzdtzNbKKcnJFP/rhpoMloBDDcNR/G.', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', '08817778900', 'Male', '', 'indore', '', '', '', '', '', '', '', '', '', 'sagittarius', 1, 2, 'Mr', 'here is my home', 'near to this apartment', 'brn.rajoriya@gmail.com', 452011, 'Madhya Pradesh', 'once', 33, 'no', '', 'ZpdL8JuMONAsFEujvAS1ZrW157sh8vXu5my5TL07U1DUHAwVpf77j4r2nDYP', '2015-05-20 05:34:00', '2015-05-19 23:31:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
