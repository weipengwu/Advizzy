-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2015 at 09:28 AM
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
  `hashId` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `questionmeta`
--

CREATE TABLE IF NOT EXISTS `questionmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(11) NOT NULL,
  `metaName` varchar(100) NOT NULL,
  `metaValue` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `questionmeta`
--

INSERT INTO `questionmeta` (`id`, `questionId`, `metaName`, `metaValue`, `created_at`, `updated_at`) VALUES
(1, 1, 'targets', '4', '2015-05-25 09:48:33', '0000-00-00 00:00:00'),
(2, 1, 'targets', '5', '2015-05-25 09:48:33', '0000-00-00 00:00:00'),
(3, 2, 'targets', '6', '2015-05-25 10:36:35', '0000-00-00 00:00:00'),
(4, 3, 'targets', '', '2015-05-25 10:02:01', '0000-00-00 00:00:00'),
(5, 3, 'targets', '8', '2015-05-25 10:01:11', '0000-00-00 00:00:00'),
(6, 4, 'targets', '5', '2015-05-25 10:31:19', '0000-00-00 00:00:00'),
(7, 4, 'targets', '8', '2015-05-25 10:35:54', '0000-00-00 00:00:00'),
(8, 2, 'targets', '8', '2015-05-25 10:36:35', '0000-00-00 00:00:00'),
(9, 5, 'targets', '4', '2015-05-25 10:37:53', '0000-00-00 00:00:00'),
(10, 5, 'targets', '8', '2015-05-25 10:37:53', '0000-00-00 00:00:00'),
(11, 6, 'targets', '3', '2015-05-25 10:37:40', '0000-00-00 00:00:00'),
(12, 6, 'targets', '7', '2015-05-25 10:37:40', '0000-00-00 00:00:00'),
(13, 7, 'targets', '', '2015-05-25 12:37:42', '2015-05-25 12:37:42'),
(14, 7, 'targets', '', '2015-05-25 12:37:42', '2015-05-25 12:37:42'),
(15, 8, 'targets', '2', '2015-05-25 13:28:23', '2015-05-25 13:28:37'),
(16, 8, 'targets', '8', '2015-05-25 13:28:23', '2015-05-25 13:28:37'),
(17, 9, 'targets', '1', '2015-06-01 05:35:38', '2015-06-01 05:35:38'),
(18, 9, 'targets', '6', '2015-06-01 05:35:38', '2015-06-04 09:58:57'),
(19, 10, 'targets', '1', '2015-06-03 05:11:21', '2015-06-03 05:11:21'),
(20, 10, 'targets', '2', '2015-06-03 05:11:21', '2015-06-03 05:11:21'),
(21, 11, 'targets', '2', '2015-06-03 06:37:12', '2015-06-03 06:37:12'),
(22, 11, 'targets', '6', '2015-06-03 06:37:12', '2015-06-03 06:37:12'),
(23, 12, 'targets', '1', '2015-06-04 05:05:27', '2015-06-04 07:10:19'),
(24, 12, 'targets', '2', '2015-06-04 05:05:27', '2015-06-04 07:10:20'),
(25, 14, 'targets', '6', '2015-06-04 07:32:53', '2015-06-04 07:32:53'),
(26, 14, 'targets', '7', '2015-06-04 07:32:53', '2015-06-04 07:32:53'),
(27, 15, 'targets', '1', '2015-06-04 08:58:28', '2015-06-04 08:58:28'),
(28, 15, 'targets', '7', '2015-06-04 08:58:28', '2015-06-04 08:58:28'),
(29, 16, 'targets', '2', '2015-06-04 09:29:25', '2015-06-04 09:29:25'),
(30, 16, 'targets', '8', '2015-06-04 09:29:25', '2015-06-04 09:29:25'),
(31, 17, 'targets', '2', '2015-06-04 09:29:42', '2015-06-04 09:29:42'),
(32, 17, 'targets', '8', '2015-06-04 09:29:42', '2015-06-04 09:29:42'),
(33, 18, 'targets', '1', '2015-06-04 09:33:53', '2015-06-04 09:46:36'),
(34, 18, 'targets', '2', '2015-06-04 09:33:53', '2015-06-04 09:46:36'),
(35, 19, 'targets', '2', '2015-06-04 09:53:27', '2015-06-04 09:53:27'),
(36, 19, 'targets', '7', '2015-06-04 09:53:27', '2015-06-04 09:59:26');

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
  `hashId` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `commentsCount`, `likesCount`, `userId`, `hashId`, `created_at`, `updated_at`) VALUES
(1, 'Hello It Is My Post', 0, 0, 2, 'gfbgfb', '2015-05-25 09:48:33', '2015-06-04 08:32:50'),
(2, 'ggggggggggggggggggggggggggggggggg\r\nhvgvjhv\r\nhj gv uv n\r\n', 0, 0, 2, 'ytgrtgtytty', '2015-05-25 09:48:49', '2015-06-04 08:33:53'),
(3, 'jh gvgvyck\r\n buvyk v;i\r\nbh vgh ', 0, 0, 2, 'tgbtrtggfyy', '2015-05-25 09:49:00', '2015-06-04 08:33:48'),
(4, 'fgbfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdfg', 0, 0, 2, 'yhgbfg', '2015-05-25 10:30:47', '2015-06-04 08:33:40'),
(5, 'ju8m8m8m', 0, 0, 2, 'tghtyhy', '2015-05-25 10:37:28', '2015-06-04 08:33:36'),
(6, 'kjmu', 0, 0, 2, 'gbfgb', '2015-05-25 10:37:40', '2015-06-04 08:32:56'),
(7, '5 t5 y 6y', 0, 0, 2, 'gfbgfbgb', '2015-05-25 12:37:42', '2015-06-04 08:33:07'),
(8, '#example #Question #Testing.', 0, 0, 1, 'gbfgbfbfgbfg', '2015-05-25 13:28:23', '2015-06-04 08:33:11'),
(9, '#Question #testing fffffff', 0, 0, 7, 'rtgtrg', '2015-06-01 05:35:38', '2015-06-04 09:58:57'),
(10, '#ticket 12 completed? hmmm #edited', 0, 0, 7, 'tgvfgt', '2015-06-03 05:11:21', '2015-06-04 08:33:19'),
(11, 'why purple here? ', 0, 0, 9, 'trgffg', '2015-06-03 06:37:12', '2015-06-04 08:33:22'),
(12, '#ticket 12 completed? hmmm #edited', 0, 0, 7, 'tgfgfg', '2015-06-04 05:05:27', '2015-06-04 08:33:25'),
(13, 'ghfgh gh hf', 0, 0, 7, 'tgfgfrtgrt', '2015-06-04 07:31:31', '2015-06-04 08:33:28'),
(14, 'ghfgh gh hf', 0, 0, 7, 'jujytyh', '2015-06-04 07:32:53', '2015-06-04 08:33:34'),
(15, 'yuf v7vyu', 0, 0, 7, '$2y$10$I621037WpdBIGXSynmvFtuBi6u13gUzZ0YVwLa6q77Zopb3nNk28i', '2015-06-04 08:58:27', '2015-06-04 03:28:28'),
(16, ' rtgnrgdgdfgdfg', 0, 0, 7, '$2y$10$INd3Sh2lRHt7XfRabxTz/.DkIrHJaBdjK64PpD68jimCw/0VSG.se', '2015-06-04 09:29:25', '2015-06-04 03:59:25'),
(17, 't htrh trh th rth rth', 0, 0, 7, '$2y$10$kgIig2WN22gh67Ka3h2dTe/KK3TccGcsWp5PG8FYFWGX6HKCGNb32', '2015-06-04 09:29:42', '2015-06-04 03:59:42'),
(18, 'gfh fg hfgh fgh fgheditgb fgbfgb fgbfgb', 0, 0, 7, '$2y$10$Z7lOavRmxdeLfMvXaz8gSOjJvXuxLUjm8bN2S73LleK99i49PcN9K', '2015-06-04 09:33:53', '2015-06-04 09:46:11'),
(19, 'tbtbrtb', 0, 0, 7, '$2y$10$vvI6iXkN3nRLB4SUVfxaI.7l9N8uEt2HL.EGjNoOsaDYlBJZPLDT6', '2015-06-04 09:53:27', '2015-06-04 09:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `value`) VALUES
(1, 'user'),
(2, 'professional'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `targets`
--

CREATE TABLE IF NOT EXISTS `targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `targets`
--

