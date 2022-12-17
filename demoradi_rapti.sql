-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2022 at 05:19 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoradi_rapti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$c6YZauPDw5pBmUdGHs8FnuzXyhKejnYz5Oj.l3GgFaV./5XpPF1Vi', 'p8ZcIvffbOv5OOzh1zxbJ5NHtRILQ3wkfGxtMjJi4T8QPWg761IGTfiWFPrV', '2021-08-22 23:01:57', '2021-11-17 11:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_nepali_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website_full_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8_unicode_ci,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo_nepali` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `site_name`, `facebook_link`, `instagram_link`, `twitter_link`, `youtube_link`, `site_nepali_name`, `site_email`, `phone`, `website_full_address`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 'Rapti Fashion', 'https://facebook.com/', 'https://instagram.com/', '', '', '', 'info@raptifashion.com', '1-310-991-5846', '', 'Rapti Fashion Direct', 'Rapti Fashion Direct', 'Rapti Fashion Direct', '', '1635490245_logo.png', '', '1', '', '', '2021-12-28 04:18:10', '2021-10-29 01:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_10_055032_create_admins_table', 1),
(4, '2020_08_10_055107_create_navigations_table', 1),
(5, '2020_08_10_055234_create_navigation_items_table', 1),
(6, '2020_08_10_055256_create_page_types_table', 1),
(7, '2020_08_10_055321_create_subscribers_table', 1),
(8, '2020_08_10_055345_create_global_settings_table', 1),
(9, '2020_08_10_055423_create_navigation_video_items_table', 1),
(10, '2020_08_10_055450_create_comments_table', 1),
(12, '2020_08_10_070551_create_products_table', 1),
(13, '2020_08_13_065318_create_product_feature_images_table', 1),
(14, '2020_08_18_081733_create_contacts_table', 1),
(15, '2020_11_03_051315_create_catalogues_table', 2),
(17, '2020_08_10_070524_create_product_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption_nepali` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nav_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `short_content` text COLLATE utf8_unicode_ci,
  `short_content_nepali` text COLLATE utf8_unicode_ci,
  `long_content` text COLLATE utf8_unicode_ci,
  `long_content_nepali` text COLLATE utf8_unicode_ci,
  `parent_page_id` int(11) NOT NULL,
  `icon_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_image_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `nav_status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_three` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 'slider', 'Slider', NULL, 'Home', 'Slider', NULL, 1, '', NULL, '', NULL, 0, NULL, NULL, '', NULL, '', NULL, NULL, '', 'Slider', '', '1', '0', '', '', NULL, '2021-10-29 01:09:57', '2021-10-29 01:10:21'),
(2, 'About Us', 'about-us', 'About Us', NULL, 'Main', 'Normal', NULL, 1, '<p>Rapti is the one stop destination for the world&rsquo;s best and largest collection for shawls and scarves. We present an exquisite range made by using a variety of fabrics, designs, patterns &amp; techniques. A combination of style and elegance our range is available in a spectrum of designs and colors. A blend of tradition, imagination and trends the collection is legacy of generations working with textures and trends.</p>\r\n\r\n<p>We offer warmth and sophistication with a distinctive, artistic and elegant collection which is offered at most competitive factory direct prices.</p>\r\n\r\n<p>We have been in business for over a decade now. We have over three thousand customers and one of the keys for our growth has been its unmatched customer service. Our aim is to have our clients satisfied.</p>\r\n\r\n<p>Any suggestions and comments are highly appreciated.</p>\r\n', NULL, '<p>Rapti is the one stop destination for the world&rsquo;s best and largest collection for shawls and scarves. We present an exquisite range made by using a variety of fabrics, designs, patterns &amp; techniques. A combination of style and elegance our range is available in a spectrum of designs and colors. A blend of tradition, imagination and trends the collection is legacy of generations working with textures and trends.</p>\r\n\r\n<p>We offer warmth and sophistication with a distinctive, artistic and elegant collection which is offered at most competitive factory direct prices.</p>\r\n\r\n<p>We have been in business for over a decade now. We have over three thousand customers and one of the keys for our growth has been its unmatched customer service. Our aim is to have our clients satisfied.</p>\r\n\r\n<p>Any suggestions and comments are highly appreciated.</p>\r\n', NULL, 0, NULL, NULL, '', NULL, '', NULL, NULL, '', 'About Us', '', '1', '0', '', '', NULL, '2021-10-29 02:31:05', '2022-03-23 09:21:10'),
(3, 'ABOUT RAPTI TRADE CHANNEL', 'about-rapti-trade-channel', 'ABOUT RAPTI TRADE CHANNEL', NULL, 'Home', 'Normal', NULL, 2, '<p>Rapti is the one stop destination for the world&rsquo;s best and largest collection for shawls and scarves. We present an exquisite range made by using a variety of fabrics, designs, patterns &amp; techniques. A combination of style and elegance our range is available in a spectrum of designs and colors. A blend of tradition, imagination and trends the collection is legacy of generations working with textures and trends.</p>\r\n', NULL, '<p>Rapti is the one stop destination for the world&rsquo;s best and largest collection for shawls and scarves. We present an exquisite range made by using a variety of fabrics, designs, patterns &amp; techniques. A combination of style and elegance our range is available in a spectrum of designs and colors. A blend of tradition, imagination and trends the collection is legacy of generations working with textures and trends.</p>\r\n\r\n<p>We offer warmth and sophistication with a distinctive, artistic and elegant collection which is offered at most competitive factory direct prices.</p>\r\n\r\n<p>We have been in business for over a decade now. We have over three thousand customers and one of the keys for our growth has been its unmatched customer service. Our aim is to have our clients satisfied.</p>\r\n\r\n<p>Any suggestions and comments are highly appreciated.</p>\r\n', NULL, 0, NULL, NULL, '', NULL, '', NULL, NULL, '', 'ABOUT RAPTI TRADE CHANNEL', '', '1', '0', '', '', NULL, '2021-11-02 23:52:24', '2021-11-02 23:52:24'),
(4, 'Welcome to our wholesale website', 'welcome-to-our-wholesale-website', 'Welcome to our wholesale website', NULL, 'Home', 'Normal', NULL, 3, '<p>This is a password - protected site. Visitor must be a registered user to access the website. If you are already a member please login. To register&nbsp;click here<br />\r\nIf you need immediate assistance, please give us a call at 1-310-991-5846 or email</p>\r\n', NULL, '<p>This is a password - protected site. Visitor must be a registered user to access the website. If you are already a member please login. To register&nbsp;click here<br />\r\nIf you need immediate assistance, please give us a call at 1-310-991-5846 or email</p>\r\n', NULL, 0, NULL, NULL, '', NULL, '', NULL, NULL, '', 'Welcome to our wholesale website', '', '1', '0', '', '', NULL, '2021-11-02 23:52:58', '2021-11-02 23:52:58'),
(5, 'ENTER THE WHOLESELLER SITE', 'enter-the-wholeseller-site', 'ENTER THE WHOLESELLER SITE', NULL, 'Home', 'Normal', NULL, 4, '<p>This is a password - protected site. Visitor must be a registered user to acess the website. If you are already a member please login. To register click here If you need immediate assistance, please give us a call at 1-310-991-5846</p>\r\n', NULL, '<p>This is a password - protected site. Visitor must be a registered user to acess the website. If you are already a member please login. To register click here If you need immediate assistance, please give us a call at 1-310-991-5846</p>\r\n', NULL, 0, NULL, NULL, '', NULL, '', NULL, NULL, '', 'ENTER THE WHOLESELLER SITE', '', '1', '0', '', '', NULL, '2021-11-02 23:56:48', '2021-11-02 23:56:48'),
(6, 'Catalogue', 'catalogue', 'Catalogue', NULL, 'Main', 'Group', NULL, 2, '', NULL, '', NULL, 0, NULL, NULL, '', NULL, '', NULL, NULL, '', 'Catalogue', '', '1', '0', '', '', NULL, '2021-11-22 21:22:29', '2021-11-22 21:22:29'),
(10, 'page 1', 'page-1', 'page 1', NULL, 'Main', 'Normal', NULL, 1, '', NULL, '', NULL, 15, NULL, NULL, '', '1657871214_1.jpg', '', NULL, NULL, '', 'page 1', '', '1', '0', '', '', NULL, '2022-07-15 02:01:28', '2022-07-15 02:43:23'),
(11, 'Page 2', 'page-2', 'Page 2', NULL, 'Main', 'Normal', NULL, 2, '', NULL, '', NULL, 15, NULL, NULL, '', '1657871232_2.jpg', '', NULL, NULL, '', 'Page 2', '', '1', '0', '', '', NULL, '2022-07-15 02:02:12', '2022-07-15 02:43:32'),
(12, 'page 3', 'page-3', 'Page 2', NULL, 'Main', 'Normal', NULL, 3, '', NULL, '', NULL, 15, NULL, NULL, '', '1657874441_3.jpg', '', NULL, NULL, '', 'page 3', '', '1', '0', '', '', NULL, '2022-07-15 02:02:29', '2022-07-15 02:55:41'),
(13, 'Page 4', 'page-4', 'Page 4', NULL, 'Main', 'Normal', NULL, 4, '', NULL, '', NULL, 15, NULL, NULL, '', '1657871294_4.jpg', '', NULL, NULL, '', 'Page 4', '', '1', '0', '', '', NULL, '2022-07-15 02:03:14', '2022-07-15 02:43:51'),
(15, 'Catelog 1', 'catelog-1', 'Catelog 1', NULL, 'Main', 'Group', NULL, 5, '', NULL, '', NULL, 6, NULL, NULL, '', NULL, '', NULL, NULL, '', '', '', '1', '0', '', '', NULL, '2022-07-15 02:42:52', '2022-07-15 02:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_items`
--

CREATE TABLE `navigation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `navigation_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navigation_items`
--

INSERT INTO `navigation_items` (`id`, `sort`, `navigation_id`, `name`, `name_nepali`, `file`, `content`, `content_nepali`, `link`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'BEST ITEM  THIS SUMMER', '', '1635490541_banner-1.png', '', '', '', NULL, NULL, '2021-10-29 01:10:41', '2021-10-29 01:12:13'),
(2, 1, 1, 'New Product Collection', '', '1635490550_banner-2.png', '', '', '', NULL, NULL, '2021-10-29 01:10:50', '2021-10-29 01:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_video_items`
--

