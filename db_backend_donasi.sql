-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2021 at 08:56 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_backend_donasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `target_donation` bigint NOT NULL,
  `max_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `slug`, `category_id`, `target_donation`, `max_date`, `description`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'BANJIR! 99 RT Terendam Banjir Hingga 1.5 M', 'banjir-99-rt-terendam-banjir-hingga-15-m', 3, 50000000, '2021-10-30', '<p><span style=\"color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">Tercatat ada</span><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;26 titik yang mengalami banjir,&nbsp;</span><span style=\"color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">bahkan di wilayah Cipinang Melayu, warga di 6 RT mengungsi sementara akibat rumah terendam banjir.</span></p>\r\n<p><span style=\"color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">Total sudah ada&nbsp;</span><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">99 RT di Jakarta terendam banjir&nbsp;</span><span style=\"color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">yang sebagian di antaranya</span><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;mencapai ketinggian 1,5 meter.</span><span style=\"color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;Dilansir dari&nbsp;</span><a style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-decoration-line: none; color: #00aeef; transition: all 0.35s ease 0s; background-color: #ffffff; font-family: \'Open Sans\', sans-serif; font-size: 14px;\" href=\"https://www.cnnindonesia.com/nasional/20210219174632-20-608544/99-rt-di-jakarta-tergenang-banjir-694-orang-mengungsi\">CNN Indonesia</a><span style=\"color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">, Pelaksana tugas (Plt) BPBD DKI Jakarta Sabdo Kurnianto menyebutkan wilayah</span><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;paling terdampak yakni Jakarta Barat dan Jakarta Timur.</span></p>', 'Xyd2vQYdL3EAlkgzuxBMydWykRksco5rMB5QFSh2.png', 1, '2021-02-28 23:38:41', '2021-02-28 23:47:23'),
(2, 'Sedekah Air untuk Gaza Sesuai Anjuran Rasulullah', 'sedekah-air-untuk-gaza-sesuai-anjuran-rasulullah', 3, 30000000, '2021-04-29', '<h4 style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-size: 16px; line-height: 1.3; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\">Saad bin Ubadah ra. bertanya kepada Rasulullah Saw, &ldquo;Wahai Rasulullah, sedekah apa yang paling utama?&rdquo; Beliau menjawab, &ldquo;Memberi air ( sedekah air ).&rdquo; (Shahih Abu Daud).</h4>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.5; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">Mungkin saudara-saudara kita di Gaza lupa bagaimana rasanya minum air bersih dari tempat penyimpanan air bersih mereka. Mungkin sudah sangat lama air yang kotor dan tercemar itu menjadi satu-satunya air yang bisa mereka minum. Mungkin sanitasi yang bersih juga tidak mereka rasakan selama bertahun-tahun lamanya.</p>', 'ci1d3cvmE9C1Mh0r6eSfbL5QuPoBuvu58dls2pCx.png', 1, '2021-02-28 23:48:44', '2021-02-28 23:53:52'),
(3, 'Pahala Tak Terputus! Bangun Masjid Terkena Gempa', 'pahala-tak-terputus-bangun-masjid-terkena-gempa', 1, 1000000000, '2021-07-22', '<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.5; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;\">Sebagaimana kehilangan rumah, Sulawesi Barat menyimpan luka mendalam ketika masjid-masjid mereka hancur akibat gempa.&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.5; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">Mereka lebih mengutamakan untuk masjid-masjid mereka bisa berdiri kembali daripada rumah sendiri.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.5; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">Dini hari itu, 15 Januari 2021, Dusun Sendana, Sulawesi Barat diguncang gempa berkekuatan 6.2 SR. Langit masih gelap. Sebagian warga tengah shalat malam, sebagian lagi terlelap.&nbsp;<span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;\">Tiba-tiba, bumi bergetar. Makin lama makin keras, hingga tanah luluh lantak. Teriakan takbir dan tangis terdengar bersahutan.&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.5; color: #4a4a4a; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\">Saat matahari terbit dan alam mulai benderang, tampaklah puing-puing bangunan yang hancur, juga isak-tangis warga yang mencari kerabatnya.&nbsp;<span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;\">Namun ada pemandangan yang lebih memilukan. Di hadapan mereka, Masjid Ar Rahman, masjid satu-satunya di kampung mereka, porak-poranda diguncang gempa.</span></p>', '88yH4zp3xtzFskz2RSHlmPAi63t1fhFDXpuqiNDB.png', 1, '2021-02-28 23:55:47', '2021-02-28 23:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Rumah Ibadah', 'rumah-ibadah', 'FQARhnigguz1HAG4YKQ065YpuP9ZQCvwiir7gtqR.png', '2021-02-27 23:32:41', '2021-02-28 20:57:52'),
(2, 'Balita', 'balita', 'Io38XAEAPFYm4caUh87Dtwoq2BrRsg9R8iXpFyKE.png', '2021-02-28 20:58:49', '2021-02-28 20:58:49'),
(3, 'Bencana Alam', 'bencana-alam', 'y4SvkYTmmjg94CBhgVbtlKvwtUdqTDEa3MfJ0TKN.png', '2021-02-28 23:18:11', '2021-02-28 23:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` int UNSIGNED NOT NULL,
  `donatur_id` int UNSIGNED NOT NULL,
  `amount` bigint NOT NULL,
  `pray` text COLLATE utf8mb4_unicode_ci,
  `snap_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','success','expired','failed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `invoice`, `campaign_id`, `donatur_id`, `amount`, `pray`, `snap_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TRX-2V9AO0P887', 3, 2, 1000000, 'Semoga Masjid-nya cepat selesai dan memberikan keberkahan untuk umat', 'b04fd6cd-4818-4e4b-bbcd-c8cbd88cc6cd', 'pending', '2021-03-15 18:33:31', '2021-03-15 18:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `donaturs`
