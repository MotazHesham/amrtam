-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2024 at 01:19 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amrtmco_amrtm`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_uss`
--

CREATE TABLE `about_uss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vision` longtext COLLATE utf8mb4_unicode_ci,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `morals` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_word` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_uss`
--

INSERT INTO `about_uss` (`id`, `vision`, `message`, `morals`, `manager_word`, `email`, `website`, `phone_number`, `phone_number_2`, `address`, `twitter`, `facebook`, `instagram`, `linkedin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'الوصول بعمالئنا إلى منطقة الأمان في مواجهة حدة تناُفسّية األسواق', 'الالتزام بالعقود - الشفافية في المعلومات- القوة والامانة في تقديم الاستشارات وتنفيذها', 'الوصول بعمالئنا إلى منطقة األمان في مواجهة حدة تناُفسّية األسواق', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.', 'mail.example@gmail.com', 'www.yourdomain.com', '(+91)-9876XXXXX', '(+91)-987654XXXX', 'المملكة العربية السعودية  جده', 'https://twitter.com/salehalshamran/status/1240304484766617603?lang=ar', 'https://www.facebook.com/salehalshamran2/', 'https://www.instagram.com/saleh__alshamrani/?igshid=YmMyMTA2M2Y%3D', 'https://sa.linkedin.com/in/%D8%A7%D9%84%D9%85%D8%B3%D8%AA%D8%B4%D8%A7%D8%B1-%D8%B5%D8%A7%D9%84%D8%AD-%D9%86%D8%A7%D8%B5%D8%B1-%D8%A7%D9%84%D8%B4%D9%85%D8%B1%D8%A7%D9%86%D9%8A-6b61b4104', NULL, '2024-01-06 14:08:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `host` varchar(46) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(1, 'audit:created', 2, 'App\\Models\\User#2', NULL, '{\"name\":\"Len Obrien\",\"email\":\"kilan@mailinator.com\",\"phone_number\":\"+1 (644) 548-4236\",\"user_type\":\"client\",\"updated_at\":\"2023-06-22 15:11:26\",\"created_at\":\"2023-06-22 15:11:26\",\"id\":2}', '41.43.155.147', '2023-06-22 19:11:26', '2023-06-22 19:11:26'),
(2, 'audit:created', 1, 'App\\Models\\RequestService#1', NULL, '{\"user_id\":2,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-06-22 15:11:26\",\"created_at\":\"2023-06-22 15:11:26\",\"id\":1,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"media\":[]}', '41.43.155.147', '2023-06-22 19:11:26', '2023-06-22 19:11:26'),
(3, 'audit:updated', 1, 'App\\Models\\RequestService#1', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-06-22 15:11:39\"}', '41.43.155.147', '2023-06-22 19:11:39', '2023-06-22 19:11:39'),
(4, 'audit:updated', 1, 'App\\Models\\RequestService#1', 1, '{\"cost_1\":\"2\",\"cost_2\":\"3\",\"start_date\":\"2023-06-22\",\"end_date\":\"2023-06-28\",\"updated_at\":\"2023-06-22 15:11:50\"}', '41.43.155.147', '2023-06-22 19:11:50', '2023-06-22 19:11:50'),
(5, 'audit:updated', 1, 'App\\Models\\RequestService#1', 2, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-06-22 15:11:59\"}', '41.43.155.147', '2023-06-22 19:11:59', '2023-06-22 19:11:59'),
(6, 'audit:created', 3, 'App\\Models\\User#3', 1, '{\"name\":\"Adria Mitchell\",\"email\":\"byvuq@mailinator.com\",\"phone_number\":\"+1 (281) 203-5134\",\"user_type\":\"consultant\",\"updated_at\":\"2023-06-22 15:12:36\",\"created_at\":\"2023-06-22 15:12:36\",\"id\":3}', '41.43.155.147', '2023-06-22 19:12:36', '2023-06-22 19:12:36'),
(7, 'audit:updated', 1, 'App\\Models\\RequestService#1', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-06-22 15:12:49\",\"consultant_id\":\"3\"}', '41.43.155.147', '2023-06-22 19:12:49', '2023-06-22 19:12:49'),
(8, 'audit:updated', 3, 'App\\Models\\User#3', 1, '{\"email\":\"test2@test.com\",\"password\":\"$2y$10$N2Nd4346GV4r6MkLeYM1Le6kZJOZ8ruSwBg.7d\\/SoSw3EX\\/YuGa3q\",\"updated_at\":\"2023-06-24 13:39:02\"}', '41.43.155.147', '2023-06-24 17:39:02', '2023-06-24 17:39:02'),
(9, 'audit:created', 4, 'App\\Models\\User#4', NULL, '{\"name\":\"Quinn Chandler\",\"email\":\"test@test.com\",\"phone_number\":\"+1 (754) 356-1167\",\"user_type\":\"client\",\"updated_at\":\"2023-06-24 13:39:45\",\"created_at\":\"2023-06-24 13:39:45\",\"id\":4}', '41.43.155.147', '2023-06-24 17:39:45', '2023-06-24 17:39:45'),
(10, 'audit:created', 2, 'App\\Models\\RequestService#2', NULL, '{\"user_id\":4,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-06-24 13:39:45\",\"created_at\":\"2023-06-24 13:39:45\",\"id\":2,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"media\":[]}', '41.43.155.147', '2023-06-24 17:39:45', '2023-06-24 17:39:45'),
(11, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-06-24 13:41:31\"}', '41.43.155.147', '2023-06-24 17:41:31', '2023-06-24 17:41:31'),
(12, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"cost_1\":\"50\",\"cost_2\":\"100\",\"start_date\":\"2023-06-24\",\"end_date\":\"2023-06-28\",\"updated_at\":\"2023-06-24 13:42:23\"}', '41.43.155.147', '2023-06-24 17:42:23', '2023-06-24 17:42:23'),
(13, 'audit:updated', 2, 'App\\Models\\RequestService#2', 4, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-06-24 13:43:20\"}', '41.43.155.147', '2023-06-24 17:43:20', '2023-06-24 17:43:20'),
(14, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-06-24 13:47:51\",\"consultant_id\":\"3\"}', '41.43.155.147', '2023-06-24 17:47:51', '2023-06-24 17:47:51'),
(15, 'audit:updated', 2, 'App\\Models\\RequestService#2', 3, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-06-24 13:53:58\",\"updated_at\":\"2023-06-24 13:53:58\"}', '41.43.155.147', '2023-06-24 17:53:58', '2023-06-24 17:53:58'),
(16, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-06-24 13:55:06\"}', '41.43.155.147', '2023-06-24 17:55:06', '2023-06-24 17:55:06'),
(17, 'audit:created', 3, 'App\\Models\\RequestService#3', 4, '{\"user_id\":4,\"service_id\":\"3\",\"updated_at\":\"2023-06-24 14:04:46\",\"created_at\":\"2023-06-24 14:04:46\",\"id\":3,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"media\":[]}', '41.43.155.147', '2023-06-24 18:04:46', '2023-06-24 18:04:46'),
(18, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-06-24 14:04:54\"}', '41.43.155.147', '2023-06-24 18:04:54', '2023-06-24 18:04:54'),
(19, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"cost_1\":\"12\",\"cost_2\":\"12\",\"start_date\":\"2023-06-24\",\"end_date\":\"2023-06-04\",\"updated_at\":\"2023-06-24 14:05:21\"}', '41.43.155.147', '2023-06-24 18:05:21', '2023-06-24 18:05:21'),
(20, 'audit:updated', 3, 'App\\Models\\RequestService#3', 4, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-06-24 14:05:31\"}', '41.43.155.147', '2023-06-24 18:05:31', '2023-06-24 18:05:31'),
(21, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-06-24 14:07:35\",\"consultant_id\":\"3\"}', '41.43.155.147', '2023-06-24 18:07:36', '2023-06-24 18:07:36'),
(22, 'audit:created', 4, 'App\\Models\\RequestService#4', 4, '{\"user_id\":4,\"service_id\":\"1\",\"updated_at\":\"2023-06-26 10:34:08\",\"created_at\":\"2023-06-26 10:34:08\",\"id\":4,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"media\":[]}', '41.43.155.147', '2023-06-26 14:34:08', '2023-06-26 14:34:08'),
(23, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-06-26 10:34:13\"}', '41.43.155.147', '2023-06-26 14:34:13', '2023-06-26 14:34:13'),
(24, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"cost_1\":\"123\",\"cost_2\":\"123\",\"start_date\":\"2023-06-26\",\"end_date\":\"2023-06-21\",\"updated_at\":\"2023-06-26 10:34:27\"}', '41.43.155.147', '2023-06-26 14:34:27', '2023-06-26 14:34:27'),
(25, 'audit:updated', 4, 'App\\Models\\RequestService#4', 4, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-06-26 10:34:35\"}', '41.43.155.147', '2023-06-26 14:34:35', '2023-06-26 14:34:35'),
(26, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-06-26 10:34:49\",\"consultant_id\":\"3\"}', '41.43.155.147', '2023-06-26 14:34:49', '2023-06-26 14:34:49'),
(27, 'audit:updated', 4, 'App\\Models\\RequestService#4', 3, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-06-26 10:36:25\",\"updated_at\":\"2023-06-26 10:36:25\"}', '41.43.155.147', '2023-06-26 14:36:25', '2023-06-26 14:36:25'),
(28, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-06-26 10:42:33\"}', '41.43.155.147', '2023-06-26 14:42:33', '2023-06-26 14:42:33'),
(29, 'audit:created', 5, 'App\\Models\\User#5', 1, '{\"name\":\"\\u0645\\u062d\\u0627\\u0633\\u0628\",\"email\":\"accountant@gmail.com\",\"phone_number\":\"1231231232132\",\"updated_at\":\"2023-06-26 11:01:58\",\"created_at\":\"2023-06-26 11:01:58\",\"id\":5}', '41.43.155.147', '2023-06-26 15:01:58', '2023-06-26 15:01:58'),
(30, 'audit:created', 6, 'App\\Models\\User#6', 1, '{\"name\":\"\\u062f\\/\\u0647\\u0646\\u064a\\u062f\\u0629 \\u0646\\u0632\\u064a\\u0647 \\u0642\\u062f\\u0648\\u0631\\u064a\",\"email\":\"hnida@gmail.com\",\"phone_number\":\"111111111\",\"user_type\":\"consultant\",\"updated_at\":\"2023-06-27 13:09:24\",\"created_at\":\"2023-06-27 13:09:24\",\"id\":6}', '102.56.68.47', '2023-06-27 17:09:24', '2023-06-27 17:09:24'),
(31, 'audit:updated', 2, 'App\\Models\\Service#2', 1, '{\"name\":\"\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c \\u062a\\u0637\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u0632 \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u064a\",\"updated_at\":\"2023-06-27 13:19:36\"}', '102.56.68.47', '2023-06-27 17:19:36', '2023-06-27 17:19:36'),
(32, 'audit:created', 1, 'App\\Models\\Quotation#1', NULL, '{\"the_company\":\"Mcguire and Sweeney Traders\",\"name\":\"Ria Kim\",\"position\":\"other\",\"phone_number\":\"Thomas Beck\",\"email\":\"lyraruvini@mailinator.com\",\"service_id\":\"2\",\"updated_at\":\"2023-06-27 13:38:56\",\"created_at\":\"2023-06-27 13:38:56\",\"id\":1}', '102.56.68.47', '2023-06-27 17:38:56', '2023-06-27 17:38:56'),
(33, 'audit:created', 7, 'App\\Models\\User#7', NULL, '{\"name\":\"Jane Mays\",\"email\":\"cowad@mailinator.com\",\"phone_number\":\"+1 (337) 642-9236\",\"user_type\":\"client\",\"updated_at\":\"2023-07-03 11:07:07\",\"created_at\":\"2023-07-03 11:07:07\",\"id\":7}', '41.34.254.67', '2023-07-03 15:07:07', '2023-07-03 15:07:07'),
(34, 'audit:created', 1, 'App\\Models\\RequestService#1', NULL, '{\"user_id\":7,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-07-03 11:07:07\",\"created_at\":\"2023-07-03 11:07:07\",\"id\":1,\"contract\":{\"id\":7,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"1\",\"uuid\":\"a3b38751-bded-4128-833e-cbdf6e5017f9\",\"collection_name\":\"contract\",\"name\":\"649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81\",\"file_name\":\"649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"1152135\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"1\",\"created_at\":\"2023-06-22T15:11:50.000000Z\",\"updated_at\":\"2023-06-22T15:11:51.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/7\\/649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/7\\/conversions\\/649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81-preview.jpg\"},\"cost_1_file\":{\"id\":8,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"1\",\"uuid\":\"ff99f0b0-48e4-40c4-a1d6-d8e5491b2a28\",\"collection_name\":\"cost_1_file\",\"name\":\"649464c50ced6_assassins-creed-hd-wallpaper\",\"file_name\":\"649464c50ced6_assassins-creed-hd-wallpaper.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"1177669\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"2\",\"created_at\":\"2023-06-22T15:12:06.000000Z\",\"updated_at\":\"2023-06-22T15:12:06.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/8\\/649464c50ced6_assassins-creed-hd-wallpaper.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/8\\/conversions\\/649464c50ced6_assassins-creed-hd-wallpaper-preview.jpg\"},\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[{\"id\":8,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"1\",\"uuid\":\"ff99f0b0-48e4-40c4-a1d6-d8e5491b2a28\",\"collection_name\":\"cost_1_file\",\"name\":\"649464c50ced6_assassins-creed-hd-wallpaper\",\"file_name\":\"649464c50ced6_assassins-creed-hd-wallpaper.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"1177669\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"2\",\"created_at\":\"2023-06-22T15:12:06.000000Z\",\"updated_at\":\"2023-06-22T15:12:06.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/8\\/649464c50ced6_assassins-creed-hd-wallpaper.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/8\\/conversions\\/649464c50ced6_assassins-creed-hd-wallpaper-preview.jpg\"},{\"id\":7,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"1\",\"uuid\":\"a3b38751-bded-4128-833e-cbdf6e5017f9\",\"collection_name\":\"contract\",\"name\":\"649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81\",\"file_name\":\"649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"1152135\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"1\",\"created_at\":\"2023-06-22T15:11:50.000000Z\",\"updated_at\":\"2023-06-22T15:11:51.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/7\\/649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/7\\/conversions\\/649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81-preview.jpg\"}]}', '41.34.254.67', '2023-07-03 15:07:07', '2023-07-03 15:07:07'),
(35, 'audit:updated', 1, 'App\\Models\\RequestService#1', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-07-03 11:07:18\"}', '41.34.254.67', '2023-07-03 15:07:18', '2023-07-03 15:07:18'),
(36, 'audit:updated', 1, 'App\\Models\\RequestService#1', 7, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-07-03 11:07:31\"}', '41.34.254.67', '2023-07-03 15:07:31', '2023-07-03 15:07:31'),
(37, 'audit:updated', 1, 'App\\Models\\RequestService#1', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-07-03 11:07:45\",\"consultant_id\":\"6\"}', '41.34.254.67', '2023-07-03 15:07:45', '2023-07-03 15:07:45'),
(38, 'audit:created', 8, 'App\\Models\\User#8', NULL, '{\"name\":\"Nolan Huffman\",\"email\":\"cixyfucu@mailinator.com\",\"phone_number\":\"+1 (395) 442-2982\",\"user_type\":\"client\",\"updated_at\":\"2023-07-04 10:44:51\",\"created_at\":\"2023-07-04 10:44:51\",\"id\":8}', '41.34.254.67', '2023-07-04 14:44:51', '2023-07-04 14:44:51'),
(39, 'audit:created', 2, 'App\\Models\\RequestService#2', NULL, '{\"user_id\":8,\"service_id\":\"2\",\"status\":\"pending\",\"updated_at\":\"2023-07-04 10:44:51\",\"created_at\":\"2023-07-04 10:44:51\",\"id\":2,\"contract\":{\"id\":11,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"2\",\"uuid\":\"cd3cc85d-3d11-4070-b928-d6f069bf6369\",\"collection_name\":\"contract\",\"name\":\"6496f2b9f28f0_831927-kush-wallpaper-hd-1920x1080-4k\",\"file_name\":\"6496f2b9f28f0_831927-kush-wallpaper-hd-1920x1080-4k.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"520336\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"1\",\"created_at\":\"2023-06-24T13:42:23.000000Z\",\"updated_at\":\"2023-06-24T13:42:24.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/11\\/6496f2b9f28f0_831927-kush-wallpaper-hd-1920x1080-4k.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/11\\/conversions\\/6496f2b9f28f0_831927-kush-wallpaper-hd-1920x1080-4k-preview.jpg\"},\"cost_1_file\":{\"id\":12,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"2\",\"uuid\":\"818519da-826b-49cf-9edf-3e052a63c771\",\"collection_name\":\"cost_1_file\",\"name\":\"6496f38b2f19a_982543f91b73d5fdd706cff5ce3fa9eb\",\"file_name\":\"6496f38b2f19a_982543f91b73d5fdd706cff5ce3fa9eb.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"411589\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"2\",\"created_at\":\"2023-06-24T13:46:31.000000Z\",\"updated_at\":\"2023-06-24T13:46:32.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/12\\/6496f38b2f19a_982543f91b73d5fdd706cff5ce3fa9eb.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/12\\/conversions\\/6496f38b2f19a_982543f91b73d5fdd706cff5ce3fa9eb-preview.jpg\"},\"cost_2_file\":{\"id\":17,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"2\",\"uuid\":\"74e66d38-e731-427c-bbf4-46c6044b495c\",\"collection_name\":\"cost_2_file\",\"name\":\"6496f58bef9ed_assassins-creed-hd-wallpaper\",\"file_name\":\"6496f58bef9ed_assassins-creed-hd-wallpaper.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"1177669\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"3\",\"created_at\":\"2023-06-24T13:54:55.000000Z\",\"updated_at\":\"2023-06-24T13:54:56.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/17\\/6496f58bef9ed_assassins-creed-hd-wallpaper.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/17\\/conversions\\/6496f58bef9ed_assassins-creed-hd-wallpaper-preview.jpg\"},\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[{\"id\":11,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"2\",\"uuid\":\"cd3cc85d-3d11-4070-b928-d6f069bf6369\",\"collection_name\":\"contract\",\"name\":\"6496f2b9f28f0_831927-kush-wallpaper-hd-1920x1080-4k\",\"file_name\":\"6496f2b9f28f0_831927-kush-wallpaper-hd-1920x1080-4k.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"520336\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"1\",\"created_at\":\"2023-06-24T13:42:23.000000Z\",\"updated_at\":\"2023-06-24T13:42:24.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/11\\/6496f2b9f28f0_831927-kush-wallpaper-hd-1920x1080-4k.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/11\\/conversions\\/6496f2b9f28f0_831927-kush-wallpaper-hd-1920x1080-4k-preview.jpg\"},{\"id\":12,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"2\",\"uuid\":\"818519da-826b-49cf-9edf-3e052a63c771\",\"collection_name\":\"cost_1_file\",\"name\":\"6496f38b2f19a_982543f91b73d5fdd706cff5ce3fa9eb\",\"file_name\":\"6496f38b2f19a_982543f91b73d5fdd706cff5ce3fa9eb.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"411589\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"2\",\"created_at\":\"2023-06-24T13:46:31.000000Z\",\"updated_at\":\"2023-06-24T13:46:32.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/12\\/6496f38b2f19a_982543f91b73d5fdd706cff5ce3fa9eb.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/12\\/conversions\\/6496f38b2f19a_982543f91b73d5fdd706cff5ce3fa9eb-preview.jpg\"},{\"id\":17,\"model_type\":\"App\\\\Models\\\\RequestService\",\"model_id\":\"2\",\"uuid\":\"74e66d38-e731-427c-bbf4-46c6044b495c\",\"collection_name\":\"cost_2_file\",\"name\":\"6496f58bef9ed_assassins-creed-hd-wallpaper\",\"file_name\":\"6496f58bef9ed_assassins-creed-hd-wallpaper.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":\"1177669\",\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":\"3\",\"created_at\":\"2023-06-24T13:54:55.000000Z\",\"updated_at\":\"2023-06-24T13:54:56.000000Z\",\"original_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/17\\/6496f58bef9ed_assassins-creed-hd-wallpaper.jpg\",\"preview_url\":\"http:\\/\\/hdac.integratedvisions-sa.com\\/public\\/storage\\/17\\/conversions\\/6496f58bef9ed_assassins-creed-hd-wallpaper-preview.jpg\"}]}', '41.34.254.67', '2023-07-04 14:44:51', '2023-07-04 14:44:51'),
(40, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-07-04 10:45:13\"}', '41.34.254.67', '2023-07-04 14:45:13', '2023-07-04 14:45:13'),
(41, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"cost_1\":\"10\",\"cost_2\":\"20\",\"start_date\":\"2023-07-04\",\"end_date\":\"2023-07-04\",\"updated_at\":\"2023-07-04 10:48:03\"}', '41.34.254.67', '2023-07-04 14:48:03', '2023-07-04 14:48:03'),
(42, 'audit:updated', 2, 'App\\Models\\RequestService#2', 8, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-07-04 10:48:12\"}', '41.34.254.67', '2023-07-04 14:48:12', '2023-07-04 14:48:12'),
(43, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-07-04 10:48:28\",\"consultant_id\":\"6\"}', '41.34.254.67', '2023-07-04 14:48:28', '2023-07-04 14:48:28'),
(44, 'audit:updated', 6, 'App\\Models\\User#6', 1, '{\"password\":\"$2y$10$5uOtzBQRksX9UR9tRSEn9.fHzRTKeB7CTyVS1ITCAa6UqDLsp7ZSW\",\"updated_at\":\"2023-07-04 10:49:23\"}', '41.34.254.67', '2023-07-04 14:49:23', '2023-07-04 14:49:23'),
(45, 'audit:updated', 2, 'App\\Models\\RequestService#2', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-07-04 10:50:06\",\"updated_at\":\"2023-07-04 10:50:07\"}', '41.34.254.67', '2023-07-04 14:50:07', '2023-07-04 14:50:07'),
(46, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-07-04 10:50:46\"}', '41.34.254.67', '2023-07-04 14:50:46', '2023-07-04 14:50:46'),
(47, 'audit:updated', 2, 'App\\Models\\RequestService#2', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-07-04 10:51:20\"}', '41.34.254.67', '2023-07-04 14:51:20', '2023-07-04 14:51:20'),
(48, 'audit:created', 9, 'App\\Models\\User#9', NULL, '{\"name\":\"Octavius Rosales\",\"email\":\"xupedih@mailinator.com\",\"phone_number\":\"+1 (644) 276-2075\",\"user_type\":\"client\",\"updated_at\":\"2023-07-04 13:28:12\",\"created_at\":\"2023-07-04 13:28:12\",\"id\":9}', '41.34.254.67', '2023-07-04 17:28:12', '2023-07-04 17:28:12'),
(49, 'audit:created', 3, 'App\\Models\\RequestService#3', NULL, '{\"user_id\":9,\"service_id\":\"2\",\"status\":\"pending\",\"updated_at\":\"2023-07-04 13:28:12\",\"created_at\":\"2023-07-04 13:28:12\",\"id\":3,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '41.34.254.67', '2023-07-04 17:28:12', '2023-07-04 17:28:12'),
(50, 'audit:created', 10, 'App\\Models\\User#10', 1, '{\"name\":\"Vanna Hamilton\",\"email\":\"juko@mailinator.com\",\"phone_number\":\"+1 (751) 193-9419\",\"user_type\":\"consultant\",\"updated_at\":\"2023-07-04 13:30:27\",\"created_at\":\"2023-07-04 13:30:27\",\"id\":10}', '41.34.254.67', '2023-07-04 17:30:27', '2023-07-04 17:30:27'),
(51, 'audit:created', 11, 'App\\Models\\User#11', 1, '{\"name\":\"Eden Buckley\",\"email\":\"hywybir@mailinator.com\",\"phone_number\":\"+1 (522) 554-6801\",\"user_type\":\"consultant\",\"updated_at\":\"2023-07-04 13:31:27\",\"created_at\":\"2023-07-04 13:31:27\",\"id\":11}', '41.34.254.67', '2023-07-04 17:31:27', '2023-07-04 17:31:27'),
(52, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-07-04 13:35:53\"}', '41.34.254.67', '2023-07-04 17:35:53', '2023-07-04 17:35:53'),
(53, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"cost_1\":\"20\",\"cost_2\":\"30\",\"start_date\":\"2023-07-04\",\"end_date\":\"2023-07-04\",\"updated_at\":\"2023-07-04 13:36:05\"}', '41.34.254.67', '2023-07-04 17:36:05', '2023-07-04 17:36:05'),
(54, 'audit:updated', 3, 'App\\Models\\RequestService#3', 9, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-07-04 13:36:12\"}', '41.34.254.67', '2023-07-04 17:36:12', '2023-07-04 17:36:12'),
(55, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-07-04 13:36:29\",\"consultant_id\":\"6\"}', '41.34.254.67', '2023-07-04 17:36:29', '2023-07-04 17:36:29'),
(56, 'audit:updated', 3, 'App\\Models\\RequestService#3', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-07-04 13:37:55\",\"updated_at\":\"2023-07-04 13:37:56\"}', '41.34.254.67', '2023-07-04 17:37:56', '2023-07-04 17:37:56'),
(57, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-07-04 13:40:21\"}', '41.34.254.67', '2023-07-04 17:40:21', '2023-07-04 17:40:21'),
(58, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-07-04 13:43:57\"}', '41.34.254.67', '2023-07-04 17:43:57', '2023-07-04 17:43:57'),
(59, 'audit:updated', 3, 'App\\Models\\RequestService#3', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-07-04 13:45:41\"}', '41.34.254.67', '2023-07-04 17:45:41', '2023-07-04 17:45:41'),
(60, 'audit:created', 12, 'App\\Models\\User#12', NULL, '{\"name\":\"test\",\"email\":\"test@test.com00\",\"phone_number\":\"010\",\"user_type\":\"client\",\"updated_at\":\"2023-07-06 11:15:54\",\"created_at\":\"2023-07-06 11:15:54\",\"id\":12}', '41.34.254.67', '2023-07-06 15:15:54', '2023-07-06 15:15:54'),
(61, 'audit:created', 4, 'App\\Models\\RequestService#4', NULL, '{\"user_id\":12,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-07-06 11:15:54\",\"created_at\":\"2023-07-06 11:15:54\",\"id\":4,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '41.34.254.67', '2023-07-06 15:15:54', '2023-07-06 15:15:54'),
(62, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-07-06 11:16:47\"}', '41.34.254.67', '2023-07-06 15:16:47', '2023-07-06 15:16:47'),
(63, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"cost_1\":\"20\",\"cost_2\":\"30\",\"start_date\":\"2023-07-06\",\"end_date\":\"2023-07-06\",\"updated_at\":\"2023-07-06 11:18:05\"}', '41.34.254.67', '2023-07-06 15:18:05', '2023-07-06 15:18:05'),
(64, 'audit:updated', 4, 'App\\Models\\RequestService#4', 12, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-07-06 11:18:34\"}', '41.34.254.67', '2023-07-06 15:18:34', '2023-07-06 15:18:34'),
(65, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-07-06 11:19:28\",\"consultant_id\":\"6\"}', '41.34.254.67', '2023-07-06 15:19:28', '2023-07-06 15:19:28'),
(66, 'audit:updated', 4, 'App\\Models\\RequestService#4', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-07-06 11:22:34\",\"updated_at\":\"2023-07-06 11:22:35\"}', '41.34.254.67', '2023-07-06 15:22:35', '2023-07-06 15:22:35'),
(67, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-07-06 11:27:45\"}', '41.34.254.67', '2023-07-06 15:27:45', '2023-07-06 15:27:45'),
(68, 'audit:updated', 4, 'App\\Models\\RequestService#4', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-07-06 11:29:27\"}', '41.34.254.67', '2023-07-06 15:29:27', '2023-07-06 15:29:27'),
(69, 'audit:created', 13, 'App\\Models\\User#13', NULL, '{\"name\":\"Deirdre Donovan\",\"email\":\"suvigefibe@mailinator.com\",\"phone_number\":\"+1 (942) 428-8057\",\"user_type\":\"client\",\"updated_at\":\"2023-07-06 13:56:57\",\"created_at\":\"2023-07-06 13:56:57\",\"id\":13}', '41.34.254.67', '2023-07-06 17:56:57', '2023-07-06 17:56:57'),
(70, 'audit:created', 5, 'App\\Models\\RequestService#5', NULL, '{\"user_id\":13,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-07-06 13:56:57\",\"created_at\":\"2023-07-06 13:56:57\",\"id\":5,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '41.34.254.67', '2023-07-06 17:56:57', '2023-07-06 17:56:57'),
(71, 'audit:updated', 5, 'App\\Models\\RequestService#5', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-07-06 13:57:32\"}', '41.34.254.67', '2023-07-06 17:57:32', '2023-07-06 17:57:32'),
(72, 'audit:updated', 5, 'App\\Models\\RequestService#5', 1, '{\"cost_1\":\"50\",\"cost_2\":\"60\",\"start_date\":\"2023-07-06\",\"end_date\":\"2023-07-06\",\"updated_at\":\"2023-07-06 13:58:31\"}', '41.34.254.67', '2023-07-06 17:58:31', '2023-07-06 17:58:31'),
(73, 'audit:updated', 5, 'App\\Models\\RequestService#5', 13, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-07-06 13:58:57\"}', '41.34.254.67', '2023-07-06 17:58:57', '2023-07-06 17:58:57'),
(74, 'audit:updated', 5, 'App\\Models\\RequestService#5', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-07-06 14:00:01\",\"consultant_id\":\"6\"}', '41.34.254.67', '2023-07-06 18:00:01', '2023-07-06 18:00:01'),
(75, 'audit:updated', 5, 'App\\Models\\RequestService#5', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-07-06 14:01:57\",\"updated_at\":\"2023-07-06 14:01:57\"}', '41.34.254.67', '2023-07-06 18:01:57', '2023-07-06 18:01:57'),
(76, 'audit:updated', 5, 'App\\Models\\RequestService#5', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-07-06 14:03:08\"}', '41.34.254.67', '2023-07-06 18:03:08', '2023-07-06 18:03:08'),
(77, 'audit:updated', 5, 'App\\Models\\RequestService#5', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-07-06 14:03:56\"}', '41.34.254.67', '2023-07-06 18:03:56', '2023-07-06 18:03:56'),
(78, 'audit:created', 14, 'App\\Models\\User#14', NULL, '{\"name\":\"test\",\"email\":\"rtetete@dasd.asdas\",\"phone_number\":\"0102311131\",\"user_type\":\"client\",\"updated_at\":\"2023-07-13 09:50:25\",\"created_at\":\"2023-07-13 09:50:25\",\"id\":14}', '156.164.215.60', '2023-07-13 13:50:25', '2023-07-13 13:50:25'),
(79, 'audit:created', 6, 'App\\Models\\RequestService#6', NULL, '{\"user_id\":14,\"service_id\":\"3\",\"status\":\"pending\",\"updated_at\":\"2023-07-13 09:50:25\",\"created_at\":\"2023-07-13 09:50:25\",\"id\":6,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.164.215.60', '2023-07-13 13:50:25', '2023-07-13 13:50:25'),
(80, 'audit:updated', 6, 'App\\Models\\RequestService#6', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-07-13 09:50:53\"}', '156.164.215.60', '2023-07-13 13:50:53', '2023-07-13 13:50:53'),
(81, 'audit:updated', 6, 'App\\Models\\RequestService#6', 1, '{\"cost_1\":\"50\",\"cost_2\":\"10\",\"start_date\":\"2023-07-13\",\"end_date\":\"2023-07-14\",\"updated_at\":\"2023-07-13 09:51:41\"}', '156.164.215.60', '2023-07-13 13:51:41', '2023-07-13 13:51:41'),
(82, 'audit:updated', 6, 'App\\Models\\RequestService#6', 14, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-07-13 09:52:22\"}', '156.164.215.60', '2023-07-13 13:52:22', '2023-07-13 13:52:22'),
(83, 'audit:updated', 6, 'App\\Models\\RequestService#6', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-07-13 09:53:47\",\"consultant_id\":\"6\"}', '156.164.215.60', '2023-07-13 13:53:47', '2023-07-13 13:53:47'),
(84, 'audit:updated', 6, 'App\\Models\\RequestService#6', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-07-13 09:56:15\",\"updated_at\":\"2023-07-13 09:56:16\"}', '156.164.215.60', '2023-07-13 13:56:16', '2023-07-13 13:56:16'),
(85, 'audit:updated', 6, 'App\\Models\\RequestService#6', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-07-13 09:57:38\"}', '156.164.215.60', '2023-07-13 13:57:38', '2023-07-13 13:57:38'),
(86, 'audit:updated', 6, 'App\\Models\\RequestService#6', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-07-13 09:58:21\"}', '156.164.215.60', '2023-07-13 13:58:21', '2023-07-13 13:58:21'),
(87, 'audit:created', 7, 'App\\Models\\RequestService#7', 14, '{\"user_id\":14,\"service_id\":\"4\",\"updated_at\":\"2023-07-13 10:01:45\",\"created_at\":\"2023-07-13 10:01:45\",\"id\":7,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.164.215.60', '2023-07-13 14:01:45', '2023-07-13 14:01:45'),
(88, 'audit:created', 15, 'App\\Models\\User#15', NULL, '{\"name\":\"testtt\",\"email\":\"qweqwe@qew.qwe\",\"phone_number\":\"0156981881\",\"user_type\":\"client\",\"updated_at\":\"2023-07-18 11:23:14\",\"created_at\":\"2023-07-18 11:23:14\",\"id\":15}', '156.197.190.44', '2023-07-18 15:23:14', '2023-07-18 15:23:14'),
(89, 'audit:created', 8, 'App\\Models\\RequestService#8', NULL, '{\"user_id\":15,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-07-18 11:23:14\",\"created_at\":\"2023-07-18 11:23:14\",\"id\":8,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.190.44', '2023-07-18 15:23:14', '2023-07-18 15:23:14'),
(90, 'audit:updated', 8, 'App\\Models\\RequestService#8', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-07-18 11:23:56\"}', '156.197.190.44', '2023-07-18 15:23:56', '2023-07-18 15:23:56'),
(91, 'audit:updated', 8, 'App\\Models\\RequestService#8', 1, '{\"cost_1\":\"60\",\"cost_2\":\"70\",\"start_date\":\"2023-07-18\",\"end_date\":\"2023-07-25\",\"updated_at\":\"2023-07-18 11:24:44\"}', '156.197.190.44', '2023-07-18 15:24:44', '2023-07-18 15:24:44'),
(92, 'audit:updated', 8, 'App\\Models\\RequestService#8', 15, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-07-18 11:25:19\"}', '156.197.190.44', '2023-07-18 15:25:19', '2023-07-18 15:25:19'),
(93, 'audit:updated', 8, 'App\\Models\\RequestService#8', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-07-18 11:26:32\",\"consultant_id\":\"6\"}', '156.197.190.44', '2023-07-18 15:26:32', '2023-07-18 15:26:32'),
(94, 'audit:updated', 8, 'App\\Models\\RequestService#8', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-07-18 11:28:27\",\"updated_at\":\"2023-07-18 11:28:27\"}', '156.197.190.44', '2023-07-18 15:28:27', '2023-07-18 15:28:27'),
(95, 'audit:updated', 8, 'App\\Models\\RequestService#8', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-07-18 11:30:46\"}', '156.197.190.44', '2023-07-18 15:30:46', '2023-07-18 15:30:46'),
(96, 'audit:updated', 8, 'App\\Models\\RequestService#8', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-07-18 11:31:48\"}', '156.197.190.44', '2023-07-18 15:31:48', '2023-07-18 15:31:48'),
(97, 'audit:created', 16, 'App\\Models\\User#16', NULL, '{\"name\":\"Angelica Combs\",\"email\":\"refyw@mailinator.com\",\"phone_number\":\"+1 (843) 266-3865\",\"user_type\":\"client\",\"updated_at\":\"2023-08-03 11:14:06\",\"created_at\":\"2023-08-03 11:14:06\",\"id\":16}', '156.197.224.160', '2023-08-03 15:14:06', '2023-08-03 15:14:06'),
(98, 'audit:created', 9, 'App\\Models\\RequestService#9', NULL, '{\"user_id\":16,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-08-03 11:14:06\",\"created_at\":\"2023-08-03 11:14:06\",\"id\":9,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.224.160', '2023-08-03 15:14:06', '2023-08-03 15:14:06'),
(99, 'audit:created', 17, 'App\\Models\\User#17', NULL, '{\"name\":\"Hashim Summers\",\"email\":\"fifisimik@mailinator.com\",\"phone_number\":\"+1 (895) 433-7112\",\"user_type\":\"client\",\"updated_at\":\"2023-08-03 11:27:13\",\"created_at\":\"2023-08-03 11:27:13\",\"id\":17}', '156.197.224.160', '2023-08-03 15:27:13', '2023-08-03 15:27:13'),
(100, 'audit:created', 10, 'App\\Models\\RequestService#10', NULL, '{\"user_id\":17,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-08-03 11:27:13\",\"created_at\":\"2023-08-03 11:27:13\",\"id\":10,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.224.160', '2023-08-03 15:27:13', '2023-08-03 15:27:13'),
(101, 'audit:updated', 10, 'App\\Models\\RequestService#10', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-08-03 11:27:49\"}', '156.197.224.160', '2023-08-03 15:27:49', '2023-08-03 15:27:49'),
(102, 'audit:created', 18, 'App\\Models\\User#18', NULL, '{\"name\":\"Nash Cline\",\"email\":\"saqyve@mailinator.com\",\"phone_number\":\"+1 (538) 989-6228\",\"user_type\":\"client\",\"updated_at\":\"2023-08-03 11:29:20\",\"created_at\":\"2023-08-03 11:29:20\",\"id\":18}', '156.197.224.160', '2023-08-03 15:29:20', '2023-08-03 15:29:20'),
(103, 'audit:created', 11, 'App\\Models\\RequestService#11', NULL, '{\"user_id\":18,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-08-03 11:29:20\",\"created_at\":\"2023-08-03 11:29:20\",\"id\":11,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.224.160', '2023-08-03 15:29:20', '2023-08-03 15:29:20'),
(104, 'audit:updated', 11, 'App\\Models\\RequestService#11', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-08-03 11:29:58\"}', '156.197.224.160', '2023-08-03 15:29:58', '2023-08-03 15:29:58'),
(105, 'audit:created', 12, 'App\\Models\\RequestService#12', 18, '{\"user_id\":18,\"service_id\":\"2\",\"updated_at\":\"2023-08-03 11:30:16\",\"created_at\":\"2023-08-03 11:30:16\",\"id\":12,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.224.160', '2023-08-03 15:30:16', '2023-08-03 15:30:16'),
(106, 'audit:deleted', 12, 'App\\Models\\RequestService#12', 18, '{\"id\":12,\"contract_accept\":\"0\",\"status\":\"pending\",\"stages\":\"contract\",\"cost_1\":null,\"cost_2\":null,\"start_date\":null,\"end_date\":null,\"done_time\":null,\"duration_to_edit\":null,\"created_at\":\"2023-08-03 11:30:16\",\"updated_at\":\"2023-08-03 11:30:53\",\"deleted_at\":\"2023-08-03 11:30:53\",\"user_id\":\"18\",\"service_id\":\"2\",\"consultant_id\":null,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.224.160', '2023-08-03 15:30:53', '2023-08-03 15:30:53'),
(107, 'audit:deleted', 11, 'App\\Models\\RequestService#11', 18, '{\"id\":11,\"contract_accept\":\"0\",\"status\":\"accept\",\"stages\":\"contract\",\"cost_1\":null,\"cost_2\":null,\"start_date\":null,\"end_date\":null,\"done_time\":null,\"duration_to_edit\":null,\"created_at\":\"2023-08-03 11:29:20\",\"updated_at\":\"2023-08-03 11:31:06\",\"deleted_at\":\"2023-08-03 11:31:06\",\"user_id\":\"18\",\"service_id\":\"4\",\"consultant_id\":null,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.224.160', '2023-08-03 15:31:06', '2023-08-03 15:31:06'),
(108, 'audit:created', 13, 'App\\Models\\RequestService#13', 18, '{\"user_id\":18,\"service_id\":\"1\",\"updated_at\":\"2023-08-03 11:31:10\",\"created_at\":\"2023-08-03 11:31:10\",\"id\":13,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.224.160', '2023-08-03 15:31:10', '2023-08-03 15:31:10'),
(109, 'audit:updated', 13, 'App\\Models\\RequestService#13', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-08-03 11:31:15\"}', '156.197.224.160', '2023-08-03 15:31:15', '2023-08-03 15:31:15'),
(110, 'audit:updated', 13, 'App\\Models\\RequestService#13', 1, '{\"cost_1\":\"50\",\"cost_2\":\"30\",\"start_date\":\"2023-08-03\",\"end_date\":\"2023-08-23\",\"updated_at\":\"2023-08-03 11:32:33\"}', '156.197.224.160', '2023-08-03 15:32:33', '2023-08-03 15:32:33'),
(111, 'audit:updated', 13, 'App\\Models\\RequestService#13', 18, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-08-03 11:33:31\"}', '156.197.224.160', '2023-08-03 15:33:31', '2023-08-03 15:33:31'),
(112, 'audit:updated', 13, 'App\\Models\\RequestService#13', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-08-03 11:35:05\",\"consultant_id\":\"6\"}', '156.197.224.160', '2023-08-03 15:35:05', '2023-08-03 15:35:05'),
(113, 'audit:updated', 13, 'App\\Models\\RequestService#13', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-08-03 11:43:07\",\"updated_at\":\"2023-08-03 11:43:10\"}', '156.197.224.160', '2023-08-03 15:43:10', '2023-08-03 15:43:10'),
(114, 'audit:updated', 13, 'App\\Models\\RequestService#13', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-08-03 11:46:26\"}', '156.197.224.160', '2023-08-03 15:46:26', '2023-08-03 15:46:26'),
(115, 'audit:updated', 13, 'App\\Models\\RequestService#13', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-08-03 11:48:35\"}', '156.197.224.160', '2023-08-03 15:48:35', '2023-08-03 15:48:35'),
(116, 'audit:created', 19, 'App\\Models\\User#19', NULL, '{\"name\":\"Cole Odonnell\",\"email\":\"boteha@mailinator.com\",\"phone_number\":\"+1 (623) 275-6748\",\"user_type\":\"client\",\"updated_at\":\"2023-08-03 12:04:44\",\"created_at\":\"2023-08-03 12:04:44\",\"id\":19}', '156.197.224.160', '2023-08-03 16:04:44', '2023-08-03 16:04:44'),
(117, 'audit:created', 14, 'App\\Models\\RequestService#14', NULL, '{\"user_id\":19,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-08-03 12:04:44\",\"created_at\":\"2023-08-03 12:04:44\",\"id\":14,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '156.197.224.160', '2023-08-03 16:04:44', '2023-08-03 16:04:44'),
(118, 'audit:updated', 1, 'App\\Models\\Quotation#1', 1, '{\"is_sent_email\":\"1\",\"updated_at\":\"2023-08-03 12:06:01\"}', '156.197.224.160', '2023-08-03 16:06:01', '2023-08-03 16:06:01'),
(119, 'audit:created', 20, 'App\\Models\\User#20', NULL, '{\"name\":\"Kelly Berry\",\"email\":\"aa@aa.com\",\"phone_number\":\"+1 (761) 534-1355\",\"user_type\":\"client\",\"updated_at\":\"2023-11-18 12:57:02\",\"created_at\":\"2023-11-18 12:57:02\",\"id\":20}', '102.41.198.155', '2023-11-18 17:57:02', '2023-11-18 17:57:02'),
(120, 'audit:created', 15, 'App\\Models\\RequestService#15', NULL, '{\"user_id\":20,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-11-18 12:57:02\",\"created_at\":\"2023-11-18 12:57:02\",\"id\":15,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '102.41.198.155', '2023-11-18 17:57:02', '2023-11-18 17:57:02'),
(121, 'audit:updated', 15, 'App\\Models\\RequestService#15', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-11-18 12:58:51\"}', '102.41.198.155', '2023-11-18 17:58:51', '2023-11-18 17:58:51'),
(122, 'audit:updated', 6, 'App\\Models\\User#6', 1, '{\"name\":\"\\u0645\\u0633\\u062a\\u0634\\u0627\\u0631 1\",\"updated_at\":\"2023-11-23 12:08:55\"}', '197.56.81.141', '2023-11-23 17:08:55', '2023-11-23 17:08:55'),
(123, 'audit:created', 21, 'App\\Models\\User#21', NULL, '{\"name\":\"Jonah Shannon\",\"email\":\"zuva@mailinator.com\",\"phone_number\":\"+1 (748) 878-3441\",\"user_type\":\"client\",\"updated_at\":\"2023-11-23 12:18:31\",\"created_at\":\"2023-11-23 12:18:31\",\"id\":21}', '197.56.81.141', '2023-11-23 17:18:31', '2023-11-23 17:18:31'),
(124, 'audit:created', 16, 'App\\Models\\RequestService#16', NULL, '{\"user_id\":21,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-11-23 12:18:31\",\"created_at\":\"2023-11-23 12:18:31\",\"id\":16,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '197.56.81.141', '2023-11-23 17:18:31', '2023-11-23 17:18:31'),
(125, 'audit:updated', 16, 'App\\Models\\RequestService#16', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-11-23 12:19:48\"}', '197.56.81.141', '2023-11-23 17:19:48', '2023-11-23 17:19:48'),
(126, 'audit:updated', 16, 'App\\Models\\RequestService#16', 1, '{\"cost_1\":\"500\",\"cost_2\":\"500\",\"start_date\":\"2023-11-23\",\"end_date\":\"2023-11-29\",\"updated_at\":\"2023-11-23 12:20:52\"}', '197.56.81.141', '2023-11-23 17:20:53', '2023-11-23 17:20:53'),
(127, 'audit:updated', 16, 'App\\Models\\RequestService#16', 21, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-11-23 12:21:19\"}', '197.56.81.141', '2023-11-23 17:21:19', '2023-11-23 17:21:19'),
(128, 'audit:updated', 16, 'App\\Models\\RequestService#16', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-11-23 12:22:16\",\"consultant_id\":\"6\"}', '197.56.81.141', '2023-11-23 17:22:16', '2023-11-23 17:22:16'),
(129, 'audit:updated', 16, 'App\\Models\\RequestService#16', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-11-23 12:25:07\",\"updated_at\":\"2023-11-23 12:25:07\"}', '197.56.81.141', '2023-11-23 17:25:07', '2023-11-23 17:25:07'),
(130, 'audit:updated', 16, 'App\\Models\\RequestService#16', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-11-23 12:25:57\"}', '197.56.81.141', '2023-11-23 17:25:57', '2023-11-23 17:25:57'),
(131, 'audit:updated', 16, 'App\\Models\\RequestService#16', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-11-23 12:26:59\"}', '197.56.81.141', '2023-11-23 17:26:59', '2023-11-23 17:26:59'),
(132, 'audit:created', 22, 'App\\Models\\User#22', NULL, '{\"name\":\"Ronan Chandler\",\"email\":\"male@mailinator.com\",\"phone_number\":\"+1 (611) 272-5954\",\"user_type\":\"client\",\"updated_at\":\"2023-11-23 12:51:36\",\"created_at\":\"2023-11-23 12:51:36\",\"id\":22}', '197.56.81.141', '2023-11-23 17:51:36', '2023-11-23 17:51:36'),
(133, 'audit:created', 17, 'App\\Models\\RequestService#17', NULL, '{\"user_id\":22,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-11-23 12:51:36\",\"created_at\":\"2023-11-23 12:51:36\",\"id\":17,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '197.56.81.141', '2023-11-23 17:51:36', '2023-11-23 17:51:36'),
(134, 'audit:created', 1, 'App\\Models\\News#1', 1, '{\"name\":\"\\u062e\\u0628\\u0631 \\u0631\\u0642\\u0645 1\",\"description\":\"<p>\\u062e\\u0628\\u0631 \\u062c\\u062f\\u064a\\u062f&nbsp;<\\/p>\",\"date\":\"23\\/11\\/2023\",\"updated_at\":\"2023-11-23 12:59:04\",\"created_at\":\"2023-11-23 12:59:04\",\"id\":1,\"photo\":null,\"media\":[]}', '197.56.81.141', '2023-11-23 17:59:04', '2023-11-23 17:59:04'),
(135, 'audit:created', 23, 'App\\Models\\User#23', NULL, '{\"name\":\"Amaya Slater\",\"email\":\"cukety@mailinator.com\",\"phone_number\":\"+1 (834) 915-9097\",\"user_type\":\"client\",\"updated_at\":\"2023-11-28 12:03:23\",\"created_at\":\"2023-11-28 12:03:23\",\"id\":23}', '197.56.208.181', '2023-11-28 17:03:23', '2023-11-28 17:03:23'),
(136, 'audit:created', 18, 'App\\Models\\RequestService#18', NULL, '{\"user_id\":23,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-11-28 12:03:23\",\"created_at\":\"2023-11-28 12:03:23\",\"id\":18,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '197.56.208.181', '2023-11-28 17:03:23', '2023-11-28 17:03:23'),
(137, 'audit:created', 24, 'App\\Models\\User#24', NULL, '{\"name\":\"Dale Meyers\",\"email\":\"cahuvehej@mailinator.com\",\"phone_number\":\"+1 (235) 126-6435\",\"user_type\":\"client\",\"updated_at\":\"2023-11-28 12:09:43\",\"created_at\":\"2023-11-28 12:09:43\",\"id\":24}', '197.56.208.181', '2023-11-28 17:09:43', '2023-11-28 17:09:43'),
(138, 'audit:created', 19, 'App\\Models\\RequestService#19', NULL, '{\"user_id\":24,\"service_id\":\"3\",\"status\":\"pending\",\"updated_at\":\"2023-11-28 12:09:43\",\"created_at\":\"2023-11-28 12:09:43\",\"id\":19,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '197.56.208.181', '2023-11-28 17:09:43', '2023-11-28 17:09:43'),
(139, 'audit:updated', 19, 'App\\Models\\RequestService#19', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-11-28 12:10:45\"}', '197.56.208.181', '2023-11-28 17:10:45', '2023-11-28 17:10:45'),
(140, 'audit:updated', 19, 'App\\Models\\RequestService#19', 1, '{\"cost_1\":\"50\",\"cost_2\":\"20\",\"start_date\":\"2023-11-28\",\"end_date\":\"2023-11-30\",\"updated_at\":\"2023-11-28 12:13:38\"}', '197.56.208.181', '2023-11-28 17:13:38', '2023-11-28 17:13:38'),
(141, 'audit:updated', 19, 'App\\Models\\RequestService#19', 24, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-11-28 12:14:27\"}', '197.56.208.181', '2023-11-28 17:14:27', '2023-11-28 17:14:27'),
(142, 'audit:updated', 19, 'App\\Models\\RequestService#19', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-11-28 12:16:29\",\"consultant_id\":\"6\"}', '197.56.208.181', '2023-11-28 17:16:29', '2023-11-28 17:16:29'),
(143, 'audit:updated', 19, 'App\\Models\\RequestService#19', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-11-28 12:19:14\",\"updated_at\":\"2023-11-28 12:19:15\"}', '197.56.208.181', '2023-11-28 17:19:15', '2023-11-28 17:19:15'),
(144, 'audit:updated', 19, 'App\\Models\\RequestService#19', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-11-28 12:20:52\"}', '197.56.208.181', '2023-11-28 17:20:52', '2023-11-28 17:20:52'),
(145, 'audit:updated', 19, 'App\\Models\\RequestService#19', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-11-28 12:21:48\"}', '197.56.208.181', '2023-11-28 17:21:48', '2023-11-28 17:21:48');
INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(146, 'audit:created', 25, 'App\\Models\\User#25', NULL, '{\"name\":\"Charity Nolan\",\"email\":\"hynaxat@mailinator.com\",\"phone_number\":\"+1 (996) 296-9063\",\"user_type\":\"client\",\"updated_at\":\"2023-12-17 12:14:55\",\"created_at\":\"2023-12-17 12:14:55\",\"id\":25}', '197.56.117.173', '2023-12-17 19:14:55', '2023-12-17 19:14:55'),
(147, 'audit:created', 20, 'App\\Models\\RequestService#20', NULL, '{\"user_id\":25,\"service_id\":\"3\",\"status\":\"pending\",\"updated_at\":\"2023-12-17 12:14:55\",\"created_at\":\"2023-12-17 12:14:55\",\"id\":20,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '197.56.117.173', '2023-12-17 19:14:55', '2023-12-17 19:14:55'),
(148, 'audit:created', 26, 'App\\Models\\User#26', NULL, '{\"name\":\"\\u0635\\u0627\\u0644\\u062d \\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0634\\u0645\\u0631\\u0627\\u0646\\u064a\",\"email\":\"salehalshamrani@hotmail.com\",\"phone_number\":\"0500607733\",\"user_type\":\"client\",\"updated_at\":\"2023-12-18 09:03:14\",\"created_at\":\"2023-12-18 09:03:14\",\"id\":26}', '175.110.222.89', '2023-12-18 16:03:14', '2023-12-18 16:03:14'),
(149, 'audit:created', 21, 'App\\Models\\RequestService#21', NULL, '{\"user_id\":26,\"service_id\":\"3\",\"status\":\"pending\",\"updated_at\":\"2023-12-18 09:03:14\",\"created_at\":\"2023-12-18 09:03:14\",\"id\":21,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '175.110.222.89', '2023-12-18 16:03:14', '2023-12-18 16:03:14'),
(150, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"G6Of18F4useN7O9NGRhF3EPhkLKebvb05DQHTotwxCR0BJBZLlEAsiB95Iuq\"}', '175.110.222.89', '2023-12-18 16:07:30', '2023-12-18 16:07:30'),
(151, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"7S2yOvnsaoaA1fIypdOzuxXbEcxc5x5L6PqQSF3B31eOzP2WiZY8mPJFBeOc\"}', '41.40.54.21', '2023-12-18 17:49:14', '2023-12-18 17:49:14'),
(152, 'audit:created', 27, 'App\\Models\\User#27', NULL, '{\"name\":\"Amos Clay\",\"email\":\"mygixok@mailinator.com\",\"phone_number\":\"+1 (621) 589-1416\",\"user_type\":\"client\",\"updated_at\":\"2023-12-18 10:49:19\",\"created_at\":\"2023-12-18 10:49:19\",\"id\":27}', '41.40.54.21', '2023-12-18 17:49:19', '2023-12-18 17:49:19'),
(153, 'audit:created', 22, 'App\\Models\\RequestService#22', NULL, '{\"user_id\":27,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-12-18 10:49:19\",\"created_at\":\"2023-12-18 10:49:19\",\"id\":22,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '41.40.54.21', '2023-12-18 17:49:19', '2023-12-18 17:49:19'),
(154, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"NOMyMoWx7p0Oo4mWx5sSWu8BqOyY9635D4mQov8U8uhAddIE5oYlcqssk0T9\"}', '175.110.222.89', '2023-12-18 18:10:42', '2023-12-18 18:10:42'),
(155, 'audit:created', 5, 'App\\Models\\Service#5', 1, '{\"name\":\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629\",\"description\":\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0645\\u0628\\u0633\\u0637\\u0647 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0642\\u0637\\u0627\\u0639\\u0627\\u062a \\u0627\\u0644\\u062e\\u062f\\u0645\\u064a\\u0629\",\"updated_at\":\"2023-12-18 11:18:34\",\"created_at\":\"2023-12-18 11:18:34\",\"id\":5}', '175.110.222.89', '2023-12-18 18:18:34', '2023-12-18 18:18:34'),
(156, 'audit:created', 28, 'App\\Models\\User#28', NULL, '{\"name\":\"noor\",\"email\":\"ahmadalatibi28@gmail.com\",\"phone_number\":\"0507335535\",\"user_type\":\"client\",\"updated_at\":\"2023-12-21 07:05:28\",\"created_at\":\"2023-12-21 07:05:28\",\"id\":28}', '145.82.201.213', '2023-12-21 14:05:28', '2023-12-21 14:05:28'),
(157, 'audit:created', 23, 'App\\Models\\RequestService#23', NULL, '{\"user_id\":28,\"service_id\":\"3\",\"status\":\"pending\",\"updated_at\":\"2023-12-21 07:05:28\",\"created_at\":\"2023-12-21 07:05:28\",\"id\":23,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-21 14:05:28', '2023-12-21 14:05:28'),
(158, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"jtmodBJQoWL2iXsVlqo2xzl45rIorJlVxz7konq1VXZSYV9skP2AkLUPJKYy\"}', '145.82.201.213', '2023-12-21 18:48:50', '2023-12-21 18:48:50'),
(159, 'audit:created', 29, 'App\\Models\\User#29', NULL, '{\"name\":\"\\u0646\\u0648\\u0631\",\"email\":\"noor@admin.com\",\"phone_number\":\"05077553365\",\"user_type\":\"client\",\"updated_at\":\"2023-12-21 11:50:31\",\"created_at\":\"2023-12-21 11:50:31\",\"id\":29}', '145.82.201.213', '2023-12-21 18:50:31', '2023-12-21 18:50:31'),
(160, 'audit:created', 24, 'App\\Models\\RequestService#24', NULL, '{\"user_id\":29,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-12-21 11:50:31\",\"created_at\":\"2023-12-21 11:50:31\",\"id\":24,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-21 18:50:31', '2023-12-21 18:50:31'),
(161, 'audit:created', 30, 'App\\Models\\User#30', NULL, '{\"name\":\"ahmed\",\"email\":\"ahmedd@agga.asd\",\"phone_number\":\"0512312345\",\"user_type\":\"client\",\"updated_at\":\"2023-12-21 11:54:45\",\"created_at\":\"2023-12-21 11:54:45\",\"id\":30}', '197.56.152.247', '2023-12-21 18:54:45', '2023-12-21 18:54:45'),
(162, 'audit:created', 25, 'App\\Models\\RequestService#25', NULL, '{\"user_id\":30,\"service_id\":\"2\",\"status\":\"pending\",\"updated_at\":\"2023-12-21 11:54:45\",\"created_at\":\"2023-12-21 11:54:45\",\"id\":25,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '197.56.152.247', '2023-12-21 18:54:45', '2023-12-21 18:54:45'),
(163, 'audit:updated', 25, 'App\\Models\\RequestService#25', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-21 11:57:08\"}', '197.56.152.247', '2023-12-21 18:57:08', '2023-12-21 18:57:08'),
(164, 'audit:updated', 25, 'App\\Models\\RequestService#25', 1, '{\"cost_1\":\"3000\",\"cost_2\":\"2000\",\"start_date\":\"2023-12-21\",\"end_date\":\"2024-01-03\",\"updated_at\":\"2023-12-21 11:58:21\"}', '197.56.152.247', '2023-12-21 18:58:21', '2023-12-21 18:58:21'),
(165, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"onVXwhNbEYTTximwrdTZiYkF9RoRsvjR4DM90vQVAi0CkmJheuuU06qMhzi6\"}', '197.56.152.247', '2023-12-21 18:58:43', '2023-12-21 18:58:43'),
(166, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"xfmnT0DdOwB5LJP7yE3fGiJmlEtRze38hb3s6jSghgurRKMcYyCQGuxBMDu2\"}', '197.56.152.247', '2023-12-21 19:01:15', '2023-12-21 19:01:15'),
(167, 'audit:updated', 25, 'App\\Models\\RequestService#25', 30, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-21 12:04:50\"}', '197.56.152.247', '2023-12-21 19:04:50', '2023-12-21 19:04:50'),
(168, 'audit:updated', 25, 'App\\Models\\RequestService#25', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-12-21 12:06:18\",\"consultant_id\":\"6\"}', '197.56.152.247', '2023-12-21 19:06:18', '2023-12-21 19:06:18'),
(169, 'audit:updated', 25, 'App\\Models\\RequestService#25', 6, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-12-21 12:10:35\",\"updated_at\":\"2023-12-21 12:10:35\"}', '197.56.152.247', '2023-12-21 19:10:35', '2023-12-21 19:10:35'),
(170, 'audit:updated', 25, 'App\\Models\\RequestService#25', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-12-21 12:12:18\"}', '197.56.152.247', '2023-12-21 19:12:18', '2023-12-21 19:12:18'),
(171, 'audit:updated', 25, 'App\\Models\\RequestService#25', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-12-21 12:13:17\"}', '197.56.152.247', '2023-12-21 19:13:17', '2023-12-21 19:13:17'),
(172, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"6akr2PcTeIQSCuDYhrb8cYGeV7NlD5h1vBcmYl4UC0xJPcRcBOhNbeSsVnrd\"}', '197.56.152.247', '2023-12-21 19:15:45', '2023-12-21 19:15:45'),
(173, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"8HW01qdcH8Dg1uPcZ9Mm5RJGBhAonbvLj58X1zW5VdKBspC2Kd169thlLMKo\"}', '197.56.152.247', '2023-12-21 19:16:01', '2023-12-21 19:16:01'),
(174, 'audit:updated', 24, 'App\\Models\\RequestService#24', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-21 12:54:51\"}', '145.82.201.213', '2023-12-21 19:54:51', '2023-12-21 19:54:51'),
(175, 'audit:updated', 23, 'App\\Models\\RequestService#23', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-21 12:55:08\"}', '145.82.201.213', '2023-12-21 19:55:08', '2023-12-21 19:55:08'),
(176, 'audit:updated', 23, 'App\\Models\\RequestService#23', 1, '{\"cost_1\":\"1\",\"cost_2\":\"2\",\"start_date\":\"2023-12-14\",\"end_date\":\"2023-12-31\",\"updated_at\":\"2023-12-21 13:05:28\"}', '145.82.201.213', '2023-12-21 20:05:28', '2023-12-21 20:05:28'),
(177, 'audit:updated', 24, 'App\\Models\\RequestService#24', 1, '{\"cost_1\":\"00\",\"cost_2\":\"00\",\"start_date\":\"2023-12-21\",\"end_date\":\"2023-12-30\",\"updated_at\":\"2023-12-21 13:18:02\"}', '145.82.201.213', '2023-12-21 20:18:02', '2023-12-21 20:18:02'),
(178, 'audit:created', 31, 'App\\Models\\User#31', 1, '{\"user_type\":\"client\",\"name\":\"ahmed22\",\"email\":\"ahmed22@admin.com\",\"phone_number\":\"454554544\",\"updated_at\":\"2023-12-23 08:37:01\",\"created_at\":\"2023-12-23 08:37:01\",\"id\":31}', '145.82.201.213', '2023-12-23 15:37:01', '2023-12-23 15:37:01'),
(179, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"4jDU7AOnmYdrOspa4OK0vlpiqVIUclQzuYqlHpFI17ry5OpCxUVUWvagTxgt\"}', '145.82.201.213', '2023-12-23 15:38:32', '2023-12-23 15:38:32'),
(180, 'audit:created', 32, 'App\\Models\\User#32', NULL, '{\"name\":\"ahmed22\",\"email\":\"ahmed22@f.com\",\"phone_number\":\"053344484447\",\"user_type\":\"client\",\"updated_at\":\"2023-12-23 08:40:28\",\"created_at\":\"2023-12-23 08:40:28\",\"id\":32}', '145.82.201.213', '2023-12-23 15:40:28', '2023-12-23 15:40:28'),
(181, 'audit:created', 26, 'App\\Models\\RequestService#26', NULL, '{\"user_id\":32,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-12-23 08:40:28\",\"created_at\":\"2023-12-23 08:40:28\",\"id\":26,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-23 15:40:28', '2023-12-23 15:40:28'),
(182, 'audit:updated', 32, 'App\\Models\\User#32', 32, '{\"password\":\"$2y$10$Hq25uupBEgBQ6lGlluuKUuImvcKrF9r\\/71o3IOvScpMiABwhKDdn.\",\"updated_at\":\"2023-12-23 08:41:39\"}', '145.82.201.213', '2023-12-23 15:41:39', '2023-12-23 15:41:39'),
(183, 'audit:updated', 26, 'App\\Models\\RequestService#26', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-23 11:54:07\"}', '145.82.201.213', '2023-12-23 18:54:07', '2023-12-23 18:54:07'),
(184, 'audit:created', 33, 'App\\Models\\User#33', NULL, '{\"name\":\"\\u0627\\u0628\\u0631\\u0627\\u0647\\u064a\\u0645\",\"email\":\"ibrahim.alameri2009@gmail.com\",\"phone_number\":\"0545983970\",\"user_type\":\"client\",\"updated_at\":\"2023-12-23 11:59:08\",\"created_at\":\"2023-12-23 11:59:08\",\"id\":33}', '145.82.201.213', '2023-12-23 18:59:08', '2023-12-23 18:59:08'),
(185, 'audit:created', 27, 'App\\Models\\RequestService#27', NULL, '{\"user_id\":33,\"service_id\":\"5\",\"status\":\"pending\",\"updated_at\":\"2023-12-23 11:59:08\",\"created_at\":\"2023-12-23 11:59:08\",\"id\":27,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-23 18:59:08', '2023-12-23 18:59:08'),
(186, 'audit:updated', 27, 'App\\Models\\RequestService#27', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-23 11:59:59\"}', '145.82.201.213', '2023-12-23 18:59:59', '2023-12-23 18:59:59'),
(187, 'audit:updated', 27, 'App\\Models\\RequestService#27', 1, '{\"cost_1\":\"00\",\"cost_2\":\"00\",\"start_date\":\"2023-12-14\",\"end_date\":\"2023-12-25\",\"updated_at\":\"2023-12-23 12:01:36\"}', '145.82.201.213', '2023-12-23 19:01:36', '2023-12-23 19:01:36'),
(188, 'audit:updated', 27, 'App\\Models\\RequestService#27', 33, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-23 12:01:54\"}', '145.82.201.213', '2023-12-23 19:01:54', '2023-12-23 19:01:54'),
(189, 'audit:updated', 27, 'App\\Models\\RequestService#27', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-12-23 12:03:49\",\"consultant_id\":\"3\"}', '145.82.201.213', '2023-12-23 19:03:49', '2023-12-23 19:03:49'),
(190, 'audit:updated', 33, 'App\\Models\\User#33', 33, '{\"remember_token\":\"BslSNaOHfQqXFRLHZ5DYfQgYwvIHzyPYJdUEcTX7VdGztCnjsQQ4H0ImTitF\"}', '145.82.201.213', '2023-12-23 19:07:54', '2023-12-23 19:07:54'),
(191, 'audit:updated', 33, 'App\\Models\\User#33', 33, '{\"remember_token\":\"Us71GLYOZRd1QNf9cTey288d7ohlzz7B0mWxhGlCMMsb1rMDhQF0rcBXjYsP\"}', '145.82.201.213', '2023-12-23 19:08:02', '2023-12-23 19:08:02'),
(192, 'audit:created', 34, 'App\\Models\\User#34', NULL, '{\"name\":\"qwer\",\"email\":\"AHMmD@hotmail.com\",\"phone_number\":\"0507325565\",\"user_type\":\"client\",\"updated_at\":\"2023-12-23 12:14:43\",\"created_at\":\"2023-12-23 12:14:43\",\"id\":34}', '145.82.201.213', '2023-12-23 19:14:43', '2023-12-23 19:14:43'),
(193, 'audit:created', 28, 'App\\Models\\RequestService#28', NULL, '{\"user_id\":34,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-12-23 12:14:43\",\"created_at\":\"2023-12-23 12:14:43\",\"id\":28,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-23 19:14:43', '2023-12-23 19:14:43'),
(194, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"88SJIiwo2WmAxmC8mYPq2aq5WkCM4szTI6BVBlOuvtithU9m9FWPOY16uXRe\"}', '145.82.201.213', '2023-12-23 19:23:10', '2023-12-23 19:23:10'),
(195, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"IwCs1xDS6YkcqtcCQlfKE2sbCOCFIIq15lnM0yPi3NDOiIj0IklXnCLphOIe\"}', '145.82.201.213', '2023-12-23 19:52:32', '2023-12-23 19:52:32'),
(196, 'audit:updated', 33, 'App\\Models\\User#33', 33, '{\"remember_token\":\"8gj5u491gWS3AsKRfhNsjjWka27VGOOVZlbIWq7L1rD5MtBV1nkzoZAe3Wyi\"}', '145.82.201.213', '2023-12-23 19:52:58', '2023-12-23 19:52:58'),
(197, 'audit:updated', 33, 'App\\Models\\User#33', 33, '{\"remember_token\":\"FnwnTiOaEa2wnWrwgtoXoSTuhGuOv6jHUJTAu8H0WpZJS4wBPkmiRDgRV7M6\"}', '145.82.201.213', '2023-12-23 19:53:57', '2023-12-23 19:53:57'),
(198, 'audit:updated', 33, 'App\\Models\\User#33', 33, '{\"remember_token\":\"jJLTzbkQgWuBVtzEqfaj4DraPrfEGxnm669q1Z7lrDqYyDuobRK8h89w5JcU\"}', '145.82.201.213', '2023-12-23 19:56:33', '2023-12-23 19:56:33'),
(199, 'audit:created', 35, 'App\\Models\\User#35', NULL, '{\"name\":\"\\u0639\\u0628\\u062f \\u0627\\u0644\\u0644\\u0647\",\"email\":\"abd@gmail.com\",\"phone_number\":\"0584444447\",\"user_type\":\"client\",\"updated_at\":\"2023-12-23 12:58:55\",\"created_at\":\"2023-12-23 12:58:55\",\"id\":35}', '145.82.201.213', '2023-12-23 19:58:55', '2023-12-23 19:58:55'),
(200, 'audit:created', 29, 'App\\Models\\RequestService#29', NULL, '{\"user_id\":35,\"service_id\":\"5\",\"status\":\"pending\",\"updated_at\":\"2023-12-23 12:58:55\",\"created_at\":\"2023-12-23 12:58:55\",\"id\":29,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-23 19:58:55', '2023-12-23 19:58:55'),
(201, 'audit:updated', 29, 'App\\Models\\RequestService#29', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-23 13:02:13\"}', '145.82.201.213', '2023-12-23 20:02:13', '2023-12-23 20:02:13'),
(202, 'audit:updated', 29, 'App\\Models\\RequestService#29', 1, '{\"cost_1\":\"00\",\"cost_2\":\"00\",\"start_date\":\"2023-12-07\",\"end_date\":\"2023-12-28\",\"updated_at\":\"2023-12-23 13:03:12\"}', '145.82.201.213', '2023-12-23 20:03:12', '2023-12-23 20:03:12'),
(203, 'audit:updated', 29, 'App\\Models\\RequestService#29', 35, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-23 13:04:29\"}', '145.82.201.213', '2023-12-23 20:04:29', '2023-12-23 20:04:29'),
(204, 'audit:updated', 29, 'App\\Models\\RequestService#29', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-12-23 13:05:20\",\"consultant_id\":\"10\"}', '145.82.201.213', '2023-12-23 20:05:20', '2023-12-23 20:05:20'),
(205, 'audit:updated', 5, 'App\\Models\\User#5', 1, '{\"password\":\"$2y$10$j0Esd73G8mL6YitjHUj2QOajYmD5lUJZxp4x7a2lThIMPTVKV3Wrm\",\"updated_at\":\"2023-12-24 08:56:24\"}', '145.82.201.213', '2023-12-24 15:56:24', '2023-12-24 15:56:24'),
(206, 'audit:updated', 5, 'App\\Models\\User#5', 1, '{\"password\":\"$2y$10$bgoAOEtv2Pa24RHZUL3TnuqlxNcmiEDuzuuSZeGWcPK33s68bGvja\",\"updated_at\":\"2023-12-24 08:57:28\"}', '145.82.201.213', '2023-12-24 15:57:28', '2023-12-24 15:57:28'),
(207, 'audit:updated', 5, 'App\\Models\\User#5', 1, '{\"password\":\"$2y$10$czozM5kXWF9qOmW0mN3xC.M5LMEGsPRI1CydwlK95l7peZFyMXoL.\",\"updated_at\":\"2023-12-24 08:58:38\"}', '145.82.201.213', '2023-12-24 15:58:38', '2023-12-24 15:58:38'),
(208, 'audit:updated', 5, 'App\\Models\\User#5', 1, '{\"password\":\"$2y$10$Kt.MNx1aeVLP5Qf1Xer7D.\\/64enCrtOKzDmUFTSPKZwndVS9cGJ9G\",\"updated_at\":\"2023-12-24 09:00:21\"}', '145.82.201.213', '2023-12-24 16:00:21', '2023-12-24 16:00:21'),
(209, 'audit:updated', 5, 'App\\Models\\User#5', 1, '{\"password\":\"$2y$10$zNljUmg\\/GkOvgzZdu.hoou8N72M46dYMGV5uyrLMyvxca\\/og0LZ3q\",\"updated_at\":\"2023-12-24 09:00:35\"}', '145.82.201.213', '2023-12-24 16:00:35', '2023-12-24 16:00:35'),
(210, 'audit:created', 36, 'App\\Models\\User#36', NULL, '{\"name\":\"\\u0627\\u0628\\u0631\\u0627\\u0647\\u064a\\u06452\",\"email\":\"at@gmail.com\",\"phone_number\":\"0533484555447\",\"user_type\":\"client\",\"updated_at\":\"2023-12-24 09:02:06\",\"created_at\":\"2023-12-24 09:02:06\",\"id\":36}', '145.82.201.213', '2023-12-24 16:02:06', '2023-12-24 16:02:06'),
(211, 'audit:created', 30, 'App\\Models\\RequestService#30', NULL, '{\"user_id\":36,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-12-24 09:02:06\",\"created_at\":\"2023-12-24 09:02:06\",\"id\":30,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-24 16:02:06', '2023-12-24 16:02:06'),
(212, 'audit:updated', 30, 'App\\Models\\RequestService#30', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-24 09:05:43\"}', '145.82.201.213', '2023-12-24 16:05:43', '2023-12-24 16:05:43'),
(213, 'audit:updated', 30, 'App\\Models\\RequestService#30', 1, '{\"cost_1\":\"0\",\"cost_2\":\"0\",\"start_date\":\"2023-12-06\",\"end_date\":\"2023-12-30\",\"updated_at\":\"2023-12-24 09:07:16\"}', '145.82.201.213', '2023-12-24 16:07:16', '2023-12-24 16:07:16'),
(214, 'audit:updated', 30, 'App\\Models\\RequestService#30', 36, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-24 09:07:30\"}', '145.82.201.213', '2023-12-24 16:07:30', '2023-12-24 16:07:30'),
(215, 'audit:updated', 30, 'App\\Models\\RequestService#30', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-12-24 09:08:23\",\"consultant_id\":\"6\"}', '145.82.201.213', '2023-12-24 16:08:23', '2023-12-24 16:08:23'),
(216, 'audit:created', 37, 'App\\Models\\User#37', 1, '{\"name\":\"noura\",\"email\":\"noura@gmail.com\",\"phone_number\":\"0504915222\",\"updated_at\":\"2023-12-24 09:12:00\",\"created_at\":\"2023-12-24 09:12:00\",\"id\":37}', '145.82.201.213', '2023-12-24 16:12:00', '2023-12-24 16:12:00'),
(217, 'audit:updated', 1, 'App\\Models\\Quotation#1', 37, '{\"is_sent_email\":\"0\",\"updated_at\":\"2023-12-24 12:18:06\"}', '145.82.201.213', '2023-12-24 19:18:06', '2023-12-24 19:18:06'),
(218, 'audit:updated', 1, 'App\\Models\\Quotation#1', 37, '{\"is_sent_email\":\"1\",\"updated_at\":\"2023-12-24 12:18:08\"}', '145.82.201.213', '2023-12-24 19:18:08', '2023-12-24 19:18:08'),
(219, 'audit:created', 6, 'App\\Models\\Service#6', 37, '{\"name\":\"\\u062e\\u062f\\u0645\\u0629 \\u0642\\u0637\\u0627\\u0639 \\u0627\\u0644\\u0627\\u0639\\u0645\\u0627\\u0644 \\u0648\\u0627\\u0644\\u0627\\u0641\\u0631\\u0627\\u062f\",\"description\":\"\\u062e\\u062f\\u0645\\u0629 \\u0642\\u0637\\u0627\\u0639 \\u0627\\u0644\\u0627\\u0639\\u0645\\u0627\\u0644 \\u0648\\u0627\\u0644\\u0627\\u0641\\u0631\\u0627\\u062f\",\"updated_at\":\"2023-12-24 12:54:04\",\"created_at\":\"2023-12-24 12:54:04\",\"id\":6}', '145.82.201.213', '2023-12-24 19:54:04', '2023-12-24 19:54:04'),
(220, 'audit:deleted', 6, 'App\\Models\\Service#6', 37, '{\"id\":6,\"name\":\"\\u062e\\u062f\\u0645\\u0629 \\u0642\\u0637\\u0627\\u0639 \\u0627\\u0644\\u0627\\u0639\\u0645\\u0627\\u0644 \\u0648\\u0627\\u0644\\u0627\\u0641\\u0631\\u0627\\u062f\",\"description\":\"\\u062e\\u062f\\u0645\\u0629 \\u0642\\u0637\\u0627\\u0639 \\u0627\\u0644\\u0627\\u0639\\u0645\\u0627\\u0644 \\u0648\\u0627\\u0644\\u0627\\u0641\\u0631\\u0627\\u062f\",\"created_at\":\"2023-12-24 12:54:04\",\"updated_at\":\"2023-12-24 14:02:44\",\"deleted_at\":\"2023-12-24 14:02:44\"}', '145.82.201.213', '2023-12-24 21:02:44', '2023-12-24 21:02:44'),
(221, 'audit:created', 38, 'App\\Models\\User#38', NULL, '{\"name\":\"\\u0627\\u0628\\u0631\\u0627\\u0647\\u064a\\u06453\",\"email\":\"info111111@amrtm.com.sa\",\"phone_number\":\"05334844472\",\"user_type\":\"client\",\"updated_at\":\"2023-12-24 14:40:31\",\"created_at\":\"2023-12-24 14:40:31\",\"id\":38}', '145.82.201.213', '2023-12-24 21:40:31', '2023-12-24 21:40:31'),
(222, 'audit:created', 31, 'App\\Models\\RequestService#31', NULL, '{\"user_id\":38,\"service_id\":\"1\",\"status\":\"pending\",\"updated_at\":\"2023-12-24 14:40:31\",\"created_at\":\"2023-12-24 14:40:31\",\"id\":31,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-24 21:40:31', '2023-12-24 21:40:31'),
(223, 'audit:updated', 31, 'App\\Models\\RequestService#31', 37, '{\"status\":\"accept\",\"updated_at\":\"2023-12-24 14:40:48\"}', '145.82.201.213', '2023-12-24 21:40:48', '2023-12-24 21:40:48'),
(224, 'audit:updated', 31, 'App\\Models\\RequestService#31', 37, '{\"cost_1\":\"8\",\"cost_2\":\"8\",\"start_date\":\"2023-12-24\",\"end_date\":\"2023-12-28\",\"updated_at\":\"2023-12-24 14:42:16\"}', '145.82.201.213', '2023-12-24 21:42:16', '2023-12-24 21:42:16'),
(225, 'audit:updated', 31, 'App\\Models\\RequestService#31', 38, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-24 14:42:29\"}', '145.82.201.213', '2023-12-24 21:42:29', '2023-12-24 21:42:29'),
(226, 'audit:updated', 31, 'App\\Models\\RequestService#31', 37, '{\"stages\":\"working\",\"updated_at\":\"2023-12-24 14:43:54\",\"consultant_id\":\"6\"}', '145.82.201.213', '2023-12-24 21:43:54', '2023-12-24 21:43:54'),
(227, 'audit:created', 39, 'App\\Models\\User#39', 37, '{\"name\":\"\\u062d\\u0627\\u0645\\u062f\",\"email\":\"salah@gmail.com\",\"phone_number\":\"054545584545\",\"user_type\":\"consultant\",\"updated_at\":\"2023-12-25 08:22:34\",\"created_at\":\"2023-12-25 08:22:34\",\"id\":39}', '145.82.201.213', '2023-12-25 15:22:34', '2023-12-25 15:22:34'),
(228, 'audit:created', 40, 'App\\Models\\User#40', NULL, '{\"name\":\"\\u0639\\u0645\\u064a\\u0644\",\"email\":\"coustmer@gmail.com\",\"phone_number\":\"54505464\",\"user_type\":\"client\",\"updated_at\":\"2023-12-25 08:29:58\",\"created_at\":\"2023-12-25 08:29:58\",\"id\":40}', '145.82.201.213', '2023-12-25 15:29:58', '2023-12-25 15:29:58'),
(229, 'audit:created', 32, 'App\\Models\\RequestService#32', NULL, '{\"user_id\":40,\"service_id\":\"5\",\"status\":\"pending\",\"updated_at\":\"2023-12-25 08:29:58\",\"created_at\":\"2023-12-25 08:29:58\",\"id\":32,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '145.82.201.213', '2023-12-25 15:29:58', '2023-12-25 15:29:58'),
(230, 'audit:updated', 32, 'App\\Models\\RequestService#32', 37, '{\"status\":\"accept\",\"updated_at\":\"2023-12-25 08:31:03\"}', '145.82.201.213', '2023-12-25 15:31:03', '2023-12-25 15:31:03'),
(231, 'audit:updated', 32, 'App\\Models\\RequestService#32', 37, '{\"cost_1\":\"6\",\"cost_2\":\"12\",\"start_date\":\"2023-12-25\",\"end_date\":\"2023-12-30\",\"updated_at\":\"2023-12-25 08:32:09\"}', '145.82.201.213', '2023-12-25 15:32:09', '2023-12-25 15:32:09'),
(232, 'audit:updated', 32, 'App\\Models\\RequestService#32', 40, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-25 08:32:30\"}', '145.82.201.213', '2023-12-25 15:32:30', '2023-12-25 15:32:30'),
(233, 'audit:updated', 32, 'App\\Models\\RequestService#32', 37, '{\"stages\":\"working\",\"updated_at\":\"2023-12-25 08:34:25\",\"consultant_id\":\"39\"}', '145.82.201.213', '2023-12-25 15:34:25', '2023-12-25 15:34:25'),
(234, 'audit:updated', 32, 'App\\Models\\RequestService#32', 39, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-12-25 08:39:39\",\"updated_at\":\"2023-12-25 08:39:39\"}', '145.82.201.213', '2023-12-25 15:39:39', '2023-12-25 15:39:39'),
(235, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"phone_number\":\"0504915222\",\"password\":\"$2y$10$Rlf1rg0ESkEhBpZ7UAGVVOUB4jZP6wQ..DIGp3mfnEGgH0mHBBQz2\",\"updated_at\":\"2023-12-26 06:41:16\"}', '168.149.61.138', '2023-12-26 13:41:16', '2023-12-26 13:41:16'),
(236, 'audit:created', 41, 'App\\Models\\User#41', NULL, '{\"name\":\"ale\",\"email\":\"ale@gmail.com\",\"phone_number\":\"0507885595\",\"user_type\":\"client\",\"updated_at\":\"2023-12-26 06:58:18\",\"created_at\":\"2023-12-26 06:58:18\",\"id\":41}', '168.149.61.138', '2023-12-26 13:58:18', '2023-12-26 13:58:18'),
(237, 'audit:created', 33, 'App\\Models\\RequestService#33', NULL, '{\"user_id\":41,\"service_id\":\"2\",\"status\":\"pending\",\"updated_at\":\"2023-12-26 06:58:18\",\"created_at\":\"2023-12-26 06:58:18\",\"id\":33,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '168.149.61.138', '2023-12-26 13:58:18', '2023-12-26 13:58:18'),
(238, 'audit:created', 42, 'App\\Models\\User#42', NULL, '{\"name\":\"tamer\",\"email\":\"tamer@gmail.com\",\"phone_number\":\"0507556695\",\"user_type\":\"client\",\"updated_at\":\"2023-12-26 07:01:06\",\"created_at\":\"2023-12-26 07:01:06\",\"id\":42}', '168.149.61.138', '2023-12-26 14:01:06', '2023-12-26 14:01:06'),
(239, 'audit:created', 34, 'App\\Models\\RequestService#34', NULL, '{\"user_id\":42,\"service_id\":\"3\",\"status\":\"pending\",\"updated_at\":\"2023-12-26 07:01:06\",\"created_at\":\"2023-12-26 07:01:06\",\"id\":34,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '168.149.61.138', '2023-12-26 14:01:06', '2023-12-26 14:01:06'),
(240, 'audit:updated', 34, 'App\\Models\\RequestService#34', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-26 07:01:29\"}', '168.149.61.138', '2023-12-26 14:01:29', '2023-12-26 14:01:29'),
(241, 'audit:updated', 34, 'App\\Models\\RequestService#34', 1, '{\"cost_1\":\"0\",\"cost_2\":\"0\",\"start_date\":\"2023-11-28\",\"end_date\":\"2024-01-06\",\"updated_at\":\"2023-12-26 07:02:23\"}', '168.149.61.138', '2023-12-26 14:02:23', '2023-12-26 14:02:23'),
(242, 'audit:updated', 34, 'App\\Models\\RequestService#34', 42, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-26 07:02:57\"}', '168.149.61.138', '2023-12-26 14:02:57', '2023-12-26 14:02:57'),
(243, 'audit:updated', 34, 'App\\Models\\RequestService#34', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-12-26 07:04:29\",\"consultant_id\":\"6\"}', '168.149.61.138', '2023-12-26 14:04:29', '2023-12-26 14:04:29'),
(244, 'audit:created', 43, 'App\\Models\\User#43', NULL, '{\"name\":\"Vernon Carr\",\"email\":\"pyrikiz@mailinator.com\",\"phone_number\":\"+1 (408) 123-9881\",\"user_type\":\"client\",\"updated_at\":\"2023-12-26 11:21:09\",\"created_at\":\"2023-12-26 11:21:09\",\"id\":43}', '41.40.62.138', '2023-12-26 18:21:09', '2023-12-26 18:21:09'),
(245, 'audit:created', 35, 'App\\Models\\RequestService#35', NULL, '{\"user_id\":43,\"service_id\":\"4\",\"status\":\"pending\",\"updated_at\":\"2023-12-26 11:21:09\",\"created_at\":\"2023-12-26 11:21:09\",\"id\":35,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '41.40.62.138', '2023-12-26 18:21:09', '2023-12-26 18:21:09'),
(246, 'audit:deleted', 1, 'App\\Models\\Service#1', 1, '{\"id\":1,\"name\":\"\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c \\u0627\\u0644\\u062d\\u0648\\u0643\\u0645\\u0629\",\"description\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0647\\u0648 \\u0645\\u062b\\u0627\\u0644 \\u0644\\u0646\\u0635 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644 \\u0641\\u064a \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629\\u060c \\u0644\\u0642\\u062f \\u062a\\u0645 \\u062a\\u0648\\u0644\\u064a\\u062f \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0645\\u0646 \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649\\u060c \\u062d\\u064a\\u062b \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0646 \\u062a\\u0648\\u0644\\u062f \\u0645\\u062b\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0623\\u0648 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062a\\u0649 \\u064a\\u0648\\u0644\\u062f\\u0647\\u0627 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642. \\u0625\\u0630\\u0627 \\u0643\\u0646\\u062a \\u062a\\u062d\\u062a\\u0627\\u062c \\u0625\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0623\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a \\u064a\\u062a\\u064a\\u062d \\u0644\\u0643 \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a \\u0643\\u0645\\u0627 \\u062a\\u0631\\u064a\\u062f\\u060c \\u0627\\u0644\\u0646\\u0635 \\u0644\\u0646 \\u064a\\u0628\\u062f\\u0648 \\u0645\\u0642\\u0633\\u0645\\u0627 \\u0648\\u0644\\u0627 \\u064a\\u062d\\u0648\\u064a \\u0623\\u062e\\u0637\\u0627\\u0621 \\u0644\\u063a\\u0648\\u064a\\u0629\\u060c \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649 \\u0645\\u0641\\u064a\\u062f \\u0644\\u0645\\u0635\\u0645\\u0645\\u064a \\u0627\\u0644\\u0645\\u0648\\u0627\\u0642\\u0639 \\u0639\\u0644\\u0649 \\u0648\\u062c\\u0647 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u060c \\u062d\\u064a\\u062b \\u064a\\u062d\\u062a\\u0627\\u062c \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0641\\u0649 \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u0623\\u0646 \\u064a\\u0637\\u0644\\u0639 \\u0639\\u0644\\u0649 \\u0635\\u0648\\u0631\\u0629 \\u062d\\u0642\\u064a\\u0642\\u064a\\u0629 \\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"created_at\":null,\"updated_at\":\"2023-12-26 11:22:15\",\"deleted_at\":\"2023-12-26 11:22:15\"}', '41.40.62.138', '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(247, 'audit:deleted', 2, 'App\\Models\\Service#2', 1, '{\"id\":2,\"name\":\"\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c \\u062a\\u0637\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0648\\u0627\\u0644\\u062a\\u0645\\u064a\\u0632 \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u064a\",\"description\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0647\\u0648 \\u0645\\u062b\\u0627\\u0644 \\u0644\\u0646\\u0635 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644 \\u0641\\u064a \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629\\u060c \\u0644\\u0642\\u062f \\u062a\\u0645 \\u062a\\u0648\\u0644\\u064a\\u062f \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0645\\u0646 \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649\\u060c \\u062d\\u064a\\u062b \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0646 \\u062a\\u0648\\u0644\\u062f \\u0645\\u062b\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0623\\u0648 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062a\\u0649 \\u064a\\u0648\\u0644\\u062f\\u0647\\u0627 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642. \\u0625\\u0630\\u0627 \\u0643\\u0646\\u062a \\u062a\\u062d\\u062a\\u0627\\u062c \\u0625\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0623\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a \\u064a\\u062a\\u064a\\u062d \\u0644\\u0643 \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a \\u0643\\u0645\\u0627 \\u062a\\u0631\\u064a\\u062f\\u060c \\u0627\\u0644\\u0646\\u0635 \\u0644\\u0646 \\u064a\\u0628\\u062f\\u0648 \\u0645\\u0642\\u0633\\u0645\\u0627 \\u0648\\u0644\\u0627 \\u064a\\u062d\\u0648\\u064a \\u0623\\u062e\\u0637\\u0627\\u0621 \\u0644\\u063a\\u0648\\u064a\\u0629\\u060c \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649 \\u0645\\u0641\\u064a\\u062f \\u0644\\u0645\\u0635\\u0645\\u0645\\u064a \\u0627\\u0644\\u0645\\u0648\\u0627\\u0642\\u0639 \\u0639\\u0644\\u0649 \\u0648\\u062c\\u0647 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u060c \\u062d\\u064a\\u062b \\u064a\\u062d\\u062a\\u0627\\u062c \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0641\\u0649 \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u0623\\u0646 \\u064a\\u0637\\u0644\\u0639 \\u0639\\u0644\\u0649 \\u0635\\u0648\\u0631\\u0629 \\u062d\\u0642\\u064a\\u0642\\u064a\\u0629 \\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"created_at\":null,\"updated_at\":\"2023-12-26 11:22:15\",\"deleted_at\":\"2023-12-26 11:22:15\"}', '41.40.62.138', '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(248, 'audit:deleted', 3, 'App\\Models\\Service#3', 1, '{\"id\":3,\"name\":\"\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0648\\u062a\\u0637\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0623\\u062f\\u0627\\u0621\",\"description\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0647\\u0648 \\u0645\\u062b\\u0627\\u0644 \\u0644\\u0646\\u0635 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644 \\u0641\\u064a \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629\\u060c \\u0644\\u0642\\u062f \\u062a\\u0645 \\u062a\\u0648\\u0644\\u064a\\u062f \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0645\\u0646 \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649\\u060c \\u062d\\u064a\\u062b \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0646 \\u062a\\u0648\\u0644\\u062f \\u0645\\u062b\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0623\\u0648 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062a\\u0649 \\u064a\\u0648\\u0644\\u062f\\u0647\\u0627 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642. \\u0625\\u0630\\u0627 \\u0643\\u0646\\u062a \\u062a\\u062d\\u062a\\u0627\\u062c \\u0625\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0623\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a \\u064a\\u062a\\u064a\\u062d \\u0644\\u0643 \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a \\u0643\\u0645\\u0627 \\u062a\\u0631\\u064a\\u062f\\u060c \\u0627\\u0644\\u0646\\u0635 \\u0644\\u0646 \\u064a\\u0628\\u062f\\u0648 \\u0645\\u0642\\u0633\\u0645\\u0627 \\u0648\\u0644\\u0627 \\u064a\\u062d\\u0648\\u064a \\u0623\\u062e\\u0637\\u0627\\u0621 \\u0644\\u063a\\u0648\\u064a\\u0629\\u060c \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649 \\u0645\\u0641\\u064a\\u062f \\u0644\\u0645\\u0635\\u0645\\u0645\\u064a \\u0627\\u0644\\u0645\\u0648\\u0627\\u0642\\u0639 \\u0639\\u0644\\u0649 \\u0648\\u062c\\u0647 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u060c \\u062d\\u064a\\u062b \\u064a\\u062d\\u062a\\u0627\\u062c \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0641\\u0649 \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u0623\\u0646 \\u064a\\u0637\\u0644\\u0639 \\u0639\\u0644\\u0649 \\u0635\\u0648\\u0631\\u0629 \\u062d\\u0642\\u064a\\u0642\\u064a\\u0629 \\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"created_at\":null,\"updated_at\":\"2023-12-26 11:22:15\",\"deleted_at\":\"2023-12-26 11:22:15\"}', '41.40.62.138', '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(249, 'audit:deleted', 4, 'App\\Models\\Service#4', 1, '{\"id\":4,\"name\":\"\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c \\u062a\\u0637\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0628\\u0634\\u0631\\u064a\\u0629\",\"description\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0647\\u0648 \\u0645\\u062b\\u0627\\u0644 \\u0644\\u0646\\u0635 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644 \\u0641\\u064a \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629\\u060c \\u0644\\u0642\\u062f \\u062a\\u0645 \\u062a\\u0648\\u0644\\u064a\\u062f \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0645\\u0646 \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649\\u060c \\u062d\\u064a\\u062b \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0646 \\u062a\\u0648\\u0644\\u062f \\u0645\\u062b\\u0644 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0623\\u0648 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0625\\u0644\\u0649 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062a\\u0649 \\u064a\\u0648\\u0644\\u062f\\u0647\\u0627 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642. \\u0625\\u0630\\u0627 \\u0643\\u0646\\u062a \\u062a\\u062d\\u062a\\u0627\\u062c \\u0625\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0623\\u0643\\u0628\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a \\u064a\\u062a\\u064a\\u062d \\u0644\\u0643 \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0639\\u062f\\u062f \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a \\u0643\\u0645\\u0627 \\u062a\\u0631\\u064a\\u062f\\u060c \\u0627\\u0644\\u0646\\u0635 \\u0644\\u0646 \\u064a\\u0628\\u062f\\u0648 \\u0645\\u0642\\u0633\\u0645\\u0627 \\u0648\\u0644\\u0627 \\u064a\\u062d\\u0648\\u064a \\u0623\\u062e\\u0637\\u0627\\u0621 \\u0644\\u063a\\u0648\\u064a\\u0629\\u060c \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649 \\u0645\\u0641\\u064a\\u062f \\u0644\\u0645\\u0635\\u0645\\u0645\\u064a \\u0627\\u0644\\u0645\\u0648\\u0627\\u0642\\u0639 \\u0639\\u0644\\u0649 \\u0648\\u062c\\u0647 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u060c \\u062d\\u064a\\u062b \\u064a\\u062d\\u062a\\u0627\\u062c \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0641\\u0649 \\u0643\\u062b\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646 \\u0623\\u0646 \\u064a\\u0637\\u0644\\u0639 \\u0639\\u0644\\u0649 \\u0635\\u0648\\u0631\\u0629 \\u062d\\u0642\\u064a\\u0642\\u064a\\u0629 \\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"created_at\":null,\"updated_at\":\"2023-12-26 11:22:15\",\"deleted_at\":\"2023-12-26 11:22:15\"}', '41.40.62.138', '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(250, 'audit:deleted', 5, 'App\\Models\\Service#5', 1, '{\"id\":5,\"name\":\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629\",\"description\":\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629 \\u0645\\u0628\\u0633\\u0637\\u0647 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0642\\u0637\\u0627\\u0639\\u0627\\u062a \\u0627\\u0644\\u062e\\u062f\\u0645\\u064a\\u0629\",\"created_at\":\"2023-12-18 11:18:34\",\"updated_at\":\"2023-12-26 11:22:15\",\"deleted_at\":\"2023-12-26 11:22:15\"}', '41.40.62.138', '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(251, 'audit:created', 7, 'App\\Models\\Service#7', 1, '{\"name\":\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629\",\"description\":\"\\u0627\\u0644\\u0648\\u0635\\u0641\",\"updated_at\":\"2023-12-26 11:22:35\",\"created_at\":\"2023-12-26 11:22:35\",\"id\":7}', '41.40.62.138', '2023-12-26 18:22:35', '2023-12-26 18:22:35'),
(252, 'audit:created', 8, 'App\\Models\\Service#8', 1, '{\"name\":\"\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631 \\u0627\\u062c\\u0646\\u0628\\u064a\",\"description\":\"\\u0627\\u0644\\u0648\\u0635\\u0641\",\"updated_at\":\"2023-12-26 11:22:55\",\"created_at\":\"2023-12-26 11:22:55\",\"id\":8}', '41.40.62.138', '2023-12-26 18:22:55', '2023-12-26 18:22:55'),
(253, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"dub7caBT93x7HQgqI23LRquJluNxexUqKxgIt652qGnPc4Tq3EOe5fGLqzHT\"}', '41.40.62.138', '2023-12-26 18:23:23', '2023-12-26 18:23:23'),
(254, 'audit:created', 44, 'App\\Models\\User#44', NULL, '{\"name\":\"Peter Simmons\",\"email\":\"bizag@mailinator.com\",\"phone_number\":\"+1 (729) 168-8062\",\"user_type\":\"client\",\"updated_at\":\"2023-12-26 11:24:07\",\"created_at\":\"2023-12-26 11:24:07\",\"id\":44}', '41.40.62.138', '2023-12-26 18:24:07', '2023-12-26 18:24:07'),
(255, 'audit:created', 36, 'App\\Models\\RequestService#36', NULL, '{\"user_id\":44,\"service_id\":\"7\",\"status\":\"pending\",\"updated_at\":\"2023-12-26 11:24:07\",\"created_at\":\"2023-12-26 11:24:07\",\"id\":36,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '41.40.62.138', '2023-12-26 18:24:07', '2023-12-26 18:24:07'),
(256, 'audit:updated', 36, 'App\\Models\\RequestService#36', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-26 11:25:05\"}', '41.40.62.138', '2023-12-26 18:25:05', '2023-12-26 18:25:05'),
(257, 'audit:updated', 36, 'App\\Models\\RequestService#36', 1, '{\"cost_1\":\"300\",\"cost_2\":\"500\",\"start_date\":\"2023-12-26\",\"end_date\":\"2023-12-27\",\"updated_at\":\"2023-12-26 11:26:22\"}', '41.40.62.138', '2023-12-26 18:26:22', '2023-12-26 18:26:22'),
(258, 'audit:updated', 36, 'App\\Models\\RequestService#36', 44, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-26 11:27:02\"}', '41.40.62.138', '2023-12-26 18:27:02', '2023-12-26 18:27:02'),
(259, 'audit:updated', 36, 'App\\Models\\RequestService#36', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-12-26 11:28:09\",\"consultant_id\":\"6\"}', '41.40.62.138', '2023-12-26 18:28:09', '2023-12-26 18:28:09'),
(260, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"i3xDkhyzqtl3w1PL7JMhl86jLb4IT7rwDGtOXixWHZjL4BNvxDBXelHk6DM3\"}', '41.40.62.138', '2023-12-26 18:37:31', '2023-12-26 18:37:31'),
(261, 'audit:deleted', 7, 'App\\Models\\Service#7', 1, '{\"id\":7,\"name\":\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629\",\"description\":\"\\u0627\\u0644\\u0648\\u0635\\u0641\",\"created_at\":\"2023-12-26 11:22:35\",\"updated_at\":\"2023-12-26 12:04:40\",\"deleted_at\":\"2023-12-26 12:04:40\"}', '41.40.62.138', '2023-12-26 19:04:40', '2023-12-26 19:04:40'),
(262, 'audit:deleted', 8, 'App\\Models\\Service#8', 1, '{\"id\":8,\"name\":\"\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631 \\u0627\\u062c\\u0646\\u0628\\u064a\",\"description\":\"\\u0627\\u0644\\u0648\\u0635\\u0641\",\"created_at\":\"2023-12-26 11:22:55\",\"updated_at\":\"2023-12-26 12:04:40\",\"deleted_at\":\"2023-12-26 12:04:40\"}', '41.40.62.138', '2023-12-26 19:04:40', '2023-12-26 19:04:40'),
(263, 'audit:created', 9, 'App\\Models\\Service#9', 1, '{\"name\":\"\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0629\",\"description\":\"\\u0648\\u0635\\u0641\",\"updated_at\":\"2023-12-26 12:05:34\",\"created_at\":\"2023-12-26 12:05:34\",\"id\":9}', '41.40.62.138', '2023-12-26 19:05:34', '2023-12-26 19:05:34'),
(264, 'audit:created', 45, 'App\\Models\\User#45', NULL, '{\"name\":\"Vernon Hopkins\",\"email\":\"sybytu@mailinator.com\",\"phone_number\":\"+1 (684) 569-7631\",\"user_type\":\"client\",\"client_type\":\"individual\",\"national_num\":null,\"updated_at\":\"2023-12-26 14:58:04\",\"created_at\":\"2023-12-26 14:58:04\",\"id\":45,\"commerical_record\":null,\"media\":[]}', '41.40.62.138', '2023-12-26 21:58:04', '2023-12-26 21:58:04'),
(265, 'audit:created', 46, 'App\\Models\\User#46', NULL, '{\"name\":\"Baxter Leon\",\"email\":\"somuje@mailinator.com\",\"phone_number\":\"+1 (385) 647-4639\",\"user_type\":\"client\",\"client_type\":\"individual\",\"national_num\":null,\"updated_at\":\"2023-12-26 14:59:18\",\"created_at\":\"2023-12-26 14:59:18\",\"id\":46,\"commerical_record\":null,\"media\":[]}', '41.40.62.138', '2023-12-26 21:59:18', '2023-12-26 21:59:18'),
(266, 'audit:created', 37, 'App\\Models\\RequestService#37', NULL, '{\"user_id\":46,\"service_id\":\"9\",\"status\":\"pending\",\"updated_at\":\"2023-12-26 14:59:18\",\"created_at\":\"2023-12-26 14:59:18\",\"id\":37,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '41.40.62.138', '2023-12-26 21:59:18', '2023-12-26 21:59:18'),
(267, 'audit:created', 47, 'App\\Models\\User#47', NULL, '{\"name\":\"Roth Stanton\",\"email\":\"faqur@mailinator.com\",\"phone_number\":\"+1 (489) 622-2413\",\"user_type\":\"client\",\"client_type\":\"company\",\"national_num\":\"ewqr\",\"updated_at\":\"2023-12-26 14:59:32\",\"created_at\":\"2023-12-26 14:59:32\",\"id\":47,\"commerical_record\":null,\"media\":[]}', '41.40.62.138', '2023-12-26 21:59:32', '2023-12-26 21:59:32'),
(268, 'audit:created', 38, 'App\\Models\\RequestService#38', NULL, '{\"user_id\":47,\"service_id\":\"9\",\"status\":\"pending\",\"updated_at\":\"2023-12-26 14:59:33\",\"created_at\":\"2023-12-26 14:59:33\",\"id\":38,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '41.40.62.138', '2023-12-26 21:59:33', '2023-12-26 21:59:33'),
(269, 'audit:updated', 38, 'App\\Models\\RequestService#38', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-26 15:37:24\"}', '31.166.60.163', '2023-12-26 22:37:24', '2023-12-26 22:37:24'),
(270, 'audit:updated', 38, 'App\\Models\\RequestService#38', 1, '{\"cost_1\":\"0\",\"cost_2\":\"0\",\"start_date\":\"2023-12-13\",\"end_date\":\"2024-01-06\",\"updated_at\":\"2023-12-26 15:39:25\"}', '31.166.60.163', '2023-12-26 22:39:25', '2023-12-26 22:39:25'),
(271, 'audit:created', 48, 'App\\Models\\User#48', NULL, '{\"name\":\"noura\",\"email\":\"nouraa@hotmail.com\",\"phone_number\":\"0504915222\",\"user_type\":\"client\",\"client_type\":\"individual\",\"national_num\":null,\"updated_at\":\"2023-12-26 15:56:37\",\"created_at\":\"2023-12-26 15:56:37\",\"id\":48,\"commerical_record\":null,\"media\":[]}', '31.166.60.163', '2023-12-26 22:56:37', '2023-12-26 22:56:37'),
(272, 'audit:created', 39, 'App\\Models\\RequestService#39', NULL, '{\"user_id\":48,\"service_id\":\"9\",\"status\":\"pending\",\"updated_at\":\"2023-12-26 15:56:37\",\"created_at\":\"2023-12-26 15:56:37\",\"id\":39,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '31.166.60.163', '2023-12-26 22:56:37', '2023-12-26 22:56:37'),
(273, 'audit:updated', 39, 'App\\Models\\RequestService#39', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-26 15:58:08\"}', '31.166.60.163', '2023-12-26 22:58:08', '2023-12-26 22:58:08'),
(274, 'audit:updated', 39, 'App\\Models\\RequestService#39', 1, '{\"cost_1\":\"0\",\"cost_2\":\"0\",\"start_date\":\"2023-12-11\",\"end_date\":\"2024-01-06\",\"updated_at\":\"2023-12-26 15:59:56\"}', '31.166.60.163', '2023-12-26 22:59:56', '2023-12-26 22:59:56'),
(275, 'audit:updated', 39, 'App\\Models\\RequestService#39', 48, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-26 16:00:36\"}', '31.166.60.163', '2023-12-26 23:00:36', '2023-12-26 23:00:36');
INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(276, 'audit:updated', 39, 'App\\Models\\RequestService#39', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-12-26 16:05:53\",\"consultant_id\":\"10\"}', '31.166.60.163', '2023-12-26 23:05:53', '2023-12-26 23:05:53'),
(277, 'audit:updated', 39, 'App\\Models\\RequestService#39', 1, '{\"stages\":\"cost_2_pending\",\"done_time\":\"2023-12-26 16:11:05\",\"updated_at\":\"2023-12-26 16:11:05\"}', '31.166.60.163', '2023-12-26 23:11:05', '2023-12-26 23:11:05'),
(278, 'audit:updated', 39, 'App\\Models\\RequestService#39', 1, '{\"stages\":\"delivered\",\"updated_at\":\"2023-12-26 16:14:05\"}', '31.166.60.163', '2023-12-26 23:14:05', '2023-12-26 23:14:05'),
(279, 'audit:updated', 39, 'App\\Models\\RequestService#39', 1, '{\"stages\":\"done\",\"updated_at\":\"2023-12-26 16:15:18\"}', '31.166.60.163', '2023-12-26 23:15:18', '2023-12-26 23:15:18'),
(280, 'audit:created', 49, 'App\\Models\\User#49', NULL, '{\"name\":\"\\u0627\\u0628\\u0631\\u0627\\u0647\\u064a\\u064533\",\"email\":\"admin444@admin.com\",\"phone_number\":\"05843484447\",\"user_type\":\"client\",\"client_type\":\"individual\",\"national_num\":null,\"updated_at\":\"2023-12-27 06:22:36\",\"created_at\":\"2023-12-27 06:22:36\",\"id\":49,\"commerical_record\":null,\"media\":[]}', '168.149.61.138', '2023-12-27 13:22:36', '2023-12-27 13:22:36'),
(281, 'audit:created', 40, 'App\\Models\\RequestService#40', NULL, '{\"user_id\":49,\"service_id\":\"9\",\"status\":\"pending\",\"updated_at\":\"2023-12-27 06:22:36\",\"created_at\":\"2023-12-27 06:22:36\",\"id\":40,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '168.149.61.138', '2023-12-27 13:22:36', '2023-12-27 13:22:36'),
(282, 'audit:updated', 40, 'App\\Models\\RequestService#40', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-27 06:28:10\"}', '168.149.61.138', '2023-12-27 13:28:10', '2023-12-27 13:28:10'),
(283, 'audit:updated', 40, 'App\\Models\\RequestService#40', 1, '{\"cost_1\":\"2\",\"cost_2\":\"2\",\"start_date\":\"2023-12-15\",\"end_date\":\"2023-12-07\",\"updated_at\":\"2023-12-27 06:29:41\"}', '168.149.61.138', '2023-12-27 13:29:41', '2023-12-27 13:29:41'),
(284, 'audit:updated', 40, 'App\\Models\\RequestService#40', 49, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-27 06:29:59\"}', '168.149.61.138', '2023-12-27 13:29:59', '2023-12-27 13:29:59'),
(285, 'audit:created', 10, 'App\\Models\\Service#10', 1, '{\"name\":\"\\u0646\\u0642\\u0644 \\u0643\\u0641\\u0627\\u0644\\u0629\",\"description\":\"\\u0646\\u0642\\u0644 \\u0643\\u0641\\u0627\\u0644\\u0629\",\"updated_at\":\"2023-12-27 06:37:36\",\"created_at\":\"2023-12-27 06:37:36\",\"id\":10}', '168.149.61.138', '2023-12-27 13:37:36', '2023-12-27 13:37:36'),
(286, 'audit:created', 50, 'App\\Models\\User#50', NULL, '{\"name\":\"\\u0643\\u0641\\u0627\\u0644\\u0629\",\"email\":\"ad444@admin.com\",\"phone_number\":\"41444\",\"user_type\":\"client\",\"client_type\":\"individual\",\"national_num\":null,\"updated_at\":\"2023-12-27 06:43:25\",\"created_at\":\"2023-12-27 06:43:25\",\"id\":50,\"commerical_record\":null,\"media\":[]}', '168.149.61.138', '2023-12-27 13:43:25', '2023-12-27 13:43:25'),
(287, 'audit:created', 41, 'App\\Models\\RequestService#41', NULL, '{\"user_id\":50,\"service_id\":\"10\",\"status\":\"pending\",\"updated_at\":\"2023-12-27 06:43:25\",\"created_at\":\"2023-12-27 06:43:25\",\"id\":41,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '168.149.61.138', '2023-12-27 13:43:25', '2023-12-27 13:43:25'),
(288, 'audit:updated', 41, 'App\\Models\\RequestService#41', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-27 06:45:26\"}', '168.149.61.138', '2023-12-27 13:45:26', '2023-12-27 13:45:26'),
(289, 'audit:updated', 41, 'App\\Models\\RequestService#41', 1, '{\"cost_1\":\"3\",\"cost_2\":\"3\",\"start_date\":\"2023-12-22\",\"end_date\":\"2023-12-14\",\"updated_at\":\"2023-12-27 06:45:53\"}', '168.149.61.138', '2023-12-27 13:45:53', '2023-12-27 13:45:53'),
(290, 'audit:updated', 41, 'App\\Models\\RequestService#41', 50, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-27 06:46:41\"}', '168.149.61.138', '2023-12-27 13:46:41', '2023-12-27 13:46:41'),
(291, 'audit:created', 51, 'App\\Models\\User#51', NULL, '{\"name\":\"ahmadf\",\"email\":\"nojura@gmail.com\",\"phone_number\":\"0507225545\",\"user_type\":\"client\",\"client_type\":\"individual\",\"national_num\":null,\"updated_at\":\"2023-12-27 11:37:48\",\"created_at\":\"2023-12-27 11:37:48\",\"id\":51,\"commerical_record\":null,\"media\":[]}', '168.149.61.138', '2023-12-27 18:37:48', '2023-12-27 18:37:48'),
(292, 'audit:created', 42, 'App\\Models\\RequestService#42', NULL, '{\"user_id\":51,\"service_id\":\"9\",\"status\":\"pending\",\"updated_at\":\"2023-12-27 11:37:48\",\"created_at\":\"2023-12-27 11:37:48\",\"id\":42,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '168.149.61.138', '2023-12-27 18:37:48', '2023-12-27 18:37:48'),
(293, 'audit:updated', 42, 'App\\Models\\RequestService#42', 1, '{\"status\":\"accept\",\"updated_at\":\"2023-12-27 11:38:20\"}', '168.149.61.138', '2023-12-27 18:38:20', '2023-12-27 18:38:20'),
(294, 'audit:updated', 42, 'App\\Models\\RequestService#42', 1, '{\"cost_1\":\"1\",\"cost_2\":\"2\",\"start_date\":\"2023-12-04\",\"end_date\":\"2023-12-31\",\"updated_at\":\"2023-12-27 11:39:39\"}', '168.149.61.138', '2023-12-27 18:39:39', '2023-12-27 18:39:39'),
(295, 'audit:updated', 42, 'App\\Models\\RequestService#42', 51, '{\"contract_accept\":1,\"stages\":\"cost_1_pending\",\"updated_at\":\"2023-12-27 11:42:08\"}', '168.149.61.138', '2023-12-27 18:42:08', '2023-12-27 18:42:08'),
(296, 'audit:updated', 42, 'App\\Models\\RequestService#42', 1, '{\"stages\":\"working\",\"updated_at\":\"2023-12-27 11:43:52\",\"consultant_id\":\"6\"}', '168.149.61.138', '2023-12-27 18:43:52', '2023-12-27 18:43:52'),
(297, 'audit:created', 52, 'App\\Models\\User#52', NULL, '{\"name\":\"Reece Duncan\",\"email\":\"fuwypoh@mailinator.com\",\"phone_number\":\"+1 (873) 841-3361\",\"user_type\":\"client\",\"client_type\":\"individual\",\"national_num\":null,\"updated_at\":\"2023-12-31 02:55:58\",\"created_at\":\"2023-12-31 02:55:58\",\"id\":52,\"commerical_record\":null,\"media\":[]}', '197.56.205.159', '2023-12-31 09:55:58', '2023-12-31 09:55:58'),
(298, 'audit:created', 43, 'App\\Models\\RequestService#43', NULL, '{\"user_id\":52,\"service_id\":\"9\",\"status\":\"pending\",\"updated_at\":\"2023-12-31 02:55:58\",\"created_at\":\"2023-12-31 02:55:58\",\"id\":43,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '197.56.205.159', '2023-12-31 09:55:58', '2023-12-31 09:55:58'),
(299, 'audit:updated', 43, 'App\\Models\\RequestService#43', 1, '{\"status\":\"accept\",\"updated_at\":\"2024-01-02 11:43:16\"}', '141.164.198.131', '2024-01-02 18:43:16', '2024-01-02 18:43:16'),
(300, 'audit:created', 53, 'App\\Models\\User#53', NULL, '{\"name\":\"asil\",\"email\":\"asil@gmail.com\",\"phone_number\":\"0507885595\",\"user_type\":\"client\",\"client_type\":\"individual\",\"national_num\":null,\"updated_at\":\"2024-01-02 11:50:57\",\"created_at\":\"2024-01-02 11:50:57\",\"id\":53,\"commerical_record\":null,\"media\":[]}', '141.164.198.131', '2024-01-02 18:50:57', '2024-01-02 18:50:57'),
(301, 'audit:created', 44, 'App\\Models\\RequestService#44', NULL, '{\"user_id\":53,\"service_id\":\"10\",\"status\":\"pending\",\"updated_at\":\"2024-01-02 11:50:57\",\"created_at\":\"2024-01-02 11:50:57\",\"id\":44,\"contract\":null,\"cost_1_file\":null,\"cost_2_file\":null,\"finished_files\":[],\"finished_files_from_admin\":[],\"certificates\":[],\"media\":[]}', '141.164.198.131', '2024-01-02 18:50:57', '2024-01-02 18:50:57'),
(302, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"eoAbthyEoFJCcjGJgPqglVmBBzRtuoHOLANktfbIaZeGLgAY27bly0CiPJ57\"}', '141.164.198.131', '2024-01-02 22:32:36', '2024-01-02 22:32:36'),
(303, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"lfEHKZoQH1D1Wpoxebq7XVK4VlxYdIMkjRoCjWMcAKpmz4T1GMCzPE4PCh8o\"}', '142.154.112.150', '2024-01-03 15:58:32', '2024-01-03 15:58:32'),
(304, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"ygM1bNfBl4Y6Y2ZOJ8BlV03fkqBstb1x3166yg3yZBzv2JltW0Gpcy9ZSKaH\"}', '175.110.195.251', '2024-01-03 21:02:53', '2024-01-03 21:02:53'),
(305, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"Z3ikEv38ykknD57YXf5DuysLb8ta1XcR7eNN0HuNwSG3PcpbSglyORtvEsza\"}', '175.110.195.251', '2024-01-04 13:58:01', '2024-01-04 13:58:01'),
(306, 'audit:created', 11, 'App\\Models\\Service#11', 1, '{\"name\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0644\\u0644\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a \\u0627\\u0644\\u0641\\u0631\\u062f\\u064a\\u0629 - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u062a\\u0639\\u062f\\u064a\\u0644 (\\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u2013 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u2013 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 ) \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627 \\u062f\\u0648\\u0646 \\u0627\\u0644\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0641\\u0631\\u0648\\u0639 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629.\",\"updated_at\":\"2024-01-04 07:32:04\",\"created_at\":\"2024-01-04 07:32:04\",\"id\":11}', '175.110.195.251', '2024-01-04 14:32:04', '2024-01-04 14:32:04'),
(307, 'audit:created', 12, 'App\\Models\\Service#12', 1, '{\"name\":\"\\u0631\\u0641\\u0639 \\u0646\\u062a\\u0627\\u0626\\u062c \\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0648\\u0645\\u064a\\u0629 - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0631\\u0627\\u063a\\u0628\\u0629 \\u0628\\u0639\\u0642\\u062f \\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0627\\u062a (\\u0627\\u0644\\u0639\\u0627\\u062f\\u064a\\u0629\\u060c \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0639\\u0627\\u062f\\u064a\\u0629 ) \\u0628\\u0631\\u0641\\u0639 \\u0646\\u062a\\u0627\\u0626\\u062c , \\u0639\\u0642\\u062f \\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0648\\u062b\\u0627\\u0626\\u0642 \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629  \\u0648\\u0641\\u0642\\u0627\\u064b \\u0644\\u0623\\u062d\\u0643\\u0627\\u0645 \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a.\",\"updated_at\":\"2024-01-04 07:32:38\",\"created_at\":\"2024-01-04 07:32:38\",\"id\":12}', '175.110.195.251', '2024-01-04 14:32:38', '2024-01-04 14:32:38'),
(308, 'audit:created', 13, 'App\\Models\\Service#13', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 (\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062e\\u0644\\u064a\\u062c\\u064a) - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0627\\u0644\\u062a\\u0627\\u062c\\u0631 - \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a - \\u0642\\u0637\\u0627\\u0639 \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644\\u200b\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629\\u060c \\u064a\\u0624\\u0633\\u0633\\u0647\\u0627 \\u0634\\u062e\\u0635 \\u0648\\u0627\\u062d\\u062f \\u0623\\u0648 \\u0623\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0630\\u0648\\u064a \\u0627\\u0644\\u0635\\u0641\\u0629 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0639\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0627\\u0639\\u062a\\u0628\\u0627\\u0631\\u064a\\u0629\\u060c \\u0648\\u064a\\u0643\\u0648\\u0646 \\u0631\\u0623\\u0633 \\u0645\\u0627\\u0644\\u0647\\u0627 \\u0645\\u0642\\u0633\\u0645\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0623\\u0633\\u0647\\u0645 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u062f\\u0627\\u0648\\u0644\\u060c \\u0648\\u062a\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0648\\u062d\\u062f\\u0647\\u0627 \\u0645\\u0633\\u0624\\u0648\\u0644\\u0629 \\u0639\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0648\\u0646 \\u0648\\u0627\\u0644\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0631\\u062a\\u0628\\u0629 \\u0639\\u0644\\u064a\\u0647\\u0627 \\u0623\\u0648 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0626\\u0629 \\u0639\\u0646 \\u0646\\u0634\\u0627\\u0637\\u0647\\u0627\\u060c \\u0648\\u062a\\u0642\\u062a\\u0635\\u0631 \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645 \\u0639\\u0644\\u0649 \\u0623\\u062f\\u0627\\u0621 \\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0623\\u0633\\u0647\\u0645 \\u0627\\u0644\\u062a\\u064a \\u0627\\u0643\\u062a\\u062a\\u0628 \\u0641\\u064a\\u0647\\u0627\\u060c \\u0648\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u064a\\u062a\\u0645 \\u0645\\u0627 \\u064a\\u0644\\u064a:\\r\\n\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u062e\\u0635\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0641\\u0648\\u0631\\u064a\\u0629 (\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a).\\r\\n\\u0641\\u062a\\u062d \\u0645\\u0644\\u0641 \\u0645\\u0646\\u0634\\u0623\\u0629 \\u0644\\u062f\\u0649 \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0628\\u0634\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0644\\u0647\\u064a\\u0626\\u0629 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0648\\u0627\\u0644\\u0636\\u0631\\u064a\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0645\\u0627\\u0631\\u0643.\\r\\n\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629 \\u0644\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0644\\u062f\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0633\\u064f\\u0628\\u0644.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"updated_at\":\"2024-01-04 07:34:34\",\"created_at\":\"2024-01-04 07:34:34\",\"id\":13}', '175.110.195.251', '2024-01-04 14:34:34', '2024-01-04 14:34:34'),
(309, 'audit:created', 14, 'App\\Models\\Service#14', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0645\\u0628\\u0633\\u0637\\u0629 (\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062e\\u0644\\u064a\\u062c\\u064a) - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0627\\u0644\\u062a\\u0627\\u062c\\u0631 -\\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a -\\u0642\\u0637\\u0627\\u0639 \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644\\u200b\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0645\\u064f\\u0628\\u0633\\u0637\\u0629\\u060c \\u064a\\u0624\\u0633\\u0633\\u0647\\u0627 \\u0634\\u062e\\u0635 \\u0648\\u0627\\u062d\\u062f \\u0623\\u0648 \\u0623\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0630\\u0648\\u064a \\u0627\\u0644\\u0635\\u0641\\u0629 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0639\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0627\\u0639\\u062a\\u0628\\u0627\\u0631\\u064a\\u0629\\u060c \\u0648\\u064a\\u0643\\u0648\\u0646 \\u0631\\u0623\\u0633 \\u0645\\u0627\\u0644\\u0647\\u0627 \\u0645\\u0642\\u0633\\u0645\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0623\\u0633\\u0647\\u0645 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u062f\\u0627\\u0648\\u0644 \\u0648\\u062a\\u0633\\u0631\\u064a \\u0639\\u0644\\u064a\\u0647\\u0627 \\u0623\\u062d\\u0643\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0645\\u0627 \\u0644\\u0645 \\u064a\\u0631\\u062f \\u0628\\u0647\\u0627 \\u0646\\u0635 \\u062e\\u0627\\u0635\\u060c \\u0648\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u064a\\u062a\\u0645 \\u0645\\u0627 \\u064a\\u0644\\u064a:\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u062e\\u0635\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0641\\u0648\\u0631\\u064a\\u0629 (\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a).\\r\\n\\u0641\\u062a\\u062d \\u0645\\u0644\\u0641 \\u0645\\u0646\\u0634\\u0623\\u0629 \\u0644\\u062f\\u0649 \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0628\\u0634\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0644\\u0647\\u064a\\u0626\\u0629 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0648\\u0627\\u0644\\u0636\\u0631\\u064a\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0645\\u0627\\u0631\\u0643.\\r\\n\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629 \\u0644\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0644\\u062f\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0633\\u064f\\u0628\\u0644.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"updated_at\":\"2024-01-04 07:36:32\",\"created_at\":\"2024-01-04 07:36:32\",\"id\":14}', '175.110.195.251', '2024-01-04 14:36:32', '2024-01-04 14:36:32'),
(310, 'audit:created', 15, 'App\\Models\\Service#15', 1, '{\"name\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0642\\u062f \\u0634\\u0631\\u0643\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0642\\u0648\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\",\"updated_at\":\"2024-01-04 07:37:51\",\"created_at\":\"2024-01-04 07:37:51\",\"id\":15}', '175.110.195.251', '2024-01-04 14:37:51', '2024-01-04 14:37:51'),
(311, 'audit:created', 16, 'App\\Models\\Service#16', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u062a\\u0636\\u0627\\u0645\\u0646\\u064a\\u0629 (\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062e\\u0644\\u064a\\u062c\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u062a\\u0636\\u0627\\u0645\\u0646\\u064a\\u0629\\u060c \\u064a\\u0624\\u0633\\u0633\\u0647\\u0627 \\u0634\\u062e\\u0635\\u0627\\u0646 \\u0623\\u0648 \\u0623\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0630\\u0648\\u064a \\u0627\\u0644\\u0635\\u0641\\u0629 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0639\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0627\\u0639\\u062a\\u0628\\u0627\\u0631\\u064a\\u0629\\u061b \\u064a\\u0643\\u0648\\u0646\\u0648\\u0646 \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0646 \\u0641\\u064a\\u0647\\u0627 \\u0634\\u062e\\u0635\\u064a\\u064b\\u0627 \\u0639\\u0646 \\u062c\\u0645\\u064a\\u0639 \\u0623\\u0645\\u0648\\u0627\\u0644\\u0647\\u0645 \\u0648\\u0628\\u0627\\u0644\\u062a\\u0636\\u0627\\u0645\\u0646 \\u0639\\u0646 \\u062f\\u064a\\u0648\\u0646 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a\\u0647\\u0627\\u060c \\u0648\\u064a\\u0643\\u062a\\u0633\\u0628 \\u0627\\u0644\\u0634\\u0631\\u064a\\u0643 \\u0641\\u064a\\u0647\\u0627 \\u0635\\u0641\\u0629 \\u0627\\u0644\\u062a\\u0627\\u062c\\u0631\\u060c \\u0648\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u064a\\u062a\\u0645 \\u0645\\u0627 \\u064a\\u0644\\u064a:\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u062e\\u0635\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0641\\u0648\\u0631\\u064a\\u0629 (\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a).\\r\\n\\u0641\\u062a\\u062d \\u0645\\u0644\\u0641 \\u0645\\u0646\\u0634\\u0623\\u0629 \\u0644\\u062f\\u0649 \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0628\\u0634\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0644\\u0647\\u064a\\u0626\\u0629 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0648\\u0627\\u0644\\u0636\\u0631\\u064a\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0645\\u0627\\u0631\\u0643.\\r\\n\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629 \\u0644\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0644\\u062f\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0633\\u064f\\u0628\\u0644.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\",\"updated_at\":\"2024-01-04 07:38:52\",\"created_at\":\"2024-01-04 07:38:52\",\"id\":16}', '175.110.195.251', '2024-01-04 14:38:52', '2024-01-04 14:38:52'),
(312, 'audit:created', 17, 'App\\Models\\Service#17', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u062a\\u0648\\u0635\\u064a\\u0629 \\u0628\\u0633\\u064a\\u0637\\u0629 (\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062e\\u0644\\u064a\\u062c\\u064a) - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u062a\\u0648\\u0635\\u064a\\u0629 \\u0628\\u0633\\u064a\\u0637\\u0629\\u060c \\u062a\\u062a\\u0643\\u0648\\u0646 \\u0645\\u0646 \\u0641\\u0631\\u064a\\u0642\\u064a\\u0646 (\\u0627\\u0644\\u0645\\u062a\\u0636\\u0627\\u0645\\u0646) \\u0648\\u0647\\u0648 \\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644 \\u0639\\u0646 \\u062f\\u064a\\u0648\\u0646 \\u0648\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\\u060c \\u0648(\\u0627\\u0644\\u0645\\u0648\\u0635\\u064a) \\u0648\\u0647\\u0648 \\u0627\\u0644\\u0630\\u064a \\u0644\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0645\\u0633\\u0624\\u0648\\u0644\\u064b\\u0627 \\u0625\\u0644\\u0627 \\u0641\\u064a \\u062d\\u062f\\u0648\\u062f \\u062d\\u0635\\u062a\\u0647 \\u0641\\u064a \\u0631\\u0623\\u0633 \\u0627\\u0644\\u0645\\u0627\\u0644\\u060c \\u0648\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u064a\\u062a\\u0645 \\u0645\\u0627 \\u064a\\u0644\\u064a:\\r\\n\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u062e\\u0635\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0641\\u0648\\u0631\\u064a\\u0629 (\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a).\\r\\n\\u0641\\u062a\\u062d \\u0645\\u0644\\u0641 \\u0645\\u0646\\u0634\\u0623\\u0629 \\u0644\\u062f\\u0649 \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0628\\u0634\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0644\\u0647\\u064a\\u0626\\u0629 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0648\\u0627\\u0644\\u0636\\u0631\\u064a\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0645\\u0627\\u0631\\u0643.\\r\\n\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629 \\u0644\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0644\\u062f\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0633\\u064f\\u0628\\u0644.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"updated_at\":\"2024-01-04 07:39:59\",\"created_at\":\"2024-01-04 07:39:59\",\"id\":17}', '175.110.195.251', '2024-01-04 14:39:59', '2024-01-04 14:39:59'),
(313, 'audit:updated', 17, 'App\\Models\\Service#17', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u062a\\u0648\\u0635\\u064a\\u0629 \\u0628\\u0633\\u064a\\u0637\\u0629 (\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062e\\u0644\\u064a\\u062c\\u064a) - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"updated_at\":\"2024-01-04 07:40:59\"}', '175.110.195.251', '2024-01-04 14:40:59', '2024-01-04 14:40:59'),
(314, 'audit:updated', 16, 'App\\Models\\Service#16', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u062a\\u0636\\u0627\\u0645\\u0646\\u064a\\u0629 (\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062e\\u0644\\u064a\\u062c\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"updated_at\":\"2024-01-04 07:41:11\"}', '175.110.195.251', '2024-01-04 14:41:11', '2024-01-04 14:41:11'),
(315, 'audit:created', 18, 'App\\Models\\Service#18', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0630\\u0627\\u062a \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0629 \\u0645\\u062d\\u062f\\u0648\\u062f\\u0629 (\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0623\\u0648 \\u0627\\u0644\\u062e\\u0644\\u064a\\u062c\\u064a) -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0630\\u0627\\u062a \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0629 \\u0645\\u062d\\u062f\\u0648\\u062f\\u0629\\u060c \\u064a\\u0624\\u0633\\u0633\\u0647\\u0627 \\u0634\\u062e\\u0635 \\u0648\\u0627\\u062d\\u062f \\u0623\\u0648 \\u0623\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0630\\u0648\\u064a \\u0627\\u0644\\u0635\\u0641\\u0629 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0639\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0627\\u0639\\u062a\\u0628\\u0627\\u0631\\u064a\\u0629\\u060c \\u0648\\u062a\\u0639\\u062f \\u0630\\u0645\\u062a\\u0647\\u0627 \\u0645\\u0633\\u062a\\u0642\\u0644\\u0629 \\u0639\\u0646 \\u0627\\u0644\\u0630\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629 \\u0644\\u0643\\u0644 \\u0634\\u0631\\u064a\\u0643 \\u0641\\u064a\\u0647\\u0627 \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0627\\u0644\\u0643 \\u0644\\u0647\\u0627\\u060c \\u0648\\u062a\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0648\\u062d\\u062f\\u0647\\u0627 \\u0645\\u0633\\u0624\\u0648\\u0644\\u0629 \\u0639\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0648\\u0646 \\u0648\\u0627\\u0644\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0631\\u062a\\u0628\\u0629 \\u0639\\u0644\\u064a\\u0647\\u0627 \\u0623\\u0648 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0626\\u0629 \\u0639\\u0646 \\u0646\\u0634\\u0627\\u0637\\u0647\\u0627\\u060c \\u0648\\u0644\\u0627 \\u064a\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0644\\u0643 \\u0644\\u0647\\u0627 \\u0648\\u0644\\u0627 \\u0627\\u0644\\u0634\\u0631\\u064a\\u0643 \\u0641\\u064a\\u0647\\u0627 \\u0645\\u0633\\u0624\\u0648\\u0644\\u064b\\u0627 \\u0639\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062f\\u064a\\u0648\\u0646 \\u0648\\u0627\\u0644\\u0627\\u0644\\u062a\\u0632\\u0627\\u0645\\u0627\\u062a \\u0625\\u0644\\u0627 \\u0628\\u0642\\u062f\\u0631 \\u062d\\u0635\\u062a\\u0647 \\u0641\\u064a \\u0631\\u0623\\u0633 \\u0627\\u0644\\u0645\\u0627\\u0644\\u060c \\u0648\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u064a\\u062a\\u0645 \\u0645\\u0627 \\u064a\\u0644\\u064a:\\r\\n\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u062e\\u0635\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0641\\u0648\\u0631\\u064a\\u0629 (\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a).\\r\\n\\u0641\\u062a\\u062d \\u0645\\u0644\\u0641 \\u0645\\u0646\\u0634\\u0623\\u0629 \\u0644\\u062f\\u0649 \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0628\\u0634\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0644\\u0647\\u064a\\u0626\\u0629 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0648\\u0627\\u0644\\u0636\\u0631\\u064a\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0645\\u0627\\u0631\\u0643.\\r\\n\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629 \\u0644\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0644\\u062f\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0633\\u064f\\u0628\\u0644.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"updated_at\":\"2024-01-04 07:41:34\",\"created_at\":\"2024-01-04 07:41:34\",\"id\":18}', '175.110.195.251', '2024-01-04 14:41:34', '2024-01-04 14:41:34'),
(316, 'audit:created', 19, 'App\\Models\\Service#19', 1, '{\"name\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0646\\u0638\\u0627\\u0645 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0645\\u0628\\u0633\\u0637\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0633\\u0627\\u0633 \\u0644\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0628\\u0633\\u0637\\u0629.\",\"updated_at\":\"2024-01-04 07:42:53\",\"created_at\":\"2024-01-04 07:42:53\",\"id\":19}', '175.110.195.251', '2024-01-04 14:42:53', '2024-01-04 14:42:53'),
(317, 'audit:created', 20, 'App\\Models\\Service#20', 1, '{\"name\":\"\\u062a\\u062d\\u0648\\u0644 \\u0645\\u0646 \\u0634\\u0631\\u0643\\u0629 \\u0625\\u0644\\u0649 \\u0645\\u0624\\u0633\\u0633\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062a\\u062d\\u0648\\u0644 \\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629 ( \\u0627\\u0644\\u0633\\u062c\\u0644 ) \\u0645\\u0646 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0649 \\u0645\\u0624\\u0633\\u0633\\u0629.\",\"updated_at\":\"2024-01-04 07:43:44\",\"created_at\":\"2024-01-04 07:43:44\",\"id\":20}', '175.110.195.251', '2024-01-04 14:43:44', '2024-01-04 14:43:44'),
(318, 'audit:created', 21, 'App\\Models\\Service#21', 1, '{\"name\":\"\\u062a\\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0644\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0633\\u062c\\u0644\\u0627\\u062a\\u0643 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0643\\u064a\\u0627\\u0646\\u0627\\u062a \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627 \\u0639\\u062f\\u0627 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645\\u0629\\u060c \\u0648\\u0630\\u0644\\u0643 \\u0644\\u0645\\u062a\\u0627\\u0628\\u0639\\u0629 \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a.\",\"updated_at\":\"2024-01-04 07:44:43\",\"created_at\":\"2024-01-04 07:44:43\",\"id\":21}', '175.110.195.251', '2024-01-04 14:44:43', '2024-01-04 14:44:43'),
(319, 'audit:created', 22, 'App\\Models\\Service#22', 1, '{\"name\":\"\\u0645\\u0648\\u0627\\u0621\\u0645\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u064a \\u062e\\u062f\\u0645\\u0629 \\u062a\\u0645\\u0643\\u0646 \\u0645\\u0642\\u062f\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0628\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0642\\u062f \\u062a\\u0623\\u0633\\u064a\\u0633 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0628\\u0645\\u0627 \\u064a\\u062a\\u0646\\u0627\\u0633\\u0628 \\u0645\\u0639 \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0635\\u0627\\u062f\\u0631 \\u0628\\u0627\\u0644\\u0645\\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0645\\u0644\\u0643\\u064a \\u0631\\u0642\\u0645 (\\u0645\\/132) \\u0648\\u062a\\u0627\\u0631\\u064a\\u062e01\\/12\\/1443\\u0647\\u0640.\",\"updated_at\":\"2024-01-04 07:45:30\",\"created_at\":\"2024-01-04 07:45:30\",\"id\":22}', '175.110.195.251', '2024-01-04 14:45:30', '2024-01-04 14:45:30'),
(320, 'audit:created', 23, 'App\\Models\\Service#23', 1, '{\"name\":\"\\u0642\\u0631\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0627\\u0621 \\u0628\\u0627\\u0644\\u0639\\u062f\\u0648\\u0644 \\u0639\\u0646 \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633 - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u0625\\u0644\\u063a\\u0627\\u0621 \\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\",\"updated_at\":\"2024-01-04 07:47:28\",\"created_at\":\"2024-01-04 07:47:28\",\"id\":23}', '175.110.195.251', '2024-01-04 14:47:28', '2024-01-04 14:47:28'),
(321, 'audit:created', 24, 'App\\Models\\Service#24', 1, '{\"name\":\"\\u0642\\u0631\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0627\\u0621 \\u0628\\u0625\\u0646\\u062f\\u0645\\u0627\\u062c \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0627\\u0646\\u062f\\u0645\\u0627\\u062c \\u0634\\u0631\\u0643\\u062a\\u064a\\u0646 \\u0644\\u062a\\u0635\\u0628\\u062d \\u0634\\u0631\\u0643\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629.\",\"updated_at\":\"2024-01-04 07:48:10\",\"created_at\":\"2024-01-04 07:48:10\",\"id\":24}', '175.110.195.251', '2024-01-04 14:48:10', '2024-01-04 14:48:10'),
(322, 'audit:created', 25, 'App\\Models\\Service#25', 1, '{\"name\":\"\\u062a\\u0635\\u0641\\u064a\\u0629 \\u0634\\u0631\\u0643\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0642\\u0631\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0627\\u0621 \\u0628\\u062a\\u0635\\u0641\\u064a\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\",\"updated_at\":\"2024-01-04 07:49:13\",\"created_at\":\"2024-01-04 07:49:13\",\"id\":25}', '175.110.195.251', '2024-01-04 14:49:13', '2024-01-04 14:49:13'),
(323, 'audit:created', 26, 'App\\Models\\Service#26', 1, '{\"name\":\"\\u062a\\u0631\\u062c\\u0645\\u0629 \\u0639\\u0642\\u0648\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0631\\u062c\\u0645\\u0629 \\u0639\\u0642\\u062f \\u062a\\u0623\\u0633\\u064a\\u0633 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\",\"updated_at\":\"2024-01-04 07:49:55\",\"created_at\":\"2024-01-04 07:49:55\",\"id\":26}', '175.110.195.251', '2024-01-04 14:49:55', '2024-01-04 14:49:55'),
(324, 'audit:created', 27, 'App\\Models\\Service#27', 1, '{\"name\":\"\\u062a\\u062d\\u0648\\u0644 \\u0627\\u0644\\u0643\\u064a\\u0627\\u0646 \\u0627\\u0644\\u0642\\u0627\\u0646\\u0648\\u0646\\u064a \\u0644\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0625\\u0644\\u0649 \\u0643\\u064a\\u0627\\u0646 \\u0622\\u062e\\u0631 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0642\\u0631\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0627\\u0621 \\u0628\\u062a\\u062d\\u0648\\u064a\\u0644 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0625\\u0644\\u0649 \\u0643\\u064a\\u0627\\u0646 \\u0622\\u062e\\u0631\",\"updated_at\":\"2024-01-04 07:50:43\",\"created_at\":\"2024-01-04 07:50:43\",\"id\":27}', '175.110.195.251', '2024-01-04 14:50:43', '2024-01-04 14:50:43'),
(325, 'audit:created', 28, 'App\\Models\\Service#28', 1, '{\"name\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0648 \\u062d\\u0630\\u0641 \\u0627\\u0646\\u0634\\u0637\\u0629 \\u0644\\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0642\\u0648\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\",\"updated_at\":\"2024-01-04 07:52:37\",\"created_at\":\"2024-01-04 07:52:37\",\"id\":28}', '175.110.195.251', '2024-01-04 14:52:37', '2024-01-04 14:52:37'),
(326, 'audit:created', 29, 'App\\Models\\Service#29', 1, '{\"name\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0634\\u0631\\u064a\\u0643 \\u0628\\u062e\\u0631\\u0648\\u062c \\u0627\\u0648 \\u062f\\u062e\\u0648\\u0644 \\u0634\\u0631\\u064a\\u0643 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u0642\\u062f\\u0645 \\u0644\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062d\\u0635\\u0635 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u0621 \\u0623\\u0648 \\u062f\\u062e\\u0648\\u0644 \\u0623\\u0648 \\u062e\\u0631\\u0648\\u062c \\u0634\\u0631\\u0643\\u0627\\u0621 \\u0623\\u062e\\u0631\\u064a\\u0646 \\u0628\\u0645\\u0648\\u062c\\u0628 \\u0627\\u062a\\u0641\\u0627\\u0642\\u064a\\u0629 \\u0645\\u0648\\u062b\\u0642\\u0629 \\u0628\\u064a\\u0646\\u0647\\u0645\\u060c \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0622\\u062a \\u0627\\u0644\\u0645\\u0631\\u062e\\u0635\\u0629 \\u0645\\u0646 \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631 \\u0648\\u062a\\u0631\\u063a\\u0628 \\u0628\\u0627\\u0644\\u0627\\u0646\\u062f\\u0645\\u0627\\u062c \\u0641\\u064a \\u0634\\u0631\\u0643\\u0629 \\u0623\\u062e\\u0631\\u0649 \\u0642\\u0627\\u0626\\u0645\\u0629 \\u0645\\u0646 \\u0646\\u0648\\u0639\\u0647\\u0627 \\u0623\\u0648 \\u0645\\u0646 \\u0646\\u0648\\u0639 \\u0622\\u062e\\u0631\\u060c \\u0623\\u0648 \\u0628\\u0645\\u0632\\u062c \\u0634\\u0631\\u0643\\u062a\\u064a\\u0646 \\u0623\\u0648 \\u0623\\u0643\\u062b\\u0631 \\u0644\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629.\",\"updated_at\":\"2024-01-04 07:54:56\",\"created_at\":\"2024-01-04 07:54:56\",\"id\":29}', '175.110.195.251', '2024-01-04 14:54:56', '2024-01-04 14:54:56');
INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(327, 'audit:created', 30, 'App\\Models\\Service#30', 1, '{\"name\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0631\\u0627\\u0633 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0627\\u0648 \\u0646\\u0642\\u0635 \\u0641\\u064a \\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u064a\\u062c\\u0648\\u0632 \\u0644\\u0645\\u0627\\u0644\\u0643 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0631\\u0623\\u0633 \\u0645\\u0627\\u0644 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0639\\u0646 \\u0637\\u0631\\u064a\\u0642 \\u0631\\u0641\\u0639 \\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 \\u0627\\u0644\\u0627\\u0633\\u0645\\u064a\\u0629 \\u0644\\u0644\\u062d\\u0635\\u0635 \\u0623\\u0648 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u062d\\u0635\\u0635 \\u062c\\u062f\\u064a\\u062f\\u0629. 2. \\u0644\\u0645\\u0627\\u0644\\u0643 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u0623\\u0646 \\u064a\\u0642\\u0631\\u0631 \\u062a\\u062e\\u0641\\u064a\\u0636 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u0625\\u0630\\u0627 \\u0632\\u0627\\u062f \\u0639\\u0644\\u0649 \\u062d\\u0627\\u062c\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0623\\u0648 \\u0625\\u0630\\u0627 \\u0645\\u064f\\u0646\\u064a\\u062a \\u0628\\u062e\\u0633\\u0627\\u0626\\u0631 \\u0648\\u0641\\u0642\\u0627\\u064b \\u0644\\u0644\\u0623\\u062d\\u0643\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0642\\u0631\\u0631\\u0629.\",\"updated_at\":\"2024-01-04 07:58:12\",\"created_at\":\"2024-01-04 07:58:12\",\"id\":30}', '175.110.195.251', '2024-01-04 14:58:12', '2024-01-04 14:58:12'),
(328, 'audit:created', 31, 'App\\Models\\Service#31', 1, '{\"name\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0635\\u0644\\u0627\\u062d\\u064a\\u0627\\u062a \\u0644\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0641\\u064a \\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646\\u0643 \\u0645\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0642\\u062f \\u062a\\u0623\\u0633\\u064a\\u0633 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0623\\u064a \\u0645\\u0627\\u062f\\u0629 \\u0645\\u0646 \\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0639\\u0642\\u062f.\",\"updated_at\":\"2024-01-04 08:02:20\",\"created_at\":\"2024-01-04 08:02:20\",\"id\":31}', '175.110.195.251', '2024-01-04 15:02:20', '2024-01-04 15:02:20'),
(329, 'audit:created', 32, 'App\\Models\\Service#32', 1, '{\"name\":\"\\u062a\\u062c\\u062f\\u064a\\u062f \\u0633\\u062c\\u0644 \\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0644\\u0644\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0645\\u0631\\u0627\\u0631 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a.\",\"updated_at\":\"2024-01-04 08:02:59\",\"created_at\":\"2024-01-04 08:02:59\",\"id\":32}', '175.110.195.251', '2024-01-04 15:02:59', '2024-01-04 15:02:59'),
(330, 'audit:created', 33, 'App\\Models\\Service#33', 1, '{\"name\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0644\\u0644\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a  \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0645\\u062b\\u0644 (\\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u2013 \\u0631\\u0623\\u0633 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u2013 \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646- \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0628\\u0639\\u062f \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0627\\u0633\\u0645)  \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627 \\u062f\\u0648\\u0646 \\u0627\\u0644\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0641\\u0631\\u0648\\u0639 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629.\",\"updated_at\":\"2024-01-04 08:04:16\",\"created_at\":\"2024-01-04 08:04:16\",\"id\":33}', '175.110.195.251', '2024-01-04 15:04:16', '2024-01-04 15:04:16'),
(331, 'audit:created', 34, 'App\\Models\\Service#34', 1, '{\"name\":\"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627  \\u0644\\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 .\",\"updated_at\":\"2024-01-04 08:05:04\",\"created_at\":\"2024-01-04 08:05:04\",\"id\":34}', '175.110.195.251', '2024-01-04 15:05:04', '2024-01-04 15:05:04'),
(332, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"GUDNuVS1ZK4MwGzLbiricNjxe81qw6UpI7qcsKAXHsYEFO7U2YW55BERK4aY\"}', '175.110.195.251', '2024-01-04 15:06:24', '2024-01-04 15:06:24'),
(333, 'audit:created', 35, 'App\\Models\\Service#35', 1, '{\"name\":\"\\u062a\\u062c\\u062f\\u064a\\u062f \\u0633\\u062c\\u0644 \\u062a\\u062c\\u0627\\u0631\\u064a \\u0631\\u0626\\u064a\\u0633\\u064a \\u0648\\u0641\\u0631\\u0639\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0633\\u062c\\u0644\\u0627\\u062a\\u0643 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0643\\u064a\\u0627\\u0646\\u0627\\u062a \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627 \\u0639\\u062f\\u0627 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645\\u0629\\u060c \\u0648\\u0630\\u0644\\u0643 \\u0644\\u0645\\u062a\\u0627\\u0628\\u0639\\u0629 \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a.\",\"updated_at\":\"2024-01-04 08:09:29\",\"created_at\":\"2024-01-04 08:09:29\",\"id\":35}', '175.110.195.251', '2024-01-04 15:09:29', '2024-01-04 15:09:29'),
(334, 'audit:created', 36, 'App\\Models\\Service#36', 1, '{\"name\":\"\\u0627\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0646\\u0634\\u0637\\u0629 \\u0644\\u0633\\u062c\\u0644 \\u062a\\u062c\\u0627\\u0631\\u064a \\u0631\\u0626\\u064a\\u0633\\u064a \\u0648\\u0641\\u0631\\u0639\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"1\",\"updated_at\":\"2024-01-04 08:11:37\",\"created_at\":\"2024-01-04 08:11:37\",\"id\":36}', '175.110.195.251', '2024-01-04 15:11:37', '2024-01-04 15:11:37'),
(335, 'audit:created', 37, 'App\\Models\\Service#37', 1, '{\"name\":\"\\u0623\\u064a \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0631\\u0626\\u064a\\u0633\\u064a \\u0648\\u0641\\u0631\\u0639\\u064a\",\"description\":\"1\",\"updated_at\":\"2024-01-04 08:13:53\",\"created_at\":\"2024-01-04 08:13:53\",\"id\":37}', '175.110.195.251', '2024-01-04 15:13:53', '2024-01-04 15:13:53'),
(336, 'audit:created', 38, 'App\\Models\\Service#38', 1, '{\"name\":\"\\u062d\\u062c\\u0632 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062d\\u062c\\u0632 \\u0623\\u0633\\u0645 \\u062a\\u062c\\u0627\\u0631\\u064a \\u0644\\u0645\\u062f\\u0629 60 \\u064a\\u0648\\u0645 \\u062d\\u062a\\u0649 \\u064a\\u062a\\u0645 \\u0642\\u064a\\u062f\\u0647 \\u0628\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a .\",\"updated_at\":\"2024-01-04 08:14:42\",\"created_at\":\"2024-01-04 08:14:42\",\"id\":38}', '175.110.195.251', '2024-01-04 15:14:42', '2024-01-04 15:14:42'),
(337, 'audit:created', 39, 'App\\Models\\Service#39', 1, '{\"name\":\"\\u0625\\u0641\\u0627\\u062f\\u0629 \\u0639\\u062f\\u0645 \\u0648\\u062c\\u0648\\u062f \\u0633\\u062c\\u0644 \\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0645\\u0633\\u062a\\u0646\\u062f  \\u064a\\u0641\\u064a\\u062f \\u0628\\u0639\\u062f\\u0645 \\u0648\\u062c\\u0648\\u062f \\u0623\\u064a \\u0633\\u062c\\u0644\\u0627\\u062a \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a\\u0629\",\"updated_at\":\"2024-01-04 08:15:15\",\"created_at\":\"2024-01-04 08:15:15\",\"id\":39}', '175.110.195.251', '2024-01-04 15:15:15', '2024-01-04 15:15:15'),
(338, 'audit:created', 40, 'App\\Models\\Service#40', 1, '{\"name\":\"\\u0645\\u0633\\u062a\\u062e\\u0631\\u062c \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0645\\u0633\\u062a\\u0646\\u062f \\u064a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0643\\u0627\\u0641\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0633\\u0648\\u0627\\u0621 \\u0643\\u0627\\u0646 \\u0645\\u0624\\u0633\\u0633\\u0629 \\u0623\\u0648 \\u0634\\u0631\\u0643\\u0629\",\"updated_at\":\"2024-01-04 08:15:46\",\"created_at\":\"2024-01-04 08:15:46\",\"id\":40}', '175.110.195.251', '2024-01-04 15:15:46', '2024-01-04 15:15:46'),
(339, 'audit:created', 41, 'App\\Models\\Service#41', 1, '{\"name\":\"\\u062a\\u062d\\u0648\\u0644 \\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0645\\u0646 \\u0631\\u0626\\u064a\\u0633\\u064a \\u0625\\u0644\\u0649 \\u0641\\u0631\\u0639\\u064a \\u0623\\u0648 \\u0627\\u0644\\u0639\\u0643\\u0633 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u062d\\u0648\\u0644 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0645\\u0646 \\u0631\\u0626\\u064a\\u0633\\u064a \\u0625\\u0644\\u0649  \\u0641\\u0631\\u0639\\u064a \\u0623\\u0648 \\u0627\\u0644\\u0639\\u0643\\u0633\\u200b\\r\\n\\r\\n\\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u062a\\u064a\\u0646 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\",\"updated_at\":\"2024-01-04 08:16:42\",\"created_at\":\"2024-01-04 08:16:42\",\"id\":41}', '175.110.195.251', '2024-01-04 15:16:42', '2024-01-04 15:16:42'),
(340, 'audit:created', 42, 'App\\Models\\Service#42', 1, '{\"name\":\"\\u0646\\u0634\\u0631 \\u0642\\u0631\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0627\\u062a \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0639\\u0627\\u062f\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0627\\u0644\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u0639\\u0642\\u062f \\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0629 \\u0627\\u0644\\u063a\\u064a\\u0631 \\u0627\\u0644\\u0639\\u0627\\u062f\\u064a\\u0629 \\u0648\\u0646\\u0634\\u0631 \\u0642\\u0631\\u0627\\u0631\\u0627\\u062a\\u0647\\u0627 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0644\\u0642\\u0629 \\u0628\\u0627\\u0644\\u0627\\u0646\\u062f\\u0645\\u0627\\u062c \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0635\\u0641\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0642\\u0633\\u064a\\u0645 \\u0623\\u0645\\u0627 \\u0627\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0645\\u062a\\u0639\\u0644\\u0642\\u0629 \\u0628\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633 \\u0633\\u064a\\u062a\\u0645 \\u0646\\u0634\\u0631\\u0647\\u0627 \\u0645\\u0639 \\u0637\\u0644\\u0628 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\",\"updated_at\":\"2024-01-04 08:17:15\",\"created_at\":\"2024-01-04 08:17:15\",\"id\":42}', '175.110.195.251', '2024-01-04 15:17:15', '2024-01-04 15:17:15'),
(341, 'audit:created', 43, 'App\\Models\\Service#43', 1, '{\"name\":\"\\u0625\\u062d\\u0627\\u0637\\u0629 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0629-\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0631\\u0627\\u063a\\u0628\\u0629 \\u0628\\u0639\\u0642\\u062f \\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0627\\u062a (\\u0627\\u0644\\u0639\\u0627\\u062f\\u064a\\u0629\\u060c \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0639\\u0627\\u062f\\u064a\\u0629 \\u0625\\u062d\\u0627\\u0637\\u0629 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0628\\u0639\\u0642\\u062f \\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0629 \\u0648\\u0630\\u0644\\u0643 \\u0628\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627\\u060c \\u0639\\u0644\\u0649 \\u0623\\u0646 \\u064a\\u062a\\u0645 \\u062a\\u0632\\u0648\\u064a\\u062f \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0628\\u0646\\u062a\\u0627\\u0626\\u062c \\u0639\\u0642\\u062f \\u0627\\u0644\\u062c\\u0645\\u0639\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0648\\u062b\\u0627\\u0626\\u0642 \\u0627\\u0644\\u0645\\u0637\\u0644\\u0648\\u0628\\u0629  \\u0648\\u0641\\u0642\\u0627\\u064b \\u0644\\u0623\\u062d\\u0643\\u0627\\u0645 \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a.\",\"updated_at\":\"2024-01-04 08:17:44\",\"created_at\":\"2024-01-04 08:17:44\",\"id\":43}', '175.110.195.251', '2024-01-04 15:17:44', '2024-01-04 15:17:44'),
(342, 'audit:created', 44, 'App\\Models\\Service#44', 1, '{\"name\":\"\\u0637\\u0644\\u0628 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0642\\u064a\\u062f \\u0648\\u0643\\u0627\\u0644\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629- \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0651\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0641\\u064a \\u0628\\u0646\\u0648\\u062f \\u0627\\u0644\\u0639\\u0642\\u062f \\u0633\\u0648\\u0627\\u0621 \\u0643\\u0646\\u062a \\u0627\\u0644\\u0648\\u0643\\u064a\\u0644 \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0648\\u0643\\u0644 \\u0628\\u0627\\u062a\\u0641\\u0627\\u0642 \\u0627\\u0644\\u0637\\u0631\\u0641\\u064a\\u0646.\",\"updated_at\":\"2024-01-04 08:18:10\",\"created_at\":\"2024-01-04 08:18:10\",\"id\":44}', '175.110.195.251', '2024-01-04 15:18:10', '2024-01-04 15:18:10'),
(343, 'audit:created', 45, 'App\\Models\\Service#45', 1, '{\"name\":\"\\u0637\\u0644\\u0628 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0642\\u064a\\u062f \\u0648\\u0643\\u0627\\u0644\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629  \\u0645\\u0646 \\u0627\\u0633\\u062a\\u0645\\u0631\\u0627\\u0631 \\u0627\\u0644\\u0648\\u0643\\u064a\\u0644 \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0648\\u0632\\u0639 \\u0641\\u064a \\u0645\\u0647\\u0627\\u0645\\u0647 \\u0627\\u0644\\u0645\\u0648\\u0643\\u0644\\u0629 \\u0625\\u0644\\u064a\\u0647 \\u0645\\u0646 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0623\\u062c\\u0646\\u0628\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629 .\",\"updated_at\":\"2024-01-04 08:18:36\",\"created_at\":\"2024-01-04 08:18:36\",\"id\":45}', '175.110.195.251', '2024-01-04 15:18:36', '2024-01-04 15:18:36'),
(344, 'audit:created', 46, 'App\\Models\\Service#46', 1, '{\"name\":\"\\u0637\\u0644\\u0628 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0642\\u064a\\u062f \\u0648\\u0643\\u0627\\u0644\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629- \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0644\\u0644\\u0648\\u0643\\u064a\\u0644 \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0648\\u0632\\u0639 \\u062d\\u0642 \\u0645\\u0632\\u0627\\u0648\\u0644\\u0629 \\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u0648\\u0643\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0639\\u0646 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0623\\u062c\\u0646\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0627\\u0642\\u062f \\u0645\\u0639\\u0647\\u0627 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0645\\u0644\\u0643\\u0629 \\u0628\\u0645\\u0648\\u062c\\u0628 \\u0639\\u0642\\u062f \\u0648\\u0643\\u0627\\u0644\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0637\\u0631\\u0641\\u064a\\u0646..\",\"updated_at\":\"2024-01-04 08:19:08\",\"created_at\":\"2024-01-04 08:19:08\",\"id\":46}', '175.110.195.251', '2024-01-04 15:19:08', '2024-01-04 15:19:08'),
(345, 'audit:created', 47, 'App\\Models\\Service#47', 1, '{\"name\":\"\\u0637\\u0644\\u0628 \\u0634\\u0637\\u0628 \\u0642\\u064a\\u062f \\u0648\\u0643\\u0627\\u0644\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629- \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0633\\u0648\\u0627\\u0621 \\u0643\\u0646\\u062a \\u0648\\u0643\\u064a\\u0644 \\u0623\\u0648 \\u0645\\u0648\\u0632\\u0639 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u062a\\u0648\\u0642\\u0641 \\u0639\\u0646 \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u0648\\u0643\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0639\\u0646 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0623\\u062c\\u0646\\u0628\\u064a\\u0629 \\u0648\\u0634\\u0637\\u0628 \\u0627\\u0644\\u0648\\u0643\\u0627\\u0644\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629.\",\"updated_at\":\"2024-01-04 08:19:43\",\"created_at\":\"2024-01-04 08:19:43\",\"id\":47}', '175.110.195.251', '2024-01-04 15:19:43', '2024-01-04 15:19:43'),
(346, 'audit:created', 48, 'App\\Models\\Service#48', 1, '{\"name\":\"\\u062a\\u0631\\u0627\\u062e\\u064a\\u0635 \\u0627\\u0644\\u062a\\u062e\\u0641\\u064a\\u0636\\u0627\\u062a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0633\\u0648\\u0627\\u0621 \\u0643\\u0646\\u062a \\u0645\\u0624\\u0633\\u0633\\u0629 \\u0623\\u0648 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u062a\\u062e\\u0641\\u064a\\u0636\\u0627\\u062a \\u0648\\u0627\\u0644\\u0630\\u064a \\u064a\\u062a\\u064a\\u062d \\u0644\\u0643 \\u062a\\u062e\\u0641\\u064a\\u0636 \\u0623\\u0633\\u0639\\u0627\\u0631 \\u0627\\u0644\\u0633\\u0644\\u0639 \\u0627\\u0644\\u0645\\u0639\\u0631\\u0648\\u0636\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u062a\\u0627\\u062c\\u0631 \\u0627\\u0644\\u062a\\u0627\\u0628\\u0639\\u0629.\",\"updated_at\":\"2024-01-04 08:20:57\",\"created_at\":\"2024-01-04 08:20:57\",\"id\":48}', '175.110.195.251', '2024-01-04 15:20:57', '2024-01-04 15:20:57'),
(347, 'audit:created', 49, 'App\\Models\\Service#49', 1, '{\"name\":\"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u0629 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0651\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0644\\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0645\\u0647\\u0646\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062d\\u0631\\u0629 \\u0641\\u064a \\u0639\\u062f\\u0629 \\u0645\\u062c\\u0627\\u0644\\u0627\\u062a \\u0628\\u062d\\u0633\\u0628 \\u062a\\u0635\\u0646\\u064a\\u0641 \\u0641\\u0626\\u0629 \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 (\\u0645\\u0645\\u0627\\u0631\\u0633- \\u0623\\u062e\\u0635\\u0627\\u0626\\u064a- \\u062e\\u0628\\u064a\\u0631) \\u0648\\u0641\\u0642 \\u0627\\u0644\\u0645\\u0624\\u0647\\u0644 \\u0627\\u0644\\u0639\\u0644\\u0645\\u064a \\u0648\\u0627\\u0644\\u062e\\u0628\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0644\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645.\",\"updated_at\":\"2024-01-04 08:21:21\",\"created_at\":\"2024-01-04 08:21:21\",\"id\":49}', '175.110.195.251', '2024-01-04 15:21:21', '2024-01-04 15:21:21'),
(348, 'audit:created', 50, 'App\\Models\\Service#50', 1, '{\"name\":\"\\u062a\\u062c\\u062f\\u064a\\u062f \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u0629 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a \\u0644\\u0644\\u0627\\u0633\\u062a\\u0645\\u0631\\u0627\\u0631 \\u0641\\u064a \\u0645\\u0632\\u0627\\u0648\\u0644\\u0629 \\u0645\\u0647\\u0646\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062d\\u0631\\u0629\\u200b.\\u200b\\r\\n\\r\\n\\u0645\\u0644\\u0627\\u062d\\u0638\\u0629: \\u0627\\u0644\\u062a\\u0631\\u0627\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\\u0629 \\u0642\\u0628\\u0644 1435 \\u062a\\u062a\\u0637\\u0644\\u0628 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0623\\u062d\\u062f \\u0641\\u0631\\u0648\\u0639 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a \\u0648\\u0625\\u062a\\u0627\\u062d\\u0629  \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u062a\\u062c\\u062f\\u064a\\u062f\\u0647\\u0627 \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627.\\r\\n\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:21:56\",\"created_at\":\"2024-01-04 08:21:56\",\"id\":50}', '175.110.195.251', '2024-01-04 15:21:56', '2024-01-04 15:21:56'),
(349, 'audit:created', 51, 'App\\Models\\Service#51', 1, '{\"name\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u0629 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062c\\u0644\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a.\\u200b\\r\\n\\r\\n\\u0645\\u0644\\u0627\\u062d\\u0638\\u0629: \\u0627\\u0644\\u062a\\u0631\\u0627\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0635\\u062f\\u0631\\u0629 \\u0642\\u0628\\u0644 1435 \\u062a\\u062a\\u0637\\u0644\\u0628 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0623\\u062d\\u062f \\u0641\\u0631\\u0648\\u0639 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0644\\u062a\\u062d\\u062f\\u064a\\u062b \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a \\u0648\\u0625\\u0645\\u0643\\u0627\\u0646\\u064a\\u0629 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u062a\\u0639\\u062f\\u064a\\u0644\\u0647\\u0627 \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627.\\r\\n\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:22:39\",\"created_at\":\"2024-01-04 08:22:39\",\"id\":51}', '175.110.195.251', '2024-01-04 15:22:39', '2024-01-04 15:22:39'),
(350, 'audit:created', 52, 'App\\Models\\Service#52', 1, '{\"name\":\"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0641\\u0631\\u0639 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u0629 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0641\\u062a\\u062d \\u0645\\u0643\\u062a\\u0628 \\u0645\\u0647\\u0646\\u064a \\u0641\\u0631\\u0639\\u064a.\\u200b\\u200b\\r\\n\\r\\n\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:23:28\",\"created_at\":\"2024-01-04 08:23:28\",\"id\":52}', '175.110.195.251', '2024-01-04 15:23:28', '2024-01-04 15:23:28'),
(351, 'audit:created', 53, 'App\\Models\\Service#53', 1, '{\"name\":\"\\u0625\\u0644\\u063a\\u0627\\u0621 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u0629 \\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u0634\\u0637\\u0628 \\u0648\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a.\\u200b\\r\\n\\r\\n\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:24:01\",\"created_at\":\"2024-01-04 08:24:01\",\"id\":53}', '175.110.195.251', '2024-01-04 15:24:01', '2024-01-04 15:24:01'),
(352, 'audit:created', 54, 'App\\Models\\Service#54', 1, '{\"name\":\"\\u0627\\u0644\\u062a\\u0635\\u0627\\u0631\\u064a\\u062d \\u0627\\u0644\\u0645\\u0648\\u0633\\u0645\\u064a\\u0629 \\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u0645\\u0648\\u064a\\u0646\\u064a\\u0629 \\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0625\\u0639\\u0627\\u0634\\u0629 \\u0648\\u0627\\u0644\\u062a\\u063a\\u0630\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0651\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062a\\u0635\\u0631\\u064a\\u062d \\u0645\\u0631\\u0643\\u0628\\u0629 \\u0644\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u0645\\u0648\\u064a\\u0646\\u064a\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0634\\u0627\\u0639\\u0631 \\u0627\\u0644\\u0645\\u0642\\u062f\\u0633\\u0629.\\u200b\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:24:47\",\"created_at\":\"2024-01-04 08:24:47\",\"id\":54}', '175.110.195.251', '2024-01-04 15:24:47', '2024-01-04 15:24:47'),
(353, 'audit:created', 55, 'App\\Models\\Service#55', 1, '{\"name\":\"\\u0627\\u0633\\u062a\\u0642\\u0628\\u0627\\u0644 \\u0628\\u0644\\u0627\\u063a \\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u062a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0647\\u0644\\u0643 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0628\\u0644\\u0627\\u063a \\u062a\\u062c\\u0627\\u0631\\u064a - \\u0648\\u0627\\u0644\\u0627\\u0633\\u062a\\u0639\\u0644\\u0627\\u0645 - \\u0648\\u0645\\u062a\\u0627\\u0628\\u0639\\u0629 \\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0628\\u0644\\u0627\\u063a.\",\"updated_at\":\"2024-01-04 08:25:39\",\"created_at\":\"2024-01-04 08:25:39\",\"id\":55}', '175.110.195.251', '2024-01-04 15:25:39', '2024-01-04 15:25:39'),
(354, 'audit:created', 56, 'App\\Models\\Service#56', 1, '{\"name\":\"\\u0628\\u062d\\u062b \\u0641\\u064a \\u0642\\u0627\\u0639\\u062f\\u0629 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u062e\\u0635\\u064a\\u0646 \\u0644\\u0644\\u0645\\u0647\\u0646 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u064a\\u0629- \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646  \\u0627\\u0644\\u0628\\u062d\\u062b \\u0641\\u064a \\u0642\\u0627\\u0639\\u062f\\u0629 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u062e\\u0635\\u064a\\u0646 \\u0644\\u0645\\u0632\\u0627\\u0648\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0647\\u0646 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0627\\u0631\\u064a\\u0629 \\u060c\\u0648\\u0627\\u0633\\u062a\\u0639\\u0631\\u0627\\u0636 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u062e\\u0635 \\u0648\\u0645\\u0646\\u0647\\u0627 ( \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a\\u060c \\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0631\\u062e\\u0635 \\u060c \\u0645\\u0624\\u0647\\u0644\\u0627\\u062a\\u0647 \\u060c \\u0631\\u0642\\u0645 \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 \\u060c \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\u060c \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u060c ... \\u0625\\u0644\\u062e ) \\u0645\\u0645\\u0627 \\u064a\\u0633\\u0627\\u0639\\u062f \\u0641\\u064a \\u062a\\u0633\\u0647\\u064a\\u0644 \\u062d\\u0635\\u0648\\u0644 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u062e\\u0635\\u064a\\u0646 \\u062f\\u0648\\u0646 \\u0627\\u0644\\u062d\\u0627\\u062c\\u0629 \\u0641\\u0631\\u0648\\u0639 \\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629 .\",\"updated_at\":\"2024-01-04 08:26:14\",\"created_at\":\"2024-01-04 08:26:14\",\"id\":56}', '175.110.195.251', '2024-01-04 15:26:14', '2024-01-04 15:26:14'),
(355, 'audit:created', 57, 'App\\Models\\Service#57', 1, '{\"name\":\"\\u062a\\u062d\\u062f\\u064a\\u062b \\u0633\\u062c\\u0644 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645\\u064a\\u0646 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0645\\u0646 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0648\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0648\\u062a\\u062d\\u062f\\u064a\\u062b \\u0633\\u062c\\u0644 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645\\u064a\\u0646 \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0627\\u064b\\u060c \\u0648\\u0630\\u0644\\u0643 \\u0644\\u062d\\u0641\\u0638 \\u062d\\u0642\\u0648\\u0642\\u0647\\u0645.\",\"updated_at\":\"2024-01-04 08:28:17\",\"created_at\":\"2024-01-04 08:28:17\",\"id\":57}', '175.110.195.251', '2024-01-04 15:28:17', '2024-01-04 15:28:17'),
(356, 'audit:created', 58, 'App\\Models\\Service#58', 1, '{\"name\":\"\\u0627\\u0637\\u0644\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645 \\u0639\\u0644\\u0649 \\u0639\\u062f\\u062f \\u0623\\u0633\\u0647\\u0645\\u0647 \\u0641\\u064a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0645\\u0639\\u0631\\u0641\\u0629 \\u0648\\u0627\\u0637\\u0644\\u0627\\u0639 \\u0641\\u064a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0644\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u0633\\u0647\\u0645 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645 \\u0641\\u064a\\u0647\\u0627.\",\"updated_at\":\"2024-01-04 08:30:57\",\"created_at\":\"2024-01-04 08:30:57\",\"id\":58}', '175.110.195.251', '2024-01-04 15:30:57', '2024-01-04 15:30:57'),
(357, 'audit:created', 59, 'App\\Models\\Service#59', 1, '{\"name\":\"\\u062a\\u0642\\u0648\\u0645 \\u0639\\u0644\\u0649 \\u0627\\u0639\\u062f\\u0627\\u062f\\u0647 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0627\\u0648 \\u0645\\u0646 \\u064a\\u0646\\u0648\\u0628 \\u0639\\u0646\\u0647\\u0627 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"1\",\"updated_at\":\"2024-01-04 08:31:52\",\"created_at\":\"2024-01-04 08:31:52\",\"id\":59}', '175.110.195.251', '2024-01-04 15:31:52', '2024-01-04 15:31:52'),
(358, 'audit:created', 60, 'App\\Models\\Service#60', 1, '{\"name\":\"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u062a\\u0631\\u0627\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0623\\u062d\\u062c\\u0627\\u0631 \\u0627\\u0644\\u0643\\u0631\\u064a\\u0645\\u0629 \\u0648\\u0627\\u0644\\u0645\\u0639\\u0627\\u062f\\u0646 \\u0627\\u0644\\u062b\\u0645\\u064a\\u0646\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0651\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629  \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0644\\u0645\\u0632\\u0627\\u0648\\u0644\\u0629 \\u0646\\u0634\\u0627\\u0637 \\u062a\\u062c\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0627\\u062f\\u0646 \\u0627\\u0644\\u062b\\u0645\\u064a\\u0646\\u0629 \\u0648\\u0627\\u0644\\u0623\\u062d\\u062c\\u0627\\u0631 \\u0627\\u0644\\u0643\\u0631\\u064a\\u0645\\u0629.\",\"updated_at\":\"2024-01-04 08:32:27\",\"created_at\":\"2024-01-04 08:32:27\",\"id\":60}', '175.110.195.251', '2024-01-04 15:32:27', '2024-01-04 15:32:27'),
(359, 'audit:created', 61, 'App\\Models\\Service#61', 1, '{\"name\":\"\\u062a\\u0645\\u0643\\u064a\\u0646 \\u0627\\u0644\\u062a\\u0627\\u062c\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0639\\u0644\\u0649 \\u0637\\u0644\\u0628 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u062e\\u0635\\u0629 \\u0627\\u0644\\u0623\\u062d\\u062c\\u0627\\u0631 \\u0627\\u0644\\u0643\\u0631\\u064a\\u0645\\u0629 \\u0648\\u0627\\u0644\\u0645\\u0639\\u0627\\u062f\\u0646 \\u0627\\u0644\\u062b\\u0645\\u064a\\u0646\\u0629 \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0627\\u064b-\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"1\",\"updated_at\":\"2024-01-04 08:34:11\",\"created_at\":\"2024-01-04 08:34:11\",\"id\":61}', '175.110.195.251', '2024-01-04 15:34:11', '2024-01-04 15:34:11'),
(360, 'audit:created', 62, 'App\\Models\\Service#62', 1, '{\"name\":\"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u062e\\u062a\\u0628\\u0631 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645 \\u0628\\u0637\\u0644\\u0628 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u062e\\u062a\\u0628\\u0631.\",\"updated_at\":\"2024-01-04 08:37:05\",\"created_at\":\"2024-01-04 08:37:05\",\"id\":62}', '175.110.195.251', '2024-01-04 15:37:05', '2024-01-04 15:37:05'),
(361, 'audit:created', 63, 'App\\Models\\Service#63', 1, '{\"name\":\"\\u0646\\u0642\\u0644 \\u0645\\u0644\\u0643\\u064a\\u0629 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0646\\u0642\\u0644 \\u0645\\u0644\\u0643\\u064a\\u0629 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0645\\u0646 \\u0623\\u0648 \\u0625\\u0644\\u0649 \\u0634\\u062e\\u0635 \\u0622\\u062e\\u0631.\",\"updated_at\":\"2024-01-04 08:40:39\",\"created_at\":\"2024-01-04 08:40:39\",\"id\":63}', '175.110.195.251', '2024-01-04 15:40:39', '2024-01-04 15:40:39'),
(362, 'audit:created', 64, 'App\\Models\\Service#64', 1, '{\"name\":\"\\u0627\\u0644\\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631 \\u0639\\u0646 \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0645\\u062e\\u0627\\u0644\\u0641\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u062a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u062a\\u0627\\u062c\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0639\\u0644\\u0627\\u0645 \\u0639\\u0646 \\u0627\\u0644\\u0645\\u062e\\u0627\\u0644\\u0641\\u0627\\u062a \\u0648\\u0627\\u0644\\u063a\\u0631\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u062a\\u062d\\u0631\\u064a\\u0631\\u0647\\u0627 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0645\\u0631\\u0627\\u0642\\u0628\\u064a \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629.\\r\\n\\r\\n\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:41:15\",\"created_at\":\"2024-01-04 08:41:15\",\"id\":64}', '175.110.195.251', '2024-01-04 15:41:15', '2024-01-04 15:41:15'),
(363, 'audit:created', 65, 'App\\Models\\Service#65', 1, '{\"name\":\"\\u0627\\u0633\\u062a\\u062e\\u0631\\u062c \\u0631\\u0645\\u0632\\u0643 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a - \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u0645\\u0632\\u0643 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u064b\\u0627 \\u062f\\u0648\\u0646 \\u0627\\u0644\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0641\\u0631\\u0648\\u0639 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629.\",\"updated_at\":\"2024-01-04 08:41:56\",\"created_at\":\"2024-01-04 08:41:56\",\"id\":65}', '175.110.195.251', '2024-01-04 15:41:56', '2024-01-04 15:41:56'),
(364, 'audit:created', 66, 'App\\Models\\Service#66', 1, '{\"name\":\"\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0627\\u0644\\u0645\\u062a\\u0631\\u062c\\u0645 \\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629- \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0641\\u064a\\u062f\\u064a\\u0646 \\u0645\\u0646 \\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0645\\u0646 \\u0637\\u0628\\u0627\\u0639\\u0629 \\u0633\\u062c\\u0644\\u0627\\u062a\\u0647\\u0645 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\",\"updated_at\":\"2024-01-04 08:42:28\",\"created_at\":\"2024-01-04 08:42:28\",\"id\":66}', '175.110.195.251', '2024-01-04 15:42:28', '2024-01-04 15:42:28'),
(365, 'audit:created', 67, 'App\\Models\\Service#67', 1, '{\"name\":\"\\u0627\\u0644\\u062a\\u0641\\u0648\\u064a\\u0636 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0633\\u0648\\u0627\\u0621 \\u0645\\u0627\\u0644\\u0643 \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0623\\u0648 \\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0645\\u0646 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0645\\u064f\\u0641\\u064e\\u0648\\u0651\\u064e\\u0636\\u0650\\u064a\\u0646 \\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0645\\u0639\\u064a\\u0646\\u0629 \\u0636\\u0645\\u0646 \\u062c\\u0647\\u0627\\u062a \\u064a\\u062a\\u0645 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0647\\u0627\\u060c \\u0643\\u0645\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0644\\u0647 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0641\\u0648\\u064a\\u0636 \\u0648\\u0637\\u0628\\u0627\\u0639\\u062a\\u0647.\",\"updated_at\":\"2024-01-04 08:42:58\",\"created_at\":\"2024-01-04 08:42:58\",\"id\":67}', '175.110.195.251', '2024-01-04 15:42:58', '2024-01-04 15:42:58'),
(366, 'audit:created', 68, 'App\\Models\\Service#68', 1, '{\"name\":\"\\u0628\\u0644\\u0627\\u063a\\u0627\\u062a \\u0645\\u062e\\u0627\\u0644\\u0641\\u0627\\u062a \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0628\\u0644\\u0627\\u063a \\u0623\\u0648 \\u0634\\u0643\\u0648\\u0649 \\u0628\\u0648\\u0642\\u0648\\u0639 \\u0645\\u062e\\u0627\\u0644\\u0641\\u0629 \\u062a\\u062a\\u0639\\u0644\\u0642 \\u0628\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0633\\u0648\\u0627\\u0621 \\u0643\\u0627\\u0646\\u062a \\u0639\\u0644\\u0649 \\u0645\\u0633\\u0627\\u0647\\u0645 \\u0623\\u0648 \\u0634\\u0631\\u064a\\u0643 \\u0623\\u0648 \\u0639\\u0636\\u0648 \\u0645\\u062c\\u0644\\u0633 \\u0627\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0648 \\u0645\\u062c\\u0644\\u0633 \\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0648 \\u0645\\u062f\\u064a\\u0631 \\u0623\\u0648 \\u0645\\u062c\\u0644\\u0633 \\u0645\\u062f\\u064a\\u0631\\u064a\\u0646 \\u0644\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0623\\u0648 \\u063a\\u064a\\u0631\\u0647\\u0645 \\u062f\\u0648\\u0646 \\u0627\\u0644\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0641\\u0631\\u0648\\u0639 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0635\\u0629.\",\"updated_at\":\"2024-01-04 08:43:49\",\"created_at\":\"2024-01-04 08:43:49\",\"id\":68}', '175.110.195.251', '2024-01-04 15:43:49', '2024-01-04 15:43:49'),
(367, 'audit:created', 69, 'App\\Models\\Service#69', 1, '{\"name\":\"\\u0642\\u064a\\u062f \\u0627\\u0644\\u0625\\u0645\\u062a\\u064a\\u0627\\u0632 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0651\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0648\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0642\\u064a\\u062f \\u0627\\u0644\\u0627\\u0645\\u062a\\u064a\\u0627\\u0632 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u060c \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0642\\u062f\\u0651\\u0645 \\u0648\\u0641\\u0642 \\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0627\\u0645\\u062a\\u064a\\u0627\\u0632 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u0644\\u0627\\u0626\\u062d\\u062a\\u0647 \\u0627\\u0644\\u062a\\u0646\\u0641\\u064a\\u0630\\u064a\\u0629. \\u200b\\r\\n\\r\\n\\u200b\\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u062a\\u064a\\u0646 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\",\"updated_at\":\"2024-01-04 08:44:33\",\"created_at\":\"2024-01-04 08:44:33\",\"id\":69}', '175.110.195.251', '2024-01-04 15:44:33', '2024-01-04 15:44:33');
INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(368, 'audit:created', 70, 'App\\Models\\Service#70', 1, '{\"name\":\"\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0627\\u0644\\u0648\\u062b\\u0627\\u0626\\u0642 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u062a\\u064a\\u062d \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0627\\u0644\\u0648\\u062b\\u0627\\u0626\\u0642 \\u0627\\u0644\\u0645\\u062a\\u0639\\u0644\\u0642\\u0629 \\u0628\\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623 \\u0648\\u062a\\u0631\\u0627\\u062e\\u064a\\u0635 \\u0627\\u0644\\u062a\\u062e\\u0641\\u064a\\u0636\\u0627\\u062a\\u200b\\r\\n\\u200b\\r\\n\\u200b\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:45:11\",\"created_at\":\"2024-01-04 08:45:11\",\"id\":70}', '175.110.195.251', '2024-01-04 15:45:11', '2024-01-04 15:45:11'),
(369, 'audit:created', 71, 'App\\Models\\Service#71', 1, '{\"name\":\"\\u0627\\u0644\\u0639\\u0631\\u0648\\u0636 \\u0627\\u0644\\u062a\\u0631\\u0648\\u064a\\u062c\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0648\\u0635\\u0641 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u00b7 \\u0627\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0628\\u0627\\u0644\\u0639\\u0631\\u0648\\u0636 \\u0648\\u0627\\u0644\\u0647\\u062f\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629 \\u0645\\u0637\\u0627\\u0628\\u0642\\u0629 \\u0644\\u0644\\u0645\\u0648\\u0627\\u0635\\u0641\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0642\\u0627\\u064a\\u064a\\u0633 \\u0627\\u0644\\u0645\\u0639\\u062a\\u0645\\u062f\\u0629 \\u0648\\u0635\\u0627\\u0644\\u062d\\u0629 \\u0644\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0648\\u0636\\u0645\\u0646 \\u0633\\u064a\\u0627\\u0633\\u0627\\u062a \\u0627\\u0644\\u0636\\u0645\\u0627\\u0646 \\u0648\\u0627\\u0644\\u0635\\u064a\\u0627\\u0646\\u0629 \\u0644\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629\",\"updated_at\":\"2024-01-04 08:53:32\",\"created_at\":\"2024-01-04 08:53:32\",\"id\":71}', '175.110.195.251', '2024-01-04 15:53:32', '2024-01-04 15:53:32'),
(370, 'audit:created', 72, 'App\\Models\\Service#72', 1, '{\"name\":\"\\u0627\\u0644\\u062a\\u0635\\u0648\\u064a\\u062a \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0644\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0646\\u0627\\u062e\\u0628\\u064a\\u0646 \\u0648\\u0627\\u0644\\u0646\\u0627\\u062e\\u0628\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631 \\u0648\\u0627\\u0644\\u0635\\u0646\\u0627\\u0639 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 \\u0641\\u064a \\u0627\\u0646\\u062a\\u062e\\u0627\\u0628\\u0627\\u062a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u064a\\u0629 \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0627\\u064b \\u0648\\u062f\\u0648\\u0646 \\u0627\\u0644\\u062d\\u0627\\u062c\\u0629 \\u0644\\u0632\\u064a\\u0627\\u0631\\u0629 \\u0645\\u0642\\u0631\\u0651\\u0627\\u062a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629\",\"updated_at\":\"2024-01-04 08:54:33\",\"created_at\":\"2024-01-04 08:54:33\",\"id\":72}', '175.110.195.251', '2024-01-04 15:54:33', '2024-01-04 15:54:33'),
(371, 'audit:created', 73, 'App\\Models\\Service#73', 1, '{\"name\":\"\\u062a\\u062c\\u062f\\u064a\\u062f \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u062e\\u062a\\u0628\\u0631 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645 \\u0628\\u0637\\u0644\\u0628 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 \\u0644\\u0645\\u062e\\u062a\\u0628\\u0631.\",\"updated_at\":\"2024-01-04 08:55:08\",\"created_at\":\"2024-01-04 08:55:08\",\"id\":73}', '175.110.195.251', '2024-01-04 15:55:08', '2024-01-04 15:55:08'),
(372, 'audit:created', 74, 'App\\Models\\Service#74', 1, '{\"name\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u062e\\u062a\\u0628\\u0631 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645 \\u0628\\u0637\\u0644\\u0628 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0630\\u0643\\u0648\\u0631\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635.\\u200b\\r\\n\\r\\n\\u200b\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:56:57\",\"created_at\":\"2024-01-04 08:56:57\",\"id\":74}', '175.110.195.251', '2024-01-04 15:56:57', '2024-01-04 15:56:57'),
(373, 'audit:created', 75, 'App\\Models\\Service#75', 1, '{\"name\":\"\\u0625\\u0644\\u063a\\u0627\\u0621 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u062e\\u062a\\u0628\\u0631 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645 \\u0628\\u0637\\u0644\\u0628 \\u0625\\u0644\\u063a\\u0627\\u0621 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u062e\\u062a\\u0628\\u0631 \\u062e\\u0627\\u0635. \\u200b\\u200b\\u200b\\r\\n\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:57:45\",\"created_at\":\"2024-01-04 08:57:45\",\"id\":75}', '175.110.195.251', '2024-01-04 15:57:45', '2024-01-04 15:57:45'),
(374, 'audit:created', 76, 'App\\Models\\Service#76', 1, '{\"name\":\"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0625\\u0630\\u0646 \\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0644\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0643\\u064a\\u0645\\u064a\\u0627\\u0626\\u064a\\u0629 \\u0627\\u0644\\u063a\\u064a\\u0631 \\u062e\\u0637\\u0631\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0625\\u0630\\u0646 \\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0644\\u0644\\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0643\\u064a\\u0645\\u064a\\u0627\\u0626\\u064a\\u0629 \\u0627\\u0644\\u063a\\u064a\\u0631 \\u062e\\u0637\\u0631\\u0629. \\r\\n\\r\\n\\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u062a\\u064a\\u0646 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\",\"updated_at\":\"2024-01-04 08:58:27\",\"created_at\":\"2024-01-04 08:58:27\",\"id\":76}', '175.110.195.251', '2024-01-04 15:58:27', '2024-01-04 15:58:27'),
(375, 'audit:created', 77, 'App\\Models\\Service#77', 1, '{\"name\":\"\\u0627\\u0639\\u062a\\u0631\\u0627\\u0636 \\u0639\\u0644\\u0649 \\u0631\\u0641\\u0636 \\u062d\\u062c\\u0632 \\u0627\\u0633\\u0645 \\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0651\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629  \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0639\\u0644\\u0649 \\u0627\\u0639\\u062a\\u0631\\u0627\\u0636 \\u0639\\u0644\\u0649 \\u0631\\u0641\\u0636 \\u0642\\u0628\\u0648\\u0644 \\u062d\\u062c\\u0632 \\u0627\\u0644\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0627\\u0644\\u0645\\u0642\\u062f\\u0645 \\u0645\\u0646 \\u0642\\u0628\\u0644\\u0647 \\u0633\\u0627\\u0628\\u0642\\u0627\\u064b \\u0648 \\u0637\\u0644\\u0628 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u0641\\u062d\\u0635\\u0647 \\u0645\\u0639 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0645\\u0627 \\u064a\\u062b\\u0628\\u062a \\u0630\\u0644\\u0643.\\r\\n\\r\\n\\u200b\\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0648\\u0641\\u0631\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u062a\\u064a\\u0646 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\",\"updated_at\":\"2024-01-04 08:59:22\",\"created_at\":\"2024-01-04 08:59:22\",\"id\":77}', '175.110.195.251', '2024-01-04 15:59:22', '2024-01-04 15:59:22'),
(376, 'audit:created', 78, 'App\\Models\\Service#78', 1, '{\"name\":\"\\u0637\\u0644\\u0628 \\u062a\\u0635\\u0627\\u0631\\u064a\\u062d \\u0627\\u0644\\u0633\\u0641\\u0631 \\u062e\\u0627\\u0631\\u062c\\u064a\\u0627\\u064b \\u0644\\u063a\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0637\\u0646\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631\\u064a\\u0646 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u062a\\u0635\\u0631\\u064a\\u062d \\u0633\\u0641\\u0631 \\u0644\\u0623\\u063a\\u0631\\u0627\\u0636 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062f\\u0648\\u0644 \\u0627\\u0644\\u0645\\u0645\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u0641\\u0631 \\u0644\\u0647\\u0627.\\r\\n\\r\\n\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 08:59:58\",\"created_at\":\"2024-01-04 08:59:58\",\"id\":78}', '175.110.195.251', '2024-01-04 15:59:58', '2024-01-04 15:59:58'),
(377, 'audit:created', 79, 'App\\Models\\Service#79', 1, '{\"name\":\"\\u0637\\u0644\\u0628 \\u0625\\u064a\\u0642\\u0627\\u0641 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0639\\u0644\\u0649 \\u0637\\u0644\\u0628 \\u0644\\u0625\\u064a\\u0642\\u0627\\u0641 \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a \\u0644\\u0641\\u062a\\u0631\\u0629 \\u0645\\u0639\\u064a\\u0646\\u0629.\\u200b\\r\\n\\r\\n\\u200b\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u062a\\u0627\\u062d\\u0629 \\u0628\\u0627\\u0644\\u0644\\u063a\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0641\\u0642\\u0637.\",\"updated_at\":\"2024-01-04 09:00:31\",\"created_at\":\"2024-01-04 09:00:31\",\"id\":79}', '175.110.195.251', '2024-01-04 16:00:31', '2024-01-04 16:00:31'),
(378, 'audit:created', 80, 'App\\Models\\Service#80', 1, '{\"name\":\"\\u0623\\u0639\\u0627\\u062f\\u0629 \\u0633\\u0631\\u064a\\u0627\\u0646 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0639\\u0644\\u0649 \\u0637\\u0644\\u0628 \\u0644\\u0625\\u0639\\u0627\\u062f\\u0629 \\u0633\\u0631\\u064a\\u0627\\u0646 \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a \\u0628\\u0639\\u062f \\u0637\\u0644\\u0628 \\u0625\\u064a\\u0642\\u0627\\u0641\\u0647 \\u0644\\u0641\\u062a\\u0631\\u0629 \\u0645\\u062d\\u062f\\u062f\\u0629.\",\"updated_at\":\"2024-01-04 09:01:44\",\"created_at\":\"2024-01-04 09:01:44\",\"id\":80}', '175.110.195.251', '2024-01-04 16:01:44', '2024-01-04 16:01:44'),
(379, 'audit:created', 81, 'App\\Models\\Service#81', 1, '{\"name\":\"\\u0634\\u0637\\u0628 \\u0641\\u0631\\u0639 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u064a\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0639\\u0644\\u0649 \\u0637\\u0644\\u0628 \\u0634\\u0637\\u0628 \\u0641\\u0631\\u0639 \\u0627\\u0644\\u062a\\u0631\\u062e\\u064a\\u0635 \\u0627\\u0644\\u0645\\u0647\\u0646\\u064a.\",\"updated_at\":\"2024-01-04 09:02:38\",\"created_at\":\"2024-01-04 09:02:38\",\"id\":81}', '175.110.195.251', '2024-01-04 16:02:38', '2024-01-04 16:02:38'),
(380, 'audit:updated', 81, 'App\\Models\\Service#81', 1, '{\"name\":\"\\u0634\\u0637\\u0628 \\u0641\\u0631\\u0639 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0645\\u0647\\u0646\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"updated_at\":\"2024-01-04 09:03:10\"}', '175.110.195.251', '2024-01-04 16:03:10', '2024-01-04 16:03:10'),
(381, 'audit:created', 82, 'App\\Models\\Service#82', 1, '{\"name\":\"\\u0627\\u0644\\u062a\\u0642\\u064a\\u064a\\u0645 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a \\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u062d\\u0648\\u0643\\u0645\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0645\\u062a\\u0643\\u0627\\u0645\\u0644\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0642\\u064a\\u064a\\u0645 \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a \\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u062d\\u0648\\u0643\\u0645\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0644\\u0644\\u0645\\u0633\\u0627\\u0639\\u062f\\u0629 \\u0641\\u064a \\u0631\\u0641\\u0639 \\u0645\\u0624\\u0634\\u0631 \\u062a\\u0637\\u0628\\u064a\\u0642 \\u062d\\u0648\\u0643\\u0645\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0648\\u062a\\u0645\\u0643\\u064a\\u0646 \\u0623\\u0639\\u0636\\u0627\\u0621 \\u0645\\u062c\\u0644\\u0633 \\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0648\\u0645\\u062c\\u0644\\u0633 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0631\\u064a\\u0646 \\u0645\\u0646 \\u0645\\u0639\\u0631\\u0641\\u0629 \\u0645\\u0633\\u062a\\u0648\\u0649 \\u062d\\u0648\\u0643\\u0645\\u0629 \\u0634\\u0631\\u0643\\u0627\\u062a\\u0647\\u0645.\",\"updated_at\":\"2024-01-04 09:03:28\",\"created_at\":\"2024-01-04 09:03:28\",\"id\":82}', '175.110.195.251', '2024-01-04 16:03:28', '2024-01-04 16:03:28'),
(382, 'audit:created', 83, 'App\\Models\\Service#83', 1, '{\"name\":\"\\u0627\\u0644\\u0627\\u0633\\u062a\\u0639\\u0644\\u0627\\u0645 \\u0639\\u0646 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0627\\u0644\\u0627\\u0633\\u062a\\u0639\\u0644\\u0627\\u0645 \\u0639\\u0646 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u062a\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\r\\n\\u0628\\u062d\\u062b \\u0628\\u0623\\u064a \\u0643\\u0644\\u0645\\u0629 \\u0623\\u0648 \\u0631\\u0642\\u0645 \\u0627\\u0633\\u062a\\u062f\\u0644\\u0627\\u0644\\u064a \\/ \\u0627\\u0644\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0627\\u0644\\u0645\\u0648\\u062d\\u062f \\u0644\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629\",\"updated_at\":\"2024-01-04 09:05:23\",\"created_at\":\"2024-01-04 09:05:23\",\"id\":83}', '175.110.195.251', '2024-01-04 16:05:23', '2024-01-04 16:05:23'),
(383, 'audit:created', 84, 'App\\Models\\Service#84', 1, '{\"name\":\"\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0633\\u062c\\u0644 \\u062a\\u062c\\u0627\\u0631\\u064a (\\u0645\\u0624\\u0633\\u0633\\u0627\\u062a) -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0641\\u064a \\u0645\\u064f\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u060c \\u0648\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644\\u0647\\u0627 \\u064a\\u062a\\u0645 \\u0645\\u0627 \\u064a\\u0644\\u064a: 1- \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0633\\u062c\\u0644 \\u062a\\u062c\\u0627\\u0631\\u064a \\u0644\\u0645\\u0624\\u0633\\u0633\\u0629. 2- \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u062e\\u0635\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0641\\u0648\\u0631\\u064a\\u0629 (\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a). 3-\\u0641\\u062a\\u062d \\u0645\\u0644\\u0641 \\u0645\\u0646\\u0634\\u0623\\u0629 \\u0644\\u062f\\u0649 \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0628\\u0634\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629. 4- \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0644\\u0647\\u064a\\u0626\\u0629 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0648\\u0627\\u0644\\u0636\\u0631\\u064a\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0645\\u0627\\u0631\\u0643. 5- \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629 \\u0644\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629. 6- \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0644\\u062f\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0633\\u064f\\u0628\\u0644. 7- \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"updated_at\":\"2024-01-04 09:14:49\",\"created_at\":\"2024-01-04 09:14:49\",\"id\":84}', '175.110.195.251', '2024-01-04 16:14:49', '2024-01-04 16:14:49'),
(384, 'audit:created', 85, 'App\\Models\\Service#85', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0630\\u0627\\u062a \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0629 \\u0645\\u062d\\u062f\\u0648\\u062f\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u0645\\u0643\\u0646 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0630\\u0627\\u062a \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0629 \\u0645\\u062d\\u062f\\u0648\\u062f\\u0629 \\u0648\\u0643\\u0630\\u0644\\u0643 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0634\\u062e\\u0635 \\u0627\\u0644\\u0648\\u0627\\u062d\\u062f\\u060c \\u0648\\u062a\\u0643\\u0648\\u0646 \\u0645\\u0633\\u062a\\u0642\\u0644\\u0629 \\u0639\\u0646 \\u0627\\u0644\\u0630\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629 \\u0644\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a.\",\"updated_at\":\"2024-01-04 09:20:28\",\"created_at\":\"2024-01-04 09:20:28\",\"id\":85}', '175.110.195.251', '2024-01-04 16:20:28', '2024-01-04 16:20:28'),
(385, 'audit:created', 86, 'App\\Models\\Service#86', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u064f\\u0645\\u0643\\u0646\\u0643 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u062f\\u0648\\u0646 \\u0627\\u0644\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0641\\u0631\\u0648\\u0639 \\u0627\\u0644\\u0648\\u0632\\u0627\\u0631\\u0629.\",\"updated_at\":\"2024-01-04 09:23:28\",\"created_at\":\"2024-01-04 09:23:28\",\"id\":86}', '175.110.195.251', '2024-01-04 16:23:28', '2024-01-04 16:23:28'),
(386, 'audit:created', 87, 'App\\Models\\Service#87', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0645\\u064f\\u0628\\u0633\\u0637\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062f\\u0621 \\u0641\\u064a \\u0645\\u0645\\u0627\\u0631\\u0633\\u0629 \\u0627\\u0644\\u0646\\u0634\\u0627\\u0637 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0645\\u064f\\u0628\\u0633\\u0637\\u0629\\u060c \\u064a\\u0624\\u0633\\u0633\\u0647\\u0627 \\u0634\\u062e\\u0635 \\u0648\\u0627\\u062d\\u062f \\u0623\\u0648 \\u0623\\u0643\\u062b\\u0631 \\u0645\\u0646 \\u0630\\u0648\\u064a \\u0627\\u0644\\u0635\\u0641\\u0629 \\u0627\\u0644\\u0637\\u0628\\u064a\\u0639\\u064a\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0627\\u0639\\u062a\\u0628\\u0627\\u0631\\u064a\\u0629\\u060c \\u0648\\u064a\\u0643\\u0648\\u0646 \\u0631\\u0623\\u0633 \\u0645\\u0627\\u0644\\u0647\\u0627 \\u0645\\u0642\\u0633\\u0645\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0623\\u0633\\u0647\\u0645 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u062f\\u0627\\u0648\\u0644 \\u0648\\u062a\\u0633\\u0631\\u064a \\u0639\\u0644\\u064a\\u0647\\u0627 \\u0623\\u062d\\u0643\\u0627\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u0627\\u0647\\u0645\\u0629 \\u0645\\u0627 \\u0644\\u0645 \\u064a\\u0631\\u062f \\u0628\\u0647\\u0627 \\u0646\\u0635 \\u062e\\u0627\\u0635\\u060c \\u0648\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u064a\\u062a\\u0645 \\u0645\\u0627 \\u064a\\u0644\\u064a:\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0627\\u0644\\u0633\\u062c\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a \\u0648\\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633.\\r\\n\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0631\\u062e\\u0635\\u0629 \\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0641\\u0648\\u0631\\u064a\\u0629 (\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u064a).\\r\\n\\u0641\\u062a\\u062d \\u0645\\u0644\\u0641 \\u0645\\u0646\\u0634\\u0623\\u0629 \\u0644\\u062f\\u0649 \\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u0628\\u0634\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0648\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0644\\u0647\\u064a\\u0626\\u0629 \\u0627\\u0644\\u0632\\u0643\\u0627\\u0629 \\u0648\\u0627\\u0644\\u0636\\u0631\\u064a\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062c\\u0645\\u0627\\u0631\\u0643.\\r\\n\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0624\\u0633\\u0633\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0645\\u0629 \\u0644\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0644\\u062f\\u0649 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a \\u0633\\u064f\\u0628\\u0644.\\r\\n\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u062d\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\",\"updated_at\":\"2024-01-04 09:26:43\",\"created_at\":\"2024-01-04 09:26:43\",\"id\":87}', '175.110.195.251', '2024-01-04 16:26:43', '2024-01-04 16:26:43'),
(387, 'audit:created', 88, 'App\\Models\\Service#88', 1, '{\"name\":\"\\u062a\\u0623\\u0633\\u064a\\u0633 \\u0634\\u0631\\u0643\\u0629 \\u0628\\u0645\\u0648\\u062c\\u0628 \\u062a\\u0631\\u062e\\u064a\\u0635 \\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u064a -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"1\",\"updated_at\":\"2024-01-04 09:30:41\",\"created_at\":\"2024-01-04 09:30:41\",\"id\":88}', '175.110.195.251', '2024-01-04 16:30:41', '2024-01-04 16:30:41'),
(388, 'audit:created', 89, 'App\\Models\\Service#89', 1, '{\"name\":\"\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0642\\u062f \\u0627\\u0644\\u062a\\u0623\\u0633\\u064a\\u0633 \\/ \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631 \\u0645\\u0646 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0642\\u062f \\u062a\\u0623\\u0633\\u064a\\u0633 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0623\\u064a \\u0645\\u0627\\u062f\\u0629 \\u0645\\u0646 \\u0645\\u0648\\u0627\\u062f \\u0627\\u0644\\u0639\\u0642\\u062f.\",\"updated_at\":\"2024-01-04 09:31:23\",\"created_at\":\"2024-01-04 09:31:23\",\"id\":89}', '175.110.195.251', '2024-01-04 16:31:23', '2024-01-04 16:31:23'),
(389, 'audit:created', 90, 'App\\Models\\Service#90', 1, '{\"name\":\"\\u0625\\u0636\\u0627\\u0641\\u0629 \\u062a\\u0641\\u0648\\u064a\\u0636 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646\\u0643 \\u0645\\u0646 \\u0625\\u0636\\u0627\\u0641\\u0629 \\u0645\\u064f\\u0641\\u064e\\u0648\\u0651\\u064e\\u0636\\u0650\\u064a\\u0646 \\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0628\\u062f\\u0621 \\u0627\\u0644\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0627\\u0642\\u062a\\u0635\\u0627\\u062f\\u064a\\u060c \\u0643\\u0645\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0644\\u0643 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u0641\\u0648\\u064a\\u0636 \\u0648\\u0637\\u0628\\u0627\\u0639\\u062a\\u0647.\",\"updated_at\":\"2024-01-04 09:33:45\",\"created_at\":\"2024-01-04 09:33:45\",\"id\":90}', '175.110.195.251', '2024-01-04 16:33:45', '2024-01-04 16:33:45'),
(390, 'audit:created', 91, 'App\\Models\\Service#91', 1, '{\"name\":\"\\u0625\\u064a\\u062f\\u0627\\u0639 \\u0627\\u0644\\u0642\\u0648\\u0627\\u0626\\u0645 \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646\\u0643 \\u0645\\u0646 \\u0627\\u0644\\u0625\\u064a\\u062f\\u0627\\u0639 \\u0627\\u0644\\u0622\\u0644\\u064a \\u0644\\u0644\\u0642\\u0648\\u0627\\u0626\\u0645 \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629 \\u0644\\u0644\\u0645\\u0646\\u0634\\u0622\\u062a \\u0644\\u0644\\u0627\\u0633\\u062a\\u0641\\u0627\\u062f\\u0629 \\u0645\\u0646\\u0647\\u0627 \\u0645\\u0633\\u062a\\u0642\\u0628\\u0644\\u064b\\u0627 \\u0641\\u064a \\u062a\\u0648\\u0641\\u064a\\u0631 \\u0642\\u0627\\u0639\\u062f\\u0629 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0623\\u0637\\u0631\\u0627\\u0641 \\u0630\\u0627\\u062a \\u0627\\u0644\\u0639\\u0644\\u0627\\u0642\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0627\\u0642\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062a\\u062e\\u0637\\u064a\\u0637.\",\"updated_at\":\"2024-01-04 09:34:34\",\"created_at\":\"2024-01-04 09:34:34\",\"id\":91}', '175.110.195.251', '2024-01-04 16:34:34', '2024-01-04 16:34:34'),
(391, 'audit:created', 92, 'App\\Models\\Service#92', 1, '{\"name\":\"\\u0625\\u0634\\u0647\\u0627\\u0631 \\u062d\\u0642\\u0648\\u0642 \\u0627\\u0644\\u0636\\u0645\\u0627\\u0646 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u064f\\u0645\\u0643\\u0651\\u0646\\u0643 \\u0645\\u0646 \\u0625\\u0634\\u0647\\u0627\\u0631 \\u062d\\u0642\\u0648\\u0642 \\u0627\\u0644\\u0636\\u0645\\u0627\\u0646 \\u0641\\u064a \\u0627\\u0644\\u0623\\u0645\\u0648\\u0627\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0642\\u0648\\u0644\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0639\\u0644\\u064a\\u0647\\u0627 \\u0648\\u0625\\u0646\\u0647\\u0627\\u0626\\u0647\\u0627\\u060c \\u0648\\u0627\\u0644\\u0628\\u062d\\u062b \\u0641\\u064a \\u0627\\u0644\\u0625\\u0634\\u0647\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062c\\u0644\\u0629 \\u0641\\u064a\\u0647 \\u0648\\u0627\\u0633\\u062a\\u062e\\u0631\\u0627\\u062c \\u062a\\u0642\\u0627\\u0631\\u064a\\u0631 \\u0627\\u0644\\u0628\\u062d\\u062b \\u0627\\u0644\\u0645\\u0639\\u062a\\u0645\\u062f\\u0629.\",\"updated_at\":\"2024-01-04 09:35:07\",\"created_at\":\"2024-01-04 09:35:07\",\"id\":92}', '175.110.195.251', '2024-01-04 16:35:07', '2024-01-04 16:35:07'),
(392, 'audit:created', 93, 'App\\Models\\Service#93', 1, '{\"name\":\"\\u062a\\u0648\\u062b\\u064a\\u0642 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0646\\u0638\\u0627\\u0645 \\u064a\\u062e\\u062f\\u0645 \\u0623\\u0635\\u062d\\u0627\\u0628 \\u0627\\u0644\\u0645\\u0647\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0629 \\u0648\\u0627\\u0644\\u0633\\u062c\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u064a\\u0645\\u0627\\u0631\\u0633\\u0648\\u0646 \\u0623\\u0639\\u0645\\u0627\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629\\u060c \\u0628\\u062d\\u064a\\u062b \\u064a\\u0633\\u0645\\u062d \\u0644\\u0647\\u0645 \\u0628\\u062a\\u0648\\u062b\\u064a\\u0642 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0627\\u062a \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u064a \\u064a\\u0632\\u0627\\u0648\\u0644\\u0648\\u0646 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644\\u0647\\u0627 \\u0639\\u0645\\u0644 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u0629\\u060c \\u0648\\u064a\\u062a\\u0645 \\u062a\\u0648\\u062b\\u064a\\u0642 \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628 \\u0628\\u0646\\u0627\\u0621\\u064b \\u0639\\u0644\\u0649 \\u0648\\u062b\\u064a\\u0642\\u0629 \\u0633\\u0627\\u0631\\u064a\\u0629 (\\u0633\\u062c\\u0644 \\u062a\\u062c\\u0627\\u0631\\u064a \\u0623\\u0648 \\u0648\\u062b\\u064a\\u0642\\u0629 \\u0639\\u0645\\u0644 \\u062d\\u0631) \\u0645\\u0639 \\u062d\\u0633\\u0627\\u0628 \\u0628\\u0646\\u0643\\u064a \\u062a\\u062c\\u0627\\u0631\\u064a \\u0645\\u0631\\u062a\\u0628\\u0637 \\u0628\\u0627\\u0644\\u0648\\u062b\\u064a\\u0642\\u0629.\",\"updated_at\":\"2024-01-04 09:35:34\",\"created_at\":\"2024-01-04 09:35:34\",\"id\":93}', '175.110.195.251', '2024-01-04 16:35:34', '2024-01-04 16:35:34'),
(393, 'audit:created', 94, 'App\\Models\\Service#94', 1, '{\"name\":\"\\u0627\\u0644\\u0627\\u0633\\u062a\\u0639\\u0644\\u0627\\u0645 \\u0639\\u0646 \\u0645\\u062a\\u062c\\u0631 \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0645\\u0648\\u062b\\u0651\\u0642 -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u062a\\u0645\\u0643\\u0651\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0647\\u0644\\u0643 \\u0645\\u0646 \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0645\\u0648\\u062b\\u0648\\u0642\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u062c\\u0631 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0627\\u0644\\u0627\\u0637\\u0644\\u0627\\u0639 \\u0639\\u0644\\u0649 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062a\\u0648\\u062b\\u064a\\u0642 \\u0633\\u0648\\u0627\\u0621 \\u0643\\u0627\\u0646\\u062a \\u0644\\u0645\\u062a\\u062c\\u0631 \\u0645\\u0648\\u062b\\u0642 \\u0628\\u0633\\u062c\\u0644 \\u062a\\u062c\\u0627\\u0631\\u064a \\u0623\\u0648 \\u0648\\u062b\\u064a\\u0642\\u0629 \\u0639\\u0645\\u0644 \\u062d\\u0631.\",\"updated_at\":\"2024-01-04 09:36:11\",\"created_at\":\"2024-01-04 09:36:11\",\"id\":94}', '175.110.195.251', '2024-01-04 16:36:11', '2024-01-04 16:36:11'),
(394, 'audit:created', 95, 'App\\Models\\Service#95', 1, '{\"name\":\"\\u0627\\u0644\\u0628\\u062d\\u062b \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u0634\\u0627\\u062f\\u064a \\u0644\\u0644\\u062f\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0648\\u0637\\u0646\\u064a \\u0644\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0627\\u0642\\u062a\\u0635\\u0627\\u062f\\u064a\\u0629 (ISIC4) -\\u0648\\u0632\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u0629\",\"description\":\"\\u062a\\u0645\\u0643\\u0646 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0628\\u062d\\u062b \\u0639\\u0646 \\r\\n\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0635\\u062d\\u0629 \\u0627\\u0644\\u0627\\u0646\\u0633\\u0627\\u0646 \\u0648\\u0627\\u0644\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a:\\r\\n\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u064a\\u0629\\t869052\\r\\n\\u0627\\u0644\\u062a\\u0634\\u063a\\u064a\\u0644 \\u0627\\u0644\\u0637\\u0628\\u064a \\u0644\\u0645\\u062e\\u062a\\u0628\\u0631\\u0627\\u062a \\u0627\\u0644\\u0637\\u0628\\u064a\\u0629 \\u0648\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u0627\\u0634\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0637\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0646\\u062f\\u0629\\t869053\\r\\n\\u0639\\u064a\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0628 \\u0627\\u0644\\u0628\\u062f\\u064a\\u0644 \\u0648\\u0627\\u0644\\u062a\\u0643\\u0645\\u064a\\u0644\\u064a\\t869054\\r\\n\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u0639\\u064a\\u0646 \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u064a\\u0629\\t869038\\r\\n\\u0645\\u0631\\u0627\\u0643\\u0632 \\u062c\\u0645\\u0639 \\u0627\\u0644\\u0639\\u064a\\u0646\\u0627\\u062a\\t869055\\r\\n\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0648\\u0631\\u064a\\u062f\\u064a\\u0629\\r\\n\\r\\n\\u0623\\u0634\\u0643\\u0627\\u0644 \\u0645\\u0646\\u062d \\u0627\\u0644\\u0642\\u0631\\u0648\\u0636 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649:\\r\\n\\u0627\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629 \\u0648\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u062a\\u0623\\u0645\\u064a\\u0646\\r\\n\\u0627\\u0644\\u062a\\u0645\\u0648\\u064a\\u0644 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643\\u064a \\u0627\\u0644\\u0645\\u064f\\u0635\\u063a\\u0631\\t649228\\r\\n\\u0627\\u0644\\u062a\\u0645\\u0648\\u064a\\u0644 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0639\\u064a \\u0628\\u0627\\u0644\\u062f\\u064a\\u0646\\t649232\\r\\n\\u0627\\u0644\\u0648\\u0633\\u0627\\u0637\\u0629 \\u0627\\u0644\\u0631\\u0642\\u0645\\u064a\\u0629\\t649915\\r\\n\\u062a\\u062d\\u0635\\u064a\\u0644 \\u062f\\u064a\\u0648\\u0646 \\u062c\\u0647\\u0627\\u062a \\u0627\\u0644\\u062a\\u0645\\u0648\\u064a\\u0644\\r\\n\\r\\n\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0634\\u064a\\u064a\\u062f \\u0627\\u0644\\u0645\\u062a\\u0639\\u0644\\u0642\\u0629 \\u0628\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639 \\u0627\\u0644\\u0647\\u0646\\u062f\\u0633\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0646\\u064a\\u0629 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649\\r\\n\\u0627\\u0644\\u062a\\u0634\\u064a\\u064a\\u062f\\r\\n\\u0625\\u0635\\u0644\\u0627\\u062d \\u0648\\u0635\\u064a\\u0627\\u0646\\u0629 \\u0627\\u0644\\u0633\\u062f\\u0648\\u062f\\t429073\\r\\n\\u0625\\u0635\\u0644\\u0627\\u062d \\u0648\\u0635\\u064a\\u0627\\u0646\\u0629 \\u0623\\u0631\\u0635\\u0641\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0646\\u0626 \\u0648\\u0627\\u0644\\u0645\\u0631\\u0627\\u0641\\u0642 \\u0627\\u0644\\u0628\\u062d\\u0631\\u064a\\u0629\\t429074\\r\\n\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0625\\u0642\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0642\\u0635\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0649\\r\\n\\u0623\\u0646\\u0634\\u0637\\u0629 \\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0627\\u0642\\u0627\\u0645\\u0629 \\u0648\\u0627\\u0644\\u0637\\u0639\\u0627\\u0645\\r\\n\\u0641\\u0646\\u0627\\u062f\\u0642 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0634\\u0641\\u0627\\u0621\\t551014\\r\\n\\u0641\\u0646\\u0627\\u062f\\u0642 \\u0627\\u0644\\u0628\\u0648\\u062a\\u064a\\u0643\\t551015\\r\\n\\u0627\\u0644\\u0634\\u0642\\u0642 \\u0627\\u0644\\u0645\\u062e\\u062f\\u0648\\u0645\\u0629\\t551025\\r\\n\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649\\r\\n\\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0648\\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a\\r\\n\\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a\\u0629 \\u0627\\u0644\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629\\t619024\\r\\n\\u062e\\u062f\\u0645\\u0627\\u062a \\u0645\\u0642\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a\\t619025\\r\\n\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0648\\u062a\\u0634\\u063a\\u064a\\u0644 \\u0627\\u0644\\u0623\\u0642\\u0645\\u0627\\u0631 \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0645\\u062d\\u0637\\u0627\\u062a \\u0627\\u0644\\u0623\\u0631\\u0636\\u064a\\u0629\\t619026\\r\\n\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0641\\u0636\\u0627\\u0626\\u064a\\u0629 \\u0643\\u0627\\u0644\\u062a\\u0635\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0641\\u0636\\u0627\\u0626\\u064a \\u0648\\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u0629 \\u0648\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0641\\u0636\\u0627\\u0626\\u064a\\u0629\\t619027\\r\\n\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u0633\\u0627\\u062a\\u0644\\u064a\\u0629\\r\\n\\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0648\\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a\\r\\n\\u062a\\u0642\\u062f\\u064a\\u0645 \\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0627\\u062a \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0623\\u0631\\u0636\\u064a\\u0629\",\"updated_at\":\"2024-01-04 09:38:17\",\"created_at\":\"2024-01-04 09:38:17\",\"id\":95}', '175.110.195.251', '2024-01-04 16:38:17', '2024-01-04 16:38:17'),
(395, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"cVM4T41KEoVc8Ekfges0FxZJAmeEYGS210fHp0nMDcLjRReIU9feT0FsIDFV\"}', '175.110.195.251', '2024-01-04 18:40:02', '2024-01-04 18:40:02'),
(396, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"UCJu8R7Ya9TGZJHujLQkQUHw5q1WpS8sBgdObV065ce4gwq3rj1BVvjy1MBl\"}', '175.110.195.251', '2024-01-06 13:42:43', '2024-01-06 13:42:43'),
(397, 'audit:updated', 1, 'App\\Models\\Quotation#1', 1, '{\"is_sent_email\":\"0\",\"updated_at\":\"2024-01-06 07:25:20\"}', '175.110.195.251', '2024-01-06 14:25:20', '2024-01-06 14:25:20'),
(398, 'audit:updated', 1, 'App\\Models\\Quotation#1', 1, '{\"is_sent_email\":\"1\",\"updated_at\":\"2024-01-06 07:25:22\"}', '175.110.195.251', '2024-01-06 14:25:22', '2024-01-06 14:25:22'),
(399, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"9cg7zAj5qcWhxcmphOJfmSKh1Vpzumf1ZCBth2YQ1S5EIPbxYJJ4TiUHNeiW\"}', '175.110.195.251', '2024-01-06 16:38:29', '2024-01-06 16:38:29'),
(400, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"remember_token\":\"EHZ1iq2U2eyg2ILIQtLau5tPP0oXqG5GqTllaqTIBJBshLYek3C7v4rOfHGD\"}', '175.110.195.251', '2024-01-06 16:56:34', '2024-01-06 16:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `request_service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `request_service_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 7, 1, '2023-07-03 15:07:56', '2023-07-03 15:07:56'),
(2, 'qwe', 7, 1, '2023-07-03 15:08:01', '2023-07-03 15:08:01'),
(3, 'asfsaf', 7, 1, '2023-07-03 15:08:11', '2023-07-03 15:08:11'),
(4, 'ewq', 8, 2, '2023-07-04 14:48:33', '2023-07-04 14:48:33'),
(5, 'qwe', 6, 3, '2023-07-04 17:36:43', '2023-07-04 17:36:43'),
(6, 'rqw', 9, 3, '2023-07-04 17:36:44', '2023-07-04 17:36:44'),
(7, 'ewq', 6, 3, '2023-07-04 17:45:14', '2023-07-04 17:45:14'),
(8, 'أهلا انا المستشار الموكل للخدمة', 6, 4, '2023-07-06 15:20:20', '2023-07-06 15:20:20'),
(9, 'أهلا', 12, 4, '2023-07-06 15:20:26', '2023-07-06 15:20:26'),
(10, 'ٍٍسأرسل الملفات', 12, 4, '2023-07-06 15:20:53', '2023-07-06 15:20:53'),
(11, NULL, 12, 4, '2023-07-06 15:21:09', '2023-07-06 15:21:09'),
(12, 'fasmf', 6, 5, '2023-07-06 18:00:48', '2023-07-06 18:00:48'),
(13, 'asg', 13, 5, '2023-07-06 18:00:53', '2023-07-06 18:00:53'),
(14, NULL, 6, 5, '2023-07-06 18:01:03', '2023-07-06 18:01:03'),
(15, 'asd', 13, 5, '2023-07-06 18:03:32', '2023-07-06 18:03:32'),
(16, 'أهلا انا المستشار الموكل للخدمة هذه', 6, 6, '2023-07-13 13:54:42', '2023-07-13 13:54:42'),
(17, 'اهلا', 14, 6, '2023-07-13 13:54:51', '2023-07-13 13:54:51'),
(18, 'سأرسل لك الملفات المطلوبة', 14, 6, '2023-07-13 13:55:01', '2023-07-13 13:55:01'),
(19, 'هذه هي الملفات', 14, 6, '2023-07-13 13:55:29', '2023-07-13 13:55:29'),
(20, 'فترة التعديل', 14, 6, '2023-07-13 13:58:16', '2023-07-13 13:58:16'),
(21, 'أهلا انا المستشار الموكل للخدمة', 6, 8, '2023-07-18 15:27:16', '2023-07-18 15:27:16'),
(22, 'اهلا سأرسل لك كل الملفات', 15, 8, '2023-07-18 15:27:26', '2023-07-18 15:27:26'),
(23, NULL, 15, 8, '2023-07-18 15:27:53', '2023-07-18 15:27:53'),
(24, 'شب', 6, 8, '2023-07-18 15:31:45', '2023-07-18 15:31:45'),
(25, 'صضث', 6, 8, '2023-07-18 15:31:46', '2023-07-18 15:31:46'),
(26, 'اهلا انا المستشار الموكل لهذه الخدمة', 6, 13, '2023-08-03 15:35:35', '2023-08-03 15:35:35'),
(27, 'اهلا سأرسل لك كل الملفات', 18, 13, '2023-08-03 15:35:43', '2023-08-03 15:35:43'),
(28, 'هذه الملفات المطلوبة', 18, 13, '2023-08-03 15:36:26', '2023-08-03 15:36:26'),
(29, 'asd', 18, 13, '2023-08-03 15:47:26', '2023-08-03 15:47:26'),
(30, 'fas', 6, 13, '2023-08-03 15:47:28', '2023-08-03 15:47:28'),
(31, 'اهلا انا المستشار الموكل لهذه الخدمة', 6, 16, '2023-11-23 17:24:02', '2023-11-23 17:24:02'),
(32, 'اهلا سأرسل لك البيانات', 21, 16, '2023-11-23 17:24:12', '2023-11-23 17:24:12'),
(33, NULL, 21, 16, '2023-11-23 17:24:33', '2023-11-23 17:24:33'),
(34, 'تمام', 6, 16, '2023-11-23 17:24:47', '2023-11-23 17:24:47'),
(35, 'لا توجد تعديلات', 6, 16, '2023-11-23 17:26:42', '2023-11-23 17:26:42'),
(36, 'تمام', 21, 16, '2023-11-23 17:26:45', '2023-11-23 17:26:45'),
(37, 'اهلا انا المستشار الموكل لهذه الخدمة', 6, 19, '2023-11-28 17:17:41', '2023-11-28 17:17:41'),
(38, 'سأرسل لك الملفات', 24, 19, '2023-11-28 17:17:50', '2023-11-28 17:17:50'),
(39, 'هذه هي الملفات المطلوبة', 24, 19, '2023-11-28 17:18:11', '2023-11-28 17:18:11'),
(40, 'اوكي', 6, 19, '2023-11-28 17:18:33', '2023-11-28 17:18:33'),
(41, 'اريد تعديل جديد', 24, 19, '2023-11-28 17:21:26', '2023-11-28 17:21:26'),
(42, 'تم التعديل', 6, 19, '2023-11-28 17:21:33', '2023-11-28 17:21:33'),
(43, 'اهلا انا المستشار الموكل لهذه الخدمة', 6, 25, '2023-12-21 19:08:27', '2023-12-21 19:08:27'),
(44, 'سأرسل اليك البيانات المطلوبة', 30, 25, '2023-12-21 19:08:51', '2023-12-21 19:08:51'),
(45, NULL, 30, 25, '2023-12-21 19:09:05', '2023-12-21 19:09:05'),
(46, 'هناك تعديل اخر', 30, 25, '2023-12-21 19:12:48', '2023-12-21 19:12:48'),
(47, 'jjj', 33, 27, '2023-12-23 19:04:13', '2023-12-23 19:04:13'),
(48, 'hello', 33, 27, '2023-12-23 19:05:08', '2023-12-23 19:05:08'),
(49, NULL, 33, 27, '2023-12-23 19:19:36', '2023-12-23 19:19:36'),
(50, 'helii', 35, 29, '2023-12-23 20:06:03', '2023-12-23 20:06:03'),
(51, NULL, 36, 30, '2023-12-24 16:08:47', '2023-12-24 16:08:47'),
(52, NULL, 38, 31, '2023-12-24 21:44:22', '2023-12-24 21:44:22'),
(53, 'اهلا انا المستشار الوكل لهذه الخدمة', 39, 32, '2023-12-25 15:36:00', '2023-12-25 15:36:00'),
(54, 'شكرا مستشار شارسلك البيانات المطلوبة', 40, 32, '2023-12-25 15:37:39', '2023-12-25 15:37:39'),
(55, 'h', 1, 39, '2023-12-26 23:06:36', '2023-12-26 23:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE `consultants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultants`
--

INSERT INTO `consultants` (`id`, `specialization`, `short_description`, `description`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'Porro aut est quia', 'Dolore dolor commodi', 3, '2023-06-22 19:12:36', '2023-06-27 17:04:03', '2023-06-27 17:04:03'),
(2, 'دكتوراه إدارة استراتيجية', 'خبير تميز مؤسسي وفق معايير التميز الأوروبي  EFQM مدقق ومقيم داخلي من EFQM  مخطط ومطور أعمال مرخص من وزارة الموارد البشرية إدارة المواهب واستقطابها مرخص من وزارة الموارد البشرية مدربة دولية معتمدة', 'خبير تميز مؤسسي وفق معايير التميز الأوروبي  EFQM \r\nمدقق ومقيم داخلي من EFQM  \r\nمخطط ومطور أعمال مرخص من وزارة الموارد البشرية\r\n إدارة المواهب واستقطابها مرخص من وزارة الموارد البشرية مدربة دولية معتمدة', 6, '2023-06-27 17:09:24', '2023-07-04 14:49:22', NULL),
(3, NULL, 'Voluptate est sunt', 'Nulla sint tempor au', 11, '2023-07-04 17:31:27', '2023-07-04 17:32:01', '2023-07-04 17:32:01'),
(4, NULL, 'مستشار', 'مستشار', 39, '2023-12-25 15:22:34', '2023-12-25 15:22:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joinings`
--

CREATE TABLE `joinings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience_years` int(11) NOT NULL,
  `is_sent_email` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(87, 'App\\Models\\RequestService', 16, '9f44d94a-b2d3-44dc-9365-2e127441f185', 'contract', '655f43a1128f4_elitefon.ru_19033', '655f43a1128f4_elitefon.ru_19033.jpg', 'image/jpeg', 'public', 'public', 655043, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-11-23 17:20:53', '2023-11-23 17:20:53'),
(10, 'App\\Models\\Comment', 4, '427b0bd0-14b1-4eef-ab1b-e20e604d03cc', 'files', '6494653884a36_assassins-creed-origins-5k-zu-1920x1080', '6494653884a36_assassins-creed-origins-5k-zu-1920x1080.jpg', 'image/jpeg', 'public', 'public', 698778, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-06-22 19:14:02', '2023-06-22 19:14:02'),
(9, 'App\\Models\\Consultant', 1, '39e5b4ce-b33f-40c7-b185-2663c8780a1d', 'photo', '649464e11849f_Alone-sad-1920x1080-wallpaper', '649464e11849f_Alone-sad-1920x1080-wallpaper.jpg', 'image/jpeg', 'public', 'public', 125897, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-06-22 19:12:36', '2023-06-22 19:12:37'),
(31, 'App\\Models\\Consultant', 3, '7ee277d2-f8c6-4f91-bfed-efba2361ad2c', 'photo', '64a41f2f0d01d_bridge_night_fog_123534_1920x1080', '64a41f2f0d01d_bridge_night_fog_123534_1920x1080.jpg', 'image/jpeg', 'public', 'public', 282157, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-04 17:31:27', '2023-07-04 17:31:28'),
(7, 'App\\Models\\RequestService', 1, 'a3b38751-bded-4128-833e-cbdf6e5017f9', 'contract', '649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81', '649464b5ed52c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg', 'image/jpeg', 'public', 'public', 1152135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-06-22 19:11:50', '2023-06-22 19:11:51'),
(32, 'App\\Models\\RequestService', 3, 'e982bd97-283d-4784-8904-0f6174400cbb', 'contract', '64a4204503120_assassins-creed-origins-5k-zu-1920x1080', '64a4204503120_assassins-creed-origins-5k-zu-1920x1080.jpg', 'image/jpeg', 'public', 'public', 698778, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-04 17:36:05', '2023-07-04 17:36:06'),
(30, 'App\\Models\\RequestService', 2, '2ebd572a-37d6-4e86-8a50-fa30ab6e72cd', 'certificates', '64a3f9a646fb5_bridge_night_fog_123534_1920x1080', '64a3f9a646fb5_bridge_night_fog_123534_1920x1080.jpg', 'image/jpeg', 'public', 'public', 282157, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 7, '2023-07-04 14:51:20', '2023-07-04 14:51:20'),
(13, 'App\\Models\\Comment', 7, '23444548-9f9c-4193-995c-2e88c3dc5494', 'files', '6496f4c84662d_assassins-creed-origins-5k-zu-1920x1080', '6496f4c84662d_assassins-creed-origins-5k-zu-1920x1080.jpg', 'image/jpeg', 'public', 'public', 698778, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-06-24 17:51:19', '2023-06-24 17:51:19'),
(14, 'App\\Models\\Comment', 7, '6d09d2fe-1aed-4b1b-a411-11616d8a4151', 'files', '6496f4cb43db0_beach_coast_aerial_view_151206_1920x1080', '6496f4cb43db0_beach_coast_aerial_view_151206_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1908573, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-06-24 17:51:19', '2023-06-24 17:51:20'),
(15, 'App\\Models\\Comment', 7, 'c736490b-c910-4254-93bf-be121f407407', 'files', '6496f4d06ba19_New Text Document', '6496f4d06ba19_New-Text-Document.txt', 'application/x-empty', 'public', 'public', 0, '[]', '[]', '[]', '[]', 3, '2023-06-24 17:51:20', '2023-06-24 17:51:20'),
(16, 'App\\Models\\Comment', 7, '1b9e90e3-bd14-416a-b11b-9088461a4ff9', 'files', '6496f4d3cce43_FCM.postman_collection', '6496f4d3cce43_FCM.postman_collection.json', 'application/json', 'public', 'public', 2315, '[]', '[]', '[]', '[]', 4, '2023-06-24 17:51:20', '2023-06-24 17:51:20'),
(29, 'App\\Models\\RequestService', 2, 'bf6d6941-3a6f-4e2e-bfad-95da639f2012', 'finished_files_from_admin', '64a3f98539c6c_canyon_mountains_cliff_155142_1920x1080', '64a3f98539c6c_canyon_mountains_cliff_155142_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1201682, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-07-04 14:50:46', '2023-07-04 14:50:46'),
(28, 'App\\Models\\RequestService', 2, 'dff734bc-6137-45be-980c-36f7007bdb10', 'cost_2_file', '64a3f9749229c_180884', '64a3f9749229c_180884.jpg', 'image/jpeg', 'public', 'public', 308525, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-07-04 14:50:29', '2023-07-04 14:50:30'),
(27, 'App\\Models\\RequestService', 2, 'dd42eb2f-265b-4352-8a81-db2bb9497ab8', 'finished_files', '64a3f95c5f415_assassins-creed-origins-5k-zu-1920x1080', '64a3f95c5f415_assassins-creed-origins-5k-zu-1920x1080.jpg', 'image/jpeg', 'public', 'public', 698778, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-07-04 14:50:07', '2023-07-04 14:50:07'),
(26, 'App\\Models\\RequestService', 2, '8c1cb3dc-42b6-416c-b3d0-27251b050007', 'finished_files', '64a3f95a43c87_assassins-creed-rogue-game-hd-wallpaper-1920x1080-45108', '64a3f95a43c87_assassins-creed-rogue-game-hd-wallpaper-1920x1080-45108.jpg', 'image/jpeg', 'public', 'public', 352250, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-07-04 14:50:06', '2023-07-04 14:50:07'),
(25, 'App\\Models\\RequestService', 2, 'c4223a53-e148-41b3-9d2a-76e6dd24dfb3', 'cost_1_file', '64a3f8f355cf0_assassins-creed-hd-wallpaper', '64a3f8f355cf0_assassins-creed-hd-wallpaper.jpg', 'image/jpeg', 'public', 'public', 1177669, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-07-04 14:48:20', '2023-07-04 14:48:20'),
(24, 'App\\Models\\RequestService', 2, 'cd2d8efb-c418-4ac8-82c0-a76729ecba6c', 'contract', '64a3f8e22848f_bridge_night_fog_123534_1920x1080', '64a3f8e22848f_bridge_night_fog_123534_1920x1080.jpg', 'image/jpeg', 'public', 'public', 282157, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-04 14:48:03', '2023-07-04 14:48:03'),
(23, 'App\\Models\\Consultant', 2, 'b2a031cc-4822-4698-a4f9-d375b80f1d43', 'photo', '649adf81ed021_Picture1', '649adf81ed021_Picture1.png', 'image/png', 'public', 'public', 27048, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-06-27 17:09:24', '2023-06-27 17:09:25'),
(33, 'App\\Models\\RequestService', 3, '48a4535d-d240-4f27-8770-980b134f1e81', 'cost_1_file', '64a4205400585_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81', '64a4205400585_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg', 'image/jpeg', 'public', 'public', 1152135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-07-04 17:36:20', '2023-07-04 17:36:21'),
(34, 'App\\Models\\RequestService', 3, '4b7fc943-9234-433c-9a66-7efa5efec794', 'finished_files', '64a420752951e_assassins-creed-origins-5k-zu-1920x1080', '64a420752951e_assassins-creed-origins-5k-zu-1920x1080.jpg', 'image/jpeg', 'public', 'public', 698778, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-07-04 17:37:55', '2023-07-04 17:37:55'),
(35, 'App\\Models\\RequestService', 3, 'aaa96234-143f-4206-b473-c7a486a3bb87', 'finished_files', '64a420774bed5_39602608-mysterious-wallpapers', '64a420774bed5_39602608-mysterious-wallpapers.jpg', 'image/jpeg', 'public', 'public', 607068, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-07-04 17:37:55', '2023-07-04 17:37:56'),
(36, 'App\\Models\\RequestService', 3, '9e1158ca-6a25-40f4-bb94-6f0968f026e2', 'cost_2_file', '64a420dba5173_831927-kush-wallpaper-hd-1920x1080-4k', '64a420dba5173_831927-kush-wallpaper-hd-1920x1080-4k.jpg', 'image/jpeg', 'public', 'public', 520336, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-07-04 17:38:36', '2023-07-04 17:38:37'),
(37, 'App\\Models\\RequestService', 3, '68a56d02-e05d-433e-8845-df97da520c44', 'finished_files_from_admin', '64a42114773c1_180884', '64a42114773c1_180884.jpg', 'image/jpeg', 'public', 'public', 308525, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-07-04 17:40:21', '2023-07-04 17:40:21'),
(38, 'App\\Models\\RequestService', 3, '1d73fcca-7db6-41b9-9ac6-eba1cb6b86d1', 'finished_files_from_admin', '64a42118162ee_cars', '64a42118162ee_cars.jpg', 'image/jpeg', 'public', 'public', 89494, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 7, '2023-07-04 17:40:21', '2023-07-04 17:40:21'),
(39, 'App\\Models\\RequestService', 3, 'f29d1e28-75a6-4ab7-8981-857c5dd91b74', 'certificates', '64a42283bcd6d_canyon_mountains_cliff_155142_1920x1080', '64a42283bcd6d_canyon_mountains_cliff_155142_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1201682, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 8, '2023-07-04 17:45:41', '2023-07-04 17:45:41'),
(40, 'App\\Models\\RequestService', 4, 'a8e9a897-1d97-4908-b3c7-9f5b63055001', 'contract', '64a6a2ea18828_monster_mask_creature_160895_1920x1080', '64a6a2ea18828_monster_mask_creature_160895_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1506566, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-06 15:18:06', '2023-07-06 15:18:06'),
(41, 'App\\Models\\RequestService', 4, 'b59af7ca-3bdf-4544-904e-892e4b78cd89', 'cost_1_file', '64a6a32087cfe_HD-Lighthouse-Wallpapers-1080p-download-widescreen-high-quality-artworks-colourful-ultra-hd-4k-1920x1080', '64a6a32087cfe_HD-Lighthouse-Wallpapers-1080p-download-widescreen-high-quality-artworks-colourful-ultra-hd-4k-1920x1080.jpg', 'image/jpeg', 'public', 'public', 1387077, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-07-06 15:18:58', '2023-07-06 15:18:59'),
(42, 'App\\Models\\Comment', 11, '11801598-baef-46f3-9906-1fcc00f3d80c', 'files', '64a6a39c7fe57_pier_sea_sunset_horizon_120254_1920x1080', '64a6a39c7fe57_pier_sea_sunset_horizon_120254_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1419312, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-06 15:21:09', '2023-07-06 15:21:10'),
(43, 'App\\Models\\Comment', 11, '0ff27d58-831c-4f4f-91fc-c6270cd13509', 'files', '64a6a39de29f4_gas_mask_man_smoke_colorful_119216_1920x1080', '64a6a39de29f4_gas_mask_man_smoke_colorful_119216_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1097739, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-07-06 15:21:10', '2023-07-06 15:21:10'),
(44, 'App\\Models\\Comment', 11, '69dc6647-fc48-4c9d-b117-42523e50b189', 'files', '64a6a3a436f68_commands', '64a6a3a436f68_commands.txt', 'text/plain', 'public', 'public', 869, '[]', '[]', '[]', '[]', 3, '2023-07-06 15:21:10', '2023-07-06 15:21:10'),
(45, 'App\\Models\\RequestService', 4, '42cfba22-564c-4da4-b2b2-4022859fd9f0', 'finished_files', '64a6a3f2d521e_beach_coast_aerial_view_151206_1920x1080', '64a6a3f2d521e_beach_coast_aerial_view_151206_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1908573, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-07-06 15:22:34', '2023-07-06 15:22:35'),
(46, 'App\\Models\\RequestService', 4, 'e1696b1f-57e6-424d-b346-640f917abae9', 'cost_2_file', '64a6a4c886cee_wp1829672', '64a6a4c886cee_wp1829672.jpg', 'image/jpeg', 'public', 'public', 1258822, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-07-06 15:26:05', '2023-07-06 15:26:07'),
(47, 'App\\Models\\RequestService', 4, '2f4d1bd1-ef42-4d5a-b517-c7ccea9feebb', 'finished_files_from_admin', '64a6a502cb3eb_pier_sea_sunset_horizon_120254_1920x1080', '64a6a502cb3eb_pier_sea_sunset_horizon_120254_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1419312, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-07-06 15:27:45', '2023-07-06 15:27:46'),
(48, 'App\\Models\\RequestService', 4, '84c78531-3b4b-4f1d-b51a-d91358aba6c6', 'certificates', '64a6a591bd89a_pier_dock_sea_dusk_shore_118549_1920x1080', '64a6a591bd89a_pier_dock_sea_dusk_shore_118549_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1100011, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-07-06 15:29:27', '2023-07-06 15:29:28'),
(49, 'App\\Models\\RequestService', 5, 'e92b966e-594a-4310-a99c-1246d36b391c', 'contract', '64a6c885a8c0a_monster_mask_creature_160895_1920x1080', '64a6c885a8c0a_monster_mask_creature_160895_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1506566, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-06 17:58:31', '2023-07-06 17:58:31'),
(50, 'App\\Models\\RequestService', 5, '1a333816-224b-420e-b112-bc1ef4cff323', 'cost_1_file', '64a6c8b707c78_wallpaper.wiki-1920x1080-HD-Backgrounds-For-Desktop-PIC-WPE0014151', '64a6c8b707c78_wallpaper.wiki-1920x1080-HD-Backgrounds-For-Desktop-PIC-WPE0014151.jpg', 'image/jpeg', 'public', 'public', 1083166, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-07-06 17:59:20', '2023-07-06 17:59:20'),
(51, 'App\\Models\\Comment', 14, 'b93fac59-ddb6-4649-8ea6-13bd7a65df6c', 'files', '64a6c91edabe6_wallpaper.wiki-1920x1080-HD-Backgrounds-For-Desktop-PIC-WPE0014151', '64a6c91edabe6_wallpaper.wiki-1920x1080-HD-Backgrounds-For-Desktop-PIC-WPE0014151.jpg', 'image/jpeg', 'public', 'public', 1083166, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-06 18:01:03', '2023-07-06 18:01:04'),
(52, 'App\\Models\\RequestService', 5, '3c7d688d-f216-4b40-bcf9-0bdfa4389094', 'finished_files', '64a6c951c8dba_road-sundown-landscape-1920x1080', '64a6c951c8dba_road-sundown-landscape-1920x1080.jpg', 'image/jpeg', 'public', 'public', 851527, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-07-06 18:01:57', '2023-07-06 18:01:57'),
(53, 'App\\Models\\RequestService', 5, 'd76d8063-28f9-4c04-888e-5b645ef80a9c', 'cost_2_file', '64a6c97a57b07_pier_dock_sea_dusk_shore_118549_1920x1080', '64a6c97a57b07_pier_dock_sea_dusk_shore_118549_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1100011, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-07-06 18:02:35', '2023-07-06 18:02:36'),
(54, 'App\\Models\\RequestService', 5, '0f8353fa-a806-493f-a799-92e29583bb9d', 'finished_files_from_admin', '64a6c99917deb_wallpaper.wiki-1920x1080-HD-Backgrounds-For-Desktop-PIC-WPE0014151', '64a6c99917deb_wallpaper.wiki-1920x1080-HD-Backgrounds-For-Desktop-PIC-WPE0014151.jpg', 'image/jpeg', 'public', 'public', 1083166, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-07-06 18:03:08', '2023-07-06 18:03:09'),
(55, 'App\\Models\\RequestService', 5, '06b29d5d-c508-4671-837d-480784a03a00', 'certificates', '64a6c9ca8f457_wallpaper.wiki-1920x1080-HD-Backgrounds-For-Desktop-PIC-WPE0014151', '64a6c9ca8f457_wallpaper.wiki-1920x1080-HD-Backgrounds-For-Desktop-PIC-WPE0014151.jpg', 'image/jpeg', 'public', 'public', 1083166, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-07-06 18:03:56', '2023-07-06 18:03:56'),
(56, 'App\\Models\\RequestService', 6, 'e783ad8c-83d1-427e-b9fb-cd342ceeaad6', 'contract', '64afc92c234fd_180884', '64afc92c234fd_180884.jpg', 'image/jpeg', 'public', 'public', 308525, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-13 13:51:42', '2023-07-13 13:51:42'),
(57, 'App\\Models\\RequestService', 6, 'cec824cc-9845-41de-b66c-1ff7026ce7be', 'cost_1_file', '64afc97289d41_hLGH5uk', '64afc97289d41_hLGH5uk.jpg', 'image/jpeg', 'public', 'public', 648631, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-07-13 13:52:53', '2023-07-13 13:52:53'),
(58, 'App\\Models\\Comment', 19, '7f623a12-aef3-4ba7-8875-f5e1b3b55bfb', 'files', '64afca05cd609_sunset_sea_rings_planet_90890_1920x1080', '64afca05cd609_sunset_sea_rings_planet_90890_1920x1080.jpg', 'image/jpeg', 'public', 'public', 890093, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-13 13:55:29', '2023-07-13 13:55:30'),
(59, 'App\\Models\\Comment', 19, '491f388a-a16d-4d2e-bc8a-d31a647ad776', 'files', '64afca07c49a2_New Text Document', '64afca07c49a2_New-Text-Document.txt', 'application/x-empty', 'public', 'public', 0, '[]', '[]', '[]', '[]', 2, '2023-07-13 13:55:30', '2023-07-13 13:55:30'),
(60, 'App\\Models\\Comment', 19, '97a6365b-165a-4f48-b405-22a54ec0fddc', 'files', '64afca085523b_gas_mask_man_smoke_colorful_119216_1920x1080', '64afca085523b_gas_mask_man_smoke_colorful_119216_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1097739, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-07-13 13:55:30', '2023-07-13 13:55:30'),
(61, 'App\\Models\\RequestService', 6, 'd652f3c5-61b1-4f98-a99a-f6e447383fbc', 'finished_files', '64afca3bf41a6_beach_man_sea_147015_1920x1080', '64afca3bf41a6_beach_man_sea_147015_1920x1080.jpg', 'image/jpeg', 'public', 'public', 937747, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-07-13 13:56:15', '2023-07-13 13:56:16'),
(62, 'App\\Models\\RequestService', 6, '2337adec-0c07-42ef-b2e6-56785d554e60', 'cost_2_file', '64afca6f53fc1_road-sundown-landscape-1920x1080', '64afca6f53fc1_road-sundown-landscape-1920x1080.jpg', 'image/jpeg', 'public', 'public', 851527, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-07-13 13:57:04', '2023-07-13 13:57:05'),
(63, 'App\\Models\\RequestService', 6, '4d146b23-c87b-4b66-8806-02379e51e16b', 'finished_files_from_admin', '64afca8806c8d_sunset_sea_rings_planet_90890_1920x1080', '64afca8806c8d_sunset_sea_rings_planet_90890_1920x1080.jpg', 'image/jpeg', 'public', 'public', 890093, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-07-13 13:57:38', '2023-07-13 13:57:38'),
(64, 'App\\Models\\RequestService', 6, 'a86c2ea8-e491-4ab3-a6c5-1acc299a5453', 'certificates', '64afcab1c7516_peyzazh_fentezi_goroda', '64afcab1c7516_peyzazh_fentezi_goroda.jpg', 'image/jpeg', 'public', 'public', 294272, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-07-13 13:58:21', '2023-07-13 13:58:21'),
(65, 'App\\Models\\RequestService', 8, '7b8dba34-da39-4fc3-b9c1-41b0d31ee97e', 'contract', '64b6767a4ee1a_glare_bokeh_shine_134167_1920x1080', '64b6767a4ee1a_glare_bokeh_shine_134167_1920x1080.jpg', 'image/jpeg', 'public', 'public', 595951, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-18 15:24:44', '2023-07-18 15:24:45'),
(66, 'App\\Models\\RequestService', 8, 'd4a7e4c6-54ff-45be-a690-3488d94e827a', 'cost_1_file', '64b676c3c1c1e_silhouette_glow_portal_142677_1920x1080', '64b676c3c1c1e_silhouette_glow_portal_142677_1920x1080.jpg', 'image/jpeg', 'public', 'public', 742979, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-07-18 15:26:01', '2023-07-18 15:26:01'),
(67, 'App\\Models\\Comment', 23, '6d97fef3-0fff-44cc-ab36-fd46111b38ea', 'files', '64b6772d57697_road-sundown-landscape-1920x1080', '64b6772d57697_road-sundown-landscape-1920x1080.jpg', 'image/jpeg', 'public', 'public', 851527, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-07-18 15:27:53', '2023-07-18 15:27:54'),
(68, 'App\\Models\\Comment', 23, '95be0e87-c1a1-4621-8b8c-ffbf76454fc8', 'files', '64b677381943c_HD-Lighthouse-Wallpapers-1080p-download-widescreen-high-quality-artworks-colourful-ultra-hd-4k-1920x1080', '64b677381943c_HD-Lighthouse-Wallpapers-1080p-download-widescreen-high-quality-artworks-colourful-ultra-hd-4k-1920x1080.jpg', 'image/jpeg', 'public', 'public', 1387077, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-07-18 15:27:54', '2023-07-18 15:27:54'),
(69, 'App\\Models\\RequestService', 8, '9cd2ba05-cf14-475a-9795-127254190162', 'finished_files', '64b6775571a82_tunnel_underground_dark_130595_1920x1080', '64b6775571a82_tunnel_underground_dark_130595_1920x1080.jpg', 'image/jpeg', 'public', 'public', 672567, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-07-18 15:28:27', '2023-07-18 15:28:27'),
(70, 'App\\Models\\RequestService', 8, '60879c91-4181-4cd7-a0f0-fe6cfc4a9b4f', 'cost_2_file', '64b67781d21be_tiger_jump_sea_underwater_hunting_26793_1920x1080', '64b67781d21be_tiger_jump_sea_underwater_hunting_26793_1920x1080.jpg', 'image/jpeg', 'public', 'public', 719939, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-07-18 15:30:24', '2023-07-18 15:30:24'),
(71, 'App\\Models\\RequestService', 8, '3c7288ba-fcd5-41f3-bacd-a943a7dc687d', 'finished_files_from_admin', '64b677e57b3f4_night_city_buildings_aerial_view_151198_1920x1080', '64b677e57b3f4_night_city_buildings_aerial_view_151198_1920x1080.jpg', 'image/jpeg', 'public', 'public', 903835, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-07-18 15:30:46', '2023-07-18 15:30:46'),
(72, 'App\\Models\\RequestService', 8, '28139ff5-0fcf-4193-af7c-43af9b99a39e', 'certificates', '64b6781de3e8c_man_silhouette_horizon_120733_1920x1080', '64b6781de3e8c_man_silhouette_horizon_120733_1920x1080.jpg', 'image/jpeg', 'public', 'public', 425446, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-07-18 15:31:48', '2023-07-18 15:31:48'),
(73, 'App\\Models\\RequestService', 13, 'eeceab8a-2ff5-494b-ae13-ad6ecdc450cd', 'contract', '64cb904cd5cc1_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81', '64cb904cd5cc1_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg', 'image/jpeg', 'public', 'public', 1152135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-08-03 15:32:33', '2023-08-03 15:32:33'),
(74, 'App\\Models\\RequestService', 13, '3597273a-ba89-4c4c-ac31-7461a9fa055b', 'cost_1_file', '64cb90b7eef84_night_city_buildings_aerial_view_151198_1920x1080', '64cb90b7eef84_night_city_buildings_aerial_view_151198_1920x1080.jpg', 'image/jpeg', 'public', 'public', 903835, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-08-03 15:34:18', '2023-08-03 15:34:18'),
(75, 'App\\Models\\Comment', 28, '22c012bf-d4f4-4003-8266-291b54dac47a', 'files', '64cb911b47b73_emma_watson_brunette_eyes_face_black_and_white_64219_1920x1080', '64cb911b47b73_emma_watson_brunette_eyes_face_black_and_white_64219_1920x1080.jpg', 'image/jpeg', 'public', 'public', 301131, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-08-03 15:36:26', '2023-08-03 15:36:26'),
(76, 'App\\Models\\Comment', 28, '7f6b4c9a-385c-4336-be2b-72801e7a85e3', 'files', '64cb9128f2d34_girl-bike-art-1', '64cb9128f2d34_girl-bike-art-1.jpg', 'image/jpeg', 'public', 'public', 856480, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-08-03 15:36:26', '2023-08-03 15:36:27'),
(77, 'App\\Models\\Comment', 28, '13a6314c-f4d6-4223-a4e4-d8039eafaba8', 'files', '64cb9128f199c_road-sundown-landscape-1920x1080', '64cb9128f199c_road-sundown-landscape-1920x1080.jpg', 'image/jpeg', 'public', 'public', 851527, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-08-03 15:36:27', '2023-08-03 15:36:27'),
(78, 'App\\Models\\Comment', 28, 'afe7e3f0-17fa-4063-ab5b-dcd658ddfc05', 'files', '64cb912da3921_composer', '64cb912da3921_composer.json', 'application/json', 'public', 'public', 63, '[]', '[]', '[]', '[]', 4, '2023-08-03 15:36:27', '2023-08-03 15:36:27'),
(79, 'App\\Models\\RequestService', 13, 'cc2c4410-d8af-451a-b9f2-6975b28cd51d', 'finished_files', '64cb9195afc6e_wp1829672', '64cb9195afc6e_wp1829672.jpg', 'image/jpeg', 'public', 'public', 1258822, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-08-03 15:43:08', '2023-08-03 15:43:10'),
(80, 'App\\Models\\RequestService', 13, '834de024-36b5-4060-a9af-76da4b0ef8ed', 'finished_files', '64cb91970793e_assassins-creed-hd-wallpaper', '64cb91970793e_assassins-creed-hd-wallpaper.jpg', 'image/jpeg', 'public', 'public', 1177669, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-08-03 15:43:10', '2023-08-03 15:43:10'),
(81, 'App\\Models\\RequestService', 13, 'ccccd049-86e3-4e66-87fc-38098358ba0f', 'cost_2_file', '64cb93073d1c7_tunnel_underground_dark_130595_1920x1080', '64cb93073d1c7_tunnel_underground_dark_130595_1920x1080.jpg', 'image/jpeg', 'public', 'public', 672567, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-08-03 15:44:38', '2023-08-03 15:44:38'),
(82, 'App\\Models\\RequestService', 13, '2970b4af-410e-41f8-ad7d-d561596bbb17', 'finished_files_from_admin', '64cb936d61500_train_railway_bridge_122067_1920x1080', '64cb936d61500_train_railway_bridge_122067_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1122135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-08-03 15:46:26', '2023-08-03 15:46:27'),
(83, 'App\\Models\\RequestService', 13, 'f8b04f9d-1890-4dfa-9318-710eb4813986', 'finished_files_from_admin', '64cb938833bbf_couple_starry_sky_art_123338_1920x1080', '64cb938833bbf_couple_starry_sky_art_123338_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1121190, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 7, '2023-08-03 15:46:27', '2023-08-03 15:46:27'),
(84, 'App\\Models\\RequestService', 13, '097be8c9-f7f3-457c-97d4-36b67d0c6384', 'certificates', '64cb93ebb14ca_pier_dock_sea_dusk_shore_118549_1920x1080', '64cb93ebb14ca_pier_dock_sea_dusk_shore_118549_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1100011, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 8, '2023-08-03 15:48:35', '2023-08-03 15:48:36'),
(86, 'App\\Models\\AboutUs', 1, 'c10ade3e-c825-420b-b24a-7bde5817302a', 'cv', '6558b28b6bc6c_logo-alliance', '6558b28b6bc6c_logo-alliance.png', 'image/png', 'public', 'public', 77280, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-11-18 17:48:13', '2023-11-18 17:48:13'),
(88, 'App\\Models\\RequestService', 16, 'fb92e169-ea07-4a16-845c-10759ffb2cf2', 'cost_1_file', '655f43dca1bd5_180884', '655f43dca1bd5_180884.jpg', 'image/jpeg', 'public', 'public', 308525, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-11-23 17:21:50', '2023-11-23 17:21:50'),
(89, 'App\\Models\\Comment', 33, 'c86d790b-3da6-49d7-9258-2a490b4b382d', 'files', '655f447a78975_night_city_buildings_aerial_view_151198_1920x1080', '655f447a78975_night_city_buildings_aerial_view_151198_1920x1080.jpg', 'image/jpeg', 'public', 'public', 903835, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-11-23 17:24:33', '2023-11-23 17:24:33'),
(90, 'App\\Models\\Comment', 33, 'd67c72ae-ce54-4337-ab0c-78595c13e716', 'files', '655f447e795d3_mad_max_mad_max_fury_road_desert_explosion_102291_1920x1080', '655f447e795d3_mad_max_mad_max_fury_road_desert_explosion_102291_1920x1080.jpg', 'image/jpeg', 'public', 'public', 970586, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-11-23 17:24:33', '2023-11-23 17:24:34'),
(91, 'App\\Models\\Comment', 33, '856d3c81-dbca-481d-bd68-63ae58ffc990', 'files', '655f447ede8d7_girl-bike-art-1', '655f447ede8d7_girl-bike-art-1.jpg', 'image/jpeg', 'public', 'public', 856480, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-11-23 17:24:34', '2023-11-23 17:24:34'),
(92, 'App\\Models\\RequestService', 16, 'b0815f1f-361b-48ce-b5ef-970118c6c0ee', 'finished_files', '655f44a095f49_download', '655f44a095f49_download.jpg', 'image/jpeg', 'public', 'public', 862194, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-11-23 17:25:07', '2023-11-23 17:25:07'),
(93, 'App\\Models\\RequestService', 16, '96d4fd78-2c88-4b93-88e0-6df5c191e218', 'cost_2_file', '655f44b6c1c97_cute-girl-1920x1080-wonder-woman-costume-cosplay-hd-3170', '655f44b6c1c97_cute-girl-1920x1080-wonder-woman-costume-cosplay-hd-3170.jpg', 'image/jpeg', 'public', 'public', 446121, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-11-23 17:25:27', '2023-11-23 17:25:28'),
(94, 'App\\Models\\RequestService', 16, '6f1dcbd3-c4ae-4f9e-ada3-340f7bd27c96', 'finished_files_from_admin', '655f44d325453_train_railway_bridge_122067_1920x1080', '655f44d325453_train_railway_bridge_122067_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1122135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-11-23 17:25:57', '2023-11-23 17:25:58'),
(95, 'App\\Models\\RequestService', 16, '461921fa-62f0-454f-b47f-6e881ae72b50', 'certificates', '655f4512ce4d7_beach_man_sea_147015_1920x1080', '655f4512ce4d7_beach_man_sea_147015_1920x1080.jpg', 'image/jpeg', 'public', 'public', 937747, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-11-23 17:26:59', '2023-11-23 17:27:00'),
(96, 'App\\Models\\News', 1, '46cd76f8-9d80-48d1-9d61-b49482cce428', 'photo', '655f4c961f224_pier_dock_sea_dusk_shore_118549_1920x1080', '655f4c961f224_pier_dock_sea_dusk_shore_118549_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1100011, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-11-23 17:59:04', '2023-11-23 17:59:05'),
(97, 'App\\Models\\RequestService', 19, '8ba662f0-7645-4eef-bf1d-5fbb26bc7b5d', 'contract', '6565d95f57eaf_road-sundown-landscape-1920x1080', '6565d95f57eaf_road-sundown-landscape-1920x1080.jpg', 'image/jpeg', 'public', 'public', 851527, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-11-28 17:13:38', '2023-11-28 17:13:39'),
(98, 'App\\Models\\RequestService', 19, 'f6d6bca7-376b-4518-a566-6ac66dc48dcb', 'cost_1_file', '6565d9c59db6b_canyon_mountains_cliff_155142_1920x1080', '6565d9c59db6b_canyon_mountains_cliff_155142_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1201682, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-11-28 17:15:38', '2023-11-28 17:15:39'),
(99, 'App\\Models\\Comment', 39, 'f7637b75-2644-4df2-84ce-80f82609a0ab', 'files', '6565da77df1fc_gas_mask_man_smoke_colorful_119216_1920x1080', '6565da77df1fc_gas_mask_man_smoke_colorful_119216_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1097739, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-11-28 17:18:11', '2023-11-28 17:18:11'),
(100, 'App\\Models\\Comment', 39, 'dbfed405-6a9a-4889-9094-0c6e872e78fe', 'files', '6565da7d5a49f_pier_sea_waves_114944_1920x1080', '6565da7d5a49f_pier_sea_waves_114944_1920x1080.jpg', 'image/jpeg', 'public', 'public', 876200, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-11-28 17:18:11', '2023-11-28 17:18:12'),
(101, 'App\\Models\\RequestService', 19, '69045a10-711e-4acb-a9a2-4b14080014da', 'finished_files', '6565dabd7906b_green_background_tenderness_abstraction_47151_2560x1600', '6565dabd7906b_green_background_tenderness_abstraction_47151_2560x1600.jpg', 'image/jpeg', 'public', 'public', 743183, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-11-28 17:19:14', '2023-11-28 17:19:15'),
(102, 'App\\Models\\RequestService', 19, '5d59ed60-90e3-439f-8c3e-cca5fe49f9d2', 'cost_2_file', '6565daedbc818_sunset_sea_rings_planet_90890_1920x1080', '6565daedbc818_sunset_sea_rings_planet_90890_1920x1080.jpg', 'image/jpeg', 'public', 'public', 890093, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-11-28 17:19:58', '2023-11-28 17:19:59'),
(103, 'App\\Models\\RequestService', 19, '0fda7201-4404-4e7f-ad37-7a3cec7ea5e5', 'finished_files_from_admin', '6565db1b2f38a_train_railway_bridge_122067_1920x1080', '6565db1b2f38a_train_railway_bridge_122067_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1122135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-11-28 17:20:52', '2023-11-28 17:20:53'),
(104, 'App\\Models\\RequestService', 19, 'ac00a939-d691-485b-b354-15bcb9f73937', 'certificates', '6565db5bcf2d5_assassins-creed-hd-wallpaper', '6565db5bcf2d5_assassins-creed-hd-wallpaper.jpg', 'image/jpeg', 'public', 'public', 1177669, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-11-28 17:21:48', '2023-11-28 17:21:49'),
(105, 'App\\Models\\RequestService', 25, '68868976-eda3-4f1b-93d0-7f52debf3877', 'contract', '6584285a5d079_tiger_jump_sea_underwater_hunting_26793_1920x1080', '6584285a5d079_tiger_jump_sea_underwater_hunting_26793_1920x1080.jpg', 'image/jpeg', 'public', 'public', 719939, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-21 18:58:21', '2023-12-21 18:58:22'),
(106, 'App\\Models\\RequestService', 25, '08295e28-ea89-4225-bada-82024b464305', 'cost_1_file', '658429ff8586f_tunnel_underground_dark_130595_1920x1080', '658429ff8586f_tunnel_underground_dark_130595_1920x1080.jpg', 'image/jpeg', 'public', 'public', 672567, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-21 19:05:20', '2023-12-21 19:05:20'),
(107, 'App\\Models\\Comment', 45, '54699264-b0da-46c5-ba05-b3aed4f1fba5', 'files', '65842adfa6a3c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81', '65842adfa6a3c_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg', 'image/jpeg', 'public', 'public', 1152135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-21 19:09:05', '2023-12-21 19:09:06'),
(108, 'App\\Models\\Comment', 45, 'f0a2f856-a0c5-4f6e-b563-e24c81e2fc29', 'files', '65842ae02f96b_train_railway_bridge_122067_1920x1080', '65842ae02f96b_train_railway_bridge_122067_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1122135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-21 19:09:06', '2023-12-21 19:09:06'),
(109, 'App\\Models\\RequestService', 25, 'c6da77da-4e23-4969-b01e-2a265628fd50', 'finished_files', '65842b387d81b_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81', '65842b387d81b_Assassins-Creed-Wallpapers-Full-HD-Free-Download-Wallpaperxyz-dot-Com-81.jpg', 'image/jpeg', 'public', 'public', 1152135, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-12-21 19:10:35', '2023-12-21 19:10:35'),
(110, 'App\\Models\\RequestService', 25, '55a933c4-07a3-4255-a4ae-15190c98d5d1', 'cost_2_file', '65842b5731308_assassins-creed-hd-wallpaper', '65842b5731308_assassins-creed-hd-wallpaper.jpg', 'image/jpeg', 'public', 'public', 1177669, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-12-21 19:11:17', '2023-12-21 19:11:17'),
(111, 'App\\Models\\RequestService', 25, 'df375b55-b570-45eb-a29d-5897b55e9fff', 'finished_files_from_admin', '65842b9c662ef_silhouette_glow_portal_142677_1920x1080', '65842b9c662ef_silhouette_glow_portal_142677_1920x1080.jpg', 'image/jpeg', 'public', 'public', 742979, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-12-21 19:12:18', '2023-12-21 19:12:18'),
(112, 'App\\Models\\RequestService', 25, '7085fea2-3635-473c-bb35-9fe38631019c', 'certificates', '65842bd9a27aa_beach_man_sea_147015_1920x1080', '65842bd9a27aa_beach_man_sea_147015_1920x1080.jpg', 'image/jpeg', 'public', 'public', 937747, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2023-12-21 19:13:17', '2023-12-21 19:13:17'),
(113, 'App\\Models\\RequestService', 23, '4c56a600-ef32-45d4-90a2-4cc0b0681b4f', 'contract', '6584381752d6a_images (5)', '6584381752d6a_images-(5).jpg', 'image/jpeg', 'public', 'public', 8155, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-21 20:05:28', '2023-12-21 20:05:28'),
(114, 'App\\Models\\RequestService', 24, 'd8921d8e-10f7-4e75-ae52-888e73a18990', 'contract', '65843b029489c_images (5)', '65843b029489c_images-(5).jpg', 'image/jpeg', 'public', 'public', 8155, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-21 20:18:02', '2023-12-21 20:18:02'),
(115, 'App\\Models\\RequestService', 27, '8814aed4-7fd3-4dde-8bc5-a038645984a3', 'contract', '6586cc1d59c8c_depositphotos_5803926-Washington-Magnolia-Blossom-near-Smithsonian-2011', '6586cc1d59c8c_depositphotos_5803926-Washington-Magnolia-Blossom-near-Smithsonian-2011.jpg', 'image/jpeg', 'public', 'public', 328950, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-23 19:01:36', '2023-12-23 19:01:36'),
(116, 'App\\Models\\RequestService', 27, '0f3a620b-9760-446e-af5d-3e0a3e154e25', 'cost_1_file', '6586cc52bb119_~$انات التصنيع', '6586cc52bb119_~$انات-التصنيع.docx', 'application/octet-stream', 'public', 'public', 162, '[]', '[]', '[]', '[]', 2, '2023-12-23 19:02:39', '2023-12-23 19:02:39'),
(117, 'App\\Models\\Comment', 49, 'b92577b3-8a38-4d36-9124-f7daffcf29ea', 'files', '6586d046e925b_قطاف', '6586d046e925b_قطاف.jpg', 'image/jpeg', 'public', 'public', 9902, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-23 19:19:36', '2023-12-23 19:19:36'),
(118, 'App\\Models\\RequestService', 29, '1c35278d-84f0-4501-a117-ba6f20fc9e66', 'contract', '6586da866c9f1_49_big', '6586da866c9f1_49_big.jpg', 'image/jpeg', 'public', 'public', 25252, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-23 20:03:12', '2023-12-23 20:03:12'),
(119, 'App\\Models\\RequestService', 29, '21a5c522-a7f5-42cc-81f0-4299f80fdb46', 'cost_1_file', '6586daf6a05a3_قطاف', '6586daf6a05a3_قطاف.jpg', 'image/jpeg', 'public', 'public', 9902, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-23 20:04:55', '2023-12-23 20:04:55'),
(120, 'App\\Models\\Comment', 50, 'b0881757-e9f3-4118-a28a-ea4a6e0f768e', 'files', '6586db3a19cbe_مركز دكتور طلال 2', '6586db3a19cbe_مركز-دكتور-طلال-2.jpg', 'image/jpeg', 'public', 'public', 2668832, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-23 20:06:03', '2023-12-23 20:06:05'),
(121, 'App\\Models\\RequestService', 30, '08400928-6e7b-4aaf-a079-b06b1e76fbad', 'contract', '6587f4b4de3ed_49_big', '6587f4b4de3ed_49_big.jpg', 'image/jpeg', 'public', 'public', 25252, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-24 16:07:16', '2023-12-24 16:07:16'),
(122, 'App\\Models\\RequestService', 30, 'fbaad672-d058-481b-8889-53a392ddf425', 'cost_1_file', '6587f4e185f84_قطاف', '6587f4e185f84_قطاف.jpg', 'image/jpeg', 'public', 'public', 9902, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-24 16:07:46', '2023-12-24 16:07:47'),
(123, 'App\\Models\\Comment', 51, '80f3b5c1-6142-4341-bba4-806f18cb2307', 'files', '6587f51b64c23_قطاف', '6587f51b64c23_قطاف.jpg', 'image/jpeg', 'public', 'public', 9902, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-24 16:08:47', '2023-12-24 16:08:47'),
(124, 'App\\Models\\RequestService', 31, '1a16589f-670e-4ddd-9df4-fabb5fdd5357', 'contract', '65884347241d0_1', '65884347241d0_1.jpg', 'image/jpeg', 'public', 'public', 129372, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-24 21:42:16', '2023-12-24 21:42:16'),
(125, 'App\\Models\\RequestService', 31, 'f45aa26e-a5c0-462c-b0ad-d7ceab47f4ae', 'cost_1_file', '65884393139b5_انصراف', '65884393139b5_انصراف.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'public', 'public', 53898, '[]', '[]', '[]', '[]', 2, '2023-12-24 21:43:32', '2023-12-24 21:43:32'),
(126, 'App\\Models\\Comment', 52, 'bf6c9c20-c598-43de-a7d1-f34ea4a96f20', 'files', '658843c265fa8_dark_thumbnail2', '658843c265fa8_dark_thumbnail2.png', 'image/png', 'public', 'public', 570, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-24 21:44:22', '2023-12-24 21:44:22'),
(127, 'App\\Models\\Consultant', 4, '7a5f06e8-8272-4f9f-bfaf-ed9cb2e73518', 'photo', '65893bbc2309a_1', '65893bbc2309a_1.png', 'image/png', 'public', 'public', 57334, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-25 15:22:34', '2023-12-25 15:22:34'),
(128, 'App\\Models\\RequestService', 32, '6b30285a-29ad-42cc-a9de-9caf6252dfd2', 'contract', '65893df83769a_7', '65893df83769a_7.png', 'image/png', 'public', 'public', 147950, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-25 15:32:09', '2023-12-25 15:32:09'),
(129, 'App\\Models\\RequestService', 32, 'dad6b6af-e07d-4ba8-bf33-5f3f997b58af', 'cost_1_file', '65893e3a90e39_قطاف', '65893e3a90e39_قطاف.jpg', 'image/jpeg', 'public', 'public', 9902, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-25 15:32:59', '2023-12-25 15:32:59'),
(130, 'App\\Models\\Comment', 54, '5ebebb16-cabf-4914-ac4e-1a7f62283590', 'files', '65893f4e20fa0_كمااااامة', '65893f4e20fa0_كمااااامة.jpg', 'image/jpeg', 'public', 'public', 32208, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-25 15:37:39', '2023-12-25 15:37:39'),
(131, 'App\\Models\\RequestService', 32, 'df963375-c57e-45b1-85c5-80258c9c4799', 'finished_files', '65893fc41e2bb_7', '65893fc41e2bb_7.png', 'image/png', 'public', 'public', 147950, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-12-25 15:39:39', '2023-12-25 15:39:39'),
(132, 'App\\Models\\RequestService', 34, '1d82cde9-5375-4465-ae8f-a733ee1d60ee', 'contract', '658a7a7c523fc_seychelles-beach[1]', '658a7a7c523fc_seychelles-beach[1].jpg', 'image/jpeg', 'public', 'public', 44050, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-26 14:02:23', '2023-12-26 14:02:23'),
(133, 'App\\Models\\RequestService', 34, '5f2e5086-3617-465c-a041-856392197cc8', 'cost_1_file', '658a7adc319c6_depositphotos_5803926-Washington-Magnolia-Blossom-near-Smithsonian-2011', '658a7adc319c6_depositphotos_5803926-Washington-Magnolia-Blossom-near-Smithsonian-2011.jpg', 'image/jpeg', 'public', 'public', 328950, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-26 14:03:58', '2023-12-26 14:03:59'),
(134, 'App\\Models\\RequestService', 36, '26058582-b2ad-4367-a605-8800dfc8d687', 'contract', '658ab853dbe87_elitefon.ru_19033', '658ab853dbe87_elitefon.ru_19033.jpg', 'image/jpeg', 'public', 'public', 655043, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-26 18:26:22', '2023-12-26 18:26:22'),
(135, 'App\\Models\\RequestService', 36, 'd9dcb356-7338-4e6e-a97c-f8d08829a3af', 'cost_1_file', '658ab8990b87d_gas_mask_man_smoke_colorful_119216_1920x1080', '658ab8990b87d_gas_mask_man_smoke_colorful_119216_1920x1080.jpg', 'image/jpeg', 'public', 'public', 1097739, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-26 18:27:42', '2023-12-26 18:27:43'),
(136, 'App\\Models\\User', 47, '270058b2-83ea-44dd-bea5-5ec40cba532b', 'commerical_record', 'girl-bike-art-1', 'girl-bike-art-1.jpg', 'image/jpeg', 'public', 'public', 856480, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-26 21:59:32', '2023-12-26 21:59:33'),
(137, 'App\\Models\\RequestService', 38, 'bbe83775-f852-4697-9523-5b6ae1277eb0', 'contract', '658af3a898bb5_IMG-20231218-WA0002', '658af3a898bb5_IMG-20231218-WA0002.jpg', 'image/jpeg', 'public', 'public', 30360, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-26 22:39:25', '2023-12-26 22:39:25'),
(138, 'App\\Models\\RequestService', 39, '9a6cccdb-9c47-412f-bed5-66373ae6db49', 'contract', '658af87a05123_IMG-20231218-WA0002', '658af87a05123_IMG-20231218-WA0002.jpg', 'image/jpeg', 'public', 'public', 30360, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-26 22:59:56', '2023-12-26 22:59:56'),
(140, 'App\\Models\\RequestService', 39, 'fcdfcabf-3907-4aaf-b483-808a79789c14', 'finished_files', '658afb11581e8_IMG-20231218-WA0002', '658afb11581e8_IMG-20231218-WA0002.jpg', 'image/jpeg', 'public', 'public', 30360, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-26 23:11:05', '2023-12-26 23:11:05'),
(141, 'App\\Models\\RequestService', 39, '9e300af2-dafb-4b52-8e13-7903be7efc60', 'cost_2_file', '658afb8618a93_2_20230924_150037_٠٠٠١', '658afb8618a93_2_20230924_150037_٠٠٠١.jpg', 'image/jpeg', 'public', 'public', 32211, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2023-12-26 23:12:54', '2023-12-26 23:12:54'),
(142, 'App\\Models\\RequestService', 39, 'dbb8750a-5e45-4721-a865-d8257d0d911c', 'finished_files_from_admin', '658afbc8bc5c5_IMG-20231218-WA0002', '658afbc8bc5c5_IMG-20231218-WA0002.jpg', 'image/jpeg', 'public', 'public', 30360, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2023-12-26 23:14:05', '2023-12-26 23:14:05'),
(143, 'App\\Models\\RequestService', 39, '11f1f74a-5318-4edc-a0a2-9c134509cda0', 'certificates', '658afc151c48f_IMG-20231218-WA0002', '658afc151c48f_IMG-20231218-WA0002.jpg', 'image/jpeg', 'public', 'public', 30360, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2023-12-26 23:15:19', '2023-12-26 23:15:19'),
(144, 'App\\Models\\RequestService', 40, 'ce5d9c6d-059c-4797-b93d-9cc786a1abe9', 'contract', '658bc4457853b_1', '658bc4457853b_1.png', 'image/png', 'public', 'public', 57334, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-27 13:29:41', '2023-12-27 13:29:41'),
(145, 'App\\Models\\RequestService', 40, '832b0954-707a-442b-8359-6e1971eb8c24', 'cost_1_file', '658bc477121b6_لقطة الشاشة 2023-12-24 174603', '658bc477121b6_لقطة-الشاشة-2023-12-24-174603.png', 'image/png', 'public', 'public', 128380, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2023-12-27 13:30:17', '2023-12-27 13:30:17'),
(146, 'App\\Models\\User', 50, '53db2f6e-c997-49ed-9716-1dc0570cc336', 'commerical_record', 'لقطة الشاشة 2023-12-24 174603', 'لقطة-الشاشة-2023-12-24-174603.png', 'image/png', 'public', 'public', 128380, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-27 13:43:25', '2023-12-27 13:43:25'),
(147, 'App\\Models\\RequestService', 41, 'c2099174-2d69-4b25-b351-b7487e089f75', 'contract', '658bc81f13899_8', '658bc81f13899_8.png', 'image/png', 'public', 'public', 199606, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2023-12-27 13:45:53', '2023-12-27 13:45:54'),
(148, 'App\\Models\\RequestService', 42, '51523aee-9d9b-4556-a838-332148a1e3b2', 'contract', '658c0cf7afad9_CV 1يزيد القرني (2)', '658c0cf7afad9_CV-1يزيد-القرني-(2).pdf', 'application/pdf', 'public', 'public', 227358, '[]', '[]', '[]', '[]', 1, '2023-12-27 18:39:39', '2023-12-27 18:39:39'),
(149, 'App\\Models\\RequestService', 42, '1e98998d-6023-4cab-9d7a-190d42306dfa', 'cost_1_file', '658c0dc4e18e3_Salem CVnew', '658c0dc4e18e3_Salem-CVnew.pdf', 'application/pdf', 'public', 'public', 786024, '[]', '[]', '[]', '[]', 2, '2023-12-27 18:43:03', '2023-12-27 18:43:03');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_06_08_000001_create_audit_logs_table', 1),
(4, '2023_06_08_000002_create_media_table', 1),
(5, '2023_06_08_000003_create_permissions_table', 1),
(6, '2023_06_08_000004_create_roles_table', 1),
(7, '2023_06_08_000005_create_users_table', 1),
(8, '2023_06_08_000006_create_consultants_table', 1),
(9, '2023_06_08_000007_create_user_alerts_table', 1),
(10, '2023_06_08_000008_create_courses_table', 1),
(11, '2023_06_08_000009_create_newss_table', 1),
(12, '2023_06_08_000010_create_joinings_table', 1),
(13, '2023_06_08_000011_create_contacts_table', 1),
(14, '2023_06_08_000012_create_quotations_table', 1),
(15, '2023_06_08_000013_create_articles_table', 1),
(16, '2023_06_08_000014_create_books_table', 1),
(17, '2023_06_08_000015_create_samples_table', 1),
(18, '2023_06_08_000016_create_services_table', 1),
(19, '2023_06_08_000017_create_request_services_table', 1),
(20, '2023_06_08_000018_create_about_uss_table', 1),
(21, '2023_06_08_000019_create_permission_role_pivot_table', 1),
(22, '2023_06_08_000020_create_role_user_pivot_table', 1),
(23, '2023_06_08_000021_create_user_user_alert_pivot_table', 1),
(24, '2023_06_08_000022_add_relationship_fields_to_quotations_table', 1),
(25, '2023_06_08_000023_add_relationship_fields_to_request_services_table', 1),
(26, '2023_06_08_000024_create_qa_topics_table', 1),
(27, '2023_06_08_000025_create_qa_messages_table', 1),
(28, '2023_06_20_123552_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newss`
--

CREATE TABLE `newss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newss`
--

INSERT INTO `newss` (`id`, `name`, `description`, `date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'خبر رقم 1', '<p>خبر جديد&nbsp;</p>', '2023-11-23', '2023-11-23 17:59:04', '2023-11-23 17:59:04', NULL);

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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'role_create', NULL, NULL, NULL),
(3, 'role_edit', NULL, NULL, NULL),
(4, 'role_show', NULL, NULL, NULL),
(5, 'role_delete', NULL, NULL, NULL),
(6, 'role_access', NULL, NULL, NULL),
(7, 'user_create', NULL, NULL, NULL),
(8, 'user_edit', NULL, NULL, NULL),
(9, 'user_show', NULL, NULL, NULL),
(10, 'user_delete', NULL, NULL, NULL),
(11, 'user_access', NULL, NULL, NULL),
(12, 'consultant_create', NULL, NULL, NULL),
(13, 'consultant_edit', NULL, NULL, NULL),
(14, 'consultant_show', NULL, NULL, NULL),
(15, 'consultant_delete', NULL, NULL, NULL),
(16, 'consultant_access', NULL, NULL, NULL),
(17, 'audit_log_show', NULL, NULL, NULL),
(18, 'audit_log_access', NULL, NULL, NULL),
(19, 'user_alert_create', NULL, NULL, NULL),
(20, 'user_alert_show', NULL, NULL, NULL),
(21, 'user_alert_delete', NULL, NULL, NULL),
(22, 'user_alert_access', NULL, NULL, NULL),
(23, 'course_create', NULL, NULL, NULL),
(24, 'course_edit', NULL, NULL, NULL),
(25, 'course_show', NULL, NULL, NULL),
(26, 'course_delete', NULL, NULL, NULL),
(27, 'course_access', NULL, NULL, NULL),
(28, 'news_create', NULL, NULL, NULL),
(29, 'news_edit', NULL, NULL, NULL),
(30, 'news_show', NULL, NULL, NULL),
(31, 'news_delete', NULL, NULL, NULL),
(32, 'news_access', NULL, NULL, NULL),
(33, 'joining_show', NULL, NULL, NULL),
(34, 'joining_delete', NULL, NULL, NULL),
(35, 'joining_access', NULL, NULL, NULL),
(36, 'contact_show', NULL, NULL, NULL),
(37, 'contact_delete', NULL, NULL, NULL),
(38, 'contact_access', NULL, NULL, NULL),
(39, 'quotation_show', NULL, NULL, NULL),
(40, 'quotation_delete', NULL, NULL, NULL),
(41, 'quotation_access', NULL, NULL, NULL),
(42, 'knowledge_center_access', NULL, NULL, NULL),
(43, 'article_create', NULL, NULL, NULL),
(44, 'article_edit', NULL, NULL, NULL),
(45, 'article_show', NULL, NULL, NULL),
(46, 'article_delete', NULL, NULL, NULL),
(47, 'article_access', NULL, NULL, NULL),
(48, 'book_create', NULL, NULL, NULL),
(49, 'book_edit', NULL, NULL, NULL),
(50, 'book_show', NULL, NULL, NULL),
(51, 'book_delete', NULL, NULL, NULL),
(52, 'book_access', NULL, NULL, NULL),
(53, 'sample_create', NULL, NULL, NULL),
(54, 'sample_edit', NULL, NULL, NULL),
(55, 'sample_show', NULL, NULL, NULL),
(56, 'sample_delete', NULL, NULL, NULL),
(57, 'sample_access', NULL, NULL, NULL),
(58, 'service_create', NULL, NULL, NULL),
(59, 'service_edit', NULL, NULL, NULL),
(60, 'service_show', NULL, NULL, NULL),
(61, 'service_delete', NULL, NULL, NULL),
(62, 'service_access', NULL, NULL, NULL),
(63, 'request_service_edit', NULL, NULL, NULL),
(64, 'request_service_show', NULL, NULL, NULL),
(65, 'request_service_delete', NULL, NULL, NULL),
(66, 'request_service_access', NULL, NULL, NULL),
(67, 'client_create', NULL, NULL, NULL),
(68, 'client_edit', NULL, NULL, NULL),
(69, 'client_show', NULL, NULL, NULL),
(70, 'client_delete', NULL, NULL, NULL),
(71, 'client_access', NULL, NULL, NULL),
(72, 'clients_list_access', NULL, NULL, NULL),
(73, 'about_us_edit', NULL, NULL, NULL),
(74, 'about_us_access', NULL, NULL, NULL),
(75, 'profile_password_edit', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(3, 64),
(3, 66),
(3, 72);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qa_messages`
--

CREATE TABLE `qa_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qa_messages`
--

INSERT INTO `qa_messages` (`id`, `topic_id`, `sender_id`, `read_at`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-07-03 12:36:47', 'asfasffasf', '2023-07-03 12:36:40', '2023-07-03 12:36:47'),
(2, 2, 14, '2023-07-13 14:02:58', 'بشسبصؤئصقئءيسق', '2023-07-13 14:02:54', '2023-07-13 14:02:58'),
(3, 3, 35, '2023-12-23 20:39:58', 'مرحب', '2023-12-23 20:38:46', '2023-12-23 20:39:58'),
(4, 4, 1, '2023-12-26 18:48:13', 'qweqwrqwr', '2023-12-26 18:48:01', '2023-12-26 18:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `qa_topics`
--

CREATE TABLE `qa_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qa_topics`
--

INSERT INTO `qa_topics` (`id`, `subject`, `creator_id`, `receiver_id`, `created_at`, `updated_at`) VALUES
(1, 'fasf', 1, 2, '2023-07-03 12:36:40', '2023-07-03 12:36:40'),
(2, 'شسب', 14, 8, '2023-07-13 14:02:54', '2023-07-13 14:02:54'),
(3, 'مرحبا', 35, 1, '2023-12-23 20:38:46', '2023-12-23 20:38:46'),
(4, 'test', 1, 44, '2023-12-26 18:48:01', '2023-12-26 18:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `the_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sent_email` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `the_company`, `name`, `position`, `phone_number`, `email`, `is_sent_email`, `created_at`, `updated_at`, `deleted_at`, `service_id`) VALUES
(1, 'Mcguire and Sweeney Traders', 'Ria Kim', 'other', 'Thomas Beck', 'lyraruvini@mailinator.com', 1, '2023-06-27 17:38:56', '2024-01-06 14:25:22', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `request_services`
--

CREATE TABLE `request_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contract_accept` tinyint(1) DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `stages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'contract',
  `cost_1` decimal(15,2) DEFAULT NULL,
  `cost_2` decimal(15,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `done_time` datetime DEFAULT NULL,
  `duration_to_edit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultant_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_services`
--

INSERT INTO `request_services` (`id`, `contract_accept`, `status`, `stages`, `cost_1`, `cost_2`, `start_date`, `end_date`, `done_time`, `duration_to_edit`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `service_id`, `consultant_id`) VALUES
(1, 1, 'accept', 'working', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-03 15:07:07', '2023-07-03 15:07:45', NULL, 7, 1, 6),
(2, 1, 'accept', 'done', 10.00, 20.00, '2023-07-04', '2023-07-04', '2023-07-04 10:50:06', NULL, '2023-07-04 14:44:51', '2023-07-04 14:51:20', NULL, 8, 2, 6),
(3, 1, 'accept', 'done', 20.00, 30.00, '2023-07-04', '2023-07-04', '2023-07-04 13:37:55', NULL, '2023-07-04 17:28:12', '2023-07-04 17:45:41', NULL, 9, 2, 6),
(4, 1, 'accept', 'done', 20.00, 30.00, '2023-07-06', '2023-07-06', '2023-07-06 11:22:34', NULL, '2023-07-06 15:15:54', '2023-07-06 15:29:27', NULL, 12, 1, 6),
(5, 1, 'accept', 'done', 50.00, 60.00, '2023-07-06', '2023-07-06', '2023-07-06 14:01:57', NULL, '2023-07-06 17:56:57', '2023-07-06 18:03:56', NULL, 13, 1, 6),
(6, 1, 'accept', 'done', 50.00, 10.00, '2023-07-13', '2023-07-14', '2023-07-13 09:56:15', NULL, '2023-07-13 13:50:25', '2023-07-13 13:58:21', NULL, 14, 3, 6),
(7, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-13 14:01:45', '2023-07-13 14:01:45', NULL, 14, 4, NULL),
(8, 1, 'accept', 'done', 60.00, 70.00, '2023-07-18', '2023-07-25', '2023-07-18 11:28:27', NULL, '2023-07-18 15:23:14', '2023-07-18 15:31:48', NULL, 15, 4, 6),
(9, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-03 15:14:06', '2023-08-03 15:14:06', NULL, 16, 4, NULL),
(10, 0, 'accept', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-03 15:27:13', '2023-08-03 15:27:49', NULL, 17, 1, NULL),
(11, 0, 'accept', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-03 15:29:20', '2023-08-03 15:31:06', '2023-08-03 15:31:06', 18, 4, NULL),
(12, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-03 15:30:16', '2023-08-03 15:30:53', '2023-08-03 15:30:53', 18, 2, NULL),
(13, 1, 'accept', 'done', 50.00, 30.00, '2023-08-03', '2023-08-23', '2023-08-03 11:43:07', NULL, '2023-08-03 15:31:10', '2023-08-03 15:48:35', NULL, 18, 1, 6),
(14, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-03 16:04:44', '2023-08-03 16:04:44', NULL, 19, 1, NULL),
(15, 0, 'accept', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-18 17:57:02', '2023-11-18 17:58:51', NULL, 20, 4, NULL),
(16, 1, 'accept', 'done', 500.00, 500.00, '2023-11-23', '2023-11-29', '2023-11-23 12:25:07', NULL, '2023-11-23 17:18:31', '2023-11-23 17:26:59', NULL, 21, 1, 6),
(17, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-23 17:51:36', '2023-11-23 17:51:36', NULL, 22, 4, NULL),
(18, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-28 17:03:23', '2023-11-28 17:03:23', NULL, 23, 4, NULL),
(19, 1, 'accept', 'done', 50.00, 20.00, '2023-11-28', '2023-11-30', '2023-11-28 12:19:14', NULL, '2023-11-28 17:09:43', '2023-11-28 17:21:48', NULL, 24, 3, 6),
(20, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-17 19:14:55', '2023-12-17 19:14:55', NULL, 25, 3, NULL),
(21, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-18 16:03:14', '2023-12-18 16:03:14', NULL, 26, 3, NULL),
(22, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-18 17:49:19', '2023-12-18 17:49:19', NULL, 27, 4, NULL),
(23, 0, 'accept', 'contract', 1.00, 2.00, '2023-12-14', '2023-12-31', NULL, NULL, '2023-12-21 14:05:28', '2023-12-21 20:05:28', NULL, 28, 3, NULL),
(24, 0, 'accept', 'contract', 0.00, 0.00, '2023-12-21', '2023-12-30', NULL, NULL, '2023-12-21 18:50:31', '2023-12-21 20:18:02', NULL, 29, 1, NULL),
(25, 1, 'accept', 'done', 3000.00, 2000.00, '2023-12-21', '2024-01-03', '2023-12-21 12:10:35', NULL, '2023-12-21 18:54:45', '2023-12-21 19:13:17', NULL, 30, 2, 6),
(26, 0, 'accept', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-23 15:40:28', '2023-12-23 18:54:07', NULL, 32, 1, NULL),
(27, 1, 'accept', 'working', 0.00, 0.00, '2023-12-14', '2023-12-25', NULL, NULL, '2023-12-23 18:59:08', '2023-12-23 19:03:49', NULL, 33, 5, 3),
(28, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-23 19:14:43', '2023-12-23 19:14:43', NULL, 34, 4, NULL),
(29, 1, 'accept', 'working', 0.00, 0.00, '2023-12-07', '2023-12-28', NULL, NULL, '2023-12-23 19:58:55', '2023-12-23 20:05:20', NULL, 35, 5, 10),
(30, 1, 'accept', 'working', 0.00, 0.00, '2023-12-06', '2023-12-30', NULL, NULL, '2023-12-24 16:02:06', '2023-12-24 16:08:23', NULL, 36, 1, 6),
(31, 1, 'accept', 'working', 8.00, 8.00, '2023-12-24', '2023-12-28', NULL, NULL, '2023-12-24 21:40:31', '2023-12-24 21:43:54', NULL, 38, 1, 6),
(32, 1, 'accept', 'cost_2_pending', 6.00, 12.00, '2023-12-25', '2023-12-30', '2023-12-25 08:39:39', NULL, '2023-12-25 15:29:58', '2023-12-25 15:39:39', NULL, 40, 5, 39),
(33, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-26 13:58:18', '2023-12-26 13:58:18', NULL, 41, 2, NULL),
(34, 1, 'accept', 'working', 0.00, 0.00, '2023-11-28', '2024-01-06', NULL, NULL, '2023-12-26 14:01:06', '2023-12-26 14:04:29', NULL, 42, 3, 6),
(35, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-26 18:21:09', '2023-12-26 18:21:09', NULL, 43, 4, NULL),
(36, 1, 'accept', 'working', 300.00, 500.00, '2023-12-26', '2023-12-27', NULL, NULL, '2023-12-26 18:24:07', '2023-12-26 18:28:09', NULL, 44, 7, 6),
(37, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-26 21:59:18', '2023-12-26 21:59:18', NULL, 46, 9, NULL),
(38, 0, 'accept', 'contract', 0.00, 0.00, '2023-12-13', '2024-01-06', NULL, NULL, '2023-12-26 21:59:33', '2023-12-26 22:39:25', NULL, 47, 9, NULL),
(39, 1, 'accept', 'done', 0.00, 0.00, '2023-12-11', '2024-01-06', '2023-12-26 16:11:05', NULL, '2023-12-26 22:56:37', '2023-12-26 23:15:18', NULL, 48, 9, 10),
(40, 1, 'accept', 'cost_1_pending', 2.00, 2.00, '2023-12-15', '2023-12-07', NULL, NULL, '2023-12-27 13:22:36', '2023-12-27 13:29:59', NULL, 49, 9, NULL),
(41, 1, 'accept', 'cost_1_pending', 3.00, 3.00, '2023-12-22', '2023-12-14', NULL, NULL, '2023-12-27 13:43:25', '2023-12-27 13:46:41', NULL, 50, 10, NULL),
(42, 1, 'accept', 'working', 1.00, 2.00, '2023-12-04', '2023-12-31', NULL, NULL, '2023-12-27 18:37:48', '2023-12-27 18:43:52', NULL, 51, 9, 6),
(43, 0, 'accept', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-31 09:55:58', '2024-01-02 18:43:16', NULL, 52, 9, NULL),
(44, 0, 'pending', 'contract', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-02 18:50:57', '2024-01-02 18:50:57', NULL, 53, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL),
(3, 'محاسب', '2023-06-24 18:31:07', '2023-06-24 18:31:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 3),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(5, 2),
(5, 1),
(36, 2),
(37, 2),
(37, 1),
(37, 3),
(38, 2),
(39, 2),
(40, 2),
(1, 2),
(1, 3),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2);

-- --------------------------------------------------------

--
-- Table structure for table `samples`
--

CREATE TABLE `samples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'برنامج الحوكمة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.', NULL, '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(2, 'برنامج تطوير الأعمال والتميز المؤسسي', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.', NULL, '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(3, 'برنامج الجودة وتطوير الأداء', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.', NULL, '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(4, 'برنامج تطوير الموارد البشرية', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.', NULL, '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(5, 'استشارة', 'استشارة مبسطه لجميع القطاعات الخدمية', '2023-12-18 18:18:34', '2023-12-26 18:22:15', '2023-12-26 18:22:15'),
(6, 'خدمة قطاع الاعمال والافراد', 'خدمة قطاع الاعمال والافراد', '2023-12-24 19:54:04', '2023-12-24 21:02:44', '2023-12-24 21:02:44'),
(7, 'استشارة', 'الوصف', '2023-12-26 18:22:35', '2023-12-26 19:04:40', '2023-12-26 19:04:40'),
(8, 'استثمار اجنبي', 'الوصف', '2023-12-26 18:22:55', '2023-12-26 19:04:40', '2023-12-26 19:04:40'),
(9, 'استشارة', 'وصف', '2023-12-26 19:05:34', '2023-12-26 19:05:34', NULL),
(10, 'نقل كفالة', 'نقل كفالة', '2023-12-27 13:37:36', '2023-12-27 13:37:36', NULL),
(11, 'تحديث بيانات السجل التجاري للمؤسسات الفردية - وزارة التجارة', 'تُمكنك هذه الخدمة من تقديم طلب تعديل (النشاط – رأس المال – العنوان ) على السجل التجاري إلكترونيًا دون الحاجة إلى مراجعة فروع الوزارة.', '2024-01-04 14:32:04', '2024-01-04 14:32:04', NULL),
(12, 'رفع نتائج الجمعية العمومية - وزارة التجارة', 'تُمكن هذه الخدمة الشركات الراغبة بعقد الجمعيات (العادية، غير العادية ) برفع نتائج , عقد الجمعية والوثائق المطلوبة  وفقاً لأحكام نظام الشركات.', '2024-01-04 14:32:38', '2024-01-04 14:32:38', NULL),
(13, 'تأسيس شركة مساهمة (السعودي أو الخليجي) - وزارة التجارة', 'التاجر - الشركات - قطاع الأعمال​\r\nهذه الخدمة تُمكّن المستثمر من البدء في ممارسة النشاط التجاري وتأسيس شركة مساهمة، يؤسسها شخص واحد أو أكثر من ذوي الصفة الطبيعية أو الاعتبارية، ويكون رأس مالها مقسمًا إلى أسهم قابلة للتداول، وتكون الشركة وحدها مسؤولة عن الديون والالتزامات المترتبة عليها أو الناشئة عن نشاطها، وتقتصر مسؤولية المساهم على أداء قيمة الأسهم التي اكتتب فيها، ومن خلال الخدمة يتم ما يلي:\r\n\r\nإصدار السجل التجاري وعقد التأسيس.\r\nإصدار رخصة تجارية فورية (اختياري).\r\nفتح ملف منشأة لدى وزارة الموارد البشرية والتنمية الاجتماعية.\r\nالتسجيل في الزكاة من خلال البوابة الإلكترونية لهيئة الزكاة والضريبة والجمارك.\r\nتسجيل المنشأة في المؤسسة العامة للتأمينات الاجتماعية.\r\nالتسجيل في العنوان الوطني لدى البريد السعودي سُبل.\r\nالتسجيل في الغرف التجارية حسب الموقع.', '2024-01-04 14:34:34', '2024-01-04 14:34:34', NULL),
(14, 'تأسيس شركة مساهمة مبسطة (السعودي أو الخليجي) - وزارة التجارة', 'التاجر -الشركات -قطاع الأعمال​\r\nهذه الخدمة تُمكّن المستثمر من البدء في ممارسة النشاط التجاري وتأسيس شركة مساهمة مُبسطة، يؤسسها شخص واحد أو أكثر من ذوي الصفة الطبيعية أو الاعتبارية، ويكون رأس مالها مقسمًا إلى أسهم قابلة للتداول وتسري عليها أحكام الشركات المساهمة ما لم يرد بها نص خاص، ومن خلال الخدمة يتم ما يلي:\r\nإصدار السجل التجاري وعقد التأسيس.\r\nإصدار رخصة تجارية فورية (اختياري).\r\nفتح ملف منشأة لدى وزارة الموارد البشرية والتنمية الاجتماعية.\r\nالتسجيل في الزكاة من خلال البوابة الإلكترونية لهيئة الزكاة والضريبة والجمارك.\r\nتسجيل المنشأة في المؤسسة العامة للتأمينات الاجتماعية.\r\nالتسجيل في العنوان الوطني لدى البريد السعودي سُبل.\r\nالتسجيل في الغرف التجارية حسب الموقع.', '2024-01-04 14:36:32', '2024-01-04 14:36:32', NULL),
(15, 'تعديل عقد شركة -وزارة التجارة', 'تمكن هذه الخدمة العميل من تقديم تعديل عقود التأسيس.', '2024-01-04 14:37:51', '2024-01-04 14:37:51', NULL),
(16, 'تأسيس شركة تضامنية (السعودي أو الخليجي -وزارة التجارة', 'هذه الخدمة تُمكّن المستثمر من البدء في ممارسة النشاط التجاري وتأسيس شركة تضامنية، يؤسسها شخصان أو أكثر من ذوي الصفة الطبيعية أو الاعتبارية؛ يكونون مسؤولين فيها شخصيًا عن جميع أموالهم وبالتضامن عن ديون الشركة والتزاماتها، ويكتسب الشريك فيها صفة التاجر، ومن خلال الخدمة يتم ما يلي:\r\nإصدار السجل التجاري وعقد التأسيس.\r\nإصدار رخصة تجارية فورية (اختياري).\r\nفتح ملف منشأة لدى وزارة الموارد البشرية والتنمية الاجتماعية.\r\nالتسجيل في الزكاة من خلال البوابة الإلكترونية لهيئة الزكاة والضريبة والجمارك.\r\nتسجيل المنشأة في المؤسسة العامة للتأمينات الاجتماعية.\r\nالتسجيل في العنوان الوطني لدى البريد السعودي سُبل.\r\nالتسجيل في الغرف التجارية حسب الموقع', '2024-01-04 14:38:52', '2024-01-04 14:41:11', NULL),
(17, 'تأسيس شركة توصية بسيطة (السعودي أو الخليجي) - وزارة التجارة', 'هذه الخدمة تُمكّن المستثمر من البدء في ممارسة النشاط التجاري وتأسيس شركة توصية بسيطة، تتكون من فريقين (المتضامن) وهو المسؤول عن ديون والتزامات الشركة، و(الموصي) وهو الذي لا يكون مسؤولًا إلا في حدود حصته في رأس المال، ومن خلال الخدمة يتم ما يلي:\r\n\r\nإصدار السجل التجاري وعقد التأسيس.\r\nإصدار رخصة تجارية فورية (اختياري).\r\nفتح ملف منشأة لدى وزارة الموارد البشرية والتنمية الاجتماعية.\r\nالتسجيل في الزكاة من خلال البوابة الإلكترونية لهيئة الزكاة والضريبة والجمارك.\r\nتسجيل المنشأة في المؤسسة العامة للتأمينات الاجتماعية.\r\nالتسجيل في العنوان الوطني لدى البريد السعودي سُبل.\r\nالتسجيل في الغرف التجارية حسب الموقع.', '2024-01-04 14:39:59', '2024-01-04 14:40:59', NULL),
(18, 'تأسيس شركة ذات مسؤولية محدودة (السعودي أو الخليجي) -وزارة التجارة', 'هذه الخدمة تُمكّن المستثمر من البدء في ممارسة النشاط التجاري وتأسيس شركة ذات مسؤولية محدودة، يؤسسها شخص واحد أو أكثر من ذوي الصفة الطبيعية أو الاعتبارية، وتعد ذمتها مستقلة عن الذمة المالية لكل شريك فيها أو المالك لها، وتكون الشركة وحدها مسؤولة عن الديون والالتزامات المترتبة عليها أو الناشئة عن نشاطها، ولا يكون المالك لها ولا الشريك فيها مسؤولًا عن هذه الديون والالتزامات إلا بقدر حصته في رأس المال، ومن خلال الخدمة يتم ما يلي:\r\n\r\nإصدار السجل التجاري وعقد التأسيس.\r\nإصدار رخصة تجارية فورية (اختياري).\r\nفتح ملف منشأة لدى وزارة الموارد البشرية والتنمية الاجتماعية.\r\nالتسجيل في الزكاة من خلال البوابة الإلكترونية لهيئة الزكاة والضريبة والجمارك.\r\nتسجيل المنشأة في المؤسسة العامة للتأمينات الاجتماعية.\r\nالتسجيل في العنوان الوطني لدى البريد السعودي سُبل.\r\nالتسجيل في الغرف التجارية حسب الموقع.', '2024-01-04 14:41:34', '2024-01-04 14:41:34', NULL),
(19, 'تعديل نظام شركة مساهمة مبسطة -وزارة التجارة', 'تمكن هذه الخدمة من تعديل النظام الاساس للشركات المساهمة المبسطة.', '2024-01-04 14:42:53', '2024-01-04 14:42:53', NULL),
(20, 'تحول من شركة إلى مؤسسة -وزارة التجارة', 'تمكن هذه الخدمة العميل من تحول نوع المنشأة ( السجل ) من شركة الى مؤسسة.', '2024-01-04 14:43:44', '2024-01-04 14:43:44', NULL),
(21, 'تجديد السجل التجاري للشركات -وزارة التجارة', 'تُمكنك هذه الخدمة من تجديد سجلاتك التجارية لجميع الكيانات إلكترونيًا عدا الشركات المساهمة، وذلك لمتابعة ممارسة النشاط التجاري.', '2024-01-04 14:44:43', '2024-01-04 14:44:43', NULL),
(22, 'مواءمة الشركات -وزارة التجارة', 'هي خدمة تمكن مقدم الطلب بتقديم طلب تعديل عقد تأسيس الشركة بما يتناسب مع نظام الشركات الصادر بالمرسوم الملكي رقم (م/132) وتاريخ01/12/1443هـ.', '2024-01-04 14:45:30', '2024-01-04 14:45:30', NULL),
(23, 'قرار شركاء بالعدول عن التأسيس - وزارة التجارة', 'تمكن هذه الخدمة العميل من إلغاء عقد التأسيس.', '2024-01-04 14:47:28', '2024-01-04 14:47:28', NULL),
(24, 'قرار شركاء بإندماج الشركة - وزارة التجارة', 'تمكن هذه الخدمة العميل من تقديم طلب اندماج شركتين لتصبح شركة واحدة.', '2024-01-04 14:48:10', '2024-01-04 14:48:10', NULL),
(25, 'تصفية شركة -وزارة التجارة', 'تمكن هذه الخدمة العميل من تقديم طلب قرار شركاء بتصفية الشركة', '2024-01-04 14:49:13', '2024-01-04 14:49:13', NULL),
(26, 'ترجمة عقود التأسيس -وزارة التجارة', 'تمكنك هذه الخدمة من ترجمة عقد تأسيس الشركة إلى اللغة الإنجليزية', '2024-01-04 14:49:55', '2024-01-04 14:49:55', NULL),
(27, 'تحول الكيان القانوني للشركة إلى كيان آخر -وزارة التجارة', 'تمكن هذه الخدمة العميل من تقديم طلب قرار شركاء بتحويل الشركة إلى كيان آخر', '2024-01-04 14:50:43', '2024-01-04 14:50:43', NULL),
(28, 'اضافة او حذف انشطة لعقد التأسيس -وزارة التجارة', 'تمكن هذه الخدمة العميل من تقديم تعديل عقود التأسيس.', '2024-01-04 14:52:37', '2024-01-04 14:52:37', NULL),
(29, 'اضافة شريك بخروج او دخول شريك -وزارة التجارة', 'هذه الخدمة تقدم للشركات التي ترغب في تعديل الحصص بين الشركاء أو دخول أو خروج شركاء أخرين بموجب اتفاقية موثقة بينهم، أو المنشآت المرخصة من وزارة الاستثمار وترغب بالاندماج في شركة أخرى قائمة من نوعها أو من نوع آخر، أو بمزج شركتين أو أكثر لتأسيس شركة جديدة.', '2024-01-04 14:54:56', '2024-01-04 14:54:56', NULL),
(30, 'تعديل راس المال زيادة او نقص في عقد التأسيس -وزارة التجارة', 'يجوز لمالك رأس المال زيادة رأس مال الشركة عن طريق رفع القيمة الاسمية للحصص أو إصدار حصص جديدة. 2. لمالك رأس المال أن يقرر تخفيض رأس المال إذا زاد على حاجة الشركة أو إذا مُنيت بخسائر وفقاً للأحكام النظامية المقررة.', '2024-01-04 14:58:12', '2024-01-04 14:58:12', NULL),
(31, 'تعديل الصلاحيات للمدراء في عقد التأسيس -وزارة التجارة', 'هذه الخدمة تُمكّنك من تعديل عقد تأسيس الشركة من خلال تغيير أي مادة من مواد العقد.', '2024-01-04 15:02:20', '2024-01-04 15:02:20', NULL),
(32, 'تجديد سجل تجاري -وزارة التجارة', 'تمكن هذه الخدمة للمؤسسات من تقديم طلب تجديد الاستمرار في ممارسة النشاط التجاري.', '2024-01-04 15:02:59', '2024-01-04 15:02:59', NULL),
(33, 'تعديل السجل التجاري -وزارة التجارة', 'تُمكنك هذه الخدمة للمؤسسات  من تقديم طلب تعديل مثل (النشاط – رأس المال – العنوان- الاسم التجاري بعد قبل الاسم)  على السجل التجاري إلكترونيًا دون الحاجة إلى مراجعة فروع الوزارة.', '2024-01-04 15:04:16', '2024-01-04 15:04:16', NULL),
(34, 'إصدار السجل التجاري -وزارة التجارة', 'تمكنك هذه الخدمة من إصدار السجل التجاري إلكترونيًا  لممارسة الأنشطة التجارية .', '2024-01-04 15:05:04', '2024-01-04 15:05:04', NULL),
(35, 'تجديد سجل تجاري رئيسي وفرعي -وزارة التجارة', 'تُمكنك هذه الخدمة من تجديد سجلاتك التجارية لجميع الكيانات إلكترونيًا عدا الشركات المساهمة، وذلك لمتابعة ممارسة النشاط التجاري.', '2024-01-04 15:09:29', '2024-01-04 15:09:29', NULL),
(36, 'اضافة انشطة لسجل تجاري رئيسي وفرعي -وزارة التجارة', '1', '2024-01-04 15:11:37', '2024-01-04 15:11:37', NULL),
(37, 'أي تعديل على السجل التجاري رئيسي وفرعي', '1', '2024-01-04 15:13:53', '2024-01-04 15:13:53', NULL),
(38, 'حجز الاسم التجاري -وزارة التجارة', 'تمكن هذه الخدمة العميل من حجز أسم تجاري لمدة 60 يوم حتى يتم قيده بالسجل التجاري .', '2024-01-04 15:14:42', '2024-01-04 15:14:42', NULL),
(39, 'إفادة عدم وجود سجل تجاري -وزارة التجارة', 'تمكن هذه الخدمة من الحصول على مستند  يفيد بعدم وجود أي سجلات تجارية على الهوية الوطنية', '2024-01-04 15:15:15', '2024-01-04 15:15:15', NULL),
(40, 'مستخرج السجل التجاري -وزارة التجارة', 'تمكن هذه الخدمة من الحصول على مستند يحتوي على كافة معلومات السجل التجاري سواء كان مؤسسة أو شركة', '2024-01-04 15:15:46', '2024-01-04 15:15:46', NULL),
(41, 'تحول نوع السجل التجاري من رئيسي إلى فرعي أو العكس -وزارة التجارة', 'تمكن هذه الخدمة من تحول السجل التجاري من رئيسي إلى  فرعي أو العكس​\r\n\r\nالخدمة متوفرة باللغتين العربية والإنجليزية', '2024-01-04 15:16:42', '2024-01-04 15:16:42', NULL),
(42, 'نشر قرارات الجمعيات غير العادية -وزارة التجارة', 'التأكد من عقد الجمعية الغير العادية ونشر قراراتها المتعلقة بالاندماج أو التصفية أو التقسيم أما المواد المتعلقة بتعديل النظام الأساس سيتم نشرها مع طلب تعديل النظام الأساس', '2024-01-04 15:17:15', '2024-01-04 15:17:15', NULL),
(43, 'إحاطة الوزارة بالجمعية-وزارة التجارة', 'تُمكن هذه الخدمة الشركات الراغبة بعقد الجمعيات (العادية، غير العادية إحاطة الوزارة بعقد الجمعية وذلك بتقديم الطلب إلكترونيًا، على أن يتم تزويد الوزارة بنتائج عقد الجمعية والوثائق المطلوبة  وفقاً لأحكام نظام الشركات.', '2024-01-04 15:17:44', '2024-01-04 15:17:44', NULL),
(44, 'طلب تعديل قيد وكالة تجارية- وزارة التجارة', 'تُمكّنك هذه الخدمة من تعديل البيانات في بنود العقد سواء كنت الوكيل أو الموكل باتفاق الطرفين.', '2024-01-04 15:18:10', '2024-01-04 15:18:10', NULL),
(45, 'طلب تجديد قيد وكالة تجارية -وزارة التجارة', 'تمكن هذه الخدمة  من استمرار الوكيل أو الموزع في مهامه الموكلة إليه من الشركات الأجنبية أو الشركات السعودية .', '2024-01-04 15:18:36', '2024-01-04 15:18:36', NULL),
(46, 'طلب تسجيل قيد وكالة تجارية- وزارة التجارة', 'تمكن هذه الخدمة للوكيل أو الموزع حق مزاولة نشاط الوكالات التجارية عن الشركات أو المؤسسات السعودية أو الشركات الأجنبية المتعاقد معها في المملكة بموجب عقد وكالة تجارية بين الطرفين..', '2024-01-04 15:19:08', '2024-01-04 15:19:08', NULL),
(47, 'طلب شطب قيد وكالة تجارية- وزارة التجارة', 'تُمكنك هذه الخدمة سواء كنت وكيل أو موزع من تقديم طلب التوقف عن ممارسة نشاط الوكالات التجارية عن الشركات السعودية أو الأجنبية وشطب الوكالة من السجلات التجارية.', '2024-01-04 15:19:43', '2024-01-04 15:19:43', NULL),
(48, 'تراخيص التخفيضات -وزارة التجارة', 'تُمكنك هذه الخدمة سواء كنت مؤسسة أو شركة من تقديم طلب ترخيص تخفيضات والذي يتيح لك تخفيض أسعار السلع المعروضة في المتاجر التابعة.', '2024-01-04 15:20:57', '2024-01-04 15:20:57', NULL),
(49, 'إصدار ترخيص مهنة استشارية -وزارة التجارة', 'تمكّن هذه الخدمة العميل من الحصول على ترخيص لممارسة مهنة الاستشارات الحرة في عدة مجالات بحسب تصنيف فئة الترخيص (ممارس- أخصائي- خبير) وفق المؤهل العلمي والخبرة العملية للمتقدم.', '2024-01-04 15:21:21', '2024-01-04 15:21:21', NULL),
(50, 'تجديد ترخيص مهنة استشارية -وزارة التجارة', 'تمكن هذه الخدمة العميل من تجديد الترخيص المهني للاستمرار في مزاولة مهنة الاستشارات الحرة​.​\r\n\r\nملاحظة: التراخيص المصدرة قبل 1435 تتطلب مراجعة أحد فروع الوزارة لتحديث بيانات المكتب المهني وإتاحة  تقديم طلب تجديدها إلكترونيًا.\r\n\r\nهذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:21:56', '2024-01-04 15:21:56', NULL),
(51, 'تعديل ترخيص مهنة استشارية -وزارة التجارة', 'تمكن هذه الخدمة العميل من تعديل البيانات المسجلة في الترخيص المهني.​\r\n\r\nملاحظة: التراخيص المصدرة قبل 1435 تتطلب مراجعة أحد فروع الوزارة لتحديث بيانات المكتب المهني وإمكانية تقديم طلب تعديلها إلكترونيًا.\r\n\r\nهذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:22:39', '2024-01-04 15:22:39', NULL),
(52, 'إصدار فرع ترخيص مهنة استشارية -وزارة التجارة', 'تُمكنك هذه الخدمة من تقديم طلب الحصول على ترخيص فتح مكتب مهني فرعي.​​\r\n\r\n\r\nهذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:23:28', '2024-01-04 15:23:28', NULL),
(53, 'إلغاء ترخيص مهنة استشارية -وزارة التجارة', 'تمكن هذه الخدمة العميل من شطب وإلغاء الترخيص المهني.​\r\n\r\n\r\nهذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:24:01', '2024-01-04 15:24:01', NULL),
(54, 'التصاريح الموسمية لمركبات الخدمات التموينية لشركات الإعاشة والتغذية -وزارة التجارة', 'تُمكّنك هذه الخدمة من تقديم طلب الحصول على تصريح مركبة لتقديم الخدمات التموينية في المشاعر المقدسة.​\r\n\r\n\r\n\r\n\r\nهذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:24:47', '2024-01-04 15:24:47', NULL),
(55, 'استقبال بلاغ تجاري -وزارة التجارة', 'خدمة الكترونية تمكن المستهلك من تقديم بلاغ تجاري - والاستعلام - ومتابعة حالة البلاغ.', '2024-01-04 15:25:39', '2024-01-04 15:25:39', NULL),
(56, 'بحث في قاعدة معلومات المرخصين للمهن الاستشارية- وزارة التجارة', 'تمكن هذه الخدمة العميل من  البحث في قاعدة بيانات المرخصين لمزاولة المهن الاستشارية ،واستعراض معلومات المرخص ومنها ( اسم المكتب المهني، اسم المرخص ، مؤهلاته ، رقم الترخيص ، المدينة ، المنطقة ، ... إلخ ) مما يساعد في تسهيل حصول العميل على بيانات المرخصين دون الحاجة فروع لمراجعة الوزارة .', '2024-01-04 15:26:14', '2024-01-04 15:26:14', NULL),
(57, 'تحديث سجل المساهمين -وزارة التجارة', 'تُمكن هذه الخدمة الشركات المساهمة من إضافة وتعديل وتحديث سجل المساهمين إلكترونياً، وذلك لحفظ حقوقهم.', '2024-01-04 15:28:17', '2024-01-04 15:28:17', NULL),
(58, 'اطلاع المساهم على عدد أسهمه في الشركة -وزارة التجارة', 'تمكنك هذه الخدمة من معرفة واطلاع في الشركة لعدد الاسهم المساهم فيها.', '2024-01-04 15:30:57', '2024-01-04 15:30:57', NULL),
(59, 'تقوم على اعداده الشركة او من ينوب عنها -وزارة التجارة', '1', '2024-01-04 15:31:52', '2024-01-04 15:31:52', NULL),
(60, 'إصدار تراخيص الأحجار الكريمة والمعادن الثمينة -وزارة التجارة', 'تمكّن هذه الخدمة  العميل من الحصول على ترخيص لمزاولة نشاط تجارة المعادن الثمينة والأحجار الكريمة.', '2024-01-04 15:32:27', '2024-01-04 15:32:27', NULL),
(61, 'تمكين التاجر من التقديم على طلب إصدار رخصة الأحجار الكريمة والمعادن الثمينة إلكترونياً-وزارة التجارة', '1', '2024-01-04 15:34:11', '2024-01-04 15:34:11', NULL),
(62, 'إصدار ترخيص مختبر -وزارة التجارة', 'تمكن هذه الخدمة العميل من التقدم بطلب الحصول على ترخيص مختبر.', '2024-01-04 15:37:05', '2024-01-04 15:37:05', NULL),
(63, 'نقل ملكية السجل التجاري -وزارة التجارة', 'تمكنك هذه الخدمة من تقديم طلب نقل ملكية السجل التجاري من أو إلى شخص آخر.', '2024-01-04 15:40:39', '2024-01-04 15:40:39', NULL),
(64, 'الاستفسار عن معلومات مخالفة تجارية -وزارة التجارة', 'خدمة الكترونية تمكن التاجر من الاستعلام عن المخالفات والغرامات التجارية التي تم تحريرها من قبل مراقبي وزارة التجارة.\r\n\r\n\r\nهذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:41:15', '2024-01-04 15:41:15', NULL),
(65, 'استخرج رمزك التجاري - وزارة التجارة', 'تمكنك هذه الخدمة من إصدار رمزك التجاري إلكترونيًا دون الحاجة إلى مراجعة فروع الوزارة.', '2024-01-04 15:41:56', '2024-01-04 15:41:56', NULL),
(66, 'السجل التجاري المترجم للغة الإنجليزية- وزارة التجارة', 'تمكن هذه الخدمة المستفيدين من خدمات السجل التجاري من طباعة سجلاتهم التجارية باللغة الإنجليزية', '2024-01-04 15:42:28', '2024-01-04 15:42:28', NULL),
(67, 'التفويض الإلكتروني -وزارة التجارة', 'تمكن المستخدم سواء مالك المؤسسة أو مدير الشركة من إضافة مُفَوَّضِين لخدمات معينة ضمن جهات يتم اختيارها، كما يمكن له إدارة التفويض وطباعته.', '2024-01-04 15:42:58', '2024-01-04 15:42:58', NULL),
(68, 'بلاغات مخالفات نظام الشركات -وزارة التجارة', 'تمكنك هذه الخدمة من تقديم بلاغ أو شكوى بوقوع مخالفة تتعلق بنظام الشركات سواء كانت على مساهم أو شريك أو عضو مجلس ادارة أو مجلس الإدارة أو مدير أو مجلس مديرين للشركة أو غيرهم دون الحاجة إلى مراجعة فروع الوزارة أو الإدارة المختصة.', '2024-01-04 15:43:49', '2024-01-04 15:43:49', NULL),
(69, 'قيد الإمتياز التجاري -وزارة التجارة', 'تمكّن هذه الخدمة من تسجيل وإدارة قيد الامتياز التجاري، والتي تقدّم وفق نظام الامتياز التجاري ولائحته التنفيذية. ​\r\n\r\n​الخدمة متوفرة باللغتين العربية والإنجليزية', '2024-01-04 15:44:33', '2024-01-04 15:44:33', NULL),
(70, 'خدمة التحقق من الوثائق -وزارة التجارة', 'تتيح هذه الخدمة التحقق من الوثائق المتعلقة بالسجل التجاري وشهادة المنشأ وتراخيص التخفيضات​\r\n​\r\n​هذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:45:11', '2024-01-04 15:45:11', NULL),
(71, 'العروض الترويجية -وزارة التجارة', 'وصف الخدمة · ان تكون المنتجات بالعروض والهدايا المجانية مطابقة للمواصفات والمقاييس المعتمدة وصالحة للاستخدام وضمن سياسات الضمان والصيانة للمنشأة', '2024-01-04 15:53:32', '2024-01-04 15:53:32', NULL),
(72, 'التصويت الإلكتروني للغرف التجارية -وزارة التجارة', 'تُمكن هذه الخدمة الناخبين والناخبات من التجار والصناع من المشاركة في انتخابات الغرف التجارية والصناعية إلكترونياً ودون الحاجة لزيارة مقرّات الغرف التجارية', '2024-01-04 15:54:33', '2024-01-04 15:54:33', NULL),
(73, 'تجديد ترخيص مختبر -وزارة التجارة', 'تُمكنك هذه الخدمة من التقدم بطلب تجديد الترخيص لمختبر.', '2024-01-04 15:55:08', '2024-01-04 15:55:08', NULL),
(74, 'تعديل ترخيص مختبر -وزارة التجارة', 'مكنك هذه الخدمة من التقدم بطلب التعديل على البيانات المذكورة في الترخيص.​\r\n\r\n​هذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:56:57', '2024-01-04 15:56:57', NULL),
(75, 'إلغاء ترخيص مختبر -وزارة التجارة', 'تُمكنك هذه الخدمة من التقدم بطلب إلغاء ترخيص مختبر خاص. ​​​\r\n\r\nهذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:57:45', '2024-01-04 15:57:45', NULL),
(76, 'إصدار إذن استيراد للمواد الكيميائية الغير خطرة -وزارة التجارة', 'تمكن هذه الخدمة العميل من الحصول على إذن استيراد للمواد الكيميائية الغير خطرة. \r\n\r\nالخدمة متوفرة باللغتين العربية والإنجليزية', '2024-01-04 15:58:27', '2024-01-04 15:58:27', NULL),
(77, 'اعتراض على رفض حجز اسم تجاري -وزارة التجارة', 'تمكّن هذه الخدمة  العميل من التقديم على اعتراض على رفض قبول حجز الاسم التجاري المقدم من قبله سابقاً و طلب إعادة فحصه مع تقديم ما يثبت ذلك.\r\n\r\n​الخدمة متوفرة باللغتين العربية والإنجليزية', '2024-01-04 15:59:22', '2024-01-04 15:59:22', NULL),
(78, 'طلب تصاريح السفر خارجياً لغرض الاستثمار -وزارة الخارجية', 'تمكنك هذه الخدمة المواطنين المستثمرين من تقديم طلب تصريح سفر لأغراض تجارية إلى الدول الممنوع السفر لها.\r\n\r\nهذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 15:59:58', '2024-01-04 15:59:58', NULL),
(79, 'طلب إيقاف ترخيص مهني -وزارة التجارة', 'تُمكنك هذه الخدمة من التقديم على طلب لإيقاف الترخيص المهني لفترة معينة.​\r\n\r\n​هذه الخدمة متاحة باللغة العربية فقط.', '2024-01-04 16:00:31', '2024-01-04 16:00:31', NULL),
(80, 'أعادة سريان ترخيص مهني -وزارة التجارة', 'تُمكنك هذه الخدمة من التقديم على طلب لإعادة سريان الترخيص المهني بعد طلب إيقافه لفترة محددة.', '2024-01-04 16:01:44', '2024-01-04 16:01:44', NULL),
(81, 'شطب فرع ترخيص مهني -وزارة التجارة', 'تُمكنك هذه الخدمة من التقديم على طلب شطب فرع الترخيص المهني.', '2024-01-04 16:02:38', '2024-01-04 16:03:10', NULL),
(82, 'التقييم الذاتي لمستوى حوكمة الشركات -وزارة التجارة', 'خدمة الكترونية متكاملة من خلال التقييم الذاتي لمستوى حوكمة الشركات للمساعدة في رفع مؤشر تطبيق حوكمة الشركات وتمكين أعضاء مجلس الإدارة ومجلس المديرين من معرفة مستوى حوكمة شركاتهم.', '2024-01-04 16:03:28', '2024-01-04 16:03:28', NULL),
(83, 'الاستعلام عن بيانات السجل التجاري -وزارة التجارة', 'الاستعلام عن بيانات السجل التجاري تمكنك هذه الخدمة من \r\nبحث بأي كلمة أو رقم استدلالي / الرقم الوطني الموحد للمنشأة', '2024-01-04 16:05:23', '2024-01-04 16:05:23', NULL),
(84, 'إصدار سجل تجاري (مؤسسات) -وزارة التجارة', 'هذه الخدمة تُمكّن المستثمر من البدء في مُمارسة النشاط التجاري، ومن خلالها يتم ما يلي: 1- إصدار سجل تجاري لمؤسسة. 2- إصدار رخصة تجارية فورية (اختياري). 3-فتح ملف منشأة لدى وزارة الموارد البشرية والتنمية الاجتماعية. 4- التسجيل في الزكاة من خلال البوابة الإلكترونية لهيئة الزكاة والضريبة والجمارك. 5- تسجيل المنشأة في المؤسسة العامة للتأمينات الاجتماعية. 6- التسجيل في العنوان الوطني لدى البريد السعودي سُبل. 7- التسجيل في الغرف التجارية حسب الموقع.', '2024-01-04 16:14:49', '2024-01-04 16:14:49', NULL),
(85, 'تأسيس شركة ذات مسؤولية محدودة -وزارة التجارة', 'هذه الخدمة تمكن العميل من البدء في ممارسة النشاط التجاري وتأسيس شركة ذات مسؤولية محدودة وكذلك شركة الشخص الواحد، وتكون مستقلة عن الذمة المالية للشركات.', '2024-01-04 16:20:28', '2024-01-04 16:20:28', NULL),
(86, 'تأسيس شركة مساهمة -وزارة التجارة', 'تُمكنك هذه الخدمة من تأسيس شركة مساهمة دون الحاجة إلى مراجعة فروع الوزارة.', '2024-01-04 16:23:28', '2024-01-04 16:23:28', NULL),
(87, 'تأسيس شركة مساهمة مُبسطة -وزارة التجارة', 'هذه الخدمة تُمكّن المستثمر من البدء في ممارسة النشاط التجاري وتأسيس شركة مساهمة مُبسطة، يؤسسها شخص واحد أو أكثر من ذوي الصفة الطبيعية أو الاعتبارية، ويكون رأس مالها مقسمًا إلى أسهم قابلة للتداول وتسري عليها أحكام الشركات المساهمة ما لم يرد بها نص خاص، ومن خلال الخدمة يتم ما يلي:\r\nإصدار السجل التجاري وعقد التأسيس.\r\nإصدار رخصة تجارية فورية (اختياري).\r\nفتح ملف منشأة لدى وزارة الموارد البشرية والتنمية الاجتماعية.\r\nالتسجيل في الزكاة من خلال البوابة الإلكترونية لهيئة الزكاة والضريبة والجمارك.\r\nتسجيل المنشأة في المؤسسة العامة للتأمينات الاجتماعية.\r\nالتسجيل في العنوان الوطني لدى البريد السعودي سُبل.\r\nالتسجيل في الغرف التجارية حسب الموقع.', '2024-01-04 16:26:43', '2024-01-04 16:26:43', NULL),
(88, 'تأسيس شركة بموجب ترخيص استثماري -وزارة التجارة', '1', '2024-01-04 16:30:41', '2024-01-04 16:30:41', NULL),
(89, 'تعديل عقد التأسيس / نظام أساس -وزارة التجارة', 'هذه الخدمة تُمكّن المستثمر من تعديل عقد تأسيس الشركة من خلال تغيير أي مادة من مواد العقد.', '2024-01-04 16:31:23', '2024-01-04 16:31:23', NULL),
(90, 'إضافة تفويض -وزارة التجارة', 'هذه الخدمة تُمكّنك من إضافة مُفَوَّضِين لخدمات بدء العمل الاقتصادي، كما يمكن لك إدارة التفويض وطباعته.', '2024-01-04 16:33:45', '2024-01-04 16:33:45', NULL),
(91, 'إيداع القوائم المالية -وزارة التجارة', 'هذه الخدمة تُمكّنك من الإيداع الآلي للقوائم المالية للمنشآت للاستفادة منها مستقبلًا في توفير قاعدة بيانات تساعد الأطراف ذات العلاقة على المراقبة والتخطيط.', '2024-01-04 16:34:34', '2024-01-04 16:34:34', NULL),
(92, 'إشهار حقوق الضمان -وزارة التجارة', 'هذه الخدمة تُمكّنك من إشهار حقوق الضمان في الأموال المنقولة والتعديل عليها وإنهائها، والبحث في الإشهارات المسجلة فيه واستخراج تقارير البحث المعتمدة.', '2024-01-04 16:35:07', '2024-01-04 16:35:07', NULL),
(93, 'توثيق التجارة الإلكترونية -وزارة التجارة', 'نظام يخدم أصحاب المهن الحرة والسجلات التجارية الذين يمارسون أعمال التجارة الإلكترونية، بحيث يسمح لهم بتوثيق المنصات الإلكترونية التي يزاولون من خلالها عمل التجارة الإلكترونية، ويتم توثيق الحساب بناءً على وثيقة سارية (سجل تجاري أو وثيقة عمل حر) مع حساب بنكي تجاري مرتبط بالوثيقة.', '2024-01-04 16:35:34', '2024-01-04 16:35:34', NULL),
(94, 'الاستعلام عن متجر إلكتروني موثّق -وزارة التجارة', 'هذه الخدمة تمكّن المستهلك من التحقق من موثوقية المتجر الإلكتروني، والاطلاع على بيانات التوثيق سواء كانت لمتجر موثق بسجل تجاري أو وثيقة عمل حر.', '2024-01-04 16:36:11', '2024-01-04 16:36:11', NULL),
(95, 'البحث الاسترشادي للدليل الوطني للأنشطة الاقتصادية (ISIC4) -وزارة التجارة', 'تمكن هذه الخدمة من البحث عن \r\nأنشطة صحة الانسان والعمل الاجتماعي:\r\nمراكز الأشعة الاتصالية	869052\r\nالتشغيل الطبي لمختبرات الطبية ومراكز الاشعة والخدمات الطبية المساندة	869053\r\nعيادات الطب البديل والتكميلي	869054\r\nمراكز العين الصناعية	869038\r\nمراكز جمع العينات	869055\r\nمراكز المحاليل الوريدية\r\n\r\nأشكال منح القروض الأخرى:\r\nالأنشطة المالية وأنشطة التأمين\r\nالتمويل الاستهلاكي المُصغر	649228\r\nالتمويل الجماعي بالدين	649232\r\nالوساطة الرقمية	649915\r\nتحصيل ديون جهات التمويل\r\n\r\nأعمال التشييد المتعلقة بمشاريع الهندسة المدنية الأخرى\r\nالتشييد\r\nإصلاح وصيانة السدود	429073\r\nإصلاح وصيانة أرصفة الموانئ والمرافق البحرية	429074\r\nأنشطة الإقامة القصيرة المدى\r\nأنشطة خدمات الاقامة والطعام\r\nفنادق الاستشفاء	551014\r\nفنادق البوتيك	551015\r\nالشقق المخدومة	551025\r\nأنشطة الاتصالات الأخرى\r\nالمعلومات والاتصالات\r\nالخدمات الصوتية الافتراضية	619024\r\nخدمات مقاسم الإنترنت	619025\r\nإدارة وتشغيل الأقمار الصناعية والمحطات الأرضية	619026\r\nتقديم الخدمات الفضائية كالتصوير الفضائي والملاحة وإدارة البيانات الفضائية	619027\r\nأنشطة الاتصالات الساتلية\r\nالمعلومات والاتصالات\r\nتقديم خدمات الاتصالات عبر الشبكات غير الأرضية', '2024-01-04 16:38:17', '2024-01-04 16:38:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'staff',
  `client_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `password`, `email_verified_at`, `remember_token`, `user_type`, `client_type`, `national_num`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', '0504915222', '$2y$10$Rlf1rg0ESkEhBpZ7UAGVVOUB4jZP6wQ..DIGp3mfnEGgH0mHBBQz2', NULL, 'EHZ1iq2U2eyg2ILIQtLau5tPP0oXqG5GqTllaqTIBJBshLYek3C7v4rOfHGD', 'staff', '', NULL, NULL, '2023-12-26 13:41:16', NULL),
(2, 'Len Obrien', 'kilan@mailinator.com', '+1 (644) 548-4236', '$2y$10$JkRDiiy9BPVw5Aty4SOuUumIoi.HK86Fq8yVD06nps3fL9VjUP14K', NULL, NULL, 'client', '', NULL, '2023-06-22 19:11:26', '2023-06-22 19:11:26', NULL),
(3, 'Adria Mitchell', 'test2@test.com', '+1 (281) 203-5134', '$2y$10$N2Nd4346GV4r6MkLeYM1Le6kZJOZ8ruSwBg.7d/SoSw3EX/YuGa3q', NULL, NULL, 'consultant', '', NULL, '2023-06-22 19:12:36', '2023-06-24 17:39:02', NULL),
(4, 'Quinn Chandler', 'test@test.com', '+1 (754) 356-1167', '$2y$10$D7lICfXpxjLYG63JFHDKBebLAnM0HRIH/e8IQosld2YU8UOd9iLqq', NULL, NULL, 'client', '', NULL, '2023-06-24 17:39:45', '2023-06-24 17:39:45', NULL),
(5, 'محاسب', 'accountant@gmail.com', '1231231232132', '$2y$10$zNljUmg/GkOvgzZdu.hoou8N72M46dYMGV5uyrLMyvxca/og0LZ3q', NULL, NULL, 'staff', '', NULL, '2023-06-26 15:01:58', '2023-12-24 16:00:35', NULL),
(6, 'مستشار 1', 'hnida@gmail.com', '111111111', '$2y$10$5uOtzBQRksX9UR9tRSEn9.fHzRTKeB7CTyVS1ITCAa6UqDLsp7ZSW', NULL, NULL, 'consultant', '', NULL, '2023-06-27 17:09:24', '2023-11-23 17:08:55', NULL),
(7, 'Jane Mays', 'cowad@mailinator.com', '+1 (337) 642-9236', '$2y$10$JPZJG8BX4PoW/4TbGrhgAufSmAI1cTWSRtLTNJS7mQ6VEE6VAu0fu', NULL, NULL, 'client', '', NULL, '2023-07-03 15:07:07', '2023-07-03 15:07:07', NULL),
(8, 'Nolan Huffman', 'cixyfucu@mailinator.com', '+1 (395) 442-2982', '$2y$10$x2X57E0u40IlBa0MYAM2cOWiD4l5wpN7HipaXYcUUI9NGnwrBn0Dq', NULL, NULL, 'client', '', NULL, '2023-07-04 14:44:51', '2023-07-04 14:44:51', NULL),
(9, 'Octavius Rosales', 'xupedih@mailinator.com', '+1 (644) 276-2075', '$2y$10$tDEYG/9X9At8BkqRKUhdMeu4NT.XmggQo7mJq.W/1nbrB01ufgk5W', NULL, NULL, 'client', '', NULL, '2023-07-04 17:28:12', '2023-07-04 17:28:12', NULL),
(10, 'Vanna Hamilton', 'juko@mailinator.com', '+1 (751) 193-9419', '$2y$10$v.xudW/v1A1eRbgMIlpzLOzE5JMIgiOACJ4hNJqHH8uY93m0HiYcK', NULL, NULL, 'consultant', '', NULL, '2023-07-04 17:30:27', '2023-07-04 17:30:27', NULL),
(11, 'Eden Buckley', 'hywybir@mailinator.com', '+1 (522) 554-6801', '$2y$10$2UWi4H60WzBXLk0GKT.5GukkYVFnYnttZRlLDCAQrcUd3Vjw/D9tW', NULL, NULL, 'consultant', '', NULL, '2023-07-04 17:31:27', '2023-07-04 17:31:27', NULL),
(12, 'test', 'test@test.com00', '010', '$2y$10$w5q9LISMIm7GUOsnbXLN0e/tE54GmmVf.rJlvdyLLU1lkLgAAwYzS', NULL, NULL, 'client', '', NULL, '2023-07-06 15:15:54', '2023-07-06 15:15:54', NULL),
(13, 'Deirdre Donovan', 'suvigefibe@mailinator.com', '+1 (942) 428-8057', '$2y$10$Pb7f/rp9exbW2NrTcc8BnOhPtIm1vE.JUB/zYGVvB.RijHu/k50Ju', NULL, NULL, 'client', '', NULL, '2023-07-06 17:56:57', '2023-07-06 17:56:57', NULL),
(14, 'test', 'rtetete@dasd.asdas', '0102311131', '$2y$10$TN8r6hviCJ98/saP7Nr/TO2uXaQgahdjUWmOKQbwQxozWtL.tjlNq', NULL, NULL, 'client', '', NULL, '2023-07-13 13:50:25', '2023-07-13 13:50:25', NULL),
(15, 'testtt', 'qweqwe@qew.qwe', '0156981881', '$2y$10$A6xCdUgrzKsIuhXAm7q45OHxgDGJnz9DS11upGH2UluO7xoeZCt4C', NULL, NULL, 'client', '', NULL, '2023-07-18 15:23:14', '2023-07-18 15:23:14', NULL),
(16, 'Angelica Combs', 'refyw@mailinator.com', '+1 (843) 266-3865', '$2y$10$cBGkiOsp9RQGhSdtZRlg6.Y9wTPxo6xfp3cBZTegUFCGIXxEcsDeO', NULL, NULL, 'client', '', NULL, '2023-08-03 15:14:06', '2023-08-03 15:14:06', NULL),
(17, 'Hashim Summers', 'fifisimik@mailinator.com', '+1 (895) 433-7112', '$2y$10$qGbFZ3vsG5YKBS8LZ3SUcOQL9dlomxkDr7gLuJlSFNXs2uPAmzxRm', NULL, NULL, 'client', '', NULL, '2023-08-03 15:27:13', '2023-08-03 15:27:13', NULL),
(18, 'Nash Cline', 'saqyve@mailinator.com', '+1 (538) 989-6228', '$2y$10$iGQQao7EWAEZsl223EkBguRKac1u8FwbMnrNddjEuhouy/ZIH2wOa', NULL, NULL, 'client', '', NULL, '2023-08-03 15:29:20', '2023-08-03 15:29:20', NULL),
(19, 'Cole Odonnell', 'boteha@mailinator.com', '+1 (623) 275-6748', '$2y$10$CvgpdXVv7jmMfEBJ.3dcpO88F3HmTLPy5aM76z7iCuO/dSDwtwuHO', NULL, NULL, 'client', '', NULL, '2023-08-03 16:04:44', '2023-08-03 16:04:44', NULL),
(20, 'Kelly Berry', 'aa@aa.com', '+1 (761) 534-1355', '$2y$10$S/GerUUieuyHPVmlF5x/EePzipvMa1JNjMMdtYKbAoE56bniHxHoS', NULL, NULL, 'client', '', NULL, '2023-11-18 17:57:02', '2023-11-18 17:57:02', NULL),
(21, 'Jonah Shannon', 'zuva@mailinator.com', '+1 (748) 878-3441', '$2y$10$x6BGB9w6mbxAbhxpv5ctPulcivB9Rt9dYxzMnW36myg3sf0ZPiZCW', NULL, NULL, 'client', '', NULL, '2023-11-23 17:18:31', '2023-11-23 17:18:31', NULL),
(22, 'Ronan Chandler', 'male@mailinator.com', '+1 (611) 272-5954', '$2y$10$Kj82gVQIweF3ZbdiqR9HGul/u..yXbJeRf7qV6jMPnEkcPyStkCw6', NULL, NULL, 'client', '', NULL, '2023-11-23 17:51:36', '2023-11-23 17:51:36', NULL),
(23, 'Amaya Slater', 'cukety@mailinator.com', '+1 (834) 915-9097', '$2y$10$jm3lGOu18hST5.9e2gHSIu.TDrnoefXwNKcHaB88GAwI/qt9sIiGe', NULL, NULL, 'client', '', NULL, '2023-11-28 17:03:23', '2023-11-28 17:03:23', NULL),
(24, 'Dale Meyers', 'cahuvehej@mailinator.com', '+1 (235) 126-6435', '$2y$10$pcBq94/poFON5o9Hpn/Z9.ntrbdfGe0falsGgRUgu5gBEumGwjjJi', NULL, NULL, 'client', '', NULL, '2023-11-28 17:09:43', '2023-11-28 17:09:43', NULL),
(25, 'Charity Nolan', 'hynaxat@mailinator.com', '+1 (996) 296-9063', '$2y$10$HkDreVYGn9JokvfcpJuuAeJqjq6cXupTR2b7ziuddR0qP7xL9AuIC', NULL, NULL, 'client', '', NULL, '2023-12-17 19:14:55', '2023-12-17 19:14:55', NULL),
(26, 'صالح ناصر الشمراني', 'salehalshamrani@hotmail.com', '0500607733', '$2y$10$detPyu1boPhRBp/UNDXp1eA0vgKg57ry9tMgGVb3u5rpy8SbBdHc2', NULL, NULL, 'client', '', NULL, '2023-12-18 16:03:14', '2023-12-18 16:03:14', NULL),
(27, 'Amos Clay', 'mygixok@mailinator.com', '+1 (621) 589-1416', '$2y$10$oL9tr9qyVFLh3vlR.BShjurTKyLC/6i7ryC4aD8iUFO.e2lcaST9O', NULL, NULL, 'client', '', NULL, '2023-12-18 17:49:19', '2023-12-18 17:49:19', NULL),
(28, 'noor', 'ahmadalatibi28@gmail.com', '0507335535', '$2y$10$8bLzQ7OJZKb6m6GguJWfx.3vB4dEzPMpwK4DEDmvmkR.x.Hlp1aOa', NULL, NULL, 'client', '', NULL, '2023-12-21 14:05:28', '2023-12-21 14:05:28', NULL),
(29, 'نور', 'noor@admin.com', '05077553365', '$2y$10$oR/GBBAE5m5vLoAMv9iReuVawm8a07aPKHi6XlWzuz7.3yPZat70S', NULL, NULL, 'client', '', NULL, '2023-12-21 18:50:31', '2023-12-21 18:50:31', NULL),
(30, 'ahmed', 'ahmedd@agga.asd', '0512312345', '$2y$10$En6lycaaE7wwjPwG3KXgPezPwNdgneYMEtIOU3C44K26rjbCdvgPe', NULL, NULL, 'client', '', NULL, '2023-12-21 18:54:45', '2023-12-21 18:54:45', NULL),
(31, 'ahmed22', 'ahmed22@admin.com', '454554544', '$2y$10$pEYSM35NCputYYlJsaSHY.KTAhjfLQWpEXhnUk6pLeOKgibTcSEAC', NULL, NULL, 'client', '', NULL, '2023-12-23 15:37:01', '2023-12-23 15:37:01', NULL),
(32, 'ahmed22', 'ahmed22@f.com', '053344484447', '$2y$10$Hq25uupBEgBQ6lGlluuKUuImvcKrF9r/71o3IOvScpMiABwhKDdn.', NULL, NULL, 'client', '', NULL, '2023-12-23 15:40:28', '2023-12-23 15:41:39', NULL),
(33, 'ابراهيم', 'ibrahim.alameri2009@gmail.com', '0545983970', '$2y$10$7TCgxvXcBvtSbwzU.83MjeNcKo1YXX4yXIU7Bsp/Nnm.Tdkk.v/6K', NULL, 'jJLTzbkQgWuBVtzEqfaj4DraPrfEGxnm669q1Z7lrDqYyDuobRK8h89w5JcU', 'client', '', NULL, '2023-12-23 18:59:08', '2023-12-23 18:59:08', NULL),
(34, 'qwer', 'AHMmD@hotmail.com', '0507325565', '$2y$10$E4cdoQ4zC85Stv.sd7XaRewbZmun.wTK6yIcWf95exniOx5Rg.U9q', NULL, NULL, 'client', '', NULL, '2023-12-23 19:14:43', '2023-12-23 19:14:43', NULL),
(35, 'عبد الله', 'abd@gmail.com', '0584444447', '$2y$10$q.8LY3U0QarDxStr.t5p4.75RLEDWYn9POg4AI.FI9kpIq9.EUQ1u', NULL, NULL, 'client', '', NULL, '2023-12-23 19:58:55', '2023-12-23 19:58:55', NULL),
(36, 'ابراهيم2', 'at@gmail.com', '0533484555447', '$2y$10$NHkAtkP42SGnqd4VOr7Bme1aKmJgjTLyT7lQwnSktKS4osHVTEmai', NULL, NULL, 'client', '', NULL, '2023-12-24 16:02:06', '2023-12-24 16:02:06', NULL),
(37, 'noura', 'noura@gmail.com', '0504915222', '$2y$10$ZMePya5shq4MhWTqtGkW..ABjRUIe8AUG1.fFmwhE9/icbPU.vXW.', NULL, NULL, 'staff', '', NULL, '2023-12-24 16:12:00', '2023-12-24 16:12:00', NULL),
(38, 'ابراهيم3', 'info111111@amrtm.com.sa', '05334844472', '$2y$10$xt7Ye7.d3SN96W7hMEsP5OzrKGZVDVDlP3y9A4k2giiknlYEHFXNy', NULL, NULL, 'client', '', NULL, '2023-12-24 21:40:31', '2023-12-24 21:40:31', NULL),
(39, 'حامد', 'salah@gmail.com', '054545584545', '$2y$10$zfhDVG68ZYwDlsczBadP/.MbFj0nU3KmieMXhQnYbHTyBu4Vz4/ma', NULL, NULL, 'consultant', '', NULL, '2023-12-25 15:22:34', '2023-12-25 15:22:34', NULL),
(40, 'عميل', 'coustmer@gmail.com', '54505464', '$2y$10$c08px42WGeLm5P99cuGIq.4V8PrICJhRGv7ENeMRCUI6c3hKWAtP2', NULL, NULL, 'client', '', NULL, '2023-12-25 15:29:58', '2023-12-25 15:29:58', NULL),
(41, 'ale', 'ale@gmail.com', '0507885595', '$2y$10$fVotwJr0BtqMeXj2cWDu6OX..w17kRLUssFgF6ttX5zVpTZSa5R7y', NULL, NULL, 'client', '', NULL, '2023-12-26 13:58:18', '2023-12-26 13:58:18', NULL),
(42, 'tamer', 'tamer@gmail.com', '0507556695', '$2y$10$3TKrHelvznjFTJ5KW1aX1eaZ5DMPKysjxXRypA4PktKjs1hOJLZbS', NULL, NULL, 'client', '', NULL, '2023-12-26 14:01:06', '2023-12-26 14:01:06', NULL),
(43, 'Vernon Carr', 'pyrikiz@mailinator.com', '+1 (408) 123-9881', '$2y$10$4Zfvv5iY9aWXxXdRYsWX3eFVWqqS.FtcXn9GRou3A56anEZ7imp1G', NULL, NULL, 'client', '', NULL, '2023-12-26 18:21:09', '2023-12-26 18:21:09', NULL),
(44, 'Peter Simmons', 'bizag@mailinator.com', '+1 (729) 168-8062', '$2y$10$4XBQtYotPBRbecy5FLjqQOY2rM9OL0ePvHDVTf6vgpKPrNXpdNCB.', NULL, NULL, 'client', '', NULL, '2023-12-26 18:24:07', '2023-12-26 18:24:07', NULL),
(45, 'Vernon Hopkins', 'sybytu@mailinator.com', '+1 (684) 569-7631', '$2y$10$a87PNaqGBayMr1nF4.eSWO4q3/3cAwVCw2lNa.rYXCHfPv0klPuMu', NULL, NULL, 'client', 'individual', NULL, '2023-12-26 21:58:04', '2023-12-26 21:58:04', NULL),
(46, 'Baxter Leon', 'somuje@mailinator.com', '+1 (385) 647-4639', '$2y$10$0fkh1ilOR6gL6q43nn1k4O0I.Vu9JKiPtkiWkp/Ih4vEmr.T2zBf2', NULL, NULL, 'client', 'individual', NULL, '2023-12-26 21:59:18', '2023-12-26 21:59:18', NULL),
(47, 'Roth Stanton', 'faqur@mailinator.com', '+1 (489) 622-2413', '$2y$10$Psh4sT1NP7fPFyYMBkjidOZvlTiOUFgMyyOvn4/l0L4vOVEvspsQq', NULL, NULL, 'client', 'company', 'ewqr', '2023-12-26 21:59:32', '2023-12-26 21:59:32', NULL),
(48, 'noura', 'nouraa@hotmail.com', '0504915222', '$2y$10$UUhQ.dn1Eb07lBaYUns2qu8kZROyG4ytrJxsTFNw9HRsEPWseMfyy', NULL, NULL, 'client', 'individual', NULL, '2023-12-26 22:56:37', '2023-12-26 22:56:37', NULL),
(49, 'ابراهيم33', 'admin444@admin.com', '05843484447', '$2y$10$JyMq1ebBYUYjUt3h6jga1ePL4KzGNbf8svoEp0cnHPPhvzWsO0Cw2', NULL, NULL, 'client', 'individual', NULL, '2023-12-27 13:22:36', '2023-12-27 13:22:36', NULL),
(50, 'كفالة', 'ad444@admin.com', '41444', '$2y$10$dM4Wj7Mp1Xr0cESrnrVtFuE9pS.mHKCM1sqVsd7AnvoDfKJxGgYYq', NULL, NULL, 'client', 'individual', NULL, '2023-12-27 13:43:25', '2023-12-27 13:43:25', NULL),
(51, 'ahmadf', 'nojura@gmail.com', '0507225545', '$2y$10$HPAm.GqvOcbARaGwXO0lKeMJKBgli1Aqe/nnNQRorkkEcN3udkhwS', NULL, NULL, 'client', 'individual', NULL, '2023-12-27 18:37:48', '2023-12-27 18:37:48', NULL),
(52, 'Reece Duncan', 'fuwypoh@mailinator.com', '+1 (873) 841-3361', '$2y$10$JI.nR6pHQhNkvXZcfAhtlesWUBBKOGQ8pA7QHHR5TvqsfCSC1EnmG', NULL, NULL, 'client', 'individual', NULL, '2023-12-31 09:55:58', '2023-12-31 09:55:58', NULL),
(53, 'asil', 'asil@gmail.com', '0507885595', '$2y$10$1utrrxVTQw35.YUPBCxALudSAwoMX5jEYM9gI3esGAcPFSlFUwRzS', NULL, NULL, 'client', 'individual', NULL, '2024-01-02 18:50:57', '2024-01-02 18:50:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_alerts`
--

CREATE TABLE `user_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alert_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_alerts`
--

INSERT INTO `user_alerts` (`id`, `alert_text`, `alert_link`, `created_at`, `updated_at`) VALUES
(1, 'تم أرسال العقد للخدمة المطلوبة رقم #2 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/2', '2023-07-04 14:48:03', '2023-07-04 14:48:03'),
(2, 'تم الأنتهاء من العمل في الخدمة رقم #2 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/2', '2023-07-04 14:50:07', '2023-07-04 14:50:07'),
(3, 'تم أرسال العقد للخدمة المطلوبة رقم #3 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/3', '2023-07-04 17:36:06', '2023-07-04 17:36:06'),
(4, 'تم الأنتهاء من العمل في الخدمة رقم #3 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/3', '2023-07-04 17:37:56', '2023-07-04 17:37:56'),
(5, 'تم أرسال العقد للخدمة المطلوبة رقم #4 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/4', '2023-07-06 15:18:06', '2023-07-06 15:18:06'),
(6, 'تم الأنتهاء من العمل في الخدمة رقم #4 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/4', '2023-07-06 15:22:35', '2023-07-06 15:22:35'),
(7, 'تم أرسال العقد للخدمة المطلوبة رقم #5 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/5', '2023-07-06 17:58:31', '2023-07-06 17:58:31'),
(8, 'تم الأنتهاء من العمل في الخدمة رقم #5 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/5', '2023-07-06 18:01:57', '2023-07-06 18:01:57'),
(9, 'تم أرسال العقد للخدمة المطلوبة رقم #6 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/6', '2023-07-13 13:51:42', '2023-07-13 13:51:42'),
(10, 'تم الأنتهاء من العمل في الخدمة رقم #6 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/6', '2023-07-13 13:56:16', '2023-07-13 13:56:16'),
(11, 'تم أرسال العقد للخدمة المطلوبة رقم #8 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/8', '2023-07-18 15:24:45', '2023-07-18 15:24:45'),
(12, 'تم الأنتهاء من العمل في الخدمة رقم #8 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/8', '2023-07-18 15:28:27', '2023-07-18 15:28:27'),
(13, 'تم أرسال العقد للخدمة المطلوبة رقم #13 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/13', '2023-08-03 15:32:33', '2023-08-03 15:32:33'),
(14, 'تم الأنتهاء من العمل في الخدمة رقم #13 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/13', '2023-08-03 15:43:10', '2023-08-03 15:43:10'),
(15, 'تم أرسال العقد للخدمة المطلوبة رقم #16 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/16', '2023-11-23 17:20:53', '2023-11-23 17:20:53'),
(16, 'تم الأنتهاء من العمل في الخدمة رقم #16 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/16', '2023-11-23 17:25:07', '2023-11-23 17:25:07'),
(17, 'تم أرسال العقد للخدمة المطلوبة رقم #19 وفي أنتطار القبول وأرسال الدفعة الأولي', 'http://hdac.integratedvisions-sa.com/client/request-services/19', '2023-11-28 17:13:39', '2023-11-28 17:13:39'),
(18, 'تم الأنتهاء من العمل في الخدمة رقم #19 وفي أنتطار أرسال الدفعة الثانية', 'http://hdac.integratedvisions-sa.com/client/request-services/19', '2023-11-28 17:19:15', '2023-11-28 17:19:15'),
(19, 'تم أرسال العقد للخدمة المطلوبة رقم #25 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/25', '2023-12-21 18:58:22', '2023-12-21 18:58:22'),
(20, 'تم الأنتهاء من العمل في الخدمة رقم #25 وفي أنتطار أرسال الدفعة الثانية', 'https://amrtm.com.sa/client/request-services/25', '2023-12-21 19:10:35', '2023-12-21 19:10:35'),
(21, 'تم أرسال العقد للخدمة المطلوبة رقم #23 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/23', '2023-12-21 20:05:28', '2023-12-21 20:05:28'),
(22, 'تم أرسال العقد للخدمة المطلوبة رقم #24 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/24', '2023-12-21 20:18:02', '2023-12-21 20:18:02'),
(23, 'تم أرسال العقد للخدمة المطلوبة رقم #27 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/27', '2023-12-23 19:01:36', '2023-12-23 19:01:36'),
(24, 'تم أرسال العقد للخدمة المطلوبة رقم #29 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/29', '2023-12-23 20:03:12', '2023-12-23 20:03:12'),
(25, 'تم أرسال العقد للخدمة المطلوبة رقم #30 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/30', '2023-12-24 16:07:16', '2023-12-24 16:07:16'),
(26, 'تم أرسال العقد للخدمة المطلوبة رقم #31 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/31', '2023-12-24 21:42:16', '2023-12-24 21:42:16'),
(27, 'تم أرسال العقد للخدمة المطلوبة رقم #32 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/32', '2023-12-25 15:32:09', '2023-12-25 15:32:09'),
(28, 'تم الأنتهاء من العمل في الخدمة رقم #32 وفي أنتطار أرسال الدفعة الثانية', 'https://amrtm.com.sa/client/request-services/32', '2023-12-25 15:39:39', '2023-12-25 15:39:39'),
(29, 'تم أرسال العقد للخدمة المطلوبة رقم #34 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/34', '2023-12-26 14:02:23', '2023-12-26 14:02:23'),
(30, 'تم أرسال العقد للخدمة المطلوبة رقم #36 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/36', '2023-12-26 18:26:22', '2023-12-26 18:26:22'),
(31, 'تم أرسال العقد للخدمة المطلوبة رقم #38 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/38', '2023-12-26 22:39:25', '2023-12-26 22:39:25'),
(32, 'تم أرسال العقد للخدمة المطلوبة رقم #39 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/39', '2023-12-26 22:59:56', '2023-12-26 22:59:56'),
(33, 'تم الأنتهاء من العمل في الخدمة رقم #39 وفي أنتطار أرسال الدفعة الثانية', 'https://amrtm.com.sa/client/request-services/39', '2023-12-26 23:11:05', '2023-12-26 23:11:05'),
(34, 'تم أرسال العقد للخدمة المطلوبة رقم #40 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/40', '2023-12-27 13:29:41', '2023-12-27 13:29:41'),
(35, 'تم أرسال العقد للخدمة المطلوبة رقم #41 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/41', '2023-12-27 13:45:54', '2023-12-27 13:45:54'),
(36, 'تم أرسال العقد للخدمة المطلوبة رقم #42 وفي أنتطار القبول وأرسال الدفعة الأولي', 'https://amrtm.com.sa/client/request-services/42', '2023-12-27 18:39:39', '2023-12-27 18:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_user_alert`
--

CREATE TABLE `user_user_alert` (
  `user_alert_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_user_alert`
--

INSERT INTO `user_user_alert` (`user_alert_id`, `user_id`, `read`) VALUES
(1, 8, 0),
(2, 8, 0),
(3, 9, 0),
(4, 9, 0),
(5, 12, 0),
(6, 12, 0),
(7, 13, 0),
(8, 13, 0),
(9, 14, 0),
(10, 14, 0),
(11, 15, 0),
(12, 15, 0),
(13, 18, 0),
(14, 18, 0),
(15, 21, 0),
(16, 21, 0),
(17, 24, 0),
(18, 24, 0),
(19, 30, 0),
(20, 30, 0),
(21, 28, 0),
(22, 29, 0),
(23, 33, 0),
(24, 35, 0),
(25, 36, 0),
(26, 38, 0),
(27, 40, 0),
(28, 40, 0),
(29, 42, 0),
(30, 44, 0),
(31, 47, 0),
(32, 48, 0),
(33, 48, 0),
(34, 49, 0),
(35, 50, 0),
(36, 51, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_uss`
--
ALTER TABLE `about_uss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk_8603012` (`user_id`),
  ADD KEY `request_service_fk_8602023` (`request_service_id`);

--
-- Indexes for table `consultants`
--
ALTER TABLE `consultants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk_8976011` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinings`
--
ALTER TABLE `joinings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newss`
--
ALTER TABLE `newss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_8578427` (`role_id`),
  ADD KEY `permission_id_fk_8578427` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `qa_messages`
--
ALTER TABLE `qa_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qa_messages_topic_id_foreign` (`topic_id`),
  ADD KEY `qa_messages_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `qa_topics`
--
ALTER TABLE `qa_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qa_topics_creator_id_foreign` (`creator_id`),
  ADD KEY `qa_topics_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_fk_8599172` (`service_id`);

--
-- Indexes for table `request_services`
--
ALTER TABLE `request_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk_8602011` (`user_id`),
  ADD KEY `service_fk_8602012` (`service_id`),
  ADD KEY `consultant_fk_8794012` (`consultant_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_8578436` (`user_id`),
  ADD KEY `role_id_fk_8578436` (`role_id`);

--
-- Indexes for table `samples`
--
ALTER TABLE `samples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_alerts`
--
ALTER TABLE `user_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_user_alert`
--
ALTER TABLE `user_user_alert`
  ADD KEY `user_alert_id_fk_8578460` (`user_alert_id`),
  ADD KEY `user_id_fk_8578460` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_uss`
--
ALTER TABLE `about_uss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `consultants`
--
ALTER TABLE `consultants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joinings`
--
ALTER TABLE `joinings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `newss`
--
ALTER TABLE `newss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_messages`
--
ALTER TABLE `qa_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qa_topics`
--
ALTER TABLE `qa_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request_services`
--
ALTER TABLE `request_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `samples`
--
ALTER TABLE `samples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_alerts`
--
ALTER TABLE `user_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `request_service_fk_8602023` FOREIGN KEY (`request_service_id`) REFERENCES `request_services` (`id`),
  ADD CONSTRAINT `user_fk_8603012` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `consultants`
--
ALTER TABLE `consultants`
  ADD CONSTRAINT `user_fk_8976011` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_8578427` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_8578427` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qa_messages`
--
ALTER TABLE `qa_messages`
  ADD CONSTRAINT `qa_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_messages_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `qa_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qa_topics`
--
ALTER TABLE `qa_topics`
  ADD CONSTRAINT `qa_topics_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_topics_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `service_fk_8599172` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `request_services`
--
ALTER TABLE `request_services`
  ADD CONSTRAINT `consultant_fk_8794012` FOREIGN KEY (`consultant_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `service_fk_8602012` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `user_fk_8602011` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_8578436` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_8578436` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_user_alert`
--
ALTER TABLE `user_user_alert`
  ADD CONSTRAINT `user_alert_id_fk_8578460` FOREIGN KEY (`user_alert_id`) REFERENCES `user_alerts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_8578460` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