INSERT INTO `targets` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Target 1', 1, '2015-05-23 04:47:58', '0000-00-00 00:00:00'),
(2, 'Target 2', 1, '2015-05-23 04:47:58', '0000-00-00 00:00:00'),
(3, 'Target 3', 1, '2015-05-23 04:48:22', '0000-00-00 00:00:00'),
(4, 'Target 4', 1, '2015-05-23 04:48:26', '0000-00-00 00:00:00'),
(5, 'Target 5', 1, '2015-05-23 04:48:56', '0000-00-00 00:00:00'),
(6, 'Target 6', 1, '2015-05-23 04:48:56', '0000-00-00 00:00:00'),
(7, 'Target 7', 1, '2015-05-23 04:49:15', '0000-00-00 00:00:00'),
(8, 'Target 8', 1, '2015-05-23 04:49:15', '0000-00-00 00:00:00');

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
  `postalCode` varchar(11) NOT NULL,
  `province` varchar(300) NOT NULL,
  `digestFrequency` varchar(10) NOT NULL,
  `maxRequest` int(11) NOT NULL,
  `contactPreference` varchar(10) NOT NULL,
  `resetLink` varchar(500) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `eMail`, `uName`, `fName`, `lName`, `password`, `myAvatar`, `telephone`, `gender`, `dob`, `city`, `careerPosition`, `familyOrientation`, `incomeLevel`, `hobby`, `country`, `careerIndustry`, `pet`, `values`, `goals`, `astrology`, `active`, `role`, `designation`, `address1`, `address2`, `eMail2`, `postalCode`, `province`, `digestFrequency`, `maxRequest`, `contactPreference`, `resetLink`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'anshika.agrawal@gyrix.co', 'anshi', 'Anshika', 'Agrawal', '$2y$10$1wiu2K3itVKVgNR.GZ2XgujEPYxFHh/2mVaZOcg37wWdHNwceE8FO', 'http://advizzy/img/avatars/5_avatar_03.png', '(987) 654-3210', 'Female', '26/08/1992', 'corner_brook', 'ceo', 'confused', '35_60', 'quad_copter', 'canada', '', 'shark', 'Value1,Value5,Value7', 'Goal3,Goal6,Goal8', 'sagittarius', 1, 1, 'Ms', 'here is my home', 'near to this apartment', 'anshi@gmail.com', '452001', 'Madhya Pradesh', 'thrice', 100, 'yes', '', 'XAKgxG4geYXIUqXVD4wMCAxPBHalwApzbJWx8YLILGSDruBzGkmS9dBFdVk1', '2015-05-25 04:51:14', '2015-05-25 07:55:28'),
