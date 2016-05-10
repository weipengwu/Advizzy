-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2015 at 06:28 AM
-- Server version: 5.5.42-37.1-log
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gyrixco_advizzy`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext NOT NULL,
  `questionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `repliesCount` int(11) NOT NULL,
  `likesCount` int(11) NOT NULL,
  `hashId` varchar(500) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `questionId`, `userId`, `repliesCount`, `likesCount`, `hashId`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 'this is my first comment', 21, 35, 0, 0, '$2y$10$oBS5QmWetV03mKgRVX8fYucPg3hm2DZhkDiBzPhx99fV4YbKD93t2', 1437822761, 1437822761, '2015-07-25 11:12:41', '2015-07-25 17:12:41'),
(2, 'this is my first comment', 21, 35, 0, 0, '$2y$10$om9PVxLeCSf1zQqVfygZ5.I2AFp8.4OhSuhJsxWq8PIANhYgSDUu6', 1437822918, 1437822918, '2015-07-25 11:15:18', '2015-07-25 17:15:18'),
(3, 'This comment posted for testing.', 21, 35, 0, 0, '$2y$10$sU1HUQft6DD1XzvbNf07ROadmucgzo27R780ebAvV7FpmhvOOLSXu', 1437823111, 1437823111, '2015-07-25 11:18:31', '2015-07-25 17:18:31'),
(4, 'Tested your comment functionality', 21, 35, 0, 0, '$2y$10$9DFDI0o7CiG1fhedsZEi3exh.xIs4XK52WUih1Hv4zJZ1lTMXWJjK', 1437824829, 1437824829, '2015-07-25 11:47:09', '2015-07-25 17:47:09'),
(5, 'testing', 21, 35, 0, 0, '$2y$10$ggAxPZ2xFTehhnNqrlbWPumBGMVaiQFIYjraA6EStDyJB12G/DflO', 1437825041, 1437825041, '2015-07-25 11:50:41', '2015-07-25 17:50:41'),
(6, 'testing', 21, 35, 0, 0, '$2y$10$lIB.ehHvY48uOHpJ.sKk8uSWH8HH/gwAFYMskHzqPJQPY8jjbdaTC', 1437825063, 1437825063, '2015-07-25 11:51:03', '2015-07-25 17:51:03'),
(7, 'just for testing', 22, 35, 0, 0, '$2y$10$dm66BNeTDOxZHaNCX1E6iOHw/tDHhY2zd5g4jRD0MRWtHKYmudBBG', 1437825135, 1437825135, '2015-07-25 11:52:15', '2015-07-25 17:52:15'),
(8, 'just for testing', 22, 35, 0, 0, '$2y$10$ps4wNI8RW84PqGqfRXUCZ.Xgun/qwm/3Yln48Xe7TfCK.r01IhAS2', 1437825148, 1437825148, '2015-07-25 11:52:28', '2015-07-25 17:52:28'),
(9, 'testing\r\n', 22, 35, 0, 0, '$2y$10$eS1Cj2/zJ.MKDp4EeJOt8usQA3g2EjNai9ib/IkE2UjxJH57ipo3i', 1437825164, 1437825164, '2015-07-25 11:52:44', '2015-07-25 17:52:44'),
(10, 'testing', 22, 35, 0, 0, '$2y$10$58vjVohrGa45Lw4Nk1EH8ODeVATueZjnSmazJ4Kx6iMZEHV2Y6RoG', 1437825182, 1437825182, '2015-07-25 11:53:02', '2015-07-25 17:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `questionmeta`
--

DROP TABLE IF EXISTS `questionmeta`;
CREATE TABLE IF NOT EXISTS `questionmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(11) NOT NULL,
  `metaName` varchar(100) NOT NULL,
  `metaValue` varchar(500) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `questionmeta`
--

INSERT INTO `questionmeta` (`id`, `questionId`, `metaName`, `metaValue`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 4, 'targets', '3', 0, 0, '2015-05-23 13:01:10', '0000-00-00 00:00:00'),
(2, 4, 'targets', '6', 0, 0, '2015-05-23 13:01:10', '0000-00-00 00:00:00'),
(3, 5, 'targets', '1', 0, 0, '2015-05-25 16:02:40', '0000-00-00 00:00:00'),
(4, 5, 'targets', '2', 0, 0, '2015-05-25 16:02:40', '0000-00-00 00:00:00'),
(5, 6, 'targets', '2', 0, 0, '2015-06-05 13:25:12', '0000-00-00 00:00:00'),
(6, 6, 'targets', '8', 0, 0, '2015-06-05 13:25:12', '0000-00-00 00:00:00'),
(7, 7, 'targets', '6', 0, 0, '2015-06-01 06:45:32', '0000-00-00 00:00:00'),
(8, 7, 'targets', '7', 0, 0, '2015-06-01 06:45:32', '0000-00-00 00:00:00'),
(9, 8, 'targets', '', 0, 0, '2015-06-02 17:03:37', '0000-00-00 00:00:00'),
(10, 8, 'targets', '', 0, 0, '2015-06-02 17:03:37', '0000-00-00 00:00:00'),
(11, 9, 'targets', '', 0, 0, '2015-06-02 17:04:11', '0000-00-00 00:00:00'),
(12, 9, 'targets', '', 0, 0, '2015-06-02 17:04:11', '0000-00-00 00:00:00'),
(13, 10, 'targets', '1', 0, 0, '2015-06-03 05:17:40', '0000-00-00 00:00:00'),
(14, 10, 'targets', '6', 0, 0, '2015-06-03 05:17:40', '0000-00-00 00:00:00'),
(15, 11, 'targets', '1', 0, 0, '2015-06-03 07:32:28', '0000-00-00 00:00:00'),
(16, 11, 'targets', '6', 0, 0, '2015-06-03 07:32:28', '0000-00-00 00:00:00'),
(17, 12, 'targets', '1', 0, 0, '2015-06-03 10:00:20', '0000-00-00 00:00:00'),
(18, 12, 'targets', '8', 0, 0, '2015-06-03 10:00:20', '0000-00-00 00:00:00'),
(19, 13, 'targets', '1', 0, 0, '2015-06-04 10:44:17', '0000-00-00 00:00:00'),
(20, 13, 'targets', '4', 0, 0, '2015-06-04 10:44:17', '0000-00-00 00:00:00'),
(21, 14, 'targets', '1', 0, 0, '2015-06-05 13:18:35', '0000-00-00 00:00:00'),
(22, 14, 'targets', '2', 0, 0, '2015-06-05 13:18:35', '0000-00-00 00:00:00'),
(23, 15, 'targets', '6', 0, 0, '2015-06-09 13:43:46', '0000-00-00 00:00:00'),
(24, 15, 'targets', '7', 0, 0, '2015-06-09 13:43:46', '0000-00-00 00:00:00'),
(25, 16, 'targets', '1', 0, 0, '2015-07-11 04:47:56', '0000-00-00 00:00:00'),
(26, 16, 'targets', '7', 0, 0, '2015-07-11 04:47:56', '0000-00-00 00:00:00'),
(27, 17, 'targets', '', 0, 0, '2015-07-21 19:03:05', '0000-00-00 00:00:00'),
(28, 17, 'targets', '', 0, 0, '2015-07-21 19:03:05', '0000-00-00 00:00:00'),
(29, 18, 'targets', '3', 0, 0, '2015-07-21 19:24:25', '0000-00-00 00:00:00'),
(30, 18, 'targets', '6', 0, 0, '2015-07-21 19:24:25', '0000-00-00 00:00:00'),
(31, 19, 'targets', '1', 0, 0, '2015-07-22 15:53:32', '0000-00-00 00:00:00'),
(32, 19, 'targets', '7', 0, 0, '2015-07-22 15:53:32', '0000-00-00 00:00:00'),
(33, 20, 'targets', '1', 0, 0, '2015-07-22 16:07:01', '0000-00-00 00:00:00'),
(34, 20, 'targets', '6', 0, 0, '2015-07-22 16:07:01', '0000-00-00 00:00:00'),
(35, 21, 'targets', '3', 0, 0, '2015-07-24 04:18:44', '0000-00-00 00:00:00'),
(36, 21, 'targets', '7', 0, 0, '2015-07-24 04:18:44', '0000-00-00 00:00:00'),
(37, 22, 'targets', '', 0, 0, '2015-07-25 11:51:57', '0000-00-00 00:00:00'),
(38, 22, 'targets', '', 0, 0, '2015-07-25 11:51:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `commentsCount` int(11) NOT NULL,
  `likesCount` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `hashId` varchar(500) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `commentsCount`, `likesCount`, `userId`, `hashId`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 'This Is My First Post?', 0, 0, 1, 'qwqwq', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(2, 'This Is My First Post with target?', 0, 0, 1, 'wewew', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(3, 'heynkjg vkjg ihlbhkjh\r\n jhnb  ubvh', 0, 0, 1, 'ererer', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(4, 'hey', 0, 0, 1, 'rtrtrt', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(5, 'What am I doing here?', 0, 0, 4, 'tytyty', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(6, 'what is this project about so that i can understand', 0, 0, 2, 'uyuyuyu', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(7, '#Question #Testing', 0, 0, 9, 'asasa', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(8, 'What''s the meaning of life?', 0, 0, 4, 'sdsds', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(9, 'Why purple?', 0, 0, 4, 'dfdfdfd', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(10, 'Ticket 12 completed??', 0, 0, 9, 'fgfgfgfg', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(11, 'Is gablu a funny name?', 0, 0, 13, 'ghghgh', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(12, '#testing', 0, 0, 14, 'hjhjgjgh', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(13, '#example #question', 0, 0, 9, '$2y$10$muSqZIZlpbl.WIkV2fBQcOwBQr.c1OofNdhs6.fSt1GNKMnips4P2', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-06-04 16:43:54'),
(14, 'how is your project going on?', 0, 0, 2, '$2y$10$YxSsIP3Q/PwJgZkHmXoLIOxB.aQk1WsD1COpTUN54uWisOr2ppCYm', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-06-05 19:18:35'),
(15, '#testing', 0, 0, 17, '$2y$10$4UwZF.DrYYmO.bx1mlGKr.j43JcnW20CTLkKav7/ScFRiTP3pL8be', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-06-09 19:43:46'),
(16, 'Testing', 0, 0, 17, '$2y$10$CmoclGgxL/KSM7eu6hXws.ANGmFsOBlBsxQrco4wed9zpZA2e1x.G', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-11 10:47:56'),
(17, 'How does this work?', 0, 0, 55, '$2y$10$JwSyk835tV6nE3p0RGsS1.lXdWXytLWax3yTPBmahb5wgBFH1dH7O', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-22 01:03:05'),
(18, 'To do or not to do, that is the question', 0, 0, 56, '$2y$10$NGf/kebkAJnTYToOpu1bv.17kC6xxu0dL63e0YDxeb47/QKl1MQL.', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-22 01:24:25'),
(19, 'How does this work?', 0, 0, 54, '$2y$10$McHeUtPKohFbZtYfwTGcu.8HxbE/VqfQCozESqWZZu1qryKAcH5RW', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-22 21:53:32'),
(20, 'hi hi hi hi hi hi h i', 0, 0, 54, '$2y$10$vxZklY4gnWepcPvz/vpHJeF8oCBs/.fEZTCSOvoyDkMbMD0ctqKv6', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-22 22:07:01'),
(21, 'Question for testing', 5, 0, 35, '$2y$10$yrvpbPlbBPiVC9yvqZ9QfeZuEv/hrwZqWV7R6TTBzJ5JL6CKMle9G', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-25 17:51:03'),
(22, 'Asking question for testing', 4, 0, 35, '$2y$10$HtJBsUvHh17ol7v5l87i3eZbqntglCocp9uU0NHqyfnMZG04srWpO', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-25 17:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
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
-- Table structure for table `socialprofiles`
--

DROP TABLE IF EXISTS `socialprofiles`;
CREATE TABLE IF NOT EXISTS `socialprofiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fbId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitterId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedinId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `socialprofiles`
--

INSERT INTO `socialprofiles` (`id`, `email`, `fbId`, `googleId`, `twitterId`, `linkedinId`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 'contact@gyrix.co', '1645516758998844', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'brn.rajoriya@gmail.com', '922829691108752', '107736340171876055543', '', 'Qh1mkDRzex', 0, 0, '0000-00-00 00:00:00', '2015-07-17 16:58:08'),
(3, 'honeyhoney.sing@gmail.com', '886433114757693', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'kunal@gyrix.co', '684877114989756', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'bhaskar.rajoriya@gyrix.co', '', '113637760759421421984', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'tiwariankur77@gmail.com', '918946704839545', '', '', 'RouS2KyZ2V', 0, 0, '0000-00-00 00:00:00', '2015-07-17 17:10:22'),
(7, 'kdionne@kpd-i.com', '10153378332286488', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'mahendralokhande93@gmail.com', '891081727638255', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'rrdhanuka@gmail.com', '', '', '3242391116', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'bagleybagz@gmail.com', '10154069064774196', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'nbagley@kpd-i.com', '', '107730986921474234171', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'bagley.nigel@gmail.com', '', '', '', 'vU-hAvbZ4v', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'manavarora_001@yahoo.com', '', '', '2262423770', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
CREATE TABLE IF NOT EXISTS `targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `targets`
--

INSERT INTO `targets` (`id`, `name`, `active`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 'Target 1', 1, 0, 0, '2015-05-23 04:47:58', '0000-00-00 00:00:00'),
(2, 'Target 2', 1, 0, 0, '2015-05-23 04:47:58', '0000-00-00 00:00:00'),
(3, 'Target 3', 1, 0, 0, '2015-05-23 04:48:22', '0000-00-00 00:00:00'),
(4, 'Target 4', 1, 0, 0, '2015-05-23 04:48:26', '0000-00-00 00:00:00'),
(5, 'Target 5', 1, 0, 0, '2015-05-23 04:48:56', '0000-00-00 00:00:00'),
(6, 'Target 6', 1, 0, 0, '2015-05-23 04:48:56', '0000-00-00 00:00:00'),
(7, 'Target 7', 1, 0, 0, '2015-05-23 04:49:15', '0000-00-00 00:00:00'),
(8, 'Target 8', 1, 0, 0, '2015-05-23 04:49:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `twitter`
--

DROP TABLE IF EXISTS `twitter`;
CREATE TABLE IF NOT EXISTS `twitter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `screen_name` varchar(500) NOT NULL,
  `location` varchar(200) NOT NULL,
  `profile_image_url_https` varchar(1000) NOT NULL,
  `twitterId` bigint(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `twitterId` (`twitterId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `twitter`
--

INSERT INTO `twitter` (`id`, `name`, `screen_name`, `location`, `profile_image_url_https`, `twitterId`, `email`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(7, 'Bhaskar Rajoriya', 'bhaskarGyrix', '', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_3_normal.png', 3282116995, '', 0, 0, '2015-07-21 03:42:34', '0000-00-00 00:00:00'),
(8, 'Richa Agrawal', 'rrdhanuka', '', 'https://pbs.twimg.com/profile_images/611212555843842048/Vv3wxZ3L_normal.jpg', 3242391116, 'rrdhanuka@gmail.com', 0, 0, '2015-07-21 04:03:08', '2015-07-21 10:03:08'),
(9, 'Nigel', 'theycallmenigel', 'Toronto, Ontario', 'https://pbs.twimg.com/profile_images/589215655842476033/Sl9qB5zN_normal.jpg', 422922849, '', 0, 0, '2015-07-21 19:05:29', '0000-00-00 00:00:00'),
(10, 'manav arora', 'manav_001', '', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png', 2262423770, 'manavarora_001@yahoo.com', 0, 0, '2015-07-22 04:29:34', '2015-07-22 10:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `useractivitylogs`
--

DROP TABLE IF EXISTS `useractivitylogs`;
CREATE TABLE IF NOT EXISTS `useractivitylogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `typeId` bigint(20) NOT NULL,
  `type` varchar(500) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `useractivitylogs`
--

INSERT INTO `useractivitylogs` (`id`, `userId`, `typeId`, `type`, `epochCreatedAt`, `created_at`, `updated_at`) VALUES
(1, 35, 21, 'postedComment', 1437822918, '2015-07-25 11:15:18', '0000-00-00 00:00:00'),
(2, 35, 21, 'updatedComment', 1437822918, '2015-07-25 11:15:18', '0000-00-00 00:00:00'),
(3, 35, 3, 'postedComment', 1437823111, '2015-07-25 11:18:31', '0000-00-00 00:00:00'),
(4, 35, 3, 'updatedComment', 1437823111, '2015-07-25 11:18:31', '0000-00-00 00:00:00'),
(5, 35, 21, 'updatedQuestion', 1437824723, '2015-07-25 11:45:23', '0000-00-00 00:00:00'),
(6, 35, 4, 'postedComment', 1437824829, '2015-07-25 11:47:09', '0000-00-00 00:00:00'),
(7, 35, 4, 'updatedComment', 1437824829, '2015-07-25 11:47:09', '0000-00-00 00:00:00'),
(8, 35, 5, 'postedComment', 1437825041, '2015-07-25 11:50:41', '0000-00-00 00:00:00'),
(9, 35, 5, 'updatedComment', 1437825041, '2015-07-25 11:50:41', '0000-00-00 00:00:00'),
(10, 35, 6, 'postedComment', 1437825063, '2015-07-25 11:51:03', '0000-00-00 00:00:00'),
(11, 35, 6, 'updatedComment', 1437825063, '2015-07-25 11:51:03', '0000-00-00 00:00:00'),
(12, 35, 22, 'postedQuestion', 1437825117, '2015-07-25 11:51:57', '0000-00-00 00:00:00'),
(13, 35, 22, 'updatedQuestion', 1437825117, '2015-07-25 11:51:57', '0000-00-00 00:00:00'),
(14, 35, 7, 'postedComment', 1437825135, '2015-07-25 11:52:15', '0000-00-00 00:00:00'),
(15, 35, 7, 'updatedComment', 1437825135, '2015-07-25 11:52:15', '0000-00-00 00:00:00'),
(16, 35, 8, 'postedComment', 1437825148, '2015-07-25 11:52:28', '0000-00-00 00:00:00'),
(17, 35, 8, 'updatedComment', 1437825148, '2015-07-25 11:52:28', '0000-00-00 00:00:00'),
(18, 35, 9, 'postedComment', 1437825164, '2015-07-25 11:52:44', '0000-00-00 00:00:00'),
(19, 35, 9, 'updatedComment', 1437825164, '2015-07-25 11:52:44', '0000-00-00 00:00:00'),
(20, 35, 10, 'postedComment', 1437825182, '2015-07-25 11:53:02', '0000-00-00 00:00:00'),
(21, 35, 10, 'updatedComment', 1437825182, '2015-07-25 11:53:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userfiles`
--

DROP TABLE IF EXISTS `userfiles`;
CREATE TABLE IF NOT EXISTS `userfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `location` varchar(10000) NOT NULL,
  `name` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `userfiles`
--

INSERT INTO `userfiles` (`id`, `userId`, `location`, `name`, `type`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 52, '/profCertificates/1437484710OuVNah_Advizzy Remaining v.1.2.xlsx', 'Advizzy Remaining v.1.2.xlsx', 'professionalCertificates', 0, 0, '2015-07-23 04:08:07', '2015-07-21 19:22:18'),
(2, 52, '/profCertificates/1437484725FMGyeD_advizzySignupErrors.zip', 'advizzySignupErrors.zip', 'professionalCertificates', 0, 0, '2015-07-23 04:07:53', '2015-07-21 19:22:18'),
(3, 58, '/profCertificates/14375402166DAIvt_Penguins.jpg', 'Penguins.jpg', 'professionalCertificates', 0, 0, '2015-07-23 04:08:19', '2015-07-22 10:45:56'),
(4, 58, '/profCertificates/1437540274O65Kxn_hosts.txt', 'hosts.txt', 'professionalCertificates', 0, 0, '2015-07-23 04:08:31', '2015-07-22 10:45:57'),
(5, 60, '', '', 'professionalCertificates', 0, 0, '2015-07-22 22:48:25', '2015-07-22 22:48:25'),
(6, 58, '/profCertificates/1437631685cE9WH3_Advizzy Remaining v.1.2.xlsx', 'Advizzy Remaining v.1.2.xlsx', 'professionalCertificates', 0, 0, '2015-07-23 12:08:05', '2015-07-23 12:08:05'),
(7, 58, '/profCertificates/1437631702pF941C_BG_1.png', 'BG_1.png', 'professionalCertificates', 0, 0, '2015-07-23 12:08:22', '2015-07-23 12:08:22'),
(8, 58, '/profCertificates/1437635687Y5HaQy_Screenshot_2.png', 'Screenshot_2.png', 'professionalCertificates', 0, 0, '2015-07-23 13:14:47', '2015-07-23 13:14:47'),
(9, 58, '/profCertificates/1437636209buLLHB_hosts.txt', 'hosts.txt', 'professionalCertificates', 0, 0, '2015-07-23 13:23:29', '2015-07-23 13:23:29'),
(10, 20, '/profCertificates/1437711651JCnruv_Advizzy Remaining v.1.2.xlsx', 'Advizzy Remaining v.1.2.xlsx', 'professionalCertificates', 0, 0, '2015-07-24 10:20:52', '2015-07-24 10:20:52'),
(11, 20, '/profCertificates/1437711672EVkCne_BG_2.png', 'BG_2.png', 'professionalCertificates', 0, 0, '2015-07-24 10:21:12', '2015-07-24 10:21:12'),
(12, 58, '/profCertificates/14377337560LAqif_gray_avatar_lady.png', 'gray_avatar_lady.png', 'professionalCertificates', 0, 0, '2015-07-24 16:29:16', '2015-07-24 16:29:16'),
(13, 58, '/profCertificates/1437733766hkicfw_A.png', 'A.png', 'professionalCertificates', 0, 0, '2015-07-24 16:29:26', '2015-07-24 16:29:26'),
(14, 58, '/profCertificates/1437733821ogy0bR_BG_1.png', 'BG_1.png', 'professionalCertificates', 0, 0, '2015-07-24 16:30:21', '2015-07-24 16:30:21'),
(15, 20, '/profCertificates/1437745483FY6r5F_app.ico', 'app.ico', 'professionalCertificates', 0, 0, '2015-07-24 19:44:44', '2015-07-24 19:44:44'),
(16, 20, '', '', 'professionalCertificates', 0, 0, '2015-07-24 19:45:33', '2015-07-24 19:45:33'),
(17, 20, '', '', 'professionalCertificates', 0, 0, '2015-07-24 19:45:35', '2015-07-24 19:45:35'),
(18, 20, '', '', 'professionalCertificates', 0, 0, '2015-07-24 19:45:37', '2015-07-24 19:45:37'),
(19, 20, '/profCertificates/1437745608Rn36vg_advizzy.com Website Design 20150226v1.7.pdf', 'advizzy.com Website Design 20150226v1.7.pdf', 'professionalCertificates', 0, 0, '2015-07-24 19:46:48', '2015-07-24 19:46:48'),
(20, 20, '', '', 'professionalCertificates', 0, 0, '2015-07-24 19:46:48', '2015-07-24 19:46:48'),
(21, 20, '/profCertificates/1437746593YtjHA0_composer.json', 'composer.json', 'professionalCertificates', 0, 0, '2015-07-24 20:03:13', '2015-07-24 20:03:13'),
(22, 20, '/profCertificates/1437746642gdMrGC_advizzy.com Website Design 20150226v1.7.pdf', 'advizzy.com Website Design 20150226v1.7.pdf', 'professionalCertificates', 0, 0, '2015-07-24 20:04:02', '2015-07-24 20:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eMail` varchar(100) NOT NULL,
  `uName` varchar(100) NOT NULL,
  `fName` varchar(100) NOT NULL,
  `lName` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `myAvatar` varchar(150) NOT NULL,
  `credits` bigint(20) NOT NULL,
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
  `educationLevel` varchar(500) NOT NULL,
  `ethnic` varchar(500) NOT NULL,
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
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `eMail`, `uName`, `fName`, `lName`, `password`, `myAvatar`, `credits`, `telephone`, `gender`, `dob`, `city`, `careerPosition`, `familyOrientation`, `incomeLevel`, `hobby`, `country`, `careerIndustry`, `educationLevel`, `ethnic`, `values`, `goals`, `astrology`, `active`, `role`, `designation`, `address1`, `address2`, `eMail2`, `postalCode`, `province`, `digestFrequency`, `maxRequest`, `contactPreference`, `resetLink`, `remember_token`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 'bhaskar.rajoriya1@gyrix.co', 'bhaskar1', 'Bhaskar', 'Rajoriya', '$2y$10$mVCaNXsQBx713urZ2PhH7ub9/hHXw3F0vwiH/2YDTz6ThAm34SBUG', 'http://advizzy.gyrix.co/img/avatars/5_avatar_02.png', 0, '08817778900', 'Male', '', 'indore', '', '', '', '', '', '', '', '', '', '', 'sagittarius', 1, 3, 'Mr', 'here is my home', 'near to this apartment', 'brn.rajoriya@gmail.com', 452011, 'Madhya Pradesh', 'thrice', 51, 'yes', '', 'NxxKO4Gvf8p4oiph98wFPj4dcD8iqBsLtRARknDnUhUs7MQOPS5i63tPnQXh', 0, 0, '2015-07-23 07:28:56', '2015-07-23 13:28:56'),
(3, 'anshika.agrawal@gyrix.co', 'anshi', 'Anshika', 'Agrawal', '$2y$10$GTvXRhLgII9LUtQrPUSpWuzbC59jG9oEY0dU0eoAaruMkobdhk5la', 'http://advizzy.gyrix.co/img/avatars/5_avatar_03.png', 0, '(987) 654-3210', 'Female', '08/29/1992', 'corner_brook', 'ceo', 'confused', '35_60', 'quad_copter', 'canada', '', 'shark', '', 'Value1,Value2,Value4,Value7', 'Goal3,Goal4,Goal6', 'aries', 1, 1, '', 'here is my home', 'near to this apartment', 'anshi@gmail.com', 452001, 'Madhya Pradesh', 'thrice', 90, 'yes', '', '0df41da', 0, 0, '2015-05-25 12:27:12', '2015-05-25 18:26:34'),
(4, 'kdionne@kpdi.ca', 'kdionne', 'Testy', 'Tester', '$2y$10$eHz8s0dFhU3hAfpxLYgrm.7QK8UKd7TaTPrTIYAI4nbQDERkzC0FS', 'http://advizzy.gyrix.co/img/avatars/5_avatar_02.png', 0, '(416) 720-4695', 'Male', '08/09/1922', 'new_york', 'entry_level', 'confused', '0_20', 'musician', 'usa', '', 'shark', '', 'Value4', 'Goal7', 'scorpio', 1, 1, '', '', '', '', 0, '', '', 0, '', '', 'QEpwoVVaasrY06cV94vvN1MpqoAubL7WQtpep5NLVEZwKXbrvlG8GicsJ8XD', 0, 0, '2015-06-02 17:26:47', '2015-06-02 23:26:47'),
(5, 'carolinewatson78@gmail.com', 'Caroline', 'Caroline', 'Watson', '$2y$10$ue7qsxce3FOP7wF6bTsMkuwtHTMvAT2PxoQ8mrmBG3Z450Q2e7nCa', 'img/gray_avatar_lady.png', 0, '(416) 787-9287', 'Female', '06/20/78', 'new_york', 'entry_level', 'option_1', '0_20', 'musician', 'canada', '', 'cat', '', 'Value3', 'Goal6', 'gemini', 0, 1, '', '', '', '', 0, '', '', 0, '', '', '80mEcxZzV8fgHlay4VBpKuZDyVi5xROpnNmAgZr9Hzx5mBWMGeg1lw0Cdc8A', 0, 0, '2015-05-26 17:45:12', '2015-05-26 23:45:12'),
(6, 'cwatson@kpd-i.com', 'cwatson', 'Caroline', 'Watson', '$2y$10$tZUafDB11t/b.itcEIV5bOpEfO5WMS2k8L1MfJ2bUdbBVB5nWozgy', 'img/gray_avatar_lady.png', 0, '(416) 787-9287', 'Female', '06/20/78', 'new_york', 'entry_level', 'option_1', '0_20', 'musician', 'canada', '', 'shark', '', 'Value4', 'Goal5', 'gemini', 1, 1, '', '', '', '', 0, '', '', 0, '', '', '0a18f7b', 0, 0, '2015-05-26 19:17:12', '2015-05-27 01:17:12'),
(7, 'jasminedo@me.com', 'jdoe', 'Jasmine', 'Do', '$2y$10$UVA3GFh/hx/cKWlmg5uq6u5z/zn5H/u3y31J4sMte9MS3IELq/jfG', 'img/gray_avatar_lady.png', 0, '(421) 555-5555', 'Female', '06/20/78', '', 'entry_level', 'option_1', '', '', '', '', 'shark', '', '', '', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '', 'BMc7KPTmJowJopfZVOIyDXy9E6vkS37NDQRovVjjMZjjMM6VabOloFVHRsf1', 0, 0, '2015-05-27 18:01:18', '2015-05-28 00:01:18'),
(11, 'info@kpdi.ca', 'testy.tester', 'Testy', 'Tester', '$2y$10$TYAt86.7.uSKYUTWXXENYOMI2Rq64769wcQMOO/7GdTCSBCwEfNCq', 'http://advizzy.gyrix.co/img/avatars/5_avatar_09.png', 0, '(416) 720-4695', 'Male', '06/02/67', 'new_york', 'entry_level', 'confused', '0_20', 'musician', 'usa', '', 'shark', '', 'Value6', 'Goal1', '', 0, 1, '', '', '', '', 0, '', '', 0, '', 'Nja8I3KEXLlKmIOiD0AKinyK0sGRQQu4eAm4X2Pk4iepxVPnR5K0BTVi4O9W', 'Nja8I3KEXLlKmIOiD0AKinyK0sGRQQu4eAm4X2Pk4iepxVPnR5K0BTVi4O9W', 0, 0, '2015-06-09 11:48:12', '2015-06-02 23:40:37'),
(14, 'gablu1@gyrix.co', 'gablu1', 'gablu', 'example', '$2y$10$ydN9bd/oN1gIzLVAED/TqOj1.RJluM4DwB9ik59UB/OppTNCJK/ge', 'img/gray_avatar_lady.png', 0, '(987) 654-3210', 'Male', '09/08/1992', 'corner_brook', '', 'option_2', '', 'quad_copter', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', 'twice', 72, 'yes', '', 'aiz3zwYpXc4VZWMbDOekGCw19zbCc5juAIpRcTnIqP8FemeNE4n07BsFmwdJ', 0, 0, '2015-06-09 13:15:56', '2015-06-09 19:15:56'),
(18, 'bhaskar.rajoriyaa@gyrix.co', 'bhaskara', 'Bhaskar', 'Rajoriya', '$2y$10$FgXb/bMxeqg1/9YzEU9ax.VYYyFJ.Gv1peTzoF46vnc/57qNen61e', 'img/gray_avatar_lady.png', 0, '08817778900', 'Male', '09/08/1992', 'indore', 'ceo', 'option_3', '', 'quad_copter', 'canada', '', 'shark', '', 'Value5', 'Goal7', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '9621eef2b391714f995b', 'kd0IbZp7uYplMvJUsjrx85AKh4MbtFghTrgg0aGCsZ4HbDxBohivFJdp4FVu', 0, 0, '2015-06-10 06:52:58', '2015-06-10 12:52:58'),
(19, 'chris@fullstackinc.com', 'cdesousa', 'Chris', 'DeSousa', '$2y$10$4EPJbQIOK5anxV0c8N1gBOM4VwNzoXfSYAZd1GaAMut/KusQjDtkm', 'img/gray_avatar_lady.png', 0, '(416) 888-6775', 'Female', '06201978', 'Toronto', '', '', '', '', 'canada', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '03680d6a17a1c955c394', 'eD0GHa5ci6M6jKW9fhCvnQrTCkI7LH8ttShFc1o0ogtYM15nOBhaWQJYk9wS', 0, 0, '2015-07-02 15:55:32', '2015-07-02 21:55:32'),
(20, 'ankur.tiwari@gyrix.co', '', 'Ankur', 'Tiwari', '$2y$10$EwApInIGw0jyqFULlntMu.VykY3eenQ0uql1/LbWwrckOTBG63AGG', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', 'thrice', 55, 'no', '55fff4ad43b86b51fab1', 'mvot4cbcdTFo5qJrynblhxaAqlroWQ6Wd1xWY11wKtRSHEj7Eh1OEcnZO6qq', 0, 0, '2015-07-27 12:26:55', '2015-07-27 18:26:55'),
(21, 'bhaskar@gyrix.co', '', 'Bhaskar', 'Rajoriya', '$2y$10$RwrkTJCLaUSYuud4ZsBAWO1eNkjWHYRmWLGvwCADrmwlr.lcqYPaK', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', '', 0, '', '', '', 0, 0, '2015-07-06 05:35:30', '2015-07-06 11:35:30'),
(22, 'bhaskarrajoriya@gyrix.co', 'bhaskar.rajoriya', 'Bhaskar', 'Rajoriya', '$2y$10$1Guccq5EvkEkNV2LVfLo.Ok263RGQ/hSqcdO32UrA4t16NS2R//gm', 'img/gray_avatar_lady.png', 0, '08817778900', 'Male', '09/08/1992', 'indore', 'OwnerSmallBusiness', 'married', '89001To130000', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '', '', 0, 0, '2015-07-09 12:27:58', '2015-07-09 18:27:58'),
(23, 'bhaskarraj@gyrix.co', 'bhaskarraj', 'Bhaskar', 'Rajoriya', '$2y$10$O4NFwv9MIerwEHrXOopL6Oi0LRVGQ8jX53AVVM.WVYDAfm3.P0Pfq', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '08817778900', 'Male', '09/08/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', 'musicMusicalInstruments', 'IN', '', '', 'Asian', 'Value2,Value6', 'independence,achievement,education,travel,meaningfulJobCareer,friendships,family,happiness,sportsAthletics', '', 1, 1, 'Mr', '', '', '', 0, '', '', 0, 'no', '', 'dTs8tMMzxkD9blFokSEGU28hSQH9JqaJJcrHzYxeo7Mdq2cgmOObU7tdki8f', 0, 0, '2015-07-09 12:57:58', '2015-07-09 18:57:58'),
(24, 'bhaskarrajoriyaa@gyrix.co', 'bhaskarrajoriyaa', 'Bhaskar', 'Rajoriya', '$2y$10$2gqEJx4mZ4MzCAgK/QLj9Oz3wKz7iH/4f.01eN5kyfeYhI8ngc92.', 'img/gray_avatar_lady.png', 0, '08817778900', 'Male', '', 'indore', 'employeeEntryLevel', 'single', '89001To130000', 'musicMusicalInstruments', 'IN', '', '', 'Asian', '', 'family', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '386f7800b88505bab738', '', 0, 0, '2015-07-09 12:59:27', '0000-00-00 00:00:00'),
(26, 'kirti.nirkhiwale@gyrix.co', 'kirti', 'kirti', 'nirkhiwale', '$2y$10$TRWfHaJzFRqutq9yToD0FefFMuwFIpJ.wQJnmHdRQO5TG/65gChhG', 'img/gray_avatar_lady.png', 0, '(271) 353-5124', 'Male', '12/03/92', '', 'stayAtHomeParent', '', '23001To39000', 'reading', 'AX', '', 'highSchool', 'African American', 'Value1', 'family', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '', 'w3WWy5ylF7Cr74ABdVWHKCuCa8h8PCJtBOzEBskcFb1WpvGHvQ1MEcJo1qcl', 0, 0, '2015-07-10 04:59:35', '2015-07-10 10:59:35'),
(27, 'bhaskar.rajoriya@gyrix.com', 'rajoriya.bhaskar', 'Bhaskar', 'Rajoriya', '$2y$10$dYS80c8hlf7ZgZDPqQiPzuk4Kik3Pt.SIHh5JXe7A0d1/gR.q.Ovu', 'img/gray_avatar_lady.png', 0, '', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', 0, '', '', 0, '', 'fc83815913973aae4921', '', 0, 0, '2015-07-10 05:05:50', '0000-00-00 00:00:00'),
(28, 'aasif.mansuri@gyrix.co', 'aasif', 'aasif', 'mansuri', '$2y$10$MiHCRIWQEXCGjzgZOGwF2uEg2Wopzssc9jabWNDJPgS51ij6F3/QW', 'img/gray_avatar_lady.png', 0, '', 'Male', '', '', 'stayAtHomeParent', 'marriedWithChildren', '60001To89000', 'foreignLanguageStudy', 'AL', '', 'collegeDegree', 'Native American', 'Value3', 'travel', '', 0, 1, '', '', '', '', 0, '', '', 0, '', 'e18f95bc3771ec9651e1', '', 0, 0, '2015-07-10 05:10:14', '0000-00-00 00:00:00'),
(29, 'rajoriya@gyrix.co', 'braj', 'Bhaskar', 'Rajoriya Raj', '$2y$10$XORkLkyyDwaJOhhT4IQztuSfjp8eYTViKERvYeJNntmZoaRhL.IGu', 'img/gray_avatar_lady.png', 0, '(881) 777-8900', 'Male', '09/08/1992', 'indore', 'employeeEntryLevel', 'single', '39001To60000', 'reading,writingBlogging,musicMusicalInstruments,golfing,joggingWalking,horsebackRiding,yoga,teamSports,cardGames,dinner,movies,ballroomDancing,volunteering,photography', '', '', 'bachelorDegree', 'Asian', 'Value1,Value4,Value6,Value8', 'independence,achievement,contributionCharity,meaningfulJobCareer,friendships', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '', 'aBBJqlRU4tIgoC096qkYvfe1GlYv8ilhEhq7B3eZc60awvqD1Y1NBCDyxVI7', 0, 0, '2015-07-10 11:55:38', '2015-07-10 17:55:38'),
(30, 'prerna211@gmail.com', 'Prerna', 'Prerna', 'Rajoriya', '$2y$10$9pC26jfbmMexpZh5vZ3KeuumwsEdfjDg..NpHGsNKC0DOFBl4qTy.', 'http://advizzy.gyrix.co/img/avatars/5_avatar_03.png', 0, '(975) 253-3285', 'Female', '11/02/1994', 'indore', 'student', 'single', '', '', 'IN', '', 'collegeDegree', '', '', '', '', 0, 1, '', '', '', '', 0, '', '', 0, '', 'ef00a7a327c540b58d75', '', 0, 0, '2015-07-11 09:08:49', '0000-00-00 00:00:00'),
(31, 'bhaskar.rajoriya@gyrix.cod', 'kokok', 'Bhaskar', 'Rajoriya Raj', '$2y$10$AlzFyjNSc5LHhaPeh2uG.Ou/VPTgvCqTjB0KRlnhNAbMIpJrL8irO', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '(088) 177-7890', 'Male', '', 'indore', 'stayAtHomeParent', 'cohabiting', '39001To60000', 'reading,musicMusicalInstruments,golfing,cardGames,scrapbooking,painting,antiques,natureWalks,hunting,fishing,baking,knitting', 'IN', '', '', 'Asian', '', 'education,travel,contributionCharity', '', 1, 1, 'Mr', '', '', '', 0, '', '', 0, 'no', 'a47e63e814fa61b6443f', 'W8JvyftF02749HjNYst4a5PPaOVftFHu3jJLCqhrQGniNchcCOGMrYbM6eqx', 0, 0, '2015-07-13 07:24:40', '2015-07-13 13:24:40'),
(32, 'bhaskar.rajoriya@gyrix.in', 'manav', 'kim', 'a b  c', '$2y$10$fCLMgRyy9zBTEi5k2bwyiuyBHbx6JBMYiT8z2ai3hlOfKTxlwcBQ.', 'http://advizzy.gyrix.co/img/avatars/5_avatar_02.png', 0, '(123) 456-7890', 'Male', '01/05/1992', 'indore', 'employeeSeniorLevel', 'single', '89001To130000', 'foreignLanguageStudy,writingBlogging,golfing,joggingWalking', 'IN', '', 'collegeDegree', 'Asian', '', 'religionSpirituality,independence,achievement', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '4e7fa558535342ea8d5d', 'SlwiKn5dphTi0ibimyBa9JYCcUxyofsn4PFximIIjRH0fxuFHQR49N7KFBuM', 0, 0, '2015-07-13 08:34:40', '2015-07-13 14:34:40'),
(33, 'manoj.patidar@gyrix.co', 'manoj', 'manoj', 'patidar', '$2y$10$Hof/8Jh99dVm.G6lnBIE0.si8Z1Wr7F3DTRtOcI0H3GZ3XdqDhMZ.', 'img/gray_avatar_lady.png', 0, '', 'Male', '', '', 'student', 'married', '0To23000', 'golfing,joggingWalking', 'AX', '', 'collegeDegree', 'Hispanic or Latino', '', 'meaningfulJobCareer,friendships,health', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '', '', 0, 0, '2015-07-13 12:20:10', '2015-07-13 18:20:10'),
(34, 'testing@gyrix.co', 'test', 'Testing', 'Test It', '$2y$10$QAT0/Yx819hS4hGf5IAwr.LN.wR1XNcmat6rbj8DN8O7jcIQPqL6W', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '(898) 222-2373', 'Male', '', 'indore', 'employeeEntryLevel', 'single', '23001To39000', 'reading,golfing,teamSports', 'IN', '', 'highSchool', 'Asian', '', 'education,travel,contributionCharity', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '', '', 0, 0, '2015-07-14 06:51:01', '2015-07-14 12:51:01'),
(35, 'bhaskar.rajoriya@gyrix.co', 'bhaskar', 'Bhaskar', 'Rajoriya', '$2y$10$z5Z8NrogJSB2f/M85Ui2L.CALXqHjNMe.98puiAoAg5.F/IcuLK..', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 15, '(881) 777-8900', 'Male', '09/08/1992', 'indore', 'employeeEntryLevel', 'single', '0To23000', 'writingBlogging,musicMusicalInstruments,golfing,joggingWalking,horsebackRiding,yoga,teamSports,cardGames,dinner,movies,ballroomDancing,volunteering,photography,scrapbooking,drawing,painting,pottery,antiques,postcards,genealogy,hiking,natureWalks,birdWatching,hunting,fishing,cooking,baking', 'IN', '', 'bachelorDegree', 'Asian', '', 'education,happiness,freeTime', '', 1, 1, '', '', '', '', 0, '', '', 0, '', 'a778b1860e510a5bffc4', 'd4so8oE1Da88sddyOOqNvOMvi34Be4B8nVkU333e0IGEGYq52RQnVQhQ9vQ4', 0, 0, '2015-07-25 11:10:59', '2015-07-25 17:10:59'),
(36, 'vinod@gyrix.co', 'vinod', 'vinod', 'kirte', '$2y$10$7E6ZoGUlSo3rGSgIug2C3u8ywnBhQa/Dg1WntNiOM/GilpCY9diXi', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', 'Male', '', 'indore', 'employeeEntryLevel', 'single', '0To23000', 'birdWatching', 'IN', '', 'bachelorDegree', 'Asian', '', 'achievement,education,travel', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '18e7b68e74260b7cec61', 'DRLGg5BGa3r8qITsyid78IKnpPnUXjKsTtXiagi5ApYXhKVijklVQUADJC6B', 0, 0, '2015-07-14 13:22:00', '2015-07-14 19:22:00'),
(37, 'vinod.kirte@gyrix.co', 'vinod1', 'vinod', 'kirte', '$2y$10$/9s1SeZh6ZXlXdOwb4Fv/.2WGH871gfmq.gmywUBeoXKwRZA38hjO', 'img/gray_avatar_lady.png', 0, '', 'Male', '', 'indore', 'stayAtHomeParent', 'married', '23001To39000', 'foreignLanguageStudy,reading,writingBlogging,musicMusicalInstruments', 'AX', '', 'masterDegree', 'Native American', '', 'independence,achievement,education', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '29d66e39057397c5157b', '', 0, 0, '2015-07-14 13:26:01', '0000-00-00 00:00:00'),
(41, 'contact@gyrix.co', '', 'Brad', 'Cooper', '$2y$10$Heo2Fe9/sz08LvO8ZF7jZeEX5PY7ai9QmiKomAB7yMVZtR6xexZq.', 'img/gray_avatar_lady.png', 0, '', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', 'b9fd69d8324846d24f40', 'n7FekRc8qpTgTKwUQHQALceL78WcO3wumiCO2qqdmW7nasKOIVmZn7wKCx8q', 0, 0, '2015-07-17 04:56:29', '2015-07-17 10:56:29'),
(42, 'brn.rajoriya@gmail.com', '', 'Bhaskar', 'Rajoriya', '', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', 'twice', 56, 'no', 'eef41b124ef5ed0bd395', 'I1RJHGT6LDPDj0b0QxnSmibgdia2qp3HyWypqWfjEZONeJ7GmZEixOAVTBQW', 0, 0, '2015-07-17 11:04:37', '2015-07-17 17:04:37'),
(43, 'honeyhoney.sing@gmail.com', '', 'Ravi', 'Purohit', '', 'img/gray_avatar_lady.png', 0, '', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '2395678b90bc528560c5', 'R4Ic8Xq4BgDoyQVnanAHnMUo39Vc0oueDgYnKVlY7tsrN6cr28S30J0B64rz', 0, 0, '2015-07-16 12:57:26', '2015-07-16 18:57:26'),
(44, 'kunal@gyrix.co', '', 'Akshay', 'Khan', '', 'img/gray_avatar_lady.png', 0, '', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '719cc5991f93bd4489f1', 'f7ikCmP31aA9D7QNVmMtSqSfi4DVkPQsioCHn74aaFZeie846sqHAITCFZDQ', 0, 0, '2015-07-17 04:14:24', '2015-07-17 10:14:24'),
(45, 'tiwariankur77@gmail.com', '', 'Ankur', 'Tiwari', '', 'img/gray_avatar_lady.png', 0, '9826423503', '', '', 'Indore Area, India', '', '', '', '', 'IN', '', '', '', '', '', '', 1, 1, '', '6658/18 meghdoot nagar, indore', '', '', 452010, '', 'once', 91, 'yes', 'd5ec6be7acf1fa61e1a6', 'li3X5nODKV993oNjCjcqLvxbqnofux8PLYVTYjJkHZTBJz4kXh8Szw1YzhOb', 0, 0, '2015-07-17 11:15:34', '2015-07-17 17:15:34'),
(46, 'kdionne@kpd-i.com', '', 'Karl', 'Dionne', '', 'img/gray_avatar_lady.png', 0, '', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', 'dbe600e468eed5e5455b', '', 0, 0, '2015-07-17 13:23:55', '0000-00-00 00:00:00'),
(47, 'mahendralokhande93@gmail.com', '', 'Mahendra', 'Lokhande', '', 'img/gray_avatar_lady.png', 0, '', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', 'a5ab2bb48f8340ad6b34', '', 0, 0, '2015-07-17 15:07:07', '0000-00-00 00:00:00'),
(50, 'rrdhanuka@gmail.com', '', 'Richa', 'Agrawal', '', 'img/gray_avatar_lady.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '0e11a6f12115458698ea', 'FQaPhUEq4TI8lo15RZHwr3DQurTKJahX1KrjkNzurkyO2Wo84XDbSK9wl5Il', 0, 0, '2015-07-21 04:04:24', '2015-07-21 10:04:24'),
(51, 'abhaskar.rajoriya@gyrix.co', '', 'Bhaskar', 'Rajoriya', '$2y$10$.phxyofrf4n1gLvBHUdUdesv5piy/VJWxX7DF.ilrmCGTiUayXUAW', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', '', 0, '', '6722d6e340f2b3613b0f', '5pNUvXI0fqCYmlhHPfxxJKJhd2sGywTT3Qu1MLxQgnzJNm0ZMzbahjxvFdAr', 0, 0, '2015-07-22 04:39:48', '2015-07-22 10:39:48'),
(52, 'abhaskar.rajoriya@gyrix.co', '', 'Bhaskar', 'Rajoriya', '$2y$10$mVCaNXsQBx713urZ2PhH7ub9/hHXw3F0vwiH/2YDTz6ThAm34SBUG', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', '', 0, '', '10551fed6c7cb8e7519a', '', 0, 0, '2015-07-24 06:43:35', '2015-07-24 12:43:35'),
(53, 'manav@gmail.co', 'mnv', 'manava', 'aroras', '$2y$10$8dG2e15P9kBiPDj.rp5Scei.NdGWFLL2jmryZ7EbiJCMCcD38mkQW', 'img/gray_avatar_lady.png', 0, '(123) 456-8545', 'Male', '', 'indore', 'unemployed', 'single', '23001To39000', 'foreignLanguageStudy', 'IN', '', 'highSchool', 'Asian', '', 'independence', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '4a52ee5df44befe13808', 'LVgKHu0Y4hPDpxFT6g4x1YSXyNqI9kh0fnvRDtrOHQqcLVy7opHtD2OATc6S', 0, 0, '2015-07-21 14:19:49', '2015-07-21 20:19:49'),
(54, 'bagley.nigel@gmail.com', '', 'Nigel', 'Bagley', '$2y$10$/C.7TnvAUgDs0gQ5Hx1eG.JRZaPYm.b2UpEiDCSMZXcStqWYJhF06', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '4167959316', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 'Mr', '88 Erskine Avenu', '120 Eglinton Avenue East', '', 0, 'Ontario', '', 100, 'no', 'e2f921ce71468192f0ad', '8qIsx790Kz0o5o2lLPqH5RFw2LRj03tVrvPYQTEuFkTI8ZSKvm5EVGCQwzhW', 0, 0, '2015-07-22 16:38:26', '2015-07-22 22:38:26'),
(55, 'nbagley@kpd-i.com', '', 'Nigel', 'Bagley', '', 'img/gray_avatar_lady.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '025d2850281d86f09cd5', '', 0, 0, '2015-07-21 19:02:43', '0000-00-00 00:00:00'),
(56, 'bagley.nigel@gmail.com', '', 'Nigel', 'Bagley', '', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', '', '', 'Toronto, Canada Area', '', '', '', '', 'CA', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, 'no', '4962cf5f9434854ffe56', '', 0, 0, '2015-07-21 19:30:32', '0000-00-00 00:00:00'),
(57, 'manavarora_001@yahoo.com', '', 'manav', 'arora', '', 'img/gray_avatar_lady.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', 'a78ed912f9795034778f', '', 0, 0, '2015-07-22 04:29:34', '0000-00-00 00:00:00'),
(58, 'arpita.hunka@gyrix.co', '', 'arpita', 'hunka', '$2y$10$X30zjqZAMd5zISQYWYyPeObSV8/j/baE/lIfE9p3Ix5vjf4mNVh1.', 'http://advizzy.gyrix.co/img/avatars/5_avatar_09.png', 0, '(455) 541-5146', '', '', 'indore', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'Ms', '', '', '', 0, 'Madhya Pradesh', '', 24, 'no', 'ca76d5de5b963930f465', 'nlINCIXBc30Ny2Xe6yhJJunmSNNkDsR8bknUQ9TLiD1SHOTSBHUTsq7eHuth', 0, 0, '2015-07-24 11:53:27', '2015-07-24 17:53:27'),
(59, 'cwatson@kpdi.ca', 'bunnyfoofoo', 'Caroline', 'Watson', '$2y$10$RE/T.p.buSgJ7dKvNSKHxOsjUrq0QOg4bZNn0nzxKAirUBDGxdm1y', 'http://advizzy.gyrix.co/img/avatars/5_avatar_01.png', 0, '', 'Female', '06/20/78', 'Toronto', 'employeeSeniorLevel', 'marriedWithChildren', '250001Plus', 'yoga', 'CA', '', 'bachelorDegree', 'White', '', 'family', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '7ff7d54319419215b7ca', '', 0, 0, '2015-07-22 18:18:06', '2015-07-23 00:18:06'),
(60, 'nbagley@kpdi.ca', '', 'Nigel', 'Bagley', '$2y$10$sGGllUtrnkDXkiUZN5vNa.JmtcMT7rzD8Qozph6w4ilvQ7UyOISGG', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', '', 0, '', 'f553a5f2a0cb85f22623', '', 0, 0, '2015-07-22 17:20:48', '2015-07-22 23:20:48'),
(61, 'karl@kpdi.ca', 'kdionne2646', 'Karl', 'Dionne', '$2y$10$rkBxY8AR1/bMABmeozH9oOI.7Ul.IlKcuKsmouWb8NWoiNBs0TgbK', '"http://advizzy.gyrix.co/img/avatars/5_avatar_10.png"', 0, '(416) 720-9382', 'Male', '', 'Toronto', 'unemployed', '', '0To23000', 'foreignLanguageStudy,musicMusicalInstruments,dinner', 'CA', '', 'bachelorDegree', '', '', 'education,contributionCharity,health', '', 0, 1, '', '', '', '', 0, '', '', 0, '', 'ae328f6de86381eecfe9', 'Aldb3fRjUmm01gjyzYl8mAjZMOBhVJzqEmEnijwRk3T4IMZZm0FYNYa6ddbo', 0, 0, '2015-07-23 18:51:19', '2015-07-24 00:51:19'),
(62, 'mnv@gyrix.co', 'arora', 'abc', 'bcda ', '$2y$10$aTnvho7CrE5EkOcFhAzZyuz9beFaBqBUDBX7pzLcmnxPJs.qeQX12', 'http://advizzy.gyrix.co/img/avatars/5_avatar_10.png', 0, '(789) 456-4512', 'Male', '01/05/1992', 'indore', 'unemployed', 'single', '0To23000', 'foreignLanguageStudy,reading', 'GI', '', '', 'Asian', '', 'religionSpirituality,independence,achievement', '', 1, 1, 'Mr', '', '', '', 0, '', '', 68, 'no', '0d786546c76eabdc61eb', '5qg1lmtgtmPOICFTww7wzE2DrXImcvMOoGtefugjkIofqX9jfOvLdlAUK8dK', 0, 0, '2015-07-24 13:28:01', '2015-07-24 19:28:01'),
(63, 'manav.arora@gyrix.co', 'manav123', 'manav', 'arora', '$2y$10$/5PXKhfvliVPbuJ3MMc/3uo42fZOpbyQhqmq3hcglVBxEDo6yCFOq', 'http://advizzy.gyrix.co/img/avatars/5_avatar_02.png', 0, '', 'Male', '', '', '', '', '', 'foreignLanguageStudy', '', '', '', 'Native American', '', 'independence', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '82245ad402f0a8d1d03a', '', 0, 0, '2015-07-24 11:55:09', '0000-00-00 00:00:00'),
(64, 'bhaskarfff.rajoriya@gyrix.co', 'rajoriya.bhaskarfff', 'Bhaskar', 'Rajoriya', '$2y$10$mVCaNXsQBx713urZ2PhH7ub9/hHXw3F0vwiH/2YDTz6ThAm34SBUG', 'img/gray_avatar_lady.png', 0, '(881) 777-8900', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '0fd39447d896c785ebca', 'KGGcfwjP3qAMen4fkK01qcHAOtZr2TkwaZxJRxJit4ILkEpyelEHNSVaxFiu', 0, 0, '2015-07-24 14:02:56', '2015-07-24 20:02:56');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