--

CREATE TABLE `donaturs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donaturs`
--

INSERT INTO `donaturs` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kurnia Andi Nugroho', 'kurnia@gmail.com', NULL, '$2y$10$wh4F8R8d3vUTqt5hgkMS.O5SjUMgXfhih8dKw0euoI0uAT0Gqs1Oe', 'TsTtRWVmj4XkfCZGpzfqF0CKfyoZAMA7BXBDi9m6.png', NULL, '2021-03-04 00:02:12', '2021-03-05 04:44:28'),
(2, 'Yudi Purwanto', 'yudi@gmail.com', NULL, '$2y$10$OvZJOr6fWCJYzwU0I92sEu6EzQhcScHsOdwSuQhQ4vU7nYa5ydbg.', '1JHhoH3QMcSFG5DM5zsZaDULU9UhQHnUB6otyzTi.png', NULL, '2021-03-09 19:37:05', '2021-03-12 05:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_17_002827_create_categories_table', 1),
(5, '2021_02_17_004817_create_campaigns_table', 1),
(6, '2021_02_17_013015_create_donaturs_table', 1),
(7, '2021_02_17_021017_create_donations_table', 1),
(8, '2021_02_17_024346_create_sliders_table', 1),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(13, '2016_06_01_000004_create_oauth_clients_table', 3),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0bdb67c43c1d0a44db7077d19016c56d0c78a485e304e706a94533fd0aaa4694f9305442de01edc0', 2, 5, 'authToken', '[]', 0, '2021-03-11 05:20:11', '2021-03-11 05:20:11', '2022-03-11 12:20:11'),
('1070f08c532a76b5e2f969562b7d91ef92581480cf07fdd756561094b4af861f5c8728be3d64a83c', 2, 5, 'authToken', '[]', 0, '2021-03-10 18:39:25', '2021-03-10 18:39:25', '2022-03-11 01:39:25'),
('1392518bda2c2a9b8fd653e2cb520b32229cf5d278676e4f01946a092b8f3822f1999abbdec33a9f', 2, 5, 'authToken', '[]', 0, '2021-03-13 17:16:06', '2021-03-13 17:16:06', '2022-03-14 00:16:06'),
('1a934d0f1022edab300787a20e3da88b9b49360d2a0fe03964ec2b251cc2c3760877a8e6dcf8bd66', 1, 5, 'authToken', '[]', 0, '2021-03-04 00:02:12', '2021-03-04 00:02:12', '2022-03-04 07:02:12'),
('1deb3ff06578332919f222129287467a8eb0011d5dfa594242281fe8311ceacdf5726cca5658f879', 1, 5, 'authToken', '[]', 0, '2021-03-04 05:49:07', '2021-03-04 05:49:07', '2022-03-04 12:49:07'),
('38d349d09fa02abca8f15393e899484127b853f129314152c622fcc99b9f7732fd1db1094ed8d602', 1, 5, 'authToken', '[]', 0, '2021-03-04 05:49:27', '2021-03-04 05:49:27', '2022-03-04 12:49:27'),
('6be4c54ef965b4ede6e8bbc34025790b5ce164a9656a1aec0e041d6baa177d92f372f3ada24fd21c', 1, 5, 'authToken', '[]', 0, '2021-03-04 05:47:57', '2021-03-04 05:47:57', '2022-03-04 12:47:57'),
('6d4553f40ec872033a01101e6bc5e1812951af75917e1d4b675371773af6262b3f4052ca6b926011', 2, 5, 'authToken', '[]', 0, '2021-03-11 16:51:19', '2021-03-11 16:51:19', '2022-03-11 23:51:19'),
('8914e34550d10e6c2faa7aec161d0751dd610f5779113f1c5ac27aab5e862707e514a0573e884f51', 1, 5, 'authToken', '[]', 0, '2021-03-05 22:33:01', '2021-03-05 22:33:01', '2022-03-06 05:33:01'),
('8af4f7be7c7bbc22affebe573fad9169417b81019de2cfc8eecde5327298abf8b2e68f3fc1101d21', 2, 5, 'authToken', '[]', 0, '2021-03-09 19:37:05', '2021-03-09 19:37:05', '2022-03-10 02:37:05'),
('b0c421b2db36c7c13953ac4e1a176fd6247a77e521d8a86f3d1f2eed562973acb83dc03c77dc340d', 1, 5, 'authToken', '[]', 0, '2021-03-05 02:41:45', '2021-03-05 02:41:45', '2022-03-05 09:41:45'),
('c13d6cdb8aa9a65a8e14a4eea430088311df4111f41d41ea56e20a0e1cc0c4983501efcc088291af', 2, 5, 'authToken', '[]', 0, '2021-03-15 17:36:56', '2021-03-15 17:36:56', '2022-03-16 00:36:56'),
('c5fd04a85f6c36625a40597551ee6d08b7f2416ed395f1b798e3b056230aad160704c50e1314fe11', 2, 5, 'authToken', '[]', 0, '2021-03-10 18:55:48', '2021-03-10 18:55:48', '2022-03-11 01:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'FGr8fixHE0ngowMbKZsCI3ZPRswT9Y9YMW5r5hee', NULL, 'http://localhost', 1, 0, 0, '2021-03-03 19:00:35', '2021-03-03 19:00:35'),
(2, NULL, 'Laravel Password Grant Client', 'Snz4KMmJlYnMw9YH6hZG4sOgh1VNF89AJopidM8C', 'users', 'http://localhost', 0, 1, 0, '2021-03-03 19:00:35', '2021-03-03 19:00:35'),
(3, NULL, 'Laravel Personal Access Client', 'TVfzR0B1EOmtAdvItHXmXHct5xbl9DUto2fefVG6', NULL, 'http://localhost', 1, 0, 0, '2021-03-03 19:01:06', '2021-03-03 19:01:06'),
(4, NULL, 'Laravel Password Grant Client', 'ZbnjQjWlEoumdpbPXzYMBOpyQA4Jsh8HS1yfyHMR', 'users', 'http://localhost', 0, 1, 0, '2021-03-03 19:01:06', '2021-03-03 19:01:06'),
(5, NULL, 'Laravel Personal Access Client', 'mRurA72COftGFMb5kX9yx7DYSNeiCVmqZKFwDwRt', NULL, 'http://localhost', 1, 0, 0, '2021-03-03 19:01:28', '2021-03-03 19:01:28'),
(6, NULL, 'Laravel Password Grant Client', '2OIAmO6nZHqzl8EoDI3b8BxAa4lU41dXq1Xdcs13', 'users', 'http://localhost', 0, 1, 0, '2021-03-03 19:01:28', '2021-03-03 19:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-03 19:00:35', '2021-03-03 19:00:35'),
(2, 3, '2021-03-03 19:01:06', '2021-03-03 19:01:06'),
(3, 5, '2021-03-03 19:01:28', '2021-03-03 19:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'oj7V6eBuELKvqLkxenzoIAoBEyks4zz5aFg1sClf.png', '#', '2021-03-02 23:21:59', '2021-03-02 23:21:59'),
(2, '8fmbhBOOrC8SrzrMyjT2Tn3z3Kve2Q6vrV3THqyU.png', '#', '2021-03-02 23:22:07', '2021-03-02 23:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fika Ridaul Maulayya', 'admin@gmail.com', NULL, '$2y$10$H/8p10EUadNL223miVN0BOvJwdLCq5G7NhcooyktnKoZTr1kQUGPm', 'eyJpdiI6Ik9HUGxpYXVtTEhFNWFGLzhuaG5CQ0E9PSIsInZhbHVlIjoiWkZmODg1ZUFjZ05xanpYQWZzOGkyb3dNUHZZMXJrOE5XNEx4NEozd2d2UT0iLCJtYWMiOiI1YTY4YTYyYTY4NGUzYjMxMjMwNzg0Yzg5NzE3Yzg1MDRlZDg4NzdhMTg0YWU5M2E0YzEzNzljNWVhYTczYzZlIn0=', 'eyJpdiI6IlI1TVRra0JBNFl3ZVMyVDhFVTZDa0E9PSIsInZhbHVlIjoiS3czSHRzaGxYZ3poUllWcms4SXVuVGJVWWpJck5Ocm0reHpZazU0UE5PQVlZSVF4TnJrUmxsL2M2bmJkSEtRNk1ObzJVWGZGZWFjY0dnWXExN09WQnU5QmtiWDhiSHNSY3BtYjZRYTlSUG5JR2VLdXdjQXdLYVhWM05YOG44TW5LN1FKUG5TUnpDOCtqSXJacjlDUGVEK3U2b09xZTg0N25lL1hBTjFoTlB0S2M5WDRVVkFpTkZvZGxyTEJNeTJvN240NmF1TnhqWjdxenhrYXMvVVp1ay96U2VMN0xkU2Fhb2dCc1F5L2MxUTNkY2FpSjBWYjV1WlFQaHgySmM5TldFbDV0R1E4am8vQlJHSDJrWnVINVE9PSIsIm1hYyI6ImNiMGVmODYzYjM2OTI0OWRmYzUyNTkzZTI1YWE1OGJjODBlOTY0NGViMjg3Yzk1ZWYyZDQ3NjYyMGU2MzFjN2MifQ==', NULL, 'UIBJ5qfV3VTGZPQ3ghC9zEV7TD1J9zXHNM6C9cld9SYWXEqzdRwERJUItNFq', NULL, '2021-03-01 23:54:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donaturs`
--
ALTER TABLE `donaturs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `donaturs_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donaturs`
--
ALTER TABLE `donaturs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
