-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 10:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infokripto`
--

-- --------------------------------------------------------

--
-- Table structure for table `arcategory`
--

CREATE TABLE `arcategory` (
  `id_arcategory` bigint(20) NOT NULL,
  `id_artikel` bigint(20) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arcategory`
--

INSERT INTO `arcategory` (`id_arcategory`, `id_artikel`, `kategori`, `updated_at`, `created_at`) VALUES
(1, 5, 'edukasi', '2022-02-24 05:09:59', '2022-02-24 05:09:59'),
(2, 5, 'basic', '2022-02-24 05:10:33', '2022-02-24 05:10:33'),
(3, 6, 'Airdrop', '2022-02-25 07:17:44', '2022-02-25 07:17:44'),
(5, 6, 'Gratis', '2022-02-26 05:04:05', '2022-02-26 05:04:05'),
(7, 7, 'mining', '2022-02-27 04:16:18', '2022-02-27 04:16:18'),
(8, 7, 'edukasi', '2022-02-27 04:16:18', '2022-02-27 04:16:18'),
(9, 8, 'testnet', '2022-02-28 04:55:26', '2022-02-28 04:55:26'),
(10, 8, 'potential airdrop', '2022-02-28 04:55:26', '2022-02-28 04:55:26'),
(11, 8, 'gratis', '2022-02-28 04:55:26', '2022-02-28 04:55:26'),
(12, 9, 'testnet', '2022-03-02 03:19:01', '2022-03-02 03:19:01'),
(13, 10, 'airdrop', '2022-03-02 03:27:09', '2022-03-02 03:27:09'),
(14, 11, 'airdrop', '2022-03-02 03:35:17', '2022-03-02 03:35:17'),
(15, 12, 'airdrop', '2022-03-02 04:01:11', '2022-03-02 04:01:11'),
(16, 12, 'xrp', '2022-03-02 04:01:11', '2022-03-02 04:01:11'),
(17, 13, 'edukasi', '2022-03-02 04:02:52', '2022-03-02 04:02:52'),
(18, 13, 'tips', '2022-03-02 04:02:52', '2022-03-02 04:02:52'),
(19, 14, 'airdrop', '2022-03-02 04:11:22', '2022-03-02 04:11:22'),
(20, 15, 'airdrop', '2022-03-02 04:14:44', '2022-03-02 04:14:44'),
(21, 17, 'airdrop', '2022-03-02 05:57:31', '2022-03-02 05:57:31'),
(22, 18, 'testnet', '2022-03-02 06:49:07', '2022-03-02 06:49:07'),
(28, 20, 'airdrop', '2022-03-02 14:03:54', '2022-03-02 14:03:54'),
(29, 20, 'gratis', '2022-03-02 14:03:54', '2022-03-02 14:03:54'),
(30, 21, 'airdrop', '2022-03-02 14:04:38', '2022-03-02 14:04:38'),
(31, 21, 'gratis', '2022-03-02 14:04:38', '2022-03-02 14:04:38'),
(32, 22, 'airdrop', '2022-03-02 14:05:12', '2022-03-02 14:05:12'),
(33, 22, 'gratis', '2022-03-02 14:05:12', '2022-03-02 14:05:12'),
(34, 23, 'testnet', '2022-03-02 15:54:14', '2022-03-02 15:54:14'),
(35, 23, 'gratis', '2022-03-02 15:54:14', '2022-03-02 15:54:14'),
(36, 24, 'airdrop', '2022-03-02 15:55:11', '2022-03-02 15:55:11'),
(37, 24, 'gratis', '2022-03-02 15:55:11', '2022-03-02 15:55:11'),
(38, 25, 'airdrop', '2022-03-02 15:55:34', '2022-03-02 15:55:34'),
(39, 25, 'gratis', '2022-03-02 15:55:34', '2022-03-02 15:55:34'),
(40, 26, 'airdrop', '2022-03-04 14:12:56', '2022-03-04 14:12:56'),
(41, 26, 'gratis', '2022-03-04 14:12:56', '2022-03-04 14:12:56'),
(42, 27, 'airdrop', '2022-03-04 14:13:18', '2022-03-04 14:13:18'),
(43, 27, 'gratis', '2022-03-04 14:13:18', '2022-03-04 14:13:18'),
(44, 28, 'airdrop', '2022-03-04 14:13:35', '2022-03-04 14:13:35'),
(45, 28, 'gratis', '2022-03-04 14:13:35', '2022-03-04 14:13:35'),
(46, 29, 'airdrop', '2022-03-04 14:13:56', '2022-03-04 14:13:56'),
(47, 29, 'gratis', '2022-03-04 14:13:56', '2022-03-04 14:13:56'),
(48, 30, 'airdrop', '2022-03-04 14:14:13', '2022-03-04 14:14:13'),
(49, 30, 'gratis', '2022-03-04 14:14:13', '2022-03-04 14:14:13'),
(50, 31, 'airdrop', '2022-03-04 14:14:29', '2022-03-04 14:14:29'),
(51, 31, 'gratis', '2022-03-04 14:14:29', '2022-03-04 14:14:29'),
(52, 33, 'airdrop', '2022-03-04 14:15:13', '2022-03-04 14:15:13'),
(53, 33, 'gratis', '2022-03-04 14:15:13', '2022-03-04 14:15:13'),
(54, 34, 'airdrop', '2022-03-04 14:22:48', '2022-03-04 14:22:48'),
(55, 34, 'gratis', '2022-03-04 14:22:48', '2022-03-04 14:22:48'),
(56, 35, 'airdrop', '2022-03-05 03:10:07', '2022-03-05 03:10:07'),
(57, 35, 'gratis', '2022-03-05 03:10:07', '2022-03-05 03:10:07'),
(58, 36, 'airdrop', '2022-03-05 03:10:24', '2022-03-05 03:10:24'),
(59, 36, 'gratis', '2022-03-05 03:10:24', '2022-03-05 03:10:24'),
(60, 37, 'airdrop', '2022-03-05 03:10:41', '2022-03-05 03:10:41'),
(61, 37, 'gratis', '2022-03-05 03:10:41', '2022-03-05 03:10:41'),
(62, 38, 'airdrop', '2022-03-05 03:11:01', '2022-03-05 03:11:01'),
(63, 38, 'gratis', '2022-03-05 03:11:01', '2022-03-05 03:11:01'),
(64, 39, 'airdrop', '2022-03-05 15:26:30', '2022-03-05 15:26:30'),
(65, 39, 'gratis', '2022-03-05 15:26:30', '2022-03-05 15:26:30'),
(66, 40, 'airdrop', '2022-03-05 15:26:52', '2022-03-05 15:26:52'),
(67, 40, 'gratis', '2022-03-05 15:26:52', '2022-03-05 15:26:52'),
(68, 41, 'airdrop', '2022-03-05 15:27:08', '2022-03-05 15:27:08'),
(69, 41, 'gratis', '2022-03-05 15:27:08', '2022-03-05 15:27:08'),
(70, 42, 'airdrop', '2022-03-05 15:27:35', '2022-03-05 15:27:35'),
(71, 42, 'gratis', '2022-03-05 15:27:35', '2022-03-05 15:27:35'),
(72, 43, 'airdrop', '2022-03-05 15:28:03', '2022-03-05 15:28:03'),
(73, 43, 'modal', '2022-03-05 15:28:03', '2022-03-05 15:28:03'),
(74, 44, 'airdrop', '2022-03-05 15:28:24', '2022-03-05 15:28:24'),
(75, 44, 'gratis', '2022-03-05 15:28:24', '2022-03-05 15:28:24'),
(76, 45, 'gratis', '2022-03-05 15:29:13', '2022-03-05 15:29:13'),
(77, 45, 'airdrop', '2022-03-05 15:29:13', '2022-03-05 15:29:13'),
(78, 46, 'airdrop', '2022-03-05 15:29:32', '2022-03-05 15:29:32'),
(79, 46, 'gratis', '2022-03-05 15:29:32', '2022-03-05 15:29:32'),
(80, 47, 'airdrop', '2022-03-05 15:29:49', '2022-03-05 15:29:49'),
(81, 47, 'gratis', '2022-03-05 15:29:49', '2022-03-05 15:29:49'),
(82, 48, 'testnet', '2022-03-05 15:30:20', '2022-03-05 15:30:20'),
(83, 49, 'airdrop', '2022-03-05 15:31:28', '2022-03-05 15:31:28'),
(84, 50, 'airdrop', '2022-03-05 15:31:46', '2022-03-05 15:31:46'),
(85, 50, 'gratis', '2022-03-05 15:31:46', '2022-03-05 15:31:46'),
(86, 51, 'airdrop', '2022-03-05 15:32:09', '2022-03-05 15:32:09'),
(87, 51, 'gratis', '2022-03-05 15:32:09', '2022-03-05 15:32:09'),
(88, 52, 'airdrop', '2022-03-05 16:30:13', '2022-03-05 16:30:13'),
(89, 52, 'gratis', '2022-03-05 16:30:13', '2022-03-05 16:30:13'),
(90, 53, 'airdrop', '2022-03-06 16:02:56', '2022-03-06 16:02:56'),
(91, 53, 'gratis', '2022-03-06 16:02:56', '2022-03-06 16:02:56'),
(92, 55, 'airdrop', '2022-03-06 16:03:30', '2022-03-06 16:03:30'),
(93, 55, 'gratis', '2022-03-06 16:03:30', '2022-03-06 16:03:30'),
(94, 56, 'airdrop', '2022-03-06 16:03:51', '2022-03-06 16:03:51'),
(95, 56, 'gratis', '2022-03-06 16:03:51', '2022-03-06 16:03:51'),
(96, 57, 'airdrop', '2022-03-06 16:05:09', '2022-03-06 16:05:09'),
(97, 57, 'gratis', '2022-03-06 16:05:09', '2022-03-06 16:05:09'),
(98, 58, 'airdrop', '2022-03-06 16:05:51', '2022-03-06 16:05:51'),
(99, 58, 'gratis', '2022-03-06 16:05:51', '2022-03-06 16:05:51'),
(100, 59, 'airdrop', '2022-03-06 16:06:09', '2022-03-06 16:06:09'),
(101, 59, 'gratis', '2022-03-06 16:06:09', '2022-03-06 16:06:09'),
(102, 61, 'airdrop', '2022-03-06 16:06:37', '2022-03-06 16:06:37'),
(103, 61, 'gratis', '2022-03-06 16:06:37', '2022-03-06 16:06:37'),
(104, 62, 'airdrop', '2022-03-06 16:06:51', '2022-03-06 16:06:51'),
(105, 62, 'gratis', '2022-03-06 16:06:51', '2022-03-06 16:06:51'),
(106, 63, 'airdrop', '2022-03-06 16:07:48', '2022-03-06 16:07:48'),
(107, 63, 'gratis', '2022-03-06 16:07:48', '2022-03-06 16:07:48'),
(108, 65, 'airdrop', '2022-03-06 16:08:19', '2022-03-06 16:08:19'),
(109, 65, 'gratis', '2022-03-06 16:08:19', '2022-03-06 16:08:19'),
(110, 66, 'airdrop', '2022-03-06 16:08:57', '2022-03-06 16:08:57'),
(111, 66, 'infomint', '2022-03-06 16:08:57', '2022-03-06 16:08:57'),
(112, 67, 'airdrop', '2022-03-06 16:09:24', '2022-03-06 16:09:24'),
(113, 67, 'gratis', '2022-03-06 16:09:24', '2022-03-06 16:09:24'),
(114, 68, 'airdrop', '2022-03-07 16:03:45', '2022-03-07 16:03:45'),
(115, 68, 'gratis', '2022-03-07 16:03:45', '2022-03-07 16:03:45'),
(118, 70, 'airdrop', '2022-03-07 16:20:44', '2022-03-07 16:20:44'),
(119, 70, 'gratis', '2022-03-07 16:20:44', '2022-03-07 16:20:44'),
(121, 72, 'airdrop', '2022-03-07 16:39:22', '2022-03-07 16:39:22'),
(122, 72, 'gratis', '2022-03-07 16:39:22', '2022-03-07 16:39:22'),
(123, 73, 'airdrop', '2022-03-07 16:40:20', '2022-03-07 16:40:20'),
(124, 73, 'gratis', '2022-03-07 16:40:20', '2022-03-07 16:40:20'),
(125, 74, 'airdrop', '2022-03-07 16:46:28', '2022-03-07 16:46:28'),
(126, 74, 'gratis', '2022-03-07 16:46:28', '2022-03-07 16:46:28'),
(127, 75, 'airdrop', '2022-03-07 16:57:07', '2022-03-07 16:57:07'),
(128, 75, 'gratis', '2022-03-07 16:57:07', '2022-03-07 16:57:07'),
(129, 76, 'airdrop', '2022-03-07 17:00:32', '2022-03-07 17:00:32'),
(130, 76, 'gratis', '2022-03-07 17:00:32', '2022-03-07 17:00:32'),
(131, 77, 'airdrop', '2022-03-07 17:01:04', '2022-03-07 17:01:04'),
(132, 77, 'gratis', '2022-03-07 17:01:04', '2022-03-07 17:01:04'),
(133, 78, 'airdrop', '2022-03-07 17:01:39', '2022-03-07 17:01:39'),
(134, 78, 'gratis', '2022-03-07 17:01:39', '2022-03-07 17:01:39'),
(135, 79, 'airdrop', '2022-03-07 17:02:30', '2022-03-07 17:02:30'),
(136, 79, 'gratis', '2022-03-07 17:02:30', '2022-03-07 17:02:30'),
(137, 80, 'airdrop', '2022-03-07 17:02:45', '2022-03-07 17:02:45'),
(138, 80, 'gratis', '2022-03-07 17:02:45', '2022-03-07 17:02:45'),
(139, 81, 'airdrop', '2022-03-07 17:03:26', '2022-03-07 17:03:26'),
(140, 81, 'gratis', '2022-03-07 17:03:26', '2022-03-07 17:03:26'),
(141, 82, 'airdrop', '2022-03-07 17:03:58', '2022-03-07 17:03:58'),
(142, 82, 'gratis', '2022-03-07 17:03:58', '2022-03-07 17:03:58'),
(143, 83, 'airdrop', '2022-03-07 17:04:44', '2022-03-07 17:04:44'),
(144, 83, 'gratis', '2022-03-07 17:04:44', '2022-03-07 17:04:44'),
(145, 84, 'airdrop', '2022-03-07 17:05:00', '2022-03-07 17:05:00'),
(146, 84, 'gratis', '2022-03-07 17:05:00', '2022-03-07 17:05:00'),
(147, 85, 'airdrop', '2022-03-07 17:05:20', '2022-03-07 17:05:20'),
(148, 85, 'gratis', '2022-03-07 17:05:20', '2022-03-07 17:05:20'),
(149, 86, 'airdrop', '2022-03-07 17:05:39', '2022-03-07 17:05:39'),
(150, 86, 'gratis', '2022-03-07 17:05:39', '2022-03-07 17:05:39'),
(151, 87, 'airdrop', '2022-03-07 17:05:56', '2022-03-07 17:05:56'),
(152, 87, 'gratis', '2022-03-07 17:05:56', '2022-03-07 17:05:56'),
(153, 88, 'airdrop', '2022-03-07 17:06:10', '2022-03-07 17:06:10'),
(154, 88, 'gratis', '2022-03-07 17:06:10', '2022-03-07 17:06:10'),
(155, 89, 'airdrop', '2022-03-07 17:10:30', '2022-03-07 17:10:30'),
(156, 89, 'trustline', '2022-03-07 17:10:30', '2022-03-07 17:10:30'),
(157, 90, 'airdrop', '2022-03-07 17:10:46', '2022-03-07 17:10:46'),
(158, 90, 'gratis', '2022-03-07 17:10:46', '2022-03-07 17:10:46'),
(159, 91, 'airdrop', '2022-03-07 17:11:07', '2022-03-07 17:11:07'),
(160, 91, 'gratis', '2022-03-07 17:11:07', '2022-03-07 17:11:07'),
(161, 92, 'airdrop', '2022-03-07 17:11:46', '2022-03-07 17:11:46'),
(162, 92, 'gratis', '2022-03-07 17:11:46', '2022-03-07 17:11:46'),
(163, 93, 'airdrop', '2022-03-07 17:12:01', '2022-03-07 17:12:01'),
(164, 93, 'gratis', '2022-03-07 17:12:01', '2022-03-07 17:12:01'),
(165, 94, 'airdrop', '2022-03-07 17:12:20', '2022-03-07 17:12:20'),
(166, 94, 'gratis', '2022-03-07 17:12:20', '2022-03-07 17:12:20'),
(167, 95, 'airdrop', '2022-03-28 23:10:35', '2022-03-28 23:10:35'),
(168, 95, 'gratis', '2022-03-28 23:10:35', '2022-03-28 23:10:35'),
(169, 96, 'airdrop', '2022-03-28 23:11:58', '2022-03-28 23:11:58'),
(170, 96, 'gratis', '2022-03-28 23:11:58', '2022-03-28 23:11:58'),
(171, 97, 'testnet', '2022-03-29 20:06:04', '2022-03-29 20:06:04'),
(172, 98, 'testnet', '2022-03-29 20:06:44', '2022-03-29 20:06:44'),
(173, 99, 'airdrop', '2022-03-29 20:11:05', '2022-03-29 20:11:05'),
(174, 99, 'gratis', '2022-03-29 20:11:05', '2022-03-29 20:11:05'),
(175, 100, 'testnet', '2022-03-30 08:28:35', '2022-03-30 08:28:35'),
(176, 100, 'gratis', '2022-03-30 08:28:35', '2022-03-30 08:28:35'),
(179, 102, 'testnet', '2022-03-30 09:43:54', '2022-03-30 09:43:54'),
(180, 102, 'gratis', '2022-03-30 09:43:54', '2022-03-30 09:43:54'),
(181, 103, 'testnet', '2022-03-30 09:44:24', '2022-03-30 09:44:24'),
(182, 103, 'gratis', '2022-03-30 09:44:24', '2022-03-30 09:44:24'),
(183, 104, 'testnet', '2022-03-30 09:52:26', '2022-03-30 09:52:26'),
(184, 104, 'gratis', '2022-03-30 09:52:26', '2022-03-30 09:52:26'),
(185, 105, 'testnet', '2022-03-31 23:08:15', '2022-03-31 23:08:15'),
(186, 105, 'gratis', '2022-03-31 23:08:15', '2022-03-31 23:08:15'),
(187, 106, 'testnet', '2022-03-31 23:09:08', '2022-03-31 23:09:08'),
(188, 107, 'testnet', '2022-04-02 14:58:37', '2022-04-02 14:58:37'),
(189, 108, 'airdrop', '2022-04-03 20:00:17', '2022-04-03 20:00:17'),
(190, 108, 'gratis', '2022-04-03 20:00:17', '2022-04-03 20:00:17'),
(191, 109, 'gratis', '2022-04-03 20:00:55', '2022-04-03 20:00:55'),
(192, 109, 'airdrop', '2022-04-03 20:00:55', '2022-04-03 20:00:55'),
(193, 110, 'testnet', '2022-04-03 20:02:20', '2022-04-03 20:02:20'),
(194, 110, 'gratis', '2022-04-03 20:02:20', '2022-04-03 20:02:20'),
(195, 111, 'airdrop', '2022-04-04 21:45:08', '2022-04-04 21:45:08'),
(196, 111, 'gratis', '2022-04-04 21:45:08', '2022-04-04 21:45:08'),
(197, 112, 'testnet', '2022-04-04 21:46:23', '2022-04-04 21:46:23'),
(198, 112, 'gratis', '2022-04-04 21:46:23', '2022-04-04 21:46:23'),
(199, 113, 'airdrop', '2022-04-07 19:24:22', '2022-04-07 19:24:22'),
(200, 113, 'gratis', '2022-04-07 19:24:22', '2022-04-07 19:24:22'),
(201, 114, 'gratis', '2022-04-09 04:21:56', '2022-04-09 04:21:56'),
(202, 114, 'airdrop', '2022-04-09 04:21:56', '2022-04-09 04:21:56'),
(203, 115, 'testnet', '2022-04-09 10:07:00', '2022-04-09 10:07:00'),
(204, 115, 'gratis', '2022-04-09 10:07:00', '2022-04-09 10:07:00'),
(205, 116, 'airdrop', '2022-04-09 11:14:53', '2022-04-09 11:14:53'),
(206, 116, 'gratis', '2022-04-09 11:14:53', '2022-04-09 11:14:53'),
(207, 117, 'airdrop', '2022-04-09 12:21:14', '2022-04-09 12:21:14'),
(208, 117, 'gratis', '2022-04-09 12:21:14', '2022-04-09 12:21:14'),
(209, 118, 'gratis', '2022-04-10 14:10:03', '2022-04-10 14:10:03'),
(210, 118, 'airdrop', '2022-04-10 14:10:03', '2022-04-10 14:10:03'),
(211, 119, 'gratis', '2022-04-11 13:17:00', '2022-04-11 13:17:00'),
(212, 119, 'airdrop', '2022-04-11 13:17:00', '2022-04-11 13:17:00'),
(213, 120, 'testnet', '2022-04-14 21:45:07', '2022-04-14 21:45:07'),
(214, 120, 'gratis', '2022-04-14 21:45:07', '2022-04-14 21:45:07'),
(215, 121, 'airdrop', '2022-04-15 08:00:59', '2022-04-15 08:00:59'),
(216, 121, 'gratis', '2022-04-15 08:00:59', '2022-04-15 08:00:59'),
(217, 122, 'airdrop', '2022-04-18 08:34:09', '2022-04-18 08:34:09'),
(218, 122, 'gratis', '2022-04-18 08:34:09', '2022-04-18 08:34:09'),
(219, 123, 'airdrop', '2022-04-18 08:34:32', '2022-04-18 08:34:32'),
(220, 123, 'gratis', '2022-04-18 08:34:32', '2022-04-18 08:34:32'),
(221, 124, 'airdrop', '2022-04-18 08:35:02', '2022-04-18 08:35:02'),
(222, 124, 'gratis', '2022-04-18 08:35:02', '2022-04-18 08:35:02'),
(223, 125, 'airdrop', '2022-04-20 14:23:43', '2022-04-20 14:23:43'),
(224, 125, 'gratis', '2022-04-20 14:23:43', '2022-04-20 14:23:43'),
(225, 126, 'airdrop', '2022-04-21 22:32:10', '2022-04-21 22:32:10'),
(226, 126, 'gratis', '2022-04-21 22:32:10', '2022-04-21 22:32:10'),
(227, 127, 'airdrop', '2022-04-23 16:44:39', '2022-04-23 16:44:39'),
(228, 127, 'gratis', '2022-04-23 16:44:39', '2022-04-23 16:44:39'),
(229, 128, 'airdrop', '2022-04-23 20:07:25', '2022-04-23 20:07:25'),
(230, 128, 'gratis', '2022-04-23 20:07:25', '2022-04-23 20:07:25'),
(231, 129, 'gratis', '2022-04-27 15:03:58', '2022-04-27 15:03:58'),
(233, 130, 'gratis', '2022-04-27 15:06:03', '2022-04-27 15:06:03'),
(234, 130, 'testnet', '2022-04-27 15:06:03', '2022-04-27 15:06:03'),
(235, 129, 'testnet', '2022-04-27 15:06:13', '2022-04-27 15:06:13'),
(236, 131, 'airdrop', '2022-05-03 17:30:03', '2022-05-03 17:30:03'),
(237, 131, 'gratis', '2022-05-03 17:30:03', '2022-05-03 17:30:03'),
(238, 132, 'airdrop', '2022-05-03 21:21:36', '2022-05-03 21:21:36'),
(239, 132, 'gratis', '2022-05-03 21:21:36', '2022-05-03 21:21:36'),
(240, 133, 'airdrop', '2022-05-04 09:37:39', '2022-05-04 09:37:39'),
(241, 133, 'gratis', '2022-05-04 09:37:39', '2022-05-04 09:37:39'),
(242, 134, 'airdrop', '2022-05-05 19:05:51', '2022-05-05 19:05:51'),
(243, 134, 'gratis', '2022-05-05 19:05:51', '2022-05-05 19:05:51'),
(244, 135, 'testnet', '2022-05-08 20:33:47', '2022-05-08 20:33:47'),
(245, 136, 'airdrop', '2022-05-10 11:14:59', '2022-05-10 11:14:59'),
(246, 136, 'gratis', '2022-05-10 11:14:59', '2022-05-10 11:14:59'),
(247, 137, 'airdrop', '2022-05-10 11:15:16', '2022-05-10 11:15:16'),
(248, 137, 'gratis', '2022-05-10 11:15:16', '2022-05-10 11:15:16'),
(249, 138, 'airdrop', '2022-05-10 11:15:48', '2022-05-10 11:15:48'),
(250, 138, 'gratis', '2022-05-10 11:15:48', '2022-05-10 11:15:48'),
(251, 139, 'edukasi', '2022-05-11 11:34:31', '2022-05-11 11:34:31'),
(252, 140, 'testnet', '2022-05-13 23:04:05', '2022-05-13 23:04:05'),
(253, 141, 'airdrop', '2022-05-13 23:04:27', '2022-05-13 23:04:27'),
(254, 141, 'gratis', '2022-05-13 23:04:27', '2022-05-13 23:04:27'),
(255, 142, 'airdrop', '2022-05-13 23:06:12', '2022-05-13 23:06:12'),
(256, 142, 'gratis', '2022-05-13 23:06:12', '2022-05-13 23:06:12'),
(257, 143, 'airdrop', '2022-05-13 23:06:49', '2022-05-13 23:06:49'),
(258, 143, 'gratis', '2022-05-13 23:06:49', '2022-05-13 23:06:49'),
(259, 144, 'airdrop', '2022-05-13 23:07:30', '2022-05-13 23:07:30'),
(260, 144, 'gratis', '2022-05-13 23:07:30', '2022-05-13 23:07:30'),
(261, 145, 'gratis', '2022-05-14 10:19:14', '2022-05-14 10:19:14'),
(262, 145, 'airdrop', '2022-05-14 10:19:14', '2022-05-14 10:19:14'),
(263, 146, 'edukasi', '2022-05-15 23:45:51', '2022-05-15 23:45:51'),
(264, 146, 'airdrop', '2022-05-15 23:45:51', '2022-05-15 23:45:51'),
(265, 147, 'gratis', '2022-05-15 23:52:29', '2022-05-15 23:52:29'),
(266, 147, 'airdrop', '2022-05-15 23:52:29', '2022-05-15 23:52:29'),
(267, 148, 'airdrop', '2022-05-15 23:53:12', '2022-05-15 23:53:12'),
(268, 148, 'gratis', '2022-05-15 23:53:12', '2022-05-15 23:53:12'),
(269, 149, 'airdrop', '2022-05-15 23:53:36', '2022-05-15 23:53:36'),
(270, 149, 'gratis', '2022-05-15 23:53:36', '2022-05-15 23:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` bigint(20) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `gambar_sampul` varchar(250) NOT NULL,
  `isi` text NOT NULL,
  `author` varchar(80) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `slug`, `judul`, `gambar_sampul`, `isi`, `author`, `updated_at`, `created_at`) VALUES
