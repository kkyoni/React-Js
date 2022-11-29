-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 05, 2022 at 12:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sed do eiusmod tem ut', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog1.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(2, 'Labore et magna qua', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog2.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(3, 'Ut enim ad minim veniam', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog3.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(4, 'Sed do eiusmod tem ut', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog4.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(5, 'Labore et magna qua', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog5.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(6, 'Ut enim ad minim veniam', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog6.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(7, 'Sed do eiusmod tem ut', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog7.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(8, 'Labore et magna qua', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog8.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(9, 'Sed do eiusmod tem ut', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog9.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(10, 'Labore et magna qua', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog10.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(11, 'Ut enim ad minim veniam', 'Fusce rutrum quam a ultrices rhoncus. Nulla eu ipsum tempus est et vitae nulla empus estsuscipit et dolor amet.', 'blog11.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `quantity`, `price`, `total_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '2', '1', '1200', '1200', '2022-08-04 13:04:24', '2022-08-03 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New Sale', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(2, 'New Brand', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(3, 'Best Sale', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'about_us', 'Infusion Analysts is a Technology/Data driven Web and Software Development Company. We as Infusion Analysts is one of the colonist software solution partners working with Assured Reliability. Infusion Analysts is an offshore Company having expertise in Enterprise Solutions, Web Development, Mobile Development, UI/UX Design Technologies having headquarters at India. Infusion Analysts is established with aim of providing smarter digital solutions to business by a group of young technocrats.We have expertise in developing Enterprise Solutions, Web Development, Mobile Development, UI/UX Design Technologies etc. We provide services to Startups, Small, Medium and Large Scale Enterprises. We have team of 40+ Developers having expertise in different technologies. We have served our services across the Globe and have delivered 92+ Projects successfully. We provide Solutions to the clients at reasonable price.We are Committed to Client amuse, which we accomplished through uncommon administration and superb nature of work.The stamp of our Unwavering quality is reflected in every method we pursue and in the outputs we deliver. Our Clients have been able to implement their ideas into reality with help of our consultants bringing IT and their business in sync. With help of our IT solutions, we help our clients to implement their strategies and achieve more.', 'active', '2022-02-18 03:42:18', '2022-08-04 03:15:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `email`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, '2022-02-21 06:07:48', '2022-08-04 03:15:47', '2022-08-04 03:15:47');

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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'What is nulla eu ipsum tempus est suscipit et vitae nulla?', 'Nulla eu ipsum tempus est suscipit et vitae nulla. Once autet.Fusce rutrum quam a ultrices amet rhoncus. Nulla eu ipsum tempus est suscipit et vitae nulla.Once aute irure dolor.', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(2, 'How much tempus est suscipit et vitae nulla?', 'Nulla eu ipsum tempus est suscipit et vitae nulla. Once autet.Fusce rutrum quam a ultrices amet rhoncus. Nulla eu ipsum tempus est suscipit et vitae nulla.Once aute irure dolor.', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(3, 'What happens if ipsum tempus est suscipit et vitae?', 'Nulla eu ipsum tempus est suscipit et vitae nulla. Once autet.Fusce rutrum quam a ultrices amet rhoncus. Nulla eu ipsum tempus est suscipit et vitae nulla.Once aute irure dolor.', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(4, 'What is nulla eu ipsum tempus est suscipit et vitae nulla?', 'Nulla eu ipsum tempus est suscipit et vitae nulla. Once autet.Fusce rutrum quam a ultrices amet rhoncus. Nulla eu ipsum tempus est suscipit et vitae nulla.Once aute irure dolor.', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(5, 'How much tempus est suscipit et vitae nulla?', 'Nulla eu ipsum tempus est suscipit et vitae nulla. Once autet.Fusce rutrum quam a ultrices amet rhoncus. Nulla eu ipsum tempus est suscipit et vitae nulla.Once aute irure dolor.', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(6, 'What happens if ipsum tempus est suscipit et vitae?', 'Nulla eu ipsum tempus est suscipit et vitae nulla. Once autet.Fusce rutrum quam a ultrices amet rhoncus. Nulla eu ipsum tempus est suscipit et vitae nulla.Once aute irure dolor.', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '1659685177.png', '2022-08-05 02:09:37', '2022-08-05 02:09:37'),
(2, 'dMcgvwGpw6.png', '2022-08-05 02:17:03', '2022-08-05 02:17:03'),
(3, 'Qwqx0FPZ8w.png', '2022-08-05 02:17:33', '2022-08-05 02:17:33'),
(4, '7nUvKkM4fI.png', '2022-08-05 02:34:44', '2022-08-05 02:34:44'),
(5, 'LRwPxB65mf.png', '2022-08-05 02:36:31', '2022-08-05 02:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_settings_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_25_112955_create_slider_table', 1),
(7, '2022_01_25_112958_create_product_table', 1),
(8, '2022_01_25_113000_create_faq_table', 1),
(9, '2022_01_25_113001_create_contact_table', 1),
(10, '2022_01_25_113002_create_cms_table', 1),
(11, '2022_01_25_113003_create_category_table', 1),
(12, '2022_01_25_113004_create_cart_table', 1),
(13, '2022_01_25_113010_create_blog_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `image`, `sub_title`, `price`, `description`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Quis sno stru', '8.jpg', 'En el valle, la vivienda en la vigilancia específica', '67.98', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam', 'Black', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(2, '2', 'Utt enim ad', '7.jpg', 'En el valle, la vivienda en la vigilancia específica', '130.99', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam', 'Blue', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(3, '3', 'Dolo re magna', '6.jpg', 'En el valle, la vivienda en la vigilancia específica', '25.37', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam', 'White', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(4, '3', 'Labo re eet', '5.jpg', 'En el valle, la vivienda en la vigilancia específica', '36.45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam', 'Green', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(5, '3', 'Incid idunt ut', '4.jpg', 'En el valle, la vivienda en la vigilancia específica', '119.78', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam', 'White & Black', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(6, '3', 'Sed do eeiu', '3.jpg', 'En el valle, la vivienda en la vigilancia específica', '14.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam', 'Red', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(7, '2', 'Conse ctet ad', '2.jpg', 'En el valle, la vivienda en la vigilancia específica', '139.45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam', 'Yellow', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(8, '1', 'Dolor sit am', '1.jpg', 'En el valle, la vivienda en la vigilancia específica', '36.80', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam', 'Black', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('BOOLEAN','NUMBER','DATE','TEXT','SELECT','FILE','TEXTAREA') COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `code`, `type`, `label`, `value`, `hidden`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'site_logo', 'FILE', 'Site Logo', 'site_logo.png', 0, '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(2, 'project_title', 'TEXT', 'Project Title', 'Project Title', 0, '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(3, 'favicon_logo', 'FILE', 'Favicon Logo', 'favicon.ico', 0, '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(4, 'copyright', 'TEXT', 'Copy Right', 'Inspinia we app framework base on Bootstrap 3', 0, '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(5, 'thankyou', 'TEXT', 'Thank You', 'The Infusion Analysts Team', 0, '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `sub_title`, `description`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Community Center', 'There is no power for change greater than a community', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur hicodio voluptatem tenetur consequatur.', 'slider1.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(2, 'Community Center', 'Become the change you want to see', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur hicodio voluptatem tenetur consequatur.', 'slider2.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(3, 'Community Center', 'There is no power for change greater than a community', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur hicodio voluptatem tenetur consequatur.', 'slider3.jpg', 'active', '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'users',
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'default.png', 'Admin', 'admin@admin.com', NULL, '$2y$10$RSOaEkzdeiWyRkH4Y7yqGOHjZmd4XZaA.Pe0LJx3VFzicm3bwkzua', 'superadmin', 'active', NULL, '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL),
(2, 'images.png', 'jaymin', 'jaymin@gmail.com', NULL, '$2y$10$yFKJz9xH7N8hg7RRye0B..ivdFmYKsHjEbIx/KhpsKEqBuYbQB.yu', 'users', 'active', NULL, '2022-02-18 03:42:18', '2022-08-05 02:37:24', NULL),
(4, 'images.png', 'bharat', 'bharat@gmail.com', NULL, '$2y$10$yFKJz9xH7N8hg7RRye0B..ivdFmYKsHjEbIx/KhpsKEqBuYbQB.yu', 'users', 'active', NULL, '2022-02-18 03:42:18', '2022-02-18 03:42:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_code_unique` (`code`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
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
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
