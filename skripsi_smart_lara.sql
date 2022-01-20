-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 05:23 PM
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
(14, 'Maiar Wallet', 68.00, 0, 4.20, 2, 500000, '2021-12-15', 'https://play.google.com/store/apps/details?id=com.elrond.maiar.wallet', '2022-01-20 15:58:17', '2022-01-20 15:58:17');

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
(66, 'Stellar', 'XLM', '2022-01-20 07:17:54', '2022-01-20 07:17:54'),
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
(83, 'Bitcoin', 'BTC', '2022-01-20 07:26:32', '2022-01-20 07:26:32');

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
(48, 'Ziliqa', 'ZIL', '2022-01-20 15:20:38', '2022-01-20 15:20:38');

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
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `crypto_wallet`
--
ALTER TABLE `crypto_wallet`
  MODIFY `id_wallet` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_coin`
--
ALTER TABLE `jenis_coin`
  MODIFY `id_jenis_coin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `jenis_network`
--
ALTER TABLE `jenis_network`
  MODIFY `id_jenis_network` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id_wallet_coin` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_network`
--
ALTER TABLE `wallet_network`
  MODIFY `id_wallet_network` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
