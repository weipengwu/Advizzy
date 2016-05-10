-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 14, 2015 at 08:17 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `questionId`, `userId`, `repliesCount`, `likesCount`, `hashId`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(23, 'Reply to Test', 27, 47, 0, 0, '$2y$10$X.94sZmSVquWILMi.02pse3vBaBYd/EozRhwztmq7PaWrt6ePOPc2', 1438183503, 1438183503, '2015-07-29 15:25:03', '2015-07-29 21:25:03'),
(24, 'Thanks to share your problem here.', 25, 47, 0, 0, '$2y$10$DJWKGusue5BCI0tMiwqn/ej26wUM3D9y2ICYer8njP1IUAZAOiphu', 1438183586, 1438183586, '2015-07-29 15:26:26', '2015-07-29 21:26:26'),
(25, 'yes \r\n', 23, 20, 0, 0, '$2y$10$9NT8YEkbtAmVCKGlkXazqeL5lyL390Eea0ZOpstm0IY4CNmPWp286', 1438235486, 1438235486, '2015-07-30 05:51:26', '2015-07-30 11:51:26'),
(26, 'I dont Know.', 25, 35, 0, 0, '$2y$10$6rWsPkHZUJyG3t2kVR6tqOgBK7IPBtVERqlEwEK4QHfJOFrhM77Ky', 1438680184, 1438680184, '2015-08-04 09:23:04', '2015-08-04 15:23:04'),
(27, 'comment', 25, 35, 0, 0, '$2y$10$3eFo.6kLwTjRhKY8KAwix.ARmE.POFJb0yz6rDeVgDdBnmL66yr/q', 1438680225, 1438680225, '2015-08-04 09:23:45', '2015-08-04 15:23:45'),
(28, 'comment', 25, 35, 0, 0, '$2y$10$ORMC9ny45jcNUBT.vbLtbuBZe3QkFpnFvo0NrM4NHXJKG79qDGxmS', 1438680281, 1438680281, '2015-08-04 09:24:41', '2015-08-04 15:24:41'),
(29, 'comment', 25, 35, 0, 0, '$2y$10$OzujPf5VBqYEaAYaeMCtteGpsK7egpxUjhcbjBeK5X5UbcrSQbLJK', 1438680507, 1438680507, '2015-08-04 09:28:27', '2015-08-04 15:28:27'),
(33, 'yes.', 30, 20, 0, 0, '$2y$10$AfaoNFF1uytMqSIi6lztzOerXqiRwx.rl03wTEIC29NndEPZF1Lxi', 1438680899, 1438680899, '2015-08-04 09:34:59', '2015-08-04 15:34:59'),
(36, 'ok thanks', 29, 20, 0, 0, '$2y$10$jfp8l3.zmZhqUA25e7Ewxu6DygurKfdB2YcwdZpDFU0XgvXjjds5y', 1438681345, 1438681345, '2015-08-04 09:42:25', '2015-08-04 15:42:25'),
(37, 'yes i have tested. it is working fine', 29, 20, 0, 0, '$2y$10$S6cAOSrwHZC/ZJ8.G05G9enk8LZNcnFINOHG2BZFCB3fcGR82yupK', 1438681809, 1438681809, '2015-08-04 09:50:10', '2015-08-04 15:50:10'),
(38, 'can i see that what you have edited?', 29, 20, 0, 0, '$2y$10$UpQt7xdDz1TmHwfFqqPDkuDZ54DkFr5kNum1LF5syORgkRsXz7AtW', 1438682777, 1438682777, '2015-08-04 10:06:17', '2015-08-04 16:06:17'),
(40, 'ok thanks.', 29, 20, 0, 0, '$2y$10$aoMcFYvH/GsJuiDj/Uoohu86iGoAFJGBsZns3OYFfAE8RHKnxtVAC', 1438682888, 1438682888, '2015-08-04 10:08:09', '2015-08-04 16:08:09'),
(41, 'And say How are you?', 29, 20, 0, 0, '$2y$10$QDUzTX0MkrmoPAzSf4poGeevRVDLDGg.polykS.E3eUaNF6jYndNS', 1438684196, 1438684196, '2015-08-04 10:29:56', '2015-08-04 16:29:56'),
(43, 'i am good and working as a web developer.', 29, 20, 0, 0, '$2y$10$VmZCz6CEwuyHyevKEACLVOh9RvdIqnkuCcr2WoWiFQq6vS/4dlz3a', 1438684349, 1438684349, '2015-08-04 10:32:29', '2015-08-04 16:32:29'),
(45, 'cheers', 29, 20, 0, 0, '$2y$10$ZUoSkvvw8lTMX1F5Gfa99uu5skXERQOvWl9txJjV86bnxBldz3g1u', 1438684641, 1438684641, '2015-08-04 10:37:21', '2015-08-04 16:37:21'),
(46, 'just for testing', 30, 58, 0, 0, '$2y$10$CoOAn7yzITLs7dODaUu0be7Kd2MLe6T6jYj5/yENKQmZ/UTp.rY9C', 1438685920, 1438685920, '2015-08-04 10:58:40', '2015-08-04 16:58:40'),
(47, 'test for the notification\r\n', 30, 58, 0, 0, '$2y$10$l9VHVdH544XwomXMioSG.ueALZqP3P.cU681PzidI7zOjNRh6Kzdq', 1438685999, 1438685999, '2015-08-04 11:00:00', '2015-08-04 17:00:00'),
(49, 'testing for the notification functionality', 30, 58, 0, 0, '$2y$10$ExRD3WhWvQA857c2si.Fb.302Xpb7t7K7gepqp6xdxUXD4zbXCwNu', 1438686174, 1438686174, '2015-08-04 11:02:54', '2015-08-04 17:02:54'),
(50, 'yes working proper.', 30, 58, 0, 0, '$2y$10$7k5y/iNKa4vllrPekFOqWev7irRcmbu8H0oh0ZvGpVuGJ6gSXT9tS', 1438686250, 1438686250, '2015-08-04 11:04:10', '2015-08-04 17:04:10'),
(51, 'Now what is the next step?', 30, 58, 0, 0, '$2y$10$zjSduwY1ldplmS.VIiwf8ufHd/t1XdtGXi8X/Ddd7VR.bv/o87Wpm', 1438686289, 1438686289, '2015-08-04 11:04:49', '2015-08-04 17:04:49'),
(52, 'hello ! \r\nI am also a web developer. :p', 29, 58, 0, 0, '$2y$10$Pux175AD77YQWBTushkib.uKQcX0eXdifFvA6truAiHv5xzcwpKN6', 1438686448, 1438686448, '2015-08-04 11:07:28', '2015-08-04 17:07:28'),
(53, 'done', 30, 20, 0, 0, '$2y$10$dx3qDv2ShLi8k1P97W9qL.rAgLAfpILHt78.vD688g32HuXQEqoA.', 1438697015, 1438697015, '2015-08-04 14:03:35', '2015-08-04 20:03:35'),
(55, 'It looks good.', 9, 35, 0, 0, '$2y$10$TirNjWF3E0AnfGWkE/HXbORGDtRSaFnsW8AYsNVqu1180rzPtckRS', 1438775890, 1438775890, '2015-08-05 11:58:11', '2015-08-05 17:58:11'),
(58, 'Now arpita can''t post advice here.', 31, 35, 0, 0, '$2y$10$jjlcTMCgcIlnC/ZNfC1.DeZsKcM/H4C2oDzjEbdubeELAfTNqT2TO', 1438858774, 1438858774, '2015-08-06 10:59:34', '2015-08-06 16:59:34'),
(59, 'Only Others ca.', 31, 35, 0, 0, '$2y$10$VMlkdIOJvi9PQIaBCioeK.RgVi7KPOe/xNpQJ.zI9VHvctheLLD..', 1438858805, 1438858805, '2015-08-06 11:00:05', '2015-08-06 17:00:05'),
(60, 'Only others can post advice.', 31, 35, 0, 0, '$2y$10$W.c3ZHU1hUCnO2VWhPtHuetxrN0HOrbUYuZ3lPL5haLjfj8U198dW', 1438859096, 1438859096, '2015-08-06 11:04:56', '2015-08-06 17:04:56'),
(61, 'Yes i can also comment here.', 31, 20, 0, 0, '$2y$10$Jn/ftymZZVz1rGr7rYm.BeOBGivL5ar3Xu2XDId/KOB2d97ON0aG2', 1438863206, 1438863206, '2015-08-06 12:13:26', '2015-08-06 18:13:26'),
(62, 'yes', 29, 20, 0, 0, '$2y$10$AlFIF1nq8xetDofe66JF/OFxxoiBpZ/DjUMG6NsxlAFA87bVYuvlu', 1438863215, 1438863215, '2015-08-06 12:13:35', '2015-08-06 18:13:35'),
(63, 'got it', 30, 20, 0, 0, '$2y$10$84d1pYdzKZ8qcgh5dt0dh.Z8wSsFurOuWcyW2YJ63Ut5rx61IQtWW', 1438863222, 1438863222, '2015-08-06 12:13:42', '2015-08-06 18:13:42'),
(64, 'kk', 31, 20, 0, 0, '$2y$10$zJrzj5HVqCBSfMb7VDJPlOudurXkthkhXp8jI.cj5FZPS7sUEEBZe', 1438863235, 1438863235, '2015-08-06 12:13:55', '2015-08-06 18:13:55'),
(65, 'But I Can.', 32, 20, 0, 0, '$2y$10$OXAQRykn1Ei2.QR2zsNPseGfikdX5eJkz2adLopYJeVFSL9CYyTwO', 1438863606, 1438863606, '2015-08-06 12:20:06', '2015-08-06 18:20:06'),
(66, 'Me Too', 32, 58, 0, 0, '$2y$10$9aK/UI8w6uktSkGi6694teY9WKT6dguGDxPocW/FWjCnWpdjFTJyG', 1438863690, 1438863690, '2015-08-06 12:21:30', '2015-08-06 18:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `influence`
--

DROP TABLE IF EXISTS `influence`;
CREATE TABLE IF NOT EXISTS `influence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `industry` int(11) NOT NULL,
  `profession` int(11) NOT NULL,
  `continent` int(11) NOT NULL,
  `influencePercent` int(11) NOT NULL,
  `influenceLevel` int(11) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `influence`
--

INSERT INTO `influence` (`id`, `userId`, `industry`, `profession`, `continent`, `influencePercent`, `influenceLevel`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 72, 1, 1, 1, 11, 1, 1439542989, '2015-08-14 09:03:09', '0000-00-00 00:00:00'),
(2, 73, 1, 1, 1, 16, 2, 1439542989, '2015-08-14 09:03:09', '0000-00-00 00:00:00'),
(3, 74, 1, 1, 1, 26, 3, 1439542989, '2015-08-14 09:03:09', '0000-00-00 00:00:00'),
(4, 75, 1, 1, 2, 30, 1, 1439542989, '2015-08-14 09:12:51', '0000-00-00 00:00:00'),
(5, 76, 1, 1, 3, 0, 1, 1439542989, '2015-08-14 09:14:10', '0000-00-00 00:00:00'),
(6, 77, 1, 2, 1, 0, 3, 1439542989, '2015-08-14 09:14:10', '0000-00-00 00:00:00'),
(7, 78, 1, 2, 1, 0, 2, 1439542989, '2015-08-14 09:15:28', '0000-00-00 00:00:00'),
(8, 79, 1, 3, 1, 0, 1, 1439542989, '2015-08-14 09:15:44', '0000-00-00 00:00:00'),
(9, 80, 2, 1, 3, 0, 1, 1439542989, '2015-08-14 09:17:08', '0000-00-00 00:00:00'),
(10, 81, 2, 3, 3, 0, 2, 1439542989, '2015-08-14 09:17:08', '0000-00-00 00:00:00'),
(11, 82, 2, 1, 1, 0, 2, 1439542989, '2015-08-14 09:17:49', '0000-00-00 00:00:00'),
(12, 83, 2, 2, 2, 0, 2, 1439542989, '2015-08-14 09:18:02', '0000-00-00 00:00:00'),
(13, 84, 2, 2, 1, 0, 2, 1439542989, '2015-08-14 10:21:20', '0000-00-00 00:00:00'),
(14, 85, 4, 3, 1, 0, 1, 1439560447, '2015-08-14 13:54:07', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

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
(38, 22, 'targets', '', 0, 0, '2015-07-25 11:51:57', '0000-00-00 00:00:00'),
(39, 23, 'targets', '2', 0, 0, '2015-07-27 12:32:57', '0000-00-00 00:00:00'),
(40, 23, 'targets', '6', 0, 0, '2015-07-27 12:32:57', '0000-00-00 00:00:00'),
(41, 24, 'targets', '', 0, 0, '2015-07-28 12:29:51', '0000-00-00 00:00:00'),
(42, 24, 'targets', '', 0, 0, '2015-07-28 12:29:51', '0000-00-00 00:00:00'),
(43, 25, 'targets', '', 0, 0, '2015-07-28 07:18:18', '0000-00-00 00:00:00'),
(44, 25, 'targets', '', 0, 0, '2015-07-28 07:18:18', '0000-00-00 00:00:00'),
(45, 26, 'targets', '', 0, 0, '2015-07-28 09:38:39', '0000-00-00 00:00:00'),
(46, 26, 'targets', '', 0, 0, '2015-07-28 09:38:39', '0000-00-00 00:00:00'),
(47, 27, 'targets', '', 0, 0, '2015-07-28 10:58:59', '0000-00-00 00:00:00'),
(48, 27, 'targets', '', 0, 0, '2015-07-28 10:58:59', '0000-00-00 00:00:00'),
(49, 28, 'targets', '', 0, 0, '2015-07-28 15:53:11', '0000-00-00 00:00:00'),
(50, 28, 'targets', '', 0, 0, '2015-07-28 15:53:11', '0000-00-00 00:00:00');

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
  `userIndustryId` int(11) NOT NULL,
  `userProfessionId` int(11) NOT NULL,
  `userContinentId` int(11) NOT NULL,
  `hashId` varchar(500) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `commentsCount`, `likesCount`, `userId`, `userIndustryId`, `userProfessionId`, `userContinentId`, `hashId`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 'This Is My First Post?', 0, 0, 1, 0, 0, 0, 'qwqwq', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(2, 'This Is My First Post with target?', 0, 0, 1, 0, 0, 0, 'wewew', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(3, 'heynkjg vkjg ihlbhkjh\r\n jhnb  ubvh', 0, 0, 1, 0, 0, 0, 'ererer', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(4, 'hey', 0, 0, 1, 0, 0, 0, 'rtrtrt', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(5, 'What am I doing here?', 0, 0, 4, 0, 0, 0, 'tytyty', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(6, 'what is this project about so that i can understand', 0, 0, 2, 0, 0, 0, 'uyuyuyu', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(7, '#Question #Testing', 0, 0, 9, 0, 0, 0, 'asasa', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(8, 'What''s the meaning of life?', 0, 0, 4, 0, 0, 0, 'sdsds', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(9, 'Why purple?', 1, 0, 4, 0, 0, 0, 'dfdfdfd', 1437997737, 1437997737, '2015-08-05 11:58:11', '2015-08-05 17:58:11'),
(10, 'Ticket 12 completed??', 0, 0, 9, 0, 0, 0, 'fgfgfgfg', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(11, 'Is gablu a funny name?', 0, 0, 13, 0, 0, 0, 'ghghgh', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(12, '#testing', 0, 0, 14, 0, 0, 0, 'hjhjgjgh', 1437997737, 1437997737, '2015-07-27 12:26:27', '0000-00-00 00:00:00'),
(13, '#example #question', 0, 0, 9, 0, 0, 0, '$2y$10$muSqZIZlpbl.WIkV2fBQcOwBQr.c1OofNdhs6.fSt1GNKMnips4P2', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-06-04 16:43:54'),
(14, 'how is your project going on?', 0, 0, 2, 0, 0, 0, '$2y$10$YxSsIP3Q/PwJgZkHmXoLIOxB.aQk1WsD1COpTUN54uWisOr2ppCYm', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-06-05 19:18:35'),
(15, '#testing', 0, 0, 17, 0, 0, 0, '$2y$10$4UwZF.DrYYmO.bx1mlGKr.j43JcnW20CTLkKav7/ScFRiTP3pL8be', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-06-09 19:43:46'),
(16, 'Testing', 0, 0, 17, 0, 0, 0, '$2y$10$CmoclGgxL/KSM7eu6hXws.ANGmFsOBlBsxQrco4wed9zpZA2e1x.G', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-11 10:47:56'),
(17, 'How does this work?', 0, 0, 55, 0, 0, 0, '$2y$10$JwSyk835tV6nE3p0RGsS1.lXdWXytLWax3yTPBmahb5wgBFH1dH7O', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-22 01:03:05'),
(18, 'To do or not to do, that is the question', 0, 0, 56, 0, 0, 0, '$2y$10$NGf/kebkAJnTYToOpu1bv.17kC6xxu0dL63e0YDxeb47/QKl1MQL.', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-22 01:24:25'),
(19, 'How does this work?', 0, 0, 54, 0, 0, 0, '$2y$10$McHeUtPKohFbZtYfwTGcu.8HxbE/VqfQCozESqWZZu1qryKAcH5RW', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-22 21:53:32'),
(20, 'hi hi hi hi hi hi h i', 0, 0, 54, 0, 0, 0, '$2y$10$vxZklY4gnWepcPvz/vpHJeF8oCBs/.fEZTCSOvoyDkMbMD0ctqKv6', 1437997737, 1437997737, '2015-07-27 12:26:27', '2015-07-22 22:07:01'),
(21, 'Question for testing', 0, 0, 35, 0, 0, 0, '$2y$10$yrvpbPlbBPiVC9yvqZ9QfeZuEv/hrwZqWV7R6TTBzJ5JL6CKMle9G', 1437997737, 1437997737, '2015-08-12 10:47:40', '2015-08-12 16:44:34'),
(22, 'Asking question for testing', 0, 0, 35, 0, 0, 0, '$2y$10$HtJBsUvHh17ol7v5l87i3eZbqntglCocp9uU0NHqyfnMZG04srWpO', 1437997737, 1437997737, '2015-08-12 10:44:34', '2015-08-12 16:44:34'),
(23, 'Do you Like CS game?', 1, 0, 35, 0, 0, 0, '$2y$10$ejNCeAXMsCBc1Cd4moxucOdokh11yVA61uH4c6kh1FkTwWATtKkE2', 1438000377, 1438000377, '2015-07-30 05:51:26', '2015-07-30 11:51:26'),
(24, 'Should we play computer games?', 0, 0, 35, 0, 0, 0, '$2y$10$V9yyLliPpzZYVrqni/ewQO4powmOe54R9oAcq0J6GtDQ3aiPzbDjy', 1438000414, 1438086591, '2015-08-12 10:44:34', '2015-08-12 16:44:34'),
(25, 'Where is Target Section? edited', 5, 0, 20, 0, 0, 0, '$2y$10$f32FuBC5wXA2o.POVQaogeYADUwNNQv/rZeDTplpklUCU67Ivcn7m', 1438067897, 1438067921, '2015-08-12 10:44:34', '2015-08-12 16:44:34'),
(26, 'testing the functionality for the system', 0, 0, 35, 0, 0, 0, '$2y$10$Apwnh.FHri2Xm8I8YAgCJO/kZZWvBL9wZpXS1F2pyKOVgD4H.MlE6', 1438076319, 1438076356, '2015-08-12 10:44:34', '2015-08-12 16:44:34'),
(27, 'Target Section for what?', 1, 0, 35, 0, 0, 0, '$2y$10$07jUaTKcnXNm8nFc418KeeAgtx/Q/vmatmZazH2vao7lfanumq8T6', 1438081139, 1438081139, '2015-08-12 10:44:34', '2015-08-12 16:44:34'),
(28, 'Fruit?', 0, 0, 35, 0, 0, 0, '$2y$10$Rt0Hto/YVxBrdsL0QWRaR.MXCQTyh/fzrnN2rpsOxSjrrWJ.FXc2S', 1438098791, 1438098791, '2015-08-12 10:44:34', '2015-08-12 16:44:34'),
(29, 'is Follow Function Working? edited', 9, 0, 35, 0, 0, 0, '$2y$10$bycUnPnMh6o3Ei104bWgaO6MCUvbLYerOORuVu.vIEmT.RcrK/c7y', 1438414136, 1438682238, '2015-08-12 10:44:34', '2015-08-12 16:44:34'),
(30, 'Is notification functionality working proper?', 8, 0, 35, 0, 0, 0, '$2y$10$BzZayGR7VrmkWux87tyMReJHkVuY6hNxRNhduelsTjrdAvM/o9Lne', 1438680810, 1438680810, '2015-08-12 10:44:34', '2015-08-12 16:44:34'),
(31, 'just for testing the advice section?', 5, 0, 58, 0, 0, 0, '$2y$10$.oDBN/JflgkL1Aju4sqGVOgAQdMw6HABDQFaZ4GFjs9vfCAkVeRd2', 1438858737, 1438859003, '2015-08-06 12:13:55', '2015-08-06 18:13:55'),
(32, 'This Question posted by me and i can''t post advice here?', 2, 0, 35, 0, 0, 0, '$2y$10$zavWhZLHN70n6dtFQabiKOR0NNe.72/vqS/V5autkzlrNUGqyGaay', 1438863521, 1438863521, '2015-08-06 12:21:30', '2015-08-06 18:21:30'),
(33, 'Can I post advice to my own inquiry?', 0, 0, 35, 0, 0, 0, '$2y$10$wk51V5TFAnetZj07bChrDuR7WVED1DC/5kYpl4N6leIIqSK5ssevu', 1439222770, 1439222770, '2015-08-10 16:06:10', '2015-08-10 22:06:10'),
(34, 'Hello! i am Bhaskar.', 0, 0, 72, 1, 1, 1, '$2y$10$k6B38s0DM61fRaUNe3YhUu9kfMrA6dSCC8m8nwdBIkbjk71uK7lqO', 1439559485, 1439559485, '2015-08-14 13:38:05', '2015-08-14 19:38:05'),
(35, 'Hello! i am Bhaskar', 0, 0, 72, 1, 1, 1, '$2y$10$70yGG9bgZKSNDuVJovD8/OtV9rmo99m/o5i2ypOFKfHirpMILJStO', 1439550288, 1439551551, '2015-08-14 11:25:51', '2015-08-14 05:34:48'),
(36, 'hello ! Ankur here', 0, 0, 73, 1, 1, 1, '$2y$10$GNNh8/qW9GIMR7dA7I7ZSepIfKmeWXFXRQ920XvjIJFzBcB8HCcD.', 1439550326, 1439550326, '2015-08-14 11:05:26', '2015-08-14 05:35:26'),
(37, 'hello ! Arpita here', 0, 0, 74, 1, 1, 1, '$2y$10$OGFNcwcLgLFhzYRahnWtz.E1T73ZL./wclgyGxiSjxF0RvvsSMYKi', 1439550348, 1439550348, '2015-08-14 11:05:48', '2015-08-14 05:35:48'),
(38, 'hello ! Ram here', 0, 0, 75, 1, 1, 2, '$2y$10$ODX1eVjIVQ1TyMmQTTKW9OBydA5771Z/efREKSkunkRJyLikNQ5mq', 1439550367, 1439550367, '2015-08-14 11:06:08', '2015-08-14 05:36:08'),
(39, 'hello ! Kunal here', 0, 0, 76, 1, 1, 3, '$2y$10$CsoPu6maQQEmWxJQXnsNCusbZgW0c0rdX1uYa2A6J36g4XJImL4/e', 1439550390, 1439550390, '2015-08-14 11:06:30', '2015-08-14 05:36:30'),
(40, 'hello ! Richa here', 0, 0, 77, 1, 2, 1, '$2y$10$mRWiko1J3zclX/PiKhqMLuiMg0CueT1gZ.0la38W57Y4NB5vs.Nwe', 1439550442, 1439550442, '2015-08-14 11:07:23', '2015-08-14 05:37:23'),
(41, 'hello ! Anshika here', 0, 0, 78, 1, 2, 1, '$2y$10$gT9XRd7RoTRTQFw77R3q6ONjYeBhVU0zxUic9fXmwP316/37yrVYK', 1439550469, 1439550469, '2015-08-14 11:07:49', '2015-08-14 05:37:49'),
(42, 'Hello ! Kirti here', 0, 0, 79, 1, 3, 1, '$2y$10$tOGMrUpZNrFNJLtv51qVfuOFPPQC.JqgooX9pxLt5Rd5vWNntNwZq', 1439550496, 1439550496, '2015-08-14 11:08:16', '2015-08-14 05:38:16'),
(43, 'Hello ! Sparsh here', 0, 0, 80, 2, 1, 3, '$2y$10$U5pq0AkzIfrp/6zYxj6QEOLvV5L72QaUlIKhYGO/uj3FP6fkA/0Uq', 1439550524, 1439550524, '2015-08-14 11:08:44', '2015-08-14 05:38:44'),
(44, 'hello ! Vinod here', 0, 0, 81, 2, 3, 3, '$2y$10$7qQgHTyVfa55UssQSwDVQeutZn6hWE37jZ/F/MjrMcpI0jlf/TgE6', 1439550542, 1439550542, '2015-08-14 11:09:02', '2015-08-14 05:39:02'),
(45, 'Hello ! Manoj here', 0, 0, 82, 2, 1, 1, '$2y$10$FfCOOHaGRpr./GSG5EBgn.ekZo24LsHmY8YTN.uILTrJfT1yZBm0a', 1439550566, 1439550566, '2015-08-14 11:09:26', '2015-08-14 05:39:26'),
(46, 'Hello ! Aasif here', 0, 0, 83, 2, 2, 2, '$2y$10$.Oft.YRoZCzK2m4igtZ.H.wR/fnFjkSOgo/v0V970QR36fmAcLf/S', 1439550583, 1439550583, '2015-08-14 11:10:08', '2015-08-14 05:39:43'),
(47, 'Hello! Vivek here', 0, 0, 84, 2, 2, 1, '$2y$10$3BOhfxHVN5ugea1Pu//9hORgL5/lgKlOzE/TTSE4H3YuAoUDhGxhW', 1439551662, 1439551662, '2015-08-14 11:27:43', '2015-08-14 05:57:43');

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
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `followTo` varchar(1000) NOT NULL,
  `followId` bigint(20) NOT NULL,
  `permit` tinyint(1) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `userId`, `followTo`, `followId`, `permit`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(3, 35, 'question', 29, 1, 1438414136, 1438969339, '2015-08-07 17:42:19', '0000-00-00 00:00:00'),
(4, 20, 'question', 29, 1, 1438414189, 1438770867, '2015-08-05 10:34:27', '0000-00-00 00:00:00'),
(5, 58, 'question', 28, 0, 1438421724, 1438421826, '2015-08-01 09:37:06', '0000-00-00 00:00:00'),
(6, 20, 'question', 28, 0, 1438421863, 1438421865, '2015-08-01 09:37:45', '0000-00-00 00:00:00'),
(7, 20, 'question', 25, 0, 1438680138, 1438689610, '2015-08-04 12:00:10', '0000-00-00 00:00:00'),
(8, 35, 'question', 25, 1, 1438680158, 1438680158, '2015-08-04 09:22:38', '0000-00-00 00:00:00'),
(9, 35, 'comment', 29, 1, 1438680507, 1438680507, '2015-08-04 09:28:27', '0000-00-00 00:00:00'),
(10, 20, 'comment', 30, 1, 1438680599, 1438680599, '2015-08-04 09:29:59', '0000-00-00 00:00:00'),
(11, 20, 'comment', 31, 1, 1438680774, 1438680774, '2015-08-04 09:32:54', '0000-00-00 00:00:00'),
(12, 35, 'question', 30, 1, 1438680810, 1438686031, '2015-08-04 11:00:31', '0000-00-00 00:00:00'),
(13, 20, 'comment', 32, 1, 1438680825, 1438680825, '2015-08-04 09:33:45', '0000-00-00 00:00:00'),
(14, 20, 'question', 30, 1, 1438680874, 1438680874, '2015-08-04 09:34:34', '0000-00-00 00:00:00'),
(15, 20, 'comment', 33, 1, 1438680899, 1438680899, '2015-08-04 09:34:59', '0000-00-00 00:00:00'),
(16, 35, 'comment', 34, 1, 1438680941, 1438680941, '2015-08-04 09:35:41', '0000-00-00 00:00:00'),
(17, 35, 'comment', 35, 1, 1438681298, 1438681298, '2015-08-04 09:41:38', '0000-00-00 00:00:00'),
(18, 20, 'comment', 36, 1, 1438681345, 1438681345, '2015-08-04 09:42:25', '0000-00-00 00:00:00'),
(19, 20, 'comment', 37, 1, 1438681810, 1438681810, '2015-08-04 09:50:10', '0000-00-00 00:00:00'),
(20, 20, 'comment', 38, 1, 1438682777, 1438682777, '2015-08-04 10:06:17', '0000-00-00 00:00:00'),
(21, 35, 'comment', 39, 1, 1438682821, 1438682821, '2015-08-04 10:07:01', '0000-00-00 00:00:00'),
(22, 20, 'comment', 40, 1, 1438682889, 1438682889, '2015-08-04 10:08:09', '0000-00-00 00:00:00'),
(23, 20, 'comment', 41, 1, 1438684196, 1438684196, '2015-08-04 10:29:56', '0000-00-00 00:00:00'),
(24, 35, 'comment', 42, 1, 1438684282, 1438684282, '2015-08-04 10:31:22', '0000-00-00 00:00:00'),
(25, 20, 'comment', 43, 1, 1438684349, 1438684349, '2015-08-04 10:32:29', '0000-00-00 00:00:00'),
(26, 35, 'comment', 44, 1, 1438684606, 1438684606, '2015-08-04 10:36:46', '0000-00-00 00:00:00'),
(27, 20, 'comment', 45, 1, 1438684641, 1438684641, '2015-08-04 10:37:21', '0000-00-00 00:00:00'),
(28, 58, 'question', 30, 1, 1438685908, 1438685908, '2015-08-04 10:58:28', '0000-00-00 00:00:00'),
(29, 58, 'comment', 46, 1, 1438685920, 1438685920, '2015-08-04 10:58:40', '0000-00-00 00:00:00'),
(30, 58, 'comment', 47, 1, 1438686000, 1438686000, '2015-08-04 11:00:00', '0000-00-00 00:00:00'),
(31, 35, 'comment', 48, 1, 1438686071, 1438686071, '2015-08-04 11:01:11', '0000-00-00 00:00:00'),
(32, 58, 'comment', 49, 1, 1438686174, 1438686174, '2015-08-04 11:02:54', '0000-00-00 00:00:00'),
(33, 58, 'comment', 50, 1, 1438686250, 1438686250, '2015-08-04 11:04:10', '0000-00-00 00:00:00'),
(34, 58, 'comment', 51, 1, 1438686289, 1438686289, '2015-08-04 11:04:49', '0000-00-00 00:00:00'),
(35, 58, 'comment', 52, 1, 1438686448, 1438686448, '2015-08-04 11:07:28', '0000-00-00 00:00:00'),
(36, 20, 'comment', 53, 1, 1438697015, 1438697015, '2015-08-04 14:03:35', '0000-00-00 00:00:00'),
(37, 35, 'comment', 54, 1, 1438697264, 1438697264, '2015-08-04 14:07:44', '0000-00-00 00:00:00'),
(38, 35, 'question', 9, 1, 1438775889, 1438775889, '2015-08-05 11:58:09', '0000-00-00 00:00:00'),
(39, 35, 'comment', 55, 1, 1438775891, 1438775891, '2015-08-05 11:58:11', '0000-00-00 00:00:00'),
(40, 35, 'comment', 56, 1, 1438781428, 1438781428, '2015-08-05 13:30:28', '0000-00-00 00:00:00'),
(41, 35, 'comment', 57, 1, 1438781432, 1438781432, '2015-08-05 13:30:32', '0000-00-00 00:00:00'),
(42, 58, 'question', 31, 1, 1438858737, 1438858737, '2015-08-06 10:58:57', '0000-00-00 00:00:00'),
(43, 35, 'comment', 58, 1, 1438858774, 1438858774, '2015-08-06 10:59:34', '0000-00-00 00:00:00'),
(44, 35, 'comment', 59, 1, 1438858805, 1438858805, '2015-08-06 11:00:05', '0000-00-00 00:00:00'),
(45, 35, 'question', 31, 1, 1438858806, 1438858814, '2015-08-06 11:00:14', '0000-00-00 00:00:00'),
(46, 35, 'comment', 60, 1, 1438859096, 1438859096, '2015-08-06 11:04:56', '0000-00-00 00:00:00'),
(47, 20, 'question', 31, 1, 1438863186, 1438863186, '2015-08-06 12:13:06', '0000-00-00 00:00:00'),
(48, 20, 'comment', 61, 1, 1438863206, 1438863206, '2015-08-06 12:13:26', '0000-00-00 00:00:00'),
(49, 20, 'comment', 62, 1, 1438863215, 1438863215, '2015-08-06 12:13:35', '0000-00-00 00:00:00'),
(50, 20, 'comment', 63, 1, 1438863222, 1438863222, '2015-08-06 12:13:42', '0000-00-00 00:00:00'),
(51, 20, 'comment', 64, 1, 1438863235, 1438863235, '2015-08-06 12:13:55', '0000-00-00 00:00:00'),
(52, 35, 'question', 32, 1, 1438863521, 1438863521, '2015-08-06 12:18:41', '0000-00-00 00:00:00'),
(53, 20, 'comment', 65, 1, 1438863606, 1438863606, '2015-08-06 12:20:06', '0000-00-00 00:00:00'),
(54, 20, 'question', 32, 0, 1438863668, 1438873032, '2015-08-06 14:57:12', '0000-00-00 00:00:00'),
(55, 58, 'comment', 66, 1, 1438863690, 1438863690, '2015-08-06 12:21:30', '0000-00-00 00:00:00'),
(56, 58, 'question', 32, 1, 1438863931, 1438863931, '2015-08-06 12:25:31', '0000-00-00 00:00:00'),
(57, 35, 'question', 33, 1, 1439222770, 1439223480, '2015-08-10 16:18:00', '0000-00-00 00:00:00'),
(58, 4, 'question', 33, 0, 1439228523, 1439228525, '2015-08-10 17:42:05', '0000-00-00 00:00:00'),
(59, 72, 'question', 34, 1, 1439559485, 1439559485, '2015-08-14 13:38:05', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=156 ;

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
(21, 35, 10, 'updatedComment', 1437825182, '2015-07-25 11:53:02', '0000-00-00 00:00:00'),
(22, 35, 23, 'asked', 1438000377, '2015-07-27 12:32:57', '0000-00-00 00:00:00'),
(23, 35, 24, 'asked', 1438000414, '2015-07-27 12:33:34', '0000-00-00 00:00:00'),
(24, 35, 24, 'updated question', 1438000490, '2015-07-27 12:34:50', '0000-00-00 00:00:00'),
(25, 35, 11, 'comment', 1438000530, '2015-07-27 12:35:30', '0000-00-00 00:00:00'),
(26, 35, 12, 'comment', 1438000578, '2015-07-27 12:36:18', '0000-00-00 00:00:00'),
(27, 20, 25, 'asked', 1438067898, '2015-07-28 07:18:18', '0000-00-00 00:00:00'),
(28, 20, 25, 'updated question', 1438067921, '2015-07-28 07:18:41', '0000-00-00 00:00:00'),
(29, 20, 13, 'comment', 1438067992, '2015-07-28 07:19:52', '0000-00-00 00:00:00'),
(30, 35, 26, 'asked', 1438076319, '2015-07-28 09:38:39', '0000-00-00 00:00:00'),
(31, 35, 26, 'updated question', 1438076356, '2015-07-28 09:39:16', '0000-00-00 00:00:00'),
(32, 35, 14, 'comment', 1438076412, '2015-07-28 09:40:12', '0000-00-00 00:00:00'),
(33, 35, 27, 'asked', 1438081139, '2015-07-28 10:58:59', '0000-00-00 00:00:00'),
(34, 35, 15, 'comment', 1438081185, '2015-07-28 10:59:45', '0000-00-00 00:00:00'),
(35, 35, 16, 'comment', 1438081400, '2015-07-28 11:03:20', '0000-00-00 00:00:00'),
(36, 35, 24, 'updated question', 1438086591, '2015-07-28 12:29:51', '0000-00-00 00:00:00'),
(37, 35, 17, 'comment', 1438086609, '2015-07-28 12:30:09', '0000-00-00 00:00:00'),
(38, 35, 28, 'asked', 1438098791, '2015-07-28 15:53:11', '0000-00-00 00:00:00'),
(39, 35, 21, 'comment', 1438176982, '2015-07-29 13:36:22', '0000-00-00 00:00:00'),
(40, 35, 22, 'comment', 1438177107, '2015-07-29 13:38:27', '0000-00-00 00:00:00'),
(41, 47, 23, 'comment', 1438183503, '2015-07-29 15:25:03', '0000-00-00 00:00:00'),
(42, 47, 24, 'comment', 1438183586, '2015-07-29 15:26:26', '0000-00-00 00:00:00'),
(43, 20, 25, 'comment', 1438235486, '2015-07-30 05:51:26', '0000-00-00 00:00:00'),
(44, 35, 29, 'asked', 1438414136, '2015-08-01 07:28:56', '0000-00-00 00:00:00'),
(45, 20, 25, 'followed question', 1438689608, '2015-08-04 12:00:08', '0000-00-00 00:00:00'),
(46, 35, 25, 'followed question', 1438680158, '2015-08-04 09:22:38', '0000-00-00 00:00:00'),
(47, 35, 26, 'commented', 1438680184, '2015-08-04 09:23:04', '0000-00-00 00:00:00'),
(48, 35, 27, 'commented', 1438680225, '2015-08-04 09:23:45', '0000-00-00 00:00:00'),
(49, 35, 28, 'commented', 1438680281, '2015-08-04 09:24:41', '0000-00-00 00:00:00'),
(50, 35, 29, 'commented', 1438680507, '2015-08-04 09:28:27', '0000-00-00 00:00:00'),
(51, 35, 29, 'followed comment', 1438680507, '2015-08-04 09:28:27', '0000-00-00 00:00:00'),
(52, 20, 30, 'commented', 1438680599, '2015-08-04 09:29:59', '0000-00-00 00:00:00'),
(53, 20, 30, 'followed comment', 1438680599, '2015-08-04 09:29:59', '0000-00-00 00:00:00'),
(54, 20, 31, 'commented', 1438680774, '2015-08-04 09:32:54', '0000-00-00 00:00:00'),
(55, 20, 31, 'followed comment', 1438680774, '2015-08-04 09:32:54', '0000-00-00 00:00:00'),
(56, 35, 30, 'asked', 1438680810, '2015-08-04 09:33:30', '0000-00-00 00:00:00'),
(57, 35, 30, 'followed question', 1438686031, '2015-08-04 11:00:31', '0000-00-00 00:00:00'),
(58, 20, 32, 'commented', 1438680825, '2015-08-04 09:33:45', '0000-00-00 00:00:00'),
(59, 20, 32, 'followed comment', 1438680825, '2015-08-04 09:33:45', '0000-00-00 00:00:00'),
(60, 20, 30, 'followed question', 1438680874, '2015-08-04 09:34:34', '0000-00-00 00:00:00'),
(61, 20, 33, 'commented', 1438680899, '2015-08-04 09:34:59', '0000-00-00 00:00:00'),
(62, 20, 33, 'followed comment', 1438680899, '2015-08-04 09:34:59', '0000-00-00 00:00:00'),
(63, 35, 34, 'commented', 1438680941, '2015-08-04 09:35:41', '0000-00-00 00:00:00'),
(64, 35, 34, 'followed comment', 1438680941, '2015-08-04 09:35:41', '0000-00-00 00:00:00'),
(65, 35, 35, 'commented', 1438681298, '2015-08-04 09:41:38', '0000-00-00 00:00:00'),
(66, 35, 35, 'followed comment', 1438681298, '2015-08-04 09:41:38', '0000-00-00 00:00:00'),
(67, 20, 36, 'commented', 1438681345, '2015-08-04 09:42:25', '0000-00-00 00:00:00'),
(68, 20, 36, 'followed comment', 1438681345, '2015-08-04 09:42:25', '0000-00-00 00:00:00'),
(69, 20, 37, 'commented', 1438681810, '2015-08-04 09:50:10', '0000-00-00 00:00:00'),
(70, 20, 37, 'followed comment', 1438681810, '2015-08-04 09:50:10', '0000-00-00 00:00:00'),
(71, 35, 29, 'updated question', 1438682238, '2015-08-04 09:57:18', '0000-00-00 00:00:00'),
(72, 20, 38, 'commented', 1438682777, '2015-08-04 10:06:17', '0000-00-00 00:00:00'),
(73, 20, 38, 'followed comment', 1438682777, '2015-08-04 10:06:17', '0000-00-00 00:00:00'),
(74, 35, 39, 'commented', 1438682821, '2015-08-04 10:07:01', '0000-00-00 00:00:00'),
(75, 35, 39, 'followed comment', 1438682821, '2015-08-04 10:07:01', '0000-00-00 00:00:00'),
(76, 20, 40, 'commented', 1438682889, '2015-08-04 10:08:09', '0000-00-00 00:00:00'),
(77, 20, 40, 'followed comment', 1438682889, '2015-08-04 10:08:09', '0000-00-00 00:00:00'),
(78, 20, 41, 'commented', 1438684196, '2015-08-04 10:29:56', '0000-00-00 00:00:00'),
(79, 20, 41, 'followed comment', 1438684196, '2015-08-04 10:29:56', '0000-00-00 00:00:00'),
(80, 35, 42, 'commented', 1438684282, '2015-08-04 10:31:22', '0000-00-00 00:00:00'),
(81, 35, 42, 'followed comment', 1438684282, '2015-08-04 10:31:22', '0000-00-00 00:00:00'),
(82, 20, 43, 'commented', 1438684349, '2015-08-04 10:32:29', '0000-00-00 00:00:00'),
(83, 20, 43, 'followed comment', 1438684349, '2015-08-04 10:32:29', '0000-00-00 00:00:00'),
(84, 35, 44, 'commented', 1438684606, '2015-08-04 10:36:46', '0000-00-00 00:00:00'),
(85, 35, 44, 'followed comment', 1438684606, '2015-08-04 10:36:46', '0000-00-00 00:00:00'),
(86, 20, 45, 'commented', 1438684641, '2015-08-04 10:37:21', '0000-00-00 00:00:00'),
(87, 20, 45, 'followed comment', 1438684641, '2015-08-04 10:37:21', '0000-00-00 00:00:00'),
(88, 58, 30, 'followed question', 1438685908, '2015-08-04 10:58:28', '0000-00-00 00:00:00'),
(89, 58, 46, 'commented', 1438685920, '2015-08-04 10:58:40', '0000-00-00 00:00:00'),
(90, 58, 46, 'followed comment', 1438685920, '2015-08-04 10:58:40', '0000-00-00 00:00:00'),
(91, 35, 30, 'unfollowed question', 1438685975, '2015-08-04 10:59:35', '0000-00-00 00:00:00'),
(92, 58, 47, 'commented', 1438686000, '2015-08-04 11:00:00', '0000-00-00 00:00:00'),
(93, 58, 47, 'followed comment', 1438686000, '2015-08-04 11:00:00', '0000-00-00 00:00:00'),
(94, 35, 48, 'commented', 1438686071, '2015-08-04 11:01:11', '0000-00-00 00:00:00'),
(95, 35, 48, 'followed comment', 1438686071, '2015-08-04 11:01:11', '0000-00-00 00:00:00'),
(96, 58, 49, 'commented', 1438686174, '2015-08-04 11:02:54', '0000-00-00 00:00:00'),
(97, 58, 49, 'followed comment', 1438686174, '2015-08-04 11:02:54', '0000-00-00 00:00:00'),
(98, 58, 50, 'commented', 1438686250, '2015-08-04 11:04:10', '0000-00-00 00:00:00'),
(99, 58, 50, 'followed comment', 1438686250, '2015-08-04 11:04:10', '0000-00-00 00:00:00'),
(100, 58, 51, 'commented', 1438686289, '2015-08-04 11:04:49', '0000-00-00 00:00:00'),
(101, 58, 51, 'followed comment', 1438686289, '2015-08-04 11:04:49', '0000-00-00 00:00:00'),
(102, 58, 52, 'commented', 1438686448, '2015-08-04 11:07:28', '0000-00-00 00:00:00'),
(103, 58, 52, 'followed comment', 1438686448, '2015-08-04 11:07:28', '0000-00-00 00:00:00'),
(104, 20, 25, 'unfollowed question', 1438689610, '2015-08-04 12:00:10', '0000-00-00 00:00:00'),
(105, 20, 53, 'commented', 1438697015, '2015-08-04 14:03:35', '0000-00-00 00:00:00'),
(106, 20, 53, 'followed comment', 1438697015, '2015-08-04 14:03:35', '0000-00-00 00:00:00'),
(107, 35, 54, 'commented', 1438697264, '2015-08-04 14:07:44', '0000-00-00 00:00:00'),
(108, 35, 54, 'followed comment', 1438697264, '2015-08-04 14:07:44', '0000-00-00 00:00:00'),
(109, 20, 29, 'unfollowed question', 1438770866, '2015-08-05 10:34:26', '0000-00-00 00:00:00'),
(110, 20, 29, 'followed question', 1438770867, '2015-08-05 10:34:27', '0000-00-00 00:00:00'),
(111, 35, 9, 'followed question', 1438775889, '2015-08-05 11:58:09', '0000-00-00 00:00:00'),
(112, 35, 55, 'commented', 1438775891, '2015-08-05 11:58:11', '0000-00-00 00:00:00'),
(113, 35, 55, 'followed comment', 1438775891, '2015-08-05 11:58:11', '0000-00-00 00:00:00'),
(114, 35, 56, 'commented', 1438781428, '2015-08-05 13:30:28', '0000-00-00 00:00:00'),
(115, 35, 56, 'followed comment', 1438781428, '2015-08-05 13:30:28', '0000-00-00 00:00:00'),
(116, 35, 57, 'commented', 1438781432, '2015-08-05 13:30:32', '0000-00-00 00:00:00'),
(117, 35, 57, 'followed comment', 1438781432, '2015-08-05 13:30:32', '0000-00-00 00:00:00'),
(118, 58, 31, 'asked', 1438858737, '2015-08-06 10:58:57', '0000-00-00 00:00:00'),
(119, 58, 31, 'followed question', 1438858737, '2015-08-06 10:58:57', '0000-00-00 00:00:00'),
(120, 35, 58, 'commented', 1438858774, '2015-08-06 10:59:34', '0000-00-00 00:00:00'),
(121, 35, 58, 'followed comment', 1438858774, '2015-08-06 10:59:34', '0000-00-00 00:00:00'),
(122, 35, 59, 'commented', 1438858805, '2015-08-06 11:00:05', '0000-00-00 00:00:00'),
(123, 35, 59, 'followed comment', 1438858805, '2015-08-06 11:00:05', '0000-00-00 00:00:00'),
(124, 35, 31, 'followed question', 1438858814, '2015-08-06 11:00:14', '0000-00-00 00:00:00'),
(125, 35, 31, 'unfollowed question', 1438858809, '2015-08-06 11:00:09', '0000-00-00 00:00:00'),
(126, 58, 31, 'updated question', 1438859003, '2015-08-06 11:03:23', '0000-00-00 00:00:00'),
(127, 35, 60, 'commented', 1438859096, '2015-08-06 11:04:56', '0000-00-00 00:00:00'),
(128, 35, 60, 'followed comment', 1438859096, '2015-08-06 11:04:56', '0000-00-00 00:00:00'),
(129, 20, 31, 'followed question', 1438863186, '2015-08-06 12:13:06', '0000-00-00 00:00:00'),
(130, 20, 61, 'commented', 1438863206, '2015-08-06 12:13:26', '0000-00-00 00:00:00'),
(131, 20, 61, 'followed comment', 1438863206, '2015-08-06 12:13:26', '0000-00-00 00:00:00'),
(132, 20, 62, 'commented', 1438863215, '2015-08-06 12:13:35', '0000-00-00 00:00:00'),
(133, 20, 62, 'followed comment', 1438863215, '2015-08-06 12:13:35', '0000-00-00 00:00:00'),
(134, 20, 63, 'commented', 1438863222, '2015-08-06 12:13:42', '0000-00-00 00:00:00'),
(135, 20, 63, 'followed comment', 1438863222, '2015-08-06 12:13:42', '0000-00-00 00:00:00'),
(136, 20, 64, 'commented', 1438863235, '2015-08-06 12:13:55', '0000-00-00 00:00:00'),
(137, 20, 64, 'followed comment', 1438863235, '2015-08-06 12:13:55', '0000-00-00 00:00:00'),
(138, 35, 32, 'asked', 1438863521, '2015-08-06 12:18:41', '0000-00-00 00:00:00'),
(139, 35, 32, 'followed question', 1438863521, '2015-08-06 12:18:41', '0000-00-00 00:00:00'),
(140, 20, 65, 'commented', 1438863606, '2015-08-06 12:20:06', '0000-00-00 00:00:00'),
(141, 20, 65, 'followed comment', 1438863606, '2015-08-06 12:20:06', '0000-00-00 00:00:00'),
(142, 20, 32, 'followed question', 1438863668, '2015-08-06 12:21:08', '0000-00-00 00:00:00'),
(143, 58, 66, 'commented', 1438863690, '2015-08-06 12:21:30', '0000-00-00 00:00:00'),
(144, 58, 66, 'followed comment', 1438863690, '2015-08-06 12:21:30', '0000-00-00 00:00:00'),
(145, 58, 32, 'followed question', 1438863931, '2015-08-06 12:25:31', '0000-00-00 00:00:00'),
(146, 20, 32, 'unfollowed question', 1438873032, '2015-08-06 14:57:12', '0000-00-00 00:00:00'),
(147, 35, 29, 'unfollowed question', 1438969337, '2015-08-07 17:42:17', '0000-00-00 00:00:00'),
(148, 35, 29, 'followed question', 1438969339, '2015-08-07 17:42:19', '0000-00-00 00:00:00'),
(149, 35, 33, 'asked', 1439222770, '2015-08-10 16:06:10', '0000-00-00 00:00:00'),
(150, 35, 33, 'followed question', 1439223480, '2015-08-10 16:18:00', '0000-00-00 00:00:00'),
(151, 35, 33, 'unfollowed question', 1439223478, '2015-08-10 16:17:58', '0000-00-00 00:00:00'),
(152, 4, 33, 'followed question', 1439228523, '2015-08-10 17:42:03', '0000-00-00 00:00:00'),
(153, 4, 33, 'unfollowed question', 1439228525, '2015-08-10 17:42:05', '0000-00-00 00:00:00'),
(154, 72, 34, 'asked', 1439559485, '2015-08-14 13:38:05', '0000-00-00 00:00:00'),
(155, 72, 34, 'followed question', 1439559485, '2015-08-14 13:38:05', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `userfiles`
--

INSERT INTO `userfiles` (`id`, `userId`, `location`, `name`, `type`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 52, '/profCertificates/1437484710OuVNah_Advizzy Remaining v.1.2.xlsx', 'Advizzy Remaining v.1.2.xlsx', 'professionalCertificates', 0, 0, '2015-07-23 04:08:07', '2015-07-21 19:22:18'),
(2, 52, '/profCertificates/1437484725FMGyeD_advizzySignupErrors.zip', 'advizzySignupErrors.zip', 'professionalCertificates', 0, 0, '2015-07-23 04:07:53', '2015-07-21 19:22:18'),
(3, 58, '/profCertificates/14375402166DAIvt_Penguins.jpg', 'Penguins.jpg', 'professionalCertificates', 0, 0, '2015-07-23 04:08:19', '2015-07-22 10:45:56'),
(4, 58, '/profCertificates/1437540274O65Kxn_hosts.txt', 'hosts.txt', 'professionalCertificates', 0, 0, '2015-07-23 04:08:31', '2015-07-22 10:45:57'),
(6, 58, '/profCertificates/1437631685cE9WH3_Advizzy Remaining v.1.2.xlsx', 'Advizzy Remaining v.1.2.xlsx', 'professionalCertificates', 0, 0, '2015-07-23 12:08:05', '2015-07-23 12:08:05'),
(7, 58, '/profCertificates/1437631702pF941C_BG_1.png', 'BG_1.png', 'professionalCertificates', 0, 0, '2015-07-23 12:08:22', '2015-07-23 12:08:22'),
(8, 58, '/profCertificates/1437635687Y5HaQy_Screenshot_2.png', 'Screenshot_2.png', 'professionalCertificates', 0, 0, '2015-07-23 13:14:47', '2015-07-23 13:14:47'),
(9, 58, '/profCertificates/1437636209buLLHB_hosts.txt', 'hosts.txt', 'professionalCertificates', 0, 0, '2015-07-23 13:23:29', '2015-07-23 13:23:29'),
(12, 58, '/profCertificates/14377337560LAqif_gray_avatar_lady.png', 'gray_avatar_lady.png', 'professionalCertificates', 0, 0, '2015-07-24 16:29:16', '2015-07-24 16:29:16'),
(13, 58, '/profCertificates/1437733766hkicfw_A.png', 'A.png', 'professionalCertificates', 0, 0, '2015-07-24 16:29:26', '2015-07-24 16:29:26'),
(14, 58, '/profCertificates/1437733821ogy0bR_BG_1.png', 'BG_1.png', 'professionalCertificates', 0, 0, '2015-07-24 16:30:21', '2015-07-24 16:30:21'),
(28, 20, '/profCertificates/1438064066gC2fLv_Screenshot_moved_hobby_section.png', 'Screenshot_moved_hobby_section.png', 'professionalCertificates', 0, 0, '2015-07-28 12:14:26', '2015-07-28 12:14:26'),
(29, 20, '/profCertificates/1438064091ssNnCJ_Screenshot_max_3_can_select.png', 'Screenshot_max_3_can_select.png', 'professionalCertificates', 0, 0, '2015-07-28 12:14:51', '2015-07-28 12:14:51'),
(30, 20, '/profCertificates/1438064129DoalqI_gemini_green.png', 'gemini_green.png', 'professionalCertificates', 0, 0, '2015-07-28 12:15:29', '2015-07-28 12:15:29'),
(31, 66, '/profCertificates/1438076846HUD4y0_Screenshot_change_text_of_button.png', 'Screenshot_change_text_of_button.png', 'professionalCertificates', 0, 0, '2015-07-28 15:59:40', '2015-07-28 15:59:40'),
(32, 66, '/profCertificates/1438076883hJCt9P_Screenshot_extention_check.png', 'Screenshot_extention_check.png', 'professionalCertificates', 0, 0, '2015-07-28 15:59:40', '2015-07-28 15:59:40'),
(33, 66, '/profCertificates/1438077422XNIkOC_Screenshot_extention_check.png', 'Screenshot_extention_check.png', 'professionalCertificates', 0, 0, '2015-07-28 15:59:40', '2015-07-28 15:59:40'),
(34, 68, '/profCertificates/1438173107XRfHGu_ADVIZZY.png', 'ADVIZZY.png', 'professionalCertificates', 0, 0, '2015-07-29 18:44:18', '2015-07-29 18:44:18'),
(35, 68, '/profCertificates/1438173359zzIxwp_Screenshot_register_step1_as_professional.png', 'Screenshot_register_step1_as_professional.png', 'professionalCertificates', 0, 0, '2015-07-29 18:44:18', '2015-07-29 18:44:18'),
(36, 68, '/profCertificates/1438173373U66xKK_Screenshot_warnings_with_remaining_document_number.png', 'Screenshot_warnings_with_remaining_document_number.png', 'professionalCertificates', 0, 0, '2015-07-29 18:44:18', '2015-07-29 18:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `usernotifications`
--

DROP TABLE IF EXISTS `usernotifications`;
CREATE TABLE IF NOT EXISTS `usernotifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `type` varchar(500) NOT NULL,
  `notifyToUser` bigint(20) NOT NULL,
  `typeId` bigint(20) NOT NULL,
  `unRead` tinyint(1) NOT NULL,
  `epochCreatedAt` bigint(20) NOT NULL,
  `epochUpdatedAt` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `notifyToUser` (`notifyToUser`),
  KEY `notifyToUser_2` (`notifyToUser`),
  KEY `notifyToUser_3` (`notifyToUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `usernotifications`
--

INSERT INTO `usernotifications` (`id`, `userId`, `type`, `notifyToUser`, `typeId`, `unRead`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(26, 35, 'commented', 20, 29, 0, 1438680507, 0, '2015-08-04 09:29:21', '0000-00-00 00:00:00'),
(27, 20, 'commented', 35, 30, 0, 1438680599, 0, '2015-08-04 09:31:57', '0000-00-00 00:00:00'),
(28, 20, 'commented', 35, 31, 0, 1438680774, 0, '2015-08-04 09:35:52', '0000-00-00 00:00:00'),
(29, 20, 'commented', 35, 32, 0, 1438680825, 0, '2015-08-04 09:35:58', '0000-00-00 00:00:00'),
(30, 20, 'commented', 35, 33, 0, 1438680899, 0, '2015-08-04 09:36:03', '0000-00-00 00:00:00'),
(31, 35, 'commented', 20, 34, 0, 1438680941, 0, '2015-08-04 09:42:06', '0000-00-00 00:00:00'),
(32, 35, 'commented', 20, 35, 0, 1438681298, 0, '2015-08-04 09:42:10', '0000-00-00 00:00:00'),
(33, 20, 'commented', 35, 36, 0, 1438681345, 0, '2015-08-04 09:50:16', '0000-00-00 00:00:00'),
(34, 20, 'commented', 35, 37, 0, 1438681810, 0, '2015-08-04 10:03:26', '0000-00-00 00:00:00'),
(35, 35, 'updated question', 20, 29, 0, 1438682238, 0, '2015-08-04 10:05:45', '0000-00-00 00:00:00'),
(36, 20, 'commented', 35, 38, 0, 1438682777, 0, '2015-08-04 10:06:24', '0000-00-00 00:00:00'),
(37, 35, 'commented', 20, 39, 0, 1438682821, 0, '2015-08-04 10:07:11', '0000-00-00 00:00:00'),
(38, 20, 'commented', 35, 40, 0, 1438682889, 0, '2015-08-04 10:08:18', '0000-00-00 00:00:00'),
(39, 20, 'commented', 35, 41, 0, 1438684196, 0, '2015-08-04 10:30:41', '0000-00-00 00:00:00'),
(40, 35, 'commented', 20, 42, 0, 1438684282, 0, '2015-08-04 10:31:36', '0000-00-00 00:00:00'),
(41, 20, 'commented', 35, 43, 0, 1438684349, 0, '2015-08-04 10:32:37', '0000-00-00 00:00:00'),
(42, 35, 'commented', 20, 44, 0, 1438684606, 0, '2015-08-04 10:36:55', '0000-00-00 00:00:00'),
(43, 20, 'commented', 35, 45, 0, 1438684641, 0, '2015-08-04 10:38:52', '0000-00-00 00:00:00'),
(44, 58, 'commented', 35, 46, 0, 1438685920, 0, '2015-08-04 10:58:54', '0000-00-00 00:00:00'),
(45, 58, 'commented', 20, 46, 0, 1438685920, 0, '2015-08-04 11:26:22', '0000-00-00 00:00:00'),
(46, 58, 'commented', 20, 47, 0, 1438686000, 0, '2015-08-04 14:08:11', '0000-00-00 00:00:00'),
(47, 35, 'commented', 20, 48, 0, 1438686071, 0, '2015-08-04 11:29:25', '0000-00-00 00:00:00'),
(48, 35, 'commented', 58, 48, 0, 1438686071, 0, '2015-08-04 11:02:11', '0000-00-00 00:00:00'),
(49, 58, 'commented', 35, 49, 0, 1438686174, 0, '2015-08-04 11:03:22', '0000-00-00 00:00:00'),
(50, 58, 'commented', 20, 49, 0, 1438686174, 0, '2015-08-04 11:28:21', '0000-00-00 00:00:00'),
(51, 58, 'commented', 35, 50, 0, 1438686250, 0, '2015-08-04 11:04:25', '0000-00-00 00:00:00'),
(52, 58, 'commented', 20, 50, 0, 1438686250, 0, '2015-08-04 11:29:41', '0000-00-00 00:00:00'),
(53, 58, 'commented', 35, 51, 0, 1438686289, 0, '2015-08-04 11:08:56', '0000-00-00 00:00:00'),
(54, 58, 'commented', 20, 51, 0, 1438686289, 0, '2015-08-04 11:28:11', '0000-00-00 00:00:00'),
(55, 58, 'commented', 35, 52, 0, 1438686448, 0, '2015-08-04 11:08:33', '0000-00-00 00:00:00'),
(56, 58, 'commented', 20, 52, 0, 1438686448, 0, '2015-08-04 11:27:53', '0000-00-00 00:00:00'),
(57, 20, 'commented', 35, 53, 0, 1438697015, 0, '2015-08-04 14:03:41', '0000-00-00 00:00:00'),
(58, 20, 'commented', 58, 53, 0, 1438697015, 0, '2015-08-05 12:32:23', '0000-00-00 00:00:00'),
(59, 35, 'commented', 20, 54, 0, 1438697264, 0, '2015-08-04 14:08:04', '0000-00-00 00:00:00'),
(60, 35, 'commented', 58, 54, 0, 1438697264, 0, '2015-08-05 12:32:23', '0000-00-00 00:00:00'),
(61, 35, 'commented', 20, 56, 0, 1438781428, 0, '2015-08-05 13:31:20', '0000-00-00 00:00:00'),
(62, 35, 'commented', 20, 57, 0, 1438781432, 0, '2015-08-05 13:31:20', '0000-00-00 00:00:00'),
(63, 35, 'commented', 58, 57, 0, 1438781432, 0, '2015-08-06 11:01:09', '0000-00-00 00:00:00'),
(64, 35, 'commented', 58, 58, 0, 1438858774, 0, '2015-08-06 11:01:09', '0000-00-00 00:00:00'),
(65, 35, 'commented', 58, 59, 0, 1438858805, 0, '2015-08-06 11:01:09', '0000-00-00 00:00:00'),
(66, 58, 'updated question', 35, 31, 0, 1438859003, 0, '2015-08-06 11:13:14', '0000-00-00 00:00:00'),
(67, 35, 'commented', 58, 60, 0, 1438859096, 0, '2015-08-06 11:05:16', '0000-00-00 00:00:00'),
(68, 20, 'commented', 58, 61, 1, 1438863206, 0, '2015-08-06 12:13:26', '0000-00-00 00:00:00'),
(69, 20, 'commented', 35, 61, 0, 1438863206, 0, '2015-08-07 13:05:46', '0000-00-00 00:00:00'),
(70, 20, 'commented', 35, 62, 0, 1438863215, 0, '2015-08-07 17:41:39', '0000-00-00 00:00:00'),
(71, 20, 'commented', 35, 63, 0, 1438863222, 0, '2015-08-07 13:06:08', '0000-00-00 00:00:00'),
(72, 20, 'commented', 58, 63, 1, 1438863222, 0, '2015-08-06 12:13:42', '0000-00-00 00:00:00'),
(73, 20, 'commented', 58, 64, 1, 1438863235, 0, '2015-08-06 12:13:55', '0000-00-00 00:00:00'),
(74, 20, 'commented', 35, 64, 0, 1438863235, 0, '2015-08-07 18:07:37', '0000-00-00 00:00:00'),
(75, 20, 'commented', 35, 65, 0, 1438863606, 0, '2015-08-07 18:08:01', '0000-00-00 00:00:00'),
(76, 58, 'commented', 35, 66, 0, 1438863690, 0, '2015-08-06 12:21:48', '0000-00-00 00:00:00'),
(77, 58, 'commented', 20, 66, 0, 1438863690, 0, '2015-08-06 14:52:43', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `eMail`, `uName`, `fName`, `lName`, `password`, `myAvatar`, `credits`, `telephone`, `gender`, `dob`, `city`, `careerPosition`, `familyOrientation`, `incomeLevel`, `hobby`, `country`, `careerIndustry`, `educationLevel`, `ethnic`, `values`, `goals`, `astrology`, `active`, `role`, `designation`, `address1`, `address2`, `eMail2`, `postalCode`, `province`, `digestFrequency`, `maxRequest`, `contactPreference`, `resetLink`, `remember_token`, `epochCreatedAt`, `epochUpdatedAt`, `created_at`, `updated_at`) VALUES
(1, 'bhaskar.rajoriya1@gyrix.co', 'bhaskar1', 'Bhaskar', 'Rajoriya', '$2y$10$mVCaNXsQBx713urZ2PhH7ub9/hHXw3F0vwiH/2YDTz6ThAm34SBUG', 'http://advizzy.gyrix.co/img/avatars/5_avatar_02.png', 0, '08817778900', 'Male', '', 'indore', '', '', '', '', '', '', '', '', '', '', 'sagittarius', 1, 3, 'Mr', 'here is my home', 'near to this apartment', 'brn.rajoriya@gmail.com', 452011, 'Madhya Pradesh', 'thrice', 51, 'yes', '', 'YwdIgjQn8g7sGT02Yufofn4GgPVQ1PEByZpmf9bf5guvWZt5b0ZKcX3nYFcp', 0, 0, '2015-08-14 13:42:42', '2015-08-14 19:42:42'),
(3, 'anshika.agrawal@gyrix.co', 'anshi', 'Anshika', 'Agrawal', '$2y$10$GTvXRhLgII9LUtQrPUSpWuzbC59jG9oEY0dU0eoAaruMkobdhk5la', 'http://advizzy.gyrix.co/img/avatars/5_avatar_03.png', 0, '(987) 654-3210', 'Female', '08/29/1992', 'corner_brook', 'ceo', 'confused', '35_60', 'quad_copter', 'canada', '', 'shark', '', 'Value1,Value2,Value4,Value7', 'Goal3,Goal4,Goal6', 'aries', 1, 1, '', 'here is my home', 'near to this apartment', 'anshi@gmail.com', 452001, 'Madhya Pradesh', 'thrice', 90, 'yes', '', '0df41da', 0, 0, '2015-05-25 12:27:12', '2015-05-25 18:26:34'),
(4, 'kdionne@kpdi.ca', 'kdionne', 'Testy', 'Tester', '$2y$10$eHz8s0dFhU3hAfpxLYgrm.7QK8UKd7TaTPrTIYAI4nbQDERkzC0FS', 'http://advizzy.gyrix.co/img/avatars/5_avatar_02.png', 0, '(416) 720-4695', 'Male', '08/09/1922', 'new_york', 'entry_level', 'confused', '0_20', 'musician', 'usa', '', 'shark', '', 'Value4', 'Goal7', 'scorpio', 1, 1, '', '', '', '', 0, '', '', 0, '', '', 'Np2uWva5UoeRgf4xHKwrRui0Vf0bZT791x0We0kIp6g8MIHKyzb7KBV7JerA', 0, 0, '2015-07-28 04:15:26', '2015-07-28 10:15:26'),
(5, 'carolinewatson78@gmail.com', 'Caroline', 'Caroline', 'Watson', '$2y$10$ue7qsxce3FOP7wF6bTsMkuwtHTMvAT2PxoQ8mrmBG3Z450Q2e7nCa', 'img/gray_avatar_lady.png', 0, '(416) 787-9287', 'Female', '06/20/78', 'new_york', 'entry_level', 'option_1', '0_20', 'musician', 'canada', '', 'cat', '', 'Value3', 'Goal6', 'gemini', 0, 1, '', '', '', '', 0, '', '', 0, '', '', '80mEcxZzV8fgHlay4VBpKuZDyVi5xROpnNmAgZr9Hzx5mBWMGeg1lw0Cdc8A', 0, 0, '2015-05-26 17:45:12', '2015-05-26 23:45:12'),
(6, 'cwatson@kpd-i.com', 'cwatson', 'Caroline', 'Watson', '$2y$10$tZUafDB11t/b.itcEIV5bOpEfO5WMS2k8L1MfJ2bUdbBVB5nWozgy', 'img/gray_avatar_lady.png', 0, '(416) 787-9287', 'Female', '06/20/78', 'new_york', 'entry_level', 'option_1', '0_20', 'musician', 'canada', '', 'shark', '', 'Value4', 'Goal5', 'gemini', 1, 1, '', '', '', '', 0, '', '', 0, '', '', '0a18f7b', 0, 0, '2015-05-26 19:17:12', '2015-05-27 01:17:12'),
(7, 'jasminedo@me.com', 'jdoe', 'Jasmine', 'Do', '$2y$10$UVA3GFh/hx/cKWlmg5uq6u5z/zn5H/u3y31J4sMte9MS3IELq/jfG', 'img/gray_avatar_lady.png', 0, '(421) 555-5555', 'Female', '06/20/78', '', 'entry_level', 'option_1', '', '', '', '', 'shark', '', '', '', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '', 'BMc7KPTmJowJopfZVOIyDXy9E6vkS37NDQRovVjjMZjjMM6VabOloFVHRsf1', 0, 0, '2015-05-27 18:01:18', '2015-05-28 00:01:18'),
(11, 'info@kpdi.ca', 'testy.tester', 'Testy', 'Tester', '$2y$10$TYAt86.7.uSKYUTWXXENYOMI2Rq64769wcQMOO/7GdTCSBCwEfNCq', 'http://advizzy.gyrix.co/img/avatars/5_avatar_09.png', 0, '(416) 720-4695', 'Male', '06/02/67', 'new_york', 'entry_level', 'confused', '0_20', 'musician', 'usa', '', 'shark', '', 'Value6', 'Goal1', '', 0, 1, '', '', '', '', 0, '', '', 0, '', 'Nja8I3KEXLlKmIOiD0AKinyK0sGRQQu4eAm4X2Pk4iepxVPnR5K0BTVi4O9W', 'Nja8I3KEXLlKmIOiD0AKinyK0sGRQQu4eAm4X2Pk4iepxVPnR5K0BTVi4O9W', 0, 0, '2015-06-09 11:48:12', '2015-06-02 23:40:37'),
(14, 'gablu1@gyrix.co', 'gablu1', 'gablu', 'example', '$2y$10$ydN9bd/oN1gIzLVAED/TqOj1.RJluM4DwB9ik59UB/OppTNCJK/ge', 'img/gray_avatar_lady.png', 0, '(987) 654-3210', 'Male', '09/08/1992', 'corner_brook', '', 'option_2', '', 'quad_copter', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', 'twice', 72, 'yes', '', 'aiz3zwYpXc4VZWMbDOekGCw19zbCc5juAIpRcTnIqP8FemeNE4n07BsFmwdJ', 0, 0, '2015-06-09 13:15:56', '2015-06-09 19:15:56'),
(18, 'bhaskar.rajoriyaa@gyrix.co', 'bhaskara', 'Bhaskar', 'Rajoriya', '$2y$10$FgXb/bMxeqg1/9YzEU9ax.VYYyFJ.Gv1peTzoF46vnc/57qNen61e', 'img/gray_avatar_lady.png', 0, '08817778900', 'Male', '09/08/1992', 'indore', 'ceo', 'option_3', '', 'quad_copter', 'canada', '', 'shark', '', 'Value5', 'Goal7', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '9621eef2b391714f995b', 'kd0IbZp7uYplMvJUsjrx85AKh4MbtFghTrgg0aGCsZ4HbDxBohivFJdp4FVu', 0, 0, '2015-06-10 06:52:58', '2015-06-10 12:52:58'),
(19, 'chris@fullstackinc.com', 'cdesousa', 'Chris', 'DeSousa', '$2y$10$4EPJbQIOK5anxV0c8N1gBOM4VwNzoXfSYAZd1GaAMut/KusQjDtkm', 'img/gray_avatar_lady.png', 0, '(416) 888-6775', 'Female', '06201978', 'Toronto', '', '', '', '', 'canada', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '03680d6a17a1c955c394', 'eD0GHa5ci6M6jKW9fhCvnQrTCkI7LH8ttShFc1o0ogtYM15nOBhaWQJYk9wS', 0, 0, '2015-07-02 15:55:32', '2015-07-02 21:55:32'),
(20, 'ankur.tiwari@gyrix.co', '', 'Ankur', 'Tiwari', '$2y$10$EwApInIGw0jyqFULlntMu.VykY3eenQ0uql1/LbWwrckOTBG63AGG', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', 'thrice', 78, 'no', '55fff4ad43b86b51fab1', 'g3cEfxjFjMbNieO9sE4pFlhFIdTFjagV93b5KdYKPElHRGErymoVfppfv0rR', 0, 0, '2015-08-14 13:42:23', '2015-08-14 19:42:23'),
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
(35, 'bhaskar.rajoriya@gyrix.co', 'bhaskar', 'Bhaskar', 'Rajoriya', '$2y$10$z5Z8NrogJSB2f/M85Ui2L.CALXqHjNMe.98puiAoAg5.F/IcuLK..', 'http://advizzy.gyrix.co/img/avatars/5_avatar_39.png', 15, '(881) 777-8900', 'Male', '09/08/1992', 'indore', 'employeeEntryLevel', 'single', '0To23000', 'writingBlogging,musicMusicalInstruments,golfing,joggingWalking,horsebackRiding,yoga,teamSports,cardGames,dinner,movies,ballroomDancing,volunteering,photography,scrapbooking,drawing,painting,pottery,antiques,postcards,genealogy,hiking,natureWalks,birdWatching,hunting,fishing,cooking,baking', 'IN', '', 'bachelorDegree', 'Asian', '', 'education,happiness,freeTime', '', 1, 1, 'Ms', '', '', '', 0, '', '', 100, 'yes', 'a778b1860e510a5bffc4', 'iP63kMsCH17gBtNvqxriI81A8hzSzA0N5waAo0sqoR9nABNvgV2JETYwDUK8', 0, 0, '2015-08-14 14:01:47', '2015-08-14 20:01:47'),
(36, 'vinod@gyrix.co', 'vinod', 'vinod', 'kirte', '$2y$10$7E6ZoGUlSo3rGSgIug2C3u8ywnBhQa/Dg1WntNiOM/GilpCY9diXi', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', 'Male', '', 'indore', 'employeeEntryLevel', 'single', '0To23000', 'birdWatching', 'IN', '', 'bachelorDegree', 'Asian', '', 'achievement,education,travel', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '18e7b68e74260b7cec61', 'DRLGg5BGa3r8qITsyid78IKnpPnUXjKsTtXiagi5ApYXhKVijklVQUADJC6B', 0, 0, '2015-07-14 13:22:00', '2015-07-14 19:22:00'),
(37, 'vinod.kirte@gyrix.co', 'vinod1', 'vinod', 'kirte', '$2y$10$/9s1SeZh6ZXlXdOwb4Fv/.2WGH871gfmq.gmywUBeoXKwRZA38hjO', 'img/gray_avatar_lady.png', 0, '', 'Male', '', 'indore', 'stayAtHomeParent', 'married', '23001To39000', 'foreignLanguageStudy,reading,writingBlogging,musicMusicalInstruments', 'AX', '', 'masterDegree', 'Native American', '', 'independence,achievement,education', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '29d66e39057397c5157b', '', 0, 0, '2015-07-14 13:26:01', '0000-00-00 00:00:00'),
(41, 'contact@gyrix.co', '', 'Brad', 'Cooper', '$2y$10$Heo2Fe9/sz08LvO8ZF7jZeEX5PY7ai9QmiKomAB7yMVZtR6xexZq.', 'img/gray_avatar_lady.png', 0, '', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', 'b9fd69d8324846d24f40', 'n7FekRc8qpTgTKwUQHQALceL78WcO3wumiCO2qqdmW7nasKOIVmZn7wKCx8q', 0, 0, '2015-07-17 04:56:29', '2015-07-17 10:56:29'),
(42, 'brn.rajoriya@gmail.com', '', 'Bhaskar', 'Rajoriya', '', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', 'twice', 56, 'no', 'eef41b124ef5ed0bd395', 'I1RJHGT6LDPDj0b0QxnSmibgdia2qp3HyWypqWfjEZONeJ7GmZEixOAVTBQW', 0, 0, '2015-07-17 11:04:37', '2015-07-17 17:04:37'),
(43, 'honeyhoney.sing@gmail.com', '', 'Ravi', 'Purohit', '', 'img/gray_avatar_lady.png', 0, '', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '2395678b90bc528560c5', 'R4Ic8Xq4BgDoyQVnanAHnMUo39Vc0oueDgYnKVlY7tsrN6cr28S30J0B64rz', 0, 0, '2015-07-16 12:57:26', '2015-07-16 18:57:26'),
(44, 'kunal@gyrix.co', '', 'Akshay', 'Khan', '', 'img/gray_avatar_lady.png', 0, '', 'male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '719cc5991f93bd4489f1', 'f7ikCmP31aA9D7QNVmMtSqSfi4DVkPQsioCHn74aaFZeie846sqHAITCFZDQ', 0, 0, '2015-07-17 04:14:24', '2015-07-17 10:14:24'),
(45, 'tiwariankur77@gmail.com', '', 'Ankur', 'Tiwari', '', 'img/gray_avatar_lady.png', 0, '9826423503', '', '', 'Indore Area, India', '', '', '', '', 'IN', '', '', '', '', '', '', 1, 1, '', '6658/18 meghdoot nagar, indore', '', '', 452010, '', 'once', 91, 'yes', 'd5ec6be7acf1fa61e1a6', 'li3X5nODKV993oNjCjcqLvxbqnofux8PLYVTYjJkHZTBJz4kXh8Szw1YzhOb', 0, 0, '2015-07-17 11:15:34', '2015-07-17 17:15:34'),
(46, 'kdionne@kpd-i.com', '', 'Karl', 'Dionne', '', 'img/gray_avatar_lady.png', 0, '', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', 'dbe600e468eed5e5455b', '', 0, 0, '2015-07-17 13:23:55', '0000-00-00 00:00:00'),
(47, 'mahendralokhande93@gmail.com', '', 'Mahendra', 'Lokhande', '', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 0, '', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 'Mr', '', '', '', 0, '', '', 85, 'yes', 'a5ab2bb48f8340ad6b34', 'XnJkhIhJ9EBxMCqkr45AbqiQEd1QQgXKSLXFxPMdSVZro7ynkgYruQkb8it2', 0, 0, '2015-07-29 15:30:57', '2015-07-29 21:30:57'),
(50, 'rrdhanuka@gmail.com', '', 'Richa', 'Agrawal', '', 'img/gray_avatar_lady.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '0e11a6f12115458698ea', 'FQaPhUEq4TI8lo15RZHwr3DQurTKJahX1KrjkNzurkyO2Wo84XDbSK9wl5Il', 0, 0, '2015-07-21 04:04:24', '2015-07-21 10:04:24'),
(51, 'abhaskar.rajoriya@gyrix.co', '', 'Bhaskar', 'Rajoriya', '$2y$10$.phxyofrf4n1gLvBHUdUdesv5piy/VJWxX7DF.ilrmCGTiUayXUAW', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', '', 0, '', '6722d6e340f2b3613b0f', 's6NiqDhLlJCJQFDFaiJff5PTx55ddPJygWXXakEIHV5eIPOwe44g9O7dfj1n', 0, 0, '2015-07-29 12:26:38', '2015-07-29 18:26:38'),
(52, 'abhaskar.rajoriya@gyrix.co', '', 'Bhaskar', 'Rajoriya', '$2y$10$mVCaNXsQBx713urZ2PhH7ub9/hHXw3F0vwiH/2YDTz6ThAm34SBUG', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', '', 0, '', '10551fed6c7cb8e7519a', '', 0, 0, '2015-07-24 06:43:35', '2015-07-24 12:43:35'),
(53, 'manav@gmail.co', 'mnv', 'manava', 'aroras', '$2y$10$8dG2e15P9kBiPDj.rp5Scei.NdGWFLL2jmryZ7EbiJCMCcD38mkQW', 'img/gray_avatar_lady.png', 0, '(123) 456-8545', 'Male', '', 'indore', 'unemployed', 'single', '23001To39000', 'foreignLanguageStudy', 'IN', '', 'highSchool', 'Asian', '', 'independence', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '4a52ee5df44befe13808', 'LVgKHu0Y4hPDpxFT6g4x1YSXyNqI9kh0fnvRDtrOHQqcLVy7opHtD2OATc6S', 0, 0, '2015-07-21 14:19:49', '2015-07-21 20:19:49'),
(54, 'bagley.nigel@gmail.com', '', 'Nigel', 'Bagley', '$2y$10$/C.7TnvAUgDs0gQ5Hx1eG.JRZaPYm.b2UpEiDCSMZXcStqWYJhF06', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '4167959316', 'MALE', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 'Mr', '88 Erskine Avenu', '120 Eglinton Avenue East', '', 0, 'Ontario', '', 100, 'no', 'e2f921ce71468192f0ad', '8qIsx790Kz0o5o2lLPqH5RFw2LRj03tVrvPYQTEuFkTI8ZSKvm5EVGCQwzhW', 0, 0, '2015-07-22 16:38:26', '2015-07-22 22:38:26'),
(55, 'nbagley@kpd-i.com', '', 'Nigel', 'Bagley', '', 'img/gray_avatar_lady.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '025d2850281d86f09cd5', '', 0, 0, '2015-07-21 19:02:43', '0000-00-00 00:00:00'),
(56, 'bagley.nigel@gmail.com', '', 'Nigel', 'Bagley', '', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', '', '', 'Toronto, Canada Area', '', '', '', '', 'CA', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, 'no', '4962cf5f9434854ffe56', '', 0, 0, '2015-07-21 19:30:32', '0000-00-00 00:00:00'),
(57, 'manavarora_001@yahoo.com', '', 'manav', 'arora', '', 'img/gray_avatar_lady.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 0, '', 'a78ed912f9795034778f', '', 0, 0, '2015-07-22 04:29:34', '0000-00-00 00:00:00'),
(58, 'arpita.hunka@gyrix.co', '', 'arpita', 'hunka', '$2y$10$X30zjqZAMd5zISQYWYyPeObSV8/j/baE/lIfE9p3Ix5vjf4mNVh1.', 'http://advizzy.gyrix.co/img/avatars/5_avatar_09.png', 0, '(455) 541-5146', '', '', 'indore', '', '', '', '', '', '', '', '', '', '', '', 1, 2, 'Ms', '', '', '', 0, 'Madhya Pradesh', '', 24, 'no', 'ca76d5de5b963930f465', 'BaLJkGvZdzUVAtuksBHv8FKHlP4PeFCk7VoD4YzfgPqeWtvkJSeKoAlCwH0p', 0, 0, '2015-08-12 09:36:13', '2015-08-12 15:36:13'),
(59, 'cwatson@kpdi.ca', 'bunnyfoofoo', 'Caroline', 'Watson', '$2y$10$RE/T.p.buSgJ7dKvNSKHxOsjUrq0QOg4bZNn0nzxKAirUBDGxdm1y', 'http://advizzy.gyrix.co/img/avatars/5_avatar_01.png', 0, '', 'Female', '06/20/78', 'Toronto', 'employeeSeniorLevel', 'marriedWithChildren', '250001Plus', 'yoga', 'CA', '', 'bachelorDegree', 'White', '', 'family', '', 1, 1, '', '', '', '', 0, '', '', 0, '', '7ff7d54319419215b7ca', '', 0, 0, '2015-07-22 18:18:06', '2015-07-23 00:18:06'),
(60, 'nbagley@kpdi.ca', '', 'Nigel', 'Bagley', '$2y$10$sGGllUtrnkDXkiUZN5vNa.JmtcMT7rzD8Qozph6w4ilvQ7UyOISGG', 'http://advizzy.gyrix.co/img/avatars/5_avatar_06.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '', '', '', '', 0, '', '', 0, '', 'f553a5f2a0cb85f22623', '', 0, 0, '2015-07-22 17:20:48', '2015-07-22 23:20:48'),
(61, 'karl@kpdi.ca', 'kdionne2646', 'Karl', 'Dionne', '$2y$10$rkBxY8AR1/bMABmeozH9oOI.7Ul.IlKcuKsmouWb8NWoiNBs0TgbK', '"http://advizzy.gyrix.co/img/avatars/5_avatar_10.png"', 0, '(416) 720-9382', 'Male', '', 'Toronto', 'unemployed', '', '0To23000', 'foreignLanguageStudy,musicMusicalInstruments,dinner', 'CA', '', 'bachelorDegree', '', '', 'education,contributionCharity,health', '', 0, 1, '', '', '', '', 0, '', '', 0, '', 'ae328f6de86381eecfe9', 'Aldb3fRjUmm01gjyzYl8mAjZMOBhVJzqEmEnijwRk3T4IMZZm0FYNYa6ddbo', 0, 0, '2015-07-23 18:51:19', '2015-07-24 00:51:19'),
(62, 'mnv@gyrix.co', 'arora', 'abc', 'bcda ', '$2y$10$aTnvho7CrE5EkOcFhAzZyuz9beFaBqBUDBX7pzLcmnxPJs.qeQX12', 'http://advizzy.gyrix.co/img/avatars/5_avatar_10.png', 0, '(789) 456-4512', 'Male', '01/05/1992', 'indore', 'unemployed', 'single', '0To23000', 'foreignLanguageStudy,reading', 'GI', '', '', 'Asian', '', 'religionSpirituality,independence,achievement', '', 1, 1, 'Mr', '', '', '', 0, '', '', 68, 'no', '0d786546c76eabdc61eb', '5qg1lmtgtmPOICFTww7wzE2DrXImcvMOoGtefugjkIofqX9jfOvLdlAUK8dK', 0, 0, '2015-07-24 13:28:01', '2015-07-24 19:28:01'),
(63, 'manav.arora@gyrix.co', 'manav123', 'manav', 'arora', '$2y$10$/5PXKhfvliVPbuJ3MMc/3uo42fZOpbyQhqmq3hcglVBxEDo6yCFOq', 'http://advizzy.gyrix.co/img/avatars/5_avatar_02.png', 0, '', 'Male', '', '', '', '', '', 'foreignLanguageStudy', '', '', '', 'Native American', '', 'independence', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '82245ad402f0a8d1d03a', '', 0, 0, '2015-07-24 11:55:09', '0000-00-00 00:00:00'),
(64, 'bhaskarfff.rajoriya@gyrix.co', 'rajoriya.bhaskarfff', 'Bhaskar', 'Rajoriya', '$2y$10$mVCaNXsQBx713urZ2PhH7ub9/hHXw3F0vwiH/2YDTz6ThAm34SBUG', 'img/gray_avatar_lady.png', 0, '(881) 777-8900', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '0fd39447d896c785ebca', 'Z3AhoBL5xZPfwz7RyewGeTcmzRBVoTczbRNyMDRFwDfnTjGeRJeBrtOBnLe2', 0, 0, '2015-07-28 06:09:27', '2015-07-28 12:09:27'),
(65, 'bhaskar.rajoriya@gyrix.coo', 'bhaskaroo', 'Bhaskar', 'Rajoriya', '$2y$10$w3ARxKJurS3C1G4zYho1EOgyRWPZ/aVHdnMOAWAqH/e1f1vcsFK4y', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 0, '(088) 177-7890', 'Male', '', '', '', '', '', 'reading,writingBlogging,horsebackRiding', '', '', '', '', '', 'education,contributionCharity,health', '', 0, 1, '', '', '', '', 0, '', '', 0, '', 'e394a20b2859f3f9c920', 'DyxEkE4nAuuuNOEVc0tsszAefMcAPVogxnvmQXGMarhazUj7zkAdULiqElfg', 0, 0, '2015-07-28 06:03:36', '2015-07-28 12:03:36'),
(66, 'bhayaji.dude@gyrix.co', '', 'bhayaji', 'dude', '$2y$10$N/4PXO0ugxefiDaWGk25SOXyePGVdQZQ0mzjhrQ.PSP4z1xGQH92K', 'img/gray_avatar_lady.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, '', '', '', '', 0, '', '', 0, '', '3a0df562b2343a5879ae', 'rWcPbE9zciZNWYhpEvOd14vzWpvGhNudyRdbljpQGAevkYTZO3OoaL531w0Z', 0, 0, '2015-07-28 10:57:37', '2015-07-28 16:57:37'),
(67, 'cjw@hotmail.com', 'caro', 'Jane', 'Watson', '$2y$10$hKYzf9jMRcAQ79durV9swuO1kSK8LaFSo5O/SNtEUdewGXG7pVMmK', 'img/gray_avatar_lady.png', 0, '', 'Female', '', 'Toronto', 'student', 'single', '39001To60000', 'writingBlogging,joggingWalking,cardGames', 'CA', '', 'highSchool', 'Pacific Islander', '', 'religionSpirituality,health,family', '', 0, 1, '', '', '', '', 0, '', '', 0, '', '8fdb1e920c2590147afc', 'pjzjdPriPskNdTZNeVBRu129CdtsLvGUh7wHghaFMji96REdsLxLgeHpI7qR', 0, 0, '2015-07-28 18:26:10', '2015-07-29 00:26:10'),
(68, 'ssbhaskar.rajoriya@gyrix.co', '', 'Bhaskar', 'Rajoriya', '$2y$10$9MCxK0uSs6fIKMS/WdkNsOFvcaC/l4rCMHg6GQOYKTmPXEPJSFUUK', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, '', '', '', '', 0, '', '', 100, '', 'f65e69791d29308d8dd0', 'MqiI91CVByEHYQeJqKogKfdrHs5fdYjwwQGmV3qAQ4jh3aAvvT4i4qkK9xxQ', 0, 0, '2015-07-29 12:53:25', '2015-07-29 18:53:24'),
(69, 'dob@gyrix.co', 'dob', 'Bhaskar', 'Rajoriya', '$2y$10$/Tyf88zzimwXdd8WJNdwwOOupH1946p1oYfkFSHMvcIl9Sjl/z.cS', 'http://advizzy.gyrix.co/img/avatars/5_avatar_12.png', 0, '(881) 777-8900', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '59b33a704aaeec45a09b', 'qKqtibnYyfb9kij9di4uo8a8s5j2Xoc9oIp8CuTUPiK79YfPHxdnkjdvAWbr', 0, 0, '2015-07-30 12:49:18', '2015-07-30 18:49:18'),
(70, 'manav1.arora1@gyrix.co', 'manav12', 'manav', 'arora', '$2y$10$vhY1aEuj8EpTE5ekxGruxOwX9V8FameoC3DzcxnR8.RSWaUUN93Zu', 'img/gray_avatar_lady.png', 0, '', 'Male', '02/26/1989', '', 'student', 'single', '0To23000', 'joggingWalking', 'AF', '', 'collegeDegree', 'Native American', '', 'education', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '3a6f61c38ea7a0375238', '', 0, 0, '2015-07-31 08:29:36', '2015-07-31 14:29:36'),
(71, 'sfright@kpd-i.com', 'frighter', 'Shane', 'Fright', '$2y$10$U.UZNeB97LCCRhuBpWUhmeR4Viws5Yvx8MaX06l65g4cUKr3gaNMO', 'img/gray_avatar_lady.png', 0, '(416) 738-8086', 'Female', '04/06/2012', 'torontoc', 'consultant', 'marriedWithChildren', '60001To89000', 'golfing', 'KH', '', 'collegeDegree', 'African American', '', 'friendships', '', 0, 1, '', '', '', '', 0, '', '', 100, '', 'b579515eb31b661de86b', '', 0, 0, '2015-08-14 04:28:24', '0000-00-00 00:00:00'),
(72, 'newbhaskar@gyrix.co', 'newBhaskar', 'Bhaskar', 'Rajoriya', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '(881) 777-8900', 'Male', '09/08/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'MBV58B8rSJvLK1lc5vs40J9nRIVXGN6LXwqaAB6gSlw5CDKRD5635Kupola7', 0, 0, '2015-08-14 13:52:17', '2015-08-14 19:52:17'),
(73, 'newankur@gyrix.co', 'newAnkur', 'Ankur', 'Tiwari', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Male', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'zrBZTRW9UyVHXXQE9sO7E3uKHXLIlBUsSfppa3eznHylNuVE5lGegJnyWVZM', 0, 0, '2015-08-14 13:38:37', '2015-08-14 19:38:37'),
(74, 'newarpita@gyrix.co', 'newarpita', 'Arpita', 'Hunka', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Female', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'C4W9Ib3fvk4crgrX9rZGqvaPRqmWqiHnWDmYX7OfUZ4vUpAAoUcoqYBTkNLX', 0, 0, '2015-08-14 12:33:27', '2015-08-14 07:03:27'),
(75, 'newram@gyrix.co', 'newRam', 'Ram', 'Tiwari', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Male', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', '8LKSMf5BfoLogCDYAA8cB7nsqHXgEBFzCTvsWA7LuPbQx0CMXKwiV2Xr5d0v', 0, 0, '2015-08-14 13:41:54', '2015-08-14 19:41:54'),
(76, 'newkunal@gyrix.co', 'newKunal', 'Kunal', 'Bhusare', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Male', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'cQrGui5yDdnnRD0dG8MAc4lJLocbbgnYYCUDMEJylal3iHzYb10oysavRlHR', 0, 0, '2015-08-14 11:12:35', '2015-08-14 05:42:35'),
(77, 'newricha@gyrix.co', 'newricha', 'Richa', 'Agrawal', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Female', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'sXsCp778ic3MjXYpNqX2iaU3s0ddV355CbgqJDRguoNaYAbXfosQPJpWQB4h', 0, 0, '2015-08-14 11:13:36', '2015-08-14 05:43:36'),
(78, 'newanshika@gyrix.co', 'newanshika', 'Anshika', 'Agrawal', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Male', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'A56vElwzItiwfTfGg0leRwQt5kotIe40zqCBOkkwIcH0AM6XyG7Ys48rGtcK', 0, 0, '2015-08-14 12:33:58', '2015-08-14 07:03:58'),
(79, 'newkirti@gyrix.co', 'newkirti', 'Kirti', 'Nakhrewali', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '(881) 777-8900', 'Male', '09/08/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'XHQYNIGnLRIoS7FrDIQhmz2IeBdNqF4SPdM2SWg578LnDZTq6N2vsmIgVLV0', 0, 0, '2015-08-14 12:34:15', '2015-08-14 07:04:15'),
(80, 'newsparsh@gyrix.co', 'newsparsh', 'Sparsh', 'Piplay', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Male', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'CkjvgzXSFZTYi8mxx3Qw5qOg7XYy35ug7RlEuQDFdOG7kQfcLgOLCBh5aRHN', 0, 0, '2015-08-14 11:08:47', '2015-08-14 05:38:47'),
(81, 'newvinod@gyrix.co', 'newvinod', 'Vinod', 'Kirte', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Female', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'vnUB6N1CfxH6KJhcNVvJqWMK9lZhck8YMilPVdefkxJU56rUW4tA9T7jhEJ9', 0, 0, '2015-08-14 11:09:04', '2015-08-14 05:39:04'),
(82, 'newmanoj@gyrix.co', 'newmanoj', 'manoj', 'patidar', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Male', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'lXox6aJQwl0hwamUyv13MbSlaFBvUCMYcVlc3vMqA1K69qqYsRxsYbHaawW1', 0, 0, '2015-08-14 11:09:28', '2015-08-14 05:39:28'),
(83, 'newaasif@gyrix.co', 'newaasif', 'aasif', 'mansuri', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Male', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', 'cuRRFCGp38AsAXfJDa4q6Uw4nnbm5bNj5EVK6VfCUzQeMZDV99CPpjm00LVG', 0, 0, '2015-08-14 11:55:42', '2015-08-14 06:25:42'),
(84, 'newvivek@gyrix.co', 'newvivek', 'vivek', 'Tiwari', '$2y$10$CyQeF9r7rDPe3kBAkBD3buXE6p87/atLpacDVmdz3KCzn4UCJy3Ky', 'http://advizzy/img/avatars/5_avatar_06.png', 0, '', 'Male', '10/29/1992', 'indore', 'employeeEntryLevel', 'single', '23001To39000', '', 'IN', 'it', 'bachelorDegree', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', '02a2b2b3f56b909147f4', '3XHYmLrAFGXHrNk1snXcG1VN4nxODEUYrWyQswAcFzj431DbGMs9xv9WPI9R', 0, 0, '2015-08-14 11:10:54', '2015-08-14 05:40:54'),
(85, 'bhaskar.rajoriya@gyrix.couu', 'dobuu', 'Bhaskar', 'Rajoriya', '$2y$10$/MOVhEdz8lalUpvtlH1a.OKOlyFF30F37KLm9x8j6WlDX9xiNI/UG', 'img/gray_avatar_lady.png', 0, '(881) 777-8900', 'Male', '', 'indore', '', '', '', '', 'AF', 'construction', '', 'Asian', '', '', '', 1, 1, '', '', '', '', 0, '', '', 100, '', 'bc59943b1e3dc03f3cde', 'MO4qk1QV2YGFq53YnqbtSQ0jYZmvMefKL4fAG6w7gR3Eu0AuWN8EA5mn7eem', 0, 0, '2015-08-14 14:01:37', '2015-08-14 20:01:36');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