(3, 'kunal@gyrix.co', 'kunal', 'Kunal', 'Bhusare', '$2y$10$bpNhfxYsYohS9o5fGV0nceKrTn6ZvCqmM77CZsksFHDIygzNWkkWG', 'img/gray_avatar_lady.png', '(999) 999-9999', 'Male', '01/01/1988', 'new_york', 'entry_level', 'option_1', '20_35', 'quad_copter', 'usa', '', 'cat', 'Value1,Value2,Value3,Value4,Value5,Value6,Value7,Value8', 'Goal1,Goal2,Goal3,Goal4,Goal5,Goal6,Goal7,Goal8', 'gemini', 1, 1, '', '', '', '', '', '', '', 0, '', '', 'T7UXbXovp4A0LLUU5YltNF4j4FP9I1DTgmnowNr9XwypY2VvLU221LNPatLF', '2015-06-01 04:23:26', '2015-05-31 23:04:35'),
(4, 'fortest@gyrix.co', 'fortest', 'testing', 'account', '$2y$10$ZTITj/MgxZmMzPWxGzRn.OFVi202HMST41600S3FOjPdH1Ce/RIcy', 'img/gray_avatar_lady.png', '(121) 212-1212', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', '', '', '', 0, '', '', 'i7VKsL5BUiD1bUcLeWoOaJf2iUyj5p8cwUkWQJUR7ZvcdwJWeucs83SNym38', '2015-06-01 04:41:19', '2015-05-31 23:15:31'),
(7, 'bhaskar.rajoriya@gyrix.co', 'bhaskar', 'Bhaskar', 'Rajoriya', '$2y$10$.Ub9lweXYwZ2VoEikVPtCeLVBu1J3wBSUkyEf7yi/BgYSU9Z280em', 'http://advizzy/img/avatars/5_avatar_06.png', '08817778900', 'Male', '09/08/1992', 'corner_brook', 'ceo', 'option_1', '0_20', 'quad_copter', '', '', 'shark', '', '', '', 1, 1, 'Mr', 'here is my home', 'bajrang nagar', 'brn.rajoriya@gmail.com', '452011', 'Madhya Pradesh', 'thrice', 90, 'yes', '', 'v8y5EqNdFfU2mToSj8G9DLWPs2OPTZIWEDtjbbG5LNRwNmzTUHPw1H7pSJgB', '2015-06-01 05:26:02', '2015-06-03 23:08:54'),
(8, 'bhaskar.rajoriya@gyrix.com', 'rajoriya@bhaskar', 'Bhaskar', 'Rajoriya', '$2y$10$UtZ/j.JUnNt1Ae.Vvw1TCO4wVFdO5bCFt58R6L6ULa/aXOp7JL6TO', 'img/gray_avatar_lady.png', '08817778900', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', '', '', '', 0, '', '', 'rUmKJia9ABX01java97TEDrAgOhmSRn3tTSPj9cDFyg0t55RsBqihI5gVGWW', '2015-06-01 10:38:31', '2015-06-01 05:10:35'),
(9, 'kkr@gyrix.co', 'kkrs@kkr', 'kkr', 'kkrs', '$2y$10$6v5wN.oQmHqFSnDXT/9W7.odxKeYzxyuHKj/SOTUAOsw4Wkm1VTe.', 'http://advizzy/img/avatars/5_avatar_06.png', '08817778900', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 'Mr', '', '', '', '', '', 'twice', 73, 'yes', '', 'E0QrmViIGcPI7ivGTGTkOFR6mrUIofYRRbIRVxAFwbgO9ypet4057eO2o5T1', '2015-06-03 06:26:37', '2015-06-03 22:52:21'),
(10, 'vinod.kirte@gyrix.co', 'vinod', 'vinod', 'kirte', '$2y$10$I28iMz/Hkm6dwHbRGVLaRONX33bpPMd8gM.Wbwd2iUrNigBJC4aoy', 'img/gray_avatar_lady.png', '08817778900', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', '', '', '', 0, '', 'cc397301371eec5a48fb', 'XvTA3I3ggZMTaWZWzOwlMyERqiTbPEjkUMjoATamg1rGshOfvEy903HD7Pug', '2015-06-03 06:42:25', '2015-06-03 22:28:28'),
(11, 'bhaskar.rajoriya111@gyrix.co', 'bhaskar111', 'Bhaskar', 'Rajoriya', '$2y$10$gZynXe7JJvY42qR33bc4rOc7PCzF7AEfbUpZytq751rJAn8K5W8na', 'img/gray_avatar_lady.png', '08817778900', 'Male', '', '', '', '', '', '', '', '', '', 'Value4', 'Goal6', '', 0, 1, '', '', '', '', '', '', '', 0, '', '67a3c1520c0b54c1f3be', '', '2015-06-03 06:43:48', '2015-06-03 06:43:48');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
