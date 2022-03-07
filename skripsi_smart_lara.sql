-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 06:14 PM
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
-- Database: `skripsi_smart_lara`
--

-- --------------------------------------------------------

--
-- Table structure for table `arcategory`
--

CREATE TABLE `arcategory` (
  `id_arcategory` bigint(20) NOT NULL,
  `id_artikel` bigint(20) NOT NULL,
  `kategori` varchar(250) NOT NULL,
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
(166, 94, 'gratis', '2022-03-07 17:12:20', '2022-03-07 17:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` bigint(20) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `gambar_sampul` varchar(250) NOT NULL,
  `isi` text NOT NULL,
  `author` varchar(255) NOT NULL,
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
(94, 'yola-airdrop-220308121220', '🏂 Yola Airdrop', 'noimg.jpg', '<p>🏂 Yola Airdrop<br />\r\n🎁 Reward $10 Token Fcfs 20k User</p>\r\n\r\n<p>👉 Start Bot : Airdrop Legit</p>\r\n\r\n<p><a href=\"https://t.me/YolaFinanceAirdrop_bot?start=r0971562717\">https://t.me/YolaFinanceAirdrop_bot?start=r0971562717</a></p>\r\n\r\n<p>- Complete All Task<br />\r\n- Submit Detail<br />\r\n- Submit BSC Address<br />\r\n- Done</p>', 'Ardan Anjung', '2022-03-07 17:12:20', '2022-03-07 17:12:20');

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
(1, 'Trust Wallet', 13.33, 1, 4.70, 2, 10000000, '2021-11-17', 'https://play.google.com/store/apps/details?id=com.wallet.crypto.trustapp', '2022-01-18 06:03:31', '2022-01-18 06:03:31'),
(2, 'Safepal', 32.28, 1, 4.40, 3, 500000, '2021-11-17', 'https://play.google.com/store/apps/details?id=io.safepal.wallet', '2022-01-18 00:12:28', '2022-01-18 00:12:28'),
(3, 'Enjin Wallet', 32.18, 1, 4.40, 2, 1000000, '2021-11-17', 'https://play.google.com/store/apps/details?id=com.enjin.mobile.wallet', '2022-01-18 07:16:19', '2022-01-18 07:16:19'),
(4, 'TokenPocket', 33.12, 0, 4.30, 3, 1000000, '2021-11-17', 'https://play.google.com/store/apps/details?id=vip.mytokenpocket', '2022-01-18 07:17:39', '2022-01-18 07:17:39'),
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
(122, 'Sommelier', 'SOMM', '2022-03-02 16:31:13', '2022-03-02 16:31:13');

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
(90, 'Sommelier', 'Sommelier', '2022-03-02 16:32:07', '2022-03-02 16:32:07');

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
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Ardan Anjung', 'Bojonegoro', '085212345678', 'ardan', 'ardan@gmail.com', NULL, '$2y$10$sErCMUjG21eoyBTWcKJC5u7YY41mWTJcw9Qhxlqwo9wLrP1I4Cbim', NULL, '2022-01-17 08:45:24', '2022-01-17 08:45:24');

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
(258, 121, 21, '2022-03-02 16:32:20', '2022-03-02 16:32:20');

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
(152, 89, 21, '2022-03-02 16:32:45', '2022-03-02 16:32:45');

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
  MODIFY `id_arcategory` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

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
  MODIFY `id_jenis_coin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `jenis_network`
--
ALTER TABLE `jenis_network`
  MODIFY `id_jenis_network` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_coin`
--
ALTER TABLE `wallet_coin`
  MODIFY `id_wallet_coin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `wallet_network`
--
ALTER TABLE `wallet_network`
  MODIFY `id_wallet_network` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

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