(5, 'apa-itu-cryptocurrency-220218051104', 'Apa itu Cryptocurrency?', '27022022110705_20211018160655.jpg', '<p><em>Cryptocurrency&nbsp;</em>adalah sebuah mata uang digital. Ia tidak tersedia dalam bentuk fisik layaknya koin atau uang tunai yang digunakan secara umum di seluruh dunia. Cryptocurrency sendiri&nbsp;disimpan dalam &lsquo;dompet digital&rsquo; yang tersedia pada&nbsp;<em>smartphone</em>&nbsp;atau perangkat komputer lainnya.&nbsp;Selain itu, pemilik&nbsp;<em>cryptocurrency&nbsp;</em>juga dapat menggunakan mata uang digital tersebut untuk keperluan transaksi jual-beli.</p>\r\n\r\n<p><strong>Fungsi Cryptocurrency:</strong></p>\r\n\r\n<ol>\r\n	<li>Membeli barang atau jasa</li>\r\n	<li>Investasi</li>\r\n	<li>Mining</li>\r\n</ol>\r\n\r\n<p><strong>Kelebihan Cryptocurrency:</strong></p>\r\n\r\n<p><strong>1. Universal</strong></p>\r\n\r\n<p>Seluruh dunia bisa menggunakan&nbsp;<em>cryptocurrency.&nbsp;</em>Sementara itu, tidak semua orang memenuhi syarat untuk mendaftar menjadi nasabah di sebuah bank.</p>\r\n\r\n<p>Oleh karena itu,&nbsp;<em>cryptocurrency&nbsp;</em>dianggap universal karena tidak ada syarat apa pun untuk menjadi penggunanya.</p>\r\n\r\n<p><strong>2. Cepat</strong></p>\r\n\r\n<p>Transaksi dengan&nbsp;<em>cryptocurrency&nbsp;</em>terbilang cepat jika dibandingkan dengan transaksi di bank. Transfer antarbank internasional, umumnya bisa memakan waktu hingga lebih dari satu hari.</p>\r\n\r\n<p>Sementara itu, perdagangan&nbsp;<em>bitcoin&nbsp;</em>hanya membutuhkan waktu sekitar beberapa menit hingga satu jam.</p>\r\n\r\n<p><strong>3. Transparansi</strong></p>\r\n\r\n<p>Setiap pengguna&nbsp;<em>cryptocurrency&nbsp;</em>bisa melihat semua transaksi yang pernah dilakukan pada <em>blockchain explorer</em>. Namun, tentunya kamu tidak akan mengetahui transaksi tersebut dilakukan oleh siapa karena hanya dalam bentuk angka tanpa identitas.</p>\r\n\r\n<p><strong>Kekurangan Cryptocurrency:</strong></p>\r\n\r\n<p><strong>1. Celah bagi kejahatan</strong></p>\r\n\r\n<p><em>Cryptocurrency </em>banyak dimanfaatkan oknum untuk kejahatan. Mereka bisa bertransaksi untuk barang atau hal-hal ilegal dengan mata uang digital ini tanpa bisa dilacak.</p>\r\n\r\n<p><strong>2.&nbsp;Sekali lupa&nbsp;<em>password,</em>&nbsp;semua uang bisa hilang</strong></p>\r\n\r\n<p>Karena&nbsp;<em>cryptocurrency&nbsp;</em>menggunakan sistem&nbsp;<em>password <strong>(Phrase, private key)</strong>&nbsp;</em>tanpa ada pihak yang mengaturnya, maka kamu beresiko kehilangan semua uang di akunmu tersebut jika lupa&nbsp;<em>password.</em></p>\r\n\r\n<p><strong>3. Masih banyak yang menganggapnya <em>illegal</em></strong></p>\r\n\r\n<p>Banyak negara masih menganggap&nbsp;<em>cryptocurrency&nbsp;</em>ilegal dan tidak berlaku untuk transaksi jual-beli di negaranya.</p>\r\n\r\n<hr />\r\n<p><em><strong>Source :</strong></em></p>\r\n\r\n<p><a href=\"https://glints.com/id/lowongan/cryptocurrency-adalah/#.Yhr2PuhBxPY\">1. Glints</a></p>', 'Ardan Anjung', '2022-02-27 04:07:05', '2022-02-18 10:11:04'),
(6, 'sorex-airdrop-220226120405', 'Sorex Airdrop', 'noimg.jpg', '<p><strong>🤑Sorex Airdrop</strong><br />\r\n🏷 Reward : 25 Sorex ( For All )<br />\r\nRegister : <a href=\"https://t.me/SOREX_Official_BOT?start=r00809679714\">https://t.me/SOREX_Official_BOT?start=r00809679714</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Complete Another Task&nbsp;<br />\r\n➖ Submit Details&nbsp;<br />\r\n➖ Done&nbsp;</p>', 'Ardan Anjung', '2022-02-26 05:22:04', '2022-02-25 07:17:44'),
(7, 'apa-itu-mining-bagaimana-cara-mining-220227111618', 'Apa itu Mining? Bagaimana cara Mining?', '27022022111618_Screenshot_1.jpg', '<p><strong>Pengertian dan mekanisme mining :</strong></p>\r\n\r\n<p>Ada beberapa cara untuk mendapatkan Bitcoin, termasuk proses mining atau menambang. Bitcoin membutuhkan kombinasi perangkat lunak dan teknologi jaringan yang terdiri dari ribuan mesin untuk menjalankan perangkat lunak Bitcoin. Tugas keduanya adalah menyampaikan informasi transaksi dan memverifikasi transaksi tersebut untuk memastikan Bitcoin yang sama tidak dapat dibelanjakan dua kali.&nbsp;Seluruh transaksi melalui proses verifikasi yang disebut &quot;mining&quot;. Berdasarkan buku Getting started with Bitcoins, mining juga berperan sebagai mekanisme untuk memproduksi dan mendistribusi Bitcoin. Proses mining adalah tindakan menambahkan transaksi ke blockchain sehingga semua orang dapat menyetujui rangkaian transaksi yang sama.&nbsp;Cara menambang menggunakan perangkat komputer. Sebuah komputer yang melakukan mining disebut crypto miner. Proses mining berhubungan dengan blockchain. Prosesnya dimulai dengan verifikasi transaksi dalam blockchain. Setelah diverifikasi, transaksi akan dimasukkan ke rantai blok untuk mendapatkan Bitcoin. Sebelum dinyatakan sebagai transaksi yang sah, seluruh transaksi yang dilakukan pada suatu waktu dikumpulkan ke dalam sebuah blok untuk perhitungan. Kalkulasi tersebut yang dinamakan proses menambang atau mining. Manfaat dari cara mining adalah orang yang berhasil menjadi penambang tidak perlu mengetahui cara menghitung dan ilmu matematika. Tetapi, pengguna cara mining harus mempunya perangkat lunak dan keras dengan spesifikasi tinggi untuk menambang Bitcoin.</p>\r\n\r\n<p><strong>Cara mining dengan PC:</strong></p>\r\n\r\n<ol>\r\n	<li>Pergi ke situs&nbsp;<a href=\"https://www.nicehash.com/\">https://www.nicehash.com/</a></li>\r\n	<li>Buat akun baru</li>\r\n	<li>Download software miner pada website tersebut</li>\r\n	<li>Install pada PC anda</li>\r\n	<li>Loginkan akun anda ke aplikasi yang baru anda install</li>\r\n	<li>Mulai mining!!</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', 'Ardan Anjung', '2022-02-27 04:16:18', '2022-02-27 04:16:18'),
(8, 'new-testnet-polkaswap-potential-airdrop-220228115526', 'New TestNet : Polkaswap Potential Airdrop ', 'noimg.jpg', '<p><img alt=\"\" src=\"http://localhost:8000/images/photo_2022-02-26_19-22-17_1646024083.jpg\" style=\"height:247px; width:500px\" /></p>\r\n\r\n<p>☑️ New TestNet : Polkaswap&nbsp;<br />\r\n⚡️ Status : Potential Airdrop&nbsp;</p>\r\n\r\n<p>✅ Join now:- &nbsp;<a href=\"https://test.polkaswap.io/#/about\">https://test.polkaswap.io/#/about</a></p>\r\n\r\n<p>🌐 Network : Polkadot<br />\r\n💴 Wallet : Polkadot.JS (<a href=\"https://chrome.google.com/webstore/detail/polkadot%7Bjs%7D-extension/mopnmbcafieddcagagdcbnhejhlodfdd\">https://chrome.google.com/webstore/detail/polkadot%7Bjs%7D-extension/mopnmbcafieddcagagdcbnhejhlodfdd</a>)&nbsp;<br />\r\n💰 Link Faucet : <a href=\"https://testfaucet.polkaswap.io/\">https://testfaucet.polkaswap.io/</a></p>\r\n\r\n<p>Metamask ( Rinkeby )<br />\r\n➖ Faucet : <a href=\"https://faucets.chain.link/rinkeby\">https://faucets.chain.link/rinkeby</a><br />\r\n➖ Faucet 2 : <a href=\"https://faucet.rinkeby.io/\">https://faucet.rinkeby.io/</a></p>\r\n\r\n<p>🗞️ Tasks&nbsp;<br />\r\n&gt; Tambahkan liqiuidity minimal 2 pair token&nbsp;<br />\r\n&gt; Bridge minimal 2 token dari sora ke rinkeby&nbsp;<br />\r\n&gt; Register Token minimal 1x<br />\r\n&gt; Register NFT minimal 1x<br />\r\n&gt;&nbsp;Swap 500x Transaction</p>', 'Ardan Anjung', '2022-02-28 04:56:21', '2022-02-28 04:55:26'),
(9, 'new-testnet-zircon-220302101901', '🏂 New Testnet Zircon', 'noimg.jpg', '<p>🏂 New Testnet Zircon<br />\r\nReward: N/A (but for early support maybe you will get some drops)</p>\r\n\r\n<p>👉 Try testnet:<br />\r\nhttps://beta.zircon.finance/</p>\r\n\r\n<p>Sett RPC Moonbeam (Test Network) for Metamask here:</p>\r\n\r\n<p>- Name: Moonbase<br />\r\n- New RPC Url: https://moonbeam-alpha.api.onfinality.io/public<br />\r\n- Chain ID: 1287<br />\r\n- Currency Symbol: DEV</p>\r\n\r\n<p>👉 For Guide &amp; Tutorial:<br />\r\nhttps://blog.zircon.finance/p/its-finally-here-zircon-open-beta?utm_source=url</p>', 'Ardan Anjung', '2022-03-02 03:19:01', '2022-03-02 03:19:01'),
(10, 'greenapp-220302102709', 'GreenApp', 'noimg.jpg', '<p>GreenApp<br />\r\n🏷 Reward : 500 GAD ( Random 3000 Winner )<br />\r\n🪂 Register : <a href=\"https://t.me/greenappairdrop_bot?start=r0971562717\">https://t.me/greenappairdrop_bot?start=r0971562717</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Complete Another Task&nbsp;<br />\r\n➖ Submit <a href=\"https://chrome.google.com/webstore/detail/goby/jnkelfanjkeadonecabehalmbgpfodjm/related\">Goby Address HERE DOWNLOAD</a><br />\r\n➖ Done</p>', 'Ardan Anjung', '2022-03-02 03:27:09', '2022-03-02 03:27:09'),
(11, 'new-airdrops-farcana-220302103517', 'New Airdrops : Farcana', 'noimg.jpg', '<p>New Airdrops : Farcana<br />\r\n🏷 Reward : $20 ( Random ... ???? )<br />\r\n🪂 Register : <a href=\"https://t.me/FarcanaAirdropBot?start=808174260\">https://t.me/FarcanaAirdropBot?start=808174260</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Submit BSC Address</p>', 'Ardan Anjung', '2022-03-02 03:35:17', '2022-03-02 03:35:17'),
(12, 'airdrop-animabox-220302110111', 'AIRDROP : ANIMABOX ', 'noimg.jpg', '<p>AIRDROP : ANIMABOX&nbsp;<br />\r\nNETWORK : XRP&nbsp;<br />\r\nDETAILS :&nbsp;</p>\r\n\r\n<p>&bull; JOIN FORM<br />\r\n<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSeVbo3t661sUdh8rVxcFJPRR3dFDzGRDtHHWQZ18-sErxfs7w/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0\">https://docs.google.com/forms/d/e/1FAIpQLSeVbo3t661sUdh8rVxcFJPRR3dFDzGRDtHHWQZ18-sErxfs7w/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0</a><br />\r\n&bull; JOIN TWITTER<br />\r\n<a href=\"https://twitter.com/AnimaBoxNFT?t=89amDQCnT4BW-sTpz4XSkg&amp;s=09\">https://twitter.com/AnimaBoxNFT?t=89amDQCnT4BW-sTpz4XSkg&amp;s=09</a><br />\r\n&bull; JOIN DISCORD<br />\r\n<a href=\"https://discord.gg/jc3ww8X3\">https://discord.gg/jc3ww8X3</a><br />\r\n&bull; SET TRUSTLINE<br />\r\n<a href=\"https://xrpl.services/?issuer=rHxrNp8ruthrrrmhBdcQosNQNRQ1QTzi1o&amp;currency=Animabox&amp;limit=5000\">https://xrpl.services/?issuer=rHxrNp8ruthrrrmhBdcQosNQNRQ1QTzi1o&amp;currency=Animabox&amp;limit=5000</a><br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : FIRST 2000 PARTICIPANT</p>', 'Ardan Anjung', '2022-03-02 04:01:11', '2022-03-02 04:01:11'),
(13, 'airdrop-itu-gratis-modal-220302110252', 'Airdrop itu gratis & modal', 'noimg.jpg', '<p>Airdrop itu gratis &amp; modal</p>\r\n\r\n<p>Tipe airdrop gratis<br />\r\n- Airdrop bot<br />\r\n- Airdrop Gleam<br />\r\n- Airdrop Sweepwidget<br />\r\n- Airdrop FCFS<br />\r\n- Airdrop Form<br />\r\n- Airdrop Discord&nbsp;<br />\r\n- Airdrop Instan Claim ( Audio, sRLY, XDC , KLV, Dot Wallet Dll )<br />\r\n- Testnet<br />\r\n- Dll</p>\r\n\r\n<p>Walaupun free jika dev meminta eth , bsc , ataupun coin crypto supaya bisa WD jangan di kirim.<br />\r\nKecuali menang di winner list dan butuh claim di web, gapapa penting jangan dikirim ke wallet dev.</p>\r\n\r\n<p>Modalnya apa bang ?<br />\r\n- Kuota<br />\r\n- OTP nomor untuk buat ( Telegram, Discord, Email, Twitter, dan airdrop yang membutuhkan OTP )<br />\r\n- Tenaga, Waktu, Pikiran &amp; Niat<br />\r\n- Kecepatan&nbsp;</p>\r\n\r\n<p>Nah airdrop modal lainnya adalah<br />\r\n- Airdrop RETROACTIVE : kita ditugaskan untuk swap di new dex, atau uji coba semua fitur dan nanti jika dex tersebut mengeluarkan token, terkadang early pengguna dex tersebut mendapatkan token atau nft dll<br />\r\n- Airdrop LP Provider : kita ditugaskan untuk menambahkan Liquidity pool di suatu dex, contoh uniswap , atau jaringan atom ,osmo dll dikemudian hari kita akan mendapatkan imbalan, makin banyak LP yang kita tambahkan makin banyak token yang di dapatkan jika suatu saat ada airdrop<br />\r\n- Airdrop Farms : Setelah menambahkan LP kita dapat farming dengan mempertaruhkan 50:50 , dev biasanya menyediakan reward pool untuk para petani ini.<br />\r\n- Airdrop Stakers &nbsp;: kita ditugaskan untuk mengunci coin / token di validator yang ada di platform / dex tersebut, &nbsp;untuk &nbsp;supaya eligible di suatu airdrop, biasanya new coin di jaringan cosmos, osmo, juno dll memperkenalkan projeknya melalui airdrop stakers validator.<br />\r\nminimal stake 5 atom, osmo, juno dll atau jika anda punya dana lebih, bisa menambahkan diatas 20&nbsp;<br />\r\n- Airdrop Exchange untuk new users : biasanya kita disuruh mendaftar dan melakukan KYC, serta membeli token dengan jumlah tertentu untuk mendapatkan airdrop, contoh ( Sandbox, CRO , dll ) ada&nbsp;<br />\r\n- Airdrop Trade, Learn &amp; Earn &nbsp;: kita ditugaskan untuk melakukan trading di suatu Exchange dgn minimal tertentu, dan menjawab pertanyaan untuk mendapatkan reward, ada juga event trading di Exchange yang tidak mengharuskan mengisi kuis, tapi hanya disuruh trading sampai mencapai volume tertentu.</p>\r\n\r\n<p>Dan masih banyak lagi, jadi airdrop ga mululu soal bot, gleam, form saja.</p>\r\n\r\n<p>Source : Airdropfind</p>', 'Ardan Anjung', '2022-03-02 04:02:52', '2022-03-02 04:02:52'),
(14, 'totem-airdrop-220302111122', '🔵Totem Airdrop🔵', 'noimg.jpg', '<p>🔵Totem Airdrop🔵<br />\r\n📍Reward : N/A&nbsp;<br />\r\nFor All Participants&nbsp;</p>\r\n\r\n<p>➡️Link : Here (<a href=\"https://totem.live/?ref=deknanda\">https://totem.live/?ref=deknanda</a>)&nbsp;<br />\r\n➡️Enter User ID<br />\r\n➡️ Sign Up<br />\r\n➡️ BackUp Account<br />\r\n➡️ Restore<br />\r\n➡️ Klik Pojok Kiri Atas Logo Totem &gt;&gt; Cek Di Bagian Rewards<br />\r\n➡️ Compleate The Task<br />\r\n✅Done</p>', 'Ardan Anjung', '2022-03-02 04:11:22', '2022-03-02 04:11:22'),
(15, 'airdrop-metawear-220302111444', 'AIRDROP : METAWEAR', 'noimg.jpg', '<p>AIRDROP : METAWEAR<br />\r\nNETWORK : BSC<br />\r\nDETAILS :&nbsp;</p>\r\n\r\n<p>&bull; JOIN FORM (<a href=\"https://wn.nr/fpWfCG\">https://wn.nr/fpWfCG</a>)<br />\r\n&bull; JOIN TWITTER<br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : 2000 PARTICIPANT</p>', 'Ardan Anjung', '2022-03-02 04:14:44', '2022-03-02 04:14:44'),
(16, 'okay-vpn-reward-10000-idr-5000-perreff-220302114512', 'Okay VPN Reward 10,000 IDR & 5,000 Perreff', 'noimg.jpg', '<p>🚀Garapn instan for<br />\r\n💰Reward 10,000 IDR &amp; 5,000 Perreff</p>\r\n\r\n<p><a href=\"https://play.google.com/store/apps/details?id=digital.okayvpn\">https://play.google.com/store/apps/details?id=digital.okayvpn</a><br />\r\n- Download app<br />\r\n- Login via email<br />\r\n- Enter kode reff OKS4SD<br />\r\n- Cari minimal 1 reff<br />\r\n- Wd to dana or ovo and another<br />\r\nDone</p>', 'Ardan Anjung', '2022-03-02 04:45:12', '2022-03-02 04:45:12'),
(17, 'nearpay-airdrop-220302125731', '🏂 NearPay Airdrop', 'noimg.jpg', '<p>🏂 NearPay Airdrop Fcfs<br />\r\n🎁 Reward Task 1 Limited NFT For First 1000 Participant&nbsp;</p>\r\n\r\n<p>👉 Register : https://nearpay.co/card</p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Near Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-02 05:57:31', '2022-03-02 05:57:31'),
(18, 'testnet-acent-tech-220302014907', 'TestNet : Acent Tech', 'noimg.jpg', '<p>☑️ New TestNet : Acent Tech<br />\r\n🌐 Network : Acent<br />\r\n💵 Wallet : Metamask Extension<br />\r\n⚡️ Status : Potential Airdrop&nbsp;</p>\r\n\r\n<p>✅ Link Testnet : <a href=\"https://testfaucet.acent.tech/\">https://testfaucet.acent.tech/</a></p>\r\n\r\n<p>💰 Faucet : <a href=\"https://testfaucet.acent.tech/\">https://testfaucet.acent.tech/</a></p>\r\n\r\n<p>🗞️ Task&nbsp;<br />\r\n&gt; Siapkan 2 wallet address yang berbeda&nbsp;<br />\r\n&gt; Kirim ace dari wallet 1 ke wallet 2<br />\r\n&gt; Lakukan 5x transaksi&nbsp;<br />\r\n&gt; Cek you transaction history https://testscan.acent.tech/&nbsp;<br />\r\n&gt; Jika valid atau sukses maka dunn</p>\r\n\r\n<p>RPC 👇<br />\r\nNetwork Name: ACENT PROD TESTNET<br />\r\nNew RPC URL: http://3.37.4.143:8545<br />\r\nChain ID: 8899<br />\r\nCurrency Symbol (Optional): ACE<br />\r\nBlock Explorer URL (Optional): https://testscan.acent.tech/</p>\r\n\r\n<p>💢 Source : https://medium.com/acent-tech/alpha-testing-of-the-acent-testnet-your-portal-to-a-powerful-blockchain-algorithm-network-aea614540ce</p>', 'Ardan Anjung', '2022-03-02 06:49:07', '2022-03-02 06:49:07'),
(20, 'galaxy-blitz-airdrop-220302090354', '🚀Galaxy Blitz airdrop', 'noimg.jpg', '<p>🚀Galaxy Blitz airdrop<br />\r\n💰Reward $100,000 in $MIT for 10K win</p>\r\n\r\n<p><a href=\"https://gleam.io/AwNZx/galaxy-blitzs-100000-mit-token-airdrop-contest\">https://gleam.io/AwNZx/galaxy-blitzs-100000-mit-token-airdrop-contest</a><br />\r\n- Complete task<br />\r\n- Enter data<br />\r\n- Enter BSC address<br />\r\nDone</p>', 'Ardan Anjung', '2022-03-02 14:03:54', '2022-03-02 14:03:54'),
(21, 'airdrop-metaseedfinance-220302090438', 'AIRDROP : MetaseedFinance', 'noimg.jpg', '<p>AIRDROP : MetaseedFinance<br />\r\nNETWORK : BSC<br />\r\nDETAILS : Get 100 $MSF / after complite task</p>\r\n\r\n<p>&bull; JOIN AIRDROP<br />\r\n<a href=\"https://t.me/MetaseedFinanceBot?start=r0971562717\">https://t.me/MetaseedFinanceBot?start=r0971562717</a><br />\r\n&bull; JOIN TWITTER<br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : 5000 LUCKY PARTICIPANT</p>', 'Ardan Anjung', '2022-03-02 14:04:38', '2022-03-02 14:04:38'),
(22, 'ape-rocket-airdrop-220302090512', '🏂 Ape Rocket Airdrop ', 'noimg.jpg', '<p>🏂 Ape Rocket Airdrop&nbsp;<br />\r\n🎁 Free 20,000,000 $APEROCKET For 2,500 Random Participants</p>\r\n\r\n<p>👉 Start Bot :&nbsp;<br />\r\n<a href=\"https://t.me/ApeRocketAirdropbot?start=r0971562717\">https://t.me/ApeRocketAirdropbot?start=r0971562717</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Detail<br />\r\n- Submit BSC Address&nbsp;<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-02 14:05:12', '2022-03-02 14:05:12'),
(23, 'unreal-fi-testnet-220302105414', '🔴 Unreal Fi Testnet 🔴', 'noimg.jpg', '<p>🔴 Unreal Fi Testnet 🔴<br />\r\nExiting Reward ser</p>\r\n\r\n<p>☑️ Get Test token : <a href=\"https://faucet.kovan.network/\">https://faucet.kovan.network/</a> &amp; &nbsp;here<br />\r\n☑️ Explore All Feature: <a href=\"https://unreal-app.vercel.app/\">https://unreal-app.vercel.app/</a><br />\r\n✅ Good Luck</p>\r\n\r\n<p>Official Link<br />\r\n- https://t.me/unrealfinance<br />\r\n- https://twitter.com/UnrealFinance<br />\r\nDAI FAUCET:&nbsp;<a href=\"https://staging.aave.com/#/faucet/0xff795577d9ac8bd7d90ee22b6c1703490b6512fd-0xff795577d9ac8bd7d90ee22b6c1703490b6512fd0x88757f2f99175387ab4c6a4b3067c77a695b0349\">https://staging.aave.com/#/faucet/0xff795577d9ac8bd7d90ee22b6c1703490b6512fd-0xff795577d9ac8bd7d90ee22b6c1703490b6512fd0x88757f2f99175387ab4c6a4b3067c77a695b0349</a></p>', 'Ardan Anjung', '2022-03-02 15:54:14', '2022-03-02 15:54:14'),
(24, 'koubek-airdrop-220302105511', 'Koubek Airdrop', 'noimg.jpg', '<p>AIRDROP : KOUBEK<br />\r\nNETWORK : BSC<br />\r\nDETAILS :&nbsp;</p>\r\n\r\n<p>&bull; JOIN AIRDROP<br />\r\n<a href=\"https://t.me/KoubekAirdropBot?start=r0971562717\">https://t.me/KoubekAirdropBot?start=r0971562717</a><br />\r\n&bull; JOIN TWITTER<br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : 2000+ PARTICIPANT</p>', 'Ardan Anjung', '2022-03-02 15:55:11', '2022-03-02 15:55:11'),
(25, 'orbler-airdrop-220302105534', '🔴Orbler Airdrop🔴 ', 'noimg.jpg', '<p>🔴Orbler Airdrop🔴&nbsp;</p>\r\n\r\n<p>🧧Free 11$ in BAO ( For 11.111 Random)&nbsp;</p>\r\n\r\n<p>📢Join now <a href=\"https://giv.gg/r/ZSbJ6s-Zqy58i\">https://giv.gg/r/ZSbJ6s-Zqy58i</a><br />\r\n✅Selesaikan Task<br />\r\n✅Enter BSC Addrez<br />\r\n✅Done</p>', 'Ardan Anjung', '2022-03-02 15:55:34', '2022-03-02 15:55:34'),
(26, 'airdrops-karmaverse-zombie-220304091256', 'Airdrops : Karmaverse Zombie', 'noimg.jpg', '<p>New Airdrops : Karmaverse Zombie<br />\r\n🏷 Reward : Item Games ( For All )<br />\r\n➡️ Connect TokenPocket : <a href=\"https://app.karmaverse.io/quest?ref=cfwKxdmJeC\">https://app.karmaverse.io/quest?ref=cfwKxdmJeC</a><br />\r\n➖ Use New Wallet ( Polygon Network )<br />\r\n➖ Signup<br />\r\n➖ Verify Email<br />\r\n➖ Claim</p>', 'Ardan Anjung', '2022-03-04 14:12:56', '2022-03-04 14:12:56'),
(27, 'dmetaverse-coindmc-220304091318', 'DMetaverse Coin(DMC)', 'noimg.jpg', '<p>AIRDROP : DMetaverse Coin(DMC)<br />\r\nNETWORK : BSC<br />\r\nDETAILS :&nbsp;</p>\r\n\r\n<p>&bull; JOIN FORM<br />\r\n<a href=\"http://bit.ly/3tnbXDL\">http://bit.ly/3tnbXDL</a><br />\r\n&bull; JOIN TWITTER<br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : ALL PARTICIPANT</p>', 'Ardan Anjung', '2022-03-04 14:13:18', '2022-03-04 14:13:18'),
(28, 'weex-airdrop-220304091335', '🏂 Weex Airdrop', 'noimg.jpg', '<p>🏂 Weex Airdrop<br />\r\n🎁 Total Reward 10,000 TRX</p>\r\n\r\n<p>👉 Fill The Form : <a href=\"https://docs.google.com/forms/d/e/1FAIpQLSePCFj1kQlS5j_Kk6x_UlfzV1kRrISaV7m_6MWPEbRGX0NSxA/viewform\">https://docs.google.com/forms/d/e/1FAIpQLSePCFj1kQlS5j_Kk6x_UlfzV1kRrISaV7m_6MWPEbRGX0NSxA/viewform</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Detail<br />\r\n- Submit TRX Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-04 14:13:35', '2022-03-04 14:13:35'),
(29, 'airdrops-spacetime-220304091356', 'Airdrops : SpaceTime', 'noimg.jpg', '<p>New Airdrops : SpaceTime<br />\r\n🏷 Reward : $4 ( Random Winner )<br />\r\n➡️ Register :<br />\r\n<a href=\"https://t.me/SpaceTimeGuardianAirdropBot?start=r0971562717\">https://t.me/SpaceTimeGuardianAirdropBot?start=r0971562717</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Submit Address BSC</p>', 'Ardan Anjung', '2022-03-04 14:13:56', '2022-03-04 14:13:56'),
(30, 'karmaverse-airdrop-220304091413', '🚀KARMAVERSE Airdrop', 'noimg.jpg', '<p>🚀KARMAVERSE Airdrop<br />\r\n💰Total $10,000 KNOT for 1,000 winners</p>\r\n\r\n<p>Early airdrop, strong project, LFG</p>\r\n\r\n<p><a href=\"https://wn.nr/xFTHsy\">https://wn.nr/xFTHsy</a><br />\r\n- Complete task<br />\r\n- Enter data<br />\r\n- Enter MATIC address<br />\r\nDone</p>', 'Ardan Anjung', '2022-03-04 14:14:13', '2022-03-04 14:14:13'),
(31, 'new-airdrops-avs-220304091429', 'New Airdrops : AVS', 'noimg.jpg', '<p>New Airdrops : AVS<br />\r\n🏷 Reward : $20 ( Random 2000 Winner )<br />\r\n🪂 Register :&nbsp;<br />\r\n<a href=\"https://t.me/AvaStationAirdropbot?start=r0971562717\">https://t.me/AvaStationAirdropbot?start=r0971562717</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Submit BSC Address</p>', 'Ardan Anjung', '2022-03-04 14:14:29', '2022-03-04 14:14:29'),
(32, 'pandora-airdrop-220304091448', '🚀Pandora Airdrop', 'noimg.jpg', '<p>🚀Pandora Airdrop<br />\r\n💰Free 3 PSR for 5.4k winners</p>\r\n\r\n<p>Early airdrop, hajar</p>\r\n\r\n<p><a href=\"https://t.me/PandoraAirdropBot?start=808174260\">https://t.me/PandoraAirdropBot?start=808174260</a><br />\r\n- Complete task<br />\r\n- Enter data<br />\r\n- Enter BSC address<br />\r\nDone</p>', 'Ardan Anjung', '2022-03-04 14:14:48', '2022-03-04 14:14:48'),
(33, 'airdrop-coslend-mission-2-go-newbies-220304091513', 'Airdrop Coslend - Mission 2: Go Newbies!', 'noimg.jpg', '<p>Coslend - Mission 2: Go Newbies!</p>\r\n\r\n<p>🤖 Register : <a href=\"https://gleam.io/ncpKf/mission-2-go-newbies\">https://gleam.io/ncpKf/mission-2-go-newbies</a></p>\r\n\r\n<p>- Complate All task<br />\r\n- Enter wallet BSC / ETH / Evmos address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-04 14:15:13', '2022-03-04 14:15:13'),
(34, 'face-airdrop-220304092248', '🏂 $Face Airdrop', 'noimg.jpg', '<p>🏂 $Face Is More Than Book The World&#39;s Largest Airdrop Campaign Ever Face Giveaway.<br />\r\n🎁 Free 520.588 Token For Register</p>\r\n\r\n<p>👉 Donwload Aplikasi : <a href=\"https://play.google.com/store/apps/details?id=com.utu.facedao\">https://play.google.com/store/apps/details?id=com.utu.facedao</a></p>\r\n\r\n<p>- Login With FB/Twitter<br />\r\n- Authorized Face</p>\r\n\r\n<p>👉 Register : <a href=\"https://gleam.io/VHL6d/face-is-more-than-bookthe-worlds-largest-airdrop-campaign-everface-giveaway\">https://gleam.io/VHL6d/face-is-more-than-bookthe-worlds-largest-airdrop-campaign-everface-giveaway</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit ETH Address From FaceDAO App<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-04 14:26:19', '2022-03-04 14:22:48'),
(35, 'airdrop-akitavax-220305101007', 'AIRDROP : AKITAVAX', 'noimg.jpg', '<p>AIRDROP : AKITAVAX<br />\r\nNETWORK : AVAX<br />\r\nDETAILS :&nbsp;</p>\r\n\r\n<p>&bull; JOIN FORM<br />\r\n<a href=\"https://wn.nr/xFj3KK\">https://wn.nr/xFj3KK</a><br />\r\n&bull; JOIN TWITTER<br />\r\n&bull; SUBMIT ADDRESS BSC/ETH ( 0X ADDRESS )<br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : RANDOM 3000 PARTICIPANT</p>\r\n\r\n<p><br />\r\n👇🏼 RPC 👇🏼<br />\r\nNetwork Name: AVAX Mainnet<br />\r\nNew RPC URL: https://api.avax.network/ext/bc/C/rpc<br />\r\nChain ID: 43114<br />\r\nCurrency Symbol: AVAX<br />\r\nBlock Explorer URL: https://cchain.explorer.avax.network/</p>', 'Ardan Anjung', '2022-03-05 03:10:07', '2022-03-05 03:10:07'),
(36, 'airdrop-brass-exchange-220305101024', 'AIRDROP : BRASS EXCHANGE', 'noimg.jpg', '<p>AIRDROP : BRASS EXCHANGE<br />\r\nNETWORK : BSC<br />\r\nDETAILS :&nbsp;</p>\r\n\r\n<p>&bull; JOIN AIRDROP<br />\r\n<a href=\"https://t.me/BrassExchangeAirdropBot?start=808174260\">https://t.me/BrassExchangeAirdropBot?start=808174260</a><br />\r\n&bull; JOIN TWITTER<br />\r\n&bull; SKIP OPTIONAL TASK<br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : 200 Tokens Estimated $50 ( Random 20,000 Winner )</p>', 'Ardan Anjung', '2022-03-05 03:10:24', '2022-03-05 03:10:24'),
(37, 'starlay-airdrop-220305101041', 'Starlay AIRDROP ', 'noimg.jpg', '<p>Starlay AIRDROP&nbsp;<br />\r\nTotal Rewards 5,000,000 $LAY&nbsp;<br />\r\nfor all users</p>\r\n\r\n<p>Join airdrop &nbsp;: <a href=\"https://wn.nr/3K9gZF\">https://wn.nr/3K9gZF</a></p>\r\n\r\n<p>&bull; Complete All Task<br />\r\n&bull; Submit Details<br />\r\n&bull; EVM = Enter ETH / BSC Address<br />\r\n&bull; Done</p>\r\n\r\n<p>❕You must have any transaction on your wallet</p>', 'Ardan Anjung', '2022-03-05 03:10:41', '2022-03-05 03:10:41'),
(38, 'lino-airdrop-220305101101', '🚀LINO airdrop', 'noimg.jpg', '<p>🚀LINO airdrop<br />\r\n💰Free 2,000 LINO for 4k Win</p>\r\n\r\n<p>Early airdrop</p>\r\n\r\n<p><a href=\"https://t.me/linoairdropbot?start=808174260\">https://t.me/linoairdropbot?start=808174260</a><br />\r\n- Complete task<br />\r\n- Enter data<br />\r\n- Enter BSC address<br />\r\nDone</p>', 'Ardan Anjung', '2022-03-05 03:11:01', '2022-03-05 03:11:01'),
(39, 'squid-wallet-airdrop-220305102630', '🔴Squid Wallet Airdrop🔴', 'noimg.jpg', '<p>🔴Squid Wallet Airdrop🔴</p>\r\n\r\n<p>🧧Free 454 SQUID ( For All User)&nbsp;</p>\r\n\r\n<p>📢Join Now <a href=\"https://play.google.com/store/apps/details?id=com.blues.nab.squid_wallet\">https://play.google.com/store/apps/details?id=com.blues.nab.squid_wallet</a><br />\r\n✅Sign With Google Account&nbsp;<br />\r\n✅Creat<br />\r\n✅Enter CODE : 👉 0dn47nbt<br />\r\n✅Done</p>', 'Ardan Anjung', '2022-03-05 15:26:30', '2022-03-05 15:26:30'),
(40, 'matrixainetwork-x-cmc-airdrop-220305102652', 'MatrixAiNetwork X CMC Airdrop', 'noimg.jpg', '<p>MatrixAiNetwork X CMC Airdrop<br />\r\nGet NFT For 30000 Random Winner<br />\r\n<a href=\"http:// https://coinmarketcap.com/currencies/matrix-ai-network/airdrop/\">&nbsp;https://coinmarketcap.com/currencies/matrix-ai-network/airdrop/</a></p>', 'Ardan Anjung', '2022-03-05 15:26:52', '2022-03-05 15:26:52'),
(41, 'cyworld-airdrop-220305102708', '🏂 CyWorld Airdrop', 'noimg.jpg', '<p>🏂 CyWorld Airdrop<br />\r\n🎁 Reward Task 15 $TRX For 4000 Random Winners</p>\r\n\r\n<p>👉 Start Bot : Airdrop Legit<br />\r\n<a href=\"https://t.me/CyWorldAirdropBot?start=808174260\">https://t.me/CyWorldAirdropBot?start=808174260</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit TRX Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-05 15:27:08', '2022-03-05 15:27:08'),
(42, 'dappsback-airdrop-220305102723', '🏂 DappsBack Airdrop ', 'noimg.jpg', '<p>🏂 DappsBack Airdrop&nbsp;<br />\r\n🎁 Reward Token / NFT&nbsp;</p>\r\n\r\n<p>👉 Register : <a href=\"https://dappback.com/\">https://dappback.com/</a></p>\r\n\r\n<p>Tasknya Banyak , Kalau Bisa Di Kerjain Silahkan . Tokennya Bisa Di Redeem Jadi NFT Atau ETH Sesuai Tokennya.</p>', 'Ardan Anjung', '2022-03-05 15:27:23', '2022-03-05 15:27:23'),
(43, 'new-trustline-snub-network-220305102803', 'New Trustline : Snub Network ', 'noimg.jpg', '<p><a href=\"https://xrpl.services/?issuer=rNCRr79JC8YcA8pG4VAzhrshYxahKCodnX&amp;currency=534E554200000000000000000000000000000000&amp;limit=1000000000\">https://xrpl.services/?issuer=rNCRr79JC8YcA8pG4VAzhrshYxahKCodnX&amp;currency=534E554200000000000000000000000000000000&amp;limit=1000000000</a></p>\r\n\r\n<p>New Trustline : Snub Network&nbsp;<br />\r\n➖ Follow Twitter<br />\r\n➖ Add $SNUB Trustline<br />\r\n➖ Done</p>\r\n\r\n<p>Airdrop rewards will be distributed to First 10k, 25k, 50k, 100k Trustline</p>', 'Ardan Anjung', '2022-03-05 15:28:03', '2022-03-05 15:28:03'),
(44, 'eth-creation-nft-220305102824', 'ETH CREATION NFT', 'noimg.jpg', '<p>First 10k Members will Get ETH CREATION NFT</p>\r\n\r\n<p><a href=\"https://twitter.com/Popcorp_card/status/1499835298003689472\">https://twitter.com/Popcorp_card/status/1499835298003689472</a></p>', 'Ardan Anjung', '2022-03-05 15:28:24', '2022-03-05 15:28:24'),
(45, 'airdrop-xland-220305102913', 'AIRDROP : XLAND', 'noimg.jpg', '<p>AIRDROP : XLAND<br />\r\nNETWORK : BSC<br />\r\nDETAILS :&nbsp;</p>\r\n\r\n<p>&bull; JOIN FORM<br />\r\n<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSdqiZSOycP47mA0XqZivKxrqBwnov7bZl8lKg-lXjKOXq_B2w/viewform\">https://docs.google.com/forms/d/e/1FAIpQLSdqiZSOycP47mA0XqZivKxrqBwnov7bZl8lKg-lXjKOXq_B2w/viewform</a><br />\r\n&bull; JOIN DISCORD<br />\r\n&bull; SUBMIT ADDRESS XBA DI WALLET XBANK<br />\r\n&bull; CREATE WALLET XBANK 👉 <a href=\"https://www.xbank247.com/ref/XB7114550.\">https://www.xbank247.com/ref/XB7114550.</a><br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : FIRST 10K PARTICIPANT EST ($4 EACH)</p>\r\n\r\n<p><br />\r\nNOTE : AMANIN BUAT WALLET DULU KEBURU DOWN</p>', 'Ardan Anjung', '2022-03-05 15:29:13', '2022-03-05 15:29:13'),
(46, 'new-airdrops-soul-220305102932', 'New Airdrops : SOUL', 'noimg.jpg', '<p>New Airdrops : SOUL<br />\r\n🏷 Reward For Random 2000 Winner&nbsp;<br />\r\n🪂 Register :<br />\r\n<a href=\"https://t.me/TheUnfetteredxGGG_bot?start=r0971562717\">https://t.me/TheUnfetteredxGGG_bot?start=r0971562717</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Enter Details</p>', 'Ardan Anjung', '2022-03-05 15:29:32', '2022-03-05 15:29:32'),
(47, 'fananywhere-airdrop-220305102949', '🚀FanAnywhere airdrop', 'noimg.jpg', '<p>🚀FanAnywhere airdrop<br />\r\n💰Free 100 FAW for 1,000 winners</p>\r\n\r\n<p>Strong project, come on🚀</p>\r\n\r\n<p><a href=\"https://t.me/FanAnywhereAirdropBot?start=808174260\">https://t.me/FanAnywhereAirdropBot?start=808174260</a><br />\r\n- Complete task<br />\r\n- Enter data<br />\r\n- Enter BSC<br />\r\nDone</p>', 'Ardan Anjung', '2022-03-05 15:29:49', '2022-03-05 15:29:49'),
(48, 'fra-testnet-220305103020', 'FRA TESTNET', 'noimg.jpg', '<p>NEW TESTNET | The Shaking Up the Bridge Giveaway is here | we&rsquo;re celebrating this milestone with the Shaking Up the Bridge event and giving away $1,000,000 worth of FRA in rewards for those that help with testing (For All Users) | Get $5-$10 FRA per Users</p>\r\n\r\n<p>➖ Register : <a href=\"https://wn.nr/pmgEPq\">https://wn.nr/pmgEPq</a><br />\r\n➖ Complete All task<br />\r\n➖ Enter wallet BSC address<br />\r\n➖ Done</p>', 'Ardan Anjung', '2022-03-05 15:30:20', '2022-03-05 15:30:20'),
(49, 'yang-sering-transaks-eth-220305103115', 'Yang sering transaksi eth', 'noimg.jpg', '<p>Yang sering transaksi atau pernah transaksi di network eth coba cek bansos lu siapa tau nyangkut</p>\r\n\r\n<p>👉 <a href=\"http://gotrekt.com\">http://gotrekt.com</a></p>', 'Ardan Anjung', '2022-03-05 15:31:28', '2022-03-05 15:31:15'),
(50, 'city-cat-x-stacks-220305103146', '🏂 City Cat X Stacks', 'noimg.jpg', '<p>🏂 City Cat X Stacks</p>\r\n\r\n<p>👉 Fill The Form :&nbsp;<br />\r\n<a href=\"https://docs.google.com/forms/u/0/d/e/1FAIpQLSd2HP0kbvsSxbuGMwQolHF1EnVXxNvVnnl_LVuR22HKhHSJxg/formResponse\">https://docs.google.com/forms/u/0/d/e/1FAIpQLSd2HP0kbvsSxbuGMwQolHF1EnVXxNvVnnl_LVuR22HKhHSJxg/formResponse</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit STX Address<br />\r\n- Done</p>\r\n\r\n<p>HIRO Wallet : <a href=\"https://chrome.google.com/webstore/detail/hiro-wallet/ldinpeekobnhjjdofggfgjlcehhmanlj\">https://chrome.google.com/webstore/detail/hiro-wallet/ldinpeekobnhjjdofggfgjlcehhmanlj</a></p>', 'Ardan Anjung', '2022-03-05 15:31:46', '2022-03-05 15:31:46'),
(51, 'new-airdrops-trush-220305103209', 'New Airdrops : Trush', 'noimg.jpg', '<p>New Airdrops : Trush<br />\r\n🏷 Reward Total : 1M ( 999999 Winner )<br />\r\n🪂 Register : <a href=\"https://share-w.in/36784f-52158\">https://share-w.in/36784f-52158</a><br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Enter Sollet.io Address&nbsp;<br />\r\n➖ Done</p>\r\n\r\n<p>Telegram&nbsp;<br />\r\n<a href=\"https://t.me/trushann\">https://t.me/trushann</a><br />\r\n<a href=\"https://t.me/trushcommunity\">https://t.me/trushcommunity</a><br />\r\n&nbsp;</p>', 'Ardan Anjung', '2022-03-05 15:32:09', '2022-03-05 15:32:09'),
(52, 'new-airdrops-indibadge-220305113013', 'New Airdrops : Indibadge', 'noimg.jpg', '<p>New Airdrops : Indibadge<br />\r\n🏷 Reward : 1 NFT&nbsp;<br />\r\n🪂 Open on Kiwi : &nbsp;<a href=\"http://indi.gg \">http://indi.gg&nbsp;</a><br />\r\n➖ Scroll Down<br />\r\n➖ Connect Metamask (Polygon)<br />\r\n➖ Join &amp; Connect Discord<br />\r\n➖ Mint<br />\r\n➖ Done</p>\r\n\r\n<p>Easy task ser<br />\r\nLFG</p>', 'Ardan Anjung', '2022-03-05 16:30:13', '2022-03-05 16:30:13'),
(53, 'free-claim-random-reward-eth-network-220306110256', 'Free claim random reward ETH Network', 'noimg.jpg', '<p>Free claim random reward ETH Network &amp; Use New Wallet<br />\r\n🪂 Register : <a href=\"https://m.nftstar.com\">https://m.nftstar.com</a><br />\r\n➖ Scrool &amp; Spin<br />\r\n➖ Done</p>\r\n\r\n<p>Don&#39;t mint, wait for next info.<br />\r\nPlease use new wallet</p>', 'Ardan Anjung', '2022-03-06 16:02:56', '2022-03-06 16:02:56'),
(54, 'nftbuzz-airdrop-220306110313', '🔵NFTBuzz Airdrop🔵', 'noimg.jpg', '<p>📍Get 10$ Worth NFT For 2500 Random Winners</p>\r\n\r\n<p>➡️Start Bot : <a href=\"https://t.me/NFTbuzzAirdropBot?start=808174260\">https://t.me/NFTbuzzAirdropBot?start=808174260</a><br />\r\n➡️ Complete The Task<br />\r\n➡️ Submit Details<br />\r\n➡️ Enter BSC Address<br />\r\n✅ Done</p>', 'Ardan Anjung', '2022-03-06 16:03:13', '2022-03-06 16:03:13'),
(55, 're-finance-airdrop-220306110330', '📨RE Finance Airdrop', 'noimg.jpg', '<p>💎 Reward : 600 $REF For 5000 Winners</p>\r\n\r\n<p>Join Airdrop : <a href=\"https://t.me/REFTokenAirdropBot?start=808174260\">https://t.me/REFTokenAirdropBot?start=808174260</a><br />\r\n- Complete All Task<br />\r\n- Submit BSC Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-06 16:03:30', '2022-03-06 16:03:30'),
(56, 'new-airdrops-keyswap-220306110351', 'New Airdrops : KeySwap', 'noimg.jpg', '<p>New Airdrops : KeySwap<br />\r\n🏷 Reward : 100 Tokens ( Random 1000 Winner )<br />\r\n🪂 Register : <a href=\"https://form.jotform.com/220620877289060\">https://form.jotform.com/220620877289060</a><br />\r\n➖ Join Telegram<br />\r\nhttps://twitter.com/keyswap_dex<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\nhttps://twitter.com/keyswap_dex<br />\r\n➖ Submit BSC Address</p>', 'Ardan Anjung', '2022-03-06 16:03:51', '2022-03-06 16:03:51'),
(57, 'new-airdrop-itoka-nft-220306110509', '☑️ New Airdrop: Itoka NFT ', 'noimg.jpg', '<p>☑️ New Airdrop: Itoka NFT&nbsp;<br />\r\n🎁 Reward : Maybe NFT&nbsp;<br />\r\n🕵️ Winner : N/A</p>\r\n\r\n<p>✅ Join Discord :&nbsp;<br />\r\nhttps://discord.gg/AY7EGHGtyv</p>\r\n\r\n<p>&gt; Verif Discord<br />\r\n&gt; DM bot @itoka_bot [ didiscord ] dengan format dibawah</p>\r\n\r\n<p>!register [ ICP addres or Plug wallet ]&nbsp;<br />\r\nhttps://plugwallet.ooo/</p>\r\n\r\n<p>Example 👇&nbsp;</p>\r\n\r\n<p>!register&nbsp;<br />\r\nldbji-svimk-ly7z6-ai4oc-v3osc-qtpzo-xdcqe-sf7ur-52ca3-byxdi-oae</p>\r\n\r\n<p>&gt; Done and wait for upcoming information</p>', 'Ardan Anjung', '2022-03-06 16:05:09', '2022-03-06 16:05:09'),
(58, 'new-airdrop-metapoo-220306110551', '🏂 New Airdrop MetaPoo', 'noimg.jpg', '<p>🏂 New Airdrop MetaPoo<br />\r\n🎁 Reward Pool $50k NFT</p>\r\n\r\n<p>👉 Start Bot : Airdrop Legit<br />\r\n<a href=\"https://t.me/MetaPoo_Airdrop_Bot?start=808174260\">https://t.me/MetaPoo_Airdrop_Bot?start=808174260</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit SOL Address<br />\r\n- Done</p>\r\n\r\n<p>Answer : $MTP</p>', 'Ardan Anjung', '2022-03-06 16:05:51', '2022-03-06 16:05:51'),
(59, 'apeiron-origins-nft-220306110609', '🏂 Apeiron Origins NFT', 'noimg.jpg', '<p>🏂 Apeiron Origins NFT Event Gauntlet #8</p>\r\n\r\n<p>👉 Register : <a href=\"https://gleam.io/YNfTv/apeiron-origins-nft-event-gauntlet-8\">https://gleam.io/YNfTv/apeiron-origins-nft-event-gauntlet-8</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Polygon Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-06 16:06:09', '2022-03-06 16:06:09'),
(60, 'meta-lifes-airdrop-round-2-220306110622', '🏂 Meta Lifes Airdrop Round 2', 'noimg.jpg', '<p>🏂 Meta Lifes Airdrop Round 2<br />\r\n🎁 Total Reward 200.000 $ML For Everyone</p>\r\n\r\n<p>👉 Start Bot : Airdrop Legit<br />\r\n<a href=\"https://t.me/MetaLifes_Airdrop_2_Bot?start=808174260\">https://t.me/MetaLifes_Airdrop_2_Bot?start=808174260</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit BSC Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-06 16:06:22', '2022-03-06 16:06:22'),
(61, 'new-airdrop-rdao-220306110637', '☑️ New Airdrop: RDAO', 'noimg.jpg', '<p>☑️ New Airdrop: RDAO<br />\r\n🎁 Reward: $10 $RDA<br />\r\n🕵️ 8.000 Lucky Participant&nbsp;</p>\r\n\r\n<p>✅ Join Now:<br />\r\n<a href=\"https://t.me/RDAOAirdropBot?start=r0971562717\">https://t.me/RDAOAirdropBot?start=r0971562717</a></p>\r\n\r\n<p>🔘 Complete All Tasks<br />\r\n🔘 Submit your BEP-20 Address</p>', 'Ardan Anjung', '2022-03-06 16:06:37', '2022-03-06 16:06:37'),
(62, 'new-airdrops-gbc-220306110651', 'New Airdrops : GBC', 'noimg.jpg', '<p>New Airdrops : GBC<br />\r\n🏷 Reward : 1 Tokens ( Random 10,000 Winner )<br />\r\n🪂 Register : <a href=\"https://t.me/GBC_Airdrop_bot?start=808174260\">https://t.me/GBC_Airdrop_bot?start=808174260</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet<br />\r\n➖ Submit BSC Address&nbsp;<br />\r\n➖ Done</p>\r\n\r\n<p>Skip Optional Task&nbsp;<br />\r\nVerify Email<br />\r\nCheck Spam Folder</p>', 'Ardan Anjung', '2022-03-06 16:06:51', '2022-03-06 16:06:51'),
(63, '15000-toyo-airdrop-220306110748', '15,000 TOYO Airdrop', 'noimg.jpg', '<p>15,000 TOYO Airdrop For 5,000 Winners</p>\r\n\r\n<p>&bull; Open Link : <a href=\"https://giv.gg/r/28fsq0-Zqy58i\">https://giv.gg/r/28fsq0-Zqy58i</a><br />\r\n&bull; Complete Task<br />\r\n&bull; Submit MATIC/BSC Address same<br />\r\n&bull; Done</p>', 'Ardan Anjung', '2022-03-06 16:07:48', '2022-03-06 16:07:48'),
(64, 'partii-airdrop-220306110803', '💧 PARTII Airdrop 💧', 'noimg.jpg', '<p>🏆 Task: &nbsp; &nbsp; ➕ &nbsp;20 PARTII (~$20) for 50,000 random participants</p>\r\n\r\n<p>👨&zwj;👩&zwj;👧 Referral: ➕ 200 PARTII (~$200) for top 100 referrers</p>\r\n\r\n<p>🔛 Airdrop Link &amp; Information:&nbsp;<br />\r\n<a href=\"https://t.me/PARTIIAirdropBot?start=808174260\">https://t.me/PARTIIAirdropBot?start=808174260</a></p>', 'Ardan Anjung', '2022-03-06 16:08:03', '2022-03-06 16:08:03'),
(65, 'new-airdrops-seda-220306110819', 'New Airdrops : SEDA', 'noimg.jpg', '<p>New Airdrops : SEDA<br />\r\n🏷 Reward : 10,000 Tokens ( Random 3000 Winner )<br />\r\n🪂 Register : <a href=\"https://t.me/B2elandGameAirdropBot?start=808174260\">https://t.me/B2elandGameAirdropBot?start=808174260</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Submit ETH ERC20 Address&nbsp;</p>\r\n\r\n<p>Lfg</p>', 'Ardan Anjung', '2022-03-06 16:08:19', '2022-03-06 16:08:19'),
(66, 'trush-airdrop-mint-information-220306110857', 'Trush Airdrop Mint Information', 'noimg.jpg', '<p>Please mint for get reward</p>\r\n\r\n<p>Name: Trush<br />\r\nSymbol: TRS<br />\r\nMint address: 6TrhkzBAokyonkodNY3hsxqMhf1kaj6Zjk7QKc3E6QZc</p>', 'Ardan Anjung', '2022-03-06 16:08:57', '2022-03-06 16:08:57'),
(67, 'floki-cat-220306110911', '🕯️ Floki Cat', 'noimg.jpg', '<p>💰 Reward Total 1,000,000 $FCT<br />\r\n🏆 Maybe For All</p>\r\n\r\n<p>🤖 Register :<br />\r\n<a href=\"https://wn.nr/JQRQT3\">https://wn.nr/JQRQT3</a></p>\r\n\r\n<p>➖ Complete All Task<br />\r\n➖ Submit BSC Address</p>', 'Ardan Anjung', '2022-03-06 16:09:11', '2022-03-06 16:09:11'),
(68, 'mtvp-airdrop-220307110345', '🏂 MTVP Airdrop', 'noimg.jpg', '<p>🏂 MTVP<br />\r\n🎁 35.000 $MTVP For Random Winner</p>\r\n\r\n<p>👉 Register : <a href=\"https://wn.nr/TQ43sc\">https://wn.nr/TQ43sc</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit BSC Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-07 16:04:24', '2022-03-07 16:03:45'),
(70, 'chill-token-airdrop-220307112044', '🏂 Chill Token Airdrop', 'noimg.jpg', '<p>🏂 Chill Token Airdrop</p>\r\n\r\n<p>🎁 Reward 5$ In Chill Token For 10k Random</p>\r\n\r\n<p>👉 Start Bot : Airdrop Legit</p>\r\n\r\n<p><a href=\"https://t.me/ChillProtocolAirdropbot?start=r0971562717\">https://t.me/ChillProtocolAirdropbot?start=r0971562717</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Complete All Task</p>\r\n\r\n<p>- Submit BSC Address</p>\r\n\r\n<p>- Done</p>', 'Ardan Anjung', '2022-03-07 16:20:44', '2022-03-07 16:20:44'),
(72, 'new-airdrops-fora-220307113922', 'New Airdrops : Fora', 'noimg.jpg', '<p>New Airdrops : Fora<br />\r\n🏷 Reward : $FORA tokens<br />\r\n🪂 Join DC &nbsp;: <a href=\"https://discord.gg/2KgaRmU5\">https://discord.gg/2KgaRmU5</a><br />\r\n➖ Go to #announcements channel<br />\r\n➖ Scroll Up<br />\r\n➖ Click &#39;@ fora-bot&#39;<br />\r\n➖ DM your SOL Address to @ fora-bot</p>', 'Ardan Anjung', '2022-03-07 16:39:22', '2022-03-07 16:39:22'),
(73, 'platon-network-community-beta-testing-airdrop-220307114020', '🏂 Platon Network community beta Testing & Airdrop', 'noimg.jpg', '<p>🏂 Platon Network community beta Testing &amp; Airdrop<br />\r\n🎁 Get 10000 LAT For All Participants</p>\r\n\r\n<p>👉 Fill The Form : <a href=\"https://docs.google.com/forms/d/e/1FAIpQLSd1NX3mE32Zwkt7zdGFNpLi-fJrqpw65j4mw6XtFQwaTtBHBA/viewform\">https://docs.google.com/forms/d/e/1FAIpQLSd1NX3mE32Zwkt7zdGFNpLi-fJrqpw65j4mw6XtFQwaTtBHBA/viewform</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Detail<br />\r\n- Submit LAT Address From Aton Wallet<br />\r\n- Done</p>\r\n\r\n<p>- Telegram : <a href=\"https://t.co/TI7VeYx7oo\">https://t.co/TI7VeYx7oo</a><br />\r\n- Twitter : <a href=\"https://twitter.com/PlatON_Network\">https://twitter.com/PlatON_Network</a><br />\r\n- Donwload Wallet : <a href=\"https://play.google.com/store/apps/details?id=com.platon.aton\">https://play.google.com/store/apps/details?id=com.platon.aton</a></p>', 'Ardan Anjung', '2022-03-07 16:40:20', '2022-03-07 16:40:20'),
(74, 'airdrop-pandora-220307114628', 'Airdrop Pandora', 'noimg.jpg', '<p>Airdrop Pandora get a Total reward Pool 45000$ of Pandora</p>\r\n\r\n<p>🌐Link 1:</p>\r\n\r\n<p>&nbsp;<a href=\"https://t.me/PandoraNewAirdropBot?start=808174260\">https://t.me/PandoraNewAirdropBot?start=808174260</a></p>\r\n\r\n<p>Or</p>\r\n\r\n<p>🌐Link 2: &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp;<a href=\"https://t.me/PandoraAirdropBot?start=808174260\">https://t.me/PandoraAirdropBot?start=808174260</a></p>\r\n\r\n<p>🔆Hurry up! You could be amongst the lucky few who claim their own share of this generous reward pool ($45.000).</p>', 'Ardan Anjung', '2022-03-07 16:46:28', '2022-03-07 16:46:28'),
(75, 'new-airdrops-popkon-220307115707', 'New Airdrops : Popkon', 'noimg.jpg', '<p>New Airdrops : Popkon<br />\r\n🏷 Reward : 22 TRX ( Random 2000 Winner )<br />\r\n🪂 Register :&nbsp;<br />\r\n<a href=\"https://t.me/PopkonAirdropBot?start=808174260\">https://t.me/PopkonAirdropBot?start=808174260</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Submit TRX Address</p>', 'Ardan Anjung', '2022-03-07 16:57:07', '2022-03-07 16:57:07'),
(76, 'new-airdrops-ag-220308120032', 'New Airdrops : AG', 'noimg.jpg', '<p>New Airdrops : AG<br />\r\n🏷 Reward : 100 Tokens ( Random 1000 Winner )<br />\r\n🪂 Fill Form&nbsp;<br />\r\n<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSewVTYtPqAYlXWWCPpdvshelO0UMqdBRnJUZIoLspG4Pt3Fbg/viewform\">https://docs.google.com/forms/d/e/1FAIpQLSewVTYtPqAYlXWWCPpdvshelO0UMqdBRnJUZIoLspG4Pt3Fbg/viewform</a><br />\r\n➖ Vote dinoland<br />\r\n➖ Enter Details<br />\r\n➖ Retweet<br />\r\n➖ Done</p>', 'Ardan Anjung', '2022-03-07 17:00:32', '2022-03-07 17:00:32'),
(77, 'stabila-network-220308120104', '🏂 Stabila Network', 'noimg.jpg', '<p>🏂 Stabila Network<br />\r\n🎁 Reward Task : n/a $ZOOM ($ 50)</p>\r\n\r\n<p>👉 Start Bot : <a href=\"https://t.me/stb_a_bot\">https://t.me/stb_a_bot</a></p>\r\n\r\n<p>- Click Start in Telegram Bot<br />\r\n- Type &quot;Airdrop&quot;<br />\r\n- Join Telegram Group<br />\r\n- Follow Twitter and Retweet&nbsp;&nbsp;<br />\r\n- Type twitter:username twitter<br />\r\n- Type email:your email<br />\r\n- Type stb address:Your Address<br />\r\n- Click &quot;Task&quot; Button<br />\r\n- Complete All Task<br />\r\n- Click &quot;Check&quot; Button to Check your<br />\r\n- Done</p>\r\n\r\n<p>STB address can be created in stabilascan.org then register with Email.</p>\r\n\r\n<p>All Participants Will Get Reward</p>', 'Ardan Anjung', '2022-03-07 17:01:04', '2022-03-07 17:01:04'),
(78, 'swapp-early-access-220308120139', 'Swapp Early Access', 'noimg.jpg', '<p>Swapp Early Access</p>\r\n\r\n<p>➖ Join Here: <a href=\"https://swapp.ee/#join?referral=ioo7occ&amp;refSource=copy\">https://swapp.ee/#join?referral=ioo7occ&amp;refSource=copy</a><br />\r\n➖ Submit Your Email Address&nbsp;<br />\r\n➖ I&#39;m in<br />\r\n➖ Done</p>', 'Ardan Anjung', '2022-03-07 17:01:39', '2022-03-07 17:01:39'),
(79, 'cmc-x-mindmusic-220308120230', '🏂 CMC x MindMusic', 'noimg.jpg', '<p>🏂 CMC x MindMusic<br />\r\n🎁 Get 6$ For 15000 Random Winner</p>\r\n\r\n<p>👉 Register : <a href=\"https://coinmarketcap.com/currencies/mind-music/airdrop/\">https://coinmarketcap.com/currencies/mind-music/airdrop/</a></p>', 'Ardan Anjung', '2022-03-07 17:02:30', '2022-03-07 17:02:30'),
(80, 'gemhub-airdrop-220308120245', '📨GemHub Airdrop', 'noimg.jpg', '<p>📨GemHub Airdrop<br />\r\n💎 Reward : 20 $GEMHUB For 1000 Winners</p>\r\n\r\n<p>Join Airdrop : <a href=\"https://wn.nr/KQRDkT\">https://wn.nr/KQRDkT</a><br />\r\n- Complete All Task<br />\r\n- Submit KLAY Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-07 17:02:45', '2022-03-07 17:02:45'),
(81, 'alpha-airdrop-220308120326', 'Alpha Airdrop', 'noimg.jpg', '<p>@everyone Hello Alpha! rotating_light</p>\r\n\r\n<p>Help us grow the AlphaRoad community firelion_face</p>\r\n\r\n<p>arrow_right Check out our last Tweet, tag your friends &amp; get access to the @OG Family ! Or to grow up to @OG Alpha ! arrow_double_up</p>\r\n\r\n<p><a href=\"https://twitter.com/alpharoad_fi\">https://twitter.com/alpharoad_fi</a></p>\r\n\r\n<p>- Follow @alpharoad_fi<br />\r\n- Like and Retweet<br />\r\n- Tag 3 friends<br />\r\n- Join us on Discord point_right <a href=\"https://discord.gg/Bhfa3B2Gnq\">https://discord.gg/Bhfa3B2Gnq</a></p>\r\n\r\n<p>Once all is ok, please follow this form to apply to your new role point_right <a href=\"https://zfrmz.eu/6RpFoY9eJg2bgrhp1Xqk\">https://zfrmz.eu/6RpFoY9eJg2bgrhp1Xqk</a></p>', 'Ardan Anjung', '2022-03-07 17:03:26', '2022-03-07 17:03:26'),
(82, 'new-korean-airdrops-tig-mobile-220308120358', 'New Korean Airdrops : TIG Mobile', 'noimg.jpg', '<p>New Korean Airdrops : TIG Mobile<br />\r\n🏷 Reward : 10 TIG ( Random 50,000 Participants )<br />\r\n🪂 Register : <a href=\"https://wn.nr/5FbtYZ\">https://wn.nr/5FbtYZ</a><br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Join Discord&nbsp;<br />\r\n➖ Complete Another Task&nbsp;<br />\r\n➖ Enter Wemix Address&nbsp;</p>\r\n\r\n<p>Twitter | Discord | Download Wemix Wallet</p>\r\n\r\n<p><a href=\"https://play.google.com/store/apps/details?id=com.wemadetree.wemixwallet\">https://play.google.com/store/apps/details?id=com.wemadetree.wemixwallet</a></p>', 'Ardan Anjung', '2022-03-07 17:03:58', '2022-03-07 17:03:58'),
(83, 'airdrop-witch-220308120444', 'AIRDROP.   : Witch ', 'noimg.jpg', '<p>AIRDROP. &nbsp; : Witch&nbsp;<br />\r\nNETWORK : bsc&nbsp;<br />\r\nDETAILS :&nbsp;</p>\r\n\r\n<p>&bull; JOIN form&nbsp;<br />\r\n&bull; SUBMIT DETAIL<br />\r\n&bull; DONE</p>\r\n\r\n<p>WINNER : 4000 (first 2000 &amp; 2000 random) &nbsp;PARTICIPANT</p>\r\n\r\n<p><br />\r\n✓ Don&#39;t Miss join @Airdrop_Jack</p>\r\n\r\n<p><a href=\"https://docs.google.com/forms/u/0/d/e/1FAIpQLSc-loobsDHg2In58BHZT7GEMyDVwmZI5Yj8x4BEFyEZkV_cAw/formResponse\">https://docs.google.com/forms/u/0/d/e/1FAIpQLSc-loobsDHg2In58BHZT7GEMyDVwmZI5Yj8x4BEFyEZkV_cAw/formResponse</a></p>', 'Ardan Anjung', '2022-03-07 17:04:44', '2022-03-07 17:04:44'),
(84, 'new-airdrops-metagol-220308120500', 'New Airdrops : Metagol ', 'noimg.jpg', '<p>New Airdrops : Metagol&nbsp;<br />\r\n🪂 Register : <a href=\"https://metagol.app/\">https://metagol.app/</a><br />\r\n➖ Click &#39;JOIN THE AIRDROP&#39;<br />\r\n➖ Submit Details<br />\r\n➖ Enter BSC Address</p>', 'Ardan Anjung', '2022-03-07 17:05:00', '2022-03-07 17:05:00'),
(85, 'new-airdrops-mtc-220308120520', '🏂 New Airdrops MTC', 'noimg.jpg', '<p>🏂 New Airdrops MTC<br />\r\n🎁 Reward 0.4 MTC Random 2000 Winner</p>\r\n\r\n<p>👉 Start Bot : Airdrop Legit</p>\r\n\r\n<p><a href=\"https://t.me/MetacyAirdropBot?start=808174260\">https://t.me/MetacyAirdropBot?start=808174260</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit BSC Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-07 17:05:20', '2022-03-07 17:05:20');
INSERT INTO `artikel` (`id_artikel`, `slug`, `judul`, `gambar_sampul`, `isi`, `author`, `updated_at`, `created_at`) VALUES
(86, '1000000-hme-for-20000-lucky-winners-220308120539', '🏂 1,000,000 HME for 20,000 Lucky Winners.', 'noimg.jpg', '<p>🏂 1,000,000 HME for 20,000 Lucky Winners.<br />\r\nWe are currently at the early development phase of our Decentralized Wallet on Web 3.0 and we will release a MVP soon. Stay Tuned.</p>\r\n\r\n<p>Currently our IDO PRESALE is ongoing, click on link to participate. we have decided to reward 20,000 followers and supporters in our community with a share of 1,000,000 HME tokens. 50 HME ($5.00 on listing) tokens each.</p>\r\n\r\n<p>👉 Fill The Form : <a href=\"https://bit.ly/3vL15Cc\">https://bit.ly/3vL15Cc</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Done&nbsp;</p>\r\n\r\n<p>All Sosmed : <a href=\"https://www.homwere.com/\">https://www.homwere.com/</a></p>', 'Ardan Anjung', '2022-03-07 17:05:39', '2022-03-07 17:05:39'),
(87, 'new-airdrop-multigaming-220308120556', '🏂 New Airdrop Multigaming', 'noimg.jpg', '<p>🏂 New Airdrop Multigaming<br />\r\n🎁 Reward Pool 145K $ZQB For random 4500 orang</p>\r\n\r\n<p>👉 Register : <a href=\"https://wn.nr/EQkHrW\">https://wn.nr/EQkHrW</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Detail<br />\r\n- Submit BSC Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-07 17:05:56', '2022-03-07 17:05:56'),
(88, 'new-airdrops-valoran-220308120610', 'New Airdrops : Valoran', 'noimg.jpg', '<p>New Airdrops : Valoran<br />\r\n🏷 Reward : &nbsp;$3 in VAR (for 1,000 random users)<br />\r\n🪂 Register :<br />\r\n<a href=\"https://t.me/ValoranGameBot?start=r0971562717\">https://t.me/ValoranGameBot?start=r0971562717</a><br />\r\n➖ Complete All Task<br />\r\n➖ Submit Details<br />\r\n➖ Enter BSC Address</p>', 'Ardan Anjung', '2022-03-07 17:06:10', '2022-03-07 17:06:10'),
(89, 'trustline-token-hog-220308121030', 'Trustline Token: $Hog', 'noimg.jpg', '<p>New Trustline📌</p>\r\n\r\n<p>Token: $Hog<br />\r\nTwitter: @HogxNFT&nbsp;<br />\r\nTrustline: <a href=\"https://t.co/ZowyK8nNnA\">https://t.co/ZowyK8nNnA</a></p>\r\n\r\n<p>⇨ DYOR bosq. Please do your own research and be cautious bosq 🤘🏽#Trustline #XRP #XUMMcommunity</p>', 'Ardan Anjung', '2022-03-07 17:10:30', '2022-03-07 17:10:30'),
(90, 'parabola-airdrop-220308121046', '🔴Parabola Airdrop🔴', 'noimg.jpg', '<p>🔴Parabola Airdrop🔴</p>\r\n\r\n<p>🧧Free 300 PRB ( For 1,000 Winner)&nbsp;</p>\r\n\r\n<p>#NOKYC Yuk Gasken Lah</p>\r\n\r\n<p>📢Join Now <a href=\"https://giv.gg/r/sdFG7Y-Zqy58i\">https://giv.gg/r/sdFG7Y-Zqy58i</a><br />\r\n✅Selesaikan Task<br />\r\n✅Enter CRC20 ( Same With BSC Addres)&nbsp;<br />\r\n✅Done</p>', 'Ardan Anjung', '2022-03-07 17:10:46', '2022-03-07 17:10:46'),
(91, 'metabloqs-airdrop-220308121107', '📨 Metabloqs Airdrop', 'noimg.jpg', '<p>📨 Metabloqs Airdrop<br />\r\n💎 Reward Metabloqs Rare Assets + NFT Land + XDC Token for 5K FCFS</p>\r\n\r\n<p><a href=\"https://metabloqs.com/\">https://metabloqs.com/</a></p>\r\n\r\n<p>- Click &#39;Join NOW&#39;<br />\r\n- Register with email<br />\r\n- Verify email (spam folder)<br />\r\n- Submit data<br />\r\n- Enter address XDC<br />\r\n🔥 Done</p>\r\n\r\n<p>Create XDC Wallet</p>\r\n\r\n<p><a href=\"https://wallet.xinfin.network/#/\">https://wallet.xinfin.network/#/</a></p>', 'Ardan Anjung', '2022-03-07 17:11:07', '2022-03-07 17:11:07'),
(92, 'tzworld-early-access-key-giveaway-220308121146', 'tzWorld Early Access Key Giveaway', 'noimg.jpg', '<p>tzWorld Early Access Key Giveaway</p>\r\n\r\n<p>🪂 Fill Form : &nbsp;<a href=\"https://docs.google.com/forms/d/e/1FAIpQLSe6pFsP5uQs3sgJM1Z2fFpNo0pJuDmLwoh05aW7NNTHGE9inQ/viewform\">https://docs.google.com/forms/d/e/1FAIpQLSe6pFsP5uQs3sgJM1Z2fFpNo0pJuDmLwoh05aW7NNTHGE9inQ/viewform</a><br />\r\n➖ Complete Task<br />\r\n➖ Submit Tezos Address from kukai wallet.</p>', 'Ardan Anjung', '2022-03-07 17:11:46', '2022-03-07 17:11:46'),
(93, 'rolling-ball-airdrop-220308121201', '📨Rolling Ball Airdrop', 'noimg.jpg', '<p>📨Rolling Ball Airdrop<br />\r\n💎 Reward : 10,000,000 $GAME For 1000 Winners</p>\r\n\r\n<p>Join Airdrop : <a href=\"https://share-w.in/787eso-52308\">https://share-w.in/787eso-52308</a><br />\r\n- Complete All Task<br />\r\n- Submit BSC Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-07 17:12:01', '2022-03-07 17:12:01'),
(94, 'yola-airdrop-220308121220', '🏂 Yola Airdrop', 'noimg.jpg', '<p>🏂 Yola Airdrop<br />\r\n🎁 Reward $10 Token Fcfs 20k User</p>\r\n\r\n<p>👉 Start Bot : Airdrop Legit</p>\r\n\r\n<p><a href=\"https://t.me/YolaFinanceAirdrop_bot?start=r0971562717\">https://t.me/YolaFinanceAirdrop_bot?start=r0971562717</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Detail<br />\r\n- Submit BSC Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-07 17:12:20', '2022-03-07 17:12:20'),
(95, 'taki-alpha-airdrop-220328111035', 'Taki Alpha Airdrop', 'noimg.jpg', '<p>🔎 New Airdrop: Taki Alpha (SOLANA)</p>\r\n\r\n<p>🎁 Reward : 50 $TAKI</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🔮Register Here :</p>\r\n\r\n<p>&nbsp;<a href=\"https://taki.app/alpha/waitlist/\">https://taki.app/alpha/waitlist/</a></p>\r\n\r\n<p>🔹 Fill with your email address</p>\r\n\r\n<p>🔹 Verify Email</p>\r\n\r\n<p>🔹 Done</p>', 'Ardan Anjung', '2022-03-28 23:10:35', '2022-03-28 23:10:35'),
(96, 'space-passport-airdrop-220328111158', 'Space Passport Airdrop', 'noimg.jpg', '<p>🏂 New SpacePassport Airdrop</p>\r\n\r\n<p>🎁 Reward 1,500 $SPP Winner First Come First Serve 10,000 User</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>👉 Fill The Form : https://forms.gle/WWtFcSBMtpwYJmXr7</p>\r\n\r\n<p>- Complete All Task&nbsp;</p>\r\n\r\n<p>- Submit Detail</p>\r\n\r\n<p>- Submit ALGO Address&nbsp;&nbsp;</p>\r\n\r\n<p>- Done</p>', 'Ardan Anjung', '2022-03-28 23:11:58', '2022-03-28 23:11:58'),
(97, 'beamer-bridge-testnet-is-live-220329080604', '🏂 Beamer Bridge Testnet Is Live ', 'noimg.jpg', '<p>🏂 Beamer Bridge Testnet Is Live&nbsp;</p>\r\n\r\n<p>Beamer Is Now Live On Testnet. You Can Do Test Token ( TST ) Transfer From Boba Rinkeby To Metis Stardust - And Vice Versa</p>\r\n\r\n<p>👉 Detail :&nbsp;<a href=\"https://medium.com/@BeamerBridge/announcing-beamer-bridge-69ce1b59b5ca\">https://medium.com/@BeamerBridge/announcing-beamer-bridge-69ce1b59b5ca</a></p>\r\n\r\n<p>&nbsp;</p>', 'Ardan Anjung', '2022-03-29 20:06:04', '2022-03-29 20:06:04'),
(98, 'utu-live-on-polygon-goerli-network-220329080644', 'UTU 🛫 Live On Polygon / Goerli Network', 'noimg.jpg', '<p>New Incentivized Testnet : UTU<br />\r\n🛫 Live On Polygon / Goerli Network<br />\r\n➖️ Claim Faucet :<br />\r\n<a href=\"https://faucet.paradigm.xyz\">https://faucet.paradigm.xyz</a></p>\r\n\r\n<p><a href=\"https://faucet.polygon.technology/\">https://faucet.polygon.technology/</a></p>\r\n\r\n<p>➖️ Testnet &nbsp;: <a href=\"https://test-defi-portal.utu.io/\">https://test-defi-portal.utu.io/</a> &amp; <a href=\"http://test-app.utu.io\">http://test-app.utu.io</a><br />\r\n➖️ Swap at least 5x &amp; add LP 2x on utu portal.<br />\r\n➖️ Connect all sosmed on <a href=\"http://test-app.utu.io\">http://test-app.utu.io</a><br />\r\n➖️ Go to utu portal and send feedback via button give feedback.&nbsp;<br />\r\n&nbsp;<br />\r\n📑 Details : <a href=\"https://medium.com/@utu-trust/the-utu-protocol-testnet-is-now-live-6a50750592d\">https://medium.com/@utu-trust/the-utu-protocol-testnet-is-now-live-6a50750592d</a></p>', 'Ardan Anjung', '2022-03-29 20:06:44', '2022-03-29 20:06:44'),
(99, 'new-airdrops-rly-220329081105', 'New Airdrops : RLY', 'noimg.jpg', '<p>New Airdrops : RLY<br />\r\nReward : 70 Tokens ( For All New Users )<br />\r\nRegister : <a href=\"https://seedr.app/rewards?referralCode=p9g7p88E\">https://seedr.app/rewards?referralCode=p9g7p88E</a><br />\r\n➖ Open With Mode Dekstop Chrome<br />\r\n➖ Click &#39; Signup &#39; With Email<br />\r\n➖ Click Profile<br />\r\n➖ Connect Google&nbsp;<br />\r\n➖ Create Account <a href=\"http://Rally.io\">http://Rally.io</a><br />\r\n➖ Connect Rally Account<br />\r\n➖ Done.</p>\r\n\r\n<p>&nbsp;</p>', 'Ardan Anjung', '2022-03-29 20:11:05', '2022-03-29 20:11:05'),
(100, 'teeter-finance-testnet-220330082835', 'Teeter Finance Testnet', 'noimg.jpg', '<p>Testnet Incentived Teeter Finance</p>\r\n\r\n<p>Event Periode 28 Maret - 6 April 2022</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Claim Faucet Kovan :</p>\r\n\r\n<p><a href=\"https://medium.com/@teeter.finance/how-to-get-test-tokens-30ba84c0196c\">https://medium.com/@teeter.finance/how-to-get-test-tokens-30ba84c0196c</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>👉 Register Testnet :</p>\r\n\r\n<p><a href=\"https://testnet.teeter.finance/\">https://testnet.teeter.finance/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>👉 Fill The Form :</p>\r\n\r\n<p><a href=\"https://forms.gle/uHvMi1GXAyM5zJ8V8\">https://forms.gle/uHvMi1GXAyM5zJ8V8</a></p>\r\n\r\n<p>👉 Referral Address :&nbsp;</p>\r\n\r\n<p>0x60F33a638281d53F57f77497C01Af2Accf14D3F5</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Twitter : <a href=\"https://twitter.com/teeter_finance\">https://twitter.com/teeter_finance</a></p>\r\n\r\n<p>- Telegram : <a href=\"https://t.me/teeter_finance\">https://t.me/teeter_finance</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>👉 Detail : <a href=\"https://medium.com/@teeter.finance/phase-ii-of-teeter-dapp-testing-share-3-000-usdt-f9bb65b71beb\">https://medium.com/@teeter.finance/phase-ii-of-teeter-dapp-testing-share-3-000-usdt-f9bb65b71beb</a></p>', 'Ardan Anjung', '2022-03-30 08:28:35', '2022-03-30 08:28:35'),
(102, 'prisma-finance-testnet-is-live-220330094354', '🏂 PRISMA Finance Testnet Is Live', 'noimg.jpg', '<p>🏂 PRISMA Finance Testnet Is Live</p>\r\n\r\n<p>👉 Register Testnet : <a href=\"https://app.prisma.farm/\">https://app.prisma.farm/</a></p>\r\n\r\n<p>- Switch to Mumbai Testnet : <a href=\"https://t.co/8mkgV7ox74\">https://t.co/8mkgV7ox74</a><br />\r\n- Faucet : <a href=\"https://t.co/G0yvsyRVp9\">https://t.co/G0yvsyRVp9</a><br />\r\n- Claim Test Prisma Token<br />\r\n- Stake And Earn<br />\r\n- Done</p>\r\n\r\n<p>👉 Detail :<a href=\"https://twitter.com/prisma_finance/status/1508859479743504391?t=KkIrZ7XC1LVzUZ5rKsRhLw&amp;s=19\">https://twitter.com/prisma_finance/status/1508859479743504391?t=KkIrZ7XC1LVzUZ5rKsRhLw&amp;s=19</a></p>', 'Ardan Anjung', '2022-03-30 09:43:54', '2022-03-30 09:43:54'),
(103, 'tokamak-network-testnet-on-rinkeby-220330094424', '🏂 Tokamak Network Testnet on Rinkeby', 'noimg.jpg', '<p>🏂 Tokamak Network Testnet on Rinkeby</p>\r\n\r\n<p>👉 Register Testnet :<a href=\"https://testnet3.gateway.tokamak.network/\">https://testnet3.gateway.tokamak.network/</a></p>\r\n\r\n<p>Faucet Rikenby : <a href=\"https://rinkebyfaucet.com\">https://rinkebyfaucet.com</a></p>\r\n\r\n<p>👉 How Complete :<br />\r\n- Get Faucet<br />\r\n- Switch Network To Rinkeby<br />\r\n- Go To Gateway<br />\r\n- Connect Wallet<br />\r\n- Swap 3 - 5x<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-30 09:44:24', '2022-03-30 09:44:24'),
(104, 'swappi-testnet-220330095226', 'Swappi Testnet', 'noimg.jpg', '<p>📣 Swappi Testnet and Bug Bounty&nbsp;<br />\r\n💵 Reward Pool : $100,000 PPI</p>\r\n\r\n<p><a href=\"https://testnet.swappi.io/#/swap/\">https://testnet.swappi.io/#/swap</a></p>\r\n\r\n<p>Network : Conflux ( auto set rpc )<br />\r\nWallet : Metamask<br />\r\nFaucet : <a href=\"https://efaucet.confluxnetwork.org/\">https://efaucet.confluxnetwork.org/</a>( faucet bau bau easy down amankan sir )</p>\r\n\r\n<p>Task :&nbsp;</p>\r\n\r\n<p>1. Swap 10x&nbsp;<br />\r\n2. Add Liquid 2 Pair Token&nbsp;<br />\r\n3. Farming&nbsp;<br />\r\n4. Staking&nbsp;<br />\r\n5. Follow our Twitter account: <a href=\"https://twitter.com/SwappiDEX\">https://twitter.com/SwappiDEX</a></p>\r\n\r\n<p>6. Join our Telegram group:&nbsp;<a href=\"https://t.me/Swappi_DEX\">https://t.me/Swappi_DEX</a></p>\r\n\r\n<p>7. Submit the Google form with your feedback: <a href=\"https://forms.gle/FJ1mjgGTT3PHsm5J7\">https://forms.gle/FJ1mjgGTT3PHsm5J7</a></p>\r\n\r\n<p>Early masszeh</p>', 'Ardan Anjung', '2022-03-30 09:52:26', '2022-03-30 09:52:26'),
(105, 'new-incentive-testnet-theia-220331110815', '🏂 New Incentive Testnet THEIA', 'noimg.jpg', '<p>- Wallet : Metamask ekstensi<br />\r\n- Network : RPC Avax Fuji ( Add Auto rpc.info )</p>\r\n\r\n<p>👉 Register Testnet :<br />\r\n<a href=\"http://testnet.theia.finance\">http://testnet.theia.finance</a><br />\r\n- Connect Wallet<br />\r\n- Request Avax &amp; USDC Faucet</p>\r\n\r\n<p>👉 Task :<br />\r\n- Investment Flow<br />\r\n- Selling Flow<br />\r\n- Token Conversion Flow<br />\r\n- View Your Investments<br />\r\n- Technicals<br />\r\n- Troubleshooting</p>\r\n\r\n<p>👉 Details :<a href=\"https://medium.com/@theia.finance/theia-testnet-user-instruction-manual-357e2c388813\">https://medium.com/@theia.finance/theia-testnet-user-instruction-manual-357e2c388813</a></p>\r\n\r\n<p>👉 Bug report &amp; suggestion :<a href=\"https://github.com/Theia-Protocol/bounty-program/blob/main/README.md\">https://github.com/Theia-Protocol/bounty-program/blob/main/README.md</a></p>', 'Ardan Anjung', '2022-03-31 23:08:15', '2022-03-31 23:08:15'),
(106, 'telos-name-service-testnet-guide-220331110908', 'Telos Name Service Testnet Guide', 'noimg.jpg', '<p>🏂 Telos Name Service Testnet Guide</p>\r\n\r\n<p>Faucet : <a href=\"https://app.telos.net/testnet/developers\">https://app.telos.net/testnet/developers</a><br />\r\n- Submit EVM ( 0x ) Address At the Bottom<br />\r\n- Click Send Testnet Evm Tlos</p>\r\n\r\n<p>👉 Register Testnet : <a href=\"https://tlos.domains/register\">https://tlos.domains/register</a></p>\r\n\r\n<p>- Connect Wallet<br />\r\n- Search Domain Name<br />\r\n- Buy<br />\r\n- Done</p>\r\n\r\n<p>👉 Telos EVM Rpc Network :</p>\r\n\r\n<p>- Chain Name : Telos EVM Testnet<br />\r\n- New RPC URL : <a href=\"https://testnet.telos.net/evm\">https://testnet.telos.net/evm</a><br />\r\n- Chain ID : 41<br />\r\n- Symbol : TLOS<br />\r\n- Block Explorer URL : <a href=\"https://teloscan.net\">https://teloscan.net</a></p>', 'Ardan Anjung', '2022-03-31 23:09:08', '2022-03-31 23:09:08'),
(107, 'tutor-testnet-comdex-220402025837', '🏂 Tutor testnet COMDEX!', 'noimg.jpg', '<p>🏂 Tutor testnet COMDEX!</p>\r\n\r\n<p>👉 Register Testnet : <a href=\"https://dev-cassets.comdex.one/swap#buy\">https://dev-cassets.comdex.one/swap#buy</a></p>\r\n\r\n<p>Faucet : <a href=\"https://faucet.comdex.one\">https://faucet.comdex.one</a></p>\r\n\r\n<p>👉 Task :&nbsp;<br />\r\n- Lakukan swap pada eGold, cSilver, cOil &amp; DLL ( Bebas Apa Aja )<br />\r\n- Next Ke Borrow , Pilih Asset Yang Mau Di borrow<br />\r\n- Habis Itu Ke Edit , Di Tab Deposit Silahkan Lakukan Deposit<br />\r\n- Terakhir Ada Close , Silahkan Close Transaksi</p>\r\n\r\n<p>👉 Farm :<br />\r\n- Add Liquidity<br />\r\n- Cabut Liquidity Yang Di buat</p>', 'Ardan Anjung', '2022-04-02 14:58:37', '2022-04-02 14:58:37'),
(108, 'uba-airdrop-new-round-220403080017', 'Uba Airdrop New Round', 'noimg.jpg', '<p>New Airdrops : UBA New Round</p>\r\n\r\n<p>🏷 Reward : 80 UBA ( For All )</p>\r\n\r\n<p>🪂 Register : <a href=\"https://t.me/ubaairdrop_bot\">https://t.me/ubaairdrop_bot</a></p>\r\n\r\n<p>➖ Join Telegram&nbsp;</p>\r\n\r\n<p>➖ Follow Twitter &amp; Retweet&nbsp;</p>\r\n\r\n<p>➖️ Follow Medium&nbsp;</p>\r\n\r\n<p>➖️ Fill Form</p>\r\n\r\n<p>➖ Submit Details &amp; UBA Email or OEC Address</p>', 'Ardan Anjung', '2022-04-03 20:00:17', '2022-04-03 20:00:17'),
(109, 'accrue-waitlist-220403080055', 'Accrue Waitlist', 'noimg.jpg', '<p>New Waitlist : Accrue</p>\r\n\r\n<p>👉 Submit New Sollet / Phantom Address : <a href=\"https://puwk7kekgxg.typeform.com/to/IjU5W9Wp?typeform-source=t.co\">https://puwk7kekgxg.typeform.com/to/IjU5W9Wp?typeform-source=t.co</a></p>\r\n\r\n<p>➖️ Follow Twitter &amp; Retweet</p>\r\n\r\n<p><a href=\"https://twitter.com/accrue_finance/status/1509666723037069312?t=oLzHqjSwZgJo-GxMMVrdxw&amp;s=19\">https://twitter.com/accrue_finance/status/1509666723037069312?t=oLzHqjSwZgJo-GxMMVrdxw&amp;s=19</a></p>\r\n\r\n<p>&nbsp;</p>', 'Ardan Anjung', '2022-04-03 20:00:55', '2022-04-03 20:00:55'),
(110, 'local-terra-testnet-220403080220', 'Local Terra Testnet', 'noimg.jpg', '<p>🏂 Local Terra Testnet<br />\r\n🎁 Reward Potential&nbsp;</p>\r\n\r\n<p>👉 Register Testnet : <a href=\"https://testnet.localterra.money/\">https://testnet.localterra.money/</a></p>\r\n\r\n<p>- Network : Terra ( LUNA )<br />\r\n- Wallet : Terra Station<br />\r\n- Faucet : <a href=\"https://faucet.terra.money/\">https://faucet.terra.money/</a></p>\r\n\r\n<p>👉 Task :&nbsp;<br />\r\n- Buy and Sell&nbsp;<br />\r\n- Create Offer<br />\r\n- Send feedback To :</p>\r\n\r\n<p>https://discord.gg/ZygQcYBHJm</p>', 'Ardan Anjung', '2022-04-03 20:02:20', '2022-04-03 20:02:20'),
(111, 'ego-airdrop-220404094508', 'Ego Airdrop', 'noimg.jpg', '<p>Paste address yang atas aja</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>https://docs.google.com/forms/d/e/1FAIpQLSf5IXki96DB9JYNcUhWKOj8HXfKCLqO57DRLGQzAAeXh_8abw/viewform</p>', 'Ardan Anjung', '2022-04-04 21:45:08', '2022-04-04 21:45:08'),
(112, 'olta-testnet-220404094623', 'Olta Testnet', 'noimg.jpg', '<p>🏂 Olta Testnet</p>\r\n\r\n<p>🎁 Reward Confirmed Airdrop</p>\r\n\r\n<p>Join Dicord :</p>\r\n\r\n<p>https://discord.gg/NXMR5ESXbx</p>\r\n\r\n<p>👉 Detail : <a href=\"https://twitter.com/OltaArt/status/1510900549813739521\">https://twitter.com/OltaArt/status/1510900549813739521</a></p>\r\n\r\n<p>- Follow , Like &amp; Retweet</p>\r\n\r\n<p>- Comment ID Discord &amp; Tag 3 Friend</p>\r\n\r\n<p>- Done</p>', 'Ardan Anjung', '2022-04-04 21:46:23', '2022-04-04 21:46:23'),
(113, 'coinmarketcap-earn-solar-sxp-220407072422', 'CoinMarketCap Earn | Solar (SXP)', 'noimg.jpg', '<p>CoinMarketCap Earn | Solar (SXP)</p>\r\n\r\n<p>🏷 Reward : $25 ( Random 5000 Winner )</p>\r\n\r\n<p>🪂 Register : <a href=\"https://coinmarketcap.jotform.com/220947727078971\">https://coinmarketcap.jotform.com/220947727078971</a></p>\r\n\r\n<p>Answer&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Solar&#39;s governance is set up as:</p>\r\n\r\n<p>Answer: A fully decentralized autonomous organization (DAO)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. What innovations will Solar support within its ecosystem?</p>\r\n\r\n<p>Answer: All of the above</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. How are node operators chosen?</p>\r\n\r\n<p>Answer: Based on votes by coin holders</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4. What is the native coin of the Solar network?</p>\r\n\r\n<p>Answer: SXP</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5. What happens to transaction fees?</p>\r\n\r\n<p>Answer: 90% of fees are burned. The remaining 10% is earned by node operators</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6. How does Solar help to ensure a sustainable blockchain future?</p>\r\n\r\n<p>Answer: Solar uses a highly energy-efficient consensus mechanism for its own blockchain and native coin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>7. Solar&#39;s platform is</p>\r\n\r\n<p>Answer: Open source on Github</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>8. What is a delegate?</p>\r\n\r\n<p>Answer: A node operator, who secures the network by validating transactions and minting new blocks.</p>', 'Ardan Anjung', '2022-04-07 19:24:22', '2022-04-07 19:24:22'),
(114, 'binance-giveaway-nft-mystery-box-220409042156', 'Binance Giveaway Nft Mystery Box', 'noimg.jpg', '<p>Binance Giveaway Nft Mystery Box</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Join Now</p>\r\n\r\n<p><a href=\"https://docs.google.com/forms/d/e/1FAIpQLSfmhzC9yFnPZJszc0ilgJNTQFTlRsPDL8rIUhvs1NNBiM7lIA/viewform\">https://docs.google.com/forms/d/e/1FAIpQLSfmhzC9yFnPZJszc0ilgJNTQFTlRsPDL8rIUhvs1NNBiM7lIA/viewform</a></p>\r\n\r\n<p>Masukan Binance UID ( Must KYC )</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Quiz Answers :</p>\r\n\r\n<p>1. A</p>\r\n\r\n<p>2. B</p>\r\n\r\n<p>3. A</p>\r\n\r\n<p>4. C</p>\r\n\r\n<p>5. A</p>\r\n\r\n<p>6. B</p>\r\n\r\n<p>7. C</p>\r\n\r\n<p>8. A</p>\r\n\r\n<p>9. C</p>\r\n\r\n<p>10. B</p>', 'Ardan Anjung', '2022-04-09 04:21:56', '2022-04-09 04:21:56'),
(115, 'vaiot-testnet-220409100700', '🏂 Vaiot Testnet', 'noimg.jpg', '<p>🏂 Vaiot Testnet<br />\r\n🎁 Reward Confirmed Airdrop&nbsp;</p>\r\n\r\n<p>👉 Register Testnet : <a href=\"https://testscan.vaiot.ai/\">https://testscan.vaiot.ai/</a></p>\r\n\r\n<p>- Network : Cosmos<br />\r\n- Wallet : <a href=\"https://wallet-dev.vaiot.ai/\">https://wallet-dev.vaiot.ai/</a><br />\r\n- Faucet : <a href=\"https://faucet-dev.vaiot.ai/\">https://faucet-dev.vaiot.ai/</a></p>\r\n\r\n<p>👉 Task :<br />\r\n- Follow And Retweet Post : <a href=\"https://twitter.com/VAIOT_LTD/status/1512419556094091270?t=hF2lZTBajPYnWIJhOYOmoQ&amp;s=19\">https://twitter.com/VAIOT_LTD/status/1512419556094091270?t=hF2lZTBajPYnWIJhOYOmoQ&amp;s=19</a><br />\r\n- Create Wallet (import mnemonic wallet baru ) dan ambil faucet&nbsp;<br />\r\n- Connect ke testnet&nbsp;<br />\r\n- Delegate token : &nbsp;<a href=\"https://testscan.vaiot.ai/validators\">https://testscan.vaiot.ai/validators</a></p>\r\n\r\n<p>Optional Task : Comment Dipost Tweet Dengan Screenshot Delegasi Kalian + Address Vaiot</p>\r\n\r\n<p>Untuk Address , Prhase Nya Bisa Diimport Dari Kpler , Masukin Ke : <a href=\"https://wallet-dev.vaiot.ai/signin?account=&amp;client=https%3A%2F%2Ftestscan.vaiot.ai%2Fvalidators&amp;lcd=https%3A%2F%2Ftestnet-rest.vaiot.ai&amp;path=44%2F118%2F0%2F0%2F0&amp;payload=vaiot\">https://wallet-dev.vaiot.ai/signin?account=&amp;client=https%3A%2F%2Ftestscan.vaiot.ai%2Fvalidators&amp;lcd=https%3A%2F%2Ftestnet-rest.vaiot.ai&amp;path=44%2F118%2F0%2F0%2F0&amp;payload=vaiot</a> ( Chrome )</p>\r\n\r\n<p>👉 Detail : <a href=\"https://vaiotltd.medium.com/vaiot-public-testnet-is-live-59d2362dfd28\">https://vaiotltd.medium.com/vaiot-public-testnet-is-live-59d2362dfd28</a></p>', 'Ardan Anjung', '2022-04-09 10:07:00', '2022-04-09 10:07:00'),
(116, 'new-airdrops-aidr-220409111453', 'New Airdrops : AIDR', 'noimg.jpg', '<p>New Airdrops : AIDR<br />\r\n🏷 Reward : Up to $100 in AIDR<br />\r\n🪂 Go to Lobstr &amp; Add Asset AIDR<br />\r\n➖ Then Click&nbsp;<a href=\"https://afreum.com/ice/sites/app/index.cfm?sid=3&amp;cid=73&amp;referer=R0FNTVlIS1dWN1hIRlBWTlNSV1lTTVdISUFWSVRQQkZGRlQzUks2N1hRWU83SUVPWVVJREcyQUU=\">https://afreum.com/ice/sites/app/index.cfm?sid=3&amp;cid=73&amp;referer=R0FNTVlIS1dWN1hIRlBWTlNSV1lTTVdISUFWSVRQQkZGRlQzUks2N1hRWU83SUVPWVVJREcyQUU=</a></p>\r\n\r\n<p>➖ Enter Your Stellar Address<br />\r\n➖ Done<br />\r\n➖ If You Have Friend, You Can Invite ( Max 5 ) Get $100 &amp; Task Invite is Optional&nbsp;</p>\r\n\r\n<p>Snapshot and distribution period is April 27, 2022 12PM UTC - April 30 12PM UTC.</p>\r\n\r\n<p>Focus on number 1 &amp; 2<br />\r\n3 &amp; 4 Not Mandatory</p>', 'Ardan Anjung', '2022-04-09 11:21:09', '2022-04-09 11:14:53'),
(117, 'healthland-airdrop-220409122114', 'Healthland Airdrop', 'noimg.jpg', '<p>Airdrop All User</p>\r\n\r\n<p>Healthland Swap :&nbsp;</p>\r\n\r\n<p><a href=\"http://my.healthland.io/?ref=u1649481484756\">http://my.healthland.io/?ref=u1649481484756</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Konek pake metamask BSC - Klik Profil - Klik Earn Money - Done</p>', 'Ardan Anjung', '2022-04-09 12:21:14', '2022-04-09 12:21:14'),
(118, 'waitlist-apex-nft-10k-users-220410021003', 'Waitlist APEX NFT 10k users.', 'noimg.jpg', '<p><a href=\"https://waitlist.apenftex.com/0573af90-b89d-11ec-83b0-9b74820e05d8\">https://waitlist.apenftex.com/0573af90-b89d-11ec-83b0-9b74820e05d8</a></p>\r\n\r\n<p>Waitlist APEX NFT 10k users.</p>', 'Ardan Anjung', '2022-04-10 14:10:03', '2022-04-10 14:10:03'),
(119, 'bora-20-renewal-airdrop-220411011700', 'Bora 2.0 Renewal Airdrop', 'noimg.jpg', '<p>BORA 2.0 Renewal Airdrop</p>\r\n\r\n<p>3000 winner</p>\r\n\r\n<p><a href=\"https://wn.nr/GUUjyn\">https://wn.nr/GUUjyn</a></p>', 'Ardan Anjung', '2022-04-11 13:17:00', '2022-04-11 13:17:00'),
(120, 'umee-v2-testnet-220414094507', 'Umee V2 Testnet', 'noimg.jpg', '<p>Umee V2&nbsp;</p>\r\n\r\n<p>Register Testnet : <a href=\"https://testnet.umee.cc\">https://testnet.umee.cc</a></p>\r\n\r\n<p>📖 Detail : <a href=\"https://twitter.com/Umee_CrossChain/status/1514608465292922886\">https://twitter.com/Umee_CrossChain/status/1514608465292922886</a></p>\r\n\r\n<p>Ummemania Testnet</p>\r\n\r\n<p>📑 Tutorial : <a href=\"https://docs.umee.cc/umee/user-guides/umeemania-testnet\">https://docs.umee.cc/umee/user-guides/umeemania-testnet</a></p>\r\n\r\n<p>✅ Send Feedback : <a href=\"https://forms.gle/CFhWWa5BhHh4EZnUA\">https://forms.gle/CFhWWa5BhHh4EZnUA</a></p>\r\n\r\n<p>&nbsp;</p>', 'Ardan Anjung', '2022-04-15 07:48:55', '2022-04-14 21:45:07'),
(121, 'gambit-airdrop-220415080059', 'Gambit Airdrop', 'noimg.jpg', '<p><a href=\"https://vrlps.co/4rgyr5t/cp\">https://vrlps.co/4rgyr5t/cp</a><br />\r\n<br />\r\nModal email! Maksimalkan, next SRLY</p>', 'Ardan Anjung', '2022-04-15 08:00:59', '2022-04-15 08:00:59'),
(122, 'airdrop-taki-alpha-220418083409', 'Airdrop : Taki Alpha', 'noimg.jpg', '<p>Airdrop : Taki Alpha</p>\r\n\r\n<p>Link : <a href=\"https://taki.app/invite/eqPbBUFAiClb1y\">https://taki.app/invite/eqPbBUFAiClb1y</a></p>\r\n\r\n<p>- Regist via email<br />\r\n- Verify no hp<br />\r\n- Finish daily task</p>\r\n\r\n<p>Max 5 invit</p>', 'Ardan Anjung', '2022-04-18 08:34:09', '2022-04-18 08:34:09'),
(123, 'new-waitlist-stackedinvested-220418083432', 'New Waitlist : StackedInvested', 'noimg.jpg', '<p>New Waitlist : StackedInvested</p>\r\n\r\n<p>Link : <a href=\"https://waitlist.stackedinvest.com/invest?kid=24DV4R\">https://waitlist.stackedinvest.com/invest?kid=24DV4R</a></p>\r\n\r\n<p>- Input email &amp; verify<br />\r\n- selesaikan task</p>', 'Ardan Anjung', '2022-04-18 08:34:32', '2022-04-18 08:34:32'),
(124, 'airdrop-mining-battlemechs-220418083502', 'Airdrop Mining : BattleMechs', 'noimg.jpg', '<p>Airdrop Mining : BattleMechs</p>\r\n\r\n<p>Register : <a href=\"https://battlemechs.co/referral?code=fiatama​\">https://battlemechs.co/referral?code=fiatama​</a></p>\r\n\r\n<p>- Download Apk<br />\r\n- Create Mech , masukan kode : fiatama<br />\r\n- Klik mining - mining tiap 6 jam sekali</p>', 'Ardan Anjung', '2022-04-18 08:35:02', '2022-04-18 08:35:02'),
(125, 'get-3-in-nxd-nft-for-all-220420022343', '🏂 Get 3$ in NXD NFT For All', 'noimg.jpg', '<p>🏂 Get 3$ in NXD NFT For All</p>\r\n\r\n<p>👉 Fill The Form : <a href=\"https://docs.google.com/forms/u/0/d/e/1FAIpQLSeWJqTJkch7OaW8JvVpMPTkWS8C9dXVypoGSLKGGrEpBLOOxg/formResponse\">https://docs.google.com/forms/u/0/d/e/1FAIpQLSeWJqTJkch7OaW8JvVpMPTkWS8C9dXVypoGSLKGGrEpBLOOxg/formResponse</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Detail<br />\r\n- Submit MATIC Address<br />\r\n- Done</p>\r\n\r\n<p>👉 Detail : <a href=\"https://twitter.com/Nexus_Dubai/status/1516569761253048325?t=5IBeQ3eE7H9qJjCKZwlhkg&amp;s=19\">https://twitter.com/Nexus_Dubai/status/1516569761253048325?t=5IBeQ3eE7H9qJjCKZwlhkg&amp;s=19</a></p>', 'Ardan Anjung', '2022-04-20 14:23:43', '2022-04-20 14:23:43'),
(126, 'the-pararel-airdrop-220421103210', 'The pararel airdrop', 'noimg.jpg', '<p>New Airdrops : Theparallel</p>\r\n\r\n<p>➡️ Open With TokenPocket : <a href=\"https://airdrop.theparallel.io/\">https://airdrop.theparallel.io/</a></p>\r\n\r\n<p>➖️ Connect With New ETH Address&nbsp;</p>\r\n\r\n<p>➖️ Enter Referral Code : 837125255</p>\r\n\r\n<p>➖️ View Video</p>\r\n\r\n<p>➖️ Answer Question&nbsp;</p>\r\n\r\n<p>➖️ Quote Tweet &amp; Follow&nbsp;</p>\r\n\r\n<p><a href=\"https://twitter.com/theparallel_io\">https://twitter.com/theparallel_io</a></p>\r\n\r\n<p>➖️ Copy Tweet</p>\r\n\r\n<p>➖️ Submit</p>\r\n\r\n<p>➖️ Unbox</p>', 'Ardan Anjung', '2022-04-21 22:32:10', '2022-04-21 22:32:10'),
(127, 'aiza-world-quiz-220423044438', 'Aiza World Quiz', 'noimg.jpg', '<p>🚀Aiza World Quiz&nbsp;</p>\r\n\r\n<p>💰Total 300k AIZA for all user</p>\r\n\r\n<p>Fresh airdrop</p>\r\n\r\n<p><a href=\"https://t.me/AizaWorldQuizBot?start=r02266306600\">https://t.me/AizaWorldQuizBot?start=r02266306600</a></p>\r\n\r\n<p>- Complete task</p>\r\n\r\n<p>- Enter data</p>\r\n\r\n<p>- Enter BSC address</p>\r\n\r\n<p>Done</p>\r\n\r\n<p>Complete quiz task</p>\r\n\r\n<p>https://woobox.com/pnxxtw</p>\r\n\r\n<p>Answer :&nbsp;</p>\r\n\r\n<p>➖Loan for play</p>\r\n\r\n<p>➖26 April</p>\r\n\r\n<p>➖ 3</p>\r\n\r\n<p>&nbsp;➖Indoex,vindax,p2pb2b</p>\r\n\r\n<p>➖$0.06</p>\r\n\r\n<p>➖ 24 may 202</p>\r\n\r\n<p>➖Aiza world in the global eyes</p>\r\n\r\n<p>➖300.000</p>', 'Ardan Anjung', '2022-04-23 16:44:38', '2022-04-23 16:44:38'),
(128, 'nfl-airdrops-220423080725', 'NFL Airdrops', 'noimg.jpg', '<p>New Airdrops : NFL</p>\r\n\r\n<p>Join the waitlist to stay up-to-date on the latest news and access.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🪂 Register : <a href=\"https://swee.ps/TmMlq_GamjDHV\">https://swee.ps/TmMlq_GamjDHV</a></p>\r\n\r\n<p>➖ Click &#39;JOIN WAITLIST&#39;</p>\r\n\r\n<p>➖ Sign up</p>\r\n\r\n<p>➖ Verify Email</p>\r\n\r\n<p>➖ Done</p>', 'Ardan Anjung', '2022-04-23 20:07:25', '2022-04-23 20:07:25'),
(129, 'lenster-early-adopter-220427030358', 'Lenster Early Adopter', 'noimg.jpg', '<p>🟢 Before start : please Use New Wallet Polygon Testnet Mumbai.</p>\r\n\r\n<p>🟢 Faucet : <a href=\"https://faucet.polygon.technology/\">https://faucet.polygon.technology/</a></p>\r\n\r\n<p>🟢 RPC : <a href=\"https://t.me/airdropfind/9475\">https://t.me/airdropfind/9475</a></p>\r\n\r\n<p>➡️ Open on Kiwi Browser : <a href=\"https://lenster.xyz/\">https://lenster.xyz/</a></p>\r\n\r\n<p>➖️ Connect Wallet</p>\r\n\r\n<p>➖️ Login</p>\r\n\r\n<p>➖️ Enter your Details</p>\r\n\r\n<p>➖️ Post&nbsp;</p>\r\n\r\n<p>➖️ Comment</p>\r\n\r\n<p>➖️ Mirror (click &harr;)</p>\r\n\r\n<p>➖️ Follow any People&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➡️ Join Discord : <a href=\"https://discord.gg/S42s3m5X\">https://discord.gg/S42s3m5X</a></p>\r\n\r\n<p>➖️ You will get &#39;Early user&#39; role</p>\r\n\r\n<p>➖️ Go to # address-drop channel</p>\r\n\r\n<p>➖️ Click the Kryptosign link&nbsp;</p>\r\n\r\n<p>➖️ Connect (with wallet that you used to joined testnet)</p>\r\n\r\n<p>➖️ Login with Discord</p>\r\n\r\n<p>➖️ Authorize</p>\r\n\r\n<p>➖️ Sign Document</p>', 'Ardan Anjung', '2022-04-27 15:04:27', '2022-04-27 15:03:58'),
(130, 'scallop-testnet-220427030603', '🏂 Scallop Testnet', 'noimg.jpg', '<p>🎁 Reward Confirmed</p>\r\n\r\n<p>👉 Register Testnet <a href=\"https://app.scallop.io/\">https://app.scallop.io/</a></p>\r\n\r\n<p>Wallet : Phantom ( New Wallet )<br />\r\nNetwork : Solana Devnet<br />\r\nFaucet : Website</p>\r\n\r\n<p>👉 Task :<br />\r\n- Make a Deposit Of 2 SOL On Lend<br />\r\n- Make a Claim After 1 - 5 Hours&nbsp;<br />\r\n- Make a Complete Withdrawal<br />\r\n- Done</p>\r\n\r\n<p>- Discord : <a href=\"https://discord.gg/uyMvydFfTs\">https://discord.gg/uyMvydFfTs</a></p>\r\n\r\n<p>🏂 Evmos Domains Testnet<br />\r\n🎁 Reward Potential</p>\r\n\r\n<p>👉 Register Testnet :<a href=\"https://test.evmos.domains/\">https://test.evmos.domains/</a></p>\r\n\r\n<p>Faucet : <a href=\"https://faucet.evmos.dev/\">https://faucet.evmos.dev/</a></p>\r\n\r\n<p>👉 Task :&nbsp;<br />\r\n- Connect Your Wallet<br />\r\n- Search Name Or Domains<br />\r\n- Click Name If Available<br />\r\n- Click Register &amp; Confirm On Metamask<br />\r\n- Complete All Step<br />\r\n- Done</p>\r\n\r\n<p>- Discord : <a href=\"https://discord.gg/rSGE39ENM6\">https://discord.gg/rSGE39ENM6</a>&nbsp;( Give Feedback On Discord #testnet To Get Role )</p>', 'Ardan Anjung', '2022-04-27 15:06:03', '2022-04-27 15:06:03'),
(131, 'fourgods-new-round-220503053003', 'FourGods New Round', 'noimg.jpg', '<p>New Airdrops : FourGods New Round</p>\r\n\r\n<p>🏷 Reward : 10 LUX ( For 100,000 Winner )</p>\r\n\r\n<p>🪂 Register : <a href=\"https://wn.nr/QRxkGZ\">https://wn.nr/QRxkGZ</a></p>\r\n\r\n<p>➖ Join Telegram&nbsp;</p>\r\n\r\n<p>➖ Follow Twitter &amp; Retweet&nbsp;</p>\r\n\r\n<p>➖️ Complete Another Task&nbsp;</p>\r\n\r\n<p>➖ Pre Register&nbsp;</p>\r\n\r\n<p>➖️ Enter Wemix Address</p>', 'Ardan Anjung', '2022-05-03 17:30:59', '2022-05-03 17:30:03'),
(132, 'airdrop-wallet-yg-suka-tx-polygon-220503092136', 'Airdrop wallet yg suka tx polygon', 'noimg.jpg', '<p>#info</p>\r\n\r\n<p>wallet yg suka tx polygon</p>\r\n\r\n<p>cek skor kalo di atas 50 dpt claim free token mash</p>\r\n\r\n<p>langsung swap aja gratissss</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>cek score</p>\r\n\r\n<p><a href=\"https://polyscore.polygon.technology/\">https://polyscore.polygon.technology/</a></p>\r\n\r\n<p>claim</p>\r\n\r\n<p><a href=\"https://meshswap.fi/assets\">https://meshswap.fi/assets</a></p>', 'Ardan Anjung', '2022-05-03 21:21:36', '2022-05-03 21:21:36'),
(133, 'mcontent-airdrop-220504093739', '🚀Mcontent Airdrop', 'noimg.jpg', '<p>🚀Mcontent Airdrop</p>\r\n\r\n<p>💰Free 56000000 token ( instan )&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fresh Airdrop</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Download App&nbsp;</p>\r\n\r\n<p>Android : <a href=\"https://play.google.com/store/apps/details?id=com.mcontent\">https://play.google.com/store/apps/details?id=com.mcontent</a></p>\r\n\r\n<p>Ios : <a href=\"https://apps.apple.com/app/mcontent/id1603970931\">https://apps.apple.com/app/mcontent/id1603970931</a></p>\r\n\r\n<p>- Download App&nbsp;</p>\r\n\r\n<p>- Signup with email&nbsp;</p>\r\n\r\n<p>- enter refferal : Fiatama7</p>\r\n\r\n<p>Done&nbsp;</p>', 'Ardan Anjung', '2022-05-04 09:37:39', '2022-05-04 09:37:39'),
(134, 'blur-airdrops-220505070551', 'Blur Airdrops', 'noimg.jpg', '<p>🏷 Reward : FREE Blur Points&nbsp;</p>\r\n\r\n<p>✅ In the future, members will be rewarded for every point.</p>\r\n\r\n<p>⬇️ Register :&nbsp;</p>\r\n\r\n<p><a href=\"https://blur.io/?r=qQ2lpxbxpsP9p\">https://blur.io/?r=qQ2lpxbxpsP9p</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://blur.io/?r=sT7aRxbxGFpf6\">https://blur.io/?r=sT7aRxbxGFpf6</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://blur.io/?r=6k40fxbxt399U\">https://blur.io/?r=6k40fxbxt399U</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://blur.io/?r=Awyd1xbx5qjda\">https://blur.io/?r=Awyd1xbx5qjda</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://blur.io/?r=aKSqvxbxyAixh\">https://blur.io/?r=aKSqvxbxyAixh</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➖ Click &#39;Accept invite&#39;</p>\r\n\r\n<p>➖ Follow Twitter</p>\r\n\r\n<p>➖ Join Discord (React ✅ on Discord)</p>\r\n\r\n<p>➖ Connect Twitter</p>\r\n\r\n<p>➖ Connect Discord</p>\r\n\r\n<p>➖ Connect New Wallet ( ETH )</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>📖 Note : If all links not working, please ask your friend for referral link, MAX 5 INVITES</p>', 'Ardan Anjung', '2022-05-05 19:07:22', '2022-05-05 19:05:51'),
(135, 'new-testnet-osmosis-220508083347', 'New Testnet OSMOSIS', 'noimg.jpg', '<p>New Tesnet : OSMOSIS</p>\r\n\r\n<p>🏷 Reward : Potensial</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>network : osmosis</p>\r\n\r\n<p>wallet : Keplr</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🪂 Register : <a href=\"https://testnet.osmosis.zone/\">https://testnet.osmosis.zone/</a></p>\r\n\r\n<p>➖ Join Discord</p>\r\n\r\n<p>➖ Go to #Role select 🧪</p>\r\n\r\n<p>➖ Go to #Testnet server</p>\r\n\r\n<p>➖ Faucet Request &gt;&gt; $request your address</p>\r\n\r\n<p>➖ Swap OSMO &gt;&gt; ION <a href=\"https://testnet.osmosis.zone/\">https://testnet.osmosis.zone/</a></p>\r\n\r\n<p>➖ After swap, go to</p>\r\n\r\n<p><a href=\"https://www.ion.wtf\">https://www.ion.wtf</a></p>\r\n\r\n<p>and try all the features there&nbsp;</p>\r\n\r\n<p>➖ Done</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➖Discord :</p>\r\n\r\n<p>https://discord.gg/MKYPHC5v</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Send feedback for UI/UX or bug reports click here&nbsp;</p>\r\n\r\n<p>Detail : Here</p>', 'Ardan Anjung', '2022-05-08 20:33:47', '2022-05-08 20:33:47'),
(136, 'new-airdrops-bibox-x-gilterfinance-220510111459', 'New Airdrops : Bibox X GilterFinance', 'noimg.jpg', '<p>🏷 Reward : $200 for 10 Winner Random<br />\r\n🪂 Register : <a href=\"https://twitter.com/Biboxasian/status/1523575882799263744?t=JdC3eVDrLp6sp1T5-HTKpA&amp;s=19\">https://twitter.com/Biboxasian/status/1523575882799263744?t=JdC3eVDrLp6sp1T5-HTKpA&amp;s=19</a><br />\r\n➖ Join Telegram<br />\r\n➖ Follow Twitter &amp; Retweet<br />\r\n➖ Comment your Bibox UID<br />\r\n➖ Done</p>\r\n\r\n<p>Adu Hoki di kala market merah 😅</p>', 'Ardan Anjung', '2022-05-10 11:14:59', '2022-05-10 11:14:59'),
(137, 'new-airdrops-sprint-220510111516', 'New Airdrops : SPRINT', 'noimg.jpg', '<p>🏷 Reward : 2,000,000 $SPRINT Token For 900 Random Winner<br />\r\n🪂 Register : <a href=\"https://wn.nr/9nyLDn\">https://wn.nr/9nyLDn</a><br />\r\n➖ Join Telegram<br />\r\n➖ Follow Twitter &amp; Retweet<br />\r\n➖ Complete Another Task<br />\r\n➖ Submit BSC Address</p>\r\n\r\n<p>LFG!!!</p>', 'Ardan Anjung', '2022-05-10 11:15:16', '2022-05-10 11:15:16'),
(138, 'new-airdrops-gamverse-220510111548', 'New Airdrops : Gamverse', 'noimg.jpg', '<p>🏷 Reward : 1 NFT Random For 1,000<br />\r\n🪂 Register : <a href=\"https://gleam.io/P88l5/gamerse-fire-frenzy-giveaway\">https://gleam.io/P88l5/gamerse-fire-frenzy-giveaway</a><br />\r\n➖ Join Telegram<br />\r\n➖ Follow Twitter &amp; Retweet<br />\r\n➖ Complete Another Task<br />\r\n➖ Submit BSC Address</p>\r\n\r\n<p>Register : <a href=\"https://beta.gamerse.com/presignup\">https://beta.gamerse.com/presignup</a>&nbsp;( Metamask )<br />\r\n➖ Select &#39;Sign Up as Gamer&#39;<br />\r\n➖ Connect Wallet ( BSC )<br />\r\n➖ Submit Detail<br />\r\n➖ Submit Email You Entered In Gleam</p>', 'Ardan Anjung', '2022-05-10 11:15:48', '2022-05-10 11:15:48'),
(139, 'bagaimana-cara-mendapatkan-passive-income-dari-crypto-staking-solusinya-220511113431', 'Cara mendapatkan passive income dari crypto? Staking solusinya!', 'noimg.jpg', '<p><em>Trading&nbsp;</em>dan investasi bukan satu-satunya cara untuk menghasilkan&nbsp;<em>passive income</em>. Kamu bisa meraih keuntungan dalam industri kripto dengan cara&nbsp;<em>staking</em>.&nbsp;<em>Staking&nbsp;</em>adalah sebuah proses ketika kamu berpartisipasi aktif dalam validasi transaksi dalam&nbsp;<em>blockchain&nbsp;</em>konsensus algoritma&nbsp;<em>Proof of Stake</em>&nbsp;(PoS).&nbsp;</p>\r\n\r\n<p><em>Proof of Stake</em>&nbsp;(PoS) adalah sebuah algoritma yang berperan untuk melakukan validasi transaksi berdasarkan konsensus terdistribusi. Validasi dilakukan berdasarkan berapa jumlah total aset kripto yang dimiliki.</p>\r\n\r\n<p>Dengan&nbsp;<em>staking</em>, kamu akan mendapatkan&nbsp;<em>passive income</em>&nbsp;dalam bentuk&nbsp;<em>reward</em>&nbsp;atau bunga dari aset yang dikunci. Hal ini memudahkan kamu untuk memiliki diversifikasi pendapatan aset digital.&nbsp;</p>\r\n\r\n<p>Dalam&nbsp;<em>blockchain</em>&nbsp;ini, siapa pun yang memiliki saldo minimum dapat memvalidasi transaksi dan mendapatkan imbalan. Dengan mengunci aset kripto tertentu, kamu memiliki kekuatan untuk membuat keputusan dalam jaringan. Ketika kamu berhasil memvalidasi transaksi, kamu akan menghasilkan pendapatan tambahan.</p>\r\n\r\n<p>Jadi secara sederhana,&nbsp;<em>staking coin&nbsp;</em>adalah proses mengunci aset crypto melalui&nbsp;<em>wallet</em>&nbsp;dalam rentang waktu tertentu untuk mendapatkan hadiah atau keuntungan.</p>\r\n\r\n<p>&ldquo;<em>Staking&nbsp;</em>secara&nbsp;<em>simple</em>nya adalah, Anda memiliki koin yang Anda simpan di&nbsp;<em>wallet</em>.&nbsp;Itu nanti Anda akan&nbsp;<em>lock</em>&nbsp;atau dikunci selama periode tertentu, nanti Anda akan dapat bunga.</p>\r\n\r\n<p>Dengan melakukan&nbsp;<em>staking coin</em>, Anda dapat menghasilkan&nbsp;<em>passive income</em>&nbsp;atau keuntungan tanpa harus melakukan aktivitas&nbsp;<em>trading</em>&nbsp;atau&nbsp;<em>mining</em>&nbsp;pada aset crypto.&nbsp;<em>Staking coin</em>&nbsp;juga dianggap memiliki risiko yang lebih kecil jika dibandingkan dengan melakukan aktivitas&nbsp;<em>trading&nbsp;</em>atau&nbsp;<em>mining</em>.&nbsp;<br />\r\n<br />\r\nSource:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.alinea.id/\">https://www.alinea.id/</a></li>\r\n	<li><a href=\"https://zipmex.com/\">https://zipmex.com/</a></li>\r\n</ul>', 'Ardan Anjung', '2022-05-11 11:37:11', '2022-05-11 11:34:31'),
(140, 'pre-register-indus-incentivized-testnet-220513110405', 'Pre-Register Indus Incentivized Testnet ', 'noimg.jpg', '<p>Link : <a href=\"https://www.eventbrite.com/e/indus-testnet-launch-by-moi-tickets-336645314197\">https://www.eventbrite.com/e/indus-testnet-launch-by-moi-tickets-336645314197</a></p>\r\n\r\n<p>More than 250 millions in MOI up for grabs , this definitely is an event to watch out for!</p>', 'Ardan Anjung', '2022-05-13 23:04:05', '2022-05-13 23:04:05'),
(141, 'new-airdrops-wesendit-220513110427', 'New Airdrops : Wesendit', 'noimg.jpg', '<p>🏷 Reward : 60M ( For 10,000 Users )<br />\r\n🪂 Register : <a href=\"https://bit.ly/Wesendit\">https://bit.ly/Wesendit</a><br />\r\n➖️ Enter Email<br />\r\n➖️ Verify<br />\r\n➖️ Complete Task<br />\r\n➖️ Invite At Least 1 Friend<br />\r\n➖️ Done LFG</p>', 'Ardan Anjung', '2022-05-13 23:04:27', '2022-05-13 23:04:27'),
(142, 'new-event-tokocrypto-pulang-mudik-lebaran-dapat-cuan-miliaran-220513110612', 'New Event Tokocrypto : Pulang Mudik Lebaran Dapat Cuan Miliaran++', 'noimg.jpg', '<p>🏷 Reward : First 100,000 Participants&nbsp;<br />\r\n➡️ Rewards for complete KYC<br />\r\n- First 500 Users = Rp. 200,000<br />\r\n- First 1000 Users = Rp. 150,000<br />\r\n- First 7500 Users = Rp. 100,000<br />\r\n- First 91000 Users = Rp. 75,000</p>\r\n\r\n<p>➡️ Rewards for 1st trade $25 ( First Trade )<br />\r\n- First 500 Users = Rp. 300,000<br />\r\n- First 1000 Users = Rp. 200,000<br />\r\n- First 7500 Users = Rp. 150,000<br />\r\n- First 91000 Users = Rp. 75,000</p>\r\n\r\n<p>🟢 Contoh : Anda First 1000 Users Melakukan KYC dan Trading $25 akan mendapatkan total hadiah Rp. 350,000&nbsp;<br />\r\n&nbsp;<br />\r\n➡️ Register : <a href=\"https://www.tokocrypto.com/\">https://www.tokocrypto.com/</a></p>\r\n\r\n<p>1. Pengguna registrasi mulai dari tanggal 1 April 15:00 WIB - 31 Mei 23:59:00 2022 dapat mengikuti event ini<br />\r\n2. Pengguna yang menyelesaikan verifikasi (KYC level 1) periode 11 Mei 00:00 WIB - 31 Mei 23:59 WIB, Akan mendapatkan reward senilai IDR 200.000<br />\r\n3. Reward Trader Pertama (first trade) hanya berlaku untuk pengguna yang melakukan di periode KYC 11 Mei - 31 Mei.<br />\r\n4. Trader Pertama akan mendapatkan extra IDR 300,000, jika melakukan trading sebesar $25<br />\r\n5. Topup Via Gopay Dapat Cashback&nbsp;</p>\r\n\r\n<p>📖 Details : <a href=\"https://support.tokocrypto.com/hc/id/articles/6147521511949\">https://support.tokocrypto.com/hc/id/articles/6147521511949</a></p>', 'Ardan Anjung', '2022-05-13 23:06:12', '2022-05-13 23:06:12'),
(143, 'new-airdrops-omlira-220513110649', 'New Airdrops : Omlira', 'noimg.jpg', '<p>🏷 Reward : Up to 300 Tokens ( For All )<br />\r\n🪂 Open With Metamask : <a href=\"https://bit.ly/Omchain\">https://bit.ly/Omchain</a><br />\r\n➖ Connect New BSC Wallet&nbsp;<br />\r\n➖ Complete All Task&nbsp;<br />\r\n➖️ Give Rating on CoinMarketCap&nbsp;<br />\r\n➖️ Comment on CoinMarketCap&nbsp;<br />\r\n➖️ Retweet Pinned Post &amp; Tag #OMC #omchain<br />\r\n➖️ Done</p>\r\n\r\n<p>📖 OMC Listed on MEXC, PancakeSwap, &nbsp;Etc</p>', 'Ardan Anjung', '2022-05-13 23:06:49', '2022-05-13 23:06:49'),
(144, 'new-airdrops-rcg-bytesmix-220513110730', 'New Airdrops : RCG × Bytesmix', 'noimg.jpg', '<p>🏷 Reward : $10 ( Random 1500 Winner )<br />\r\n➡️ Download : <a href=\"https://www.bytesmix.com/invitations?q=f9f4f49853&amp;v=18636496\">https://www.bytesmix.com/invitations?q=f9f4f49853&amp;v=18636496</a><br />\r\n➖️ Login With Google &amp; Verify<br />\r\n➖️ Click Banner RCG &amp; Click Interested to Going<br />\r\n➖️ Comments<br />\r\n➖️ Click Wallet - RCG - Receive - Generate Wallet&nbsp;<br />\r\n➖️ Done</p>', 'Ardan Anjung', '2022-05-13 23:07:30', '2022-05-13 23:07:30'),
(145, 'boomco-mining-airdrop-220514101914', 'Boomco mining airdrop', 'noimg.jpg', '<p>Free $LER For Mining &amp; $KLAY By Refer Friends</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Masih fresh&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Register : <a href=\"https://referral.boomco.io/GOY39F\">https://referral.boomco.io/GOY39F</a></p>\r\n\r\n<p>- Download App&nbsp;</p>\r\n\r\n<p>- Signin With Google</p>\r\n\r\n<p>- Enter Ref Code : GOY39F ( ketik manual )&nbsp;</p>\r\n\r\n<p>Done</p>', 'Ardan Anjung', '2022-05-14 10:19:14', '2022-05-14 10:19:14'),
(146, 'daftar-top-channel-telegram-airdrop-220515114551', 'Daftar TOP Channel Telegram Airdrop', 'noimg.jpg', '<p>Berikut adalah daftar channel Indonesia yang paling sering mimin ikutin untuk informasi airdrop dan ngambil info airdrop juga dari channel channel dibawah.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://t.me/airdropfind\">Airdropfind</a></li>\r\n	<li><a href=\"https://t.me/PemburuAirdropsIO\">Pemburu Airdrops IO</a></li>\r\n	<li><a href=\"https://t.me/airdropsultanindonesia\">Airdrop Sultan</a></li>\r\n	<li><a href=\"https://t.me/Airdrop_Jack\">Airdrop Jack Info</a></li>\r\n	<li><a href=\"https://t.me/airdropPegasus\">Airdrop Pegasus</a></li>\r\n	<li><a href=\"https://t.me/EOCommunity\">EO Community</a></li>\r\n	<li><a href=\"https://t.me/ScavehuntAirdrop\">ScavengerHunt Airdrop</a></li>\r\n	<li><a href=\"https://t.me/CryptoProID\">CryptoPROID</a></li>\r\n	<li><a href=\"https://t.me/NPWP1\">Ngapain Crypto?</a></li>\r\n	<li><a href=\"https://t.me/DuniaCryptoIDChanelss\">Dunia Crypto ID</a></li>\r\n	<li><a href=\"https://t.me/tribunairdrop\">Tribun Airdrops</a></li>\r\n</ul>\r\n\r\n<p>Terimakasih untuk para admin yang selalu on dan update mengenai informasi airdrop, data airdrop dari website ini diambil dari beberapa channel telegram diatas. 😁🙏 Salam cuan~</p>', 'Ardan Anjung', '2022-05-15 23:45:51', '2022-05-15 23:45:51'),
(147, 'new-airdrops-apeisland-220515115229', 'New Airdrops : APEISLAND', 'noimg.jpg', '<p>🏷 Reward : $3 ( Random 5000 Winner )<br />\r\n🪂 Register : <a href=\"https://t.me/ApeisLandAirdropBot?start=5088850999\">https://t.me/ApeisLandAirdropBot?start=5088850999</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖ Submit BSC Address&nbsp;<br />\r\n➖️ Done</p>', 'Ardan Anjung', '2022-05-15 23:52:29', '2022-05-15 23:52:29'),
(148, 'new-airdrops-cmp-onto-220515115312', 'New Airdrops : CMP × ONTO', 'noimg.jpg', '<p>🏷 Reward : For New Users ONTO<br />\r\n🪂 Register : <a href=\"https://wn.nr/dqZNPp\">https://wn.nr/dqZNPp</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖️ Complete Another Task&nbsp;<br />\r\n➖ Submit Your Details<br />\r\n➖️ Done</p>', 'Ardan Anjung', '2022-05-15 23:53:12', '2022-05-15 23:53:12'),
(149, 'new-airdrops-eze-220515115336', 'New Airdrops : EZE', 'noimg.jpg', '<p>🏷 Reward : $33K ( Random 5000 Winner )<br />\r\n🪂 Register : <a href=\"https://share-w.in/0rayla-57021\">https://share-w.in/0rayla-57021</a><br />\r\n➖ Join Telegram&nbsp;<br />\r\n➖ Follow Twitter &amp; Retweet&nbsp;<br />\r\n➖️ Complete Another Task&nbsp;<br />\r\n➖ Submit ETH Address</p>', 'Ardan Anjung', '2022-05-15 23:53:36', '2022-05-15 23:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_wallet`
--

CREATE TABLE `crypto_wallet` (
  `id_wallet` bigint(20) UNSIGNED NOT NULL,
  `nama_wallet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukuran_aplikasi` double(8,2) NOT NULL,
  `nft_showcase` int(11) NOT NULL,
  `rating` double(8,2) NOT NULL,
  `platform_support` int(11) NOT NULL,
  `total_user_install` int(11) NOT NULL,
  `last_update_data` date NOT NULL,
  `link_playstore` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crypto_wallet`
--

INSERT INTO `crypto_wallet` (`id_wallet`, `nama_wallet`, `ukuran_aplikasi`, `nft_showcase`, `rating`, `platform_support`, `total_user_install`, `last_update_data`, `link_playstore`, `created_at`, `updated_at`) VALUES
(1, 'Trust Wallet', 39.00, 1, 4.70, 2, 10000000, '2022-05-15', 'https://play.google.com/store/apps/details?id=com.wallet.crypto.trustapp', '2022-01-18 06:03:31', '2022-05-15 20:40:02'),
(2, 'Safepal', 48.00, 1, 4.30, 3, 1000000, '2022-05-15', 'https://play.google.com/store/apps/details?id=io.safepal.wallet', '2022-01-18 00:12:28', '2022-05-15 20:32:56'),
(3, 'Enjin Wallet', 32.00, 1, 4.30, 2, 1000000, '2022-05-15', 'https://play.google.com/store/apps/details?id=com.enjin.mobile.wallet', '2022-01-18 07:16:19', '2022-05-15 20:43:40'),
(4, 'TokenPocket', 43.00, 0, 4.60, 3, 1000000, '2022-05-15', 'https://play.google.com/store/apps/details?id=vip.mytokenpocket', '2022-01-18 07:17:39', '2022-05-15 23:32:23'),
(5, 'imToken', 81.54, 1, 4.20, 2, 500000, '2021-11-17', 'https://play.google.com/store/apps/details?id=im.token.app', '2022-01-20 15:33:57', '2022-01-20 15:33:57'),
(6, 'TronLink Wallet', 30.79, 0, 4.30, 2, 1000000, '2021-11-17', 'https://play.google.com/store/apps/details?id=com.tronlinkpro.wallet', '2022-01-20 15:34:30', '2022-01-20 15:34:30'),
(7, 'MyEtherWallet (MEW)', 43.81, 0, 4.40, 3, 500000, '2021-11-17', 'https://play.google.com/store/apps/details?id=com.myetherwallet.mewwallet', '2022-01-20 15:35:02', '2022-01-20 15:35:02'),
(8, 'ZilPay', 35.00, 0, 3.70, 3, 100000, '2021-11-17', 'https://play.google.com/store/apps/details?id=com.zilpaymobile', '2022-01-20 15:35:38', '2022-01-20 15:35:38'),
(9, 'Coin98 Wallet', 29.79, 1, 4.20, 4, 100000, '2021-11-17', 'https://play.google.com/store/apps/details?id=coin98.crypto.finance.media', '2022-01-20 15:36:10', '2022-01-20 15:36:10'),
(10, 'XUMM', 30.00, 0, 4.80, 2, 100000, '2021-11-17', 'https://play.google.com/store/apps/details?id=com.xrpllabs.xumm', '2022-01-20 15:56:03', '2022-01-20 15:56:03'),
(11, 'Solflare', 13.00, 1, 4.60, 3, 10000, '2021-11-17', 'https://play.google.com/store/apps/details?id=com.solflare.mobile', '2022-01-20 15:56:36', '2022-01-20 15:56:36'),
(12, 'Algorand Wallet', 28.00, 0, 4.70, 2, 100000, '2021-11-17', 'https://play.google.com/store/apps/details?id=com.algorand.android', '2022-01-20 15:57:07', '2022-01-20 15:57:07'),
(13, 'Slope Wallet', 57.00, 1, 4.50, 3, 50000, '2021-12-15', 'https://play.google.com/store/apps/details?id=com.wd.wallet', '2022-01-20 15:57:51', '2022-01-20 15:57:51'),
(14, 'Maiar Wallet', 68.00, 0, 4.20, 2, 500000, '2021-12-15', 'https://play.google.com/store/apps/details?id=com.elrond.maiar.wallet', '2022-01-20 15:58:17', '2022-01-20 15:58:17'),
(16, 'Terra Station', 74.00, 0, 4.60, 4, 100000, '2022-01-27', 'https://play.google.com/store/apps/details?id=money.terra.station', '2022-01-27 14:24:58', '2022-01-27 14:24:58'),
(17, 'LOBSTR', 34.00, 0, 4.80, 2, 100000, '2022-01-29', 'https://play.google.com/store/apps/details?id=com.lobstr.client', '2022-01-29 06:22:17', '2022-01-29 06:22:17'),
(18, 'Polkawallet', 67.00, 0, 3.70, 2, 50000, '2022-01-29', 'https://play.google.com/store/apps/details?id=io.polkawallet.www.polka_wallet', '2022-01-29 06:32:41', '2022-01-29 06:32:41'),
(19, 'Huobi Wallet', 91.00, 1, 4.00, 2, 500000, '2022-01-29', 'https://play.google.com/store/apps/details?id=com.huobionchainwallet.gp', '2022-01-29 07:01:17', '2022-01-29 07:01:17'),
(20, 'Cosmostation', 51.00, 0, 4.50, 3, 50000, '2022-03-02', 'https://play.google.com/store/apps/details?id=wannabit.io.cosmostaion', '2022-03-02 16:04:27', '2022-03-02 16:04:27'),
(21, 'Keplr Wallet', 33.00, 0, 4.10, 3, 50000, '2022-03-02', 'https://play.google.com/store/apps/details?id=com.chainapsis.keplr', '2022-03-02 16:29:51', '2022-03-02 16:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_coin`
--

CREATE TABLE `jenis_coin` (
  `id_jenis_coin` bigint(20) UNSIGNED NOT NULL,
  `nama_coin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan_coin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_coin`
--

INSERT INTO `jenis_coin` (`id_jenis_coin`, `nama_coin`, `singkatan_coin`, `created_at`, `updated_at`) VALUES
(2, 'Aeternity', 'AE', '2022-01-19 16:01:13', '2022-01-19 16:01:13'),
(3, 'Aion', 'AION', '2022-01-19 16:01:21', '2022-01-19 16:01:21'),
(4, 'Algorand', 'ALGO', '2022-01-19 16:01:27', '2022-01-19 16:01:27'),
(5, 'Arbitrum', 'ARETH', '2022-01-19 16:01:38', '2022-01-19 16:01:38'),
(6, 'Avalanche', 'AVAX', '2022-01-19 16:01:47', '2022-01-19 16:01:47'),
(7, 'Band Protocol', 'BAND', '2022-01-19 16:01:55', '2022-01-19 16:01:55'),
(8, 'Binance Coin BEP-2', 'BNB (BEP-2)', '2022-01-19 16:02:38', '2022-01-19 16:02:38'),
(9, 'Binance Coin BEP-20', 'BNB (BEP-20)', '2022-01-19 16:02:51', '2022-01-19 16:02:51'),
(10, 'Bitcoin Cash', 'BCH', '2022-01-19 16:22:26', '2022-01-19 16:22:26'),
(11, 'Boba Network', 'BOBA', '2022-01-19 16:22:48', '2022-01-19 16:22:48'),
(12, 'BOScoin', 'BOS', '2022-01-19 16:23:04', '2022-01-19 16:23:04'),
(13, 'Callisto', 'CLO', '2022-01-19 16:23:14', '2022-01-19 16:23:14'),
(14, 'Celo', 'CELO', '2022-01-19 16:23:36', '2022-01-19 16:23:36'),
(15, 'Cosmos', 'ATOM', '2022-01-19 16:23:45', '2022-01-19 16:23:45'),
(16, 'Cronos Coin', 'CRO', '2022-01-19 16:23:53', '2022-01-19 16:23:53'),
(17, 'Dash', 'DASH', '2022-01-19 16:24:08', '2022-01-19 16:24:08'),
(18, 'Decred', 'DCR', '2022-01-19 16:24:19', '2022-01-19 16:24:19'),
(19, 'Digibyte', 'DGB', '2022-01-19 16:24:30', '2022-01-19 16:24:30'),
(20, 'Dogecoin', 'DOGE', '2022-01-19 16:24:39', '2022-01-19 16:24:39'),
(21, 'eGold', 'EGOLD', '2022-01-19 16:24:48', '2022-01-19 16:24:48'),
(22, 'EOS', 'EOS', '2022-01-19 16:24:57', '2022-01-19 16:24:57'),
(23, 'Ethereum', 'ETH', '2022-01-20 07:10:42', '2022-01-20 07:10:42'),
(24, 'Ethereum Classic', 'ETC', '2022-01-20 07:10:52', '2022-01-20 07:10:52'),
(25, 'Fantom', 'FTM', '2022-01-20 07:11:04', '2022-01-20 07:11:04'),
(26, 'Filecoin', 'FIL', '2022-01-20 07:11:14', '2022-01-20 07:11:14'),
(27, 'Fio', 'FIO', '2022-01-20 07:11:23', '2022-01-20 07:11:23'),
(28, 'Firo', 'FIRO', '2022-01-20 07:11:30', '2022-01-20 07:11:30'),
(29, 'GateChain', 'GT', '2022-01-20 07:11:38', '2022-01-20 07:11:38'),
(30, 'GoChain', 'GO', '2022-01-20 07:11:46', '2022-01-20 07:11:46'),
(31, 'Groestlcoin', 'GRS', '2022-01-20 07:12:08', '2022-01-20 07:12:08'),
(32, 'Harmony', 'ONE', '2022-01-20 07:12:17', '2022-01-20 07:12:17'),
(33, 'Hoo Smart Chain', 'HOO', '2022-01-20 07:12:26', '2022-01-20 07:12:26'),
(34, 'Huobi Eco Chain', 'HECO', '2022-01-20 07:12:42', '2022-01-20 07:12:42'),
(35, 'Huobi Token', 'HT', '2022-01-20 07:12:53', '2022-01-20 07:12:53'),
(36, 'ICON', 'ICX', '2022-01-20 07:13:05', '2022-01-20 07:13:05'),
(37, 'IOST', 'IOST', '2022-01-20 07:13:16', '2022-01-20 07:13:16'),
(38, 'IoTeX', 'IOTX', '2022-01-20 07:13:36', '2022-01-20 07:13:36'),
(39, 'Jingtum Tech', 'SWTC', '2022-01-20 07:13:44', '2022-01-20 07:13:44'),
(40, 'KardiaChain', 'KAI', '2022-01-20 07:13:53', '2022-01-20 07:13:53'),
(41, 'Kava', 'KAVA', '2022-01-20 07:14:06', '2022-01-20 07:14:06'),
(42, 'Kin', 'KIN', '2022-01-20 07:14:15', '2022-01-20 07:14:15'),
(43, 'Klaytn', 'KLAY', '2022-01-20 07:14:24', '2022-01-20 07:14:24'),
(44, 'KuCoin Token', 'KCS', '2022-01-20 07:14:34', '2022-01-20 07:14:34'),
(45, 'Kusama', 'KSM', '2022-01-20 07:14:48', '2022-01-20 07:14:48'),
(46, 'Litecoin', 'LTC', '2022-01-20 07:14:57', '2022-01-20 07:14:57'),
(47, 'MOAC', 'MOAC', '2022-01-20 07:15:06', '2022-01-20 07:15:06'),
(48, 'Nano', 'NANO', '2022-01-20 07:15:14', '2022-01-20 07:15:14'),
(49, 'Near', 'NEAR', '2022-01-20 07:15:23', '2022-01-20 07:15:23'),
(50, 'Nebulas', 'NAS', '2022-01-20 07:15:31', '2022-01-20 07:15:31'),
(51, 'NEO', 'NEO', '2022-01-20 07:15:39', '2022-01-20 07:15:39'),
(52, 'Nervos Network', 'CKB', '2022-01-20 07:15:47', '2022-01-20 07:15:47'),
(53, 'Nimiq', 'NIM', '2022-01-20 07:15:55', '2022-01-20 07:15:55'),
(54, 'OKExChain', 'OKExChain', '2022-01-20 07:16:05', '2022-01-20 07:16:05'),
(55, 'Ontology', 'ONT', '2022-01-20 07:16:20', '2022-01-20 07:16:20'),
(56, 'Optimism', 'OETH', '2022-01-20 07:16:27', '2022-01-20 07:16:27'),
(57, 'Persistance', 'XPRT', '2022-01-20 07:16:35', '2022-01-20 07:16:35'),
(58, 'POA Network', 'POA', '2022-01-20 07:16:43', '2022-01-20 07:16:43'),
(59, 'Polkadot', 'DOT', '2022-01-20 07:16:53', '2022-01-20 07:16:53'),
(60, 'Polygon', 'MATIC', '2022-01-20 07:17:01', '2022-01-20 07:17:01'),
(61, 'Qtum', 'QTUM', '2022-01-20 07:17:11', '2022-01-20 07:17:11'),
(62, 'Ravencoin', 'RVN', '2022-01-20 07:17:20', '2022-01-20 07:17:20'),
(63, 'Ripple', 'XRP', '2022-01-20 07:17:28', '2022-01-20 07:17:28'),
(64, 'Ronin', 'RON', '2022-01-20 07:17:36', '2022-01-20 07:17:36'),
(65, 'Solana', 'SOL', '2022-01-20 07:17:43', '2022-01-20 07:17:43'),
(66, 'Stellar Lumens', 'XLM', '2022-01-20 07:17:54', '2022-01-29 06:24:19'),
(67, 'SubGame', 'SGB', '2022-01-20 07:18:03', '2022-01-20 07:18:03'),
(68, 'Terra', 'LUNA', '2022-01-20 07:18:11', '2022-01-20 07:18:11'),
(69, 'Tezoz', 'XTZ', '2022-01-20 07:18:19', '2022-01-20 07:18:19'),
(70, 'Theta', 'THETA', '2022-01-20 07:18:27', '2022-01-20 07:18:27'),
(71, 'Thorchain', 'RUNE', '2022-01-20 07:18:35', '2022-01-20 07:18:35'),
(72, 'Thunder Token', 'TT', '2022-01-20 07:18:43', '2022-01-20 07:18:43'),
(73, 'TomoChain', 'TOMO', '2022-01-20 07:19:04', '2022-01-20 07:19:04'),
(74, 'TRON', 'TRX', '2022-01-20 07:19:11', '2022-01-20 07:19:11'),
(75, 'VeChain', 'VET', '2022-01-20 07:19:21', '2022-01-20 07:19:21'),
(76, 'Viacoin', 'VIA', '2022-01-20 07:19:31', '2022-01-20 07:19:31'),
(77, 'Wanchain', 'WAN', '2022-01-20 07:19:39', '2022-01-20 07:19:39'),
(78, 'xDai', 'xDai', '2022-01-20 07:19:48', '2022-01-20 07:19:48'),
(79, 'Waves', 'WAVES', '2022-01-20 07:19:56', '2022-01-20 07:19:56'),
(80, 'Zcash', 'ZEC', '2022-01-20 07:20:06', '2022-01-20 07:20:06'),
(81, 'Zelcash', 'ZEL', '2022-01-20 07:20:16', '2022-01-20 07:20:16'),
(82, 'Ziliqa', 'ZIL', '2022-01-20 07:20:26', '2022-01-20 07:20:26'),
(83, 'Bitcoin', 'BTC', '2022-01-20 07:26:32', '2022-01-20 07:26:32'),
(86, 'Acala Token', 'ACA', '2022-01-29 06:41:45', '2022-01-29 06:41:45'),
(87, 'Karura', 'KAR', '2022-01-29 06:45:06', '2022-01-29 06:45:06'),
(88, 'Bifrost', 'BNC', '2022-01-29 06:46:29', '2022-01-29 06:46:29'),
(89, 'ChainX', 'PCX', '2022-01-29 06:46:56', '2022-01-29 06:46:56'),
(90, 'Edgeware', 'EDG', '2022-01-29 06:47:25', '2022-01-29 06:47:25'),
(91, 'Cardano', 'ADA', '2022-01-29 07:12:32', '2022-01-29 07:12:32'),
(92, 'Bitcoin SV', 'BSV', '2022-01-29 07:13:27', '2022-01-29 07:13:27'),
(93, 'Iris Coin', 'IRIS', '2022-03-02 16:16:20', '2022-03-02 16:16:20'),
(94, 'Akash', 'AKASH', '2022-03-02 16:16:32', '2022-03-02 16:16:32'),
(95, 'Axelar', 'AXELAR', '2022-03-02 16:16:38', '2022-03-02 16:16:38'),
(96, 'Bitcanna', 'BITCANNA', '2022-03-02 16:16:55', '2022-03-02 16:16:55'),
(97, 'Bitsong', 'BITSONG', '2022-03-02 16:17:05', '2022-03-02 16:17:05'),
(98, 'Certik', 'CERTIK', '2022-03-02 16:17:11', '2022-03-02 16:17:11'),
(99, 'Chihuahua', 'CHIHUAHUA', '2022-03-02 16:17:21', '2022-03-02 16:17:21'),
(100, 'Comdex', 'COMDEX', '2022-03-02 16:17:27', '2022-03-02 16:17:27'),
(101, 'Crypto.org', 'CRYPTO.ORG', '2022-03-02 16:17:35', '2022-03-02 16:17:35'),
(102, 'Desmos', 'DESMOS', '2022-03-02 16:17:43', '2022-03-02 16:17:43'),
(103, 'Emoney', 'EMONEY', '2022-03-02 16:17:50', '2022-03-02 16:17:50'),
(104, 'Fetch AI', 'FETCH.AI', '2022-03-02 16:17:59', '2022-03-02 16:17:59'),
(105, 'G-Bridge', 'G-BRIDGE', '2022-03-02 16:18:07', '2022-03-02 16:18:07'),
(106, 'Injective', 'INJECTIVE', '2022-03-02 16:18:21', '2022-03-02 16:18:21'),
(107, 'Juno', 'JUNO', '2022-03-02 16:18:29', '2022-03-02 16:18:29'),
(108, 'KI Coin', 'KI', '2022-03-02 16:18:47', '2022-03-02 16:18:47'),
(109, 'Konstellation', 'KONSTELLATION', '2022-03-02 16:18:56', '2022-03-02 16:18:56'),
(110, 'Lum Coin', 'LUM', '2022-03-02 16:19:23', '2022-03-02 16:19:23'),
(111, 'Medibloc', 'MEDIBLOC', '2022-03-02 16:19:33', '2022-03-02 16:19:33'),
(112, 'OEC', 'OEC', '2022-03-02 16:19:39', '2022-03-02 16:19:39'),
(113, 'Osmosis', 'OSMOSIS', '2022-03-02 16:19:49', '2022-03-02 16:19:49'),
(114, 'Regen', 'REGEN', '2022-03-02 16:20:03', '2022-03-02 16:20:03'),
(115, 'Rizon', 'RIZON', '2022-03-02 16:20:09', '2022-03-02 16:20:09'),
(116, 'Secret', 'SECRET', '2022-03-02 16:20:16', '2022-03-02 16:20:16'),
(117, 'Sentinel', 'SENTINEL', '2022-03-02 16:20:22', '2022-03-02 16:20:22'),
(118, 'SIF', 'SIF', '2022-03-02 16:20:26', '2022-03-02 16:20:26'),
(119, 'Stargaze', 'STARGAZE', '2022-03-02 16:20:32', '2022-03-02 16:20:32'),
(120, 'Starname', 'STARNAME', '2022-03-02 16:20:38', '2022-03-02 16:20:38'),
(121, 'Umee', 'UMEE', '2022-03-02 16:20:42', '2022-03-02 16:20:42'),
(122, 'Sommelier', 'SOMM', '2022-03-02 16:31:13', '2022-03-02 16:31:13'),
(123, 'Nervos L2 Godwoken', 'GODWOKEN', '2022-05-15 20:20:46', '2022-05-15 20:20:46'),
(124, 'Songbird', 'SGB', '2022-05-15 20:22:18', '2022-05-15 20:22:18'),
(125, 'Gnosis', 'GNO', '2022-05-15 20:36:34', '2022-05-15 20:36:34'),
(126, 'WAX', 'WAXP', '2022-05-15 21:06:43', '2022-05-15 21:06:43'),
(127, 'Aurora (EVM)', 'Aurora (EVM)', '2022-05-15 21:08:38', '2022-05-15 21:08:38'),
(128, 'PlatON', 'LAT', '2022-05-15 23:27:39', '2022-05-15 23:27:39'),
(129, 'Moonbeam', 'GLMR', '2022-05-15 23:28:33', '2022-05-15 23:28:33'),
(130, 'Conflux', 'CFX', '2022-05-15 23:29:15', '2022-05-15 23:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_network`
--

CREATE TABLE `jenis_network` (
  `id_jenis_network` bigint(20) UNSIGNED NOT NULL,
  `nama_network` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan_network` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_network`
--

INSERT INTO `jenis_network` (`id_jenis_network`, `nama_network`, `singkatan_network`, `created_at`, `updated_at`) VALUES
(1, 'Algorand', 'ALGO', '2022-01-20 14:48:06', '2022-01-20 15:31:09'),
(2, 'Arbitrum', 'ARETH', '2022-01-20 14:48:25', '2022-01-20 14:48:25'),
(3, 'Avalanche', 'AVAX', '2022-01-20 14:48:34', '2022-01-20 14:48:34'),
(4, 'Binance Coin', 'BEP-2', '2022-01-20 14:48:44', '2022-01-20 14:48:44'),
(5, 'Binance Smart Chain', 'BEP-20', '2022-01-20 14:48:56', '2022-01-20 14:48:56'),
(6, 'Bitcoin', 'BTC', '2022-01-20 14:49:07', '2022-01-20 14:49:07'),
(7, 'Bitcoin Cash', 'BCH', '2022-01-20 14:49:15', '2022-01-20 14:49:15'),
(8, 'Boba Network', 'BOBA', '2022-01-20 14:50:05', '2022-01-20 14:50:05'),
(9, 'BOScoin', 'BOS', '2022-01-20 14:55:16', '2022-01-20 14:55:16'),
(10, 'Callisto', 'CLO', '2022-01-20 14:55:24', '2022-01-20 14:55:24'),
(11, 'Celo', 'CELO', '2022-01-20 14:55:34', '2022-01-20 14:55:34'),
(12, 'Cosmos', 'ATOM', '2022-01-20 14:55:49', '2022-01-20 14:55:49'),
(13, 'Cronos Coin', 'CRO', '2022-01-20 15:16:21', '2022-01-20 15:16:21'),
(14, 'Elrond', 'eGold', '2022-01-20 15:16:28', '2022-01-20 15:16:28'),
(15, 'EOS', 'EOS', '2022-01-20 15:16:37', '2022-01-20 15:16:37'),
(16, 'Ethereum', 'ERC-20', '2022-01-20 15:16:43', '2022-01-20 15:16:43'),
(17, 'Ethereum Classic', 'ETC', '2022-01-20 15:16:50', '2022-01-20 15:16:50'),
(18, 'Fantom', 'FTM', '2022-01-20 15:16:56', '2022-01-20 15:16:56'),
(19, 'Filecoin', 'FIL', '2022-01-20 15:17:03', '2022-01-20 15:17:03'),
(20, 'GateChain', 'GT', '2022-01-20 15:17:13', '2022-01-20 15:17:13'),
(21, 'Hoo Smart Chain', 'HOO', '2022-01-20 15:17:23', '2022-01-20 15:17:23'),
(22, 'GoChain', 'GO', '2022-01-20 15:17:29', '2022-01-20 15:17:29'),
(23, 'Huobi Eco Chain', 'HECO', '2022-01-20 15:17:36', '2022-01-20 15:17:36'),
(24, 'IOST', 'IOST', '2022-01-20 15:17:42', '2022-01-20 15:17:42'),
(25, 'Jingtum Tech', 'SWTC', '2022-01-20 15:17:50', '2022-01-20 15:17:50'),
(26, 'KardiaChain', 'KAI', '2022-01-20 15:17:56', '2022-01-20 15:17:56'),
(27, 'Klaytn', 'KLAY', '2022-01-20 15:18:05', '2022-01-20 15:18:05'),
(28, 'KuCoin Token', 'KCS', '2022-01-20 15:18:12', '2022-01-20 15:18:12'),
(29, 'Kusama', 'KSM', '2022-01-20 15:18:21', '2022-01-20 15:18:21'),
(30, 'Litecoin', 'LTC', '2022-01-20 15:18:28', '2022-01-20 15:18:28'),
(31, 'MOAC', 'MOAC', '2022-01-20 15:18:34', '2022-01-20 15:18:34'),
(32, 'Near', 'NEAR', '2022-01-20 15:18:51', '2022-01-20 15:18:51'),
(33, 'Nervos Network', 'CKB', '2022-01-20 15:18:57', '2022-01-20 15:18:57'),
(34, 'OKExChain', 'OKExChain', '2022-01-20 15:19:02', '2022-01-20 15:19:02'),
(35, 'Optimism', 'OETH', '2022-01-20 15:19:09', '2022-01-20 15:19:09'),
(36, 'POA Network', 'POA', '2022-01-20 15:19:18', '2022-01-20 15:19:18'),
(37, 'Polkadot', 'Polkadot', '2022-01-20 15:19:25', '2022-01-20 15:19:25'),
(38, 'Polygon', 'MATIC', '2022-01-20 15:19:31', '2022-01-20 15:19:31'),
(39, 'Ripple', 'XRP', '2022-01-20 15:19:36', '2022-01-20 15:19:36'),
(40, 'Ronin', 'RON', '2022-01-20 15:19:42', '2022-01-20 15:19:42'),
(41, 'Solana', 'SOL', '2022-01-20 15:19:50', '2022-01-20 15:19:50'),
(42, 'SubGame', 'SGB', '2022-01-20 15:19:56', '2022-01-20 15:19:56'),
(43, 'Tezoz', 'XTZ', '2022-01-20 15:20:03', '2022-01-20 15:20:03'),
(44, 'Thunder Token', 'TT', '2022-01-20 15:20:10', '2022-01-20 15:20:10'),
(45, 'TomoChain', 'TOMO', '2022-01-20 15:20:18', '2022-01-20 15:20:18'),
(46, 'TRON', 'TRX', '2022-01-20 15:20:26', '2022-01-20 15:20:26'),
(47, 'xDai', 'xDai', '2022-01-20 15:20:32', '2022-01-20 15:20:32'),
(48, 'Ziliqa', 'ZIL', '2022-01-20 15:20:38', '2022-01-20 15:20:38'),
(51, 'Terra', 'LUNA', '2022-01-27 14:25:55', '2022-01-27 14:25:55'),
(52, 'Stellar Lumens', 'XLM', '2022-01-29 06:23:56', '2022-01-29 06:23:56'),
(53, 'Acala', 'ACA', '2022-01-29 06:41:57', '2022-01-29 06:41:57'),
(54, 'Karura', 'KAR', '2022-01-29 06:45:01', '2022-01-29 06:45:01'),
(55, 'Bifrost', 'BNC', '2022-01-29 06:46:19', '2022-01-29 06:46:19'),
(56, 'ChainX', 'PCX', '2022-01-29 06:46:52', '2022-01-29 06:46:52'),
(57, 'Edgeware', 'EDG', '2022-01-29 06:47:21', '2022-01-29 06:47:21'),
(58, 'Kava', 'KAVA', '2022-03-02 16:06:19', '2022-03-02 16:06:19'),
(59, 'Band Protocol', 'Band Chain', '2022-03-02 16:07:27', '2022-03-02 16:07:27'),
(60, 'IRIS', 'IRIS', '2022-03-02 16:08:22', '2022-03-02 16:08:22'),
(61, 'Akash', 'AKASH', '2022-03-02 16:08:36', '2022-03-02 16:08:36'),
(62, 'Axelar', 'AXELAR', '2022-03-02 16:08:43', '2022-03-02 16:08:43'),
(63, 'Bitcanna', 'BITCANNA', '2022-03-02 16:09:45', '2022-03-02 16:09:45'),
(64, 'Bitsong', 'BITSONG', '2022-03-02 16:09:52', '2022-03-02 16:09:52'),
(65, 'Certik', 'CERTIK', '2022-03-02 16:10:38', '2022-03-02 16:10:38'),
(66, 'Chihuahua', 'CHIHUAHUA', '2022-03-02 16:10:50', '2022-03-02 16:10:50'),
(67, 'Comdex', 'COMDEX', '2022-03-02 16:10:58', '2022-03-02 16:10:58'),
(68, 'Crypto.org', 'CRYPTO.ORG', '2022-03-02 16:12:21', '2022-03-02 16:12:21'),
(69, 'Desmos', 'DESMOS', '2022-03-02 16:12:31', '2022-03-02 16:12:31'),
(70, 'Emoney', 'EMONEY', '2022-03-02 16:12:36', '2022-03-02 16:12:36'),
(71, 'Fetch.ai', 'FETCH.AI', '2022-03-02 16:12:44', '2022-03-02 16:12:44'),
(72, 'G-Bridge', 'G-BRIDGE', '2022-03-02 16:12:53', '2022-03-02 16:12:53'),
(73, 'Injective', 'INJECTIVE', '2022-03-02 16:13:05', '2022-03-02 16:13:05'),
(74, 'Juno', 'JUNO', '2022-03-02 16:13:10', '2022-03-02 16:13:10'),
(75, 'Ki Chain', 'KI', '2022-03-02 16:14:03', '2022-03-02 16:14:03'),
(76, 'Konstellation', 'KONSTELLATION', '2022-03-02 16:14:18', '2022-03-02 16:14:18'),
(77, 'Lum', 'LUM', '2022-03-02 16:14:24', '2022-03-02 16:14:24'),
(78, 'Medibloc', 'MEDIBLOC', '2022-03-02 16:14:32', '2022-03-02 16:14:32'),
(79, 'Oec', 'OEC', '2022-03-02 16:14:41', '2022-03-02 16:14:41'),
(80, 'Osmosis', 'OSMOSIS', '2022-03-02 16:14:51', '2022-03-02 16:14:51'),
(81, 'Persistance', 'PERSISTANCE', '2022-03-02 16:15:04', '2022-03-02 16:15:04'),
(82, 'Regen', 'REGEN', '2022-03-02 16:15:14', '2022-03-02 16:15:14'),
(83, 'Rizon', 'RIZON', '2022-03-02 16:15:20', '2022-03-02 16:15:20'),
(84, 'Secret', 'SECRET', '2022-03-02 16:15:27', '2022-03-02 16:15:27'),
(85, 'Sentinel', 'SENTINEL', '2022-03-02 16:15:34', '2022-03-02 16:15:34'),
(86, 'SIF', 'SIF', '2022-03-02 16:15:39', '2022-03-02 16:15:39'),
(87, 'Stargaze', 'STARGAZE', '2022-03-02 16:15:45', '2022-03-02 16:15:45'),
(88, 'Starname', 'STARNAME', '2022-03-02 16:15:51', '2022-03-02 16:15:51'),
(89, 'Umee', 'UMEE', '2022-03-02 16:15:57', '2022-03-02 16:15:57'),
(90, 'Sommelier', 'Sommelier', '2022-03-02 16:32:07', '2022-03-02 16:32:07'),
(91, 'Nervos L2 Godwoken', 'GODWOKEN', '2022-05-15 20:20:15', '2022-05-15 20:20:15'),
(92, 'Songbird', 'SGB', '2022-05-15 20:22:28', '2022-05-15 20:22:28'),
(93, 'Gnosis Chain', 'GNO', '2022-05-15 20:36:41', '2022-05-15 20:36:41'),
(94, 'Harmony', 'ONE', '2022-05-15 20:48:26', '2022-05-15 20:48:26'),
(95, 'WAX', 'WAXP', '2022-05-15 21:06:38', '2022-05-15 21:06:38'),
(96, 'Aurora (EVM)', 'Aurora (EVM)', '2022-05-15 21:08:29', '2022-05-15 21:08:29'),
(97, 'PlatON', 'LAT', '2022-05-15 23:27:33', '2022-05-15 23:27:33'),
(98, 'Moonbeam', 'GLMR', '2022-05-15 23:28:40', '2022-05-15 23:28:40'),
(99, 'Conflux', 'CFX', '2022-05-15 23:29:55', '2022-05-15 23:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `krisar`
--

CREATE TABLE `krisar` (
  `id_krisar` int(12) NOT NULL,
  `email_pengirim` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `is_resolved` varchar(100) NOT NULL DEFAULT 'Not Resolved Yet',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krisar`
--

INSERT INTO `krisar` (`id_krisar`, `email_pengirim`, `kategori`, `isi`, `is_resolved`, `created_at`, `updated_at`) VALUES
(3, 'maeeel@gmail.com', 'Saran', 'Tambahin wallet yang support chain boba dong', 'Not Resolved Yet', '2022-04-20 08:12:50', '2022-04-20 08:12:50'),
(4, 'rizazul@gmail.com', 'Kritik', 'Adakan fitur filter artikel (mengenai airdrop)', 'Resolved', '2022-04-20 08:26:41', '2022-04-20 08:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(27, '2014_10_12_000000_create_users_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2022_01_16_091822_create_permission_tables', 1),
(31, '2022_01_17_152757_create_crypto_wallet_table', 1),
(32, '2022_01_17_152912_create_jenis_coin_table', 1),
(33, '2022_01_17_152925_create_jenis_network_table', 1),
(34, '2022_01_17_153056_create_wallet_coin_table', 1),
(35, '2022_01_17_153113_create_wallet_network_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(2, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-01-17 08:45:24', '2022-01-17 08:45:24'),
(2, 'superadmin', 'web', '2022-01-17 08:45:24', '2022-01-17 08:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `alamat`, `no_hp`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ardan Anjung', 'Bojonegoro', '085212345678', 'ardan', 'ardan@gmail.com', NULL, '$2y$10$sErCMUjG21eoyBTWcKJC5u7YY41mWTJcw9Qhxlqwo9wLrP1I4Cbim', NULL, '2022-01-17 08:45:24', '2022-01-17 08:45:24'),
(2, 'Ahmad Kholilur', 'Tuban', '081234578237', 'kholil', 'kholil@gmail.com', NULL, '$2y$10$/RGbKTakpCL10VQVmY8beOKkOIVx.frKWgLvJLBqsJVwp756puyWC', NULL, '2022-05-16 04:44:30', '2022-05-16 04:44:30'),
(4, 'Gunawan Kurniya', 'Kapas', '0832123123', 'gunawan', 'gunawan@gmail.com', NULL, '$2y$10$Jql0ukZ4Nee9E2OSZd2Qz.xe2VVuvfEQxLeig4wMranltZpP1J2.e', NULL, '2022-05-16 08:08:50', '2022-05-16 08:08:50'),
(5, 'Fiatama Iqbal', 'Ledok', '087987237641', 'fiatama', 'fiatama@gmail.com', NULL, '$2y$10$WnT44Zbmq5Br/5UTUNOxFeCP/6CvDfulAPIlq4IMoD/JrqQTy.1pC', NULL, '2022-05-16 08:10:10', '2022-05-16 08:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_coin`
--

CREATE TABLE `wallet_coin` (
  `id_wallet_coin` bigint(20) UNSIGNED NOT NULL,
  `id_jenis_coin` bigint(20) UNSIGNED NOT NULL,
  `id_wallet` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_coin`
--

INSERT INTO `wallet_coin` (`id_wallet_coin`, `id_jenis_coin`, `id_wallet`, `created_at`, `updated_at`) VALUES
(1, 9, 1, '2022-01-20 16:37:30', '2022-01-20 16:37:37'),
(2, 65, 1, '2022-01-20 16:51:07', '2022-01-20 16:51:07'),
(6, 83, 1, '2022-01-24 07:22:43', '2022-01-24 07:22:43'),
(7, 8, 1, '2022-01-24 07:29:30', '2022-01-24 07:29:30'),
(9, 46, 1, '2022-01-24 07:38:04', '2022-01-24 07:38:04'),
(10, 63, 1, '2022-01-24 07:38:09', '2022-01-24 07:38:09'),
(11, 20, 1, '2022-01-24 07:38:14', '2022-01-24 07:38:14'),
(12, 60, 1, '2022-01-24 07:38:26', '2022-01-24 07:38:26'),
(13, 71, 1, '2022-01-24 07:38:31', '2022-01-24 07:38:31'),
(14, 59, 1, '2022-01-24 07:38:37', '2022-01-24 07:38:37'),
(15, 80, 1, '2022-01-24 07:38:41', '2022-01-24 07:38:41'),
(16, 17, 1, '2022-01-24 07:38:45', '2022-01-24 07:38:45'),
(17, 74, 1, '2022-01-24 07:38:48', '2022-01-24 07:38:48'),
(18, 69, 1, '2022-01-24 07:38:53', '2022-01-24 07:38:53'),
(19, 15, 1, '2022-01-24 07:39:05', '2022-01-24 07:39:05'),
(20, 66, 1, '2022-01-24 07:39:10', '2022-01-24 07:39:10'),
(21, 10, 1, '2022-01-24 07:39:15', '2022-01-24 07:39:15'),
(22, 24, 1, '2022-01-24 07:40:54', '2022-01-24 07:40:54'),
(23, 26, 1, '2022-01-24 07:41:00', '2022-01-24 07:41:00'),
(24, 27, 1, '2022-01-24 07:41:05', '2022-01-24 07:41:05'),
(25, 21, 1, '2022-01-24 07:41:13', '2022-01-24 07:41:13'),
(26, 48, 1, '2022-01-24 07:41:19', '2022-01-24 07:41:19'),
(27, 25, 1, '2022-01-24 07:41:24', '2022-01-24 07:41:24'),
(28, 5, 1, '2022-01-24 07:41:30', '2022-01-24 07:41:30'),
(29, 56, 1, '2022-01-24 07:41:37', '2022-01-24 07:41:37'),
(30, 68, 1, '2022-01-24 07:41:51', '2022-01-24 07:41:51'),
(31, 6, 1, '2022-01-24 07:41:55', '2022-01-24 07:41:55'),
(32, 78, 1, '2022-01-24 07:41:58', '2022-01-24 07:41:58'),
(33, 35, 1, '2022-01-24 07:42:09', '2022-01-24 07:42:09'),
(34, 81, 1, '2022-01-24 07:42:15', '2022-01-24 07:42:15'),
(35, 30, 1, '2022-01-24 07:42:20', '2022-01-24 07:42:20'),
(36, 58, 1, '2022-01-24 07:42:25', '2022-01-24 07:42:25'),
(37, 75, 1, '2022-01-24 07:42:29', '2022-01-24 07:42:29'),
(38, 77, 1, '2022-01-24 07:42:34', '2022-01-24 07:42:34'),
(39, 13, 1, '2022-01-24 07:42:38', '2022-01-24 07:42:38'),
(40, 41, 1, '2022-01-24 07:42:44', '2022-01-24 07:42:44'),
(41, 36, 1, '2022-01-24 07:42:50', '2022-01-24 07:42:50'),
(42, 73, 1, '2022-01-24 07:42:54', '2022-01-24 07:42:54'),
(43, 28, 1, '2022-01-24 07:42:59', '2022-01-24 07:42:59'),
(44, 42, 1, '2022-01-24 07:43:06', '2022-01-24 07:43:06'),
(45, 53, 1, '2022-01-24 07:43:17', '2022-01-24 07:43:17'),
(46, 72, 1, '2022-01-24 07:43:20', '2022-01-24 07:43:20'),
(47, 3, 1, '2022-01-24 07:43:31', '2022-01-24 07:43:31'),
(48, 70, 1, '2022-01-24 07:43:38', '2022-01-24 07:43:38'),
(49, 55, 1, '2022-01-24 07:43:43', '2022-01-24 07:43:43'),
(50, 31, 1, '2022-01-24 07:43:48', '2022-01-24 07:43:48'),
(51, 61, 1, '2022-01-24 07:44:59', '2022-01-24 07:44:59'),
(52, 76, 1, '2022-01-24 07:45:04', '2022-01-24 07:45:04'),
(53, 38, 1, '2022-01-24 07:45:08', '2022-01-24 07:45:08'),
(54, 62, 1, '2022-01-24 07:45:16', '2022-01-24 07:45:16'),
(55, 82, 1, '2022-01-24 07:45:21', '2022-01-24 07:45:21'),
(56, 79, 1, '2022-01-24 07:45:26', '2022-01-24 07:45:26'),
(57, 2, 1, '2022-01-24 07:45:30', '2022-01-24 07:45:30'),
(58, 50, 1, '2022-01-24 07:45:34', '2022-01-24 07:45:34'),
(59, 18, 1, '2022-01-24 07:45:37', '2022-01-24 07:45:37'),
(60, 4, 1, '2022-01-24 07:45:40', '2022-01-24 07:45:40'),
(61, 49, 1, '2022-01-24 07:45:43', '2022-01-24 07:45:43'),
(62, 19, 1, '2022-01-24 07:45:47', '2022-01-24 07:45:47'),
(63, 32, 1, '2022-01-24 07:45:52', '2022-01-24 07:45:52'),
(64, 23, 1, '2022-01-24 07:50:24', '2022-01-24 07:50:24'),
(65, 83, 2, '2022-01-24 08:05:42', '2022-01-24 08:05:42'),
(66, 23, 2, '2022-01-24 08:05:50', '2022-01-24 08:05:50'),
(67, 9, 2, '2022-01-24 08:06:21', '2022-01-24 08:06:21'),
(68, 63, 2, '2022-01-24 08:06:25', '2022-01-24 08:06:25'),
(69, 20, 2, '2022-01-24 08:06:27', '2022-01-24 08:06:27'),
(70, 59, 2, '2022-01-24 08:06:31', '2022-01-24 08:06:31'),
(71, 65, 2, '2022-01-24 08:06:36', '2022-01-24 08:06:36'),
(72, 10, 2, '2022-01-24 08:06:43', '2022-01-24 08:06:43'),
(73, 46, 2, '2022-01-24 08:06:47', '2022-01-24 08:06:47'),
(74, 60, 2, '2022-01-24 08:06:50', '2022-01-24 08:06:50'),
(75, 24, 2, '2022-01-24 08:06:53', '2022-01-24 08:06:53'),
(76, 66, 2, '2022-01-24 08:06:56', '2022-01-24 08:06:56'),
(77, 75, 2, '2022-01-24 08:06:58', '2022-01-24 08:06:58'),
(78, 70, 2, '2022-01-24 08:07:03', '2022-01-24 08:07:03'),
(79, 74, 2, '2022-01-24 08:07:06', '2022-01-24 08:07:06'),
(80, 51, 2, '2022-01-24 08:07:10', '2022-01-24 08:07:10'),
(81, 17, 2, '2022-01-24 08:07:12', '2022-01-24 08:07:12'),
(82, 80, 2, '2022-01-24 08:07:15', '2022-01-24 08:07:15'),
(83, 61, 2, '2022-01-24 08:07:18', '2022-01-24 08:07:18'),
(84, 32, 2, '2022-01-24 08:07:28', '2022-01-24 08:07:28'),
(85, 19, 2, '2022-01-24 08:07:36', '2022-01-24 08:07:36'),
(86, 8, 2, '2022-01-24 08:07:40', '2022-01-24 08:07:40'),
(87, 45, 2, '2022-01-24 08:07:43', '2022-01-24 08:07:43'),
(88, 6, 2, '2022-01-24 08:07:46', '2022-01-24 08:07:46'),
(89, 25, 2, '2022-01-24 08:07:49', '2022-01-24 08:07:49'),
(90, 35, 2, '2022-01-24 08:07:53', '2022-01-24 08:07:53'),
(91, 23, 3, '2022-01-24 08:08:53', '2022-01-24 08:08:53'),
(92, 83, 3, '2022-01-24 08:08:56', '2022-01-24 08:08:56'),
(93, 20, 3, '2022-01-24 08:09:01', '2022-01-24 08:09:01'),
(94, 59, 3, '2022-01-24 08:09:04', '2022-01-24 08:09:04'),
(95, 45, 3, '2022-01-24 08:09:06', '2022-01-24 08:09:06'),
(96, 46, 3, '2022-01-24 08:09:10', '2022-01-24 08:09:10'),
(97, 8, 3, '2022-01-24 08:09:13', '2022-01-24 08:09:13'),
(98, 83, 4, '2022-01-24 08:09:36', '2022-01-24 08:09:36'),
(99, 23, 4, '2022-01-24 08:09:44', '2022-01-24 08:09:44'),
(100, 22, 4, '2022-01-24 08:09:52', '2022-01-24 08:09:52'),
(101, 59, 4, '2022-01-24 08:09:54', '2022-01-24 08:09:54'),
(102, 74, 4, '2022-01-24 08:09:57', '2022-01-24 08:09:57'),
(103, 9, 4, '2022-01-24 08:10:04', '2022-01-24 08:10:04'),
(104, 34, 4, '2022-01-24 08:10:06', '2022-01-24 08:10:06'),
(105, 37, 4, '2022-01-24 08:10:08', '2022-01-24 08:10:08'),
(106, 15, 4, '2022-01-24 08:10:13', '2022-01-24 08:10:13'),
(107, 8, 4, '2022-01-24 08:10:16', '2022-01-24 08:10:16'),
(108, 12, 4, '2022-01-24 08:10:18', '2022-01-24 08:10:18'),
(109, 47, 4, '2022-01-24 08:10:23', '2022-01-24 08:10:23'),
(110, 39, 4, '2022-01-24 08:10:25', '2022-01-24 08:10:25'),
(111, 54, 4, '2022-01-24 08:10:27', '2022-01-24 08:10:27'),
(112, 60, 4, '2022-01-24 08:10:34', '2022-01-24 08:10:34'),
(113, 45, 4, '2022-01-24 08:10:36', '2022-01-24 08:10:36'),
(114, 43, 4, '2022-01-24 08:10:38', '2022-01-24 08:10:38'),
(115, 33, 4, '2022-01-24 08:10:47', '2022-01-24 08:10:47'),
(116, 67, 4, '2022-01-24 08:10:50', '2022-01-24 08:10:50'),
(117, 83, 5, '2022-01-24 08:13:06', '2022-01-24 08:13:06'),
(120, 23, 5, '2022-01-24 08:13:27', '2022-01-24 08:13:27'),
(121, 22, 5, '2022-01-24 08:13:29', '2022-01-24 08:13:29'),
(122, 15, 5, '2022-01-24 08:13:30', '2022-01-24 08:13:30'),
(123, 10, 5, '2022-01-24 08:13:44', '2022-01-24 08:13:44'),
(124, 74, 5, '2022-01-24 08:13:46', '2022-01-24 08:13:46'),
(125, 46, 5, '2022-01-24 08:13:48', '2022-01-24 08:13:48'),
(126, 52, 5, '2022-01-24 08:13:54', '2022-01-24 08:13:54'),
(127, 59, 5, '2022-01-24 08:13:56', '2022-01-24 08:13:56'),
(128, 45, 5, '2022-01-24 08:13:58', '2022-01-24 08:13:58'),
(129, 26, 5, '2022-01-24 08:14:04', '2022-01-24 08:14:04'),
(130, 69, 5, '2022-01-24 08:14:06', '2022-01-24 08:14:06'),
(131, 9, 5, '2022-01-24 08:14:09', '2022-01-24 08:14:09'),
(132, 34, 5, '2022-01-24 08:14:15', '2022-01-24 08:14:15'),
(133, 60, 5, '2022-01-24 08:14:17', '2022-01-24 08:14:17'),
(134, 25, 5, '2022-01-24 08:14:18', '2022-01-24 08:14:18'),
(135, 78, 5, '2022-01-24 08:14:24', '2022-01-24 08:14:24'),
(136, 14, 5, '2022-01-24 08:14:26', '2022-01-24 08:14:26'),
(137, 6, 5, '2022-01-24 08:14:28', '2022-01-24 08:14:28'),
(138, 16, 5, '2022-01-24 08:14:32', '2022-01-24 08:14:32'),
(139, 74, 6, '2022-01-24 08:16:26', '2022-01-24 08:16:26'),
(140, 23, 7, '2022-01-24 08:16:58', '2022-01-24 08:16:58'),
(141, 9, 7, '2022-01-24 08:17:02', '2022-01-24 08:17:02'),
(142, 60, 7, '2022-01-24 08:17:05', '2022-01-24 08:17:05'),
(143, 82, 8, '2022-01-24 08:17:44', '2022-01-24 08:17:44'),
(144, 9, 9, '2022-01-24 08:18:05', '2022-01-24 08:18:05'),
(145, 65, 9, '2022-01-24 08:18:08', '2022-01-24 08:18:08'),
(146, 6, 9, '2022-01-24 08:18:10', '2022-01-24 08:18:10'),
(147, 23, 9, '2022-01-24 08:18:15', '2022-01-24 08:18:15'),
(148, 14, 9, '2022-01-24 08:18:19', '2022-01-24 08:18:19'),
(149, 34, 9, '2022-01-24 08:18:23', '2022-01-24 08:18:23'),
(150, 25, 9, '2022-01-24 08:18:25', '2022-01-24 08:18:25'),
(151, 54, 9, '2022-01-24 08:18:29', '2022-01-24 08:18:29'),
(152, 60, 9, '2022-01-24 08:18:42', '2022-01-24 08:18:42'),
(153, 29, 9, '2022-01-24 08:18:44', '2022-01-24 08:18:44'),
(154, 49, 9, '2022-01-24 08:18:46', '2022-01-24 08:18:46'),
(155, 78, 9, '2022-01-24 08:18:52', '2022-01-24 08:18:52'),
(156, 73, 9, '2022-01-24 08:18:55', '2022-01-24 08:18:55'),
(157, 40, 9, '2022-01-24 08:18:59', '2022-01-24 08:18:59'),
(159, 64, 9, '2022-01-24 08:19:13', '2022-01-24 08:19:13'),
(160, 43, 9, '2022-01-24 08:19:21', '2022-01-24 08:19:21'),
(161, 56, 9, '2022-01-24 08:19:23', '2022-01-24 08:19:23'),
(162, 11, 9, '2022-01-24 08:19:26', '2022-01-24 08:19:26'),
(163, 5, 9, '2022-01-24 08:19:32', '2022-01-24 08:19:32'),
(164, 45, 9, '2022-01-24 08:19:34', '2022-01-24 08:19:34'),
(165, 15, 9, '2022-01-24 08:19:37', '2022-01-24 08:19:37'),
(166, 71, 9, '2022-01-24 08:19:41', '2022-01-24 08:19:41'),
(167, 68, 9, '2022-01-24 08:19:48', '2022-01-24 08:19:48'),
(168, 7, 9, '2022-01-24 08:19:50', '2022-01-24 08:19:50'),
(169, 41, 9, '2022-01-24 08:19:53', '2022-01-24 08:19:53'),
(170, 57, 9, '2022-01-24 08:19:57', '2022-01-24 08:19:57'),
(171, 83, 9, '2022-01-24 08:20:01', '2022-01-24 08:20:01'),
(172, 59, 9, '2022-01-24 08:20:06', '2022-01-24 08:20:06'),
(173, 44, 9, '2022-01-24 08:20:08', '2022-01-24 08:20:08'),
(174, 63, 10, '2022-01-24 08:21:52', '2022-01-24 08:21:52'),
(175, 65, 11, '2022-01-24 08:22:09', '2022-01-24 08:22:09'),
(176, 4, 12, '2022-01-24 08:22:31', '2022-01-24 08:22:31'),
(177, 65, 13, '2022-01-24 08:22:58', '2022-01-24 08:22:58'),
(178, 21, 14, '2022-01-24 08:23:22', '2022-01-24 08:23:22'),
(179, 8, 14, '2022-01-24 08:23:26', '2022-01-24 08:23:26'),
(180, 23, 14, '2022-01-24 08:23:32', '2022-01-24 08:23:32'),
(181, 83, 14, '2022-01-24 08:23:34', '2022-01-24 08:23:34'),
(182, 68, 16, '2022-01-27 14:25:42', '2022-01-27 14:25:42'),
(183, 66, 17, '2022-01-29 06:22:27', '2022-01-29 06:22:27'),
(184, 59, 18, '2022-01-29 06:34:30', '2022-01-29 06:34:30'),
(185, 45, 18, '2022-01-29 06:34:51', '2022-01-29 06:34:51'),
(186, 86, 18, '2022-01-29 06:47:36', '2022-01-29 06:47:36'),
(187, 87, 18, '2022-01-29 06:47:43', '2022-01-29 06:47:43'),
(188, 88, 18, '2022-01-29 06:47:51', '2022-01-29 06:47:51'),
(189, 89, 18, '2022-01-29 06:48:00', '2022-01-29 06:48:00'),
(190, 90, 18, '2022-01-29 06:48:06', '2022-01-29 06:48:06'),
(191, 83, 19, '2022-01-29 07:08:38', '2022-01-29 07:08:38'),
(192, 23, 19, '2022-01-29 07:08:43', '2022-01-29 07:08:43'),
(193, 34, 19, '2022-01-29 07:08:48', '2022-01-29 07:08:48'),
(194, 9, 19, '2022-01-29 07:08:55', '2022-01-29 07:08:55'),
(195, 54, 19, '2022-01-29 07:09:05', '2022-01-29 07:09:05'),
(196, 60, 19, '2022-01-29 07:09:10', '2022-01-29 07:09:10'),
(197, 6, 19, '2022-01-29 07:09:16', '2022-01-29 07:09:16'),
(198, 65, 19, '2022-01-29 07:09:21', '2022-01-29 07:09:21'),
(199, 63, 19, '2022-01-29 07:11:48', '2022-01-29 07:11:48'),
(200, 22, 19, '2022-01-29 07:12:00', '2022-01-29 07:12:00'),
(201, 46, 19, '2022-01-29 07:12:09', '2022-01-29 07:12:09'),
(202, 91, 19, '2022-01-29 07:12:37', '2022-01-29 07:12:37'),
(203, 10, 19, '2022-01-29 07:12:44', '2022-01-29 07:12:44'),
(204, 69, 19, '2022-01-29 07:12:49', '2022-01-29 07:12:49'),
(205, 74, 19, '2022-01-29 07:12:55', '2022-01-29 07:12:55'),
(206, 17, 19, '2022-01-29 07:12:59', '2022-01-29 07:12:59'),
(207, 15, 19, '2022-01-29 07:13:04', '2022-01-29 07:13:04'),
(208, 55, 19, '2022-01-29 07:13:10', '2022-01-29 07:13:10'),
(209, 24, 19, '2022-01-29 07:13:45', '2022-01-29 07:13:45'),
(210, 59, 19, '2022-01-29 07:13:50', '2022-01-29 07:13:50'),
(211, 45, 19, '2022-01-29 07:13:55', '2022-01-29 07:13:55'),
(212, 20, 19, '2022-01-29 07:14:04', '2022-01-29 07:14:04'),
(213, 43, 19, '2022-01-29 07:14:09', '2022-01-29 07:14:09'),
(214, 37, 19, '2022-01-29 07:14:13', '2022-01-29 07:14:13'),
(215, 92, 19, '2022-01-29 07:33:35', '2022-01-29 07:33:35'),
(216, 15, 20, '2022-03-02 16:20:58', '2022-03-02 16:20:58'),
(217, 93, 20, '2022-03-02 16:21:02', '2022-03-02 16:21:02'),
(218, 94, 20, '2022-03-02 16:21:06', '2022-03-02 16:21:06'),
(219, 95, 20, '2022-03-02 16:21:09', '2022-03-02 16:21:09'),
(220, 7, 20, '2022-03-02 16:21:12', '2022-03-02 16:21:12'),
(221, 8, 20, '2022-03-02 16:21:48', '2022-03-02 16:21:48'),
(222, 96, 20, '2022-03-02 16:21:56', '2022-03-02 16:21:56'),
(223, 97, 20, '2022-03-02 16:22:01', '2022-03-02 16:22:01'),
(224, 98, 20, '2022-03-02 16:22:04', '2022-03-02 16:22:04'),
(225, 99, 20, '2022-03-02 16:22:09', '2022-03-02 16:22:09'),
(226, 100, 20, '2022-03-02 16:22:14', '2022-03-02 16:22:14'),
(227, 101, 20, '2022-03-02 16:22:17', '2022-03-02 16:22:17'),
(228, 102, 20, '2022-03-02 16:22:21', '2022-03-02 16:22:21'),
(229, 103, 20, '2022-03-02 16:22:26', '2022-03-02 16:22:26'),
(230, 104, 20, '2022-03-02 16:22:28', '2022-03-02 16:22:28'),
(231, 105, 20, '2022-03-02 16:22:31', '2022-03-02 16:22:31'),
(232, 106, 20, '2022-03-02 16:22:35', '2022-03-02 16:22:35'),
(233, 107, 20, '2022-03-02 16:22:38', '2022-03-02 16:22:38'),
(234, 41, 20, '2022-03-02 16:22:41', '2022-03-02 16:22:41'),
(235, 108, 20, '2022-03-02 16:22:44', '2022-03-02 16:22:44'),
(236, 109, 20, '2022-03-02 16:22:49', '2022-03-02 16:22:49'),
(237, 110, 20, '2022-03-02 16:22:57', '2022-03-02 16:22:57'),
(238, 111, 20, '2022-03-02 16:23:01', '2022-03-02 16:23:01'),
(239, 112, 20, '2022-03-02 16:23:03', '2022-03-02 16:23:03'),
(240, 113, 20, '2022-03-02 16:23:10', '2022-03-02 16:23:10'),
(241, 57, 20, '2022-03-02 16:23:16', '2022-03-02 16:23:16'),
(242, 114, 20, '2022-03-02 16:23:23', '2022-03-02 16:23:23'),
(243, 115, 20, '2022-03-02 16:23:27', '2022-03-02 16:23:27'),
(244, 116, 20, '2022-03-02 16:23:29', '2022-03-02 16:23:29'),
(245, 117, 20, '2022-03-02 16:23:32', '2022-03-02 16:23:32'),
(246, 118, 20, '2022-03-02 16:23:39', '2022-03-02 16:23:39'),
(247, 119, 20, '2022-03-02 16:23:43', '2022-03-02 16:23:43'),
(248, 120, 20, '2022-03-02 16:23:47', '2022-03-02 16:23:47'),
(249, 121, 20, '2022-03-02 16:23:51', '2022-03-02 16:23:51'),
(250, 15, 21, '2022-03-02 16:30:03', '2022-03-02 16:30:03'),
(251, 113, 21, '2022-03-02 16:30:10', '2022-03-02 16:30:10'),
(252, 114, 21, '2022-03-02 16:30:13', '2022-03-02 16:30:13'),
(253, 107, 21, '2022-03-02 16:30:16', '2022-03-02 16:30:16'),
(254, 119, 21, '2022-03-02 16:30:18', '2022-03-02 16:30:18'),
(255, 57, 21, '2022-03-02 16:30:22', '2022-03-02 16:30:22'),
(256, 95, 21, '2022-03-02 16:30:25', '2022-03-02 16:30:25'),
(257, 122, 21, '2022-03-02 16:32:14', '2022-03-02 16:32:14'),
(258, 121, 21, '2022-03-02 16:32:20', '2022-03-02 16:32:20'),
(259, 106, 2, '2022-05-15 20:17:26', '2022-05-15 20:17:26'),
(260, 5, 2, '2022-05-15 20:17:29', '2022-05-15 20:17:29'),
(261, 68, 2, '2022-05-15 20:17:36', '2022-05-15 20:17:36'),
(262, 11, 2, '2022-05-15 20:19:42', '2022-05-15 20:19:42'),
(263, 123, 2, '2022-05-15 20:20:55', '2022-05-15 20:20:55'),
(264, 56, 2, '2022-05-15 20:21:18', '2022-05-15 20:21:18'),
(265, 124, 2, '2022-05-15 20:22:41', '2022-05-15 20:22:41'),
(266, 125, 1, '2022-05-15 20:38:49', '2022-05-15 20:38:49'),
(267, 34, 1, '2022-05-15 20:39:11', '2022-05-15 20:39:11'),
(268, 16, 1, '2022-05-15 20:39:22', '2022-05-15 20:39:22'),
(269, 126, 4, '2022-05-15 21:06:51', '2022-05-15 21:06:51'),
(270, 127, 4, '2022-05-15 21:08:47', '2022-05-15 21:08:47'),
(271, 65, 4, '2022-05-15 21:09:04', '2022-05-15 21:09:04'),
(272, 6, 4, '2022-05-15 21:09:05', '2022-05-15 21:09:05'),
(273, 44, 4, '2022-05-15 21:09:12', '2022-05-15 21:09:12'),
(274, 32, 4, '2022-05-15 21:09:19', '2022-05-15 21:09:19'),
(275, 25, 4, '2022-05-15 21:09:30', '2022-05-15 21:09:30'),
(276, 5, 4, '2022-05-15 21:09:31', '2022-05-15 21:09:31'),
(277, 125, 4, '2022-05-15 23:28:00', '2022-05-15 23:28:00'),
(279, 130, 4, '2022-05-15 23:30:15', '2022-05-15 23:30:15'),
(280, 128, 4, '2022-05-15 23:30:23', '2022-05-15 23:30:23'),
(281, 129, 4, '2022-05-15 23:30:26', '2022-05-15 23:30:26'),
(282, 56, 4, '2022-05-15 23:30:55', '2022-05-15 23:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_network`
--

CREATE TABLE `wallet_network` (
  `id_wallet_network` bigint(20) UNSIGNED NOT NULL,
  `id_jenis_network` bigint(20) UNSIGNED NOT NULL,
  `id_wallet` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_network`
--

INSERT INTO `wallet_network` (`id_wallet_network`, `id_jenis_network`, `id_wallet`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2022-01-20 16:38:05', '2022-01-20 16:38:10'),
(5, 16, 1, '2022-01-24 07:04:45', '2022-01-24 07:04:45'),
(6, 17, 1, '2022-01-24 07:28:24', '2022-01-24 07:28:24'),
(7, 44, 1, '2022-01-24 07:29:09', '2022-01-24 07:29:09'),
(9, 45, 1, '2022-01-24 07:46:01', '2022-01-24 07:46:01'),
(10, 22, 1, '2022-01-24 07:46:04', '2022-01-24 07:46:04'),
(11, 36, 1, '2022-01-24 07:46:07', '2022-01-24 07:46:07'),
(12, 10, 1, '2022-01-24 07:46:10', '2022-01-24 07:46:10'),
(13, 5, 2, '2022-01-24 08:08:00', '2022-01-24 08:08:00'),
(14, 16, 2, '2022-01-24 08:08:03', '2022-01-24 08:08:03'),
(15, 41, 2, '2022-01-24 08:08:07', '2022-01-24 08:08:07'),
(16, 38, 2, '2022-01-24 08:08:10', '2022-01-24 08:08:10'),
(17, 3, 2, '2022-01-24 08:08:12', '2022-01-24 08:08:12'),
(18, 18, 2, '2022-01-24 08:08:15', '2022-01-24 08:08:15'),
(19, 23, 2, '2022-01-24 08:08:20', '2022-01-24 08:08:20'),
(20, 46, 2, '2022-01-24 08:08:28', '2022-01-24 08:08:28'),
(21, 16, 3, '2022-01-24 08:09:19', '2022-01-24 08:09:19'),
(22, 6, 4, '2022-01-24 08:11:03', '2022-01-24 08:11:03'),
(23, 16, 4, '2022-01-24 08:11:05', '2022-01-24 08:11:05'),
(24, 15, 4, '2022-01-24 08:11:07', '2022-01-24 08:11:07'),
(25, 37, 4, '2022-01-24 08:11:11', '2022-01-24 08:11:11'),
(26, 46, 4, '2022-01-24 08:11:13', '2022-01-24 08:11:13'),
(27, 5, 4, '2022-01-24 08:11:19', '2022-01-24 08:11:19'),
(28, 23, 4, '2022-01-24 08:11:26', '2022-01-24 08:11:26'),
(29, 24, 4, '2022-01-24 08:11:27', '2022-01-24 08:11:27'),
(30, 12, 4, '2022-01-24 08:11:29', '2022-01-24 08:11:29'),
(31, 4, 4, '2022-01-24 08:11:31', '2022-01-24 08:11:31'),
(32, 9, 4, '2022-01-24 08:11:38', '2022-01-24 08:11:38'),
(33, 31, 4, '2022-01-24 08:11:40', '2022-01-24 08:11:40'),
(34, 25, 4, '2022-01-24 08:11:41', '2022-01-24 08:11:41'),
(36, 34, 4, '2022-01-24 08:11:50', '2022-01-24 08:11:50'),
(37, 38, 4, '2022-01-24 08:12:00', '2022-01-24 08:12:00'),
(38, 29, 4, '2022-01-24 08:12:03', '2022-01-24 08:12:03'),
(39, 27, 4, '2022-01-24 08:12:04', '2022-01-24 08:12:04'),
(40, 21, 4, '2022-01-24 08:12:06', '2022-01-24 08:12:06'),
(41, 42, 4, '2022-01-24 08:12:08', '2022-01-24 08:12:08'),
(42, 6, 5, '2022-01-24 08:14:41', '2022-01-24 08:14:41'),
(43, 16, 5, '2022-01-24 08:14:50', '2022-01-24 08:14:50'),
(44, 15, 5, '2022-01-24 08:14:57', '2022-01-24 08:14:57'),
(45, 12, 5, '2022-01-24 08:15:00', '2022-01-24 08:15:00'),
(46, 7, 5, '2022-01-24 08:15:03', '2022-01-24 08:15:03'),
(47, 46, 5, '2022-01-24 08:15:05', '2022-01-24 08:15:05'),
(48, 30, 5, '2022-01-24 08:15:11', '2022-01-24 08:15:11'),
(49, 33, 5, '2022-01-24 08:15:13', '2022-01-24 08:15:13'),
(50, 37, 5, '2022-01-24 08:15:14', '2022-01-24 08:15:14'),
(51, 29, 5, '2022-01-24 08:15:27', '2022-01-24 08:15:27'),
(52, 19, 5, '2022-01-24 08:15:30', '2022-01-24 08:15:30'),
(53, 43, 5, '2022-01-24 08:15:32', '2022-01-24 08:15:32'),
(54, 5, 5, '2022-01-24 08:15:37', '2022-01-24 08:15:37'),
(55, 23, 5, '2022-01-24 08:15:39', '2022-01-24 08:15:39'),
(56, 38, 5, '2022-01-24 08:15:41', '2022-01-24 08:15:41'),
(57, 18, 5, '2022-01-24 08:15:48', '2022-01-24 08:15:48'),
(58, 47, 5, '2022-01-24 08:15:49', '2022-01-24 08:15:49'),
(59, 11, 5, '2022-01-24 08:15:51', '2022-01-24 08:15:51'),
(60, 3, 5, '2022-01-24 08:15:54', '2022-01-24 08:15:54'),
(61, 13, 5, '2022-01-24 08:15:56', '2022-01-24 08:15:56'),
(62, 46, 6, '2022-01-24 08:16:27', '2022-01-24 08:16:27'),
(63, 16, 7, '2022-01-24 08:17:10', '2022-01-24 08:17:10'),
(65, 5, 7, '2022-01-24 08:17:19', '2022-01-24 08:17:19'),
(66, 38, 7, '2022-01-24 08:17:22', '2022-01-24 08:17:22'),
(67, 48, 8, '2022-01-24 08:17:46', '2022-01-24 08:17:46'),
(68, 5, 9, '2022-01-24 08:20:13', '2022-01-24 08:20:13'),
(69, 41, 9, '2022-01-24 08:20:16', '2022-01-24 08:20:16'),
(70, 3, 9, '2022-01-24 08:20:18', '2022-01-24 08:20:18'),
(71, 16, 9, '2022-01-24 08:20:21', '2022-01-24 08:20:21'),
(72, 11, 9, '2022-01-24 08:20:25', '2022-01-24 08:20:25'),
(73, 23, 9, '2022-01-24 08:20:33', '2022-01-24 08:20:33'),
(74, 18, 9, '2022-01-24 08:20:39', '2022-01-24 08:20:39'),
(75, 28, 9, '2022-01-24 08:20:42', '2022-01-24 08:20:42'),
(76, 34, 9, '2022-01-24 08:20:50', '2022-01-24 08:20:50'),
(77, 38, 9, '2022-01-24 08:20:53', '2022-01-24 08:20:53'),
(78, 20, 9, '2022-01-24 08:20:56', '2022-01-24 08:20:56'),
(79, 32, 9, '2022-01-24 08:21:00', '2022-01-24 08:21:00'),
(80, 47, 9, '2022-01-24 08:21:02', '2022-01-24 08:21:02'),
(81, 45, 9, '2022-01-24 08:21:07', '2022-01-24 08:21:07'),
(82, 26, 9, '2022-01-24 08:21:10', '2022-01-24 08:21:10'),
(83, 40, 9, '2022-01-24 08:21:14', '2022-01-24 08:21:14'),
(84, 27, 9, '2022-01-24 08:21:21', '2022-01-24 08:21:21'),
(85, 35, 9, '2022-01-24 08:21:23', '2022-01-24 08:21:23'),
(86, 8, 9, '2022-01-24 08:21:25', '2022-01-24 08:21:25'),
(87, 2, 9, '2022-01-24 08:21:27', '2022-01-24 08:21:27'),
(88, 39, 10, '2022-01-24 08:21:54', '2022-01-24 08:21:54'),
(89, 41, 11, '2022-01-24 08:22:11', '2022-01-24 08:22:11'),
(90, 1, 12, '2022-01-24 08:22:33', '2022-01-24 08:22:33'),
(91, 41, 13, '2022-01-24 08:23:00', '2022-01-24 08:23:00'),
(92, 14, 14, '2022-01-24 08:23:37', '2022-01-24 08:23:37'),
(93, 51, 16, '2022-01-27 14:26:03', '2022-01-27 14:26:03'),
(94, 52, 17, '2022-01-29 06:24:06', '2022-01-29 06:24:06'),
(95, 37, 18, '2022-01-29 06:34:34', '2022-01-29 06:34:34'),
(96, 29, 18, '2022-01-29 06:35:02', '2022-01-29 06:35:02'),
(97, 53, 18, '2022-01-29 06:47:38', '2022-01-29 06:47:38'),
(98, 54, 18, '2022-01-29 06:48:12', '2022-01-29 06:48:12'),
(99, 55, 18, '2022-01-29 06:48:15', '2022-01-29 06:48:15'),
(100, 56, 18, '2022-01-29 06:48:17', '2022-01-29 06:48:17'),
(101, 57, 18, '2022-01-29 06:48:19', '2022-01-29 06:48:19'),
(102, 16, 19, '2022-01-29 07:15:10', '2022-01-29 07:15:10'),
(103, 23, 19, '2022-01-29 07:15:15', '2022-01-29 07:15:15'),
(104, 5, 19, '2022-01-29 07:15:25', '2022-01-29 07:15:25'),
(105, 38, 19, '2022-01-29 07:15:32', '2022-01-29 07:15:32'),
(106, 41, 19, '2022-01-29 07:15:38', '2022-01-29 07:15:38'),
(107, 3, 19, '2022-01-29 07:15:44', '2022-01-29 07:15:44'),
(108, 46, 19, '2022-01-29 07:15:50', '2022-01-29 07:15:50'),
(109, 34, 19, '2022-01-29 07:15:58', '2022-01-29 07:15:58'),
(110, 12, 20, '2022-03-02 16:24:03', '2022-03-02 16:24:03'),
(111, 60, 20, '2022-03-02 16:24:06', '2022-03-02 16:24:06'),
(112, 61, 20, '2022-03-02 16:24:08', '2022-03-02 16:24:08'),
(113, 62, 20, '2022-03-02 16:24:10', '2022-03-02 16:24:10'),
(114, 59, 20, '2022-03-02 16:24:12', '2022-03-02 16:24:12'),
(115, 4, 20, '2022-03-02 16:24:16', '2022-03-02 16:24:16'),
(116, 63, 20, '2022-03-02 16:24:20', '2022-03-02 16:24:20'),
(117, 64, 20, '2022-03-02 16:24:22', '2022-03-02 16:24:22'),
(118, 65, 20, '2022-03-02 16:24:25', '2022-03-02 16:24:25'),
(119, 66, 20, '2022-03-02 16:24:28', '2022-03-02 16:24:28'),
(120, 67, 20, '2022-03-02 16:24:30', '2022-03-02 16:24:30'),
(121, 68, 20, '2022-03-02 16:24:33', '2022-03-02 16:24:33'),
(122, 69, 20, '2022-03-02 16:24:39', '2022-03-02 16:24:39'),
(123, 70, 20, '2022-03-02 16:24:42', '2022-03-02 16:24:42'),
(124, 71, 20, '2022-03-02 16:24:44', '2022-03-02 16:24:44'),
(125, 72, 20, '2022-03-02 16:24:48', '2022-03-02 16:24:48'),
(126, 73, 20, '2022-03-02 16:24:51', '2022-03-02 16:24:51'),
(127, 74, 20, '2022-03-02 16:24:54', '2022-03-02 16:24:54'),
(128, 58, 20, '2022-03-02 16:24:56', '2022-03-02 16:24:56'),
(129, 75, 20, '2022-03-02 16:25:00', '2022-03-02 16:25:00'),
(130, 76, 20, '2022-03-02 16:25:03', '2022-03-02 16:25:03'),
(131, 77, 20, '2022-03-02 16:25:16', '2022-03-02 16:25:16'),
(132, 78, 20, '2022-03-02 16:25:20', '2022-03-02 16:25:20'),
(133, 79, 20, '2022-03-02 16:25:23', '2022-03-02 16:25:23'),
(134, 80, 20, '2022-03-02 16:25:27', '2022-03-02 16:25:27'),
(135, 81, 20, '2022-03-02 16:25:30', '2022-03-02 16:25:30'),
(136, 82, 20, '2022-03-02 16:25:33', '2022-03-02 16:25:33'),
(137, 83, 20, '2022-03-02 16:25:36', '2022-03-02 16:25:36'),
(138, 84, 20, '2022-03-02 16:25:40', '2022-03-02 16:25:40'),
(139, 85, 20, '2022-03-02 16:25:45', '2022-03-02 16:25:45'),
(140, 86, 20, '2022-03-02 16:25:48', '2022-03-02 16:25:48'),
(141, 87, 20, '2022-03-02 16:25:51', '2022-03-02 16:25:51'),
(142, 88, 20, '2022-03-02 16:25:54', '2022-03-02 16:25:54'),
(143, 89, 20, '2022-03-02 16:25:58', '2022-03-02 16:25:58'),
(144, 12, 21, '2022-03-02 16:32:27', '2022-03-02 16:32:27'),
(145, 80, 21, '2022-03-02 16:32:30', '2022-03-02 16:32:30'),
(146, 82, 21, '2022-03-02 16:32:32', '2022-03-02 16:32:32'),
(147, 74, 21, '2022-03-02 16:32:34', '2022-03-02 16:32:34'),
(148, 87, 21, '2022-03-02 16:32:36', '2022-03-02 16:32:36'),
(149, 81, 21, '2022-03-02 16:32:39', '2022-03-02 16:32:39'),
(150, 62, 21, '2022-03-02 16:32:40', '2022-03-02 16:32:40'),
(151, 90, 21, '2022-03-02 16:32:42', '2022-03-02 16:32:42'),
(152, 89, 21, '2022-03-02 16:32:45', '2022-03-02 16:32:45'),
(153, 51, 2, '2022-05-15 10:01:32', '2022-05-15 10:01:32'),
(154, 2, 2, '2022-05-15 20:08:59', '2022-05-15 20:08:59'),
(155, 73, 2, '2022-05-15 20:10:02', '2022-05-15 20:10:02'),
(156, 8, 2, '2022-05-15 20:19:38', '2022-05-15 20:19:38'),
(157, 91, 2, '2022-05-15 20:20:52', '2022-05-15 20:20:52'),
(158, 35, 2, '2022-05-15 20:21:16', '2022-05-15 20:21:16'),
(160, 92, 2, '2022-05-15 20:22:46', '2022-05-15 20:22:46'),
(161, 35, 1, '2022-05-15 20:35:30', '2022-05-15 20:35:30'),
(162, 11, 1, '2022-05-15 20:35:34', '2022-05-15 20:35:34'),
(163, 2, 1, '2022-05-15 20:35:43', '2022-05-15 20:35:43'),
(164, 93, 1, '2022-05-15 20:37:38', '2022-05-15 20:37:38'),
(165, 23, 1, '2022-05-15 20:37:48', '2022-05-15 20:37:48'),
(166, 18, 1, '2022-05-15 20:37:57', '2022-05-15 20:37:57'),
(167, 13, 1, '2022-05-15 20:38:09', '2022-05-15 20:38:09'),
(168, 41, 4, '2022-05-15 20:46:17', '2022-05-15 20:46:17'),
(169, 3, 4, '2022-05-15 20:47:16', '2022-05-15 20:47:16'),
(170, 28, 4, '2022-05-15 20:47:55', '2022-05-15 20:47:55'),
(171, 94, 4, '2022-05-15 20:48:41', '2022-05-15 20:48:41'),
(172, 95, 4, '2022-05-15 21:06:49', '2022-05-15 21:06:49'),
(173, 18, 4, '2022-05-15 21:07:09', '2022-05-15 21:07:09'),
(174, 2, 4, '2022-05-15 21:07:25', '2022-05-15 21:07:25'),
(175, 96, 4, '2022-05-15 21:08:44', '2022-05-15 21:08:44'),
(176, 35, 4, '2022-05-15 21:09:41', '2022-05-15 21:09:41'),
(177, 93, 4, '2022-05-15 23:27:57', '2022-05-15 23:27:57'),
(178, 99, 4, '2022-05-15 23:30:06', '2022-05-15 23:30:06'),
(179, 97, 4, '2022-05-15 23:30:21', '2022-05-15 23:30:21'),
(180, 98, 4, '2022-05-15 23:30:28', '2022-05-15 23:30:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arcategory`
--
ALTER TABLE `arcategory`
  ADD PRIMARY KEY (`id_arcategory`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `crypto_wallet`
--
ALTER TABLE `crypto_wallet`
  ADD PRIMARY KEY (`id_wallet`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_coin`
--
ALTER TABLE `jenis_coin`
  ADD PRIMARY KEY (`id_jenis_coin`);

--
-- Indexes for table `jenis_network`
--
ALTER TABLE `jenis_network`
  ADD PRIMARY KEY (`id_jenis_network`);

--
-- Indexes for table `krisar`
--
ALTER TABLE `krisar`
  ADD PRIMARY KEY (`id_krisar`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallet_coin`
--
ALTER TABLE `wallet_coin`
  ADD PRIMARY KEY (`id_wallet_coin`),
  ADD KEY `id_wallet` (`id_wallet`),
  ADD KEY `id_jenis_coin` (`id_jenis_coin`);

--
-- Indexes for table `wallet_network`
--
ALTER TABLE `wallet_network`
  ADD PRIMARY KEY (`id_wallet_network`),
  ADD KEY `id_jenis_network` (`id_jenis_network`),
  ADD KEY `id_wallet` (`id_wallet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arcategory`
--
ALTER TABLE `arcategory`
  MODIFY `id_arcategory` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `crypto_wallet`
--
ALTER TABLE `crypto_wallet`
  MODIFY `id_wallet` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_coin`
--
ALTER TABLE `jenis_coin`
  MODIFY `id_jenis_coin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `jenis_network`
--
ALTER TABLE `jenis_network`
  MODIFY `id_jenis_network` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `krisar`
--
ALTER TABLE `krisar`
  MODIFY `id_krisar` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wallet_coin`
--
ALTER TABLE `wallet_coin`
  MODIFY `id_wallet_coin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `wallet_network`
--
ALTER TABLE `wallet_network`
  MODIFY `id_wallet_network` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arcategory`
--
ALTER TABLE `arcategory`
  ADD CONSTRAINT `arcategory_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet_coin`
--
ALTER TABLE `wallet_coin`
  ADD CONSTRAINT `wallet_coin_ibfk_1` FOREIGN KEY (`id_wallet`) REFERENCES `crypto_wallet` (`id_wallet`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wallet_coin_ibfk_2` FOREIGN KEY (`id_jenis_coin`) REFERENCES `jenis_coin` (`id_jenis_coin`);

--
-- Constraints for table `wallet_network`
--
ALTER TABLE `wallet_network`
  ADD CONSTRAINT `wallet_network_ibfk_1` FOREIGN KEY (`id_jenis_network`) REFERENCES `jenis_network` (`id_jenis_network`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wallet_network_ibfk_2` FOREIGN KEY (`id_wallet`) REFERENCES `crypto_wallet` (`id_wallet`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
