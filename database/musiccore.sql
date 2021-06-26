-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 22, 2021 at 04:13 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musiccore3`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Промокод abcd', 'lorem-ipsum-is', 'http://musicore/imgfile/photos/1/banners/1.jpg', '<h2><span style=\"font-weight: bolder; color: rgb(156, 0, 255); font-size: 2rem;\">Скидка 1000 руб.</span><br></h2><h2><br></h2>', 'active', '2020-08-14 01:47:38', '2021-06-14 10:20:22'),
(2, 'Maton', 'lorem-ipsum', 'http://musicore/imgfile/photos/1/banners/3.png', '<h2><font color=\"#636363\"><span style=\"font-weight: bolder;\">Скидка от 10%</span></font></h2>', 'active', '2020-08-14 01:50:23', '2021-06-14 10:20:30'),
(4, 'БЕСПЛАТНЫЙ ВОЗВРАТ', 'banner', 'http://musicore/imgfile/photos/1/banners/2.jpg', '<h2><span style=\"font-weight: bolder; color: rgb(156, 0, 255);\">Возврат в течении 30 дней</span></h2><h2><span style=\"color: rgb(156, 0, 255);\"></span></h2>', 'active', '2020-08-17 20:46:59', '2021-06-14 10:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Gibson', 'gibson', 'active', '2021-06-03 10:43:10', '2021-06-03 10:43:10'),
(8, 'Ibanez', 'ibanez', 'active', '2021-06-03 10:43:18', '2021-06-03 10:43:18'),
(9, 'Maton', 'maton', 'active', '2021-06-03 10:43:25', '2021-06-03 10:43:25'),
(10, 'Fender', 'fender', 'active', '2021-06-03 10:43:32', '2021-06-03 10:43:32'),
(11, 'Yamaha', 'yamaha', 'active', '2021-06-03 10:43:39', '2021-06-03 10:43:39'),
(12, 'TAMA', 'tama', 'active', '2021-06-04 02:38:02', '2021-06-04 02:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `quantity` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Гитары', 'gitary', '<p>sdasdas</p>', 'http://musicore/storage/photos/1/simon-weisser-phS37wg8cQg-unsplash.jpg', 1, NULL, NULL, 'active', '2021-06-03 10:41:53', '2021-06-09 02:20:00'),
(13, 'Клавишные', 'klavisnye', NULL, 'http://musicore/storage/photos/1/geert-pieters-8QrPJ3Kfie4-unsplash.jpg', 1, NULL, NULL, 'active', '2021-06-03 10:42:01', '2021-06-03 10:59:32'),
(14, 'Ударные', 'udarnye', NULL, 'http://musicore/storage/photos/1/david-martin-dIdE2kS9Dds-unsplash.jpg', 1, NULL, NULL, 'active', '2021-06-03 10:42:08', '2021-06-03 10:59:48'),
(15, 'Акустические', 'akusticeskie', NULL, NULL, 0, 12, NULL, 'active', '2021-06-03 10:42:23', '2021-06-03 10:42:23'),
(16, 'Электро', 'elektro', NULL, NULL, 0, 12, NULL, 'active', '2021-06-03 10:42:35', '2021-06-03 10:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(5, 'abcd', 'fixed', '1000.00', 'active', '2020-08-17 20:54:58', '2021-06-07 02:55:16'),
(6, 'null', 'fixed', '0.00', 'active', '2021-06-04 06:39:14', '2021-06-04 06:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('7da18360-dbc6-4204-a6ec-c1b66069f63f', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"\\u041d\\u043e\\u0432\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437\",\"actionURL\":\"http:\\/\\/musicore\\/admin\\/order\\/31\",\"fas\":\"fa-file-alt\"}', NULL, '2021-06-21 01:45:08', '2021-06-21 01:45:08'),
('d14ef903-cfd0-4ab2-b477-f8b0d80739f3', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"\\u041d\\u043e\\u0432\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437\",\"actionURL\":\"http:\\/\\/musicore\\/admin\\/order\\/32\",\"fas\":\"fa-file-alt\"}', NULL, '2021-06-21 01:48:56', '2021-06-21 01:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `payment_method` enum('cod','paypal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Томми Эммануэль', 'tommi-emmanuel', '<p><span style=\"font-weight: bolder; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Уи́льям То́мас Эммануэ́ль (William Thomas Emmanuel; род. 31 мая 1955 года, Мусвеллбрук, Новый Южный Уэльс, Австралия), более известный как Томми Эммануэль — австралийский гитарист-виртуоз, мастер уникальной импровизационной техники игры, двукратный номинант на Грэмми.</span><br></p>', '<h2 style=\"margin: 1em 0px 0.25em; padding: 0px; overflow: hidden; border-bottom: 1px solid rgb(162, 169, 177); font-size: 1.5em; font-family: &quot;Linux Libertine&quot;, Georgia, Times, serif; line-height: 1.3;\"><span class=\"mw-headline\" id=\"Биография\">Биография</span><span class=\"mw-editsection\" style=\"font-family: sans-serif; user-select: none; font-size: small; margin-left: 1em; vertical-align: baseline; line-height: 1em; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: rgb(84, 89, 93);\">[</span><a href=\"https://ru.wikipedia.org/w/index.php?title=%D0%AD%D0%BC%D0%BC%D0%B0%D0%BD%D1%83%D1%8D%D0%BB%D1%8C,_%D0%A2%D0%BE%D0%BC%D0%BC%D0%B8&amp;veaction=edit&amp;section=1&amp;editintro=%D0%A8%D0%B0%D0%B1%D0%BB%D0%BE%D0%BD:Editnotice/%D0%9D%D1%8B%D0%BD%D0%B5_%D0%B6%D0%B8%D0%B2%D1%83%D1%89%D0%B8%D0%B5\" class=\"mw-editsection-visualeditor\" title=\"Редактировать раздел «Биография»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править</a><span class=\"mw-editsection-divider\" style=\"color: rgb(84, 89, 93);\">&nbsp;|&nbsp;</span><a href=\"https://ru.wikipedia.org/w/index.php?title=%D0%AD%D0%BC%D0%BC%D0%B0%D0%BD%D1%83%D1%8D%D0%BB%D1%8C,_%D0%A2%D0%BE%D0%BC%D0%BC%D0%B8&amp;action=edit&amp;section=1&amp;editintro=%D0%A8%D0%B0%D0%B1%D0%BB%D0%BE%D0%BD:Editnotice/%D0%9D%D1%8B%D0%BD%D0%B5_%D0%B6%D0%B8%D0%B2%D1%83%D1%89%D0%B8%D0%B5\" title=\"Редактировать раздел «Биография»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править код</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: rgb(84, 89, 93);\">]</span></span></h2><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Томми Эммануэль начал играть на гитаре в 1959 году в возрасте 4 лет, без преподавателя. В дальнейшем он так и не получил академического музыкального образования, поэтому он часто шутит о том, что не умеет читать ноты и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B0%D0%B1%D1%83%D0%BB%D0%B0%D1%82%D1%83%D1%80%D0%B0\" title=\"Табулатура\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">табулатуры</a>, так как слуха ему вполне достаточно. В 1960 году старший брат Томми&nbsp;— семилетний Фил создал группу, назвав её «The Emmanuel Quartet» (семейная группа Эммануэлей известна также под названиями «The Midget Surfaries» и «The Trailblazers»). В группу Фил взял и четырёхлетнего Томми. Прорепетировав несколько месяцев, мальчишки начали публичные выступления, и с тех пор братья Эммануэли работают на сцене всю свою жизнь. Музыкальным образованием Эммануэлей занимается австралийская звезда кантри&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=%D0%91%D0%B0%D0%B4%D0%B4%D0%B8_%D0%A3%D0%B8%D0%BB%D1%8C%D1%8F%D0%BC%D1%81&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Бадди Уильямс (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Бадди Уильямс</a>&nbsp;(Buddy Williams) и даже берёт молодых дарований в тур. В 1966 году после смерти отца, желая помочь семье, 11-летний Томми начинает преподавать гитару и пользуется уважением наравне с другими взрослыми преподавателями, т.к. уже тогда в нём были видны экстраординарные исполнительские способности.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">В 11 лет, будучи уже опытным музыкантом-исполнителем, Томми привлёк в группу младшего брата Криса, играющего на ударных, и сестру Виржинию, которая играет на&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BB%D0%B0%D0%B9%D0%B4-%D0%B3%D0%B8%D1%82%D0%B0%D1%80%D0%B0\" title=\"Слайд-гитара\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">слайд-гитаре</a>. Новую группу они назвали «The Trailblazers» и начали интенсивно гастролировать. Обучение в школе было переведено на заочную форму. Через год после создания группы Томми выиграл телевизионный конкурс молодых талантов и записал свою первую пластинку. С тех пор Томми сделал свыше 2000 записей, выпустил 16 сольных альбомов и участвовал в записях едва ли не всех звёзд мировой сцены. В своих работах Томми кроме гитары играет на&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B0%D0%BD%D0%B4%D0%B6%D0%BE\" title=\"Банджо\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">банджо</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%BD%D0%B4%D0%BE%D0%BB%D0%B8%D0%BD%D0%B0\" title=\"Мандолина\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">мандолине</a>, ударных и перкуссионных инструментах, а также поёт, аранжирует и выступает в качестве композитора.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Приехав впервые в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%A8%D0%90\" class=\"mw-redirect\" title=\"США\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">США</a>, Томми Эммануэль первым делом поехал в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D1%8D%D1%88%D0%B2%D0%B8%D0%BB%D0%BB\" class=\"mw-redirect\" title=\"Нэшвилл\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Нэшвилл</a>&nbsp;к своему кумиру&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A7%D0%B5%D1%82_%D0%90%D1%82%D0%BA%D0%B8%D0%BD%D1%81\" class=\"mw-redirect\" title=\"Чет Аткинс\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Чету Аткинсу</a>. В 1997 году они записали совместный альбом, а дружба с Четом продолжалась около десяти лет (до самой смерти Чета).</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Эммануэль неоднократно приезжал в Россию и несколько лет подряд давал концерты в стенах Светлановского зала&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%BE%D1%81%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B8%D0%B9_%D0%BC%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9_%D0%94%D0%BE%D0%BC_%D0%BC%D1%83%D0%B7%D1%8B%D0%BA%D0%B8\" class=\"mw-redirect\" title=\"Московский международный Дом музыки\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Московского международного Дома музыки</a>. Несколько раз был хедлайнером международного музыкального арт-фестиваля современной музыки&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%BC%D0%B0%D0%BA%D0%B0%D0%B1%D0%BE\" title=\"Мамакабо\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Мамакабо</a><sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%BC%D0%BC%D0%B0%D0%BD%D1%83%D1%8D%D0%BB%D1%8C,_%D0%A2%D0%BE%D0%BC%D0%BC%D0%B8#cite_note-1\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup>, где выступал совместно с гитаристом&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B4%D0%B5%D1%80%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2,_%D0%A2%D0%B8%D0%BC%D1%83%D1%80_%D0%92%D0%BB%D0%B0%D0%B4%D0%B8%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B8%D1%87\" title=\"Ведерников, Тимур Владимирович\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Тимуром Ведерниковым</a><sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D0%BC%D0%BC%D0%B0%D0%BD%D1%83%D1%8D%D0%BB%D1%8C,_%D0%A2%D0%BE%D0%BC%D0%BC%D0%B8#cite_note-2\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>.</p>', '<p><font color=\"#202122\" face=\"sans-serif\"><span style=\"font-size: 14px;\"><b>Уи́льям То́мас Эммануэ́ль (William Thomas Emmanuel; род. 31 мая 1955 года, Мусвеллбрук, Новый Южный Уэльс, Австралия), более известный как Томми Эммануэль — австралийский гитарист-виртуоз, мастер уникальной импровизационной техники игры, двукратный номинант на Грэмми.</b></span></font><br></p>', 'http://musicore/storage/photos/1/Гитары/Tommy-Emmanuel_Artboard-2.jpg', 'Bio', 6, NULL, 1, 'active', '2021-06-03 12:03:15', '2021-06-20 06:58:38'),
(8, 'Santa Cruz', 'santa-cruz', '<p><span style=\"font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Santa Cruz</span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;— это финская&nbsp;</span><a href=\"https://ru.wikipedia.org/wiki/%D0%A5%D0%B0%D1%80%D0%B4-%D1%80%D0%BE%D0%BA\" title=\"\" style=\"color: rgb(6, 69, 173); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">хард-рок</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;группа, образованная в&nbsp;</span><a href=\"https://ru.wikipedia.org/wiki/%D0%A5%D0%B5%D0%BB%D1%8C%D1%81%D0%B8%D0%BD%D0%BA%D0%B8\" title=\"Хельсинки\" style=\"color: rgb(6, 69, 173); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">Хельсинки</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;в 2007 году&nbsp;</span><span style=\"font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Артту Куосманеном</span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;и&nbsp;</span><span style=\"font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Йоонасом Паркконеном</span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. Спустя год к ним присоединился басист&nbsp;</span><span style=\"font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Митя Тойвонен</span><sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-1\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. На протяжении 2008—2009 годов группа меняла барабанщиков, параллельно записав и издав две демо-записи в формате EP&nbsp;</span><span style=\"font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Another Rush Of Adrenaline</span><sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-2\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">. В конечном итоге, в 2009 году Santa Cruz стали полноценным&nbsp;</span><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B2%D0%B0%D1%80%D1%82%D0%B5%D1%82\" title=\"Квартет\" style=\"color: rgb(6, 69, 173); background: none rgb(255, 255, 255); font-family: sans-serif; font-size: 14px;\">квартетом</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">, приняв в постоянный состав&nbsp;</span><span style=\"font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Тапани Фагерстрёма</span><sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px; color: rgb(32, 33, 34); font-family: sans-serif;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-3\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[3]</a></sup><br></p>', '<h2 style=\"margin: 1em 0px 0.25em; padding: 0px; overflow: hidden; border-bottom: 1px solid rgb(162, 169, 177); font-size: 1.5em; font-family: &quot;Linux Libertine&quot;, Georgia, Times, serif; line-height: 1.3;\"><span class=\"mw-headline\" id=\"История_группы\">История группы</span><span class=\"mw-editsection\" style=\"font-family: sans-serif; user-select: none; font-size: small; margin-left: 1em; vertical-align: baseline; line-height: 1em; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: rgb(84, 89, 93);\">[</span><a href=\"https://ru.wikipedia.org/w/index.php?title=Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)&amp;veaction=edit&amp;section=1\" class=\"mw-editsection-visualeditor\" title=\"Редактировать раздел «История группы»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править</a><span class=\"mw-editsection-divider\" style=\"color: rgb(84, 89, 93);\">&nbsp;|&nbsp;</span><a href=\"https://ru.wikipedia.org/w/index.php?title=Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)&amp;action=edit&amp;section=1\" title=\"Редактировать раздел «История группы»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править код</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: rgb(84, 89, 93);\">]</span></span></h2><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Спустя три года и после самостоятельного выпуска&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D0%BD%D1%8C%D0%BE%D0%BD%D0%B0\" title=\"Миньона\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">миньона</a>&nbsp;<span style=\"font-weight: 700;\">Anthems for Young \'n\' Restless</span>, состоявшего из шести песен, группа подписала контракт с финским звукозаписывающим лейблом&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Spinefarm_Records\" title=\"Spinefarm Records\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Spinefarm Records</a>. Их дебютный студийный альбом&nbsp;<span style=\"font-weight: 700;\">Screaming for Adrenaline</span><sup id=\"cite_ref-4\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-4\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[4]</a></sup>&nbsp;увидел свет уже в апреле 2013 года и вошел в Топ-30 национального чарта (27 место). В этом же году Santa Cruz успешно гастролировали в Германии, Англии и Бельгии.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Второй&nbsp;— одноименный&nbsp;— альбом&nbsp;<span style=\"font-weight: 700;\">Santa Cruz</span>&nbsp;вышел 6 марта 2015 года<sup id=\"cite_ref-5\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-5\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[5]</a></sup>, стартовав с 3-го места в финских чартах<sup id=\"cite_ref-6\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-6\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[6]</a></sup>. Выпуск студийного релиза предварял выход трех синглов:</p><ul style=\"list-style-image: url(&quot;/w/skins/Vector/resources/common/images/bullet-icon.svg?d4515&quot;); margin: 0.3em 0px 0px 1.6em; padding: 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><li style=\"margin-bottom: 0.1em;\"><i>We Are the Ones to Fall</i>&nbsp;(февраль 2014);</li><li style=\"margin-bottom: 0.1em;\"><i>Wasted &amp; Wounded</i>&nbsp;(27 октября 2014);</li><li style=\"margin-bottom: 0.1em;\"><i>My Remedy</i>&nbsp;(февраль 2015).</li></ul><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">На каждый из них было снято по видеоклипу. В поддержку альбома был организован масштабный европейский тур из 27 концертов. Песня&nbsp;<i>We Are the Ones to Fall</i>&nbsp;стала самой ротируемой композицией года на одной из популярнейших в Финляндии радиостанций Radio Rock. Весной 2016 года релиз участвовал в национальной музыкальной премии&nbsp;<span style=\"font-weight: 700;\">Emma Gaala</span>&nbsp;в номинации «<span style=\"font-weight: 700;\">Рок-альбом года</span>».<sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-7\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[7]</a></sup>&nbsp;Ради выступления на гала-концерте группа взяла паузу в совместном туре с&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Reckless_Love\" title=\"Reckless Love\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Reckless Love</a>&nbsp;и вернулась в Хельсинки.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">В июне 2016 Santa Cruz выпустили внеальбомный сингл&nbsp;<i>Skydiving Without A Parachute</i><sup id=\"cite_ref-8\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-8\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[8]</a></sup>, вскоре дополнив релиз кавер-версией хита группы&nbsp;<a href=\"https://ru.wikipedia.org/wiki/One_Direction\" title=\"One Direction\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">One Direction</a>&nbsp;под названием&nbsp;<i>Drag Me Down</i>. Параллельно группа гастролировала в США, выступая с&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D0%B1%D0%B0%D1%81%D1%82%D1%8C%D1%8F%D0%BD_%D0%91%D0%B0%D1%85\" class=\"mw-redirect\" title=\"Себастьян Бах\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Себастьяном Бахом</a>. В целом, с момента своего создания Santa Cruz покоряли Североамериканский континент трижды, включая работу с&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Amaranthe\" title=\"Amaranthe\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Amaranthe</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/I_Prevail\" title=\"I Prevail\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">I Prevail</a>, а также участие в фестивале Rock On The Range (2015).</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Выход третьего студийного альбома&nbsp;<span style=\"font-weight: 700;\">Bad Blood Rising</span>&nbsp;группа заанонсировала в мае 2017 года, объявив об окончании записи на базе&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=Finnvox_Studio&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Finnvox Studio (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Finnvox Studio</a>&nbsp;(Хельсинки)<sup id=\"cite_ref-9\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-9\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[9]</a></sup>. Уже в начале лета вышел первый альбомный сингл&nbsp;<i>River Phoenix</i>, а сами Santa Cruz сменили лейбл, начав сотрудничество с&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=Sakara_Records&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Sakara Records (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sakara Records</a><sup id=\"cite_ref-10\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-10\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[10]</a></sup>. Официальный релиз намечен на осень: 6 октября 2017 года в Финляндии и Японии (<span style=\"font-weight: 700;\">Sakara Records</span>) и 10 ноября&nbsp;— в остальном мире (<span style=\"font-weight: 700;\">M Theory Audio</span>)<sup id=\"cite_ref-11\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-11\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[11]</a></sup>. В поддержку альбома группа отправилась в продолжительное турне, в датах которого впервые за всю концертную историю Santa Cruz появилась Россия<sup id=\"cite_ref-12\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-12\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[12]</a></sup>: 15 сентября 2017 (при поддержке SPIKA Concert Agency<sup id=\"cite_ref-13\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-13\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[13]</a></sup>) музыканты выступили в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0\" title=\"Москва\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Москве</a>&nbsp;(Gorod) а уже на следующий день&nbsp;— в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%B0%D0%BD%D0%BA%D1%82-%D0%9F%D0%B5%D1%82%D0%B5%D1%80%D0%B1%D1%83%D1%80%D0%B3\" title=\"Санкт-Петербург\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Санкт-Петербурге</a>&nbsp;(MOD). Российские даты тура получили уникальное название «Русское вторжение»; также в честь первого визита в РФ группа подготовила оригинальный мерч.<sup id=\"cite_ref-14\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-14\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[14]</a></sup></p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">18 марта 2018 года группа без объяснения причин отменила гастрольный тур по США. По словам вокалиста группы, группа распалась. Причём, очень оригинальным образом:<br><br><i><span style=\"font-weight: 700;\">«Для всех тех, кто спрашивал, почему американский тур отменён. Парни просто вытолкнули меня из автобуса на улицу, словно бродягу и сказали, что группы Santa Cruz больше не существует.»</span></i><sup id=\"cite_ref-15\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-15\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[15]</a></sup></p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">16 апреля 2018 года Brody DeRozie был объявлен новым гитаристом группы, однако 22 мая 2018 года Броди объявил о своем отъезде из Santa Cruz.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">7 июля 2018 года Арчи опубликовал видео на своем канале YouTube, в котором участвовал новый гитарист Santa Cruz, Пав Круз (Павел Попов).</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">3 августа 2018 года Jordan Faintuch был объявлен новым барабанщиком группы, однако в конечном итоге 8 апреля 2019 года, в день выхода сингла \"Changing Of Seasons\", Артту раскрыл тайну нового состава. Басистом стал Ero Cruz (он же Eemi Lamberg), а ударником - Toxy Cruz, ранее известный как Toxy London. Также Santa Cruz объявили о выступлениях на крупных европейских и американских фестивалях.</p><h3 style=\"margin: 0.3em 0px 0px; padding-top: 0.5em; padding-bottom: 0px; overflow: hidden; font-size: 1.2em; line-height: 1.6; font-weight: bold; font-family: sans-serif;\"><span id=\".D0.98.D0.BD.D1.82.D0.B5.D1.80.D0.B5.D1.81.D0.BD.D1.8B.D0.B5_.D1.84.D0.B0.D0.BA.D1.82.D1.8B\"></span><span class=\"mw-headline\" id=\"Интересные_факты\">Интересные факты</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: rgb(84, 89, 93);\">[</span><a href=\"https://ru.wikipedia.org/w/index.php?title=Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)&amp;veaction=edit&amp;section=2\" class=\"mw-editsection-visualeditor\" title=\"Редактировать раздел «Интересные факты»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править</a><span class=\"mw-editsection-divider\" style=\"color: rgb(84, 89, 93);\">&nbsp;|&nbsp;</span><a href=\"https://ru.wikipedia.org/w/index.php?title=Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)&amp;action=edit&amp;section=2\" title=\"Редактировать раздел «Интересные факты»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править код</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: rgb(84, 89, 93);\">]</span></span></h3><ul style=\"list-style-image: url(&quot;/w/skins/Vector/resources/common/images/bullet-icon.svg?d4515&quot;); margin: 0.3em 0px 0px 1.6em; padding: 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><li style=\"margin-bottom: 0.1em;\">Песни Santa Cruz использовались в телевизионной рекламе&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Mercedes-Benz\" title=\"Mercedes-Benz\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Mercedes-Benz</a><sup id=\"cite_ref-16\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-16\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[16]</a></sup>, в шоу телеканала&nbsp;<span style=\"font-weight: 700;\">AXS TV</span>&nbsp;под названием «Breaking Bands», а также ротировались в музыкальных подборках американской телесети&nbsp;<a href=\"https://ru.wikipedia.org/wiki/ESPN\" title=\"ESPN\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ESPN</a>.</li><li style=\"margin-bottom: 0.1em;\">Вокалист и соавтор песен группы&nbsp;<span style=\"font-weight: 700;\">Артту Куосманен</span>&nbsp;также выступает в качестве басиста финской группы&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=Local_Band&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Local Band (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Local Band</a>&nbsp;совместно с Алекси Лайхо (<a href=\"https://ru.wikipedia.org/wiki/Children_of_Bodom\" title=\"Children of Bodom\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Children of Bodom</a>), Олли Херманом Косуненом (<a href=\"https://ru.wikipedia.org/wiki/Reckless_Love\" title=\"Reckless Love\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Reckless Love</a>) и Юсси Вуори (<a href=\"https://ru.wikipedia.org/wiki/The_69_Eyes\" title=\"The 69 Eyes\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">The 69 Eyes</a>).</li><li style=\"margin-bottom: 0.1em;\">Несмотря на значительную занятость (группа самостоятельно занимается аранжировками и сведением материала), Santa Cruz принимают активнейшее участие в музыкальной жизни Финляндии, выступая на национальных рок-фестивалях&nbsp;— Kukkaisrock, WaterXfest, South Park и пр.</li></ul><h3 style=\"margin: 0.3em 0px 0px; padding-top: 0.5em; padding-bottom: 0px; overflow: hidden; font-size: 1.2em; line-height: 1.6; font-weight: bold; font-family: sans-serif;\"><span id=\".D0.9C.D1.83.D0.B7.D1.8B.D0.BA.D0.B0.D0.BB.D1.8C.D0.BD.D1.8B.D0.B5_.D0.B2.D0.BB.D0.B8.D1.8F.D0.BD.D0.B8.D1.8F\"></span><span class=\"mw-headline\" id=\"Музыкальные_влияния\">Музыкальные влияния</span><span class=\"mw-editsection\" style=\"user-select: none; font-size: small; font-weight: normal; margin-left: 1em; vertical-align: baseline; line-height: 1em; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: rgb(84, 89, 93);\">[</span><a href=\"https://ru.wikipedia.org/w/index.php?title=Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)&amp;veaction=edit&amp;section=3\" class=\"mw-editsection-visualeditor\" title=\"Редактировать раздел «Музыкальные влияния»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править</a><span class=\"mw-editsection-divider\" style=\"color: rgb(84, 89, 93);\">&nbsp;|&nbsp;</span><a href=\"https://ru.wikipedia.org/w/index.php?title=Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)&amp;action=edit&amp;section=3\" title=\"Редактировать раздел «Музыкальные влияния»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править код</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: rgb(84, 89, 93);\">]</span></span></h3><ul style=\"list-style-image: url(&quot;/w/skins/Vector/resources/common/images/bullet-icon.svg?d4515&quot;); margin: 0.3em 0px 0px 1.6em; padding: 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><li style=\"margin-bottom: 0.1em;\"><a href=\"https://ru.wikipedia.org/wiki/Guns_N%E2%80%99_Roses\" title=\"Guns N’ Roses\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Guns N’ Roses</a></li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://ru.wikipedia.org/wiki/M%C3%B6tley_Cr%C3%BCe\" title=\"Mötley Crüe\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Mötley Crüe</a></li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://ru.wikipedia.org/wiki/Led_Zeppelin\" title=\"Led Zeppelin\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Led Zeppelin</a></li></ul>', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><span style=\"font-weight: 700;\">Santa Cruz</span>&nbsp;— это финская&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A5%D0%B0%D1%80%D0%B4-%D1%80%D0%BE%D0%BA\" title=\"Хард-рок\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">хард-рок</a>&nbsp;группа, образованная в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A5%D0%B5%D0%BB%D1%8C%D1%81%D0%B8%D0%BD%D0%BA%D0%B8\" title=\"Хельсинки\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Хельсинки</a>&nbsp;в 2007 году&nbsp;<span style=\"font-weight: 700;\">Артту Куосманеном</span>&nbsp;и&nbsp;<span style=\"font-weight: 700;\">Йоонасом Паркконеном</span>. Спустя год к ним присоединился басист&nbsp;<span style=\"font-weight: 700;\">Митя Тойвонен</span><sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-1\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup>. На протяжении 2008—2009 годов группа меняла барабанщиков, параллельно записав и издав две демо-записи в формате EP&nbsp;<span style=\"font-weight: 700;\">Another Rush Of Adrenaline</span><sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-2\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>. В конечном итоге, в 2009 году Santa Cruz стали полноценным&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B2%D0%B0%D1%80%D1%82%D0%B5%D1%82\" title=\"Квартет\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">квартетом</a>, приняв в постоянный состав&nbsp;<span style=\"font-weight: 700;\">Тапани Фагерстрёма</span><sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/Santa_Cruz_(%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%B0)#cite_note-3\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[3]</a></sup>.</p><div><br></div>', 'http://musicore/storage/photos/1/katl-76.jpg', 'Guitar', 7, NULL, 1, 'active', '2021-06-04 02:58:08', '2021-06-20 06:58:51');
INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Закк  Уайлд', 'zakk-uaild', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><span style=\"font-weight: 700;\">Закк</span><span style=\"font-weight: 700;\">&nbsp;&nbsp;</span><span style=\"font-weight: 700;\">Уайлд</span>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">англ.</a>&nbsp;<span lang=\"en\" style=\"font-style: italic;\">Zakk Wylde</span>; настоящее имя&nbsp;—&nbsp;<span style=\"font-weight: 700;\">Дже́ффри Фи́ллип Ви́ландт</span>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Английский язык\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">англ.</a>&nbsp;<span lang=\"en\" style=\"font-style: italic;\">Jeffrey Phillip Wielandt</span>; род.&nbsp;<a href=\"https://ru.wikipedia.org/wiki/14_%D1%8F%D0%BD%D0%B2%D0%B0%D1%80%D1%8F\" title=\"14 января\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">14 января</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1967_%D0%B3%D0%BE%D0%B4\" title=\"1967 год\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1967</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B5%D0%B9%D0%BE%D0%BD%D0%BD\" title=\"Английский язык\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Бейонн</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D1%8C%D1%8E-%D0%94%D0%B6%D0%B5%D1%80%D1%81%D0%B8\" title=\"\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Нью-Джерси</a>)&nbsp;— американский рок-музыкант, гитарист-виртуоз<sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%B0%D0%BA%D0%BA_%D0%A3%D0%B0%D0%B9%D0%BB%D0%B4#cite_note-2\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>, вокалист, автор песен. Стал известен благодаря работе с&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9E%D1%81%D0%B1%D0%BE%D1%80%D0%BD,_%D0%9E%D0%B7%D0%B7%D0%B8\" title=\"Осборн, Оззи\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Оззи Осборном</a>. Позже основал свой собственный коллектив&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Black_Label_Society\" title=\"Black Label Society\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Black Label Society</a>, в котором играет и поныне. Он также являлся гитаристом и вокалистом группы&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Pride_%26_Glory\" class=\"mw-redirect\" title=\"Pride &amp; Glory\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pride &amp; Glory</a>, выпустившей в 1994 году альбом и после распавшейся. Выпустил сольный альбом&nbsp;<i><a href=\"https://en.wikipedia.org/wiki/Book_of_Shadows_(album)\" class=\"extiw\" title=\"en:Book of Shadows (album)\" style=\"color: rgb(51, 102, 187); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Book of Shadows</a></i>&nbsp;<span class=\"ref-info\" title=\"на английском языке\" style=\"font-size: 11.9px; color: rgb(114, 119, 125); cursor: help;\">(англ.)</span>&nbsp;в 1996 году. В 2009 году журналом&nbsp;<i><a href=\"https://ru.wikipedia.org/wiki/Classic_Rock\" title=\"Classic Rock\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Classic Rock</a></i>&nbsp;включён в&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=100_%D0%B2%D0%B5%D0%BB%D0%B8%D1%87%D0%B0%D0%B9%D1%88%D0%B8%D1%85_%D0%B3%D0%B8%D1%82%D0%B0%D1%80%D0%B8%D1%81%D1%82%D0%BE%D0%B2_%D0%B2%D1%81%D0%B5%D1%85_%D0%B2%D1%80%D0%B5%D0%BC%D1%91%D0%BD_%D0%BF%D0%BE_%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D0%B8_Classic_Rock&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"100 величайших гитаристов всех времён по версии Classic Rock (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Список величайших гитаристов всех времён</a>.</p><div><br></div>', '<h2 style=\"margin: 1em 0px 0.25em; padding: 0px; overflow: hidden; border-bottom: 1px solid rgb(162, 169, 177); font-size: 1.5em; font-family: &quot;Linux Libertine&quot;, Georgia, Times, serif; line-height: 1.3;\"><span class=\"mw-headline\" id=\"Биография\">Биография</span><span class=\"mw-editsection\" style=\"font-family: sans-serif; user-select: none; font-size: small; margin-left: 1em; vertical-align: baseline; line-height: 1em; unicode-bidi: isolate;\"><span class=\"mw-editsection-bracket\" style=\"margin-right: 0.25em; color: rgb(84, 89, 93);\">[</span><a href=\"https://ru.wikipedia.org/w/index.php?title=%D0%97%D0%B0%D0%BA%D0%BA_%D0%A3%D0%B0%D0%B9%D0%BB%D0%B4&amp;veaction=edit&amp;section=1&amp;editintro=%D0%A8%D0%B0%D0%B1%D0%BB%D0%BE%D0%BD:Editnotice/%D0%9D%D1%8B%D0%BD%D0%B5_%D0%B6%D0%B8%D0%B2%D1%83%D1%89%D0%B8%D0%B5\" class=\"mw-editsection-visualeditor\" title=\"Редактировать раздел «Биография»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править</a><span class=\"mw-editsection-divider\" style=\"color: rgb(84, 89, 93);\">&nbsp;|&nbsp;</span><a href=\"https://ru.wikipedia.org/w/index.php?title=%D0%97%D0%B0%D0%BA%D0%BA_%D0%A3%D0%B0%D0%B9%D0%BB%D0%B4&amp;action=edit&amp;section=1&amp;editintro=%D0%A8%D0%B0%D0%B1%D0%BB%D0%BE%D0%BD:Editnotice/%D0%9D%D1%8B%D0%BD%D0%B5_%D0%B6%D0%B8%D0%B2%D1%83%D1%89%D0%B8%D0%B5\" title=\"Редактировать раздел «Биография»\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; white-space: nowrap;\">править код</a><span class=\"mw-editsection-bracket\" style=\"margin-left: 0.25em; color: rgb(84, 89, 93);\">]</span></span></h2><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Когда родители отдали восьмилетнего Закка в музыкальную школу, никакой радости он не испытывал и вскоре бросил учёбу. К серьёзным занятиям музыкой он вернулся уже подростком, по своей собственной инициативе. Его основным инструментом стала&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B8%D1%82%D0%B0%D1%80%D0%B0\" title=\"Гитара\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">гитара</a>, а духовными учителями&nbsp;— такие рок-группы как&nbsp;<a href=\"https://ru.wikipedia.org/wiki/AC/DC\" title=\"AC/DC\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">AC/DC</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Mot%C3%B6rhead\" title=\"Motörhead\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Motörhead</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Judas_Priest\" title=\"Judas Priest\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Judas Priest</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Led_Zeppelin\" title=\"Led Zeppelin\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Led Zeppelin</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Black_Sabbath\" title=\"Black Sabbath\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Black Sabbath</a>. В 1984 году в возрасте 17 лет он создал свою первую группу&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=Stone_Henge&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Stone Henge (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Stone Henge</a>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Закк оказался гитаристом неординарных способностей, хотя сам был о себе гораздо более скромного мнения. Когда в 1987 году 20-летний робеющий паренёк рискнул пойти на прослушивание к Оззи Осборну, максимум на что он надеялся&nbsp;— это получить автограф у своего кумира. Случилось иначе: он заинтересовал Оззи и был принят в его бэк-группу в качестве соло-гитариста. Спустя год Закк дебютировал на альбоме Ozzy Osbourne Band «<a href=\"https://ru.wikipedia.org/wiki/No_Rest_for_the_Wicked\" title=\"No Rest for the Wicked\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">No Rest for the Wicked</a>», после чего уже на регулярной основе принимал участие в записи гитарных партий для всех его релизов вплоть до 1994 года. В возрасте 27 лет Закк собрал свою новую группу Pride &amp; Glory. Коллективу удалось издать один альбом, после чего они распались.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Закк Уайлд обдумывал разные варианты дальнейшей карьеры, едва не согласившись присоединиться к&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Guns%27N%27Roses\" class=\"mw-redirect\" title=\"Guns\'N\'Roses\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Guns\'N\'Roses</a>, и к 1996 году он решил заняться сольным проектом. За дебютным альбомом&nbsp;<i>Book of Shadows</i>&nbsp;(1996) последовал альбом «Sonic Brew». К моменту его издания в 1999 году Закк Уайлд стоял на распутье. С одной стороны, он продолжал сочинять песни и не собирался бросать сольное творчество. С другой стороны, Оззи Осборн приглашал его вернуться, хотя бы на время очередного гастрольного тура, на что Закк согласился и отыграл серию концертов с Осборном. С третьей стороны, гитаристу снова захотелось поруководить собственным коллективом и сделать с ним что-нибудь интересное. Так появилась основная группа Закка Уайлда Black Label Society. Стартовав как ещё один пробный проект, коллектив оказался очень живучим, несмотря на часто возникающие проблемы с составом. Так, за шесть лет, через группу прошли восемь человек. Через Black Label Society прошли&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D0%B1%D0%B5%D1%80%D1%82_%D0%A2%D1%80%D1%83%D1%85%D0%B8%D0%BB%D1%8C%D0%BE\" class=\"mw-redirect\" title=\"Роберт Трухильо\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Роберт Трухильо</a>&nbsp;(ныне&nbsp;— басист&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Metallica\" title=\"Metallica\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Metallica</a>), Джон ДеСервио (<a href=\"https://ru.wikipedia.org/w/index.php?title=John_DeServio&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"John DeServio (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">John DeServio</a>) и Стив Гибб (<a href=\"https://ru.wikipedia.org/w/index.php?title=Steve_Gibb&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"Steve Gibb (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Steve Gibb</a>).</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Два первых года существования команды были нелёгкими&nbsp;— почти непрерывные гастроли с периодическими визитами в студию. Параллельно с турами Black Label Society Уайлд успевал выезжать на концерты с Ozzy Osbourne Band, подключая к этим выступлениям и своих коллег по группе. Первый полноформатный альбом «Stronger Than Death» (2000) привлёк внимание главным образом рок-критиков, которые отметили мастерство тяжёлых рычащих риффов и отмечали стилистическое сходство некоторых композиций со звучанием&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Pantera\" title=\"Pantera\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pantera</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Corrosion_of_Conformity\" title=\"Corrosion of Conformity\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Corrosion of Conformity</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Crowbar\" title=\"Crowbar\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Crowbar</a>. Событием мейнстрима этот релиз не стал (как и вышедший незадолго сольник «Sonic Brew», который иногда причисляют к дискографии BLS).</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">После тура 1999—2001 годов, был издан концертный альбом&nbsp;<i>Alcohol Fueled Brewtality Live</i>. Во время записи альбома, Уайлд снялся в одной из главных ролей в фильме «<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%BE%D0%BA-%D0%B7%D0%B2%D0%B5%D0%B7%D0%B4%D0%B0\" title=\"Рок-звезда\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Рок-звезда</a>» вместе с&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%B6%D0%B5%D0%BD%D0%BD%D0%B8%D1%84%D0%B5%D1%80_%D0%AD%D0%BD%D0%B8%D1%81%D1%82%D0%BE%D0%BD\" class=\"mw-redirect\" title=\"Дженнифер Энистон\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Дженнифер Энистон</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BE%D0%BB%D0%B1%D0%B5%D1%80%D0%B3,_%D0%9C%D0%B0%D1%80%D0%BA\" title=\"Уолберг, Марк\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Марком Уолбергом</a>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">В 2002 году Уайлд записывает альбом&nbsp;<i>1919 Eternal</i>. В 19-м году родился дед Закка Уайлда, ветеран Второй мировой войны, которая и стала основной темой пластинки. Вокал Закка временами напоминал&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D1%81%D0%B5%D0%BB%D1%8C%D0%BC%D0%BE,_%D0%A4%D0%B8%D0%BB\" title=\"Ансельмо, Фил\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Фила Ансельмо</a>, солиста&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Pantera\" title=\"Pantera\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pantera</a>, а в звучании слышались отголоски музыки&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9E%D1%81%D0%B1%D0%BE%D1%80%D0%BD,_%D0%9E%D0%B7%D0%B7%D0%B8\" title=\"Осборн, Оззи\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Осборна</a>&nbsp;и поздних&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Metallica\" title=\"Metallica\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Metallica</a>. Кульминацией альбома стали треки «Life/Birth/Blood/Doom» и «Genocide Junkies», оригинальный ритм которых&nbsp;— всецело заслуга басиста Роберта Трухильо.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">К следующему альбому «Blessed Hellride», который вышел в 2003 году, гитарист продолжил эмансипацию от влияния старших коллег по метал-сцене. «Blessed Hellride»&nbsp;— первый альбом Black Label Society, попавший в американские чарты. 50-е место в рейтинге Billboard 200&nbsp;— большой шаг вперёд по сравнению с небольшими тиражами предыдущих дисков. «Stillborn»&nbsp;— самый успешный из всех синглов группы, который поднялся на 12 позицию рок-чарта.</p><div class=\"thumb tright\" style=\"clear: right; float: right; margin: 0.5em 0px 1.3em 1.4em; width: auto; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><div class=\"thumbinner\" style=\"border: 1px solid rgb(200, 204, 209); padding: 3px; background-color: rgb(248, 249, 250); font-size: 13.16px; text-align: center; overflow: hidden; width: 222px;\"><a href=\"https://commons.wikimedia.org/wiki/File:Zakk_Wylde_1145.JPG?uselang=ru\" class=\"image\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Zakk_Wylde_1145.JPG/220px-Zakk_Wylde_1145.JPG\" decoding=\"async\" width=\"220\" height=\"293\" class=\"thumbimage\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/9/90/Zakk_Wylde_1145.JPG/330px-Zakk_Wylde_1145.JPG 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/9/90/Zakk_Wylde_1145.JPG/440px-Zakk_Wylde_1145.JPG 2x\" data-file-width=\"1944\" data-file-height=\"2592\" style=\"border: 1px solid rgb(200, 204, 209); background-color: rgb(255, 255, 255);\"></a><div class=\"thumbcaption\" style=\"border: 0px; line-height: 1.4em; padding: 3px; font-size: 12.3704px; text-align: left;\"><div class=\"magnify\" style=\"float: right; margin-left: 3px; margin-right: 0px;\"><a href=\"https://ru.wikipedia.org/wiki/%D0%A4%D0%B0%D0%B9%D0%BB:Zakk_Wylde_1145.JPG\" class=\"internal\" title=\"Увеличить\" style=\"color: rgb(6, 69, 173); background-image: linear-gradient(transparent, transparent), url(&quot;/w/resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg?8330e&quot;); background-position-x: initial, initial; background-position-y: initial, initial; background-size: initial, initial; background-repeat: repeat, repeat; background-attachment: initial, initial; background-origin: initial, initial; background-clip: initial, initial; display: block; text-indent: 15px; white-space: nowrap; overflow: hidden; width: 15px; height: 11px; user-select: none;\"></a></div>Уайлд в 2005 году</div></div></div><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Для пятого альбома Black Label Society&nbsp;<i>Hangover Music, Vol. 6</i>&nbsp;(2004) фронтмен предпочёл акустический формат. Он сам играл на пианино и акустической гитаре, в ряде треков виртуозно использовав электрическую гитару. Балладу «Yesterday, Today, Tomorrow» Уайлд посвятил ушедшему из жизни лидеру Alice in Chains Лейну Стейли (Layne Staley). Им не раз приходилось вместе гастролировать, и Закк очень ценил юмор Лейна.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Black Label Society образца 2005 года&nbsp;— это, кроме Уайлда, бас-гитарист Джеймс ЛоМенцо (<a href=\"https://ru.wikipedia.org/wiki/James_LoMenzo\" class=\"mw-redirect\" title=\"James LoMenzo\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">James LoMenzo</a>), гитарист Ник Катанезе (Nick Catanese) и барабанщик Крейг Наненмахер (Craig Nunenmacher). Именно они записывали шестой лонг-плей «Mafia» (2005). Одна из двух акустических баллад на альбоме посвящена памяти погибшего гитариста Pantera&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%B0%D0%B9%D0%BC%D0%B1%D1%8D%D0%B3_%D0%94%D0%B0%D1%80%D1%80%D0%B5%D0%BB%D0%BB\" title=\"Даймбэг Даррелл\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Даррелла Эбботта (Darrell Abbott)</a>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Во время летнего тура 2005 года Уайлд играет одновременно в двух командах&nbsp;— Ozzy Osbourne Band и Black Label Society.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">При всей своей занятости и профессиональной непоседливости Закк Уайлд, единственное в своём роде исключение в метал-коммуне, находит время для своей семьи, которая занимает огромное место в его жизни, не менее важное, чем музыка. Он уже 18 лет женат на Барбаранне (Barbaranne), которую в шутку называет «моя Шарон» (так зовут жену Оззи Осборна) и которая не только родила ему троих детей, но и стала незаменимым помощником и отличным менеджером своего знаменитого мужа.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">В 2006 году выходит очередной студийный альбом BLS под названием&nbsp;<i>Shot to Hell</i>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">В начале 2010 года было объявлено о том, что Крейг Наненмахер покидает группу&nbsp;— его место за ударной установкой занял Уилл Хант (<a href=\"https://ru.wikipedia.org/wiki/Will_Hunt\" class=\"mw-redirect\" title=\"Will Hunt\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Will Hunt</a>), подписавший контракт на запись альбома и последующий тур. Летом Black Label Socety выпустили новый альбом&nbsp;<i>Order of the Black</i>, ознаменовавший собой возвращение Закка к старому звучанию более ранних альбомов.</p><div><br></div>', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><span style=\"font-weight: 700;\">Закк</span><span style=\"font-weight: 700;\">&nbsp;&nbsp;</span><span style=\"font-weight: 700;\">Уайлд</span>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">англ.</a>&nbsp;<span lang=\"en\" style=\"font-style: italic;\">Zakk Wylde</span>; настоящее имя&nbsp;—&nbsp;<span style=\"font-weight: 700;\">Дже́ффри Фи́ллип Ви́ландт</span>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Английский язык\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">англ.</a>&nbsp;<span lang=\"en\" style=\"font-style: italic;\">Jeffrey Phillip Wielandt</span>; род.&nbsp;<a href=\"https://ru.wikipedia.org/wiki/14_%D1%8F%D0%BD%D0%B2%D0%B0%D1%80%D1%8F\" title=\"14 января\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">14 января</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1967_%D0%B3%D0%BE%D0%B4\" title=\"1967 год\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1967</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B5%D0%B9%D0%BE%D0%BD%D0%BD\" title=\"Английский язык\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Бейонн</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D1%8C%D1%8E-%D0%94%D0%B6%D0%B5%D1%80%D1%81%D0%B8\" title=\"\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Нью-Джерси</a>)&nbsp;— американский рок-музыкант, гитарист-виртуоз<sup id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%B0%D0%BA%D0%BA_%D0%A3%D0%B0%D0%B9%D0%BB%D0%B4#cite_note-2\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>, вокалист, автор песен. Стал известен благодаря работе с&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9E%D1%81%D0%B1%D0%BE%D1%80%D0%BD,_%D0%9E%D0%B7%D0%B7%D0%B8\" title=\"Осборн, Оззи\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Оззи Осборном</a>. Позже основал свой собственный коллектив&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Black_Label_Society\" title=\"Black Label Society\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Black Label Society</a>, в котором играет и поныне. Он также являлся гитаристом и вокалистом группы&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Pride_%26_Glory\" class=\"mw-redirect\" title=\"Pride &amp; Glory\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Pride &amp; Glory</a>, выпустившей в 1994 году альбом и после распавшейся. Выпустил сольный альбом&nbsp;<i><a href=\"https://en.wikipedia.org/wiki/Book_of_Shadows_(album)\" class=\"extiw\" title=\"en:Book of Shadows (album)\" style=\"color: rgb(51, 102, 187); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Book of Shadows</a></i>&nbsp;<span class=\"ref-info\" title=\"на английском языке\" style=\"font-size: 11.9px; color: rgb(114, 119, 125); cursor: help;\">(англ.)</span>&nbsp;в 1996 году. В 2009 году журналом&nbsp;<i><a href=\"https://ru.wikipedia.org/wiki/Classic_Rock\" title=\"Classic Rock\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Classic Rock</a></i>&nbsp;включён в&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=100_%D0%B2%D0%B5%D0%BB%D0%B8%D1%87%D0%B0%D0%B9%D1%88%D0%B8%D1%85_%D0%B3%D0%B8%D1%82%D0%B0%D1%80%D0%B8%D1%81%D1%82%D0%BE%D0%B2_%D0%B2%D1%81%D0%B5%D1%85_%D0%B2%D1%80%D0%B5%D0%BC%D1%91%D0%BD_%D0%BF%D0%BE_%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D0%B8_Classic_Rock&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"100 величайших гитаристов всех времён по версии Classic Rock (страница отсутствует)\" style=\"color: rgb(186, 0, 0); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Список величайших гитаристов всех времён</a>.</p><div><br></div>', 'http://musicore/storage/photos/1/Гитары/sev_26blacklabel3.jpg', 'Guitar,Bio', 6, NULL, 1, 'active', '2021-06-04 03:00:35', '2021-06-20 06:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Guitar', 'guitar', 'active', '2021-06-03 12:01:44', '2021-06-03 12:01:44'),
(7, 'Bio', 'bio', 'active', '2021-06-20 06:57:52', '2021-06-20 06:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Guitar', 'guitar', 'active', '2021-06-03 12:01:57', '2021-06-03 12:01:57'),
(6, 'Bio', 'bio', 'active', '2021-06-20 06:57:36', '2021-06-20 06:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '1',
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '4/4',
  `condition` enum('default','new','hot') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(11, 'Электроакустическая гитара Maton EBG808TE, полностью массив (ель/клен)', 'elektroakusticeskaya-gitara-maton-ebg808te-polnostyu-massiv-elklen', '<p><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Легенда! гитара мечта! Самая знаменитая гитара из всей линейки Maton. Эталон для фингерстайла вне всякого сомнения. Именной инструмент у самого Томми Эммануэля.</span><br></p>', '<p><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Легенда! гитара мечта! Самая знаменитая гитара из всей линейки Maton. Эталон для фингерстайла вне всякого сомнения. Именной инструмент у самого Томми Эммануэля.</span><br style=\"margin: 0px; padding: 0px; border: none; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\"><br style=\"margin: 0px; padding: 0px; border: none; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\"><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Про ее идеальность можно рассказывать часами. Фантастически правильный баланс звучания между яркостью и мягкостью. В подключении звук едва отличим от звука Томми на сцене. Сбалансированный коктейль отборного дерева и лучшего звукосъема в мире для акустической гитары делает этот инструмент бескомпромиссным в первую очередь для игры пальцами. Но она не менее прекрасно ведет себя и при игре медиатором. Шедевр!</span><br></p>', 'http://musicore/storage/photos/1/2448bfef893280c9f8a500bdabaee056.jpg', 9, '1/4,4/4', 'default', 'active', 265000.00, 25.00, 1, 12, NULL, 9, '2021-06-03 10:49:05', '2021-06-10 03:09:02'),
(12, 'Burny RLG60 Vintage Lemon Drop', 'burny-rlg60-vintage-lemon-drop', '<p><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Эта гитара сразу навевает воспоминания о веселых и безумных 80-х, когда бунтарский дух&nbsp;&nbsp;и безумный, громкий рок-н-ролл были неотделимы друг от друга. Если appetite for destruction для вас не просто слова, а название культового альбома Guns N’Roses, если Слэш и по сей день остается для вас самым узнаваемым гитаристом даже со спины, то эта гитара для вас!</span><br></p>', '<p><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Эта гитара сразу навевает воспоминания о веселых и безумных 80-х, когда бунтарский дух&nbsp;&nbsp;и безумный, громкий рок-н-ролл были неотделимы друг от друга. Если appetite for destruction для вас не просто слова, а название культового альбома Guns N’Roses, если Слэш и по сей день остается для вас самым узнаваемым гитаристом даже со спины, то эта гитара для вас!</span><br style=\"margin: 0px; padding: 0px; border: none; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\"><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Включив её в усилитель – первое что хочется сделать – это вжарить пару жестких аккордов, потом запилить мелодичный соляк из крестного отца, замахнутся и разнести в щепки маршаловский стэк и, не доиграв финальную песню, удалиться в гримерку творить историю…</span><br style=\"margin: 0px; padding: 0px; border: none; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\"><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Тут всё по классике: красное дерево и кленовый топ, фанатично исполненная инкарнация американской легенды от японской компании Burny. Жирные флажолеты в духе Закка Вайлда и бесконечный сустейн как у Гари Мура – это все об этой незабываемой красотке.</span><br></p>', 'http://musicore/storage/photos/1/70c14f8b845cffa6c64d89939680fc74.jpeg', 54, '', 'new', 'active', 47999.00, 30.00, 1, 12, NULL, 7, '2021-06-03 10:51:03', '2021-06-10 03:09:03'),
(13, 'Gibson Burny RLG60 Vintage Cherry Sunburst', 'gibson-burny-rlg60-vintage-cherry-sunburst', '<p><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Эта гитара сразу навевает воспоминания о веселых и безумных 80-х, когда бунтарский дух&nbsp;&nbsp;и безумный, громкий рок-н-ролл были неотделимы друг от друга. Если appetite for destruction для вас не просто слова, а название культового альбома Guns N’Roses, если Слэш и по сей день остается для вас самым узнаваемым гитаристом даже со спины, то эта гитара для вас!</span><br></p>', '<p><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Включив её в усилитель – первое что хочется сделать – это вжарить пару жестких аккордов, потом запилить мелодичный соляк из крестного отца, замахнутся и разнести в щепки маршаловский стэк и, не доиграв финальную песню, удалиться в гримерку творить историю…</span><br style=\"margin: 0px; padding: 0px; border: none; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\"><br style=\"margin: 0px; padding: 0px; border: none; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\"><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Тут всё по классике: красное дерево и кленовый топ, фанатично исполненная инкарнация американской легенды от японской компании Burny. Жирные флажолеты в духе Закка Вайлда и бесконечный сустейн как у Гари Мура – это все об этой незабываемой красотке.</span><br></p>', 'http://musicore/storage/photos/1/8025b78cf92aa030df09c2edf86eae8a.jpg', 4, '', 'hot', 'active', 49500.00, 0.00, 1, 12, 16, 7, '2021-06-03 10:52:23', '2021-06-04 08:46:00'),
(14, 'Электроакустическая гитара Maton PERFORMER, полностью массив (сосна/клен)', 'elektroakusticeskaya-gitara-maton-performer-polnostyu-massiv-sosnaklen', '<p class=\" m_bottom_14 color_grey\" style=\"margin-right: 0px; margin-bottom: 14px; margin-left: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Самый доступный фолк в фирменном корпусе 808 с легендарным звукоснимателем AP5 Pro. Эта модель отличается от своих собратьев нестандартной узкой обечайкой, чтобы гитара ощущалась комфортнее. Для компенсации полноценного звучания, в модели Performer на верхней деке установлена Австралийская сосна, которая дает более мощное, громкое звучание. Кому широкая обечейка неудобна - для вас!</p><div class=\"product_options m_bottom_20 \" style=\"margin: 0px 0px 20px; padding: 0px 19px; border: 1px solid rgb(240, 240, 242); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\"><footer class=\"bg_grey_light_2\" style=\"margin: 0px -19px; padding: 12px 20px 19px; border: 0px; background: rgb(249, 249, 250); font-weight: inherit; outline: 0px; vertical-align: top;\"><div class=\"fs_big second_font m_bottom_17\" style=\"margin: 0px 0px 17px; padding: 0px; border: 0px; background: transparent; font-weight: inherit; outline: 0px; vertical-align: top; font-family: Scada, sans-serif; font-size: 1.4em;\"></div></footer></div>', '<p class=\" m_bottom_14 color_grey\" style=\"margin-right: 0px; margin-bottom: 14px; margin-left: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Самый доступный фолк в фирменном корпусе 808 с легендарным звукоснимателем AP5 Pro. Эта модель отличается от своих собратьев нестандартной узкой обечайкой, чтобы гитара ощущалась комфортнее. Для компенсации полноценного звучания, в модели Performer на верхней деке установлена Австралийская сосна, которая дает более мощное, громкое звучание. Кому широкая обечейка неудобна - для вас!</p><div class=\"product_options m_bottom_20 \" style=\"margin: 0px 0px 20px; padding: 0px 19px; border: 1px solid rgb(240, 240, 242); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\"><footer class=\"bg_grey_light_2\" style=\"margin: 0px -19px; padding: 12px 20px 19px; border: 0px; background: rgb(249, 249, 250); font-weight: inherit; outline: 0px; vertical-align: top;\"><div class=\"fs_big second_font m_bottom_17\" style=\"margin: 0px 0px 17px; padding: 0px; border: 0px; background: transparent; font-weight: inherit; outline: 0px; vertical-align: top; font-family: Scada, sans-serif; font-size: 1.4em;\"></div></footer></div>', 'http://musicore/storage/photos/1/f8868b5e4088943d8c8e27f183cff785.jpg', 65, '', 'new', 'active', 176000.00, 5.00, 1, 12, 15, 9, '2021-06-03 10:53:52', '2021-06-03 10:53:52'),
(15, 'TAMA SG52KH6-BK STAGESTAR', 'tama-sg52kh6-bk-stagestar', '<p><noindex style=\"box-sizing: border-box; color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></noindex></p><div itemprop=\"description\" style=\"box-sizing: border-box; color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\">TAMA SG52KH6-BK STAGESTAR - это ударная установка из 5 барабанов. Цвет барабанов черный. &nbsp;Ударные установки Stagestar – это отличное сочетание качества и цены, что делает их идеальным выбором для начинающих музыкантов, которые хотят получить хороший инструмент за небольшие деньги.</p></div>', '<p><noindex style=\"box-sizing: border-box; color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></noindex></p><div itemprop=\"description\" style=\"box-sizing: border-box; color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\">TAMA SG52KH6-BK STAGESTAR - это ударная установка из 5 барабанов. Цвет барабанов черный. &nbsp;Ударные установки Stagestar – это отличное сочетание качества и цены, что делает их идеальным выбором для начинающих музыкантов, которые хотят получить хороший инструмент за небольшие деньги. Материал обечайки – 6-слойный тополь. Комплект состоит из следующих барабанов: &nbsp;бас-бочка 16\" х 22\", томы 7\" x 10\" и 8\" х 12\", напольный том - 15\" х 16\", малый барабан 5,5\" х 14\". Кроме этого комплект включает в себя стойку для хай-хэта, наклонную стойку под тарелку, прямую стойку под тарелку, стойку под малый барабан, стул для барабанщика и педаль для бас-бочки.</p></div>', 'http://musicore/storage/photos/1/raychan-2m06ystc2d4-unsplash.jpg', 10, '', 'hot', 'active', 59000.00, 10.00, 1, 14, NULL, 12, '2021-06-04 02:37:27', '2021-06-04 02:41:53'),
(16, 'Электрогитара Fender Player Telecaster Butterscotch Blonde, с корпусом из ольхи', 'elektrogitara-fender-player-telecaster-butterscotch-blonde-s-korpusom-iz-olxi', '<p><span style=\"color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Бережно пронесённый через года классический дизайн гитары - первооткрывателя рок-н-ролла. Такая, какой её задумал Лео Фендер и в очень качественном исполнении, как и прочие гитары серии Player.</span><br></p>', '<p class=\" m_bottom_14 color_grey\" style=\"margin-right: 0px; margin-bottom: 14px; margin-left: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Бережно пронесённый через года классический дизайн гитары - первооткрывателя рок-н-ролла. Такая, какой её задумал Лео Фендер и в очень качественном исполнении, как и прочие гитары серии Player. По сравнению с классическим дизайном телекастера - тут несколько отличий: более удобный бридж, обновлённый профиль грифа - тонкий С-образный и ольховый корпус, который сохраняет легендарный \"твэнг\" и то же время даёт более бархатистую окраску звучания, не такую радикально кричащую, как ясень, делая её звучание умесным не только в раннем роке, но и в гранже, в альтернативной музыке, в том числе и в разнообразных пониженных строях благодаря исключительной читаемости</p>', 'http://musicore/storage/photos/1/9ec75b59aaa78b323eae771ba87f0832.jpg', 4, '', 'new', 'active', 80999.00, NULL, 1, 12, 16, 10, '2021-06-04 02:44:29', '2021-06-10 03:17:56'),
(17, 'CASIO WK-6600', 'casio-wk-6600', '<p><span style=\"color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px;\">Цифровой синтезатор&nbsp;</span><strong style=\"color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px;\">CASIO WK 6600</strong><span style=\"color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;является новинкой в серии недорогих синтезаторов, который был представлен компанией CASIO на ежегодной музыкальной выставке SUMMER NAMM 2012, где получил достаточно высокие отзывы. Отличительными особенностями цифрового синтезатора КАСИО ВК 6600 является качественный тон-генератор и встроенный набор цифровых эффектов, которыми Вы можете управлять в режиме реального времени.</span><br style=\"color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px;\"></p>', '<p><noindex style=\"box-sizing: border-box; color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></noindex></p><div itemprop=\"description\" style=\"box-sizing: border-box; outline: 0px; color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\">Цифровой синтезатор<span>&nbsp;</span><strong style=\"box-sizing: border-box;\">CASIO WK 6600</strong><span>&nbsp;</span>является новинкой в серии недорогих синтезаторов, который был представлен компанией CASIO на ежегодной музыкальной выставке SUMMER NAMM 2012, где получил достаточно высокие отзывы. Отличительными особенностями цифрового синтезатора КАСИО ВК 6600 является качественный тон-генератор и встроенный набор цифровых эффектов, которыми Вы можете управлять в режиме реального времени.<br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">Синтезатор оснащен фортепианной клавиатурой и полувзвешенной механикой. 48-ми нотная полифония и 16-трековый песенный секвенсор позволит Вам создавать красивые, качественного звучащие, оригинальные музыкальные композиции, где бы Вы не находились!<br style=\"box-sizing: border-box;\">&nbsp;</p><h3 style=\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 1.1; color: inherit; margin: 0px 0px 10px; font-size: 20px; padding: 0px; font-style: inherit;\">Уникальные особенности цифрового синтезатора CASIO WK-6600</h3><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">- Качественная фортепианная клавиатура, в сочетании с полувзвешенной механикой, делают игру насыщенной и живой, как на настоящем, живом пиано.<br style=\"box-sizing: border-box;\">- Высокое качество полифонии, включающее 48 голосов.<br style=\"box-sizing: border-box;\">- Встроенный секвенсор, с возможностью записи 16-ти треков.<br style=\"box-sizing: border-box;\">- Встроенный, 32(х)-канальный микшер, для более тонкой настройки звучания музыканта.<br style=\"box-sizing: border-box;\">- Возможность использования карт, стандарта SDHC и SD, для хранения до 32 Гб информации.<br style=\"box-sizing: border-box;\">- порядка 700 встроенных инструментов, с возможностью редакции и сохранения.<br style=\"box-sizing: border-box;\">- Десять ячеек для пользовательских пресетов и создания своих треков.<br style=\"box-sizing: border-box;\">&nbsp;</p><h3 style=\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 1.1; color: inherit; margin: 0px 0px 10px; font-size: 20px; padding: 0px; font-style: inherit;\">Фортепианная клавиатура, полувзвешенная механика и 48-ми нотная полифония синтезатора WK-6600</h3><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">Клавиатура синтезатора обладает чувствительностью к нажатию, а так же имеет фортепианную форму, как на классическом инструменте. Такой тип полувзвешенной механики максимально близко приближает музыканта к ощущениям игры, как на акустическом инструменте. Полифония синтезатора в 48 нот, она позволяет воспроизводить звучание в естественной акустической длительности. Если Вы играете с аккомпанементом, будьте уверены, что Ваш музыкальный рисунок всегда будет насыщенным и чётким.<br style=\"box-sizing: border-box;\">&nbsp;</p><h3 style=\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 1.1; color: inherit; margin: 0px 0px 10px; font-size: 20px; padding: 0px; font-style: inherit;\">Многофункциональный эквалайзер и функциональный тон-редактор (Tone Editor)</h3><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">При помощи встроенного эквалайзера, Вы всегда сможете подчеркнуть звучание именно Ваших композиций. Для этого в Вашем распоряжении есть возможности частотных характеристик пяти типов, которых достаточно для большинства музыкальных стилей. Используя функциональные кнопки - Tone Editor, Вы можете свободно настраивать время атаки и другие временные параметры эффектов, отсечку, эффекты вибрато и реверберации, хорус и DSP эффекты. Блок эффектов позволяет музыкантам создавать свое оригинальное звучание, с возможностью последующего редактирования и прослушивания.<br style=\"box-sizing: border-box;\">&nbsp;</p><h3 style=\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 1.1; color: inherit; margin: 0px 0px 10px; font-size: 20px; padding: 0px; font-style: inherit;\">Автоматический арпеджиатор и ритм редактор синтезатора CASIO WK-6600</h3><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">Для работы с арпеджиатором Вам нужно просто нажать и удерживать клавишу на клавиатуре. Арпеджиатор, с автоматическим воспроизведением фраз даст Вам возможность использования разнообразных арпеджио. 150 встроенных в арпеджиатор фраз, значительно увеличивают степень уникального и свободного воспроизведения музыки. Так же, Вы можете создавать свой собственный и оригинальный ритм, изменяя тембр, громкость и панораму, используя реверберацию для каждого инструмента. Создавайте свой собственный, оригинальный ритм, который придаст Вам неповторимое звучание.<br style=\"box-sizing: border-box;\">&nbsp;</p><h3 style=\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 1.1; color: inherit; margin: 0px 0px 10px; font-size: 20px; padding: 0px; font-style: inherit;\">Песенный секвенсор и 32(х)-канальный микшер цифрового синтезатора WK-6600</h3><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">Синтезатор оснащен 16(ти)-трековым секвенсором. Память синтезатора позволит Вам записать до 5-ти песен, или же один трек до12000 нот. Вы можете остановить запись и продолжить её написание позже, с возможностью последующего редактирования, удаления, копирования и вставки раздела события. Встроенный, 32-канальный микшер содержит 16 инструментальных дорожек, включающих авто-аккомпанемент, а так же 16 дорожек для секвенсора. При участии микшера, Вы можете настроить уровень громкости, панораму, эффект реверберации, а так же другие опции эффектов для каждого канала отдельно. Синтезатор дает возможность интегрировать звуки из других внешних источников.<br style=\"box-sizing: border-box;\">&nbsp;</p><h3 style=\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 1.1; color: inherit; margin: 0px 0px 10px; font-size: 20px; padding: 0px; font-style: inherit;\">Автоматический автоаккомпонемент, ЖК дисплей и качественная акустическая система (Bass Reflex)</h3><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">Функция автоаккомпонемента синтезатора дает возможность самостоятельно выбирать музыкальные стили, от рока и джаза, до классических музыкальных стилей. Автоаккомпонемент содержит 210 встроенных ритмов, позволяющих играть в широком музыкальном диапазоне.<br style=\"box-sizing: border-box;\">Яркий и четкий ЖК дисплей отображает выбранные ритмы и ноты, а так-же, задействованные Вами музыкальные инструменты в режиме реального времени. Синтезатор оснащен двух-полосной акустической системой Bass Reflex, с 4-мя динамиками и общей мощностью в 12 Ватт, выдающее насыщенное и гармоничное звучание.<br style=\"box-sizing: border-box;\">&nbsp;</p><h3 style=\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 1.1; color: inherit; margin: 0px 0px 10px; font-size: 20px; padding: 0px; font-style: inherit;\">Двухсторонняя коммутация с компьютером через USB порт</h3><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">Для взаимодействия и интеграции с ПК или ноутбуком, Вы можете воспользоваться USB портом, посредством которого Вам доступна возможность легко переносить данные синтезатора в память компьютера и наоборот.<br style=\"box-sizing: border-box;\">&nbsp;</p><h3 style=\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 1.1; color: inherit; margin: 0px 0px 10px; font-size: 20px; padding: 0px; font-style: inherit;\">Технические характеристики синтезатора CASIO WK-6600</h3><p style=\"box-sizing: border-box; margin: 0px 0px 12px; outline: 0px; font-size: 14px;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">Тип инструмента : синтезатор цифровой.<br style=\"box-sizing: border-box;\">Тип клавиатуры : 76 клавиш.<br style=\"box-sizing: border-box;\">Динамическая чувствительность : есть, 2 типа, отключаемая.<br style=\"box-sizing: border-box;\">Полифония синтезатора : 48 нот (одновременное звучание).<br style=\"box-sizing: border-box;\">Особенности темброблока :<br style=\"box-sizing: border-box;\">- Встроенные тембры : 700 тембров;<br style=\"box-sizing: border-box;\">- Пользовательские тембры : создание 10 тембров, сохранение, редактирование.<br style=\"box-sizing: border-box;\">Музыкальные пресеты : 305 (встроенные), 50 (пользовательские).<br style=\"box-sizing: border-box;\">Автогармонизация : 12 типов.<br style=\"box-sizing: border-box;\">Автоматический арпеджиатор : 150 музыкальных типов.<br style=\"box-sizing: border-box;\">Эквалайзер : 5 готовых пресетов.<br style=\"box-sizing: border-box;\">MIDI коммутация : прием по 16 каналам стандарта GM, уровень 1.<br style=\"box-sizing: border-box;\">Функции SPLIT\\DUAL : есть.<br style=\"box-sizing: border-box;\">Блок цифровых эффектов :<br style=\"box-sizing: border-box;\">- Эффекты реверберации : 1—10, возможность отключения;<br style=\"box-sizing: border-box;\">- Эффекты хоруса : 1—5, возможность отключения;<br style=\"box-sizing: border-box;\">- Эффекты ЦОС : предустановленные – 100, пользовательские - до 100.<br style=\"box-sizing: border-box;\">Метроном : есть, от 0, 2 до 6 ударов в такт, диапазон от 30 до 255.<br style=\"box-sizing: border-box;\">Автоаккомпонемент : есть, встроенные стили – 210, пользовательские стили - до 10.<br style=\"box-sizing: border-box;\">Демо. композиции : 5 типов.<br style=\"box-sizing: border-box;\">Память синтезатора : 32 набора настроек, 8 типов банков по 4 пресета.<br style=\"box-sizing: border-box;\">Функции секвенсора :<br style=\"box-sizing: border-box;\">- Запись и воспроизведение в реальном времени;<br style=\"box-sizing: border-box;\">- Пять типов композиций, 17 дорожек;<br style=\"box-sizing: border-box;\">- Память : 12 тысяч нот, 5 композиций.<br style=\"box-sizing: border-box;\">Особенности микшера : 32 партии, «MASTER» параметры, «DSP» параметры, параметры партий и параметры «MIC».<br style=\"box-sizing: border-box;\">Функции транспонирования : ±1 октавы, от –12 до +12 полутонов.<br style=\"box-sizing: border-box;\">Октавный сдвиг : вверх на октаву (UPPER 1), вверх на 2 октавы (UPPER 2), понижение (LOWER), ±2 октавы.<br style=\"box-sizing: border-box;\">Карты памяти : карты SD и SDHC, не более 32 Гбайт.<br style=\"box-sizing: border-box;\">Тип файлов : SMF файлы, хранение, загрузка, удаление.<br style=\"box-sizing: border-box;\">Разъемы коммутации :<br style=\"box-sizing: border-box;\">- Разъем USB : есть, тип «B»;<br style=\"box-sizing: border-box;\">- Разъем для педали : сустейн, состенуто, модератор - запуск и остановка (TRS 1/4\" JACK);<br style=\"box-sizing: border-box;\">- Разъем для наушников : стерео (TRS 1/4\" JACK);<br style=\"box-sizing: border-box;\">- Line Out R\\L MONO : инструментальный линейный выход (2 х TRS 1/4\" JACK);<br style=\"box-sizing: border-box;\">- Разъем входа стерео мини джека;<br style=\"box-sizing: border-box;\">- MIC IN : подключение микрофона (TRS 1/4\" JACK);<br style=\"box-sizing: border-box;\">- Разъем для адаптера питания : 12 В пост. ток.<br style=\"box-sizing: border-box;\">Питание синтезатора : шесть батарей (тип «D», порядка 4-х часов), адаптер питания (AD-A12150LW) в комплекте поставки.<br style=\"box-sizing: border-box;\">Функция автовыключения : 6 мин. ожидания т после последнего нажатия на клавиши (от батарей), 4 часа (от блока питания).<br style=\"box-sizing: border-box;\">Акустическая система : 2 х 6 Ватт, диаметр 12 см и 3 см.<br style=\"box-sizing: border-box;\">Габариты синтезатора : 116,1 см.</p></div>', 'http://musicore/storage/photos/1/Клавишные/leonardo-zorzi-4rZCQIqjS0U-unsplash.jpg', 13, '', 'hot', 'active', 37990.00, 30.00, 1, 13, NULL, 11, '2021-06-04 02:48:04', '2021-06-10 03:16:17'),
(18, 'TAMA WBS42S-TMF STARCLASSIC WALNUT/BIRCH', 'tama-wbs42s-tmf-starclassic-walnutbirch', '<p style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; outline: 0px; font-size: 14px; color: rgb(76, 76, 76); font-family: Roboto, sans-serif;\">Эволюция барабанов Starclassic началась с клена и березы, затем появились бубинговые барабаны, и даже гибридные варианты (береза\\бубинга). И теперь, после долгих исследований, тщательного анализа и бесчисленных тестирований продукта – мы разработали совершенно новую модель – Starclassic Walnut/Birch (Орех/Береза)</p><div><br></div>', '<p><noindex style=\"box-sizing: border-box; color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></noindex></p><div itemprop=\"description\" style=\"box-sizing: border-box; outline: 0px; color: rgb(76, 76, 76); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\">Эволюция барабанов Starclassic началась с клена и березы, затем появились бубинговые барабаны, и даже гибридные варианты (береза\\бубинга). И теперь, после долгих исследований, тщательного анализа и бесчисленных тестирований продукта – мы разработали совершенно новую модель – Starclassic Walnut/Birch (Орех/Береза)</p><p style=\"box-sizing: border-box; margin: 0px 0px 12px; font-size: 14px;\">Характеристики:</p><ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; outline: 0px; font-size: 14px;\"><li style=\"box-sizing: border-box;\">Размеры: бас-барабан 16\"x22\", навесной том 8\"x10\", навесной том 9\"x12\", напольный том 14\"x16\"</li><li style=\"box-sizing: border-box;\">Материалы: навесные томы, напольный том, малый барабан: 4-слойная береза + 2 внутренних слоя Американского черного ореха, 6мм, бас-барабан: 5-слойная береза + 2 внутренних слоя Американского черного ореха, 8мм.</li><li style=\"box-sizing: border-box;\">Том-холдер: MTH1000</li><li style=\"box-sizing: border-box;\">Система крепления тома: Star-Cast для увеличения резонанса, возможность расположить томы очень близко друг к другу, алюминиевые крепления облегчают конструкцию и лучше передают вибрации корпуса, зажимы Quick-Lock избавляют от необходимости в фиксаторах, снижают уровень вибрации, усиливают резонанс барабана</li><li style=\"box-sizing: border-box;\">Обручи: Die-cast, цинковые литые</li><li style=\"box-sizing: border-box;\">Пластики: навесной и напольные томы – EVANS G2 2-слойные прозрачные (верхние), TAMA Power Craft II однослойные прозрачные (нижние), бас-барабан – EVANS Genera EQ4 прозрачный</li><li style=\"box-sizing: border-box;\">Ножки бас-барабана: Air Pocket на воздушной подушке, устраняют передачу вибрации на поверхность пола, продлевают сустейн.</li><li style=\"box-sizing: border-box;\">Фиксатор ножек бас-барабана: MSB30, литой кронштейн с шарнирным механизмом.</li><li style=\"box-sizing: border-box;\">Цвет: Transparent Mocha Fade (Темный прозрачный мокко)</li><li style=\"box-sizing: border-box;\">Покрытие: Лак</li><li style=\"box-sizing: border-box; outline: 0px;\">Цвет фурнитуры: Хром</li></ul></div>', 'http://musicore/storage/photos/1/Ударные/silviu-beniamin-tofan-x7YZLcXeRlM-unsplash.jpg', 33, '', 'hot', 'active', 203000.00, 10.00, 1, 14, NULL, 12, '2021-06-04 02:54:06', '2021-06-10 03:18:12'),
(19, 'Электрогитара Music Man Axis Super Sport, Natural Flame, с кейсом', 'elektrogitara-music-man-axis-super-sport-natural-flame-s-keisom', '<p class=\" m_bottom_14 color_grey\" style=\"margin-right: 0px; margin-bottom: 14px; margin-left: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Сперва Axis сражает наповал удобством - легкая, сбалансированная, с кленовым грифом, не покрытым лаком и облегающим руку как вельветовая перчатка. Затем, универсальным звучанием - певучим и мелодичным, рождающим мягкий сладкий блюз на легком перегрузе. И в то же время, в кастомных звукоснимателях Dimarzio столько панча, что можно прокачать самый лютый усилитель. Только посмотрите что на ней вытворяет Eddie Van Halen! Так что, если вы ценитель американского саунда, то эта красотка для вас!</p>', '<p class=\" m_bottom_14 color_grey\" style=\"margin-right: 0px; margin-bottom: 14px; margin-left: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(34, 34, 38); font-family: Arimo, sans-serif; font-size: 14px;\">Сперва Axis сражает наповал удобством - легкая, сбалансированная, с кленовым грифом, не покрытым лаком и облегающим руку как вельветовая перчатка. Затем, универсальным звучанием - певучим и мелодичным, рождающим мягкий сладкий блюз на легком перегрузе. И в то же время, в кастомных звукоснимателях Dimarzio столько панча, что можно прокачать самый лютый усилитель. Только посмотрите что на ней вытворяет Eddie Van Halen! Так что, если вы ценитель американского саунда, то эта красотка для вас!</p>', 'http://musicore/storage/photos/1/Гитары/795742336100dea933ee508cf7eb1fe9.jpg', 34, '', 'new', 'active', 250000.00, 10.00, 1, 12, 16, 8, '2021-06-07 06:49:27', '2021-06-22 08:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `rate` tinyint NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(5, 2, 14, 5, 'Отличный магазин. Сделал заказ,быстро перезвонили,оплатил заказ. Доставили уже через пару часов. Насчёт гитары, отлична для новичка, всё качественно упаковано, настроено, доведено до ума. Спасибо за вашу работу.', 'active', '2021-06-07 03:55:40', '2021-06-07 03:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-family: Roboto, sans-serif; font-size: 14px;\">MusicCore — лидер рынка розничной продажи музыкальных инструментов в России. Наши магазины предлагают лучшие музыкальные инструменты, созданные мировыми производителями<br></p>', '<font face=\"Roboto, sans-serif\"><span style=\"font-size: 14px;\">MusicCore — лидер рынка розничной продажи музыкальных инструментов в России. Наши магазины предлагают лучшие музыкальные инструменты, созданные мировыми производителями</span></font><br>', 'http://musicore/storage/photos/1/Screenshot_2.png', 'http://musicore/storage/photos/1/River.jpg', 'Russia, Chelyabinsk, Savina 18', '+7 951 435 31 35', 'vovandoz@mail.ru', NULL, '2021-06-07 06:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(5, 'CDEK', '3000.00', 'active', '2021-06-03 10:43:56', '2021-06-04 06:34:00'),
(6, 'Почта России', '2500.00', 'active', '2021-06-03 10:44:03', '2021-06-04 06:34:11'),
(9, 'Почта', '0.00', 'active', '2021-06-09 04:27:18', '2021-06-09 04:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vladimir', 'admin@gmail.com', NULL, '$2y$10$GOGIJdzJydYJ5nAZ42iZNO3IL1fdvXoSPdUOH3Ajy5hRmi0xBmTzm', 'http://musicore//storage/photos/1/0679c1850f82c4904b84810b1bc4c23054dba5db.jpg@2000w_1e.jpg', 'admin', NULL, NULL, 'active', 'TuUHwcRUDVoEacGjfIxqsKU9LfvmkUAriSvgw1sc8uehUy1tIgnzZKGZBUeh', NULL, '2021-06-06 09:10:04'),
(2, 'Владимир', 'user@gmail.com', NULL, '$2y$10$10jB2lupSfvAUfocjguzSeN95LkwgZJUM7aQBdb2Op7XzJ.BhNoHq', 'http://musicore/imgfile/photos/2/0679c1850f82c4904b84810b1bc4c23054dba5db.jpg@2000w_1e.jpg', 'user', NULL, NULL, 'active', NULL, NULL, '2021-06-18 08:58:39'),
(32, 'dasdasdsa', 'dasda@asdas.sdasd', NULL, '$2y$10$p3ElbCDtwNPogrFVKSZyMeyodmHEwfqoBW0.anYx8aVqcecL0QYBy', NULL, 'user', NULL, NULL, 'active', NULL, '2021-06-07 03:17:35', '2021-06-07 03:17:35'),
(34, 'фывфвффв', 'asddsa@asd.asd', NULL, '$2y$10$RA3gRn7qYUC/pwJ1G4kkDu63zdiDELDwM/TPOKm0F.aDMYmp6fXC6', NULL, 'user', NULL, NULL, 'active', NULL, '2021-06-18 09:01:48', '2021-06-18 09:01:48'),
(35, 'Adadas', 'asdasd@asd.asd', NULL, '$2y$10$bvAEuaq3LSxy4cWXkIdrw.h6v2nn601ObiSplwUSmw0qFD3wMS.Oa', NULL, 'user', NULL, NULL, 'active', NULL, '2021-06-22 01:39:10', '2021-06-22 01:39:10'),
(36, 'asdasdasdas', 'asdas@asd.sda', NULL, '$2y$10$FOvaR4gkAzEJUUVUpBCvWuOrXwMiaLB1EJcAa5CRA.744IrBMWdzO', NULL, 'user', NULL, NULL, 'active', NULL, '2021-06-22 01:47:59', '2021-06-22 01:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