CREATE TABLE `navigation_video_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vlink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `invoice_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'user|guest',
  `status_id` int(11) NOT NULL,
  `is_success` tinyint(1) NOT NULL DEFAULT '0',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cod|esewa|master_card',
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'billing|shipping',
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'user|guest',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_types`
--

CREATE TABLE `page_types` (
  `sort` int(10) UNSIGNED NOT NULL,
  `page_type_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_types`
--

INSERT INTO `page_types` (`sort`, `page_type_title`, `created_at`, `updated_at`) VALUES
(1, 'Normal', '2020-11-01 04:18:10', '2020-11-01 04:18:10'),
(2, 'Group', '2020-11-01 04:18:10', '2020-11-01 04:18:10'),
(3, 'Photo Gallery', '2020-11-01 04:18:10', '2020-11-01 04:18:11'),
(4, 'Video Gallery', '2020-11-01 04:18:10', '2020-11-01 04:18:11'),
(5, 'Link', '2020-11-01 04:18:10', '2020-11-01 04:18:11'),
(6, 'Slider', '2020-11-01 04:18:10', '2020-11-01 04:18:11'),
(7, 'Attachment', '2020-11-01 04:18:10', '2020-11-01 04:18:11'),
(8, 'Audio Gallery', '2020-11-01 04:18:10', '2020-11-01 04:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `short_desc` longtext COLLATE utf8_unicode_ci,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compare_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `order` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_products` int(11) NOT NULL DEFAULT '0',
  `popular_product` int(5) NOT NULL DEFAULT '0',
  `hot_deal` int(5) NOT NULL DEFAULT '0',
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `code`, `slug`, `description`, `short_desc`, `thumbnail`, `price`, `compare_price`, `quantity`, `status`, `order`, `meta_title`, `meta_description`, `meta_keywords`, `featured_products`, `popular_product`, `hot_deal`, `item`, `pdf_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 11, 'CASHMERE SCARVE ', 'PSC # (152)', 'cashmere-scarve-psc-152', '', 'PSC # (152)', '1636701144.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 13:12:24', '2022-03-29 04:13:00', NULL),
(4, 11, 'CASHMERE SCARVE ', 'PSC # 135', 'cashmere-scarve-psc-135', '', 'PSC # 135', '1636701515.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 13:18:35', '2022-03-29 04:13:00', NULL),
(5, 11, 'CASHMERE SCARVE ', 'PSC # 137', 'cashmere-scarve-psc-137', '', 'PSC # 137', '1636701721.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 13:22:01', '2022-03-29 04:13:00', NULL),
(6, 11, 'CASHMERE SCARVE ', 'PSC # 151', 'cashmere-scarve-psc-151', '', 'PSC # 151', '1636702370.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 13:32:50', '2022-03-29 04:13:00', NULL),
(7, 11, 'CASHMERE SCARVE ', 'PSC # 154', 'cashmere-scarve-psc-154', '', 'PSC # 154', '1636702618.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 13:36:58', '2022-03-29 04:13:00', NULL),
(8, 11, 'CASHMERE SCARVE ', 'PSC # 155', 'cashmere-scarve-psc-155', '', 'PSC # 155', '1636702949.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 13:42:29', '2022-03-29 04:13:00', NULL),
(9, 11, 'CASHMERE SCARVE ', 'PSC # 159', 'cashmere-scarve-psc-159', '', 'PSC # 159', '1636703073.jpeg', '', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 13:44:33', '2022-03-29 04:13:00', NULL),
(10, 11, 'CASHMERE SCARVE', ' PSC # 160', 'cashmere-scarve-psc-160', '', ' PSC # 160', '1636705444.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 14:24:04', '2022-03-29 04:13:01', NULL),
(11, 11, 'CASHMERE SCARVE', ' PSC # 163', 'cashmere-scarve-psc-163', '', ' PSC # 163', '1636705861.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 14:31:01', '2022-03-29 04:13:01', NULL),
(12, 11, 'CASHMERE SCARVE', ' PSC # 172', 'cashmere-scarve-psc-172', '', ' PSC # 172', '1636706169.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 14:36:09', '2022-03-29 04:13:01', NULL),
(13, 11, 'CASHMERE SCARVE ', 'PSC # 177', 'cashmere-scarve-psc-177', '', 'PSC # 177', '1636707184.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 14:53:04', '2022-03-29 04:13:01', NULL),
(14, 11, 'CASHMERE SCARVE', ' PSC #72', 'cashmere-scarve-psc-72', '', ' PSC #72', '1636707303.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 14:55:03', '2022-03-29 04:13:01', NULL),
(15, 11, 'CASHMERE SCARVE', ' PSC #74', 'cashmere-scarve-psc-74', '', ' PSC #74', '1636707681.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 15:01:21', '2022-03-29 04:13:01', NULL),
(16, 11, 'CASHMERE SCARVE ', 'PSC #86', 'cashmere-scarve-psc-86', '', 'PSC #86', '1636708205.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 15:10:05', '2022-03-29 04:13:01', NULL),
(17, 11, 'CASHMERE SCARVE ', 'PSC #95', 'cashmere-scarve-psc-95', '', 'PSC #95', '1636708283.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 15:11:23', '2022-03-29 04:13:01', NULL),
(18, 11, 'CASHMERE SCARVE ', 'PSC #96', 'cashmere-scarve-psc-96', '', 'PSC #96', '1636708604.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 15:16:44', '2022-03-29 04:13:01', NULL),
(19, 11, 'CASHMERE SCARVE', 'PSC #101', 'cashmere-scarve-psc-101', '', 'PSC #101', '1636710122.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 15:42:02', '2022-03-29 04:13:01', NULL),
(20, 11, 'CASHMERE SCARVE ', 'PSC #115', 'cashmere-scarve-psc-115', '', 'PSC #115', '1636710178.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 15:42:58', '2022-03-29 04:13:02', NULL),
(21, 11, 'CASHMERE SCARVE ', 'PSC #118', 'cashmere-scarve-psc-118', '', 'PSC #118', '1636710987.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 15:56:27', '2022-03-29 04:13:02', NULL),
(22, 11, 'CASHMERE SCARVE ', 'PSC #121', 'cashmere-scarve-psc-121', '', 'PSC #121', '1636712424.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 16:20:24', '2022-03-29 04:13:02', NULL),
(23, 11, 'CASHMERE SCARVE', ' PSC #125', 'cashmere-scarve-psc-125', '', ' PSC #125', '1636712911.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 16:28:31', '2022-03-29 04:13:02', NULL),
(24, 11, 'CASHMERE SCARVE', ' PSC #127', 'cashmere-scarve-psc-127', '', ' PSC #127', '1636713349.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 16:35:49', '2022-03-29 04:13:02', NULL),
(25, 11, 'CASHMERE SCARVE', ' PSC #130', 'cashmere-scarve-psc-130', '', ' PSC #130', '1636713783.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 16:43:03', '2022-03-29 04:13:02', NULL),
(29, 11, 'CASHMERE SCARVE ', 'PSC #131', 'cashmere-scarve-psc-131', '', 'PSC #131', '1636715380.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 17:09:40', '2022-03-29 04:13:02', NULL),
(30, 11, 'CASHMERE SCARVE', ' PSC (60)', 'cashmere-scarve-psc-60', '', ' PSC (60)', '1636715538.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 17:12:18', '2022-03-29 04:13:02', NULL),
(31, 11, 'CASHMERE SCARVE', ' PSC (62)', 'cashmere-scarve-psc-62', '', ' PSC (62)', '1636717455.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-12 17:44:15', '2022-03-29 04:13:03', NULL),
(32, 11, 'CASHMERE SCARVE ', 'PSC (64)', 'cashmere-scarve-psc-64', '', 'PSC (64)', '1636872580.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 12:49:40', '2022-03-29 04:13:03', NULL),
(33, 11, 'CASHMERE SCARVE', ' PSC (65)', 'cashmere-scarve-psc-65', '', ' PSC (65)', '1636874935.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 13:28:55', '2022-03-29 04:13:03', NULL),
(34, 11, 'CASHMERE SCARVE', ' PSC (67)', 'cashmere-scarve-psc-67', '', ' PSC (67)', '1636875078.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 13:31:18', '2022-03-29 04:13:03', NULL),
(35, 11, 'CASHMERE SCARVE', ' PSC (68)', 'cashmere-scarve-psc-68', '', ' PSC (68)', '1636875747.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 13:42:27', '2022-03-29 04:13:03', NULL),
(36, 11, 'CASHMERE SCARVE', ' PSC (70)', 'cashmere-scarve-psc-70', '', ' PSC (70)', '1636875840.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 13:44:00', '2022-03-29 04:13:03', NULL),
(37, 11, 'CASHMERE SCARVE', ' PSC# 146', 'cashmere-scarve-psc-146', '', ' PSC# 146', '1636876067.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 13:47:47', '2022-03-29 04:13:03', NULL),
(38, 11, 'CASHMERE SCARVE', ' PSC #182', 'cashmere-scarve-psc-182', '', ' PSC #182', '1636882016.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 15:26:56', '2022-03-29 04:13:03', NULL),
(39, 11, 'CASHMERE SCARVE', ' PSC #183', 'cashmere-scarve-psc-183', '', ' PSC #183', '1636883513.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 15:51:53', '2022-03-29 04:13:03', NULL),
(40, 11, 'CASHMERE SCARVE', ' PSC #184', 'cashmere-scarve-psc-184', '', ' PSC #184', '1636884506.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 16:08:26', '2022-03-29 04:13:03', NULL),
(41, 11, 'CASHMERE SCARVE', ' PSC #185', 'cashmere-scarve-psc-185', '', ' PSC #185', '1636886445.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 16:40:45', '2022-03-29 04:13:03', NULL),
(42, 11, 'CASHMERE SCARVE', ' PSC #187', 'cashmere-scarve-psc-187', '', ' PSC #187', '1636886687.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 16:44:47', '2022-03-29 04:13:03', NULL),
(43, 11, 'CASHMERE SCARVE', ' PSC #188', 'cashmere-scarve-psc-188', '', ' PSC #188', '1636886902.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 16:48:22', '2022-03-29 04:13:03', NULL),
(44, 11, 'CASHMERE SCARVE', ' PSC #193', 'cashmere-scarve-psc-193', '', ' PSC #193', '1636887429.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 16:57:09', '2022-03-29 04:13:03', NULL),
(45, 11, 'CASHMERE SCARVE', ' PSC #194', 'cashmere-scarve-psc-194', '', ' PSC #194', '1636890527.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-14 17:48:47', '2022-03-29 04:13:03', NULL),
(46, 11, 'CASHMERE SCARVE', ' PSC #195', 'cashmere-scarve-psc-195', '', ' PSC #195', '1636958872.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 12:47:52', '2022-03-29 04:13:03', NULL),
(47, 11, 'CASHMERE SCARVE', ' PSC #199', 'cashmere-scarve-psc-199', '', ' PSC #199', '1636961625.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 13:33:45', '2022-03-29 04:13:04', NULL),
(48, 11, 'CASHMERE SCARVE', ' PSC- 204', 'cashmere-scarve-psc-204', '', ' PSC- 204', '1636964291.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 14:18:11', '2022-03-29 04:13:04', NULL),
(49, 11, 'CASHMERE SCARVE', ' PSC- 205', 'cashmere-scarve-psc-205', '', ' PSC- 205', '1636964378.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 14:19:38', '2022-03-29 04:13:04', NULL),
(50, 11, 'CASHMERE SCARVE', ' PSC- 206', 'cashmere-scarve-psc-206', '', ' PSC- 206', '1636964585.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 14:23:05', '2022-03-29 04:13:04', NULL),
(51, 11, 'CASHMERE SCARVE ', 'PSC- 207', 'cashmere-scarve-psc-207', '', 'PSC- 207', '1636965196.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 14:33:16', '2022-03-29 04:13:04', NULL),
(52, 11, 'CASHMERE SCARVE', ' PSC- 208', 'cashmere-scarve-psc-208', '', ' PSC- 208', '1636965265.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 14:34:25', '2022-03-29 04:13:04', NULL),
(53, 11, 'CASHMERE SCARVE ', 'PSC- 209', 'cashmere-scarve-psc-209', '', 'PSC- 209', '1636966144.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 14:49:04', '2022-03-29 04:13:04', NULL),
(54, 11, 'CASHMERE SCARVE ', 'PSC- 210', 'cashmere-scarve-psc-210', '', 'PSC- 210', '1636966208.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 14:50:08', '2022-03-29 04:13:04', NULL),
(55, 11, 'CASHMERE SCARVE', ' PSC- 211', 'cashmere-scarve-psc-211', '', ' PSC- 211', '1636966294.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 14:51:34', '2022-03-29 04:13:04', NULL),
(56, 11, 'CASHMERE SCARVE', ' PSC- 212', 'cashmere-scarve-psc-212', '', ' PSC- 212', '1636967766.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 15:16:06', '2022-03-29 04:13:04', NULL),
(57, 11, 'CASHMERE SCARVE ', 'PSC- 213', 'cashmere-scarve-psc-213', '', 'PSC- 213', '1636968005.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 15:20:05', '2022-03-29 04:13:04', NULL),
(58, 11, 'CASHMERE SCARVE', ' PSC- 214', 'cashmere-scarve-psc-214', '', ' PSC- 214', '1636968067.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 15:21:07', '2022-03-29 04:13:04', NULL),
(59, 11, 'CASHMERE SCARVE', ' PSC- 215', 'cashmere-scarve-psc-215', '', ' PSC- 215', '1636968128.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 15:22:08', '2022-03-29 04:13:04', NULL),
(60, 11, 'CASHMERE SCARVE', ' PSC 216', 'cashmere-scarve-psc-216', '', ' PSC 216', '1636968230.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 15:23:50', '2022-03-29 04:13:04', NULL),
(61, 11, 'CASHMERE SCARVE', ' PSC 217', 'cashmere-scarve-psc-217', '', ' PSC 217', '1636968292.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 15:24:52', '2022-03-29 04:13:05', NULL),
(62, 11, 'CASHMERE SCARVE', ' PSC 218', 'cashmere-scarve-psc-218', '', ' PSC 218', '1636968967.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 15:36:07', '2022-03-29 04:13:05', NULL),
(63, 11, 'CASHMERE SCARVE', ' PSC 219', 'cashmere-scarve-psc-219', '', ' PSC 219', '1636969539.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 15:45:39', '2022-03-29 04:13:05', NULL),
(64, 11, 'CASHMERE SCARVE', ' PSC 220', 'cashmere-scarve-psc-220', '', ' PSC 220', '1636971766.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 16:22:46', '2022-03-29 04:13:05', NULL),
(65, 11, 'CASHMERE SCARVE', ' PSC 221', 'cashmere-scarve-psc-221', '', ' PSC 221', '1636972148.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 16:29:08', '2022-03-29 04:13:05', NULL),
(66, 11, 'CASHMERE SCARVE', ' PSC 222', 'cashmere-scarve-psc-222', '', ' PSC 222', '1636972216.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 16:30:16', '2022-03-29 04:13:05', NULL),
(67, 11, 'CASHMERE SCARVE ', 'PSC 223', 'cashmere-scarve-psc-223', '', 'PSC 223', '1636972311.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 16:31:51', '2022-03-29 04:13:05', NULL),
(68, 11, 'CASHMERE SCARVE ', 'PSC 224', 'cashmere-scarve-psc-224', '', 'PSC 224', '1636975643.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 17:27:23', '2022-03-29 04:13:05', NULL),
(69, 11, 'CASHMERE SCARVE ', 'PSC 225', 'cashmere-scarve-psc-225', '', 'PSC 225', '1636975941.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 17:32:21', '2022-03-29 04:13:05', NULL),
(70, 11, 'CASHMERE SCARVE ', 'PSC 226', 'cashmere-scarve-psc-226', '', 'PSC 226', '1636976128.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 17:35:28', '2022-03-29 04:13:05', NULL),
(71, 11, 'CASHMERE SCARVE ', 'PSC 227', 'cashmere-scarve-psc-227', '', 'PSC 227', '1636976176.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-15 17:36:16', '2022-03-29 04:13:05', NULL),
(72, 12, 'SOLID CASHMERE SCARVE  ', ' MSC-S L-_R Burgendy, Navy, Royal, Fuchia, Silver', 'solid-cashmere-scarve-msc-s-l-r-burgendy-navy-royal-fuchia-silver', '', ' MSC-S L-_R Burgendy, Navy, Royal, Fuchia, Silver', '1637054800.jpeg', '10', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 15:26:40', '2022-03-29 04:13:05', NULL),
(73, 12, 'SOLID CASHMERE SCARVE', ' MSC-S L-_R Red, Black, Charcoal, Purple, Lime', 'solid-cashmere-scarve-msc-s-l-r-red-black-charcoal-purple-lime', '', ' MSC-S L-_R Red, Black, Charcoal, Purple, Lime', '1637056449.jpeg', '10', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 15:54:09', '2022-03-29 04:13:05', NULL),
(74, 13, 'SOLID REVERSIBLE CASHMERE SCARVE ', 'MSC-R L-_R #1,#3,#4,#5', 'solid-reversible-cashmere-scarve-msc-r-l-r-1345', '', 'MSC-R L-_R #1,#3,#4,#5', '1637057874.jpeg', '12', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 16:17:54', '2022-03-29 04:13:06', NULL),
(75, 13, 'SOLID REVERSIBLE CASHMERE SCARVE ', 'MSC-R L-_R #6,#7,#13,#14', 'solid-reversible-cashmere-scarve-msc-r-l-r-671314', '', 'MSC-R L-_R #6,#7,#13,#14', '1637058395.jpeg', '12', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 16:26:35', '2022-03-29 04:13:06', NULL),
(76, 13, 'SOLID REVERSIBLE CASHMERE SCARVE ', ' MSC-R L-_R #15,#17, #20, #21', 'solid-reversible-cashmere-scarve-msc-r-l-r-1517-20-21', '', ' MSC-R L-_R #15,#17, #20, #21', '1637061302.jpeg', '12', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 17:15:02', '2022-03-29 04:13:06', NULL),
(77, 13, 'SOLID REVERSIBLE CASHMERE SCARVE ', 'MSC-R L-_R #25,#26,#27,#28', 'solid-reversible-cashmere-scarve-msc-r-l-r-25262728', '', 'MSC-R L-_R #25,#26,#27,#28', '1637061861.jpeg', '12', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 17:24:21', '2022-03-29 04:13:06', NULL),
(78, 13, 'SOLID REVERSIBLE CASHMERE SCARVE ', 'MSC-R L-_R #29,#30,SPR-1,SPR-2', 'solid-reversible-cashmere-scarve-msc-r-l-r-2930spr-1spr-2', '', 'MSC-R L-_R #29,#30,SPR-1,SPR-2', '1637062441.jpeg', '12', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 17:34:01', '2022-03-29 04:13:06', NULL),
(79, 13, 'SOLID REVERSIBLE CASHMERE SCARVE', ' MSC-R L-_R SPR-3, SPR-4, SPR-5, SPR-6, SPR-7', 'solid-reversible-cashmere-scarve-msc-r-l-r-spr-3-spr-4-spr-5-spr-6-spr-7', '', ' MSC-R L-_R SPR-3, SPR-4, SPR-5, SPR-6, SPR-7', '1637062759.jpeg', '12', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 17:39:19', '2022-03-29 04:13:06', NULL),
(80, 13, 'SOLID REVERSIBLE CASHMERE SCARVE ', 'R MSC blk_wht', 'solid-reversible-cashmere-scarve-r-msc-blk-wht', '', 'R MSC blk_wht', '1637062935.jpeg', '12', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-16 17:42:15', '2022-03-29 04:13:06', NULL),
(81, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL', ' 540', 'paisley-design-kani-weave-classic-shawl-540', '<p><span style=\"font-size:12pt\"><span style=\"color:black\">MIN: 2PCS/COLOR</span></span></p>\r\n', ' 540', '1637225813.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-18 14:56:53', '2022-03-29 04:13:06', NULL),
(82, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '541', 'paisley-design-kani-weave-classic-shawl-541', '', '541', '1637225897.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-18 14:58:17', '2022-03-29 04:13:06', NULL),
(83, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '542', 'paisley-design-kani-weave-classic-shawl-542', '<p><span style=\"font-size:12pt\"><span style=\"color:black\">MIN: 2PCS/COLOR</span></span></p>\r\n', '542', '1637226071.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-18 15:01:11', '2022-03-29 04:13:06', NULL),
(84, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '543', 'paisley-design-kani-weave-classic-shawl-543', '<p><span style=\"font-size:12pt\"><span style=\"color:black\">MIN: 2PCS/COLOR</span></span></p>\r\n', '543', '1637226167.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-18 15:02:47', '2022-03-29 04:13:06', NULL),
(85, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 315 # A', 'paisley-design-kani-weave-scarve-inf-kani-s-315-a', '', 'INF KANI_S_ 315 # A', '1637230398.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-18 16:13:18', '2022-03-29 04:13:06', NULL),
(86, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 315 # B', 'paisley-design-kani-weave-scarve-inf-kani-s-315-b', '', 'INF KANI_S_ 315 # B', '1637230616.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-18 16:16:56', '2022-03-29 04:13:06', NULL),
(87, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 315 # C', 'paisley-design-kani-weave-scarve-inf-kani-s-315-c', '', 'INF KANI_S_ 315 # C', '1637231047.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-18 16:24:07', '2022-03-29 04:13:06', NULL),
(88, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 315 # D', 'paisley-design-kani-weave-scarve-inf-kani-s-315-d', '', 'INF KANI_S_ 315 # D', '1637231716.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-18 16:35:16', '2022-03-29 04:13:07', NULL),
(89, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R 3,7,9,18,26,27', 'contemporary-cashmere-scarve-ccs-l-r-379182627', '', 'CCS L-_R 3,7,9,18,26,27', '1637306189.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 13:16:29', '2022-03-29 04:13:07', NULL),
(90, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R 28,29,31,42,45,47', 'contemporary-cashmere-scarve-ccs-l-r-282931424547', '', 'CCS L-_R 28,29,31,42,45,47', '1637306442.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 13:20:42', '2022-03-29 04:13:07', NULL),
(91, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R 48,51,52,63,65,66', 'contemporary-cashmere-scarve-ccs-l-r-485152636566', '', 'CCS L-_R 48,51,52,63,65,66', '1637306539.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 13:22:19', '2022-03-29 04:13:07', NULL),
(92, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R 68,69,70,71,72,73', 'contemporary-cashmere-scarve-ccs-l-r-686970717273', '', 'CCS L-_R 68,69,70,71,72,73', '1637306644.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 13:24:04', '2022-03-29 04:13:07', NULL),
(93, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE ', 'inf ccs #48', 'contemporary-cashmere-infinity-scarve-inf-ccs-48', '', 'inf ccs #48', '1637311858.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 14:50:58', '2022-03-29 04:13:07', NULL),
(94, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE ', 'inf ccs #68', 'contemporary-cashmere-infinity-scarve-inf-ccs-68', '', 'inf ccs #68', '1637311929.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 14:52:09', '2022-03-29 04:13:07', NULL),
(95, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE', ' inf ccs #69', 'contemporary-cashmere-infinity-scarve-inf-ccs-69', '', ' inf ccs #69', '1637312330.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 14:58:50', '2022-03-29 04:13:07', NULL),
(96, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE', ' inf ccs #AS-23', 'contemporary-cashmere-infinity-scarve-inf-ccs-as-23', '', ' inf ccs #AS-23', '1637312439.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 15:00:39', '2022-03-29 04:13:07', NULL),
(97, 18, 'SATIN WEAVE PLAIN SHAWL', ' 8501 S', 'satin-weave-plain-shawl-8501-s', '<p><span style=\"font-size:12pt\"><span style=\"color:black\">&nbsp;WINE, SILVER, AUBURGENE, WHITE</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"color:black\">NAVY, GREY, PURPLE, BLACK</span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"color:black\">RED, OLIVE, CHO. BROWN, FUCHIA</span></span></p>\r\n', ' 8501 S', '1637313511.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-19 15:18:31', '2022-03-29 04:13:07', NULL),
(98, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 1', 'paisley-design-kani-weave-classic-jacket-kani-jacket-1', '', 'KANI JACKET # 1', '1637478716.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-21 13:11:56', '2022-03-29 04:13:07', NULL),
(99, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 6', 'paisley-design-kani-weave-classic-jacket-kani-jacket-6', '', 'KANI JACKET # 6', '1637480201.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-21 13:36:41', '2022-03-29 04:13:08', NULL),
(100, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 7', 'paisley-design-kani-weave-classic-jacket-kani-jacket-7', '', 'KANI JACKET # 7', '1637480806.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-21 13:46:46', '2022-03-29 04:13:08', NULL),
(101, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 9', 'paisley-design-kani-weave-classic-jacket-kani-jacket-9', '', 'KANI JACKET # 9', '1637482797.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-21 14:19:57', '2022-03-29 04:13:08', NULL),
(102, 20, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'LONG JACKET 9000-1', 'cashmere-blend-antique-design-hand-embroidered-long-jacket-9000-1', '', 'LONG JACKET 9000-1', '1637487725.jpeg', '59', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-21 15:42:05', '2022-03-29 04:13:08', NULL),
(103, 20, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'LONG JACKET 9000-2', 'cashmere-blend-antique-design-hand-embroidered-long-jacket-9000-2', '', 'LONG JACKET 9000-2', '1637487884.jpeg', '59', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-21 15:44:44', '2022-03-29 04:13:08', NULL),
(104, 20, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'LONG JACKET 9000-3', 'cashmere-blend-antique-design-hand-embroidered-long-jacket-9000-3', '', 'LONG JACKET 9000-3', '1637488741.jpeg', '59', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-21 15:59:01', '2022-03-29 04:13:08', NULL),
(105, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #265', 'silk-blend-lycra-scarve-8402-ly-265', '', '8402 LY #265', '1637578406.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-22 16:53:26', '2022-03-29 04:13:08', NULL),
(106, 1, 'SILK BLEND LYCRA SCARVE', ' 8402 LY #268', 'silk-blend-lycra-scarve-8402-ly-268', '', ' 8402 LY #268', '1637578473.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-22 16:54:33', '2022-03-29 04:13:08', NULL),
(107, 1, 'SILK BLEND LYCRA SCARVE', ' 8402 LY #269', 'silk-blend-lycra-scarve-8402-ly-269', '', ' 8402 LY #269', '1637578538.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-22 16:55:38', '2022-03-29 04:13:08', NULL),
(108, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #270', 'silk-blend-lycra-scarve-8402-ly-270', '', '8402 LY #270', '1637578766.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-22 16:59:26', '2022-03-29 04:13:08', NULL),
(109, 21, 'SILK BLEND LYCRA INFINITY SCARVE ', 'INF 8402 LY # 320', 'silk-blend-lycra-infinity-scarve-inf-8402-ly-320', '<p><span style=\"font-size:12pt\"><span style=\"color:black\">Pre-pk: 6pcs/pk</span></span></p>\r\n', 'INF 8402 LY # 320', '1637580745.jpeg', '72', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-22 17:32:25', '2022-03-29 04:13:08', NULL),
(110, 21, 'SILK BLEND LYCRA INFINITY SCARVE ', 'INF 8402 LY # 327', 'silk-blend-lycra-infinity-scarve-inf-8402-ly-327', '', 'INF 8402 LY # 327', '1637581372.jpeg', '72', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-22 17:42:52', '2022-03-29 04:13:09', NULL),
(111, 21, 'SILK BLEND LYCRA INFINITY SCARVE ', 'INF 8402 LY # 336', 'silk-blend-lycra-infinity-scarve-inf-8402-ly-336', '', 'INF 8402 LY # 336', '1637581655.jpeg', '72', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-22 17:47:35', '2022-03-29 04:13:09', NULL),
(112, 21, 'SILK BLEND LYCRA INFINITY SCARVE INF 8402 LY # 375', 'INF 8402 LY # 336', 'silk-blend-lycra-infinity-scarve-inf-8402-ly-375', '', 'INF 8402 LY # 336', '1637582027.jpeg', '72', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-22 17:53:47', '2022-03-29 04:13:09', NULL),
(113, 2, 'CASHMERE COLLECTION ', 'cash A', 'cashmere-collection-cash-a', '', 'cash A', '1637643282.jpeg', '144', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 10:54:42', '2022-03-29 04:13:09', NULL),
(114, 2, 'CASHMERE COLLECTION ', 'cash B', 'cashmere-collection-cash-b', '', 'cash B', '1637643398.jpeg', '144', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 10:56:38', '2022-03-29 04:13:09', NULL),
(115, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN - 48', '100-silk-digital-print-scarve-8602-prn-48', '', '8602 PRN - 48', '1637644102.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:08:22', '2022-03-29 04:13:09', NULL),
(116, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #5', '100-silk-digital-print-scarve-8602-prn-5', '', '8602 PRN #5', '1637644186.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:09:46', '2022-03-29 04:13:09', NULL),
(117, 3, '100 % SILK DIGITAL PRINT SCARVE', ' 8602 PRN #6', '100-silk-digital-print-scarve-8602-prn-6', '', ' 8602 PRN #6', '1637644434.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:13:54', '2022-03-29 04:13:09', NULL),
(118, 3, '100 % SILK DIGITAL PRINT SCARVE', ' 8602 PRN #13', '100-silk-digital-print-scarve-8602-prn-13', '', ' 8602 PRN #13', '1637644519.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:15:19', '2022-03-29 04:13:09', NULL),
(119, 5, 'CASHMERE BLEND REVERSIBLE SHAWL ', '8401 # 9500', 'cashmere-blend-reversible-shawl-8401-9500', '', '8401 # 9500', '1637644948.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:22:28', '2022-03-29 04:13:09', NULL),
(120, 5, 'CASHMERE BLEND REVERSIBLE SHAWL ', '8401 # 9505', 'cashmere-blend-reversible-shawl-8401-9505', '', '8401 # 9505', '1637645097.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:24:57', '2022-03-29 04:13:09', NULL),
(121, 5, 'CASHMERE BLEND REVERSIBLE SHAWL ', '8401 #9309', 'cashmere-blend-reversible-shawl-8401-9309', '', '8401 #9309', '1637645274.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:27:54', '2022-03-29 04:13:09', NULL),
(122, 5, 'CASHMERE BLEND REVERSIBLE SHAWL ', '8401 #ZZ 06', 'cashmere-blend-reversible-shawl-8401-zz-06', '', '8401 #ZZ 06', '1637645341.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:29:01', '2022-03-29 04:13:09', NULL),
(123, 4, 'CASHMERE/SILK BLEND REVERSIBLE SCARVE', ' 8402', 'cashmeresilk-blend-reversible-scarve-8402', '', ' 8402', '1637646277.jpeg', '72', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:44:37', '2022-03-29 04:13:09', NULL),
(124, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE (2)', 'INFINITY SCARVE (2)', 'cashmeresilk-blend-infinity-scarve-2', '', 'INFINITY SCARVE (2)', '1637646537.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:48:57', '2022-03-29 04:13:09', NULL),
(125, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE (3)', 'INFINITY SCARVE (3)', 'cashmeresilk-blend-infinity-scarve-3', '', 'INFINITY SCARVE (3)', '1637646688.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:51:28', '2022-03-29 04:13:09', NULL),
(126, 7, 'CASHMERE/SILK BLEND ', 'INFINITY SCARVE (4)', 'cashmeresilk-blend-infinity-scarve-4', '', 'INFINITY SCARVE (4)', '1637646768.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:52:48', '2022-03-29 04:13:10', NULL),
(127, 7, 'CASHMERE/SILK BLEND ', 'INFINITY SCARVE (5)', 'cashmeresilk-blend-infinity-scarve-5', '', 'INFINITY SCARVE (5)', '1637646861.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 11:54:21', '2022-03-29 04:13:10', NULL),
(128, 8, 'CASHMERE BLEND ANTIQUE DESIGN HAND-EMBROIDERY SHAWL ', '8401 EMB # 1', 'cashmere-blend-antique-design-hand-embroidery-shawl-8401-emb-1', '', '8401 EMB # 1', '1637647216.jpeg', '45', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 12:00:16', '2022-03-29 04:13:10', NULL),
(129, 8, 'CASHMERE BLEND ANTIQUE DESIGN HAND-EMBROIDERY SHAWL', ' 8401 EMB #2', 'cashmere-blend-antique-design-hand-embroidery-shawl-8401-emb-2', '', ' 8401 EMB #2', '1637647283.jpeg', '45', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 12:01:23', '2022-03-29 04:13:10', NULL),
(130, 8, 'CASHMERE BLEND ANTIQUE DESIGN HAND-EMBROIDERY SHAWL ', '8401 EMB #3', 'cashmere-blend-antique-design-hand-embroidery-shawl-8401-emb-3', '', '8401 EMB #3', '1637648703.jpeg', '45', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 12:25:03', '2022-03-29 04:13:10', NULL),
(131, 8, 'CASHMERE BLEND ANTIQUE DESIGN HAND-EMBROIDERY SHAWL ', '8401 EMB #4', 'cashmere-blend-antique-design-hand-embroidery-shawl-8401-emb-4', '', '8401 EMB #4', '1637648850.jpeg', '45', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 12:27:30', '2022-03-29 04:13:10', NULL),
(132, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL ', '8401 A #10', 'cashmere-blend-antique-design-shawl-8401-a-10', '', '8401 A #10', '1637649799.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 12:43:19', '2022-03-29 04:13:10', NULL),
(133, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL ', '8401 A #74', 'cashmere-blend-antique-design-shawl-8401-a-74', '', '8401 A #74', '1637649908.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 12:45:08', '2022-03-29 04:13:10', NULL),
(134, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL ', '8401 A #81', 'cashmere-blend-antique-design-shawl-8401-a-81', '', '8401 A #81', '1637650413.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 12:53:33', '2022-03-29 04:13:10', NULL),
(135, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL ', '8401 A #82', 'cashmere-blend-antique-design-shawl-8401-a-82', '', '8401 A #82', '1637650488.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 12:54:48', '2022-03-29 04:13:10', NULL),
(136, 10, 'CASHMERE INFINITY SCARVE ', 'INF PCS #5', 'cashmere-infinity-scarve-inf-pcs-5', '', 'INF PCS #5', '1637652216.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 13:23:36', '2022-03-29 04:13:10', NULL),
(137, 10, 'CASHMERE INFINITY SCARVE ', 'INF PCS #8', 'cashmere-infinity-scarve-inf-pcs-8', '', 'INF PCS #8', '1637652363.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 13:26:03', '2022-03-29 04:13:10', NULL),
(138, 10, 'CASHMERE INFINITY SCARVE', ' INF PSC # (35)', 'cashmere-infinity-scarve-inf-psc-35', '', ' INF PSC # (35)', '1637652877.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 13:34:37', '2022-03-29 04:13:11', NULL),
(139, 10, 'CASHMERE INFINITY SCARVE ', 'INF PSC # (36) ', 'cashmere-infinity-scarve-inf-psc-36', '', 'INF PSC # (36) ', '1637653003.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 13:36:43', '2022-03-29 04:13:11', NULL),
(140, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #271', 'silk-blend-lycra-scarve-8402-ly-271', '', '8402 LY #271', '1637664076.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 16:41:16', '2022-03-29 04:13:11', NULL),
(141, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #274', 'silk-blend-lycra-scarve-8402-ly-274', '', '8402 LY #274', '1637664225.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 16:43:45', '2022-03-29 04:13:11', NULL),
(142, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY 207', 'silk-blend-lycra-scarve-8402-ly-207', '', '8402 LY 207', '1637664387.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 16:46:27', '2022-03-29 04:13:11', NULL),
(143, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY 210', 'silk-blend-lycra-scarve-8402-ly-210', '', '8402 LY 210', '1637665138.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 16:58:58', '2022-03-29 04:13:11', NULL),
(144, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY 261', 'silk-blend-lycra-scarve-8402-ly-261', '', '8402 LY 261', '1637665326.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 17:02:06', '2022-03-29 04:13:11', NULL),
(145, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY 262', 'silk-blend-lycra-scarve-8402-ly-262', '', '8402 LY 262', '1637665426.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-23 17:03:46', '2022-03-29 04:13:11', NULL),
(146, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY 263', 'silk-blend-lycra-scarve-8402-ly-263', '', '8402 LY 263', '1637736195.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 12:43:15', '2022-03-29 04:13:11', NULL),
(147, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #275', 'silk-blend-lycra-scarve-8402ly-275', '', '8402LY #275', '1637737135.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 12:58:55', '2022-03-29 04:13:11', NULL),
(148, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-30', 'silk-blend-lycra-scarve-8402ly-30', '', '8402LY-30', '1637737287.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 13:01:27', '2022-03-29 04:13:11', NULL),
(149, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-62', 'silk-blend-lycra-scarve-8402ly-62', '', '8402LY-62', '1637737459.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 13:04:19', '2022-03-29 04:13:11', NULL),
(150, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-127', 'silk-blend-lycra-scarve-8402ly-127', '', '8402LY-127', '1637738622.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 13:23:42', '2022-03-29 04:13:12', NULL),
(151, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-129', 'silk-blend-lycra-scarve-8402ly-129', '', '8402LY-129', '1637738886.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 13:28:06', '2022-03-29 04:13:12', NULL),
(152, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-132', 'silk-blend-lycra-scarve-8402ly-132', '', '8402LY-132', '1637741526.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 14:12:06', '2022-03-29 04:13:12', NULL),
(153, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-141', 'silk-blend-lycra-scarve-8402ly-141', '', '8402LY-141', '1637741660.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 14:14:20', '2022-03-29 04:13:12', NULL),
(154, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-147', 'silk-blend-lycra-scarve-8402ly-147', '', '8402LY-147', '1637742068.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 14:21:08', '2022-03-29 04:13:12', NULL),
(156, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-149', 'silk-blend-lycra-scarve-8402ly-149', '', '8402LY-149', '1637744487.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 15:01:27', '2022-03-29 04:13:12', NULL),
(157, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-154', 'silk-blend-lycra-scarve-8402ly-154', '', '8402LY-154', '1637744638.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 15:03:58', '2022-03-29 04:13:12', NULL),
(158, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-159', 'silk-blend-lycra-scarve-8402ly-159', '', '8402LY-159', '1637744711.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 15:05:11', '2022-03-29 04:13:12', NULL),
(159, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-176', 'silk-blend-lycra-scarve-8402ly-176', '', '8402LY-176', '1637744790.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 15:06:30', '2022-03-29 04:13:12', NULL),
(160, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-180', 'silk-blend-lycra-scarve-8402ly-180', '', '8402LY-180', '1637745024.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 15:10:24', '2022-03-29 04:13:12', NULL),
(161, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY-185', 'silk-blend-lycra-scarve-8402ly-185', '', '8402LY-185', '1637745175.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-24 15:12:55', '2022-03-29 04:13:12', NULL),
(162, 1, 'SILK BLEND LYCRA SCARVE', ' 8402 LY # (306)', 'silk-blend-lycra-scarve-8402-ly-306', '', ' 8402 LY # (306)', '1637916976.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 14:56:16', '2022-03-29 04:13:12', NULL),
(163, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY # (308)', 'silk-blend-lycra-scarve-8402-ly-308', '', '8402 LY # (308)', '1637917092.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 14:58:12', '2022-03-29 04:13:12', NULL),
(164, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY # (309) ', 'silk-blend-lycra-scarve-8402-ly-309', '', '8402 LY # (309) ', '1637918223.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:17:03', '2022-03-29 04:13:12', NULL),
(165, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY # (311)', 'silk-blend-lycra-scarve-8402-ly-311', '', '8402 LY # (311)', '1637918307.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:18:27', '2022-03-29 04:13:12', NULL),
(166, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY # (315)', 'silk-blend-lycra-scarve-8402-ly-315', '', '8402 LY # (315)', '1637918539.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:22:19', '2022-03-29 04:13:12', NULL),
(167, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY # (320)', 'silk-blend-lycra-scarve-8402-ly-320', '', '8402 LY # (320)', '1637918742.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:25:42', '2022-03-29 04:13:13', NULL),
(168, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY # (329)', 'silk-blend-lycra-scarve-8402-ly-329', '', '8402 LY # (329)', '1637918885.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:28:05', '2022-03-29 04:13:13', NULL),
(169, 1, 'SILK BLEND LYCRA SCARVE ', '8402 \r\nLY # (376)', 'silk-blend-lycra-scarve-8402-ly-376', '', '8402 \r\nLY # (376)', '1637919184.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:33:04', '2022-03-29 04:13:13', NULL),
(170, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY # (379)', 'silk-blend-lycra-scarve-8402-ly-379', '', '8402 LY # (379)', '1637919348.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:35:48', '2022-03-29 04:13:13', NULL),
(171, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY # (386)', 'silk-blend-lycra-scarve-8402-ly-386', '', '8402 LY # (386)', '1637920224.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:50:24', '2022-03-29 04:13:13', NULL),
(172, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #278', 'silk-blend-lycra-scarve-8402-ly-278', '', '8402 LY #278', '1637920498.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:54:58', '2022-03-29 04:13:13', NULL),
(173, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #283', 'silk-blend-lycra-scarve-8402-ly-283', '', '8402 LY #283', '1637920616.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:56:56', '2022-03-29 04:13:13', NULL),
(174, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #286', 'silk-blend-lycra-scarve-8402-ly-286', '', '8402 LY #286', '1637920669.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:57:49', '2022-03-29 04:13:13', NULL),
(175, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #287', 'silk-blend-lycra-scarve-8402-ly-287', '', '8402 LY #287', '1637920743.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 15:59:03', '2022-03-29 04:13:13', NULL),
(176, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #288', 'silk-blend-lycra-scarve-8402-ly-288', '', '8402 LY #288', '1637920890.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 16:01:30', '2022-03-29 04:13:14', NULL),
(177, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #384', 'silk-blend-lycra-scarve-8402-ly-384', '', '8402 LY #384', '1637921029.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 16:03:49', '2022-03-29 04:13:14', NULL),
(178, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #401', 'silk-blend-lycra-scarve-8402-ly-401', '', '8402 LY #401', '1637921072.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 16:04:32', '2022-03-29 04:13:14', NULL),
(179, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #402', 'silk-blend-lycra-scarve-8402-ly-402', '', '8402 LY #402', '1637925101.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:11:41', '2022-03-29 04:13:14', NULL),
(180, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #403', 'silk-blend-lycra-scarve-8402-ly-403', '', '8402 LY #403', '1637925314.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:15:14', '2022-03-29 04:13:14', NULL),
(181, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #406', 'silk-blend-lycra-scarve-8402-ly-406', '', '8402 LY #406', '1637925385.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:16:25', '2022-03-29 04:13:14', NULL),
(182, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #410', 'silk-blend-lycra-scarve-8402-ly-410', '', '8402 LY #410', '1637926107.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:28:27', '2022-03-29 04:13:14', NULL),
(183, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #450', 'silk-blend-lycra-scarve-8402-ly-450', '', '8402 LY #450', '1637926231.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:30:31', '2022-03-29 04:13:14', NULL),
(184, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #451', 'silk-blend-lycra-scarve-8402-ly-451', '', '8402 LY #451', '1637926300.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:31:40', '2022-03-29 04:13:14', NULL),
(185, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #453', 'silk-blend-lycra-scarve-8402-ly-453', '', '8402 LY #453', '1637926388.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:33:08', '2022-03-29 04:13:14', NULL),
(186, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #454', 'silk-blend-lycra-scarve-8402-ly-454', '', '8402 LY #454', '1637926459.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:34:19', '2022-03-29 04:13:15', NULL),
(187, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #277', 'silk-blend-lycra-scarve-8402ly-277', '', '8402LY #277', '1637926504.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-26 17:35:04', '2022-03-29 04:13:15', NULL),
(188, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #455', 'silk-blend-lycra-scarve-8402-ly-455', '', '8402 LY #455', '1638263246.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, '1638263246_8402 LY #455.jpg', '2021-11-30 15:07:26', '2022-03-29 04:13:15', NULL),
(189, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #457', 'silk-blend-lycra-scarve-8402-ly-457', '', '8402 LY #457', '1638263496.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-30 15:11:36', '2022-03-29 04:13:15', NULL),
(190, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY #458', 'silk-blend-lycra-scarve-8402-ly-458', '', '8402 LY #458', '1638263668.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-30 15:14:28', '2022-03-29 04:13:15', NULL),
(191, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #511', 'silk-blend-lycra-scarve-8402ly-511', '', '8402LY - #511', '1638265641.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-11-30 15:47:21', '2022-03-29 04:13:15', NULL),
(192, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #514', 'silk-blend-lycra-scarve-8402ly-514', '', '8402LY - #514', '1638335450.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 11:10:50', '2022-03-29 04:13:15', NULL),
(193, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #515', 'silk-blend-lycra-scarve-8402ly-515', '', '8402LY - #515', '1638336146.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 11:22:26', '2022-03-29 04:13:15', NULL),
(194, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #516', 'silk-blend-lycra-scarve-8402ly-516', '', '8402LY - #516', '1638336485.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 11:28:05', '2022-03-29 04:13:15', NULL),
(195, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #517', 'silk-blend-lycra-scarve-8402ly-517', '', '8402LY - #517', '1638336626.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 11:30:26', '2022-03-29 04:13:15', NULL),
(196, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #518', 'silk-blend-lycra-scarve-8402ly-518', '', '8402LY - #518', '1638336822.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 11:33:42', '2022-03-29 04:13:15', NULL),
(197, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #519', 'silk-blend-lycra-scarve-8402ly-519', '', '8402LY - #519', '1638336975.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 11:36:15', '2022-03-29 04:13:16', NULL),
(198, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #520', 'silk-blend-lycra-scarve-8402ly-520', '', '8402LY - #520', '1638337311.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 11:41:51', '2022-03-29 04:13:16', NULL),
(199, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #521', 'silk-blend-lycra-scarve-8402ly-521', '', '8402LY - #521', '1638337404.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 11:43:24', '2022-03-29 04:13:16', NULL),
(200, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #522', 'silk-blend-lycra-scarve-8402ly-522', '', '8402LY - #522', '1638338478.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:01:18', '2022-03-29 04:13:16', NULL),
(201, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #501', 'silk-blend-lycra-scarve-8402ly-501', '', '8402LY #501', '1638338539.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:02:19', '2022-03-29 04:13:16', NULL),
(202, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #502', 'silk-blend-lycra-scarve-8402ly-502', '', '8402LY #502', '1638338622.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:03:42', '2022-03-29 04:13:16', NULL),
(203, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #503', 'silk-blend-lycra-scarve-8402ly-503', '', '8402LY #503', '1638338687.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:04:47', '2022-03-29 04:13:16', NULL),
(204, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #504', 'silk-blend-lycra-scarve-8402ly-504', '', '8402LY #504', '1638338785.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:06:25', '2022-03-29 04:13:16', NULL),
(205, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #505', 'silk-blend-lycra-scarve-8402ly-505', '', '8402LY #505', '1638339147.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:12:27', '2022-03-29 04:13:17', NULL),
(206, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #506', 'silk-blend-lycra-scarve-8402ly-506', '', '8402LY #506', '1638340516.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:35:16', '2022-03-29 04:13:17', NULL),
(207, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #507', 'silk-blend-lycra-scarve-8402ly-507', '', '8402LY #507', '1638340576.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:36:16', '2022-03-29 04:13:17', NULL),
(208, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #508', 'silk-blend-lycra-scarve-8402ly-508', '', '8402LY #508', '1638340628.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:37:08', '2022-03-29 04:13:17', NULL),
(209, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #509', 'silk-blend-lycra-scarve-8402ly-509', '', '8402LY #509', '1638340995.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 12:43:15', '2022-03-29 04:13:17', NULL),
(210, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY #510', 'silk-blend-lycra-scarve-8402ly-510', '', '8402LY #510', '1638342423.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 13:07:03', '2022-03-29 04:13:17', NULL),
(211, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY- #512', 'silk-blend-lycra-scarve-8402ly-512', '', '8402LY- #512', '1638342696.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 13:11:36', '2022-03-29 04:13:17', NULL);
INSERT INTO `products` (`id`, `category_id`, `name`, `code`, `slug`, `description`, `short_desc`, `thumbnail`, `price`, `compare_price`, `quantity`, `status`, `order`, `meta_title`, `meta_description`, `meta_keywords`, `featured_products`, `popular_product`, `hot_deal`, `item`, `pdf_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(212, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY- #513', 'silk-blend-lycra-scarve-8402ly-513', '', '8402LY- #513', '1638342759.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 13:12:39', '2022-03-29 04:13:17', NULL),
(213, 1, 'SILK BLEND LYCRA SCARVE ', '8402 LY - #524', 'silk-blend-lycra-scarve-8402-ly-524', '', '8402 LY - #524', '1638351775.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 15:42:55', '2022-03-29 04:13:18', NULL),
(214, 1, 'SILK BLEND LYCRA SCARVE ', '8402LY - #523', 'silk-blend-lycra-scarve-8402ly-523', '', '8402LY - #523', '1638351900.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 15:45:00', '2022-03-29 04:13:18', NULL),
(215, 1, 'SILK BLEND LYCRA SCARVE ', '8402LYZZ #4', 'silk-blend-lycra-scarve-8402lyzz-4', '', '8402LYZZ #4', '1638352194.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 15:49:54', '2022-03-29 04:13:18', NULL),
(216, 1, 'SILK BLEND LYCRA SCARVE ', 'LY 525', 'silk-blend-lycra-scarve-ly-525', '', 'LY 525', '1638353042.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 16:04:02', '2022-03-29 04:13:18', NULL),
(217, 1, 'SILK BLEND LYCRA SCARVE ', 'LY 526', 'silk-blend-lycra-scarve-ly-526', '', 'LY 526', '1638353135.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 16:05:35', '2022-03-29 04:13:18', NULL),
(218, 1, 'SILK BLEND LYCRA SCARVE ', 'LY 527', 'silk-blend-lycra-scarve-ly-527', '', 'LY 527', '1638353201.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 16:06:41', '2022-03-29 04:13:18', NULL),
(219, 1, 'SILK BLEND LYCRA SCARVE ', 'LY 528', 'silk-blend-lycra-scarve-ly-528', '', 'LY 528', '1638353849.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 16:17:29', '2022-03-29 04:13:18', NULL),
(220, 1, 'SILK BLEND LYCRA SCARVE ', 'LY 529', 'silk-blend-lycra-scarve-ly-529', '', 'LY 529', '1638353912.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 16:18:32', '2022-03-29 04:13:18', NULL),
(221, 1, 'SILK BLEND LYCRA SCARVE ', 'LY 530', 'silk-blend-lycra-scarve-ly-530', '', 'LY 530', '1638353961.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 16:19:21', '2022-03-29 04:13:18', NULL),
(222, 1, 'SILK BLEND LYCRA SCARVE ', 'LY 531', 'silk-blend-lycra-scarve-ly-531', '', 'LY 531', '1638354052.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 16:20:52', '2022-03-29 04:13:18', NULL),
(223, 21, 'SILK BLEND LYCRA INFINITY SCARVE ', 'inf ly # 203', 'silk-blend-lycra-infinity-scarve-inf-ly-203', '', 'inf ly # 203', '1638356777.jpeg', '72', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 17:06:17', '2022-03-29 04:13:18', NULL),
(224, 21, 'SILK BLEND LYCRA INFINITY SCARVE ', 'INF-8402LY #205', 'silk-blend-lycra-infinity-scarve-inf-8402ly-205', '', 'INF-8402LY #205', '1638357096.jpeg', '72', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-01 17:11:36', '2022-03-29 04:13:18', NULL),
(225, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #18', '100-silk-digital-print-scarve-8602-prn-18', '', '8602 PRN #18', '1638514922.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 13:02:02', '2022-03-29 04:13:18', NULL),
(226, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #27', '100-silk-digital-print-scarve-8602-prn-27', '', '8602 PRN #27', '1638516000.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 13:20:00', '2022-03-29 04:13:18', NULL),
(227, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #31', '100-silk-digital-print-scarve-8602-prn-31', '', '8602 PRN #31', '1638516124.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 13:22:04', '2022-03-29 04:13:18', NULL),
(228, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #33', '100-silk-digital-print-scarve-8602-prn-33', '', '8602 PRN #33', '1638516224.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 13:23:44', '2022-03-29 04:13:18', NULL),
(229, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #34', '100-silk-digital-print-scarve-8602-prn-34', '', '8602 PRN #34', '1638517015.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 13:36:55', '2022-03-29 04:13:18', NULL),
(230, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #34', '100-silk-digital-print-scarve-8602-prn-34', '', '8602 PRN #34', '1638517087.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 13:38:07', '2022-03-29 04:13:18', NULL),
(231, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #36', '100-silk-digital-print-scarve-8602-prn-36', '', '8602 PRN #36', '1638518651.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:04:11', '2022-03-29 04:13:18', NULL),
(232, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #39', '100-silk-digital-print-scarve-8602-prn-39', '', '8602 PRN #39', '1638518755.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:05:55', '2022-03-29 04:13:19', NULL),
(233, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #40', '100-silk-digital-print-scarve-8602-prn-40', '', '8602 PRN #40', '1638518841.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:07:21', '2022-03-29 04:13:19', NULL),
(234, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #41', '100-silk-digital-print-scarve-8602-prn-41', '', '8602 PRN #41', '1638519129.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:12:09', '2022-03-29 04:13:19', NULL),
(235, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602 PRN #51', '100-silk-digital-print-scarve-8602-prn-51', '', '8602 PRN #51', '1638519232.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:13:52', '2022-03-29 04:13:19', NULL),
(236, 3, '100 % SILK DIGITAL PRINT SCARVE', ' 8602PRN - #12', '100-silk-digital-print-scarve-8602prn-12', '', ' 8602PRN - #12', '1638519479.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:17:59', '2022-03-29 04:13:19', NULL),
(237, 3, '100 % SILK DIGITAL PRINT SCARVE', ' 8602PRN - #47', '100-silk-digital-print-scarve-8602prn-47', '', ' 8602PRN - #47', '1638519660.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:21:00', '2022-03-29 04:13:19', NULL),
(238, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602PRN - #NEW 6', '100-silk-digital-print-scarve-8602prn-new-6', '', '8602PRN - #NEW 6', '1638519841.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:24:01', '2022-03-29 04:13:19', NULL),
(239, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602PRN- #22', '100-silk-digital-print-scarve-8602prn-22', '', '8602PRN- #22', '1638520647.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:37:27', '2022-03-29 04:13:19', NULL),
(240, 3, '100 % SILK DIGITAL PRINT SCARVE', ' 8602PRN- #23', '100-silk-digital-print-scarve-8602prn-23', '', ' 8602PRN- #23', '1638520745.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:39:05', '2022-03-29 04:13:19', NULL),
(241, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602PRN- #37', '100-silk-digital-print-scarve-8602prn-37', '', '8602PRN- #37', '1638520988.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:43:08', '2022-03-29 04:13:19', NULL),
(242, 3, '100 % SILK DIGITAL PRINT SCARVE', ' 8602PRN- #42', '100-silk-digital-print-scarve-8602prn-42', '', ' 8602PRN- #42', '1638521900.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 14:58:20', '2022-03-29 04:13:19', NULL),
(243, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602PRN- #43', '100-silk-digital-print-scarve-8602prn-43', '', '8602PRN- #43', '1638522263.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 15:04:23', '2022-03-29 04:13:20', NULL),
(244, 3, '100 % SILK DIGITAL PRINT SCARVE', ' 8602PRN- #44', '100-silk-digital-print-scarve-8602prn-44', '', ' 8602PRN- #44', '1638523333.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 15:22:13', '2022-03-29 04:13:20', NULL),
(245, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602PRN- #46', '100-silk-digital-print-scarve-8602prn-46', '', '8602PRN- #46', '1638523494.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 15:24:54', '2022-03-29 04:13:20', NULL),
(246, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602PRN- #49', '100-silk-digital-print-scarve-8602prn-49', '', '8602PRN- #49', '1638524539.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 15:42:19', '2022-03-29 04:13:20', NULL),
(247, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602PRN- #52', '100-silk-digital-print-scarve-8602prn-52', '', '8602PRN- #52', '1638525487.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 15:58:07', '2022-03-29 04:13:20', NULL),
(248, 3, '100 % SILK DIGITAL PRINT SCARVE ', '8602PRN- #53', '100-silk-digital-print-scarve-8602prn-53', '', '8602PRN- #53', '1638525785.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 16:03:05', '2022-03-29 04:13:20', NULL),
(249, 3, '100 % SILK DIGITAL PRINT SCARVE ', 'PRN #9', '100-silk-digital-print-scarve-prn-9', '', 'PRN #9', '1638525959.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-03 16:05:59', '2022-03-29 04:13:20', NULL),
(250, 5, 'CASHMERE BLEND REVERSIBLE ', 'SHAWL 8401 (9302)', 'cashmere-blend-reversible-shawl-8401-9302', '', 'SHAWL 8401 (9302)', '1638687208.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 12:53:28', '2022-03-29 04:13:20', NULL),
(251, 5, 'CASHMERE BLEND REVERSIBLE ', 'SHAWL 8401 (9407)', 'cashmere-blend-reversible-shawl-8401-9407', '', 'SHAWL 8401 (9407)', '1638688069.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 13:07:49', '2022-03-29 04:13:20', NULL),
(252, 5, 'CASHMERE BLEND REVERSIBLE', ' SHAWL 8401 (9408)', 'cashmere-blend-reversible-shawl-8401-9408', '', ' SHAWL 8401 (9408)', '1638691317.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 14:01:57', '2022-03-29 04:13:20', NULL),
(253, 5, 'CASHMERE BLEND REVERSIBLE', ' SHAWL 8401 (9410)', 'cashmere-blend-reversible-shawl-8401-9410', '', ' SHAWL 8401 (9410)', '1638691630.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 14:07:10', '2022-03-29 04:13:20', NULL),
(254, 5, 'CASHMERE BLEND REVERSIBLE ', 'SHAWL 8401 (9501.)', 'cashmere-blend-reversible-shawl-8401-9501', '', 'SHAWL 8401 (9501.)', '1638692014.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 14:13:34', '2022-03-29 04:13:20', NULL),
(255, 5, 'CASHMERE BLEND REVERSIBLE SHAWL ', '8401 ZZ 5', 'cashmere-blend-reversible-shawl-8401-zz-5', '', '8401 ZZ 5', '1638692391.jpeg', '14', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 14:19:12', '2022-03-29 04:13:21', NULL),
(256, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE (7)', 'INFINITY SCARVE (7)', 'cashmeresilk-blend-infinity-scarve-7', '', 'INFINITY SCARVE (7)', '1638697539.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 15:45:39', '2022-03-29 04:13:21', NULL),
(257, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE (8)', 'INFINITY SCARVE (8)', 'cashmeresilk-blend-infinity-scarve-8', '', 'INFINITY SCARVE (8)', '1638701450.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 16:50:50', '2022-03-29 04:13:21', NULL),
(258, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE (9)', 'INFINITY SCARVE (9)', 'cashmeresilk-blend-infinity-scarve-9', '', 'INFINITY SCARVE (9)', '1638701895.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 16:58:15', '2022-03-29 04:13:21', NULL),
(259, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE (10) ', 'INFINITY SCARVE (10)', 'cashmeresilk-blend-infinity-scarve-10', '', 'INFINITY SCARVE (10)', '1638702022.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 17:00:22', '2022-03-29 04:13:21', NULL),
(260, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE (11)', 'INFINITY SCARVE (11)', 'cashmeresilk-blend-infinity-scarve-11', '', 'INFINITY SCARVE (11)', '1638702415.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 17:06:55', '2022-03-29 04:13:21', NULL),
(261, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE (12)', 'INFINITY SCARVE (12)', 'cashmeresilk-blend-infinity-scarve-12', '', 'INFINITY SCARVE (12)', '1638705100.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-05 17:51:40', '2022-03-29 04:13:21', NULL),
(262, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 0', 'INFINITY SCARVE 0', 'cashmeresilk-blend-infinity-scarve-0', '', 'INFINITY SCARVE 0', '1638773275.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 12:47:55', '2022-03-29 04:13:21', NULL),
(263, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 1', 'INFINITY SCARVE 1', 'cashmeresilk-blend-infinity-scarve-1', '', 'INFINITY SCARVE 1', '1638773394.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 12:49:54', '2022-03-29 04:13:21', NULL),
(264, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 2', 'INFINITY SCARVE 2', 'cashmeresilk-blend-infinity-scarve-2', '', 'INFINITY SCARVE 2', '1638773663.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 12:54:23', '2022-03-29 04:13:21', NULL),
(265, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 3', 'INFINITY SCARVE 3', 'cashmeresilk-blend-infinity-scarve-3', '', 'INFINITY SCARVE 3', '1638773940.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 12:59:00', '2022-03-29 04:13:21', NULL),
(266, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 4', 'INFINITY SCARVE 4', 'cashmeresilk-blend-infinity-scarve-4', '', 'INFINITY SCARVE 4', '1638774085.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:01:25', '2022-03-29 04:13:21', NULL),
(267, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 5', 'INFINITY SCARVE 5', 'cashmeresilk-blend-infinity-scarve-5', '', 'INFINITY SCARVE 5', '1638774251.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:04:11', '2022-03-29 04:13:21', NULL),
(268, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 6', 'INFINITY SCARVE 6', 'cashmeresilk-blend-infinity-scarve-6', '', 'INFINITY SCARVE 6', '1638774351.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:05:51', '2022-03-29 04:13:21', NULL),
(269, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 7', 'INFINITY SCARVE 7', 'cashmeresilk-blend-infinity-scarve-7', '', 'INFINITY SCARVE 7', '1638774452.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:07:32', '2022-03-29 04:13:22', NULL),
(270, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 8', 'INFINITY SCARVE 8', 'cashmeresilk-blend-infinity-scarve-8', '', 'INFINITY SCARVE 8', '1638776059.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:34:19', '2022-03-29 04:13:22', NULL),
(271, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 10', 'INFINITY SCARVE 10', 'cashmeresilk-blend-infinity-scarve-10', '', 'INFINITY SCARVE 10', '1638776234.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:37:14', '2022-03-29 04:13:22', NULL),
(272, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 11', 'INFINITY SCARVE 11', 'cashmeresilk-blend-infinity-scarve-11', '', 'INFINITY SCARVE 11', '1638776439.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:40:39', '2022-03-29 04:13:22', NULL),
(273, 7, 'CASHMERE/SILK BLEND INFINITY SCARVE 12', 'INFINITY SCARVE 12', 'cashmeresilk-blend-infinity-scarve-12', '', 'INFINITY SCARVE 12', '1638776648.jpeg', '120', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:44:08', '2022-03-29 04:13:22', NULL),
(274, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401 A #83', ' 8401 A #83', 'cashmere-blend-antique-design-shawl-8401-a-83', '', ' 8401 A #83', '1638777435.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 13:57:15', '2022-03-29 04:13:22', NULL),
(275, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401 A #91', '8401 A #91', 'cashmere-blend-antique-design-shawl-8401-a-91', '', '8401 A #91', '1638779604.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 14:33:24', '2022-03-29 04:13:22', NULL),
(276, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401 A (93)', '8401 A (93)', 'cashmere-blend-antique-design-shawl-8401-a-93', '', '8401 A (93)', '1638779843.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 14:37:23', '2022-03-29 04:13:22', NULL),
(277, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401 A (94)', '8401 A (94)', 'cashmere-blend-antique-design-shawl-8401-a-94', '', '8401 A (94)', '1638780166.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 14:42:46', '2022-03-29 04:13:22', NULL),
(278, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401 A 95', '8401 A 95', 'cashmere-blend-antique-design-shawl-8401-a-95', '', '8401 A 95', '1638780918.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 14:55:18', '2022-03-29 04:13:22', NULL),
(279, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401A #96 ', '8401A #96', 'cashmere-blend-antique-design-shawl-8401a-96', '', '8401A #96', '1638781173.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 14:59:33', '2022-03-29 04:13:23', NULL),
(280, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401A #97', '8401A #97', 'cashmere-blend-antique-design-shawl-8401a-97', '', '8401A #97', '1638781406.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:03:26', '2022-03-29 04:13:23', NULL),
(281, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401A#67', '8401A#67', 'cashmere-blend-antique-design-shawl-8401a67', '', '8401A#67', '1638781584.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:06:24', '2022-03-29 04:13:23', NULL),
(282, 9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL 8401A#71', ' 8401A#71', 'cashmere-blend-antique-design-shawl-8401a71', '', ' 8401A#71', '1638781699.jpeg', '21', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:08:19', '2022-03-29 04:13:23', NULL),
(283, 10, 'CASHMERE INFINITY SCARVE ', 'INF PSC # (39)', 'cashmere-infinity-scarve-inf-psc-39', '', 'INF PSC # (39)', '1638783927.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:45:27', '2022-03-29 04:13:23', NULL),
(284, 10, 'CASHMERE INFINITY SCARVE ', 'INF PSC # (40)', 'cashmere-infinity-scarve-inf-psc-40', '', 'INF PSC # (40)', '1638784033.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:47:13', '2022-03-29 04:13:23', NULL),
(285, 10, 'CASHMERE INFINITY SCARVE', ' INF PSC # (43)', 'cashmere-infinity-scarve-inf-psc-43', '', ' INF PSC # (43)', '1638784137.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:48:57', '2022-03-29 04:13:23', NULL),
(286, 10, 'CASHMERE INFINITY SCARVE ', 'INF PSC # (44)', 'cashmere-infinity-scarve-inf-psc-44', '', 'INF PSC # (44)', '1638784256.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:50:56', '2022-03-29 04:13:23', NULL),
(287, 10, 'CASHMERE INFINITY SCARVE ', 'INF PSC # (45)', 'cashmere-infinity-scarve-inf-psc-45', '', 'INF PSC # (45)', '1638784370.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:52:50', '2022-03-29 04:13:23', NULL),
(288, 10, 'CASHMERE INFINITY SCARVE ', 'INF PSC # (46)', 'cashmere-infinity-scarve-inf-psc-46', '', 'INF PSC # (46)', '1638784428.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:53:48', '2022-03-29 04:13:23', NULL),
(289, 10, 'CASHMERE INFINITY SCARVE', ' INF PSC # (47)', 'cashmere-infinity-scarve-inf-psc-47', '', ' INF PSC # (47)', '1638784551.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:55:51', '2022-03-29 04:13:23', NULL),
(290, 10, 'CASHMERE INFINITY SCARVE ', 'INF PSC # (52)', 'cashmere-infinity-scarve-inf-psc-52', '', 'INF PSC # (52)', '1638784628.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 15:57:08', '2022-03-29 04:13:24', NULL),
(291, 10, 'CASHMERE INFINITY SCARVE', ' INF PSC # 65', 'cashmere-infinity-scarve-inf-psc-65', '', ' INF PSC # 65', '1638785198.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-06 16:06:38', '2022-03-29 04:13:24', NULL),
(292, 11, 'CASHMERE SCARVE ', 'PSC-#1', 'cashmere-scarve-psc-1', '', 'PSC-#1', '1639049275.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:42:22', '2022-03-29 04:13:24', NULL),
(293, 11, 'CASHMERE SCARVE ', 'PSC-#3', 'cashmere-scarve-psc-3', '', 'PSC-#3', NULL, '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:43:03', '2022-03-29 04:13:24', NULL),
(294, 11, 'CASHMERE SCARVE ', 'PSC-#5', 'cashmere-scarve-psc-5', '', 'PSC-#5', '1638866751.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:45:51', '2022-03-29 04:13:24', NULL),
(295, 11, 'CASHMERE SCARVE ', 'PSC-#7', 'cashmere-scarve-psc-7', '', 'PSC-#7', '1638866892.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:48:12', '2022-03-29 04:13:24', NULL),
(296, 11, 'CASHMERE SCARVE ', 'PSC-#8', 'cashmere-scarve-psc-8', '', 'PSC-#8', '1638866979.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:49:39', '2022-03-29 04:13:24', NULL),
(297, 11, 'CASHMERE SCARVE ', 'PSC-#10', 'cashmere-scarve-psc-10', '', 'PSC-#10', '1638867042.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:50:42', '2022-03-29 04:13:24', NULL),
(298, 11, 'CASHMERE SCARVE', ' PSC-#11', 'cashmere-scarve-psc-11', '', ' PSC-#11', '1638867155.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:52:35', '2022-03-29 04:13:24', NULL),
(299, 11, 'CASHMERE SCARVE ', 'PSC-#13', 'cashmere-scarve-psc-13', '', 'PSC-#13', '1638867326.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:55:26', '2022-03-29 04:13:24', NULL),
(300, 11, 'CASHMERE SCARVE ', 'PSC-(14)', 'cashmere-scarve-psc-14', '', 'PSC-(14)', '1638867412.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:56:52', '2022-03-29 04:13:24', NULL),
(301, 11, 'CASHMERE SCARVE ', 'PSC-(35)', 'cashmere-scarve-psc-35', '', 'PSC-(35)', '1638867570.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 14:59:30', '2022-03-29 04:13:24', NULL),
(302, 11, 'CASHMERE SCARVE ', 'PSC-(36)', 'cashmere-scarve-psc-36', '', 'PSC-(36)', '1638868861.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 15:21:01', '2022-03-29 04:13:24', NULL),
(303, 11, 'CASHMERE SCARVE ', 'PSC-(37)', 'cashmere-scarve-psc-37', '', 'PSC-(37)', '1638869292.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 15:28:12', '2022-03-29 04:13:24', NULL),
(304, 11, 'CASHMERE SCARVE', ' PSC-(38)', 'cashmere-scarve-psc-38', '', ' PSC-(38)', '1638869680.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 15:34:40', '2022-03-29 04:13:24', NULL),
(305, 11, 'CASHMERE SCARVE ', 'PSC-(39)', 'cashmere-scarve-psc-39', '', 'PSC-(39)', '1638869744.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 15:35:44', '2022-03-29 04:13:24', NULL),
(306, 11, 'CASHMERE SCARVE ', 'PSC-(40)', 'cashmere-scarve-psc-40', '', 'PSC-(40)', '1638869804.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 15:36:44', '2022-03-29 04:13:24', NULL),
(307, 11, 'CASHMERE SCARVE ', 'PSC-(42)', 'cashmere-scarve-psc-42', '', 'PSC-(42)', '1638869879.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 15:37:59', '2022-03-29 04:13:24', NULL),
(308, 11, 'CASHMERE SCARVE', ' PSC-(43)', 'cashmere-scarve-psc-43', '', ' PSC-(43)', '1638869959.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 15:39:19', '2022-03-29 04:13:25', NULL),
(309, 11, 'CASHMERE SCARVE', ' PSC-(44)', 'cashmere-scarve-psc-44', '', ' PSC-(44)', '1638871282.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:01:22', '2022-03-29 04:13:25', NULL),
(310, 11, 'CASHMERE SCARVE', ' PSC-(45)', 'cashmere-scarve-psc-45', '', ' PSC-(45)', '1638871340.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:02:20', '2022-03-29 04:13:25', NULL),
(311, 11, 'CASHMERE SCARVE ', 'PSC-(46)', 'cashmere-scarve-psc-46', '', 'PSC-(46)', '1638871459.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:04:19', '2022-03-29 04:13:25', NULL),
(312, 11, 'CASHMERE SCARVE ', 'PSC-(47)', 'cashmere-scarve-psc-47', '', 'PSC-(47)', '1638873129.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:32:09', '2022-03-29 04:13:25', NULL),
(313, 11, 'CASHMERE SCARVE', ' PSC-(49)', 'cashmere-scarve-psc-49', '', ' PSC-(49)', '1638873193.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:33:13', '2022-03-29 04:13:25', NULL),
(314, 11, 'CASHMERE SCARVE ', 'PSC-(51)', 'cashmere-scarve-psc-51', '', 'PSC-(51)', '1638873336.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:35:36', '2022-03-29 04:13:25', NULL),
(315, 11, 'CASHMERE SCARVE ', 'PSC-(52)', 'cashmere-scarve-psc-52', '', 'PSC-(52)', '1638873465.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:37:45', '2022-03-29 04:13:25', NULL),
(316, 11, 'CASHMERE SCARVE ', 'PSC-(53)', 'cashmere-scarve-psc-53', '', 'PSC-(53)', '1638873772.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:42:52', '2022-03-29 04:13:25', NULL),
(317, 11, 'CASHMERE SCARVE', ' PSC-(54)', 'cashmere-scarve-psc-54', '', ' PSC-(54)', '1638874066.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:47:46', '2022-03-29 04:13:25', NULL),
(318, 11, 'CASHMERE SCARVE', ' PSC-(57)', 'cashmere-scarve-psc-57', '', ' PSC-(57)', '1638874192.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 16:49:52', '2022-03-29 04:13:25', NULL),
(319, 11, 'CASHMERE SCARVE ', 'PSC-(58)', 'cashmere-scarve-psc-58', '', 'PSC-(58)', '1638875917.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 17:18:37', '2022-03-29 04:13:25', NULL),
(320, 11, 'CASHMERE SCARVE ', 'PSC-(59)', 'cashmere-scarve-psc-59', '', 'PSC-(59)', '1638876005.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-07 17:20:05', '2022-03-29 04:13:25', NULL),
(321, 22, 'SOLID CASHMERE SHAWL 633 Top Row 1 -_ 8 Bottom Row 9 -_ 16', '633 Top Row 1 -_ 8 Bottom Row 9 -_ 16', 'solid-cashmere-shawl-633-top-row-1-8-bottom-row-9-16', '', '633 Top Row 1 -_ 8 Bottom Row 9 -_ 16', '1639120224.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-10 13:10:24', '2022-03-29 04:13:26', NULL),
(322, 22, 'SOLID CASHMERE SHAWL ', '633 Top Row 17 -_ 24 Bottom Row 25 -_ 32', 'solid-cashmere-shawl-633-top-row-17-24-bottom-row-25-32', '', '633 Top Row 17 -_ 24 Bottom Row 25 -_ 32', '1639120392.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-10 13:13:12', '2022-03-29 04:13:26', NULL),
(323, 22, 'SOLID CASHMERE SHAW', 'L 633-s #2', 'solid-cashmere-shawl-633-s-2', '', 'L 633-s #2', '1639120544.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-10 13:15:44', '2022-03-29 04:13:26', NULL),
(324, 12, 'SOLID CASHMERE SCARVE ', '633 Top Row 1 -_ 8 Bottom Row 9 -_ 16', 'solid-cashmere-scarve-633-top-row-1-8-bottom-row-9-16', '', '633 Top Row 1 -_ 8 Bottom Row 9 -_ 16', '1639638238.jpeg', '10', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:03:58', '2022-03-29 04:13:26', NULL),
(325, 12, 'SOLID CASHMERE SCARVE', ' 633 Top Row 17 -_ 24 Bottom Row 25 -_ 32', 'solid-cashmere-scarve-633-top-row-17-24-bottom-row-25-32', '', ' 633 Top Row 17 -_ 24 Bottom Row 25 -_ 32', '1639638552.jpeg', '10', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:09:12', '2022-03-29 04:13:26', NULL),
(326, 12, 'SOLID CASHMERE SCARVE ', '633-s #2', 'solid-cashmere-scarve-633-s-2', '', '633-s #2', '1639638701.jpeg', '10', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:11:41', '2022-03-29 04:13:26', NULL),
(327, 11, 'CASHMERE SCARVE ', 'INF-MSC-#605-1', 'cashmere-scarve-inf-msc-605-1', '', 'INF-MSC-#605-1', '1639640485.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:41:25', '2022-03-29 04:13:26', NULL),
(328, 11, 'CASHMERE SCARVE ', 'INF-MSC-#4340', 'cashmere-scarve-inf-msc-4340', '', 'INF-MSC-#4340', '1639640691.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:44:51', '2022-03-29 04:13:26', NULL),
(329, 11, 'CASHMERE SCARVE  ', 'INF-MSC-#4350', 'cashmere-scarve-inf-msc-4350', '', 'INF-MSC-#4350', '1639640739.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:45:39', '2022-03-29 04:13:27', NULL),
(330, 11, 'CASHMERE SCARVE ', 'inf-msc-(95)', 'cashmere-scarve-inf-msc-95', '', 'inf-msc-(95)', '1639640874.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:47:54', '2022-03-29 04:13:27', NULL),
(331, 11, 'CASHMERE SCARVE ', 'inf-msc-(605-2)', 'cashmere-scarve-inf-msc-605-2', '', 'inf-msc-(605-2)', '1639640984.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:49:44', '2022-03-29 04:13:27', NULL),
(332, 11, 'CASHMERE SCARVE ', 'inf-msc-(605-3)', 'cashmere-scarve-inf-msc-605-3', '', 'inf-msc-(605-3)', '1639641153.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 13:52:33', '2022-03-29 04:13:27', NULL),
(333, 11, 'CASHMERE SCARVE ', 'inf-msc-(605-4)', 'cashmere-scarve-inf-msc-605-4', '', 'inf-msc-(605-4)', '1639643252.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:27:32', '2022-03-29 04:13:27', NULL),
(334, 11, 'CASHMERE SCARVE ', 'inf-msc-(660)', 'cashmere-scarve-inf-msc-660', '', 'inf-msc-(660)', '1639643461.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:31:01', '2022-03-29 04:13:27', NULL),
(335, 11, 'CASHMERE SCARVE ', 'inf-msc-(662)', 'cashmere-scarve-inf-msc-662', '', 'inf-msc-(662)', '1639643551.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:32:31', '2022-03-29 04:13:27', NULL),
(336, 11, 'CASHMERE SCARVE ', 'inf-msc-661', 'cashmere-scarve-inf-msc-661', '', 'inf-msc-661', '1639643714.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:35:14', '2022-03-29 04:13:27', NULL),
(337, 11, 'CASHMERE SCARVE ', 'MSC 95', 'cashmere-scarve-msc-95', '', 'MSC 95', '1639644077.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:41:17', '2022-03-29 04:13:27', NULL),
(338, 11, 'CASHMERE SCARVE ', 'MSC 605-1', 'cashmere-scarve-msc-605-1', '', 'MSC 605-1', '1639644129.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:42:09', '2022-03-29 04:13:27', NULL),
(339, 11, 'CASHMERE SCARVE ', 'MSC 605-2', 'cashmere-scarve-msc-605-2', '', 'MSC 605-2', '1639644788.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:53:08', '2022-03-29 04:13:27', NULL),
(340, 11, 'CASHMERE SCARVE ', 'MSC 605-3', 'cashmere-scarve-msc-605-3', '', 'MSC 605-3', '1639644856.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:54:16', '2022-03-29 04:13:27', NULL),
(341, 11, 'CASHMERE SCARVE ', 'MSC 605-4', 'cashmere-scarve-msc-605-4', '', 'MSC 605-4', '1639644937.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:55:37', '2022-03-29 04:13:27', NULL),
(342, 11, 'CASHMERE SCARVE ', 'MSC 660', 'cashmere-scarve-msc-660', '', 'MSC 660', '1639645014.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:56:54', '2022-03-29 04:13:27', NULL),
(343, 11, 'CASHMERE SCARVE ', 'MSC 661', 'cashmere-scarve-msc-661', '', 'MSC 661', '1639645063.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:57:43', '2022-03-29 04:13:27', NULL),
(344, 11, 'CASHMERE SCARVE ', 'MSC 662', 'cashmere-scarve-msc-662', '', 'MSC 662', '1639645130.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 14:58:50', '2022-03-29 04:13:27', NULL),
(345, 11, 'CASHMERE SCARVE ', 'MSC 711', 'cashmere-scarve-msc-711', '', 'MSC 711', '1639645202.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:00:02', '2022-03-29 04:13:28', NULL),
(346, 11, 'CASHMERE SCARVE', ' MSC 713', 'cashmere-scarve-msc-713', '', ' MSC 713', '1639645357.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:02:37', '2022-03-29 04:13:28', NULL),
(347, 11, 'CASHMERE SCARVE ', 'MSC 776', 'cashmere-scarve-msc-776', '', 'MSC 776', '1639645410.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:03:30', '2022-03-29 04:13:28', NULL),
(348, 11, 'CASHMERE SCARVE ', 'MSC 777', 'cashmere-scarve-msc-777', '', 'MSC 777', '1639645701.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:08:21', '2022-03-29 04:13:28', NULL),
(349, 11, 'CASHMERE SCARVE ', 'MSC 779', 'cashmere-scarve-msc-779', '', 'MSC 779', '1639645748.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:09:08', '2022-03-29 04:13:28', NULL),
(350, 11, 'CASHMERE SCARVE', ' MSC 780-1', 'cashmere-scarve-msc-780-1', '', ' MSC 780-1', '1639645954.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:12:34', '2022-03-29 04:13:28', NULL),
(351, 11, 'CASHMERE SCARVE ', 'MSC 780-2', 'cashmere-scarve-msc-780-2', '', 'MSC 780-2', '1639646012.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:13:32', '2022-03-29 04:13:28', NULL),
(352, 11, 'CASHMERE SCARVE', ' MSC 4340', 'cashmere-scarve-msc-4340', '', ' MSC 4340', '1639646105.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:15:05', '2022-03-29 04:13:28', NULL),
(353, 11, 'CASHMERE SCARVE', ' MSC 4350', 'cashmere-scarve-msc-4350', '', ' MSC 4350', '1639646217.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:16:57', '2022-03-29 04:13:29', NULL),
(354, 11, 'CASHMERE SCARVE', ' MSC 4360', 'cashmere-scarve-msc-4360', '', ' MSC 4360', '1639646372.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 15:19:32', '2022-03-29 04:13:29', NULL),
(355, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '544', 'paisley-design-kani-weave-classic-shawl-544', '', '544', '1639649874.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 16:17:54', '2022-03-29 04:13:29', NULL),
(356, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '545', 'paisley-design-kani-weave-classic-shawl-545', '', '545', '1639651412.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 16:43:32', '2022-03-29 04:13:29', NULL),
(357, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '546', 'paisley-design-kani-weave-classic-shawl-546', '', '546', '1639651812.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 16:50:12', '2022-03-29 04:13:29', NULL),
(358, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '547', 'paisley-design-kani-weave-classic-shawl-547', '', '547', '1639652065.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 16:54:25', '2022-03-29 04:13:29', NULL),
(359, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '560', 'paisley-design-kani-weave-classic-shawl-560', '', '560', '1639652281.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 16:58:01', '2022-03-29 04:13:29', NULL),
(360, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '561', 'paisley-design-kani-weave-classic-shawl-561', '', '561', '1639652551.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 17:02:31', '2022-03-29 04:13:29', NULL),
(361, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '562', 'paisley-design-kani-weave-classic-shawl-562', '', '562', '1639653257.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 17:14:17', '2022-03-29 04:13:29', NULL),
(362, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - #501', 'paisley-design-kani-weave-classic-shawl-kani-501', '', 'Kani - #501', '1639653613.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 17:20:13', '2022-03-29 04:13:29', NULL),
(363, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - #507', 'paisley-design-kani-weave-classic-shawl-kani-507', '', 'Kani - #507', '1639654304.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-16 17:31:44', '2022-03-29 04:13:29', NULL),
(364, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - #520', 'paisley-design-kani-weave-classic-shawl-kani-520', '', 'Kani - #520', '1639897925.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 13:12:05', '2022-03-29 04:13:29', NULL),
(365, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - #522', 'paisley-design-kani-weave-classic-shawl-kani-522', '', 'Kani - #522', '1639898138.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 13:15:38', '2022-03-29 04:13:29', NULL),
(366, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - #532', 'paisley-design-kani-weave-classic-shawl-kani-532', '', 'Kani - #532', '1639898394.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 13:19:54', '2022-03-29 04:13:29', NULL),
(367, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - #536', 'paisley-design-kani-weave-classic-shawl-kani-536', '', 'Kani - #536', '1639898515.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 13:21:55', '2022-03-29 04:13:29', NULL),
(368, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - 01TP', 'paisley-design-kani-weave-classic-shawl-kani-01tp', '', 'Kani - 01TP', '1639900488.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 13:54:48', '2022-03-29 04:13:30', NULL),
(369, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - 531', 'paisley-design-kani-weave-classic-shawl-kani-531', '', 'Kani - 531', '1639903522.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 14:45:22', '2022-03-29 04:13:30', NULL),
(370, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani - 535', 'paisley-design-kani-weave-classic-shawl-kani-535', '', 'Kani - 535', '1639903968.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 14:52:48', '2022-03-29 04:13:30', NULL),
(371, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'kani # 506', 'paisley-design-kani-weave-classic-shawl-kani-506', '', 'kani # 506', '1639904910.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 15:08:30', '2022-03-29 04:13:30', NULL),
(372, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'kani # new 9', 'paisley-design-kani-weave-classic-shawl-kani-new-9', '', 'kani # new 9', '1639905278.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 15:14:38', '2022-03-29 04:13:30', NULL),
(373, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'KANI # new 19', 'paisley-design-kani-weave-classic-shawl-kani-new-19', '', 'KANI # new 19', '1639906502.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 15:35:02', '2022-03-29 04:13:30', NULL),
(374, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'KANI # RB-1', 'paisley-design-kani-weave-classic-shawl-kani-rb-1', '', 'KANI # RB-1', '1639906750.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 15:39:10', '2022-03-29 04:13:30', NULL),
(375, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'KANI # RB-2', 'paisley-design-kani-weave-classic-shawl-kani-rb-2', '', 'KANI # RB-2', '1639906845.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 15:40:45', '2022-03-29 04:13:30', NULL),
(376, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'KANI # RB-3', 'paisley-design-kani-weave-classic-shawl-kani-rb-3', '', 'KANI # RB-3', '1639907600.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 15:53:20', '2022-03-29 04:13:30', NULL),
(377, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'KANI # RB-4', 'paisley-design-kani-weave-classic-shawl-kani-rb-4', '', 'KANI # RB-4', '1639907718.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 15:55:18', '2022-03-29 04:13:30', NULL),
(378, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani #315-2', 'paisley-design-kani-weave-classic-shawl-kani-315-2', '', 'Kani #315-2', '1639907849.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 15:57:29', '2022-03-29 04:13:30', NULL),
(379, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', 'Kani #315-4', 'paisley-design-kani-weave-classic-shawl-kani-315-4', '', 'Kani #315-4', '1639908076.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 16:01:16', '2022-03-29 04:13:30', NULL),
(380, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL', 'Kani #NEW fuschia', 'paisley-design-kani-weave-classic-shawl-kani-new-fuschia', '', 'Kani #NEW fuschia', '1639910412.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-19 16:40:12', '2022-03-29 04:13:30', NULL),
(381, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '563', 'paisley-design-kani-weave-classic-shawl-563', '', '563', '1639981940.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:32:20', '2022-03-29 04:13:30', NULL),
(382, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '564', 'paisley-design-kani-weave-classic-shawl-564', '', '564', '1639982057.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:34:17', '2022-03-29 04:13:30', NULL),
(383, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ..', '565', 'paisley-design-kani-weave-classic-shawl-565', '', '565', '1639982141.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:35:41', '2022-03-29 04:13:31', NULL),
(384, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '566', 'paisley-design-kani-weave-classic-shawl-566', '', '566', '1639982225.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:37:05', '2022-03-29 04:13:31', NULL),
(385, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ..', '567', 'paisley-design-kani-weave-classic-shawl-567', '', '567', '1639982385.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:39:45', '2022-03-29 04:13:31', NULL),
(386, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '568', 'paisley-design-kani-weave-classic-shawl-568', '', '568', '1639982442.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:40:42', '2022-03-29 04:13:31', NULL),
(387, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '569', 'paisley-design-kani-weave-classic-shawl-569', '', '569', '1639982523.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:42:03', '2022-03-29 04:13:31', NULL),
(388, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '572', 'paisley-design-kani-weave-classic-shawl-572', '', '572', '1639982610.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:43:30', '2022-03-29 04:13:31', NULL),
(389, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '574', 'paisley-design-kani-weave-classic-shawl-574', '', '574', '1639982726.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:45:26', '2022-03-29 04:13:31', NULL),
(390, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ..', '575', 'paisley-design-kani-weave-classic-shawl-575', '', '575', '1639982820.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:47:00', '2022-03-29 04:13:31', NULL),
(391, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '576', 'paisley-design-kani-weave-classic-shawl-576', '', '576', '1639982909.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:48:29', '2022-03-29 04:13:31', NULL),
(392, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '577', 'paisley-design-kani-weave-classic-shawl-577', '', '577', '1639982980.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:49:40', '2022-03-29 04:13:31', NULL),
(393, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '578', 'paisley-design-kani-weave-classic-shawl-578', '', '578', '1639983045.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:50:45', '2022-03-29 04:13:31', NULL),
(394, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL ', '579', 'paisley-design-kani-weave-classic-shawl-579', '', '579', '1639983132.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 12:52:12', '2022-03-29 04:13:31', NULL),
(395, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '580', 'paisley-design-kani-weave-classic-shawl-580', '', '580', '1639983889.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:04:49', '2022-03-29 04:13:32', NULL),
(396, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '581', 'paisley-design-kani-weave-classic-shawl-581', '', '581', '1639983956.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:05:56', '2022-03-29 04:13:32', NULL),
(397, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '582', 'paisley-design-kani-weave-classic-shawl-582', '', '582', '1639984078.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:07:58', '2022-03-29 04:13:32', NULL),
(398, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '583', 'paisley-design-kani-weave-classic-shawl-583', '', '583', '1639984184.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:09:44', '2022-03-29 04:13:32', NULL),
(399, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '584', 'paisley-design-kani-weave-classic-shawl-584', '', '584', '1639984300.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:11:40', '2022-03-29 04:13:32', NULL),
(400, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '587', 'paisley-design-kani-weave-classic-shawl-587', '', '587', '1639984424.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:13:44', '2022-03-29 04:13:32', NULL),
(401, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', '588', 'paisley-design-kani-weave-classic-shawl-588', '', '588', '1639984521.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:15:21', '2022-03-29 04:13:32', NULL),
(402, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', 'kani 571', 'paisley-design-kani-weave-classic-shawl-kani-571', '', 'kani 571', '1639984647.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:17:27', '2022-03-29 04:13:32', NULL),
(403, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', 'kani 573', 'paisley-design-kani-weave-classic-shawl-kani-573', '', 'kani 573', '1639984732.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:18:52', '2022-03-29 04:13:32', NULL),
(404, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', 'kani 585', 'paisley-design-kani-weave-classic-shawl-kani-585', '', 'kani 585', '1639984815.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:20:15', '2022-03-29 04:13:32', NULL),
(405, 14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWL .', 'kani 586', 'paisley-design-kani-weave-classic-shawl-kani-586', '', 'kani 586', '1639984919.jpeg', '9', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:21:59', '2022-03-29 04:13:32', NULL),
(406, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 315 # E', 'paisley-design-kani-weave-scarve-inf-kani-s-315-e', '', 'INF KANI_S_ 315 # E', '1639985698.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 13:34:58', '2022-03-29 04:13:32', NULL),
(407, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 315 # F', 'paisley-design-kani-weave-scarve-inf-kani-s-315-f', '', 'INF KANI_S_ 315 # F', '1639987789.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:09:49', '2022-03-29 04:13:32', NULL),
(408, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 1119 A', 'paisley-design-kani-weave-scarve-inf-kani-s-1119-a', '', 'INF KANI_S_ 1119 A', '1639988073.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:14:33', '2022-03-29 04:13:32', NULL),
(409, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 1119 B', 'paisley-design-kani-weave-scarve-inf-kani-s-1119-b', '', 'INF KANI_S_ 1119 B', '1639988188.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:16:28', '2022-03-29 04:13:32', NULL),
(410, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 1119 C', 'paisley-design-kani-weave-scarve-inf-kani-s-1119-c', '', 'INF KANI_S_ 1119 C', '1639988347.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:19:07', '2022-03-29 04:13:32', NULL),
(411, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 1119 D', 'paisley-design-kani-weave-scarve-inf-kani-s-1119-d', '', 'INF KANI_S_ 1119 D', '1639989388.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:36:28', '2022-03-29 04:13:33', NULL),
(412, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 1119 E', 'paisley-design-kani-weave-scarve-inf-kani-s-1119-e', '', 'INF KANI_S_ 1119 E', '1639989569.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:39:29', '2022-03-29 04:13:33', NULL),
(413, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ 1119 F', 'paisley-design-kani-weave-scarve-inf-kani-s-1119-f', '', 'INF KANI_S_ 1119 F', '1639989749.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:42:29', '2022-03-29 04:13:33', NULL),
(414, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'Kani-S 315 pack', 'paisley-design-kani-weave-scarve-kani-s-315-pack', '', 'Kani-S 315 pack', '1639990154.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:49:14', '2022-03-29 04:13:33', NULL),
(415, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'Kani-S 1119 pack (L-_R 1,2,3,4,5,6)', 'paisley-design-kani-weave-scarve-kani-s-1119-pack-l-r-123456', '', 'Kani-S 1119 pack (L-_R 1,2,3,4,5,6)', '1639990488.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 14:53:00', '2022-03-29 04:13:33', NULL);
INSERT INTO `products` (`id`, `category_id`, `name`, `code`, `slug`, `description`, `short_desc`, `thumbnail`, `price`, `compare_price`, `quantity`, `status`, `order`, `meta_title`, `meta_description`, `meta_keywords`, `featured_products`, `popular_product`, `hot_deal`, `item`, `pdf_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(416, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE  ', 'KANI_S_-INF color code-1', 'paisley-design-kani-weave-scarve-item-code-kani-s-inf-color-code-1', '', 'KANI_S_-INF color code-1', '1639993121.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 15:38:41', '2022-03-29 04:13:33', NULL),
(417, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', ' KANI_S_-INF color code-2', 'paisley-design-kani-weave-scarve-item-code-kani-s-inf-color-code-2', '', ' KANI_S_-INF color code-2', '1639993356.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 15:42:36', '2022-03-29 04:13:33', NULL),
(418, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'KANI_S_-INF color code-3', 'paisley-design-kani-weave-scarve-item-code-kani-s-inf-color-code-3', '', 'KANI_S_-INF color code-3', '1639994858.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:07:38', '2022-03-29 04:13:33', NULL),
(419, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'KANI_S_-INF color code-4', 'paisley-design-kani-weave-scarve-item-code-kani-s-inf-color-code-4', '', 'KANI_S_-INF color code-4', '1639994988.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:09:48', '2022-03-29 04:13:33', NULL),
(420, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'KANI_S_-INF color code-5', 'paisley-design-kani-weave-scarve-item-code-kani-s-inf-color-code-5', '', 'KANI_S_-INF color code-5', '1639995254.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:14:14', '2022-03-29 04:13:33', NULL),
(421, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'KANI_S_-INF color code-6', 'paisley-design-kani-weave-scarve-item-code-kani-s-inf-color-code-6', '', 'KANI_S_-INF color code-6', '1639995752.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:22:32', '2022-03-29 04:13:34', NULL),
(422, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'inf kani s multi (3)', 'paisley-design-kani-weave-scarve-inf-kani-s-multi-3', '', 'inf kani s multi (3)', '1639996518.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:35:18', '2022-03-29 04:13:34', NULL),
(423, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'inf kani s multi (4)', 'paisley-design-kani-weave-scarve-inf-kani-s-multi-4', '', 'inf kani s multi (4)', '1639996626.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:37:06', '2022-03-29 04:13:34', NULL),
(424, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'inf kani s multi (5)', 'paisley-design-kani-weave-scarve-inf-kani-s-multi-5', '', 'inf kani s multi (5)', '1639996696.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:38:16', '2022-03-29 04:13:34', NULL),
(425, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ MULTI # 1', 'paisley-design-kani-weave-scarve-inf-kani-s-multi-1', '', 'INF KANI_S_ MULTI # 1', '1639997441.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:50:41', '2022-03-29 04:13:34', NULL),
(426, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ MULTI # 2', 'paisley-design-kani-weave-scarve-inf-kani-s-multi-2', '', 'INF KANI_S_ MULTI # 2', '1639997727.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:55:27', '2022-03-29 04:13:34', NULL),
(427, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI_S_ MULTI', 'paisley-design-kani-weave-scarve-inf-kani-s-multi', '', 'INF KANI_S_ MULTI', '1639997916.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 16:58:36', '2022-03-29 04:13:34', NULL),
(428, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE  ', 'KANI S MULTI', 'paisley-design-kani-weave-scarve-kani-s-multi', '', 'KANI S MULTI', '1639998370.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 17:06:10', '2022-03-29 04:13:34', NULL),
(429, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'KANI S FALL', 'paisley-design-kani-weave-scarve-kani-s-fall', '', 'KANI S FALL', '1639998664.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 17:11:05', '2022-03-29 04:13:34', NULL),
(430, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'inf kani s aztec (2)', 'paisley-design-kani-weave-scarve-inf-kani-s-aztec-2', '', 'inf kani s aztec (2)', '1640000264.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 17:37:44', '2022-03-29 04:13:34', NULL),
(431, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'inf kani s aztec (3)', 'paisley-design-kani-weave-scarve-inf-kani-s-aztec-3', '', 'inf kani s aztec (3)', '1640000422.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 17:40:22', '2022-03-29 04:13:35', NULL),
(432, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'inf kani s aztec (4)', 'paisley-design-kani-weave-scarve-inf-kani-s-aztec-4', '', 'inf kani s aztec (4)', '1640000593.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 17:43:13', '2022-03-29 04:13:35', NULL),
(433, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'inf kani s aztec (5)', 'paisley-design-kani-weave-scarve-inf-kani-s-aztec-5', '', 'inf kani s aztec (5)', '1640000801.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 17:46:41', '2022-03-29 04:13:35', NULL),
(434, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF KANI S AZTEC (6)', 'paisley-design-kani-weave-scarve-inf-kani-s-aztec-6', '', 'INF KANI S AZTEC (6)', '1640001078.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 17:51:18', '2022-03-29 04:13:35', NULL),
(435, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'inf kani s aztec', 'paisley-design-kani-weave-scarve-inf-kani-s-aztec', '', 'inf kani s aztec', '1640001566.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-20 17:59:26', '2022-03-29 04:13:35', NULL),
(436, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF-KANI_S_FLO_#6', 'paisley-design-kani-weave-scarve-inf-kani-s-flo-6', '', 'INF-KANI_S_FLO_#6', '1640068865.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 12:41:05', '2022-03-29 04:13:35', NULL),
(437, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF-KANI_S_FLO_#7', 'paisley-design-kani-weave-scarve-inf-kani-s-flo-7', '', 'INF-KANI_S_FLO_#7', '1640069001.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 12:43:21', '2022-03-29 04:13:35', NULL),
(438, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF-KANI_S_FLO_#8', 'paisley-design-kani-weave-scarve-inf-kani-s-flo-8', '', 'INF-KANI_S_FLO_#8', '1640069093.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 12:44:53', '2022-03-29 04:13:35', NULL),
(439, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF-KANI_S_FLO_#9', 'paisley-design-kani-weave-scarve-inf-kani-s-flo-9', '', 'INF-KANI_S_FLO_#9', '1640069173.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 12:46:13', '2022-03-29 04:13:35', NULL),
(440, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF-KANI_S_FLO_#10', 'paisley-design-kani-weave-scarve-inf-kani-s-flo-10', '', 'INF-KANI_S_FLO_#10', '1640069303.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 12:48:23', '2022-03-29 04:13:35', NULL),
(441, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'INF-KANI_S_FLO_#12', 'paisley-design-kani-weave-scarve-inf-kani-s-flo-12', '', 'INF-KANI_S_FLO_#12', '1640069366.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 12:49:26', '2022-03-29 04:13:35', NULL),
(442, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'kani S 5000', 'paisley-design-kani-weave-scarve-kani-s-5000', '', 'kani S 5000', '1640069633.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 12:53:53', '2022-03-29 04:13:36', NULL),
(443, 15, 'PAISLEY DESIGN KANI WEAVE SCARVE ', 'KANI _S_ RAINBOW', 'paisley-design-kani-weave-scarve-kani-s-rainbow', '', 'KANI _S_ RAINBOW', '1640070208.jpeg', '54', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:03:28', '2022-03-29 04:13:36', NULL),
(444, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R 74,79,80,99,101', 'contemporary-cashmere-scarve-ccs-l-r-74798099101', '', 'CCS L-_R 74,79,80,99,101', '1640071537.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:25:37', '2022-03-29 04:13:36', NULL),
(445, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R AS-8,AS-22,AS-23,AS-57,AS-68,AS-75.', 'contemporary-cashmere-scarve-ccs-l-r-as-8as-22as-23as-57as-68as-75', '', 'CCS L-_R AS-8,AS-22,AS-23,AS-57,AS-68,AS-75.', '1640071708.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:28:28', '2022-03-29 04:13:36', NULL),
(446, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R AS-83, AS-106, AS-107, AS-108, AS-188, AS-203', 'contemporary-cashmere-scarve-ccs-l-r-as-83-as-106-as-107-as-108-as-188-as-203', '', 'CCS L-_R AS-83, AS-106, AS-107, AS-108, AS-188, AS-203', '1640071836.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:30:36', '2022-03-29 04:13:36', NULL),
(447, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R L-101,L-122,632-1,632-2,632-3,632-4,632-5', 'contemporary-cashmere-scarve-ccs-l-r-l-101l-122632-1632-2632-3632-4632-5', '', 'CCS L-_R L-101,L-122,632-1,632-2,632-3,632-4,632-5', '1640071925.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:32:05', '2022-03-29 04:13:36', NULL),
(448, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R 5-1,5-2,5-3,5-4,5-5', 'contemporary-cashmere-scarve-ccs-l-r-5-15-25-35-45-5', '', 'CCS L-_R 5-1,5-2,5-3,5-4,5-5', '1640072674.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:44:34', '2022-03-29 04:13:37', NULL),
(449, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R 5-6, 5-7, 5-8, 5-9, 5-10', 'contemporary-cashmere-scarve-ccs-l-r-5-6-5-7-5-8-5-9-5-10', '', 'CCS L-_R 5-6, 5-7, 5-8, 5-9, 5-10', '1640072870.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:47:50', '2022-03-29 04:13:37', NULL),
(450, 16, 'CONTEMPORARY CASHMERE SCARVE', ' CCS L-_R 5-11, 5-12, 5-13, 5-14, 5-15', 'contemporary-cashmere-scarve-ccs-l-r-5-11-5-12-5-13-5-14-5-15', '', ' CCS L-_R 5-11, 5-12, 5-13, 5-14, 5-15', '1640072944.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:49:04', '2022-03-29 04:13:37', NULL),
(451, 16, 'CONTEMPORARY CASHMERE SCARVE ', 'CCS L-_R 5-16, 5-17, 5-18, 5-19, 5-20, 5-21', 'contemporary-cashmere-scarve-ccs-l-r-5-16-5-17-5-18-5-19-5-20-5-21', '', 'CCS L-_R 5-16, 5-17, 5-18, 5-19, 5-20, 5-21', '1640073034.jpeg', '8', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 13:50:34', '2022-03-29 04:13:37', NULL),
(452, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE', ' inf ccs (5-1)', 'contemporary-cashmere-infinity-scarve-inf-ccs-5-1', '', ' inf ccs (5-1)', '1640076412.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 14:46:52', '2022-03-29 04:13:37', NULL),
(453, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE ', 'inf ccs (5-3)', 'contemporary-cashmere-infinity-scarve-inf-ccs-5-3', '', 'inf ccs (5-3)', '1640076589.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 14:49:49', '2022-03-29 04:13:37', NULL),
(454, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE ', 'inf ccs (5-7)', 'contemporary-cashmere-infinity-scarve-inf-ccs-5-7', '', 'inf ccs (5-7)', '1640076677.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 14:51:17', '2022-03-29 04:13:37', NULL),
(455, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE', ' inf ccs (5-8)', 'contemporary-cashmere-infinity-scarve-inf-ccs-5-8', '', ' inf ccs (5-8)', '1640076791.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 14:53:11', '2022-03-29 04:13:37', NULL),
(456, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE ', 'inf ccs (66)', 'contemporary-cashmere-infinity-scarve-inf-ccs-66', '', 'inf ccs (66)', '1640076875.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 14:54:35', '2022-03-29 04:13:37', NULL),
(457, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE ', 'inf ccs (70)', 'contemporary-cashmere-infinity-scarve-inf-ccs-70', '', 'inf ccs (70)', '1640076934.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 14:55:34', '2022-03-29 04:13:37', NULL),
(458, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE ', 'inf ccs (80)', 'contemporary-cashmere-infinity-scarve-inf-ccs-80', '', 'inf ccs (80)', '1640076996.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 14:56:36', '2022-03-29 04:13:37', NULL),
(459, 17, 'CONTEMPORARY CASHMERE INFINITY SCARVE ', 'inf ccs 632-5', 'contemporary-cashmere-infinity-scarve-inf-ccs-632-5', '', 'inf ccs 632-5', '1640077051.jpeg', '96', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 14:57:31', '2022-03-29 04:13:37', NULL),
(460, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 11', 'paisley-design-kani-weave-classic-jacket-kani-jacket-11', '', 'KANI JACKET # 11', '1640077888.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:11:28', '2022-03-29 04:13:38', NULL),
(461, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 20', 'paisley-design-kani-weave-classic-jacket-kani-jacket-20', '', 'KANI JACKET # 20', '1640077982.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:13:02', '2022-03-29 04:13:38', NULL),
(462, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 21', 'paisley-design-kani-weave-classic-jacket-kani-jacket-21', '', 'KANI JACKET # 21', '1640078048.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:14:08', '2022-03-29 04:13:38', NULL),
(463, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 22', 'paisley-design-kani-weave-classic-jacket-kani-jacket-22', '', 'KANI JACKET # 22', '1640078142.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:15:42', '2022-03-29 04:13:38', NULL),
(464, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'KANI JACKET # 23', 'paisley-design-kani-weave-classic-jacket-kani-jacket-23', '', 'KANI JACKET # 23', '1640078215.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:16:55', '2022-03-29 04:13:38', NULL),
(465, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET', ' KANI JACKET #24', 'paisley-design-kani-weave-classic-jacket-kani-jacket-24', '', ' KANI JACKET #24', '1640078321.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:18:41', '2022-03-29 04:13:38', NULL),
(466, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'Kani Jacket #25', 'paisley-design-kani-weave-classic-jacket-kani-jacket-25', '', 'Kani Jacket #25', '1640078420.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:20:20', '2022-03-29 04:13:38', NULL),
(467, 19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET ', 'Kani Jacket #27', 'paisley-design-kani-weave-classic-jacket-kani-jacket-27', '', 'Kani Jacket #27', '1640078693.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:24:53', '2022-03-29 04:13:38', NULL),
(468, 20, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED LONG JACKET 9000-4', 'LONG JACKET 9000-4', 'cashmere-blend-antique-design-hand-embroidered-long-jacket-9000-4', '', 'LONG JACKET 9000-4', '1640080031.jpeg', '59', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:47:11', '2022-03-29 04:13:38', NULL),
(469, 23, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'SHORT JACKET 9001 - #1', 'cashmere-blend-antique-design-hand-embroidered-short-jacket-9001-1', '', 'SHORT JACKET 9001 - #1', '1640080404.jpeg', '49', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:53:24', '2022-03-29 04:13:38', NULL),
(470, 23, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'SHORT JACKET 9001- #2', 'cashmere-blend-antique-design-hand-embroidered-short-jacket-9001-2', '', 'SHORT JACKET 9001- #2', '1640080462.jpeg', '49', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:54:22', '2022-03-29 04:13:38', NULL),
(471, 23, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'SHORT JACKET 9001- #3', 'cashmere-blend-antique-design-hand-embroidered-short-jacket-9001-3', '', 'SHORT JACKET 9001- #3', '1640080580.jpeg', '49', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:56:20', '2022-03-29 04:13:38', NULL),
(472, 23, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'SHORT JACKET 9001- #4', 'cashmere-blend-antique-design-hand-embroidered-short-jacket-9001-4', '', 'SHORT JACKET 9001- #4', '1640080643.jpeg', '49', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 15:57:23', '2022-03-29 04:13:39', NULL),
(473, 20, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'LONG JACKET 9002 # 2', 'cashmere-blend-antique-design-hand-embroidered-long-jacket-9002-2', '', 'LONG JACKET 9002 # 2', '1640083387.jpeg', '59', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 16:43:07', '2022-03-29 04:13:39', NULL),
(474, 24, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED SCARVE ', '9002 _S_ # 1', 'cashmere-blend-antique-design-hand-embroidered-scarve-9002-s-1', '', '9002 _S_ # 1', '1640084398.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 16:59:58', '2022-03-29 04:13:39', NULL),
(475, 24, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED SCARVE', ' 9002 _S_ #2', 'cashmere-blend-antique-design-hand-embroidered-scarve-9002-s-2', '', ' 9002 _S_ #2', '1640084484.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:01:24', '2022-03-29 04:13:39', NULL),
(476, 24, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED SCARVE ', '9003 _S_', 'cashmere-blend-antique-design-hand-embroidered-scarve-9003-s', '', '9003 _S_', '1640084761.jpeg', '19', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:06:01', '2022-03-29 04:13:39', NULL),
(477, 20, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED ', 'LONG JACKET 9003', 'cashmere-blend-antique-design-hand-embroidered-long-jacket-9003', '', 'LONG JACKET 9003', '1640084989.jpeg', '59', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:09:49', '2022-03-29 04:13:39', NULL),
(478, 25, 'CASHMERE POINTED SCARVE', ' PSC Pointed # 1', 'cashmere-pointed-scarve-psc-pointed-1', '', ' PSC Pointed # 1', '1640085255.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:14:15', '2022-03-29 04:13:39', NULL),
(479, 25, 'CASHMERE POINTED SCARVE  ', 'PSC Pointed # 2', 'cashmere-pointed-scarve-psc-pointed-2', '', 'PSC Pointed # 2', '1640085323.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:15:23', '2022-03-29 04:13:39', NULL),
(480, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed # 3', 'cashmere-pointed-scarve-psc-pointed-3', '', 'PSC Pointed # 3', '1640085498.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:18:18', '2022-03-29 04:13:39', NULL),
(481, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed # 4', 'cashmere-pointed-scarve-psc-pointed-4', '', 'PSC Pointed # 4', '1640085891.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:24:51', '2022-03-29 04:13:39', NULL),
(482, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed # 5', 'cashmere-pointed-scarve-psc-pointed-5', '', 'PSC Pointed # 5', '1640085940.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:25:40', '2022-03-29 04:13:39', NULL),
(483, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed # 6', 'cashmere-pointed-scarve-psc-pointed-6', '', 'PSC Pointed # 6', '1640085999.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:26:39', '2022-03-29 04:13:39', NULL),
(484, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed # 7', 'cashmere-pointed-scarve-psc-pointed-7', '', 'PSC Pointed # 7', '1640086079.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:27:59', '2022-03-29 04:13:40', NULL),
(485, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed # 8', 'cashmere-pointed-scarve-psc-pointed-8', '', 'PSC Pointed # 8', '1640086155.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:29:15', '2022-03-29 04:13:40', NULL),
(486, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed # 9', 'cashmere-pointed-scarve-psc-pointed-9', '', 'PSC Pointed # 9', '1640086356.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:32:36', '2022-03-29 04:13:40', NULL),
(487, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed #A', 'cashmere-pointed-scarve-psc-pointed-a', '', 'PSC Pointed #A', '1640086447.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:34:07', '2022-03-29 04:13:40', NULL),
(488, 25, 'CASHMERE POINTED SCARVE ', 'PSC Pointed #B', 'cashmere-pointed-scarve-psc-pointed-b', '', 'PSC Pointed #B', '1640086496.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:34:56', '2022-03-29 04:13:40', NULL),
(489, 25, 'CASHMERE POINTED SCARVE ', 'PSC POINTED #C', 'cashmere-pointed-scarve-psc-pointed-c', '', 'PSC POINTED #C', '1640086574.jpeg', '15', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-21 17:36:14', '2022-03-29 04:13:40', NULL),
(490, 26, 'CASHMERE TWIST SHAWL ', 'PSC Twist # 1', 'cashmere-twist-shawl-psc-twist-1', '', 'PSC Twist # 1', '1640155551.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 12:45:51', '2022-03-29 04:13:40', NULL),
(491, 26, 'CASHMERE TWIST SHAWL ', 'PSC Twist # 2', 'cashmere-twist-shawl-psc-twist-2', '', 'PSC Twist # 2', '1640155609.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 12:46:49', '2022-03-29 04:13:40', NULL),
(492, 26, 'CASHMERE TWIST SHAWL ', 'PSC Twist # 3', 'cashmere-twist-shawl-psc-twist-3', '', 'PSC Twist # 3', '1640155711.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 12:48:31', '2022-03-29 04:13:40', NULL),
(493, 26, 'CASHMERE TWIST SHAWL ', 'PSC Twist # 4', 'cashmere-twist-shawl-psc-twist-4', '', 'PSC Twist # 4', '1640155981.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 12:53:01', '2022-03-29 04:13:40', NULL),
(494, 26, 'CASHMERE TWIST SHAWL ', 'PSC Twist # 5', 'cashmere-twist-shawl-psc-twist-5', '', 'PSC Twist # 5', '1640156078.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 12:54:38', '2022-03-29 04:13:40', NULL),
(495, 26, 'CASHMERE TWIST SHAWL ', 'PSC Twist # A', 'cashmere-twist-shawl-psc-twist-a', '', 'PSC Twist # A', '1640156197.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 12:56:37', '2022-03-29 04:13:40', NULL),
(496, 26, 'CASHMERE TWIST SHAWL ', 'PSC Twist # B', 'cashmere-twist-shawl-psc-twist-b', '', 'PSC Twist # B', '1640156361.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 12:59:21', '2022-03-29 04:13:40', NULL),
(497, 26, 'CASHMERE TWIST SHAWL ', 'PSC Twist # C', 'cashmere-twist-shawl-psc-twist-c', '', 'PSC Twist # C', '1640156485.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:01:25', '2022-03-29 04:13:40', NULL),
(498, 27, 'CASHMERE RUWANA', ' PSC RUANA #1', 'cashmere-ruwana-psc-ruana-1', '', ' PSC RUANA #1', '1640157404.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:16:44', '2022-03-29 04:13:40', NULL),
(499, 27, 'CASHMERE RUWANA ', 'PSC RUANA #2', 'cashmere-ruwana-psc-ruana-2', '', 'PSC RUANA #2', '1640157486.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:18:06', '2022-03-29 04:13:40', NULL),
(500, 27, 'CASHMERE RUWANA', ' PSC RUANA #3', 'cashmere-ruwana-psc-ruana-3', '', ' PSC RUANA #3', '1640157536.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:18:56', '2022-03-29 04:13:40', NULL),
(501, 27, 'CASHMERE RUWANA', ' PSC RUANA #4', 'cashmere-ruwana-psc-ruana-4', '', ' PSC RUANA #4', '1640157592.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:19:52', '2022-03-29 04:13:40', NULL),
(502, 27, 'CASHMERE RUWANA', ' PSC RUANA #5', 'cashmere-ruwana-psc-ruana-5', '', ' PSC RUANA #5', '1640157680.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:21:20', '2022-03-29 04:13:40', NULL),
(503, 27, 'CASHMERE RUWANA ', 'PSC RUANA #6', 'cashmere-ruwana-psc-ruana-6', '', 'PSC RUANA #6', '1640157734.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:22:14', '2022-03-29 04:13:40', NULL),
(504, 27, 'CASHMERE RUWANA ', 'PSC RUANA #7', 'cashmere-ruwana-psc-ruana-7', '', 'PSC RUANA #7', '1640157796.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:23:16', '2022-03-29 04:13:40', NULL),
(505, 27, 'CASHMERE RUWANA ', 'PSC RUANA #8', 'cashmere-ruwana-psc-ruana-8', '', 'PSC RUANA #8', '1640158069.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:27:49', '2022-03-29 04:13:41', NULL),
(506, 27, 'CASHMERE RUWANA', ' PSC RUANA #9', 'cashmere-ruwana-psc-ruana-9', '', ' PSC RUANA #9', '1640158132.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:28:52', '2022-03-29 04:13:41', NULL),
(507, 27, 'CASHMERE RUWANA ', 'PSC RUANA #12', 'cashmere-ruwana-psc-ruana-12', '', 'PSC RUANA #12', '1640158196.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:29:56', '2022-03-29 04:13:41', NULL),
(508, 27, 'CASHMERE RUWANA ', 'PSC Ruana #13', 'cashmere-ruwana-psc-ruana-13', '', 'PSC Ruana #13', '1640158262.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:31:02', '2022-03-29 04:13:41', NULL),
(509, 27, 'CASHMERE RUWANA ', 'PSC Ruana #14', 'cashmere-ruwana-psc-ruana-14', '', 'PSC Ruana #14', '1640158312.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:31:52', '2022-03-29 04:13:41', NULL),
(510, 27, 'CASHMERE RUWANA ', 'PSC Ruana #15', 'cashmere-ruwana-psc-ruana-15', '', 'PSC Ruana #15', '1640158401.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 13:33:21', '2022-03-29 04:13:41', NULL),
(511, 27, 'CASHMERE RUWANA ', 'PSC RUANA # 27', 'cashmere-ruwana-psc-ruana-27', '', 'PSC RUANA # 27', '1640161347.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:22:27', '2022-03-29 04:13:41', NULL),
(512, 27, 'CASHMERE RUWANA', ' PSC RUANA # 28', 'cashmere-ruwana-psc-ruana-28', '', ' PSC RUANA # 28', '1640161429.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:23:49', '2022-03-29 04:13:41', NULL),
(513, 27, 'CASHMERE RUWANA ', 'PSC RUWANA #29', 'cashmere-ruwana-psc-ruana-29', '', 'PSC RUWANA #29', '1640161481.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:24:41', '2022-03-29 04:13:42', NULL),
(514, 27, 'CASHMERE RUWANA ', 'PSC RUANA # 30', 'cashmere-ruwana-psc-ruana-30', '', 'PSC RUANA # 30', '1640161531.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:25:31', '2022-03-29 04:13:42', NULL),
(515, 27, 'CASHMERE RUWANA ', 'PSC RUANA # 31', 'cashmere-ruwana-psc-ruana-31', '', 'PSC RUANA # 31', '1640161592.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:26:32', '2022-03-29 04:13:42', NULL),
(516, 27, 'CASHMERE RUWANA ', 'PSC RUANA # 25', 'cashmere-ruwana-psc-ruana-25', '', 'PSC RUANA # 25', '1640162282.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:38:02', '2022-03-29 04:13:42', NULL),
(517, 27, 'CASHMERE RUWANA ', 'PSC RUANA # 26', 'cashmere-ruwana-psc-ruana-26', '', 'PSC RUANA # 26', '1640162370.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:39:30', '2022-03-29 04:13:42', NULL),
(518, 27, 'CASHMERE RUWANA', ' PSC RUANA # 27', 'cashmere-ruwana-psc-ruana-27', '', ' PSC RUANA # 27', '1640162427.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:40:27', '2022-03-29 04:13:42', NULL),
(519, 27, 'CASHMERE RUWANA ', 'PSC RUANA # 28', 'cashmere-ruwana-psc-ruana-28', '', 'PSC RUANA # 28', '1640162484.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:41:24', '2022-03-29 04:13:42', NULL),
(520, 27, 'CASHMERE RUWANA', ' PSC Ruana #16.', 'cashmere-ruwana-psc-ruana-16', '', ' PSC Ruana #16.', '1640162528.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:42:08', '2022-03-29 04:13:42', NULL),
(521, 27, 'CASHMERE RUWANA', ' PSC Ruana #17', 'cashmere-ruwana-psc-ruana-17', '', ' PSC Ruana #17', '1640162580.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:43:00', '2022-03-29 04:13:42', NULL),
(522, 27, 'CASHMERE RUWANA ', 'PSC Ruana #18', 'cashmere-ruwana-psc-ruana-18', '', 'PSC Ruana #18', '1640162652.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:44:12', '2022-03-29 04:13:42', NULL),
(523, 27, 'CASHMERE RUWANA', ' PSC Ruana #19', 'cashmere-ruwana-psc-ruana-19', '', ' PSC Ruana #19', '1640162706.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:45:06', '2022-03-29 04:13:42', NULL),
(524, 27, 'CASHMERE RUWANA ', 'PSC Ruana #20', 'cashmere-ruwana-psc-ruana-20', '', 'PSC Ruana #20', '1640163490.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:58:10', '2022-03-29 04:13:42', NULL),
(525, 27, 'CASHMERE RUWANA ', 'PSC Ruana #21', 'cashmere-ruwana-psc-ruana-21', '', 'PSC Ruana #21', '1640163543.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 14:59:03', '2022-03-29 04:13:42', NULL),
(526, 27, 'CASHMERE RUWANA ', 'PSC Ruana #22', 'cashmere-ruwana-psc-ruana-22', '', 'PSC Ruana #22', '1640163620.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:00:20', '2022-03-29 04:13:42', NULL),
(527, 27, 'CASHMERE RUWANA ', 'PSC Ruana #23', 'cashmere-ruwana-psc-ruana-23', '', 'PSC Ruana #23', '1640163686.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:01:26', '2022-03-29 04:13:43', NULL),
(528, 27, 'CASHMERE RUWANA', ' PSC Ruana #24', 'cashmere-ruwana-psc-ruana-24', '', ' PSC Ruana #24', '1640163753.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:02:34', '2022-03-29 04:13:43', NULL),
(529, 27, 'CASHMERE RUWANA ', 'PSC RUANA # 29', 'cashmere-ruwana-psc-ruana-29', '', 'PSC RUANA # 29', '1640164159.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:09:19', '2022-03-29 04:13:43', NULL),
(530, 27, 'CASHMERE RUWANA', ' PSC RUANA # 30', 'cashmere-ruwana-psc-ruana-30', '', ' PSC RUANA # 30', '1640164221.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:10:21', '2022-03-29 04:13:43', NULL),
(531, 27, 'CASHMERE RUWANA ', 'Solid Ruana #Black', 'cashmere-ruwana-solid-ruana-black', '', 'Solid Ruana #Black', '1640164511.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:15:11', '2022-03-29 04:13:43', NULL),
(532, 27, 'CASHMERE RUWANA', ' Solid Ruana Gray', 'cashmere-ruwana-solid-ruana-gray', '', ' Solid Ruana Gray', '1640164555.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:15:56', '2022-03-29 04:13:43', NULL),
(533, 27, 'CASHMERE RUWANA ', 'Solid Ruana Red', 'cashmere-ruwana-solid-ruana-red', '', 'Solid Ruana Red', '1640164713.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:18:33', '2022-03-29 04:13:43', NULL),
(534, 28, 'CASHMERE SHAWL ', 'grey', 'cashmere-shawl-grey', '', 'grey', '1640165100.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:25:00', '2022-03-29 04:13:43', NULL),
(535, 28, 'CASHMERE SHAWL', ' PSC Shawl - #A', 'cashmere-shawl-psc-shawl-a', '', ' PSC Shawl - #A', '1640165322.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:28:42', '2022-03-29 04:13:43', NULL),
(536, 28, 'CASHMERE SHAWL', ' PSC Shawl - #B', 'cashmere-shawl-psc-shawl-b', '', ' PSC Shawl - #B', '1640165387.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:29:47', '2022-03-29 04:13:43', NULL),
(537, 28, 'CASHMERE SHAWL ', 'PSC Shawl - #C', 'cashmere-shawl-psc-shawl-c', '', 'PSC Shawl - #C', '1640165488.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:31:28', '2022-03-29 04:13:43', NULL),
(538, 28, 'CASHMERE SHAWL ', 'PSC Shawl - Black', 'cashmere-shawl-psc-shawl-black', '', 'PSC Shawl - Black', '1640165540.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:32:20', '2022-03-29 04:13:43', NULL),
(539, 28, 'CASHMERE SHAWL ', 'PSC Shawl - Navy', 'cashmere-shawl-psc-shawl-navy', '', 'PSC Shawl - Navy', '1640165631.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:33:51', '2022-03-29 04:13:43', NULL),
(540, 28, 'CASHMERE SHAWL ', 'PSC Shawl - Red', 'cashmere-shawl-psc-shawl-red', '', 'PSC Shawl - Red', '1640165696.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:34:56', '2022-03-29 04:13:43', NULL),
(541, 28, 'CASHMERE SHAWL', ' PSC Shawl - #7', 'cashmere-shawl-psc-shawl-7', '', ' PSC Shawl - #7', '1640166173.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:42:53', '2022-03-29 04:13:43', NULL),
(542, 28, 'CASHMERE SHAWL ', 'PSC Shawl - #8', 'cashmere-shawl-psc-shawl-8', '', 'PSC Shawl - #8', '1640166253.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:44:13', '2022-03-29 04:13:43', NULL),
(543, 28, 'CASHMERE SHAWL', ' PSC Shawl - #9', 'cashmere-shawl-psc-shawl-9', '', ' PSC Shawl - #9', '1640166331.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:45:31', '2022-03-29 04:13:43', NULL),
(544, 28, 'CASHMERE SHAWL', ' PSC Shawl - #10', 'cashmere-shawl-psc-shawl-10', '', ' PSC Shawl - #10', '1640166466.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:47:46', '2022-03-29 04:13:43', NULL),
(545, 28, 'CASHMERE SHAWL ', 'PSC Shawl - #11', 'cashmere-shawl-psc-shawl-11', '', 'PSC Shawl - #11', '1640166549.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:49:09', '2022-03-29 04:13:43', NULL),
(546, 28, 'CASHMERE SHAWL ', 'PSC Shawl - #12', 'cashmere-shawl-psc-shawl-12', '', 'PSC Shawl - #12', '1640166648.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:50:48', '2022-03-29 04:13:43', NULL),
(547, 28, 'CASHMERE SHAWL ', 'PSC Shawl #1', 'cashmere-shawl-psc-shawl-1', '', 'PSC Shawl #1', '1640166733.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:52:13', '2022-03-29 04:13:43', NULL),
(548, 28, 'CASHMERE SHAWL', ' PSC Shawl #2', 'cashmere-shawl-psc-shawl-2', '', ' PSC Shawl #2', '1640166803.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:53:23', '2022-03-29 04:13:44', NULL),
(549, 28, 'CASHMERE SHAWL ', 'PSC Shawl #3', 'cashmere-shawl-psc-shawl-3', '', 'PSC Shawl #3', '1640166892.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 15:54:52', '2022-03-29 04:13:44', NULL),
(550, 28, 'CASHMERE SHAWL ', 'PSC Shawl #4', 'cashmere-shawl-psc-shawl-4', '', 'PSC Shawl #4', '1640167836.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:10:36', '2022-03-29 04:13:44', NULL),
(551, 28, 'CASHMERE SHAWL', ' PSC Shawl #5', 'cashmere-shawl-psc-shawl-5', '', ' PSC Shawl #5', '1640167898.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:11:38', '2022-03-29 04:13:44', NULL),
(552, 28, 'CASHMERE ', 'SHAWL PSC Shawl #6', 'cashmere-shawl-psc-shawl-6', '', 'SHAWL PSC Shawl #6', '1640167947.jpeg', '32', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:12:27', '2022-03-29 04:13:44', NULL),
(553, 28, 'CASHMERE SHAWL', ' PSC Shawl - #13', 'cashmere-shawl-psc-shawl-13', '', ' PSC Shawl - #13', '1640168682.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:24:42', '2022-03-29 04:13:44', NULL),
(554, 28, 'CASHMERE SHAWL ', 'PSC Shawl - #14', 'cashmere-shawl-psc-shawl-14', '', 'PSC Shawl - #14', '1640168745.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:25:45', '2022-03-29 04:13:44', NULL),
(555, 28, 'CASHMERE SHAWL ', 'PSC Shawl - #15', 'cashmere-shawl-psc-shawl-15', '', 'PSC Shawl - #15', '1640168881.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:28:01', '2022-03-29 04:13:44', NULL),
(556, 28, 'CASHMERE SHAWL ', 'PSC Shawl - #16', 'cashmere-shawl-psc-shawl-16', '', 'PSC Shawl - #16', '1640168970.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:29:30', '2022-03-29 04:13:44', NULL),
(557, 28, 'CASHMERE SHAWL ', 'PSC Shawl # 18', 'cashmere-shawl-psc-shawl-18', '', 'PSC Shawl # 18', '1640169034.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:30:34', '2022-03-29 04:13:44', NULL),
(559, 28, 'CASHMERE SHAWL ', 'PSC Shawl # 19', 'cashmere-shawl-psc-shawl-19', '', 'PSC Shawl # 19', '1640169383.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:36:23', '2022-03-29 04:13:44', NULL),
(560, 28, 'CASHMERE SHAWL', ' PSC Shawl # 20', 'cashmere-shawl-psc-shawl-20', '', ' PSC Shawl # 20', '1640169434.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:37:14', '2022-03-29 04:13:44', NULL),
(561, 28, 'CASHMERE SHAWL', ' PSC Shawl # 21', 'cashmere-shawl-psc-shawl-21', '', ' PSC Shawl # 21', '1640169576.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:39:36', '2022-03-29 04:13:45', NULL),
(562, 28, 'CASHMERE SHAWL', ' PSC Shawl # 22', 'cashmere-shawl-psc-shawl-22', '', ' PSC Shawl # 22', '1640169639.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:40:39', '2022-03-29 04:13:45', NULL),
(563, 28, 'CASHMERE SHAWL', ' PSC Shawl # 23', 'cashmere-shawl-psc-shawl-23', '', ' PSC Shawl # 23', '1640169719.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:41:59', '2022-03-29 04:13:45', NULL),
(564, 28, 'CASHMERE SHAWL ', 'PSC Shawl # 24', 'cashmere-shawl-psc-shawl-24', '', 'PSC Shawl # 24', '1640169852.jpeg', '30', '', 0, 1, NULL, '', '', '', 0, 0, 0, NULL, NULL, '2021-12-22 16:44:12', '2022-03-29 04:13:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `side_banner` int(11) DEFAULT NULL,
  `feature` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `order` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `code`, `slug`, `thumbnail`, `description`, `position`, `side_banner`, `feature`, `status`, `order`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `deleted_at`, `_lft`, `_rgt`, `parent_id`) VALUES
(1, 'SILK BLEND LYCRA SCARVES FROM NEPAL', '8402 LY', 'silk-blend-lycra-scarves-from-nepal', '1637656288.jpeg', '', 1, 1, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 00:58:42', '2022-04-04 13:23:25', NULL, 1, 2, NULL),
(2, 'CASHMERE COLLECTIONS FROM NEPAL', 'cash', 'cashmere-collections-from-nepal', '1637656621.jpeg', '', 2, 1, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 00:59:17', '2022-04-04 13:25:32', NULL, 3, 4, NULL),
(3, '100 % SILK DIGITAL PRINT SCARVES', '8602 PRN', '100-silk-digital-print-scarves', '1637657235.jpeg', '', 3, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 00:59:32', '2022-04-04 13:26:46', NULL, 5, 6, NULL),
(4, 'CASHMERE/SILK BLEND REVERSIBLE SCARVES', '8402', 'cashmeresilk-blend-reversible-scarves', '1637657528.jpeg', '', 4, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 01:00:30', '2022-04-04 13:27:41', NULL, 7, 8, NULL),
(5, 'CASHMERE BLEND REVERSIBLE SHAWLS', '8401', 'cashmere-blend-reversible-shawls', '1637657647.jpeg', '', 5, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 01:00:35', '2022-04-04 13:30:38', NULL, 9, 10, NULL),
(6, 'CASHMERE/SILK BLEND REVERSIBLE SCARVES', '8402', 'cashmeresilk-blend-reversible-scarves', '1637224696.jpeg', '', 6, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 01:00:51', '2022-04-04 13:31:35', NULL, 11, 12, NULL),
(7, 'CASHMERE/SILK BLEND INFINITY SCARVES ', 'INF 8402', 'cashmeresilk-blend-infinity-scarves', '1637224713.jpeg', '', 7, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 01:01:06', '2022-04-08 13:45:28', NULL, 33, 34, NULL),
(8, 'CASHMERE BLEND ANTIQUE DESIGN HAND-EMBROIDERY SHAWLS', '8401A-EMB', 'cashmere-blend-antique-design-hand-embroidery-shawls', '1637224729.jpeg', '', 8, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 01:01:32', '2022-04-08 13:46:45', NULL, 35, 36, NULL),
(9, 'CASHMERE BLEND ANTIQUE DESIGN SHAWL', '8401 A', 'cashmere-blend-antique-design-shawl', '1637224752.jpeg', '', 9, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 01:01:43', '2022-04-04 13:39:41', NULL, 13, 14, NULL),
(10, 'CASHMERE INFINITY SCARVES COLLECTIONS', 'INF PCS', 'cashmere-infinity-scarves-collections', '1637224769.jpeg', '', 10, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 01:01:58', '2022-04-04 13:41:18', NULL, 15, 16, NULL),
(11, 'CASHMERE SCARVES COLLECTIONS', 'PSC', 'cashmere-scarves-collections', '1637224793.jpeg', '', 11, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-10-29 01:02:09', '2022-04-04 13:42:40', NULL, 17, 18, NULL),
(12, 'SOLID CASHMERE SCARVES COLLECTIONS', '633 S ', 'solid-cashmere-scarves-collections', '1637224814.jpeg', '', 12, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-16 15:19:25', '2022-04-08 14:56:22', NULL, 37, 38, NULL),
(13, 'SOLID REVERSIBLE CASHMERE SCARVES COLLECTIONS ', 'r msc', 'solid-reversible-cashmere-scarves-collections', '1637224835.jpeg', '', 13, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-16 16:10:22', '2022-04-08 14:57:34', NULL, 39, 40, NULL),
(14, 'PAISLEY DESIGN KANI WEAVE CLASSIC SHAWLS', 'KANI', 'paisley-design-kani-weave-classic-shawls', '1637224852.jpeg', '', 14, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-18 13:05:56', '2022-04-08 15:01:13', NULL, 41, 42, NULL),
(15, 'PAISLEY DESIGN KANI WEAVE SCARVES', 'INF KANI_S', 'paisley-design-kani-weave-scarves', '1637231315.jpeg', '', 15, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-18 15:25:40', '2022-04-04 14:13:07', NULL, 19, 20, NULL),
(16, 'CONTEMPORARY CASHMERE SCARVES COLLECTIONS', 'CCS L-_R', 'contemporary-cashmere-scarves-collections', '1637235725.jpeg', '', 16, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-18 17:40:31', '2022-04-04 14:19:17', NULL, 21, 22, NULL),
(17, 'CONTEMPORARY CASHMERE INFINITY SCARVES COLLECTIONS', 'inf ccs', 'contemporary-cashmere-infinity-scarves-collections', '1637311382.jpeg', '', 17, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-19 13:28:02', '2022-04-04 14:21:14', NULL, 23, 24, NULL),
(18, 'SATIN WEAVE PLAIN SHAWLS', '8501 S', 'satin-weave-plain-shawls', '1637313305.jpeg', '', 18, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-19 15:08:32', '2022-04-04 14:22:29', NULL, 25, 26, NULL),
(19, 'PAISLEY DESIGN KANI WEAVE CLASSIC JACKET', 'KANI JACKET', 'paisley-design-kani-weave-classic-jacket', '1637483054.jpeg', '', 19, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-19 15:32:42', '2022-04-04 14:23:42', NULL, 27, 28, NULL),
(20, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED LONG JACKET', 'LONG JACKET', 'cashmere-blend-antique-design-hand-embroidered-long-jacket', '1637659704.jpeg', '', 20, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-21 14:57:56', '2022-04-04 14:25:41', NULL, 29, 30, NULL),
(21, 'SILK BLEND LYCRA INFINITY SCARVES ', 'INF 8402 LY', 'silk-blend-lycra-infinity-scarves', '1637660078.jpeg', '', 21, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-11-22 17:29:03', '2022-04-04 14:27:24', NULL, 31, 32, NULL),
(22, 'SOLID CASHMERE SHAWL COLLECTIONS', '633 ', 'solid-cashmere-shawl-collections', '1650524310.jpeg', '', 22, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-12-10 13:07:12', '2022-04-21 11:58:59', NULL, 43, 44, NULL),
(23, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED SHORT JACKET', '9001', 'cashmere-blend-antique-design-hand-embroidered-short-jacket', '1650524672.jpeg', '', 23, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-12-21 15:50:34', '2022-04-21 12:04:32', NULL, 45, 46, NULL),
(24, 'CASHMERE BLEND ANTIQUE DESIGN HAND EMBROIDERED SCARVES', '9002 ’S\'', 'cashmere-blend-antique-design-hand-embroidered-scarves', '1650524848.jpeg', '', 24, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-12-21 16:56:53', '2022-04-21 12:07:28', NULL, 47, 48, NULL),
(25, 'CASHMERE POINTED SCARVES', 'PSC POINTED ', 'cashmere-pointed-scarves', '1650525004.jpeg', '', 25, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-12-21 17:12:09', '2022-04-21 12:10:04', NULL, 49, 50, NULL),
(26, 'CASHMERE TWIST SHAWL', 'PSC TWISTED ', 'cashmere-twist-shawl', '1650525691.jpeg', '', 26, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-12-21 17:43:39', '2022-04-21 12:21:31', NULL, 55, 56, NULL),
(27, 'CASHMERE RUWANA', 'PSC RUWANA ', 'cashmere-ruwana', '1650525076.jpeg', '', 27, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-12-22 13:14:04', '2022-04-21 12:11:16', NULL, 51, 52, NULL),
(28, 'CASHMERE SHAWL', 'PSC SHAWL ', 'cashmere-shawl', '1650525409.jpeg', '', 28, 0, 0, 1, NULL, NULL, NULL, NULL, '2021-12-22 15:21:11', '2022-04-21 12:16:49', NULL, 53, 54, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_feature_images`
--

CREATE TABLE `product_feature_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `verify` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone`, `email`, `gender`, `email_verified_at`, `password`, `verify`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Ekta Vyas', NULL, NULL, 'ekta_vyas2002@yahoo.com', NULL, NULL, '$2y$10$t.Bdqw7gUypJGSowoHrj6uVFmnxC7Ko/kB7AZXDbG6JgyF8iNG1ku', 0, NULL, '2022-04-10 15:47:21', '2022-04-10 15:47:21'),
(9, 'Avinesh Shakya', NULL, NULL, 'avi@gmail.com', NULL, NULL, '$2y$10$6vluU/4G2gYgCSUzB0m.dOOF1HCpjH6NMiQGolLQhyz6P7hz6Bjgq', 0, '38sOh4nlWYC8zAXSljKvEW10TlPtSh65oOxa41dTIKomQ1seJBEhMSIa2o9R', '2022-07-14 22:30:44', '2022-07-15 01:58:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_items`
--
ALTER TABLE `navigation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`sort`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `product_feature_images`
--
ALTER TABLE `product_feature_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_feature_images`
--
ALTER TABLE `product_feature_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
