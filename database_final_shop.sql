-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 03, 2020 lúc 02:40 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database_final_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_uploads`
--

CREATE TABLE `image_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_uploads`
--

INSERT INTO `image_uploads` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, 'hang-chinh-hang-nike-ebernon-low-white-rose-gold-2019.jpeg', '2019-11-28 10:39:54', '2019-11-28 10:39:54'),
(2, 'hang-chinh-hang-adidas-ultra-boost-19-collegiate-royal.jpeg', '2019-11-30 09:29:43', '2019-11-30 09:29:43'),
(3, 'bf32e5c9cfa7415788811254e0c6feda.jpg', '2019-11-30 09:30:39', '2019-11-30 09:30:39'),
(4, 'hang-chinh-hang-puma-storm-adrenaline-grey-red-2019.jpeg', '2019-12-01 07:47:24', '2019-12-01 07:47:24'),
(5, 'img_8246_ed9fb13b36234921a7aa0349e2fbfc99_master.jpg', '2019-12-01 07:47:33', '2019-12-01 07:47:33'),
(6, 'img_9562_f3e7ebaa6f9343109986e29db9d97055_master.jpg', '2019-12-01 07:47:37', '2019-12-01 07:47:37'),
(7, 'hang-chinh-hang-nike-air-zoom-winflo-6-black-grey-white-2019.jpeg', '2019-12-01 07:47:47', '2019-12-01 07:47:47'),
(8, 'img_0244_38f40998bfac4c0e92ae94979aebd04f_large.jpg', '2019-12-01 07:47:51', '2019-12-01 07:47:51'),
(13, 'ff8400&text=SALE+UP+TO+400x25.png', '2019-12-07 20:48:25', '2019-12-07 20:48:25'),
(14, 'ff8400&text=SALE+UP+TO+400x25.png', '2019-12-07 20:48:40', '2019-12-07 20:48:40'),
(18, 'cover001.png', '2019-12-07 21:20:00', '2019-12-07 21:20:00'),
(19, 'cover001.png', '2019-12-07 21:20:11', '2019-12-07 21:20:11'),
(20, 'free_horizontal_on_white_by_logaster.png', '2019-12-22 01:57:44', '2019-12-22 01:57:44'),
(21, 'Repeat Grid 1.jpg', '2019-12-22 03:01:45', '2019-12-22 03:01:45'),
(22, 'Repeat Grid 1.jpg', '2019-12-22 03:03:56', '2019-12-22 03:03:56'),
(23, 'barrett-ward-cOJgO4Zzs-w-unsplash.jpg', '2020-01-01 03:54:49', '2020-01-01 03:54:49'),
(24, 'adidas copa.jpg', '2020-01-03 06:38:27', '2020-01-03 06:38:27'),
(25, 'adidas copa.jpg', '2020-01-15 06:13:03', '2020-01-15 06:13:03'),
(26, 'nike.png', '2020-01-16 18:41:32', '2020-01-16 18:41:32'),
(27, '614460173582677146819357990697323183210496n.jpg', '2020-01-16 19:08:08', '2020-01-16 19:08:08'),
(28, '609753143311466408913421855018223641034752n.jpg', '2020-01-16 19:09:04', '2020-01-16 19:09:04'),
(29, '95135a1bfe1f4da7a2920534bc79ce27.jpg', '2020-01-16 19:10:15', '2020-01-16 19:10:15'),
(30, '48b86c8e5e1143b2ad0dd706e1749911.jpg', '2020-01-16 19:11:04', '2020-01-16 19:11:04'),
(31, '41_2.jpg', '2020-01-16 19:14:29', '2020-01-16 19:14:29'),
(32, '17_3.jpg', '2020-01-16 19:16:13', '2020-01-16 19:16:13'),
(33, '3_2.jpg', '2020-01-16 19:17:00', '2020-01-16 19:17:00'),
(34, '7739017036770581723342822431700454523011072n.jpg', '2020-01-16 19:18:09', '2020-01-16 19:18:09'),
(35, 'cb3658f2-a5bc-44bb-92f3-33ebf64f9b450349_230x260.jpeg', '2020-01-16 19:19:41', '2020-01-16 19:19:41'),
(36, 'e0bfebda-e30d-4dbf-a295-0d77a1df255a5752_230x260.jpeg', '2020-01-16 19:20:44', '2020-01-16 19:20:44'),
(37, '51161314_963152773883573_836129213684645888_n6808_230x260.jpg', '2020-01-16 19:21:21', '2020-01-16 19:21:21'),
(38, 'noname_48.png', '2020-01-16 19:22:50', '2020-01-16 19:22:50'),
(39, 'hang-chinh-hang-nike-air-max-270-react-just-do-it-grey-2020.jpeg', '2020-01-16 19:25:14', '2020-01-16 19:25:14'),
(40, '0b5b2b99f6e43dd912bdd82359c9e6f7.jpg', '2020-03-03 06:15:13', '2020-03-03 06:15:13'),
(41, '0b6d8fcd65f628dc36534351a61efdcf.jpg', '2020-03-03 06:15:13', '2020-03-03 06:15:13'),
(42, '2dd4cc05ee7a66568b2ccd16c21566b9.jpg', '2020-03-03 06:15:13', '2020-03-03 06:15:13'),
(43, '3_2.jpg', '2020-03-03 06:15:13', '2020-03-03 06:15:13'),
(44, '06d6f0a8baf146d289d5694fe9ef49e6.jpg', '2020-03-03 06:15:14', '2020-03-03 06:15:14'),
(45, '4c194bc391afac51c5e8366200c647fd.jpg', '2020-03-03 06:15:14', '2020-03-03 06:15:14'),
(46, '17_3.jpg', '2020-03-03 06:15:14', '2020-03-03 06:15:14'),
(47, '9abb29019a750f1a017cf4b875dbb5e3.jpg', '2020-03-03 06:15:14', '2020-03-03 06:15:14'),
(48, '22a2a77282dc120cc11469ee9582d43a.jpg', '2020-03-03 06:15:15', '2020-03-03 06:15:15'),
(49, '41_2.jpg', '2020-03-03 06:15:15', '2020-03-03 06:15:15'),
(50, '48b86c8e5e1143b2ad0dd706e1749911.jpg', '2020-03-03 06:15:15', '2020-03-03 06:15:15'),
(51, '49f1121d3a8db0b707a5bd46d176ba80.jpg', '2020-03-03 06:15:15', '2020-03-03 06:15:15'),
(52, '61e9d2000620c0ac1fecef1d15e37234.jpg', '2020-03-03 06:15:16', '2020-03-03 06:15:16'),
(53, '78cfd9ab0eb713a0679a9993c05b1366.jpg', '2020-03-03 06:15:16', '2020-03-03 06:15:16'),
(54, '163a894d675c761fd84839c58e9e29ad.jpg', '2020-03-03 06:15:17', '2020-03-03 06:15:17'),
(55, '180ae2ebc2c4ec9ee9ea471e5021759d.jpg', '2020-03-03 06:15:17', '2020-03-03 06:15:17'),
(56, '240_F_175918488_wkuz1qNqDlsWYhfsHdQAmV23SNmkj3vV.jpg', '2020-03-03 06:15:18', '2020-03-03 06:15:18'),
(57, '817b4eb9bca2b085f78c3f3586c8a237.jpg', '2020-03-03 06:15:18', '2020-03-03 06:15:18'),
(58, '982f09891b72f79eeca13aebd5997bb1.jpg', '2020-03-03 06:15:18', '2020-03-03 06:15:18'),
(59, '919fa773f41df9cedcdd675199b307a5.jpg', '2020-03-03 06:15:18', '2020-03-03 06:15:18'),
(60, '4899b96c19c9effff6d24326c5da8a40.jpg', '2020-03-03 06:15:19', '2020-03-03 06:15:19'),
(61, '3291f9c6ab0ad618a838b1ec95df398b.jpg', '2020-03-03 06:15:19', '2020-03-03 06:15:19'),
(62, '10111_s1_tommy-hilfiger-classic-chinos-shorts_womens-clothing_hkdr73636hemi56283.jpg', '2020-03-03 06:15:19', '2020-03-03 06:15:19'),
(63, '95135a1bfe1f4da7a2920534bc79ce27.jpg', '2020-03-03 06:15:19', '2020-03-03 06:15:19'),
(64, '141348f727ee25f43a847f81a652110c.jpg', '2020-03-03 06:15:20', '2020-03-03 06:15:20'),
(65, '51161314_963152773883573_836129213684645888_n6808_230x260.jpg', '2020-03-03 06:15:20', '2020-03-03 06:15:20'),
(66, '67460662_336085110636156_457406870198419456_n_d2e9e39d71da4ae49deb82c8f1d18bc8_large.jpg', '2020-03-03 06:15:20', '2020-03-03 06:15:20'),
(67, '62359008_471689626911127_1339842698986651648_n_5288d2db6e9f49d991751f22edf8d72f_large.jpg', '2020-03-03 06:15:20', '2020-03-03 06:15:20'),
(68, '609753143311466408913421855018223641034752n.jpg', '2020-03-03 06:15:21', '2020-03-03 06:15:21'),
(69, '614460173582677146819357990697323183210496n.jpg', '2020-03-03 06:15:21', '2020-03-03 06:15:21'),
(70, '7739017036770581723342822431700454523011072n.jpg', '2020-03-03 06:15:21', '2020-03-03 06:15:21'),
(71, 'a1b55a54640f429882803a90cab6d1f2.jpg', '2020-03-03 06:15:21', '2020-03-03 06:15:21'),
(72, 'adidas copa.jpg', '2020-03-03 06:15:22', '2020-03-03 06:15:22'),
(73, 'alexander-rotker-l8p1aWZqHvE-unsplash.jpg', '2020-03-03 06:15:22', '2020-03-03 06:15:22'),
(74, 'b4e0ede556bcd4c1990dbdc46aee3871.jpg', '2020-03-03 06:15:22', '2020-03-03 06:15:22'),
(75, 'b8b5234e8be9c85fcdb50a6160686ed3.jpg', '2020-03-03 06:15:22', '2020-03-03 06:15:22'),
(76, 'banner.png', '2020-03-03 06:15:22', '2020-03-03 06:15:22'),
(77, 'barrett-ward-cOJgO4Zzs-w-unsplash.jpg', '2020-03-03 06:15:22', '2020-03-03 06:15:22'),
(78, 'bd0d897cd214ed09ac8c0f1e3fd7e107.jpg', '2020-03-03 06:15:23', '2020-03-03 06:15:23'),
(79, 'bf32e5c9cfa7415788811254e0c6feda.jpg', '2020-03-03 06:15:23', '2020-03-03 06:15:23'),
(80, 'cb3658f2-a5bc-44bb-92f3-33ebf64f9b450349_230x260.jpeg', '2020-03-03 06:15:23', '2020-03-03 06:15:23'),
(81, 'cfe347c170bfbd10db5e5e238a198514.jpg', '2020-03-03 06:15:23', '2020-03-03 06:15:23'),
(82, 'cover001.png', '2020-03-03 06:15:23', '2020-03-03 06:15:23'),
(83, 'd2bbeb09a70a4252cac0420cd8c72303.jpg', '2020-03-03 06:15:23', '2020-03-03 06:15:23'),
(84, 'd5efee090c5e86babd862e4c0d9421e1.jpg', '2020-03-03 06:15:24', '2020-03-03 06:15:24'),
(85, 'decf14d4e8ea6351935e1f7b3b592388.jpg', '2020-03-03 06:15:24', '2020-03-03 06:15:24'),
(86, 'e0bfebda-e30d-4dbf-a295-0d77a1df255a5752_230x260.jpeg', '2020-03-03 06:15:24', '2020-03-03 06:15:24'),
(87, 'eddy-lackmann-7YyZFaNKuLQ-unsplash.jpg', '2020-03-03 06:15:24', '2020-03-03 06:15:24'),
(88, 'fe0eaa58c9d74b9294b90202d22dd1c1.jpg', '2020-03-03 06:15:24', '2020-03-03 06:15:24'),
(89, 'ff8400&text=SALE+UP+TO+400x25.png', '2020-03-03 06:15:24', '2020-03-03 06:15:24'),
(90, 'hang-chinh-hang-adidas-nmd-r1-pk-running-white-2019.jpeg', '2020-03-03 06:15:24', '2020-03-03 06:15:24'),
(91, 'hang-chinh-hang-adidas-ultra-boost-19-collegiate-royal.jpeg', '2020-03-03 06:15:24', '2020-03-03 06:15:24'),
(92, 'hang-chinh-hang-nike-air-max-270-react-just-do-it-grey-2020.jpeg', '2020-03-03 06:15:25', '2020-03-03 06:15:25'),
(93, 'hang-chinh-hang-nike-air-zoom-winflo-6-black-grey-white-2019.jpeg', '2020-03-03 06:15:25', '2020-03-03 06:15:25'),
(94, 'hang-chinh-hang-nike-ebernon-low-white-rose-gold-2019.jpeg', '2020-03-03 06:15:25', '2020-03-03 06:15:25'),
(95, 'hang-chinh-hang-puma-storm-adrenaline-grey-red-2019.jpeg', '2020-03-03 06:15:25', '2020-03-03 06:15:25'),
(96, 'imani-clovis-LxVxPA1LOVM-unsplash.jpg', '2020-03-03 06:15:25', '2020-03-03 06:15:25'),
(97, 'img_0244_38f40998bfac4c0e92ae94979aebd04f_large.jpg', '2020-03-03 06:15:25', '2020-03-03 06:15:25'),
(98, 'img_8246_ed9fb13b36234921a7aa0349e2fbfc99_master.jpg', '2020-03-03 06:15:26', '2020-03-03 06:15:26'),
(99, 'img_9562_f3e7ebaa6f9343109986e29db9d97055_master.jpg', '2020-03-03 06:15:26', '2020-03-03 06:15:26'),
(100, 'julian-friedle-phX8ug-qIKU-unsplash.jpg', '2020-03-03 06:15:26', '2020-03-03 06:15:26'),
(101, 'kristian-egelund-t1sTHYjSN10-unsplash.jpg', '2020-03-03 06:15:26', '2020-03-03 06:15:26'),
(102, 'nike.png', '2020-03-03 06:15:26', '2020-03-03 06:15:26'),
(103, 'noname_48.png', '2020-03-03 06:15:26', '2020-03-03 06:15:26'),
(104, 'pat-kwon-EJTjetc8tPs-unsplash.jpg', '2020-03-03 06:15:26', '2020-03-03 06:15:26'),
(105, 'rex-tavanh-GSwMQzHUEXk-unsplash.jpg', '2020-03-03 06:15:26', '2020-03-03 06:15:26'),
(106, 'sebastian-pociecha-JN4gEX-tR1o-unsplash.jpg', '2020-03-03 06:15:27', '2020-03-03 06:15:27'),
(107, 'viking-gymnasitcs-and-dance-generic.jpg', '2020-03-03 06:15:27', '2020-03-03 06:15:27'),
(108, 'waqar-khalid-xHrkWhLVM8E-unsplash.jpg', '2020-03-03 06:15:27', '2020-03-03 06:15:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2019_11_27_143722_tbl_coupon_code', 2),
(52, '2019_11_27_164054_tbl_coupon_code', 3),
(54, '2014_10_12_000000_create_users_table', 4),
(55, '2014_10_12_100000_create_password_resets_table', 4),
(56, '2019_10_24_172608_create_tbl_admin_table', 4),
(57, '2019_10_25_143847_create_tbl_category_product', 4),
(58, '2019_10_27_075414_create_tbl_brand_product', 4),
(59, '2019_10_27_152514_create_tbl_product', 4),
(60, '2019_11_01_135200_tbl_customer', 4),
(61, '2019_11_01_144905_tbl_shipping', 4),
(62, '2019_11_03_145422_tbl_payment', 4),
(63, '2019_11_03_145618_tbl_order', 4),
(64, '2019_11_03_145646_tbl_order_detail', 4),
(65, '2019_11_16_035505_create_image_uploads_table', 4),
(66, '2019_11_23_081645_create_tbl_product_detail', 4),
(67, '2019_11_27_180752_tbl_coupon_code', 4),
(68, '2019_12_05_170455_tbl_contact_info', 5),
(69, '2019_12_07_102154_create_tbl_slide', 6),
(70, '2019_12_08_061934_create_tbl_blogs', 7),
(71, '2019_12_11_155623_create_tbl_data_apriori', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Trường Thịnh', '123134234', '2019-11-28 17:38:17', '2020-03-03 12:43:55'),
(3, 'thinh@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Trường Thịnh', '123', '2019-12-17 15:28:51', '2020-03-03 12:44:11'),
(4, 'nguyenvannam2409@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Nguyễn Văn Nam', '0359594562', '2019-12-17 15:28:51', '2019-12-17 15:28:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_like_count` int(11) NOT NULL,
  `blog_dislike_count` int(11) NOT NULL,
  `blog_comment_count` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `title`, `alias`, `featured_image`, `category`, `blog_like_count`, `blog_dislike_count`, `blog_comment_count`, `status`, `content`, `author_id`, `created_at`, `updated_at`) VALUES
(2, 'Sale Tet Holiday up to 50%', 'thông tin sale tet 2020', 'adidas copa.jpg', 'null', 0, 0, 0, '1', '<p><strong>Sale gi&agrave;y copa 50%</strong></p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:1px; position:absolute; top:38.4545px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '1', '2020-01-15 13:26:47', '2020-01-15 13:26:58'),
(3, 'Đánh giá UltraBoost 19, giày thể thao đa dụng hàng đầu của Adidas', 'Adidas UltraBoost 19 được coi là một trong những đôi giày thể thao đáng chú ý nhất từ đầu năm đến nay với thiết kế hoàn toàn mới.', 'hang-chinh-hang-adidas-ultra-boost-19-collegiate-royal.jpeg', 'null', 0, 0, 0, '1', '<div class=\"col740 fr\">\r\n<h2>Adidas UltraBoost 19 được coi l&agrave; một trong những đ&ocirc;i gi&agrave;y thể thao đ&aacute;ng ch&uacute; &yacute; nhất từ đầu năm đến nay với thiết kế ho&agrave;n to&agrave;n mới.</h2>\r\n\r\n<div id=\"main-detail\">\r\n<div id=\"divFirst\">\r\n<div id=\"bsfirst\">\r\n<div id=\"abdf\">\r\n<p>UltraBoost 19 l&agrave; đ&ocirc;i gi&agrave;y chạy bộ h&agrave;ng đầu của Adidas. Tuy nhi&ecirc;n, kh&ocirc;ng chỉ l&agrave; gi&agrave;y thể thao, gi&agrave;y chạy bộ, đ&ocirc;i gi&agrave;y n&agrave;y c&ograve;n l&agrave; một trong số &iacute;t những đ&ocirc;i gi&agrave;y được cả giới thời trang săn đ&oacute;n.</p>\r\n\r\n<div class=\"share_image\">\r\n<div class=\"item_gallery\">\r\n<div class=\"thumb_detail\">\r\n<div class=\"expan_img\" style=\"display:none !important\">&nbsp;</div>\r\n<img alt=\"undefined\" class=\"img-responsive\" src=\"https://media.thethao247.vn/upload/thanhtung/2019/10/15/review-adidas-2019-8.jpg\" title=\"undefined\" /></div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kể từ khi xuất hiện đến nay, Adidas UltraBoost 19 lu&ocirc;n lọt <a href=\"https://thethao247.vn/318-5-mau-adidas-ultraboost-dep-va-dang-mua-nhat-hien-nay-d180703.html\" target=\"_blank\">top những đ&ocirc;i gi&agrave;y đ&aacute;ng mua nhất của Adidas</a>.</p>\r\n\r\n<p>Điều n&agrave;y c&oacute; được l&agrave; nhờ những c&ocirc;ng nghệ cao cấp m&agrave; Adidas đ&atilde; ứng dụng cho những sản phẩm của m&igrave;nh c&ugrave;ng thiết kế thời trang đầy s&aacute;ng tạo.</p>\r\n\r\n<h2><strong>1. Th&ocirc;ng tin cơ bản v&agrave; gi&aacute; của Adidas UltraBoost 19</strong></h2>\r\n\r\n<table border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Gi&aacute; tham khảo</strong></td>\r\n			<td>180 USD (4,1 triệu đồng)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Số m&agrave;u sắc</strong></td>\r\n			<td>26 m&agrave;u kh&aacute;c nhau</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Hỗ trợ b&agrave;n ch&acirc;n</strong></td>\r\n			<td>Th&ocirc;ng thường</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Địa h&igrave;nh</strong></td>\r\n			<td>Đường nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Mục đ&iacute;ch</strong></td>\r\n			<td>Luyện tập hằng ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Trọng lượng</strong></td>\r\n			<td>Nam: 309g&nbsp; - Nữ: 269 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ dốc g&oacute;t - mũi (drop)</strong></td>\r\n			<td>10 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Thời điểm ra mắt</strong></td>\r\n			<td>2/2019</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong>2. C&ocirc;ng nghệ của&nbsp;Adidas UltraBoost 19</strong></h2>\r\n\r\n<p><span style=\"color:#222222\">- Đ&ocirc;i gi&agrave;y đ&igrave;nh đ&aacute;m của Adidas tiếp tục được trang bị <a href=\"https://thethao247.vn/318-cuoc-chien-dem-giay-khoc-liet-giua-puma-va-adidas-d177293.html\" target=\"_blank\">đệm gi&agrave;y phản hồi năng lượng Boost</a> nhưng nhiều đệm hơn đến 20% so với phi&ecirc;n bản trước.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"share_image\">\r\n<div class=\"item_gallery\">\r\n<div class=\"thumb_detail\">\r\n<div class=\"expan_img\" style=\"display:none !important\">&nbsp;</div>\r\n<img alt=\"undefined\" class=\"img-responsive\" src=\"https://media.thethao247.vn/upload/thanhtung/2019/10/15/review-adidas-2019-2.jpg\" title=\"undefined\" /></div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#222222\">- Th&acirc;n gi&agrave;y kết cấu từ vải dệt nguy&ecirc;n khối <a href=\"https://thethao247.vn/318-cong-nghe-primeknit-tren-giay-adidas-ultraboost-co-gi-hay-d178381.html\" target=\"_blank\">Primeknit 360 </a>đem lại cảm gi&aacute;c vừa vặn tối ưu.</span></p>\r\n\r\n<p><span style=\"color:#222222\">- C&ocirc;ng nghệ &quot;Torsion Spring&quot; với một khung cứng th&ecirc;m v&agrave;o giữa c&aacute;c lớp đệm boost gi&uacute;p n&acirc;ng đỡ v&agrave; ổn định b&agrave;n ch&acirc;n trong suốt qu&aacute; tr&igrave;nh di chuyển. C&ocirc;ng nghệ n&agrave;y c&oacute; nhiều n&eacute;t tương đồng với đĩa carbon tr&ecirc;n <a href=\"https://thethao247.vn/318-sieu-giay-toc-do-cua-nike-chinh-thuc-mang-ten-vaporfly-next-d178510.html\" target=\"_blank\">si&ecirc;u gi&agrave;y Vaporfly Next % </a>đ&igrave;nh đ&aacute;m của Nike.</span></p>\r\n\r\n<h2><strong>3. Đ&aacute;nh gi&aacute; vẻ bề ngo&agrave;i&nbsp;Adidas UltraBoost 19</strong></h2>\r\n\r\n<p>- Nhiều người đ&aacute;nh gi&aacute; Adidas UltraBoost 19 l&agrave; phi&ecirc;n bản được thiết kế thời trang nhất từ trước đến nay nhờ thiết kế theo xu hướng tối giản, loại bỏ hết c&aacute;c chi tiết thừa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"share_image\">\r\n<div class=\"item_gallery\">\r\n<div class=\"thumb_detail\">\r\n<div class=\"expan_img\" style=\"display:none !important\">&nbsp;</div>\r\n<img alt=\"undefined\" class=\"img-responsive\" src=\"https://media.thethao247.vn/upload/thanhtung/2019/10/15/review-adidas-2019-3.jpg\" title=\"undefined\" /></div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Đ&ocirc;i gi&agrave;y n&agrave;y c&oacute; tới 26 phi&ecirc;n bản m&agrave;u kh&aacute;c nhau gi&uacute;p cho việc lựa chọn để kết hợp gi&agrave;y với trang phục trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết.</p>\r\n\r\n<h2><strong>4. Cảm nhận thực tế sử dụng Adidas UltraBoost 19</strong></h2>\r\n\r\n<p>Những đ&aacute;nh gi&aacute; dưới đ&acirc;y được thực hiện bởi người d&ugrave;ng tr&ecirc;n Runrepeat.</p>\r\n\r\n<p><u><span style=\"color:#222222\"><strong>Ưu điểm:</strong></span></u></p>\r\n\r\n<p>- Đệm Boost d&agrave;y v&agrave; tạo sự phản hồi năng lượng tốt hơn c&aacute;c phi&ecirc;n bản kh&aacute;c từ trước đến nay;</p>\r\n\r\n<p>- Th&acirc;n gi&agrave;y Primeknit mềm mại, tho&aacute;ng v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng, trầy xước da;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"share_image\">\r\n<div class=\"item_gallery\">\r\n<div class=\"thumb_detail\">\r\n<div class=\"expan_img\" style=\"display:none !important\">&nbsp;</div>\r\n<img alt=\"undefined\" class=\"img-responsive\" src=\"https://media.thethao247.vn/upload/thanhtung/2019/10/15/review-adidas-2019-4.jpg\" title=\"undefined\" /></div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div id=\"AdAsia\">&nbsp;</div>\r\n\r\n<div id=\"bs_mobileinpage\">&nbsp;</div>\r\n\r\n<div id=\"bsend\">\r\n<div class=\"584125381\" id=\"video-ads-show\">&nbsp;</div>\r\n\r\n<div class=\"ads-detail-inline ads_content\">\r\n<div id=\"bs_mobileinpage\">&nbsp;</div>\r\n\r\n<div id=\"AdAsia\">&nbsp;</div>\r\n<!-- BEGIN TAG - DO NOT MODIFY --><!-- END TAG -->\r\n\r\n<div style=\"margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; max-width:100%; min-width:300px\">\r\n<div style=\"height:0; overflow:hidden; padding-bottom:56.25%; position:relative\"><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://embed.dugout.com/v2/?p=eyJrZXkiOiIiLCJwIjoidGhldGhhbzI0Ny12biIsInBsIjoiU2czbjNjZ2UifQ==\" style=\"width: 300px; min-width: 100%; position: absolute; top:0; left: 0; height: 100%; overflow: hidden; \" width=\"100%\"></iframe></div>\r\n</div>\r\n</div>\r\n\r\n<div id=\"divLast\">\r\n<div id=\"abde\">\r\n<p>- Nhiều người cho biết UltraBoost 19 rất đa dụng c&oacute; thể gi&uacute;p họ chạy bộ, tập gym, hay tham gia c&aacute;c cuộc đua marathon.</p>\r\n\r\n<p>- Độ bền cao l&agrave; điều m&agrave; rất nhiều người ấn tượng sau một thời gian d&agrave;i sử dụng UltraBoost 19;</p>\r\n\r\n<p>- Th&acirc;n gi&agrave;y rộng v&agrave; thoải m&aacute;i với cả những người c&oacute; b&agrave;n ch&acirc;n b&egrave; to ngang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"share_image\">\r\n<div class=\"item_gallery\">\r\n<div class=\"thumb_detail\">\r\n<div class=\"expan_img\" style=\"display:none !important\">&nbsp;</div>\r\n<strong><img alt=\"undefined\" class=\"img-responsive\" src=\"https://media.thethao247.vn/upload/thanhtung/2019/10/15/review-adidas-2019-5.jpg\" title=\"undefined\" /> </strong></div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u><strong>Nhược điểm:</strong></u></p>\r\n\r\n<p>- Một số người d&ugrave;ng ph&agrave;n n&agrave;n về c&aacute;ch phối m&agrave;u của UltraBoost 19;</p>\r\n\r\n<p>- Trong qu&aacute; tr&igrave;nh sử dụng, một số người d&ugrave;ng cho biết th&acirc;n gi&agrave;y c&oacute; một ch&uacute;t rộng nhỏ n&ecirc;n cần buộc d&acirc;y chặt hơn nếu kh&ocirc;ng muốn bị x&ecirc; dịch ch&acirc;n trong gi&agrave;y.</p>\r\n\r\n<h2><strong>5. Kết luận về&nbsp;Adidas UltraBoost 19</strong></h2>\r\n\r\n<p>Adidas UltraBoost 19 được coi sự lột x&aacute;c đ&aacute;ng kể nhất của d&ograve;ng gi&agrave;y n&agrave;y từ trước đến nay.</p>\r\n\r\n<p>Những người đ&atilde; thử n&oacute; đa số đều h&agrave;i l&ograve;ng với đế gi&agrave;y phản hồi năng lượng nhạy, th&acirc;n gi&agrave;y &ecirc;m &aacute;i vừa vặn được thiết kế thời trang.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy, đ&ocirc;i gi&agrave;y n&agrave;y l&agrave; một lựa chọn kh&aacute; ph&ugrave; hợp nếu như bạn đang t&igrave;m một đ&ocirc;i gi&agrave;y đa dụng, để vừa luyện tập lại vừa c&oacute; thể kết hợp với trang phục thường ng&agrave;y đi l&agrave;m, đi học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"share_image\">\r\n<div class=\"item_gallery\">\r\n<div class=\"thumb_detail\">\r\n<div class=\"expan_img\" style=\"display:none !important\">&nbsp;</div>\r\n<img alt=\"undefined\" class=\"img-responsive\" src=\"https://media.thethao247.vn/upload/thanhtung/2019/10/15/review-adidas-2019-6.jpg\" title=\"undefined\" /></div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"share_image\">\r\n<div class=\"item_gallery\">\r\n<div class=\"thumb_detail\">\r\n<div class=\"expan_img\" style=\"display:none !important\">&nbsp;</div>\r\n<img alt=\"undefined\" class=\"img-responsive\" src=\"https://media.thethao247.vn/upload/thanhtung/2019/10/15/review-adidas-2019-7.jpg\" title=\"undefined\" /></div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"share_image\">\r\n<div class=\"item_gallery\">\r\n<div class=\"thumb_detail\">\r\n<div class=\"expan_img\" style=\"display:none !important\">&nbsp;</div>\r\n<img alt=\"undefined\" class=\"img-responsive\" src=\"https://media.thethao247.vn/upload/thanhtung/2019/10/15/review-adidas-2019-1.jpg\" title=\"undefined\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- For Facebook -->\r\n\r\n<div class=\"fb_reset\" id=\"fb-root\">\r\n<div style=\"height:0px; position:absolute; top:-10000px; width:0px\">\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"ads\">\r\n<div class=\"ads-detail-bottom ads_content\">\r\n<div class=\"w50ads\"><!-- BEGIN TAG - DO NOT MODIFY --><!-- END TAG -->\r\n<div style=\"margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; max-width:100%; min-width:300px\">\r\n<div style=\"height:0; overflow:hidden; padding-bottom:56.25%; position:relative\"><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://embed.dugout.com/v2/?p=eyJrZXkiOiIiLCJwIjoidGhldGhhbzI0Ny12biIsInBsIjoiVDFORjlNSHIifQ==\" style=\"width: 300px; min-width: 100%; position: absolute; top:0; left: 0; height: 100%; overflow: hidden; \" width=\"100%\"></iframe></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '4', '2020-03-03 13:25:35', '2020-03-03 13:25:35'),
(4, 'Adidas AlphaBoost : Sự phát triển về thân hình giúp trải nhiệm hoàn mỹ hơn', 'Adidas AlphaBoost mẫu giày của sự kết hợp tinh tế giữa thân giày của AlphaBOUNCE và được gia cố thêm với công nghệ đế BOOST êm ái.', 'noname_48.png', 'null', 0, 0, 0, '1', '<div class=\"active entry-content panel woocommerce-Tabs-panel woocommerce-Tabs-panel--description\" id=\"tab-description\">\r\n<p><span style=\"font-family:\'times new roman\',times,serif\">&nbsp;&nbsp;<span style=\"font-size:100%\"> Boost v&agrave; Bounce l&agrave; hai hệ thống đệm nổi tiếng nhất của Adidas. Mỗi loại được y&ecirc;u th&iacute;ch tr&ecirc;n khắp thế giới v&igrave; sự thoải m&aacute;i, &ecirc;m &aacute;i nhưng cũng kh&ocirc;ng k&eacute;m phần nổi bật. V&agrave; sự kết hợp giữa hai sự ho&agrave;n hảo ấy tạo ra một đ&ocirc;i gi&agrave;y ho&agrave;n to&agrave;n mới :&nbsp; Adidas AlphaBOOST. Adidas AlphaBoost 2019 thiết kế v&ocirc; c&ugrave;ng lạ mắt v&agrave; ấn tượng. L&agrave; kết hợp giữa của th&acirc;n gi&agrave;y của AlphaBOUNCE. V&agrave; được gia cố th&ecirc;m với c&ocirc;ng nghệ đế BOOST &ecirc;m &aacute;i. Tạo n&ecirc;n một phong c&aacute;ch mới lạ v&agrave; đầy th&uacute; vị.</span></span></p>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif; font-size:100%\">&nbsp; &nbsp;Được mệnh danh l&agrave; một đ&ocirc;i gi&agrave;y kh&ocirc;ng thể thiếu của thời đại. Đ&ocirc;i gi&agrave;y AlphaBoost dần chiếm lĩnh những chỗ đứng s&aacute;ng gi&aacute; nhất trong lịch sử ng&agrave;nh gi&agrave;y thể thao Sneaker thế giới.</span></p>\r\n\r\n<h2><span style=\"font-family:\'times new roman\',times,serif\">1. Adidas AlphaBoost : Sự ph&aacute;t triển về th&acirc;n h&igrave;nh gi&uacute;p trải nhiệm ho&agrave;n mỹ hơn</span></h2>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif\">Như đ&atilde; n&oacute;i ở tr&ecirc;n, Adidas AlphaBoost thừa kế ở đ&agrave;n anh BOUNCE với phần th&acirc;n gi&agrave;y l&agrave;m bằng lưới của c&ocirc;ng nghệ Aramis_ cực kỳ hiện đại.&nbsp; D&ugrave; kh&ocirc;ng qu&aacute; nổi bật như đ&agrave;n anh <a href=\"https://sneakerhs.com/product/adidas-ultra-boost-4-0\" rel=\"noopener noreferrer\" target=\"_blank\">Ultra Boost</a> hay <a href=\"https://sneakerhs.com/product/adidas-alphabounce-beyond-2017\" rel=\"noopener noreferrer\" target=\"_blank\">AlphaBounce</a>. Nhưng cũng kh&ocirc;ng thể phủ nhận rằng thiết kế của AlphaBoost l&agrave; một điều mới mẻ v&agrave; đầy sự thu h&uacute;t thuyết phục.</span></p>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif\">Sự thay đổi tinh tế n&agrave;y được thể hiện ở sự giữ nguy&ecirc;n chất liệu giống gi&agrave;y <a href=\"https://sneakerhs.com/product/adidas-alphabounce-beyond-2019\" rel=\"noopener noreferrer\" target=\"_blank\">AlphaBOUNCE</a> nhưng h&igrave;nh d&aacute;ng lại cải bi&ecirc;n th&agrave;nh kiểu d&aacute;ng Slip-On. Với mặt lưới đầy tho&aacute;ng m&aacute;t c&ugrave;ng h&igrave;nh d&aacute;ng mới. Gi&agrave;y Adidas AlphaBoost dễ đi; gi&uacute;p định h&igrave;nh khu&ocirc;n b&agrave;n ch&acirc;n dễ d&agrave;ng hơn ; v&agrave; &ocirc;m s&aacute;t ch&acirc;n hơn. Ch&uacute;ng kh&ocirc;ng những hỗ trợ tối đa cho c&aacute;c hoạt động thể thao. Như chạy bộ ngo&agrave;i trời v&agrave; luyện tập trong ph&ograve;ng k&iacute;n. M&agrave; c&ograve;n th&iacute;ch hợp để l&agrave;m một đ&ocirc;i gi&agrave;y được sử d&ugrave;ng trong c&aacute;c hoạt động h&agrave;ng ng&agrave;y.</span></p>\r\n<img alt=\"Adidas AlphaBoost với chất liệu lưới như đàn anh AlphaBounce Beyond cùng kiểu dáng ôm chân mới, là một trải nghiệm đáng thử cho người dùng\" class=\"lazyloaded ls-is-cached size-full wp-image-2543\" src=\"https://sneakerhs.com/wp-content/uploads/2019/08/Adidas-AlphaBoost-2019-den-got-vang-2-e1567268663550.jpg\" style=\"height:600px; width:800px\" />\r\n<p>Adidas AlphaBoost với chất liệu lưới như đ&agrave;n anh AlphaBounce Beyond c&ugrave;ng kiểu d&aacute;ng &ocirc;m ch&acirc;n mới, l&agrave; một trải nghiệm đ&aacute;ng thử cho người d&ugrave;ng</p>\r\n\r\n<h2><span style=\"font-family:\'times new roman\',times,serif\">2. Chất liệu đế BOOST: Bền bỉ m&agrave; nhẹ nh&agrave;ng.</span></h2>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif\">Đ&ocirc;i gi&agrave;y th&iacute;ch hợp cho ai muốn cảm gi&aacute;c nhẹ như bay ch&iacute;nh l&agrave; đ&acirc;y!</span></p>\r\n<img alt=\"Đế của AlphaBoost là kết hợp của sự đồng hành với chất liệu BOOST êm ái và bộ khung cao su bền bỉ Continental\" class=\"lazyloaded size-full wp-image-2541\" src=\"https://sneakerhs.com/wp-content/uploads/2019/08/Adidas-AlphaBoost-2019-den-full-3-e1567268564965.jpg\" style=\"height:1067px; width:800px\" />\r\n<p>Đế của AlphaBoost l&agrave; kết hợp của sự đồng h&agrave;nh với chất liệu BOOST &ecirc;m &aacute;i v&agrave; bộ khung cao su bền bỉ Continental</p>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif\">&nbsp; &nbsp; &nbsp;Điểm cộng lớn nhất d&agrave;nh cho đ&ocirc;i gi&agrave;y n&agrave;y c&oacute; lẽ ch&iacute;nh l&agrave; cấu tạo đặc biệt của phần đế gi&agrave;y. Với c&ocirc;ng nghệ khung bền bỉ Continental được giữ nguy&ecirc;n. ( Continental &ndash; một c&ocirc;ng nghệ thường thấy được tr&iacute;ch từ cao su l&agrave;m n&ecirc;n vỏ lốp xe đua F1). Gi&uacute;p AlphaBoost 2019 chống trơn trượt. V&agrave; ph&ugrave; hợp với mọi địa h&igrave;nh để chạy; tập luyện thể thao hay hoạt động h&agrave;ng ng&agrave;y. Nay lại th&ecirc;m c&ocirc;ng nghệ đế Boost. Gi&uacute;p đ&ocirc;i gi&agrave;y cực kỳ &ecirc;m &aacute;i v&agrave; nhẹ nh&agrave;ng hơn rất nhiều.</span></p>\r\n\r\n<h2><span style=\"color:#0000ff\">&nbsp;3.Đ&aacute;nh&nbsp;gi&aacute; gi&agrave;y&nbsp;Adidas AlphaBoost 2019:&nbsp;M&agrave;u sắc đơn giản&nbsp;<img alt=\"wink\" class=\"lazyloaded\" src=\"https://htmleditor.online/common/editors/ckeditor_4.9.2_full/plugins/smiley/images/wink_smile.png\" title=\"wink\" /></span></h2>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif\">&nbsp; &nbsp; Với d&ograve;ng gi&agrave;y thể thao <em>Adidas AlphaBoost</em> phi&ecirc;n bản năm 2019 th&igrave; m&agrave;u sắc kh&aacute; đơn giản. C&oacute; lẽ một phần v&igrave; Adidas đang kết hợp với tổ chức bảo vệ m&ocirc;i trường biển &nbsp;Parley n&ecirc;n kh&oacute; c&oacute; thể đ&aacute;nh gi&aacute; tổng thể khi kh&ocirc;ng thử l&ecirc;n ch&acirc;n. May mắn l&agrave; đ&acirc;y l&agrave; d&ograve;ng gi&agrave;y kh&ocirc;ng k&eacute;n người đi v&agrave; loại ch&acirc;n. N&ecirc;n mọi sự kết hợp với ch&uacute;ng kh&aacute; l&agrave; dễ d&agrave;ng v&agrave; ho&agrave;n hảo.</span></p>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif\">&nbsp; &nbsp;<span style=\"color:#0000ff\">Tổng kết : Điểm m&igrave;nh ưa th&iacute;ch nhất ở d&ograve;ng gi&agrave;y n&agrave;y ch&iacute;nh l&agrave; đế boots v&agrave; m&agrave;u sắc. Đế nhẹ v&agrave; bền th&igrave; kh&ocirc;ng c&ograve;n g&igrave; phải b&agrave;n nữa rồi. C&ograve;n về m&agrave;u sắc c&oacute; v&agrave;i th&ocirc;ng tin n&oacute;i rằng m&agrave;u của Adidas AlphaBoost đơn điệu. Tuy nhi&ecirc;n m&igrave;nh lại thấy rằng n&oacute;i l&agrave; sự đơn giản v&agrave; kh&aacute; dễ để lựa chọn cũng như phối đồ.</span></span></p>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif\">&nbsp; &nbsp; C&aacute;c bạn c&oacute; thể mua<strong> <em>Adidas AlphaBoost gi&aacute; rẻ</em> </strong>cũng như <strong>chất lượng </strong>tại H&amp;S sneaker. H&amp;S Sneaker bảo h&agrave;nh 6 th&aacute;ng, miễn ph&iacute; vận chuyển. V&agrave; tư vấn miễn ph&iacute; về tất cả c&aacute;c d&ograve;ng gi&agrave;y bạn đang ph&acirc;n v&acirc;n ; một c&aacute;ch kh&aacute;ch quan nhất. Th&ecirc;m nữa mọi sản phẩm b&ecirc;n m&igrave;nh đều cam kết chất lượng tốt nhất. Với mọi h&igrave;nh ảnh tự chụp cận cảnh sản phẩm. H&agrave;ng th&igrave; lu&ocirc;n c&oacute; sẵn đ&aacute;p ứng mọi nhu cầu kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-family:\'times new roman\',times,serif\"><span style=\"color:#ed1c24\"><strong>Lưu &yacute; nhẹ</strong> 😯 :</span> Kh&ocirc;ng t&igrave;m hiểu v&agrave; thắt d&acirc;y gi&agrave;y cho <strong><em>Adidas AlphaBoost</em></strong> ; hay c&aacute;c d&ograve;ng gi&agrave;y thể thao. V&igrave; c&aacute;c d&ograve;ng gi&agrave;y thể thao đ&atilde; được thiết kế để g&acirc;y ấn tượng. Từ điểm nhấn thiết kế mạnh mẽ của thể thao. Sẽ kh&ocirc;ng th&iacute;ch hợp để đan d&acirc;y giống c&aacute;c d&ograve;ng gi&agrave;y thời trang kh&aacute;c&nbsp; như Vans hoặc Converse. Đan d&acirc;y kh&ocirc;ng khiến đ&ocirc;i gi&agrave;y thể thao của bạn tr&ocirc;ng &ldquo;Kh&aacute;c bọt&rdquo; hơn đ&acirc;u. M&agrave; chỉ khiến n&oacute; &ldquo;Qu&ecirc; một cục&rdquo; hơn m&agrave; th&ocirc;i! Nhớ nh&eacute; !!!!</span></p>\r\n</div>', '4', '2020-03-03 13:29:36', '2020-03-03 13:29:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '22', 1, '2019-11-28 17:39:30', '2019-11-28 17:39:30'),
(2, 'Adidas', '3', 1, '2019-11-30 16:29:13', '2019-11-30 16:29:13'),
(3, 'Kappa', '3', 1, '2019-11-30 16:29:18', '2020-01-15 13:20:12'),
(4, 'Lining', '3', 1, '2019-12-06 17:08:26', '2019-12-06 17:08:26'),
(5, 'Mizuno', 'mizuno 123 1', 1, '2020-01-15 13:16:32', '2020-01-15 13:20:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Sneaker', '2', 1, '2019-11-28 17:39:23', '2020-01-17 01:44:50'),
(2, 'T - Shirt', '1', 1, '2019-11-30 16:28:55', '2019-11-30 16:28:55'),
(3, 'Sneaker Adidas', '1', 1, '2019-11-30 16:28:59', '2019-11-30 16:28:59'),
(4, 'Polos', '1', 1, '2019-12-01 15:18:36', '2019-12-01 15:18:36'),
(5, 'Futsal IC', 'Futsal 123', 1, '2020-01-15 13:15:24', '2020-01-17 02:06:25'),
(6, 'Futsal TF', '123', 1, '2020-01-17 02:06:44', '2020-01-17 02:06:44'),
(7, 'Futsal AG', '123', 1, '2020-01-17 02:06:57', '2020-01-17 02:06:57'),
(8, 'Short', '1', 1, '2020-01-17 02:07:10', '2020-01-17 02:07:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact_info`
--

CREATE TABLE `tbl_contact_info` (
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact_info`
--

INSERT INTO `tbl_contact_info` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`, `created_at`, `updated_at`) VALUES
(1, 'hong nhung', 'test019@mailinartor.com', '123', 'aaa', '2019-12-05 17:36:27', '2019-12-06 16:06:44'),
(2, 'truong thinh', 'thinh@mail.com', '123', '2222222222', '2019-12-06 15:31:42', '2019-12-06 16:06:51'),
(3, 'tan', 'tan@mail.com', 'can mua 50 ao si', 'can mua 50 ao si sl lon', '2019-12-06 16:03:33', '2019-12-06 16:06:58'),
(5, '1', 'truongthinh@mail.com', '123', '4333', '2019-12-06 17:17:42', '2019-12-06 17:17:42'),
(6, 'tan', 'test019@mailinartor.com', 'ss', 'ss', '2019-12-06 17:18:20', '2019-12-06 17:18:20'),
(7, 'hong nhung', 'test019@mailinartor.com', '12', '22', '2019-12-06 17:18:45', '2019-12-06 17:18:45'),
(8, 'admin', 'ad@mail.com', 'hủy đơn hàng', 'Không mua nữa', '2020-01-15 13:35:09', '2020-01-15 13:35:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `coupon_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`coupon_id`, `coupon_name`, `coupon_amount`, `coupon_status`, `created_at`, `updated_at`) VALUES
(1, '123a', 30, 1, '2019-11-28 17:38:55', '2020-01-15 13:24:49'),
(3, '1122', 10, 0, '2019-11-28 17:39:17', '2020-01-15 13:23:28'),
(4, '7890', 50, 1, '2019-11-30 03:35:01', '2019-11-30 03:35:01'),
(5, '2020', 15, 1, '2020-01-15 13:23:07', '2020-01-15 13:23:07'),
(6, '2020', 10, 1, '2020-03-03 11:44:59', '2020-03-03 11:44:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Trường Thịnh', 'cus@mail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', '0909090909', '2019-11-28 17:40:44', '2019-12-21 07:02:54'),
(9, 'Nguyễn Trường Thịnh', 'test0193@mailinartor.com', '202cb962ac59075b964b07152d234b70', '0909090909', '2019-12-17 16:57:41', '2019-12-17 16:57:41'),
(10, 'Nguyễn Trường Thịnh', 'test0192@mailinartor.com', '202cb962ac59075b964b07152d234b70', '0909090909', '2019-12-17 16:58:35', '2019-12-17 16:58:35'),
(11, 'Nguyễn Trường Thịnh', 'test0191@mailinartor.com', '202cb962ac59075b964b07152d234b70', '0909090909', '2019-12-17 17:08:27', '2019-12-17 17:08:27'),
(18, 'Nhung Thinh', 'nhung@gmail.com', '202cb962ac59075b964b07152d234b70', '0909090909', '2019-12-19 18:16:08', '2019-12-19 18:16:08'),
(22, 'demo1@', 'demo1@gmail.com', '202cb962ac59075b964b07152d234b70', '123321', '2020-01-01 10:56:28', '2020-01-01 10:56:28'),
(23, 'admin cus', 'ad@mail.com', '202cb962ac59075b964b07152d234b70', '4328989', '2020-01-15 13:32:03', '2020-01-15 13:32:03'),
(24, 'demo khoa luan', 'demo@gamil.com', '4297f44b13955235245b2497399d7a93', '0123456789', '2020-01-17 02:31:09', '2020-01-17 02:31:09'),
(26, 'uit', 'uit@edu.vn', '4297f44b13955235245b2497399d7a93', '02823879879', '2020-03-03 11:42:01', '2020-03-03 11:42:01'),
(27, 'Nguyễn Văn Nam', 'nguyenvannam2409@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0359594562', '2020-03-03 12:42:02', '2020-03-03 12:42:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_data_apriori`
--

CREATE TABLE `tbl_data_apriori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_1` int(11) NOT NULL,
  `product_2` int(11) NOT NULL,
  `product_3` int(11) NOT NULL,
  `product_4` int(11) NOT NULL,
  `recommend_1` int(11) NOT NULL,
  `recommend_2` int(11) NOT NULL,
  `recommend_3` int(11) NOT NULL,
  `recommend_4` int(11) NOT NULL,
  `support` int(11) NOT NULL,
  `Confidence` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_data_apriori`
--

INSERT INTO `tbl_data_apriori` (`id`, `product_1`, `product_2`, `product_3`, `product_4`, `recommend_1`, `recommend_2`, `recommend_3`, `recommend_4`, `support`, `Confidence`, `created_at`, `updated_at`) VALUES
(10645, 4, 0, 0, 0, 9, 0, 0, 0, 72, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10646, 9, 0, 0, 0, 4, 0, 0, 0, 72, 93, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10647, 4, 0, 0, 0, 13, 0, 0, 0, 62, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10648, 13, 0, 0, 0, 4, 0, 0, 0, 62, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10649, 9, 0, 0, 0, 13, 0, 0, 0, 56, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10650, 13, 0, 0, 0, 9, 0, 0, 0, 56, 81, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10651, 4, 0, 0, 0, 24, 0, 0, 0, 69, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10652, 24, 0, 0, 0, 4, 0, 0, 0, 69, 90, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10653, 9, 0, 0, 0, 24, 0, 0, 0, 67, 87, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10654, 24, 0, 0, 0, 9, 0, 0, 0, 67, 87, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10655, 13, 0, 0, 0, 24, 0, 0, 0, 56, 81, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10656, 24, 0, 0, 0, 13, 0, 0, 0, 56, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10657, 16, 0, 0, 0, 4, 0, 0, 0, 44, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10658, 16, 0, 0, 0, 13, 0, 0, 0, 44, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10659, 18, 0, 0, 0, 4, 0, 0, 0, 54, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10660, 18, 0, 0, 0, 9, 0, 0, 0, 51, 91, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10661, 18, 0, 0, 0, 13, 0, 0, 0, 46, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10662, 18, 0, 0, 0, 24, 0, 0, 0, 49, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10663, 4, 0, 0, 0, 17, 0, 0, 0, 62, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10664, 17, 0, 0, 0, 4, 0, 0, 0, 62, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10665, 9, 0, 0, 0, 17, 0, 0, 0, 59, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10666, 17, 0, 0, 0, 9, 0, 0, 0, 59, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10667, 13, 0, 0, 0, 17, 0, 0, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10668, 17, 0, 0, 0, 13, 0, 0, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10669, 17, 0, 0, 0, 24, 0, 0, 0, 51, 74, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10670, 16, 0, 0, 0, 17, 0, 0, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10671, 18, 0, 0, 0, 17, 0, 0, 0, 49, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10672, 17, 0, 0, 0, 18, 0, 0, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10673, 9, 0, 0, 0, 4, 13, 0, 0, 54, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10674, 4, 9, 0, 0, 13, 0, 0, 0, 54, 75, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10675, 13, 0, 0, 0, 4, 9, 0, 0, 54, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10676, 4, 13, 0, 0, 9, 0, 0, 0, 54, 88, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10677, 9, 13, 0, 0, 4, 0, 0, 0, 54, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10678, 4, 0, 0, 0, 9, 24, 0, 0, 62, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10679, 9, 0, 0, 0, 4, 24, 0, 0, 62, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10680, 4, 9, 0, 0, 24, 0, 0, 0, 62, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10681, 24, 0, 0, 0, 4, 9, 0, 0, 62, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10682, 4, 24, 0, 0, 9, 0, 0, 0, 62, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10683, 9, 24, 0, 0, 4, 0, 0, 0, 62, 92, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10684, 13, 0, 0, 0, 4, 24, 0, 0, 54, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10685, 4, 13, 0, 0, 24, 0, 0, 0, 54, 88, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10686, 24, 0, 0, 0, 4, 13, 0, 0, 54, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10687, 4, 24, 0, 0, 13, 0, 0, 0, 54, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10688, 13, 24, 0, 0, 4, 0, 0, 0, 54, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10689, 13, 0, 0, 0, 9, 24, 0, 0, 51, 74, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10690, 9, 13, 0, 0, 24, 0, 0, 0, 51, 91, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10691, 9, 24, 0, 0, 13, 0, 0, 0, 51, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10692, 13, 24, 0, 0, 9, 0, 0, 0, 51, 91, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10693, 4, 9, 0, 0, 18, 0, 0, 0, 51, 71, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10694, 18, 0, 0, 0, 4, 9, 0, 0, 51, 91, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10695, 4, 18, 0, 0, 9, 0, 0, 0, 51, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10696, 9, 18, 0, 0, 4, 0, 0, 0, 51, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10697, 4, 13, 0, 0, 18, 0, 0, 0, 46, 75, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10698, 18, 0, 0, 0, 4, 13, 0, 0, 46, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10699, 4, 18, 0, 0, 13, 0, 0, 0, 46, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10700, 13, 18, 0, 0, 4, 0, 0, 0, 46, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10701, 9, 13, 0, 0, 18, 0, 0, 0, 44, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10702, 18, 0, 0, 0, 9, 13, 0, 0, 44, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10703, 9, 18, 0, 0, 13, 0, 0, 0, 44, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10704, 13, 18, 0, 0, 9, 0, 0, 0, 44, 94, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10705, 18, 0, 0, 0, 4, 24, 0, 0, 46, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10706, 4, 18, 0, 0, 24, 0, 0, 0, 46, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10707, 18, 24, 0, 0, 4, 0, 0, 0, 46, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10708, 18, 0, 0, 0, 9, 24, 0, 0, 44, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10709, 9, 18, 0, 0, 24, 0, 0, 0, 44, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10710, 18, 24, 0, 0, 9, 0, 0, 0, 44, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10711, 13, 24, 0, 0, 18, 0, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10712, 18, 0, 0, 0, 13, 24, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10713, 13, 18, 0, 0, 24, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10714, 18, 24, 0, 0, 13, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10715, 9, 0, 0, 0, 4, 17, 0, 0, 59, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10716, 4, 9, 0, 0, 17, 0, 0, 0, 59, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10717, 17, 0, 0, 0, 4, 9, 0, 0, 59, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10718, 4, 17, 0, 0, 9, 0, 0, 0, 59, 96, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10719, 9, 17, 0, 0, 4, 0, 0, 0, 59, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10720, 4, 13, 0, 0, 17, 0, 0, 0, 46, 75, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10721, 4, 17, 0, 0, 13, 0, 0, 0, 46, 75, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10722, 13, 17, 0, 0, 4, 0, 0, 0, 46, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10723, 9, 13, 0, 0, 17, 0, 0, 0, 46, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10724, 9, 17, 0, 0, 13, 0, 0, 0, 46, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10725, 13, 17, 0, 0, 9, 0, 0, 0, 46, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10726, 4, 24, 0, 0, 17, 0, 0, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10727, 17, 0, 0, 0, 4, 24, 0, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10728, 4, 17, 0, 0, 24, 0, 0, 0, 49, 79, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10729, 17, 24, 0, 0, 4, 0, 0, 0, 49, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10730, 9, 24, 0, 0, 17, 0, 0, 0, 49, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10731, 17, 0, 0, 0, 9, 24, 0, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10732, 9, 17, 0, 0, 24, 0, 0, 0, 49, 83, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10733, 17, 24, 0, 0, 9, 0, 0, 0, 49, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10734, 13, 24, 0, 0, 17, 0, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10735, 13, 17, 0, 0, 24, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10736, 17, 24, 0, 0, 13, 0, 0, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10737, 18, 0, 0, 0, 4, 17, 0, 0, 46, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10738, 4, 18, 0, 0, 17, 0, 0, 0, 46, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10739, 4, 17, 0, 0, 18, 0, 0, 0, 46, 75, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10740, 17, 18, 0, 0, 4, 0, 0, 0, 46, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10741, 18, 0, 0, 0, 9, 17, 0, 0, 46, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10742, 9, 18, 0, 0, 17, 0, 0, 0, 46, 90, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10743, 9, 17, 0, 0, 18, 0, 0, 0, 46, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10744, 17, 18, 0, 0, 9, 0, 0, 0, 46, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10745, 18, 0, 0, 0, 13, 17, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10746, 13, 18, 0, 0, 17, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10747, 13, 17, 0, 0, 18, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10748, 17, 18, 0, 0, 13, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10749, 18, 0, 0, 0, 17, 24, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10750, 18, 24, 0, 0, 17, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10751, 17, 24, 0, 0, 18, 0, 0, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10752, 17, 18, 0, 0, 24, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10753, 13, 0, 0, 0, 4, 9, 24, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10754, 4, 13, 0, 0, 9, 24, 0, 0, 49, 79, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10755, 9, 13, 0, 0, 4, 24, 0, 0, 49, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10756, 4, 9, 13, 0, 24, 0, 0, 0, 49, 90, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10757, 4, 24, 0, 0, 9, 13, 0, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10758, 9, 24, 0, 0, 4, 13, 0, 0, 49, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10759, 4, 9, 24, 0, 13, 0, 0, 0, 49, 79, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10760, 13, 24, 0, 0, 4, 9, 0, 0, 49, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10761, 4, 13, 24, 0, 9, 0, 0, 0, 49, 90, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10762, 9, 13, 24, 0, 4, 0, 0, 0, 49, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10763, 4, 13, 0, 0, 9, 18, 0, 0, 44, 71, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10764, 9, 13, 0, 0, 4, 18, 0, 0, 44, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10765, 4, 9, 13, 0, 18, 0, 0, 0, 44, 81, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10766, 18, 0, 0, 0, 4, 9, 13, 0, 44, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10767, 4, 18, 0, 0, 9, 13, 0, 0, 44, 81, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10768, 9, 18, 0, 0, 4, 13, 0, 0, 44, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10769, 4, 9, 18, 0, 13, 0, 0, 0, 44, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10770, 13, 18, 0, 0, 4, 9, 0, 0, 44, 94, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10771, 4, 13, 18, 0, 9, 0, 0, 0, 44, 94, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10772, 9, 13, 18, 0, 4, 0, 0, 0, 44, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10773, 4, 9, 24, 0, 18, 0, 0, 0, 44, 71, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10774, 18, 0, 0, 0, 4, 9, 24, 0, 44, 77, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10775, 4, 18, 0, 0, 9, 24, 0, 0, 44, 81, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10776, 9, 18, 0, 0, 4, 24, 0, 0, 44, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10777, 4, 9, 18, 0, 24, 0, 0, 0, 44, 85, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10778, 18, 24, 0, 0, 4, 9, 0, 0, 44, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10779, 4, 18, 24, 0, 9, 0, 0, 0, 44, 94, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10780, 9, 18, 24, 0, 4, 0, 0, 0, 44, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10781, 13, 24, 0, 0, 4, 18, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10782, 4, 13, 24, 0, 18, 0, 0, 0, 41, 76, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10783, 18, 0, 0, 0, 4, 13, 24, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10784, 4, 18, 0, 0, 13, 24, 0, 0, 41, 76, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10785, 13, 18, 0, 0, 4, 24, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10786, 4, 13, 18, 0, 24, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10787, 18, 24, 0, 0, 4, 13, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10788, 4, 18, 24, 0, 13, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10789, 13, 18, 24, 0, 4, 0, 0, 0, 41, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10790, 4, 13, 0, 0, 9, 17, 0, 0, 46, 75, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10791, 9, 13, 0, 0, 4, 17, 0, 0, 46, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10792, 4, 9, 13, 0, 17, 0, 0, 0, 46, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10793, 4, 17, 0, 0, 9, 13, 0, 0, 46, 75, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10794, 9, 17, 0, 0, 4, 13, 0, 0, 46, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10795, 4, 9, 17, 0, 13, 0, 0, 0, 46, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10796, 13, 17, 0, 0, 4, 9, 0, 0, 46, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10797, 4, 13, 17, 0, 9, 0, 0, 0, 46, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10798, 9, 13, 17, 0, 4, 0, 0, 0, 46, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10799, 4, 24, 0, 0, 9, 17, 0, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10800, 9, 24, 0, 0, 4, 17, 0, 0, 49, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10801, 4, 9, 24, 0, 17, 0, 0, 0, 49, 79, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10802, 17, 0, 0, 0, 4, 9, 24, 0, 49, 70, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10803, 4, 17, 0, 0, 9, 24, 0, 0, 49, 79, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10804, 9, 17, 0, 0, 4, 24, 0, 0, 49, 83, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10805, 4, 9, 17, 0, 24, 0, 0, 0, 49, 83, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10806, 17, 24, 0, 0, 4, 9, 0, 0, 49, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10807, 4, 17, 24, 0, 9, 0, 0, 0, 49, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10808, 9, 17, 24, 0, 4, 0, 0, 0, 49, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10809, 13, 24, 0, 0, 4, 17, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10810, 4, 13, 24, 0, 17, 0, 0, 0, 41, 76, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10811, 13, 17, 0, 0, 4, 24, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10812, 4, 13, 17, 0, 24, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10813, 17, 24, 0, 0, 4, 13, 0, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10814, 4, 17, 24, 0, 13, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10815, 13, 17, 24, 0, 4, 0, 0, 0, 41, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10816, 9, 13, 0, 0, 17, 24, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10817, 13, 24, 0, 0, 9, 17, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10818, 9, 13, 24, 0, 17, 0, 0, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10819, 13, 17, 0, 0, 9, 24, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10820, 9, 13, 17, 0, 24, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10821, 17, 24, 0, 0, 9, 13, 0, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10822, 9, 17, 24, 0, 13, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10823, 13, 17, 24, 0, 9, 0, 0, 0, 41, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10824, 18, 0, 0, 0, 4, 9, 17, 0, 46, 82, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10825, 4, 18, 0, 0, 9, 17, 0, 0, 46, 86, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10826, 9, 18, 0, 0, 4, 17, 0, 0, 46, 90, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10827, 4, 9, 18, 0, 17, 0, 0, 0, 46, 90, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10828, 4, 17, 0, 0, 9, 18, 0, 0, 46, 75, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10829, 9, 17, 0, 0, 4, 18, 0, 0, 46, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10830, 4, 9, 17, 0, 18, 0, 0, 0, 46, 78, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10831, 17, 18, 0, 0, 4, 9, 0, 0, 46, 95, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10832, 4, 17, 18, 0, 9, 0, 0, 0, 46, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10833, 9, 17, 18, 0, 4, 0, 0, 0, 46, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10834, 18, 0, 0, 0, 4, 13, 17, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10835, 4, 18, 0, 0, 13, 17, 0, 0, 41, 76, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10836, 13, 18, 0, 0, 4, 17, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10837, 4, 13, 18, 0, 17, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10838, 13, 17, 0, 0, 4, 18, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10839, 4, 13, 17, 0, 18, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10840, 17, 18, 0, 0, 4, 13, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10841, 4, 17, 18, 0, 13, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10842, 13, 17, 18, 0, 4, 0, 0, 0, 41, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10843, 9, 13, 0, 0, 17, 18, 0, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10844, 18, 0, 0, 0, 9, 13, 17, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10845, 9, 18, 0, 0, 13, 17, 0, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10846, 13, 18, 0, 0, 9, 17, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10847, 9, 13, 18, 0, 17, 0, 0, 0, 41, 94, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10848, 13, 17, 0, 0, 9, 18, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10849, 9, 13, 17, 0, 18, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10850, 17, 18, 0, 0, 9, 13, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10851, 9, 17, 18, 0, 13, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10852, 13, 17, 18, 0, 9, 0, 0, 0, 41, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10853, 9, 13, 0, 0, 4, 17, 24, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10854, 4, 9, 13, 0, 17, 24, 0, 0, 41, 76, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10855, 13, 24, 0, 0, 4, 9, 17, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10856, 4, 13, 24, 0, 9, 17, 0, 0, 41, 76, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10857, 9, 13, 24, 0, 4, 17, 0, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10858, 4, 9, 13, 24, 17, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10859, 13, 17, 0, 0, 4, 9, 24, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10860, 4, 13, 17, 0, 9, 24, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10861, 9, 13, 17, 0, 4, 24, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10862, 4, 9, 13, 17, 24, 0, 0, 0, 41, 89, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10863, 17, 24, 0, 0, 4, 9, 13, 0, 41, 80, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10864, 4, 17, 24, 0, 9, 13, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10865, 9, 17, 24, 0, 4, 13, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10866, 4, 9, 17, 24, 13, 0, 0, 0, 41, 84, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10867, 13, 17, 24, 0, 4, 9, 0, 0, 41, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10868, 4, 13, 17, 24, 9, 0, 0, 0, 41, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10869, 9, 13, 17, 24, 4, 0, 0, 0, 41, 100, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10870, 9, 13, 0, 0, 4, 17, 18, 0, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10871, 4, 9, 13, 0, 17, 18, 0, 0, 41, 76, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10872, 18, 0, 0, 0, 4, 9, 13, 17, 41, 73, '2020-03-03 13:10:29', '2020-03-03 13:10:29'),
(10873, 4, 18, 0, 0, 9, 13, 17, 0, 41, 76, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10874, 9, 18, 0, 0, 4, 13, 17, 0, 41, 80, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10875, 4, 9, 18, 0, 13, 17, 0, 0, 41, 80, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10876, 13, 18, 0, 0, 4, 9, 17, 0, 41, 89, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10877, 4, 13, 18, 0, 9, 17, 0, 0, 41, 89, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10878, 9, 13, 18, 0, 4, 17, 0, 0, 41, 94, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10879, 4, 9, 13, 18, 17, 0, 0, 0, 41, 94, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10880, 13, 17, 0, 0, 4, 9, 18, 0, 41, 84, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10881, 4, 13, 17, 0, 9, 18, 0, 0, 41, 89, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10882, 9, 13, 17, 0, 4, 18, 0, 0, 41, 89, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10883, 4, 9, 13, 17, 18, 0, 0, 0, 41, 89, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10884, 17, 18, 0, 0, 4, 9, 13, 0, 41, 84, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10885, 4, 17, 18, 0, 9, 13, 0, 0, 41, 89, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10886, 9, 17, 18, 0, 4, 13, 0, 0, 41, 89, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10887, 4, 9, 17, 18, 13, 0, 0, 0, 41, 89, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10888, 13, 17, 18, 0, 4, 9, 0, 0, 41, 100, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10889, 4, 13, 17, 18, 9, 0, 0, 0, 41, 100, '2020-03-03 13:10:30', '2020-03-03 13:10:30'),
(10890, 9, 13, 17, 18, 4, 0, 0, 0, 41, 100, '2020-03-03 13:10:30', '2020-03-03 13:10:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` double(13,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(263, 26, 264, 264, 5480000.00, 'Đang chờ xử lý', '2020-03-03 04:42:40', '2020-03-03 04:42:40'),
(264, 26, 265, 265, 6600000.00, 'Đang chờ xử lý', '2020-03-03 04:43:20', '2020-03-03 04:43:20'),
(265, 26, 266, 266, 4200000.00, 'Đang chờ xử lý', '2020-03-03 04:43:56', '2020-03-03 04:43:56'),
(266, 26, 267, 267, 7540000.00, 'Đang chờ xử lý', '2020-03-03 04:44:42', '2020-03-03 04:44:42'),
(267, 26, 268, 268, 12393000.00, 'Đang chờ xử lý', '2020-03-03 04:46:19', '2020-03-03 04:46:19'),
(268, 26, 269, 269, 5865000.00, 'Đang chờ xử lý', '2020-03-03 04:48:03', '2020-03-03 04:48:03'),
(269, 26, 270, 270, 3200000.00, 'Đang chờ xử lý', '2020-03-03 04:48:29', '2020-03-03 04:48:29'),
(270, 26, 271, 271, 5610000.00, 'Xác nhận thanh toán', '2020-03-03 04:49:02', '2020-02-04 05:27:00'),
(271, 26, 272, 272, 500000.00, 'Đang chờ xử lý', '2020-03-03 04:49:18', '2020-03-03 04:49:18'),
(272, 26, 273, 273, 6200000.00, 'Đang chờ xử lý', '2020-03-03 04:49:37', '2020-03-03 04:49:37'),
(273, 26, 274, 274, 3580000.00, 'Đang chờ xử lý', '2020-03-03 04:53:58', '2020-03-03 04:53:58'),
(274, 26, 275, 275, 6700000.00, 'Đang chờ xử lý', '2020-03-03 04:54:20', '2020-03-03 04:54:20'),
(275, 26, 276, 276, 3980000.00, 'Xác nhận thanh toán', '2020-03-03 04:54:43', '2020-01-15 05:26:52'),
(276, 26, 277, 277, 7080000.00, 'Đang chờ xử lý', '2020-03-03 04:58:53', '2020-03-03 04:58:53'),
(277, 26, 278, 278, 9690000.00, 'Xác nhận thanh toán', '2020-03-03 05:00:39', '2020-02-11 05:27:10'),
(278, 26, 279, 279, 4810000.00, 'Xác nhận thanh toán', '2020-03-03 05:01:13', '2020-03-03 05:16:05'),
(279, 26, 280, 280, 4100000.00, 'Đang chờ xử lý', '2020-03-03 05:01:39', '2020-03-03 05:01:39'),
(280, 26, 281, 281, 10100000.00, 'Đang chờ xử lý', '2020-03-03 05:02:03', '2020-03-03 05:02:03'),
(281, 26, 282, 282, 7280000.00, 'Xác nhận đơn hàng', '2020-03-03 05:02:24', '2020-03-03 05:15:50'),
(282, 26, 283, 283, 5100000.00, 'Xác nhận thanh toán', '2020-03-03 05:02:48', '2020-03-03 05:35:02'),
(283, 26, 284, 284, 560000.00, 'Xác nhận thanh toán', '2020-03-03 05:03:12', '2020-03-03 05:26:43'),
(284, 26, 285, 285, 12563000.00, 'Xác nhận thanh toán', '2020-03-03 05:03:57', '2020-03-03 05:15:43'),
(285, 26, 286, 286, 12400000.00, 'Đang chờ xử lý', '2020-03-03 05:44:15', '2020-03-03 05:44:15'),
(286, 26, 287, 287, 7380000.00, 'Đang chờ xử lý', '2020-03-03 05:44:37', '2020-03-03 05:44:37'),
(287, 26, 288, 288, 2280000.00, 'Đang chờ xử lý', '2020-03-03 05:44:56', '2020-03-03 05:44:56'),
(288, 26, 289, 289, 6700000.00, 'Đang chờ xử lý', '2020-03-03 05:45:21', '2020-03-03 05:45:21'),
(289, 26, 290, 290, 9880000.00, 'Đang chờ xử lý', '2020-03-03 05:45:55', '2020-03-03 05:45:55'),
(290, 26, 291, 291, 7380000.00, 'Đang chờ xử lý', '2020-03-03 05:46:19', '2020-03-03 05:46:19'),
(291, 26, 292, 292, 7380000.00, 'Đang chờ xử lý', '2020-03-03 05:46:45', '2020-03-03 05:46:45'),
(292, 26, 293, 293, 9280000.00, 'Đang chờ xử lý', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(293, 26, 294, 294, 10013000.00, 'Đang chờ xử lý', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(294, 26, 295, 295, 11780000.00, 'Đang chờ xử lý', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(295, 26, 296, 296, 11780000.00, 'Đang chờ xử lý', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(296, 26, 297, 297, 11780000.00, 'Đang chờ xử lý', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(297, 26, 298, 298, 11380000.00, 'Đang chờ xử lý', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(298, 26, 299, 299, 16730000.00, 'Đang chờ xử lý', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(299, 26, 300, 300, 14050500.00, 'Đang chờ xử lý', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(300, 26, 301, 301, 8380000.00, 'Đang chờ xử lý', '2020-03-03 05:54:40', '2020-03-03 05:54:40'),
(301, 26, 302, 302, 9880000.00, 'Đang chờ xử lý', '2020-03-03 05:55:05', '2020-03-03 05:55:05'),
(302, 26, 303, 303, 12480000.00, 'Đang chờ xử lý', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(303, 26, 304, 304, 14330000.00, 'Đang chờ xử lý', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(304, 26, 305, 305, 14660000.00, 'Đang chờ xử lý', '2020-03-03 05:57:11', '2020-03-03 05:57:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(13,2) NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_size`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2019-11-28 11:20:51', '2019-11-28 11:20:51'),
(2, 2, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2019-11-29 20:34:00', '2019-11-29 20:34:00'),
(3, 3, 1, 'Sneaker Falcon', 1200000.00, 6, '38', '2019-11-29 20:35:12', '2019-11-29 20:35:12'),
(4, 4, 1, 'Sneaker Falcon', 1200000.00, 4, '38', '2019-11-30 09:12:51', '2019-11-30 09:12:51'),
(5, 5, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2019-11-30 09:32:12', '2019-11-30 09:32:12'),
(6, 5, 2, 'Sneaker 001', 400000.00, 1, '44', '2019-11-30 09:32:12', '2019-11-30 09:32:12'),
(7, 5, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2019-11-30 09:32:12', '2019-11-30 09:32:12'),
(8, 6, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2019-11-30 10:30:20', '2019-11-30 10:30:20'),
(9, 7, 1, 'Sneaker Falcon', 1200000.00, 4, '38', '2019-11-30 10:38:21', '2019-11-30 10:38:21'),
(10, 8, 2, 'Sneaker 001', 400000.00, 1, '44', '2019-11-30 10:45:03', '2019-11-30 10:45:03'),
(11, 9, 2, 'Sneaker 001', 400000.00, 1, '44', '2019-11-30 10:48:52', '2019-11-30 10:48:52'),
(12, 10, 5, 'Polos 001', 350000.00, 4, 'XL', '2019-12-01 08:21:25', '2019-12-01 08:21:25'),
(13, 10, 3, 'T -Shirt Nike 001', 280000.00, 1, 'L', '2019-12-01 08:21:25', '2019-12-01 08:21:25'),
(14, 10, 4, 'T -Shirt Puma', 500000.00, 3, 'S', '2019-12-01 08:21:25', '2019-12-01 08:21:25'),
(15, 10, 1, 'Sneaker Falcon', 1200000.00, 5, '38', '2019-12-01 08:21:25', '2019-12-01 08:21:25'),
(16, 11, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-03 09:19:44', '2019-12-03 09:19:44'),
(17, 11, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2019-12-03 09:19:44', '2019-12-03 09:19:44'),
(18, 12, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-03 09:48:48', '2019-12-03 09:48:48'),
(19, 18, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-04 10:22:01', '2019-12-04 10:22:01'),
(20, 19, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-08 01:49:53', '2019-12-08 01:49:53'),
(21, 21, 5, 'Polos 001', 350000.00, 1, 'XL', '2019-12-13 18:42:11', '2019-12-13 18:42:11'),
(22, 22, 4, 'T -Shirt Puma', 500000.00, 3, 'S', '2019-12-13 20:15:09', '2019-12-13 20:15:09'),
(23, 22, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2019-12-13 20:15:09', '2019-12-13 20:15:09'),
(24, 22, 2, 'Sneaker 001', 400000.00, 1, '44', '2019-12-13 20:15:09', '2019-12-13 20:15:09'),
(25, 22, 2, 'Sneaker 001', 400000.00, 2, '42', '2019-12-13 20:15:09', '2019-12-13 20:15:09'),
(26, 23, 4, 'T -Shirt Puma', 500000.00, 4, 'S', '2019-12-13 20:16:36', '2019-12-13 20:16:36'),
(27, 24, 4, 'T -Shirt Puma', 500000.00, 2, 'S', '2019-12-13 20:28:38', '2019-12-13 20:28:38'),
(28, 25, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-13 21:09:46', '2019-12-13 21:09:46'),
(29, 26, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-13 21:11:43', '2019-12-13 21:11:43'),
(30, 28, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-13 21:12:46', '2019-12-13 21:12:46'),
(31, 29, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-13 21:19:16', '2019-12-13 21:19:16'),
(32, 30, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-13 21:34:12', '2019-12-13 21:34:12'),
(33, 31, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-14 09:34:42', '2019-12-14 09:34:42'),
(34, 32, 2, 'Sneaker 001', 400000.00, 5, '42', '2019-12-14 09:38:37', '2019-12-14 09:38:37'),
(35, 33, 4, 'T -Shirt Puma', 500000.00, 2, 'S', '2019-12-14 09:39:54', '2019-12-14 09:39:54'),
(36, 34, 5, 'Polos 001', 350000.00, 2, 'XL', '2019-12-14 09:56:05', '2019-12-14 09:56:05'),
(37, 35, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-15 01:08:22', '2019-12-15 01:08:22'),
(38, 36, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-16 07:30:16', '2019-12-16 07:30:16'),
(39, 37, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-17 10:43:16', '2019-12-17 10:43:16'),
(40, 38, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-17 11:09:56', '2019-12-17 11:09:56'),
(41, 47, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-17 11:17:21', '2019-12-17 11:17:21'),
(42, 52, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-18 08:27:27', '2019-12-18 08:27:27'),
(43, 55, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-18 08:32:13', '2019-12-18 08:32:13'),
(44, 61, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-18 08:37:13', '2019-12-18 08:37:13'),
(45, 64, 4, 'T -Shirt Puma', 500000.00, 2, 'S', '2019-12-18 12:16:07', '2019-12-18 12:16:07'),
(46, 64, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-18 12:16:07', '2019-12-18 12:16:07'),
(47, 88, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2019-12-18 13:05:42', '2019-12-18 13:05:42'),
(48, 89, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-18 13:06:22', '2019-12-18 13:06:22'),
(49, 90, 5, 'Polos 001', 350000.00, 2, 'L', '2019-12-18 13:12:31', '2019-12-18 13:12:31'),
(50, 91, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-18 13:14:57', '2019-12-18 13:14:57'),
(51, 92, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-18 13:50:01', '2019-12-18 13:50:01'),
(52, 93, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-18 14:03:38', '2019-12-18 14:03:38'),
(53, 95, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-18 14:04:59', '2019-12-18 14:04:59'),
(54, 96, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2019-12-18 14:09:19', '2019-12-18 14:09:19'),
(55, 99, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-18 14:20:16', '2019-12-18 14:20:16'),
(56, 109, 2, 'Sneaker 001', 400000.00, 1, '44', '2019-12-19 07:04:19', '2019-12-19 07:04:19'),
(57, 113, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-19 07:11:04', '2019-12-19 07:11:04'),
(58, 113, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-19 07:11:04', '2019-12-19 07:11:04'),
(59, 113, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2019-12-19 07:11:04', '2019-12-19 07:11:04'),
(60, 211, 4, 'T -Shirt Puma', 500000.00, 3, 'S', '2019-12-19 10:41:35', '2019-12-19 10:41:35'),
(61, 211, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2019-12-19 10:41:35', '2019-12-19 10:41:35'),
(62, 217, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-19 10:44:59', '2019-12-19 10:44:59'),
(63, 221, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-19 10:47:42', '2019-12-19 10:47:42'),
(64, 225, 4, 'T -Shirt Puma', 500000.00, 2, 'S', '2019-12-19 10:51:39', '2019-12-19 10:51:39'),
(65, 236, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-19 11:06:21', '2019-12-19 11:06:21'),
(66, 236, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-19 11:06:21', '2019-12-19 11:06:21'),
(67, 237, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-19 11:07:03', '2019-12-19 11:07:03'),
(68, 239, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-19 11:09:03', '2019-12-19 11:09:03'),
(69, 243, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2019-12-19 11:11:52', '2019-12-19 11:11:52'),
(70, 244, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-19 11:16:26', '2019-12-19 11:16:26'),
(71, 245, 4, 'T -Shirt Puma', 500000.00, 2, 'S', '2019-12-20 19:56:17', '2019-12-20 19:56:17'),
(72, 246, 5, 'Polos 001', 350000.00, 1, 'L', '2019-12-28 09:01:23', '2019-12-28 09:01:23'),
(73, 247, 1, 'Sneaker Falcon', 1200000.00, 7, '36', '2019-12-28 09:24:56', '2019-12-28 09:24:56'),
(74, 248, 1, 'Sneaker Falcon', 1200000.00, 14, '36', '2019-12-28 09:31:09', '2019-12-28 09:31:09'),
(75, 249, 4, 'T -Shirt Puma', 500000.00, 1, 'M', '2020-01-01 03:57:08', '2020-01-01 03:57:08'),
(76, 249, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2020-01-01 03:57:08', '2020-01-01 03:57:08'),
(77, 249, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-01-01 03:57:08', '2020-01-01 03:57:08'),
(78, 250, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-01-01 04:06:42', '2020-01-01 04:06:42'),
(79, 250, 5, 'Polos 001', 350000.00, 1, 'L', '2020-01-01 04:06:42', '2020-01-01 04:06:42'),
(80, 250, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2020-01-01 04:06:42', '2020-01-01 04:06:42'),
(81, 250, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-01-01 04:06:42', '2020-01-01 04:06:42'),
(82, 250, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2020-01-01 04:06:42', '2020-01-01 04:06:42'),
(83, 251, 2, 'Sneaker 001', 400000.00, 2, '44', '2020-01-01 04:09:47', '2020-01-01 04:09:47'),
(84, 251, 1, 'Sneaker Falcon', 1200000.00, 2, '36', '2020-01-01 04:09:47', '2020-01-01 04:09:47'),
(85, 251, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-01-01 04:09:47', '2020-01-01 04:09:47'),
(86, 251, 6, 'Sneaker Nike 006', 1500000.00, 2, '40', '2020-01-01 04:09:47', '2020-01-01 04:09:47'),
(87, 251, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2020-01-01 04:09:47', '2020-01-01 04:09:47'),
(88, 251, 5, 'Polos 001', 350000.00, 1, 'L', '2020-01-01 04:09:47', '2020-01-01 04:09:47'),
(89, 252, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2020-01-15 06:32:50', '2020-01-15 06:32:50'),
(90, 253, 23, 'Sneaker Adidas 003', 2200000.00, 1, '39', '2020-01-16 19:30:04', '2020-01-16 19:30:04'),
(91, 253, 20, 'Polo Adidas 002', 350000.00, 1, 'S', '2020-01-16 19:30:04', '2020-01-16 19:30:04'),
(92, 253, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-01-16 19:30:04', '2020-01-16 19:30:04'),
(93, 253, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-01-16 19:30:04', '2020-01-16 19:30:04'),
(94, 253, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-01-16 19:30:04', '2020-01-16 19:30:04'),
(95, 253, 15, 'Futsal IC Adidas 002', 2000000.00, 1, '41', '2020-01-16 19:30:04', '2020-01-16 19:30:04'),
(96, 254, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-01-16 19:31:51', '2020-01-16 19:31:51'),
(97, 254, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-01-16 19:31:51', '2020-01-16 19:31:51'),
(98, 254, 14, 'Futsal IC Adidas 001', 1800000.00, 1, '42', '2020-01-16 19:31:51', '2020-01-16 19:31:51'),
(99, 255, 15, 'Futsal IC Adidas 002', 2000000.00, 1, '41.5', '2020-01-16 19:32:37', '2020-01-16 19:32:37'),
(100, 255, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-01-16 19:32:37', '2020-01-16 19:32:37'),
(101, 255, 12, 'T-Shirt Nike 002', 300000.00, 1, 'S', '2020-01-16 19:32:37', '2020-01-16 19:32:37'),
(102, 255, 8, 'Adidas Futsal', 1800000.00, 1, '40', '2020-01-16 19:32:37', '2020-01-16 19:32:37'),
(103, 255, 11, 'Futsal AG 002', 2000000.00, 1, '41', '2020-01-16 19:32:37', '2020-01-16 19:32:37'),
(104, 256, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-01-16 19:33:17', '2020-01-16 19:33:17'),
(105, 256, 20, 'Polo Adidas 002', 350000.00, 1, 'S', '2020-01-16 19:33:17', '2020-01-16 19:33:17'),
(106, 256, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-01-16 19:33:17', '2020-01-16 19:33:17'),
(107, 257, 5, 'Polo Nike 001', 350000.00, 1, 'L', '2020-01-16 19:34:06', '2020-01-16 19:34:06'),
(108, 257, 20, 'Polo Adidas 002', 350000.00, 1, 'S', '2020-01-16 19:34:06', '2020-01-16 19:34:06'),
(109, 257, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-01-16 19:34:06', '2020-01-16 19:34:06'),
(110, 257, 10, 'Futsal AG 001', 1500000.00, 1, '40', '2020-01-16 19:34:06', '2020-01-16 19:34:06'),
(111, 258, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-02 08:07:12', '2020-03-02 08:07:12'),
(112, 258, 23, 'Sneaker Adidas 003', 2200000.00, 1, '39', '2020-03-02 08:07:12', '2020-03-02 08:07:12'),
(113, 258, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-02 08:07:13', '2020-03-02 08:07:13'),
(114, 259, 23, 'Sneaker Adidas 003', 2200000.00, 1, '39', '2020-03-02 08:07:48', '2020-03-02 08:07:48'),
(115, 259, 20, 'Polo Adidas 002', 350000.00, 1, 'S', '2020-03-02 08:07:48', '2020-03-02 08:07:48'),
(116, 259, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-02 08:07:48', '2020-03-02 08:07:48'),
(117, 259, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-02 08:07:48', '2020-03-02 08:07:48'),
(118, 260, 24, 'Sneaker Nike 003', 2800000.00, 3, '41', '2020-03-02 08:08:41', '2020-03-02 08:08:41'),
(119, 260, 14, 'Futsal IC Adidas 001', 1800000.00, 1, '42', '2020-03-02 08:08:41', '2020-03-02 08:08:41'),
(120, 260, 15, 'Futsal IC Adidas 002', 2000000.00, 1, '41.5', '2020-03-02 08:08:41', '2020-03-02 08:08:41'),
(121, 261, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-02 08:14:35', '2020-03-02 08:14:35'),
(122, 261, 15, 'Futsal IC Adidas 002', 2000000.00, 1, '41', '2020-03-02 08:14:35', '2020-03-02 08:14:35'),
(123, 261, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-02 08:14:35', '2020-03-02 08:14:35'),
(124, 261, 24, 'Sneaker Nike 003', 2800000.00, 2, '41', '2020-03-02 08:14:35', '2020-03-02 08:14:35'),
(125, 262, 15, 'Futsal IC Adidas 002', 2000000.00, 4, '41.5', '2020-03-02 08:16:04', '2020-03-02 08:16:04'),
(126, 262, 23, 'Sneaker Adidas 003', 2200000.00, 1, '39', '2020-03-02 08:16:04', '2020-03-02 08:16:04'),
(127, 262, 18, 'Short Nike 001', 400000.00, 1, 'L', '2020-03-02 08:16:04', '2020-03-02 08:16:04'),
(128, 262, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-02 08:16:04', '2020-03-02 08:16:04'),
(129, 262, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-02 08:16:04', '2020-03-02 08:16:04'),
(130, 263, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 04:42:40', '2020-03-03 04:42:40'),
(131, 263, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 04:42:40', '2020-03-03 04:42:40'),
(132, 263, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 04:42:40', '2020-03-03 04:42:40'),
(133, 263, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:42:40', '2020-03-03 04:42:40'),
(134, 263, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 04:42:40', '2020-03-03 04:42:40'),
(135, 264, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 04:43:20', '2020-03-03 04:43:20'),
(136, 264, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:43:20', '2020-03-03 04:43:20'),
(137, 264, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 04:43:20', '2020-03-03 04:43:20'),
(138, 264, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 04:43:20', '2020-03-03 04:43:20'),
(139, 264, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 04:43:20', '2020-03-03 04:43:20'),
(140, 265, 4, 'T -Shirt Puma', 500000.00, 2, 'M', '2020-03-03 04:43:56', '2020-03-03 04:43:56'),
(141, 265, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:43:56', '2020-03-03 04:43:56'),
(142, 265, 19, 'Short Nike 002', 400000.00, 1, 'L', '2020-03-03 04:43:56', '2020-03-03 04:43:56'),
(143, 266, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 04:44:42', '2020-03-03 04:44:42'),
(144, 266, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:44:42', '2020-03-03 04:44:42'),
(145, 266, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 04:44:42', '2020-03-03 04:44:42'),
(146, 266, 4, 'T -Shirt Puma', 500000.00, 1, 'M', '2020-03-03 04:44:42', '2020-03-03 04:44:42'),
(147, 266, 13, 'T-Shirt Adidas 002', 280000.00, 3, 'M', '2020-03-03 04:44:42', '2020-03-03 04:44:42'),
(148, 267, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 04:46:19', '2020-03-03 04:46:19'),
(149, 267, 4, 'T -Shirt Puma', 500000.00, 4, 'M', '2020-03-03 04:46:19', '2020-03-03 04:46:19'),
(150, 267, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:46:19', '2020-03-03 04:46:19'),
(151, 267, 18, 'Short Nike 001', 400000.00, 5, 'L', '2020-03-03 04:46:19', '2020-03-03 04:46:19'),
(152, 267, 16, 'Futsal IC Nike 001', 2500000.00, 3, '42', '2020-03-03 04:46:19', '2020-03-03 04:46:19'),
(153, 268, 17, 'Futsal IC Nike 002', 3000000.00, 2, '42', '2020-03-03 04:48:03', '2020-03-03 04:48:03'),
(154, 268, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 04:48:03', '2020-03-03 04:48:03'),
(155, 268, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 04:48:03', '2020-03-03 04:48:03'),
(156, 269, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:48:29', '2020-03-03 04:48:29'),
(157, 269, 9, 'Sneaker Nike 002', 400000.00, 1, '41', '2020-03-03 04:48:29', '2020-03-03 04:48:29'),
(158, 270, 16, 'Futsal IC Nike 001', 2500000.00, 1, '42', '2020-03-03 04:49:02', '2020-03-03 04:49:02'),
(159, 270, 20, 'Polo Adidas 002', 350000.00, 1, 'S', '2020-03-03 04:49:02', '2020-03-03 04:49:02'),
(160, 270, 23, 'Sneaker Adidas 003', 2200000.00, 1, '39', '2020-03-03 04:49:02', '2020-03-03 04:49:02'),
(161, 270, 13, 'T-Shirt Adidas 002', 280000.00, 2, 'S', '2020-03-03 04:49:02', '2020-03-03 04:49:02'),
(162, 271, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 04:49:18', '2020-03-03 04:49:18'),
(163, 272, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 04:49:37', '2020-03-03 04:49:37'),
(164, 272, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 04:49:37', '2020-03-03 04:49:37'),
(165, 272, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:49:37', '2020-03-03 04:49:37'),
(166, 273, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 04:53:58', '2020-03-03 04:53:58'),
(167, 273, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 04:53:58', '2020-03-03 04:53:58'),
(168, 273, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:53:58', '2020-03-03 04:53:58'),
(169, 274, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:54:20', '2020-03-03 04:54:20'),
(170, 274, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 04:54:20', '2020-03-03 04:54:20'),
(171, 274, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 04:54:20', '2020-03-03 04:54:20'),
(172, 274, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 04:54:20', '2020-03-03 04:54:20'),
(173, 275, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 04:54:43', '2020-03-03 04:54:43'),
(174, 275, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 04:54:43', '2020-03-03 04:54:43'),
(175, 275, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 04:54:43', '2020-03-03 04:54:43'),
(176, 275, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 04:54:43', '2020-03-03 04:54:43'),
(177, 276, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 04:58:53', '2020-03-03 04:58:53'),
(178, 276, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 04:58:53', '2020-03-03 04:58:53'),
(179, 276, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 04:58:53', '2020-03-03 04:58:53'),
(180, 276, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 04:58:53', '2020-03-03 04:58:53'),
(181, 276, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 04:58:53', '2020-03-03 04:58:53'),
(182, 276, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 04:58:53', '2020-03-03 04:58:53'),
(183, 277, 4, 'T -Shirt Puma', 500000.00, 2, 'M', '2020-03-03 05:00:39', '2020-03-03 05:00:39'),
(184, 277, 6, 'Sneaker Nike 006', 1500000.00, 3, '42', '2020-03-03 05:00:39', '2020-03-03 05:00:39'),
(185, 277, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:00:39', '2020-03-03 05:00:39'),
(186, 277, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:00:39', '2020-03-03 05:00:39'),
(187, 277, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:00:39', '2020-03-03 05:00:39'),
(188, 278, 13, 'T-Shirt Adidas 002', 280000.00, 2, 'M', '2020-03-03 05:01:13', '2020-03-03 05:01:13'),
(189, 278, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:01:13', '2020-03-03 05:01:13'),
(190, 278, 9, 'Sneaker Nike 002', 400000.00, 1, '41', '2020-03-03 05:01:13', '2020-03-03 05:01:13'),
(191, 278, 12, 'T-Shirt Nike 002', 300000.00, 1, 'S', '2020-03-03 05:01:13', '2020-03-03 05:01:13'),
(192, 278, 5, 'Polo Nike 001', 350000.00, 1, 'L', '2020-03-03 05:01:13', '2020-03-03 05:01:13'),
(193, 278, 2, 'Sneaker 001', 400000.00, 1, '44', '2020-03-03 05:01:13', '2020-03-03 05:01:13'),
(194, 279, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:01:39', '2020-03-03 05:01:39'),
(195, 279, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:01:39', '2020-03-03 05:01:39'),
(196, 279, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:01:39', '2020-03-03 05:01:39'),
(197, 279, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:01:39', '2020-03-03 05:01:39'),
(198, 280, 16, 'Futsal IC Nike 001', 2500000.00, 2, '40', '2020-03-03 05:02:03', '2020-03-03 05:02:03'),
(199, 280, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:02:03', '2020-03-03 05:02:03'),
(200, 280, 12, 'T-Shirt Nike 002', 300000.00, 1, 'S', '2020-03-03 05:02:03', '2020-03-03 05:02:03'),
(201, 280, 14, 'Futsal IC Adidas 001', 1800000.00, 1, '42', '2020-03-03 05:02:03', '2020-03-03 05:02:03'),
(202, 281, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:02:24', '2020-03-03 05:02:24'),
(203, 281, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:02:24', '2020-03-03 05:02:24'),
(204, 281, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:02:24', '2020-03-03 05:02:24'),
(205, 281, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:02:24', '2020-03-03 05:02:24'),
(206, 282, 9, 'Sneaker Nike 002', 400000.00, 3, '41', '2020-03-03 05:02:48', '2020-03-03 05:02:48'),
(207, 282, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:02:48', '2020-03-03 05:02:48'),
(208, 282, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:02:48', '2020-03-03 05:02:48'),
(209, 282, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:02:48', '2020-03-03 05:02:48'),
(210, 283, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'S', '2020-03-03 05:03:12', '2020-03-03 05:03:12'),
(211, 283, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'M', '2020-03-03 05:03:12', '2020-03-03 05:03:12'),
(212, 284, 4, 'T -Shirt Puma', 500000.00, 1, 'M', '2020-03-03 05:03:57', '2020-03-03 05:03:57'),
(213, 284, 24, 'Sneaker Nike 003', 2800000.00, 2, '43', '2020-03-03 05:03:57', '2020-03-03 05:03:57'),
(214, 284, 9, 'Sneaker Nike 002', 400000.00, 2, '41', '2020-03-03 05:03:57', '2020-03-03 05:03:57'),
(215, 284, 18, 'Short Nike 001', 400000.00, 1, 'L', '2020-03-03 05:03:57', '2020-03-03 05:03:57'),
(216, 284, 17, 'Futsal IC Nike 002', 3000000.00, 2, '41', '2020-03-03 05:03:57', '2020-03-03 05:03:57'),
(217, 284, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2020-03-03 05:03:57', '2020-03-03 05:03:57'),
(218, 284, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2020-03-03 05:03:57', '2020-03-03 05:03:57'),
(219, 285, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:44:15', '2020-03-03 05:44:15'),
(220, 285, 24, 'Sneaker Nike 003', 2800000.00, 2, '40', '2020-03-03 05:44:15', '2020-03-03 05:44:15'),
(221, 285, 4, 'T -Shirt Puma', 500000.00, 2, 'M', '2020-03-03 05:44:15', '2020-03-03 05:44:15'),
(222, 285, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:44:15', '2020-03-03 05:44:15'),
(223, 285, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:44:15', '2020-03-03 05:44:15'),
(224, 285, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:44:16', '2020-03-03 05:44:16'),
(225, 285, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:44:16', '2020-03-03 05:44:16'),
(226, 286, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:44:37', '2020-03-03 05:44:37'),
(227, 286, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:44:37', '2020-03-03 05:44:37'),
(228, 286, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:44:37', '2020-03-03 05:44:37'),
(229, 286, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:44:37', '2020-03-03 05:44:37'),
(230, 286, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:44:37', '2020-03-03 05:44:37'),
(231, 286, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:44:37', '2020-03-03 05:44:37'),
(232, 287, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:44:56', '2020-03-03 05:44:56'),
(233, 287, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:44:56', '2020-03-03 05:44:56'),
(234, 287, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:44:56', '2020-03-03 05:44:56'),
(235, 288, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:45:21', '2020-03-03 05:45:21'),
(236, 288, 4, 'T -Shirt Puma', 500000.00, 1, 'M', '2020-03-03 05:45:21', '2020-03-03 05:45:21'),
(237, 288, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:45:21', '2020-03-03 05:45:21'),
(238, 288, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:45:21', '2020-03-03 05:45:21'),
(239, 289, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:45:55', '2020-03-03 05:45:55'),
(240, 289, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:45:55', '2020-03-03 05:45:55'),
(241, 289, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:45:55', '2020-03-03 05:45:55'),
(242, 289, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:45:55', '2020-03-03 05:45:55'),
(243, 289, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:45:55', '2020-03-03 05:45:55'),
(244, 289, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:45:55', '2020-03-03 05:45:55'),
(245, 289, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:45:55', '2020-03-03 05:45:55'),
(246, 290, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:46:19', '2020-03-03 05:46:19'),
(247, 290, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:46:19', '2020-03-03 05:46:19'),
(248, 290, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:46:19', '2020-03-03 05:46:19'),
(249, 290, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:46:20', '2020-03-03 05:46:20'),
(250, 290, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:46:20', '2020-03-03 05:46:20'),
(251, 290, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:46:20', '2020-03-03 05:46:20'),
(252, 291, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'M', '2020-03-03 05:46:45', '2020-03-03 05:46:45'),
(253, 291, 4, 'T -Shirt Puma', 500000.00, 1, 'M', '2020-03-03 05:46:45', '2020-03-03 05:46:45'),
(254, 291, 24, 'Sneaker Nike 003', 2800000.00, 1, '43', '2020-03-03 05:46:45', '2020-03-03 05:46:45'),
(255, 291, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:46:45', '2020-03-03 05:46:45'),
(256, 291, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:46:46', '2020-03-03 05:46:46'),
(257, 291, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:46:46', '2020-03-03 05:46:46'),
(258, 292, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(259, 292, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(260, 292, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(261, 292, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(262, 292, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(263, 292, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(264, 292, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(265, 292, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:47:12', '2020-03-03 05:47:12'),
(266, 293, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(267, 293, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(268, 293, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(269, 293, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(270, 293, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(271, 293, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(272, 293, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(273, 293, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(274, 293, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:47:53', '2020-03-03 05:47:53'),
(275, 294, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'S', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(276, 294, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(277, 294, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(278, 294, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(279, 294, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(280, 294, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(281, 294, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(282, 294, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(283, 294, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:48:32', '2020-03-03 05:48:32'),
(284, 295, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(285, 295, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(286, 295, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(287, 295, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(288, 295, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(289, 295, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(290, 295, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(291, 295, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(292, 295, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:49:05', '2020-03-03 05:49:05'),
(293, 296, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(294, 296, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(295, 296, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(296, 296, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(297, 296, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(298, 296, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(299, 296, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(300, 296, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(301, 296, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:49:33', '2020-03-03 05:49:33'),
(302, 297, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(303, 297, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(304, 297, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(305, 297, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(306, 297, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(307, 297, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(308, 297, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(309, 297, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:50:02', '2020-03-03 05:50:02'),
(310, 298, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(311, 298, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(312, 298, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(313, 298, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(314, 298, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(315, 298, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(316, 298, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(317, 298, 18, 'Short Nike 001', 400000.00, 1, 'L', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(318, 298, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(319, 298, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(320, 298, 20, 'Polo Adidas 002', 350000.00, 1, 'S', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(321, 298, 23, 'Sneaker Adidas 003', 2200000.00, 1, '39', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(322, 298, 15, 'Futsal IC Adidas 002', 2000000.00, 1, '41', '2020-03-03 05:53:13', '2020-03-03 05:53:13'),
(323, 299, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(324, 299, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(325, 299, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(326, 299, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(327, 299, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(328, 299, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(329, 299, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(330, 299, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(331, 299, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(332, 299, 23, 'Sneaker Adidas 003', 2200000.00, 1, '39', '2020-03-03 05:54:14', '2020-03-03 05:54:14'),
(333, 299, 20, 'Polo Adidas 002', 350000.00, 1, 'S', '2020-03-03 05:54:15', '2020-03-03 05:54:15'),
(334, 299, 14, 'Futsal IC Adidas 001', 1800000.00, 1, '42', '2020-03-03 05:54:15', '2020-03-03 05:54:15'),
(335, 299, 2, 'Sneaker 001', 400000.00, 1, '44', '2020-03-03 05:54:15', '2020-03-03 05:54:15'),
(336, 300, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:54:40', '2020-03-03 05:54:40'),
(337, 300, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:54:40', '2020-03-03 05:54:40'),
(338, 300, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:54:40', '2020-03-03 05:54:40'),
(339, 300, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:54:40', '2020-03-03 05:54:40'),
(340, 300, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:54:40', '2020-03-03 05:54:40'),
(341, 300, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:54:40', '2020-03-03 05:54:40'),
(342, 300, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:54:40', '2020-03-03 05:54:40'),
(343, 301, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:55:05', '2020-03-03 05:55:05'),
(344, 301, 4, 'T -Shirt Puma', 500000.00, 1, 'M', '2020-03-03 05:55:05', '2020-03-03 05:55:05'),
(345, 301, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:55:05', '2020-03-03 05:55:05'),
(346, 301, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:55:05', '2020-03-03 05:55:05'),
(347, 301, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:55:05', '2020-03-03 05:55:05'),
(348, 301, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:55:05', '2020-03-03 05:55:05'),
(349, 301, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:55:05', '2020-03-03 05:55:05'),
(350, 302, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(351, 302, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(352, 302, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(353, 302, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(354, 302, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(355, 302, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(356, 302, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(357, 302, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(358, 302, 23, 'Sneaker Adidas 003', 2200000.00, 1, '39', '2020-03-03 05:55:38', '2020-03-03 05:55:38'),
(359, 303, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(360, 303, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(361, 303, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(362, 303, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(363, 303, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(364, 303, 19, 'Short Nike 002', 400000.00, 1, 'M', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(365, 303, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(366, 303, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(367, 303, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(368, 303, 5, 'Polo Nike 001', 350000.00, 1, 'L', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(369, 303, 10, 'Futsal AG 001', 1500000.00, 1, '40', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(370, 303, 2, 'Sneaker 001', 400000.00, 1, '44', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(371, 303, 12, 'T-Shirt Nike 002', 300000.00, 1, 'S', '2020-03-03 05:56:29', '2020-03-03 05:56:29'),
(372, 304, 13, 'T-Shirt Adidas 002', 280000.00, 1, 'XS', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(373, 304, 4, 'T -Shirt Puma', 500000.00, 1, 'S', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(374, 304, 6, 'Sneaker Nike 006', 1500000.00, 1, '40', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(375, 304, 24, 'Sneaker Nike 003', 2800000.00, 1, '40', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(376, 304, 9, 'Sneaker Nike 002', 400000.00, 1, '40', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(377, 304, 18, 'Short Nike 001', 400000.00, 1, 'M', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(378, 304, 17, 'Futsal IC Nike 002', 3000000.00, 1, '41', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(379, 304, 16, 'Futsal IC Nike 001', 2500000.00, 1, '40', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(380, 304, 8, 'Adidas Futsal', 1800000.00, 1, '40', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(381, 304, 1, 'Sneaker Falcon', 1200000.00, 1, '36', '2020-03-03 05:57:11', '2020-03-03 05:57:11'),
(382, 304, 3, 'T -Shirt Nike 001', 280000.00, 1, 'M', '2020-03-03 05:57:11', '2020-03-03 05:57:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Đang chờ xử lý', '2019-11-28 18:20:51', '2019-11-28 18:20:51'),
(2, '2', 'Đang chờ xử lý', '2019-11-30 03:34:00', '2019-11-30 03:34:00'),
(3, '2', 'Đang chờ xử lý', '2019-11-30 03:35:12', '2019-11-30 03:35:12'),
(4, '2', 'Đang chờ xử lý', '2019-11-30 16:12:50', '2019-11-30 16:12:50'),
(5, '2', 'Đang chờ xử lý', '2019-11-30 16:32:12', '2019-11-30 16:32:12'),
(6, '2', 'Đang chờ xử lý', '2019-11-30 17:30:20', '2019-11-30 17:30:20'),
(7, '2', 'Đang chờ xử lý', '2019-11-30 17:38:21', '2019-11-30 17:38:21'),
(8, '2', 'Đang chờ xử lý', '2019-11-30 17:45:03', '2019-11-30 17:45:03'),
(9, '2', 'Đang chờ xử lý', '2019-11-30 17:48:52', '2019-11-30 17:48:52'),
(10, '2', 'Đang chờ xử lý', '2019-12-01 15:21:25', '2019-12-01 15:21:25'),
(11, '2', 'Đang chờ xử lý', '2019-12-03 16:19:44', '2019-12-03 16:19:44'),
(12, '2', 'Đang chờ xử lý', '2019-12-03 16:48:48', '2019-12-03 16:48:48'),
(13, '2', 'Đang chờ xử lý', '2019-12-03 16:50:25', '2019-12-03 16:50:25'),
(14, '2', 'Đang chờ xử lý', '2019-12-03 16:50:31', '2019-12-03 16:50:31'),
(15, '2', 'Đang chờ xử lý', '2019-12-03 17:00:31', '2019-12-03 17:00:31'),
(16, '2', 'Đang chờ xử lý', '2019-12-03 17:01:00', '2019-12-03 17:01:00'),
(17, '2', 'Đang chờ xử lý', '2019-12-03 17:01:14', '2019-12-03 17:01:14'),
(18, '2', 'Đang chờ xử lý', '2019-12-04 17:22:01', '2019-12-04 17:22:01'),
(19, '2', 'Đang chờ xử lý', '2019-12-08 08:49:53', '2019-12-08 08:49:53'),
(20, '2', 'Đang chờ xử lý', '2019-12-08 08:50:51', '2019-12-08 08:50:51'),
(21, '2', 'Đang chờ xử lý', '2019-12-14 01:42:11', '2019-12-14 01:42:11'),
(22, '2', 'Đang chờ xử lý', '2019-12-14 03:15:09', '2019-12-14 03:15:09'),
(23, '2', 'Đang chờ xử lý', '2019-12-14 03:16:36', '2019-12-14 03:16:36'),
(24, '2', 'Đang chờ xử lý', '2019-12-14 03:28:38', '2019-12-14 03:28:38'),
(25, '2', 'Đang chờ xử lý', '2019-12-14 04:09:46', '2019-12-14 04:09:46'),
(26, '2', 'Đang chờ xử lý', '2019-12-14 04:11:43', '2019-12-14 04:11:43'),
(27, '2', 'Đang chờ xử lý', '2019-12-14 04:12:27', '2019-12-14 04:12:27'),
(28, '2', 'Đang chờ xử lý', '2019-12-14 04:12:46', '2019-12-14 04:12:46'),
(29, '2', 'Đang chờ xử lý', '2019-12-14 04:19:16', '2019-12-14 04:19:16'),
(30, '2', 'Đang chờ xử lý', '2019-12-14 04:34:12', '2019-12-14 04:34:12'),
(31, '2', 'Đang chờ xử lý', '2019-12-14 16:34:42', '2019-12-14 16:34:42'),
(32, '2', 'Đang chờ xử lý', '2019-12-14 16:38:37', '2019-12-14 16:38:37'),
(33, '2', 'Đang chờ xử lý', '2019-12-14 16:39:54', '2019-12-14 16:39:54'),
(34, '2', 'Đang chờ xử lý', '2019-12-14 16:56:04', '2019-12-14 16:56:04'),
(35, '2', 'Đang chờ xử lý', '2019-12-15 08:06:38', '2019-12-15 08:06:38'),
(36, '2', 'Đang chờ xử lý', '2019-12-15 08:08:22', '2019-12-15 08:08:22'),
(37, '2', 'Đang chờ xử lý', '2019-12-16 14:30:16', '2019-12-16 14:30:16'),
(38, '2', 'Đang chờ xử lý', '2019-12-17 17:43:16', '2019-12-17 17:43:16'),
(39, '2', 'Đang chờ xử lý', '2019-12-17 18:09:56', '2019-12-17 18:09:56'),
(40, '2', 'Đang chờ xử lý', '2019-12-17 18:10:53', '2019-12-17 18:10:53'),
(41, '2', 'Đang chờ xử lý', '2019-12-17 18:12:14', '2019-12-17 18:12:14'),
(42, '2', 'Đang chờ xử lý', '2019-12-17 18:12:30', '2019-12-17 18:12:30'),
(43, '2', 'Đang chờ xử lý', '2019-12-17 18:13:33', '2019-12-17 18:13:33'),
(44, '2', 'Đang chờ xử lý', '2019-12-17 18:14:28', '2019-12-17 18:14:28'),
(45, '2', 'Đang chờ xử lý', '2019-12-17 18:14:52', '2019-12-17 18:14:52'),
(46, '2', 'Đang chờ xử lý', '2019-12-17 18:15:02', '2019-12-17 18:15:02'),
(47, '2', 'Đang chờ xử lý', '2019-12-17 18:16:27', '2019-12-17 18:16:27'),
(48, '2', 'Đang chờ xử lý', '2019-12-17 18:17:21', '2019-12-17 18:17:21'),
(49, '2', 'Đang chờ xử lý', '2019-12-17 18:21:47', '2019-12-17 18:21:47'),
(50, '2', 'Đang chờ xử lý', '2019-12-17 18:22:19', '2019-12-17 18:22:19'),
(51, '2', 'Đang chờ xử lý', '2019-12-17 18:22:59', '2019-12-17 18:22:59'),
(52, '2', 'Đang chờ xử lý', '2019-12-17 18:23:16', '2019-12-17 18:23:16'),
(53, '2', 'Đang chờ xử lý', '2019-12-18 15:27:26', '2019-12-18 15:27:26'),
(54, '2', 'Đang chờ xử lý', '2019-12-18 15:31:25', '2019-12-18 15:31:25'),
(55, '2', 'Đang chờ xử lý', '2019-12-18 15:31:29', '2019-12-18 15:31:29'),
(56, '2', 'Đang chờ xử lý', '2019-12-18 15:32:13', '2019-12-18 15:32:13'),
(57, '2', 'Đang chờ xử lý', '2019-12-18 15:33:32', '2019-12-18 15:33:32'),
(58, '2', 'Đang chờ xử lý', '2019-12-18 15:33:42', '2019-12-18 15:33:42'),
(59, '2', 'Đang chờ xử lý', '2019-12-18 15:35:06', '2019-12-18 15:35:06'),
(60, '2', 'Đang chờ xử lý', '2019-12-18 15:36:02', '2019-12-18 15:36:02'),
(61, '2', 'Đang chờ xử lý', '2019-12-18 15:36:10', '2019-12-18 15:36:10'),
(62, '2', 'Đang chờ xử lý', '2019-12-18 15:37:13', '2019-12-18 15:37:13'),
(63, '2', 'Đang chờ xử lý', '2019-12-18 15:41:24', '2019-12-18 15:41:24'),
(64, '2', 'Đang chờ xử lý', '2019-12-18 15:49:35', '2019-12-18 15:49:35'),
(65, '2', 'Đang chờ xử lý', '2019-12-18 19:16:07', '2019-12-18 19:16:07'),
(66, '2', 'Đang chờ xử lý', '2019-12-18 19:17:54', '2019-12-18 19:17:54'),
(67, '2', 'Đang chờ xử lý', '2019-12-18 19:24:47', '2019-12-18 19:24:47'),
(68, '2', 'Đang chờ xử lý', '2019-12-18 19:30:05', '2019-12-18 19:30:05'),
(69, '2', 'Đang chờ xử lý', '2019-12-18 19:32:43', '2019-12-18 19:32:43'),
(70, '2', 'Đang chờ xử lý', '2019-12-18 19:33:43', '2019-12-18 19:33:43'),
(71, '2', 'Đang chờ xử lý', '2019-12-18 19:35:10', '2019-12-18 19:35:10'),
(72, '2', 'Đang chờ xử lý', '2019-12-18 19:44:25', '2019-12-18 19:44:25'),
(73, '2', 'Đang chờ xử lý', '2019-12-18 19:46:15', '2019-12-18 19:46:15'),
(74, '2', 'Đang chờ xử lý', '2019-12-18 19:46:59', '2019-12-18 19:46:59'),
(75, '2', 'Đang chờ xử lý', '2019-12-18 19:49:24', '2019-12-18 19:49:24'),
(76, '2', 'Đang chờ xử lý', '2019-12-18 19:50:00', '2019-12-18 19:50:00'),
(77, '2', 'Đang chờ xử lý', '2019-12-18 19:50:56', '2019-12-18 19:50:56'),
(78, '2', 'Đang chờ xử lý', '2019-12-18 19:51:11', '2019-12-18 19:51:11'),
(79, '2', 'Đang chờ xử lý', '2019-12-18 19:51:31', '2019-12-18 19:51:31'),
(80, '2', 'Đang chờ xử lý', '2019-12-18 19:52:04', '2019-12-18 19:52:04'),
(81, '2', 'Đang chờ xử lý', '2019-12-18 19:53:48', '2019-12-18 19:53:48'),
(82, '2', 'Đang chờ xử lý', '2019-12-18 19:55:16', '2019-12-18 19:55:16'),
(83, '2', 'Đang chờ xử lý', '2019-12-18 19:55:46', '2019-12-18 19:55:46'),
(84, '2', 'Đang chờ xử lý', '2019-12-18 19:56:26', '2019-12-18 19:56:26'),
(85, '2', 'Đang chờ xử lý', '2019-12-18 19:56:55', '2019-12-18 19:56:55'),
(86, '2', 'Đang chờ xử lý', '2019-12-18 19:57:04', '2019-12-18 19:57:04'),
(87, '2', 'Đang chờ xử lý', '2019-12-18 19:59:07', '2019-12-18 19:59:07'),
(88, '2', 'Đang chờ xử lý', '2019-12-18 20:00:14', '2019-12-18 20:00:14'),
(89, '2', 'Đang chờ xử lý', '2019-12-18 20:05:42', '2019-12-18 20:05:42'),
(90, '2', 'Đang chờ xử lý', '2019-12-18 20:06:22', '2019-12-18 20:06:22'),
(91, '2', 'Đang chờ xử lý', '2019-12-18 20:12:31', '2019-12-18 20:12:31'),
(92, '2', 'Đang chờ xử lý', '2019-12-18 20:14:57', '2019-12-18 20:14:57'),
(93, '2', 'Đang chờ xử lý', '2019-12-18 20:50:01', '2019-12-18 20:50:01'),
(94, '2', 'Đang chờ xử lý', '2019-12-18 21:03:38', '2019-12-18 21:03:38'),
(95, '2', 'Đang chờ xử lý', '2019-12-18 21:04:11', '2019-12-18 21:04:11'),
(96, '2', 'Đang chờ xử lý', '2019-12-18 21:04:59', '2019-12-18 21:04:59'),
(97, '2', 'Đang chờ xử lý', '2019-12-18 21:09:18', '2019-12-18 21:09:18'),
(98, '2', 'Đang chờ xử lý', '2019-12-18 21:10:04', '2019-12-18 21:10:04'),
(99, '2', 'Đang chờ xử lý', '2019-12-18 21:10:53', '2019-12-18 21:10:53'),
(100, '2', 'Đang chờ xử lý', '2019-12-18 21:20:15', '2019-12-18 21:20:15'),
(101, '2', 'Đang chờ xử lý', '2019-12-18 21:25:03', '2019-12-18 21:25:03'),
(102, '2', 'Đang chờ xử lý', '2019-12-18 21:26:58', '2019-12-18 21:26:58'),
(103, '2', 'Đang chờ xử lý', '2019-12-18 21:27:24', '2019-12-18 21:27:24'),
(104, '2', 'Đang chờ xử lý', '2019-12-18 21:28:00', '2019-12-18 21:28:00'),
(105, '2', 'Đang chờ xử lý', '2019-12-18 21:29:07', '2019-12-18 21:29:07'),
(106, '2', 'Đang chờ xử lý', '2019-12-18 21:33:39', '2019-12-18 21:33:39'),
(107, '2', 'Đang chờ xử lý', '2019-12-18 21:33:46', '2019-12-18 21:33:46'),
(108, '2', 'Đang chờ xử lý', '2019-12-18 21:35:25', '2019-12-18 21:35:25'),
(109, '2', 'Đang chờ xử lý', '2019-12-18 21:36:09', '2019-12-18 21:36:09'),
(110, '2', 'Đang chờ xử lý', '2019-12-19 14:04:19', '2019-12-19 14:04:19'),
(111, '2', 'Đang chờ xử lý', '2019-12-19 14:10:04', '2019-12-19 14:10:04'),
(112, '2', 'Đang chờ xử lý', '2019-12-19 14:10:08', '2019-12-19 14:10:08'),
(113, '2', 'Đang chờ xử lý', '2019-12-19 14:10:16', '2019-12-19 14:10:16'),
(114, '2', 'Đang chờ xử lý', '2019-12-19 14:11:04', '2019-12-19 14:11:04'),
(115, '2', 'Đang chờ xử lý', '2019-12-19 14:38:39', '2019-12-19 14:38:39'),
(116, '2', 'Đang chờ xử lý', '2019-12-19 14:38:53', '2019-12-19 14:38:53'),
(117, '2', 'Đang chờ xử lý', '2019-12-19 14:40:27', '2019-12-19 14:40:27'),
(118, '2', 'Đang chờ xử lý', '2019-12-19 14:40:58', '2019-12-19 14:40:58'),
(119, '2', 'Đang chờ xử lý', '2019-12-19 14:41:54', '2019-12-19 14:41:54'),
(120, '2', 'Đang chờ xử lý', '2019-12-19 14:43:01', '2019-12-19 14:43:01'),
(121, '2', 'Đang chờ xử lý', '2019-12-19 14:43:48', '2019-12-19 14:43:48'),
(122, '2', 'Đang chờ xử lý', '2019-12-19 14:44:01', '2019-12-19 14:44:01'),
(123, '2', 'Đang chờ xử lý', '2019-12-19 14:45:01', '2019-12-19 14:45:01'),
(124, '2', 'Đang chờ xử lý', '2019-12-19 14:45:31', '2019-12-19 14:45:31'),
(125, '2', 'Đang chờ xử lý', '2019-12-19 14:46:53', '2019-12-19 14:46:53'),
(126, '2', 'Đang chờ xử lý', '2019-12-19 14:47:21', '2019-12-19 14:47:21'),
(127, '2', 'Đang chờ xử lý', '2019-12-19 14:47:57', '2019-12-19 14:47:57'),
(128, '2', 'Đang chờ xử lý', '2019-12-19 14:48:33', '2019-12-19 14:48:33'),
(129, '2', 'Đang chờ xử lý', '2019-12-19 14:48:35', '2019-12-19 14:48:35'),
(130, '2', 'Đang chờ xử lý', '2019-12-19 14:49:07', '2019-12-19 14:49:07'),
(131, '2', 'Đang chờ xử lý', '2019-12-19 14:49:20', '2019-12-19 14:49:20'),
(132, '2', 'Đang chờ xử lý', '2019-12-19 14:51:13', '2019-12-19 14:51:13'),
(133, '2', 'Đang chờ xử lý', '2019-12-19 14:53:02', '2019-12-19 14:53:02'),
(134, '2', 'Đang chờ xử lý', '2019-12-19 14:54:01', '2019-12-19 14:54:01'),
(135, '2', 'Đang chờ xử lý', '2019-12-19 14:57:39', '2019-12-19 14:57:39'),
(136, '2', 'Đang chờ xử lý', '2019-12-19 14:58:21', '2019-12-19 14:58:21'),
(137, '2', 'Đang chờ xử lý', '2019-12-19 14:59:40', '2019-12-19 14:59:40'),
(138, '2', 'Đang chờ xử lý', '2019-12-19 15:00:19', '2019-12-19 15:00:19'),
(139, '2', 'Đang chờ xử lý', '2019-12-19 15:00:30', '2019-12-19 15:00:30'),
(140, '2', 'Đang chờ xử lý', '2019-12-19 15:05:14', '2019-12-19 15:05:14'),
(141, '2', 'Đang chờ xử lý', '2019-12-19 15:05:30', '2019-12-19 15:05:30'),
(142, '2', 'Đang chờ xử lý', '2019-12-19 15:06:29', '2019-12-19 15:06:29'),
(143, '2', 'Đang chờ xử lý', '2019-12-19 15:07:00', '2019-12-19 15:07:00'),
(144, '2', 'Đang chờ xử lý', '2019-12-19 15:08:15', '2019-12-19 15:08:15'),
(145, '2', 'Đang chờ xử lý', '2019-12-19 15:09:11', '2019-12-19 15:09:11'),
(146, '2', 'Đang chờ xử lý', '2019-12-19 16:35:14', '2019-12-19 16:35:14'),
(147, '2', 'Đang chờ xử lý', '2019-12-19 16:35:41', '2019-12-19 16:35:41'),
(148, '2', 'Đang chờ xử lý', '2019-12-19 16:36:52', '2019-12-19 16:36:52'),
(149, '2', 'Đang chờ xử lý', '2019-12-19 16:38:13', '2019-12-19 16:38:13'),
(150, '2', 'Đang chờ xử lý', '2019-12-19 16:38:50', '2019-12-19 16:38:50'),
(151, '2', 'Đang chờ xử lý', '2019-12-19 16:39:10', '2019-12-19 16:39:10'),
(152, '2', 'Đang chờ xử lý', '2019-12-19 16:39:31', '2019-12-19 16:39:31'),
(153, '2', 'Đang chờ xử lý', '2019-12-19 16:41:01', '2019-12-19 16:41:01'),
(154, '2', 'Đang chờ xử lý', '2019-12-19 16:42:10', '2019-12-19 16:42:10'),
(155, '2', 'Đang chờ xử lý', '2019-12-19 16:43:17', '2019-12-19 16:43:17'),
(156, '2', 'Đang chờ xử lý', '2019-12-19 16:43:45', '2019-12-19 16:43:45'),
(157, '2', 'Đang chờ xử lý', '2019-12-19 16:44:03', '2019-12-19 16:44:03'),
(158, '2', 'Đang chờ xử lý', '2019-12-19 16:44:17', '2019-12-19 16:44:17'),
(159, '2', 'Đang chờ xử lý', '2019-12-19 16:44:34', '2019-12-19 16:44:34'),
(160, '2', 'Đang chờ xử lý', '2019-12-19 16:45:14', '2019-12-19 16:45:14'),
(161, '2', 'Đang chờ xử lý', '2019-12-19 16:45:40', '2019-12-19 16:45:40'),
(162, '2', 'Đang chờ xử lý', '2019-12-19 16:47:14', '2019-12-19 16:47:14'),
(163, '2', 'Đang chờ xử lý', '2019-12-19 16:48:08', '2019-12-19 16:48:08'),
(164, '2', 'Đang chờ xử lý', '2019-12-19 16:49:31', '2019-12-19 16:49:31'),
(165, '2', 'Đang chờ xử lý', '2019-12-19 16:50:41', '2019-12-19 16:50:41'),
(166, '2', 'Đang chờ xử lý', '2019-12-19 16:52:02', '2019-12-19 16:52:02'),
(167, '2', 'Đang chờ xử lý', '2019-12-19 16:52:12', '2019-12-19 16:52:12'),
(168, '2', 'Đang chờ xử lý', '2019-12-19 16:52:20', '2019-12-19 16:52:20'),
(169, '2', 'Đang chờ xử lý', '2019-12-19 16:55:28', '2019-12-19 16:55:28'),
(170, '2', 'Đang chờ xử lý', '2019-12-19 16:56:53', '2019-12-19 16:56:53'),
(171, '2', 'Đang chờ xử lý', '2019-12-19 16:57:58', '2019-12-19 16:57:58'),
(172, '2', 'Đang chờ xử lý', '2019-12-19 16:58:15', '2019-12-19 16:58:15'),
(173, '2', 'Đang chờ xử lý', '2019-12-19 16:58:24', '2019-12-19 16:58:24'),
(174, '2', 'Đang chờ xử lý', '2019-12-19 16:58:45', '2019-12-19 16:58:45'),
(175, '2', 'Đang chờ xử lý', '2019-12-19 16:59:43', '2019-12-19 16:59:43'),
(176, '2', 'Đang chờ xử lý', '2019-12-19 17:03:09', '2019-12-19 17:03:09'),
(177, '2', 'Đang chờ xử lý', '2019-12-19 17:04:24', '2019-12-19 17:04:24'),
(178, '2', 'Đang chờ xử lý', '2019-12-19 17:04:43', '2019-12-19 17:04:43'),
(179, '2', 'Đang chờ xử lý', '2019-12-19 17:05:02', '2019-12-19 17:05:02'),
(180, '2', 'Đang chờ xử lý', '2019-12-19 17:05:41', '2019-12-19 17:05:41'),
(181, '2', 'Đang chờ xử lý', '2019-12-19 17:06:26', '2019-12-19 17:06:26'),
(182, '2', 'Đang chờ xử lý', '2019-12-19 17:07:24', '2019-12-19 17:07:24'),
(183, '2', 'Đang chờ xử lý', '2019-12-19 17:11:46', '2019-12-19 17:11:46'),
(184, '2', 'Đang chờ xử lý', '2019-12-19 17:12:56', '2019-12-19 17:12:56'),
(185, '2', 'Đang chờ xử lý', '2019-12-19 17:15:16', '2019-12-19 17:15:16'),
(186, '2', 'Đang chờ xử lý', '2019-12-19 17:16:49', '2019-12-19 17:16:49'),
(187, '2', 'Đang chờ xử lý', '2019-12-19 17:18:53', '2019-12-19 17:18:53'),
(188, '2', 'Đang chờ xử lý', '2019-12-19 17:19:21', '2019-12-19 17:19:21'),
(189, '2', 'Đang chờ xử lý', '2019-12-19 17:19:50', '2019-12-19 17:19:50'),
(190, '2', 'Đang chờ xử lý', '2019-12-19 17:20:13', '2019-12-19 17:20:13'),
(191, '2', 'Đang chờ xử lý', '2019-12-19 17:20:22', '2019-12-19 17:20:22'),
(192, '2', 'Đang chờ xử lý', '2019-12-19 17:21:15', '2019-12-19 17:21:15'),
(193, '2', 'Đang chờ xử lý', '2019-12-19 17:21:40', '2019-12-19 17:21:40'),
(194, '2', 'Đang chờ xử lý', '2019-12-19 17:21:55', '2019-12-19 17:21:55'),
(195, '2', 'Đang chờ xử lý', '2019-12-19 17:23:09', '2019-12-19 17:23:09'),
(196, '2', 'Đang chờ xử lý', '2019-12-19 17:23:20', '2019-12-19 17:23:20'),
(197, '2', 'Đang chờ xử lý', '2019-12-19 17:23:48', '2019-12-19 17:23:48'),
(198, '2', 'Đang chờ xử lý', '2019-12-19 17:25:42', '2019-12-19 17:25:42'),
(199, '2', 'Đang chờ xử lý', '2019-12-19 17:26:02', '2019-12-19 17:26:02'),
(200, '2', 'Đang chờ xử lý', '2019-12-19 17:26:37', '2019-12-19 17:26:37'),
(201, '2', 'Đang chờ xử lý', '2019-12-19 17:28:02', '2019-12-19 17:28:02'),
(202, '2', 'Đang chờ xử lý', '2019-12-19 17:29:40', '2019-12-19 17:29:40'),
(203, '2', 'Đang chờ xử lý', '2019-12-19 17:30:04', '2019-12-19 17:30:04'),
(204, '2', 'Đang chờ xử lý', '2019-12-19 17:30:14', '2019-12-19 17:30:14'),
(205, '2', 'Đang chờ xử lý', '2019-12-19 17:31:38', '2019-12-19 17:31:38'),
(206, '2', 'Đang chờ xử lý', '2019-12-19 17:32:39', '2019-12-19 17:32:39'),
(207, '2', 'Đang chờ xử lý', '2019-12-19 17:33:08', '2019-12-19 17:33:08'),
(208, '2', 'Đang chờ xử lý', '2019-12-19 17:33:28', '2019-12-19 17:33:28'),
(209, '2', 'Đang chờ xử lý', '2019-12-19 17:33:46', '2019-12-19 17:33:46'),
(210, '2', 'Đang chờ xử lý', '2019-12-19 17:34:08', '2019-12-19 17:34:08'),
(211, '2', 'Đang chờ xử lý', '2019-12-19 17:36:32', '2019-12-19 17:36:32'),
(212, '2', 'Đang chờ xử lý', '2019-12-19 17:41:35', '2019-12-19 17:41:35'),
(213, '2', 'Đang chờ xử lý', '2019-12-19 17:42:08', '2019-12-19 17:42:08'),
(214, '2', 'Đang chờ xử lý', '2019-12-19 17:43:40', '2019-12-19 17:43:40'),
(215, '2', 'Đang chờ xử lý', '2019-12-19 17:43:48', '2019-12-19 17:43:48'),
(216, '2', 'Đang chờ xử lý', '2019-12-19 17:44:21', '2019-12-19 17:44:21'),
(217, '2', 'Đang chờ xử lý', '2019-12-19 17:44:31', '2019-12-19 17:44:31'),
(218, '2', 'Đang chờ xử lý', '2019-12-19 17:44:59', '2019-12-19 17:44:59'),
(219, '2', 'Đang chờ xử lý', '2019-12-19 17:45:27', '2019-12-19 17:45:27'),
(220, '2', 'Đang chờ xử lý', '2019-12-19 17:46:25', '2019-12-19 17:46:25'),
(221, '2', 'Đang chờ xử lý', '2019-12-19 17:47:03', '2019-12-19 17:47:03'),
(222, '2', 'Đang chờ xử lý', '2019-12-19 17:47:42', '2019-12-19 17:47:42'),
(223, '2', 'Đang chờ xử lý', '2019-12-19 17:49:33', '2019-12-19 17:49:33'),
(224, '2', 'Đang chờ xử lý', '2019-12-19 17:50:08', '2019-12-19 17:50:08'),
(225, '2', 'Đang chờ xử lý', '2019-12-19 17:50:17', '2019-12-19 17:50:17'),
(226, '2', 'Đang chờ xử lý', '2019-12-19 17:51:39', '2019-12-19 17:51:39'),
(227, '2', 'Đang chờ xử lý', '2019-12-19 17:53:03', '2019-12-19 17:53:03'),
(228, '2', 'Đang chờ xử lý', '2019-12-19 17:55:10', '2019-12-19 17:55:10'),
(229, '2', 'Đang chờ xử lý', '2019-12-19 17:55:19', '2019-12-19 17:55:19'),
(230, '2', 'Đang chờ xử lý', '2019-12-19 17:55:27', '2019-12-19 17:55:27'),
(231, '2', 'Đang chờ xử lý', '2019-12-19 17:55:36', '2019-12-19 17:55:36'),
(232, '2', 'Đang chờ xử lý', '2019-12-19 17:56:24', '2019-12-19 17:56:24'),
(233, '2', 'Đang chờ xử lý', '2019-12-19 17:57:27', '2019-12-19 17:57:27'),
(234, '2', 'Đang chờ xử lý', '2019-12-19 17:57:40', '2019-12-19 17:57:40'),
(235, '2', 'Đang chờ xử lý', '2019-12-19 17:58:12', '2019-12-19 17:58:12'),
(236, '2', 'Đang chờ xử lý', '2019-12-19 17:58:31', '2019-12-19 17:58:31'),
(237, '2', 'Đang chờ xử lý', '2019-12-19 18:06:21', '2019-12-19 18:06:21'),
(238, '2', 'Đang chờ xử lý', '2019-12-19 18:07:03', '2019-12-19 18:07:03'),
(239, '2', 'Đang chờ xử lý', '2019-12-19 18:08:06', '2019-12-19 18:08:06'),
(240, '2', 'Đang chờ xử lý', '2019-12-19 18:09:03', '2019-12-19 18:09:03'),
(241, '2', 'Đang chờ xử lý', '2019-12-19 18:09:59', '2019-12-19 18:09:59'),
(242, '2', 'Đang chờ xử lý', '2019-12-19 18:10:14', '2019-12-19 18:10:14'),
(243, '2', 'Đang chờ xử lý', '2019-12-19 18:10:30', '2019-12-19 18:10:30'),
(244, '2', 'Đang chờ xử lý', '2019-12-19 18:11:52', '2019-12-19 18:11:52'),
(245, '2', 'Đang chờ xử lý', '2019-12-19 18:16:25', '2019-12-19 18:16:25'),
(246, '2', 'Đang chờ xử lý', '2019-12-21 02:56:17', '2019-12-21 02:56:17'),
(247, '1', 'Đang chờ xử lý', '2019-12-28 16:01:23', '2019-12-28 16:01:23'),
(248, '2', 'Đang chờ xử lý', '2019-12-28 16:24:56', '2019-12-28 16:24:56'),
(249, '2', 'Đang chờ xử lý', '2019-12-28 16:31:09', '2019-12-28 16:31:09'),
(250, '2', 'Đang chờ xử lý', '2020-01-01 10:57:08', '2020-01-01 10:57:08'),
(251, '2', 'Đang chờ xử lý', '2020-01-01 11:06:42', '2020-01-01 11:06:42'),
(252, '2', 'Đang chờ xử lý', '2020-01-01 11:09:47', '2020-01-01 11:09:47'),
(253, '2', 'Đang chờ xử lý', '2020-01-15 13:32:50', '2020-01-15 13:32:50'),
(254, '2', 'Đang chờ xử lý', '2020-01-17 02:30:04', '2020-01-17 02:30:04'),
(255, '2', 'Đang chờ xử lý', '2020-01-17 02:31:51', '2020-01-17 02:31:51'),
(256, '2', 'Đang chờ xử lý', '2020-01-17 02:32:37', '2020-01-17 02:32:37'),
(257, '2', 'Đang chờ xử lý', '2020-01-17 02:33:16', '2020-01-17 02:33:16'),
(258, '2', 'Đang chờ xử lý', '2020-01-17 02:34:05', '2020-01-17 02:34:05'),
(259, '2', 'Đang chờ xử lý', '2020-03-02 15:07:12', '2020-03-02 15:07:12'),
(260, '2', 'Đang chờ xử lý', '2020-03-02 15:07:48', '2020-03-02 15:07:48'),
(261, '2', 'Đang chờ xử lý', '2020-03-02 15:08:41', '2020-03-02 15:08:41'),
(262, '2', 'Đang chờ xử lý', '2020-03-02 15:14:35', '2020-03-02 15:14:35'),
(263, '2', 'Đang chờ xử lý', '2020-03-02 15:16:04', '2020-03-02 15:16:04'),
(264, '2', 'Đang chờ xử lý', '2020-03-03 11:42:40', '2020-03-03 11:42:40'),
(265, '2', 'Đang chờ xử lý', '2020-03-03 11:43:20', '2020-03-03 11:43:20'),
(266, '2', 'Đang chờ xử lý', '2020-03-03 11:43:56', '2020-03-03 11:43:56'),
(267, '2', 'Đang chờ xử lý', '2020-03-03 11:44:42', '2020-03-03 11:44:42'),
(268, '2', 'Đang chờ xử lý', '2020-03-03 11:46:19', '2020-03-03 11:46:19'),
(269, '2', 'Đang chờ xử lý', '2020-03-03 11:48:02', '2020-03-03 11:48:02'),
(270, '2', 'Đang chờ xử lý', '2020-03-03 11:48:29', '2020-03-03 11:48:29'),
(271, '2', 'Đang chờ xử lý', '2020-03-03 11:49:01', '2020-03-03 11:49:01'),
(272, '2', 'Đang chờ xử lý', '2020-03-03 11:49:18', '2020-03-03 11:49:18'),
(273, '2', 'Đang chờ xử lý', '2020-03-03 11:49:37', '2020-03-03 11:49:37'),
(274, '2', 'Đang chờ xử lý', '2020-03-03 11:53:58', '2020-03-03 11:53:58'),
(275, '2', 'Đang chờ xử lý', '2020-03-03 11:54:20', '2020-03-03 11:54:20'),
(276, '2', 'Đang chờ xử lý', '2020-03-03 11:54:43', '2020-03-03 11:54:43'),
(277, '2', 'Đang chờ xử lý', '2020-03-03 11:58:53', '2020-03-03 11:58:53'),
(278, '2', 'Đang chờ xử lý', '2020-03-03 12:00:39', '2020-03-03 12:00:39'),
(279, '2', 'Đang chờ xử lý', '2020-03-03 12:01:13', '2020-03-03 12:01:13'),
(280, '2', 'Đang chờ xử lý', '2020-03-03 12:01:39', '2020-03-03 12:01:39'),
(281, '2', 'Đang chờ xử lý', '2020-03-03 12:02:03', '2020-03-03 12:02:03'),
(282, '2', 'Đang chờ xử lý', '2020-03-03 12:02:24', '2020-03-03 12:02:24'),
(283, '2', 'Đang chờ xử lý', '2020-03-03 12:02:48', '2020-03-03 12:02:48'),
(284, '2', 'Đang chờ xử lý', '2020-03-03 12:03:12', '2020-03-03 12:03:12'),
(285, '2', 'Đang chờ xử lý', '2020-03-03 12:03:57', '2020-03-03 12:03:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(13,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Sneaker Falcon', '2', '<p>2</p>', 1200000.00, 'hang-chinh-hang-nike-ebernon-low-white-rose-gold-2019.jpeg', 1, '2019-11-28 17:40:15', '2019-12-22 14:08:16'),
(2, 1, 2, 'Sneaker 001', '2', '<p>2</p>', 400000.00, 'hang-chinh-hang-adidas-ultra-boost-19-collegiate-royal.jpeg', 1, '2019-11-30 16:30:04', '2020-01-17 01:45:18'),
(3, 2, 1, 'T -Shirt Nike 001', '222', '<p>22</p>', 280000.00, 'bf32e5c9cfa7415788811254e0c6feda.jpg', 1, '2019-11-30 16:31:03', '2019-11-30 16:31:03'),
(4, 2, 1, 'T -Shirt Puma', 'T -Shirt Puma', '<div class=\"content-description ty-wysiwyg-content\" id=\"content_description\">\r\n<div>\r\n<h3>&Aacute;o thể thao Puma PT21 | B&aacute;n sỉ &aacute;o thun thể thao puma tại TP HCM &lt;=&gt; To&agrave;n Quốc.</h3>\r\n\r\n<p>Chất liệu : thun lạnh, thun thể thao Poly 4 chiều.</p>\r\n\r\n<p><span style=\"color:#006400\">Size M</span>&nbsp;: ph&ugrave; hợp với bạn c&oacute; c&acirc;n nặng từ&nbsp;<span style=\"color:#006400\">45 - 58kg</span>.</p>\r\n\r\n<p><span style=\"color:#006400\">Size L&nbsp;</span>: ph&ugrave; hợp với bạn c&oacute; c&acirc;n nặng&nbsp;<span style=\"color:#006400\">58 - 66kg</span>.</p>\r\n\r\n<p><span style=\"color:#006400\">Size XL</span>&nbsp;: ph&ugrave; hợp với bạn c&oacute; c&acirc;n nặng&nbsp;<span style=\"color:#006400\">66 - 74kg</span>.</p>\r\n\r\n<p><span style=\"color:#006400\">Size XXL</span>&nbsp;: ph&ugrave; hợp với bạn c&oacute; c&acirc;n nặng&nbsp;<span style=\"color:#006400\">75 - 90kg</span>.</p>\r\n\r\n<p><strong><a href=\"https://aothunpt.com/ao-thun-the-thao-puma-pt21.html\">&Aacute;o thun puma nam thể thao</a>&nbsp;[M&Atilde;: PT21]</strong>&nbsp;: chất liệu thun lạnh 4 chiều co gi&atilde;n cực đ&atilde;, tho&aacute;i m&aacute;i vận động. Thiết kế form &aacute;o tay r&aacute;p lăng gi&uacute;p t&ocirc;n l&ecirc;n v&ograve;ng ngực săn chắc khỏe mạnh của c&aacute;c ch&agrave;ng trai, đặt biệt l&agrave; những bạn hay chơi thể thao, tập gym, vận động vi&ecirc;n...</p>\r\n\r\n<p>Với chiếc&nbsp;<a href=\"https://aothunpt.com/ao-thun-the-thao/\">&aacute;o thun thể thao</a>&nbsp;logo in&nbsp;<strong>con b&aacute;o Puma</strong>, sẽ mang lại sự trẻ trung đầy c&aacute; t&iacute;nh cho c&aacute;c bạn nam, dễ d&agrave;ng phối đồ c&ugrave;ng với&nbsp;<a href=\"https://aothunpt.com/quan-the-thao/\"><em>quần thể thao nam</em></a>&nbsp;tạo n&ecirc;n bộ đồ thể thao ưa nh&igrave;n, chinh phục hầu hết c&aacute;c ch&agrave;ng trai, kể cả người kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<h3>Đ&Ocirc;I N&Eacute;T VỀ SẢN PHẨM &Aacute;O THUN THỂ THAO :</h3>\r\n\r\n<p>Theo xu hướng thời trang hiện nay,&nbsp;<strong>&aacute;o&nbsp;thể thao nam</strong>&nbsp;với chất liệu được ưa chuộng l&agrave; thun lạnh co gi&atilde;n 4 chiều, thun m&egrave; sượt, vải m&egrave; lỗ kim... kiểu d&aacute;ng từ đơn giản như &aacute;o thun trơn, &aacute;o thun in, th&ecirc;u logo, đến c&aacute;c kiểu phối hoa văn s&agrave;nh điệu rất thời trang.</p>\r\n\r\n<p>Phối c&ugrave;ng chiếc&nbsp;<strong>&aacute;o thun thể thao&nbsp;</strong>th&igrave; lựa chọn h&agrave;ng đầu lu&ocirc;n l&agrave;&nbsp;<strong>quần&nbsp;thể thao</strong>, rồi đa dạng hơn như c&aacute;c mẫu quần lửng,&nbsp;<em>quần d&agrave;i nam</em>, quần short kaki...Thử phối đồ với phong c&aacute;ch đa dạng để l&agrave;m mới bản th&acirc;n nh&eacute;!</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', 500000.00, 'img_9562_f3e7ebaa6f9343109986e29db9d97055_master.jpg', 1, '2019-12-01 15:17:45', '2020-03-03 12:45:58'),
(5, 4, 2, 'Polo Nike 001', 'Áo Polo Nike dành cho nam.', '<p><strong>&Aacute;o Polo Nike d&agrave;nh cho nam.</strong></p>', 350000.00, 'img_0244_38f40998bfac4c0e92ae94979aebd04f_large.jpg', 1, '2019-12-01 15:19:28', '2020-01-17 01:46:40'),
(6, 1, 2, 'Sneaker Nike 006', '123', '<p>Nike</p>', 1500000.00, 'barrett-ward-cOJgO4Zzs-w-unsplash.jpg', 1, '2020-01-01 10:55:19', '2020-03-03 11:37:49'),
(8, 3, 2, 'Adidas Futsal', '123', '<p>Futsal VN 2020</p>', 1800000.00, 'adidas copa.jpg', 1, '2020-01-15 13:13:31', '2020-01-15 13:20:23'),
(9, 1, 2, 'Sneaker Nike 002', 'Sneaker Nike 002', '<div class=\"entry-content\">\r\n<p><strong>Cái tên Air Max đã không còn quá xa lạ với những fan của Nike. Nhắc đến <a href=\"https://bountysneakers.com/danh-muc/nike/\">giày Nike</a>, người ta nghĩ ngay đến công nghệ Air sừng sỏ.</strong></p>\r\n\r\n<p>Được sản xuất bằng những nguyên liệu và công nghệ cao cấp nhất của Nike tạo cho sản phẩm sự thoải mái, thông thoáng và sang trọng, kiểu dáng thời trang lịch lãm và tinh tế dễ phối đồ</p>\r\n\r\n<p>Air Max&nbsp;là một trong những công nghệ giày thành công nhất hiện nay. Đối với các tín đồ mê phong cách thể thao thì những</p>\r\n\r\n<p>Giày Nike Air Max 2017 là mẫu giày được nâng cấp hơn từ phiên bản kinh điển 2016, được đánh giá là một đôi giày khác biệt nhất từ trước tới nay.</p>\r\n\r\n<p><a href=\"http://bountysneakers.com/wp-content/uploads/2018/06/air-max-2017-3.jpg\"><img alt=\"Nike air max 2017\" class=\"aligncenter size-large wp-image-3719\" src=\"http://bountysneakers.com/wp-content/uploads/2018/06/air-max-2017-3-1024x1024.jpg\" style=\"height:500px; width:500px\"></a></p>\r\n\r\n<p>Với phần đế Air Max full-length quen thuộc, giày Nike Air Max 2017 vẫn đem đến một bộ đế đệm êm ái, sức đàn hồi và linh hoạt cực tốt, cho cảm giác như bay khi di chuyển. Phiên bản Air Max 2017 đặc biệt được nâng cấp tối ưu ở phần upper so với Air Max 2016, logo Swoosh không còn ở phía trước chân và những sợi Flywire được ẩn đi, giúp vẻ ngoài của giày Nike Air Max 2017 thêm bắt mắt và thu hút.</p>\r\n\r\n<p><a href=\"http://bountysneakers.com/wp-content/uploads/2018/06/air-max-2017-2.jpg\"><img alt=\"Nike air max 2017\" class=\"aligncenter size-large wp-image-3718\" src=\"http://bountysneakers.com/wp-content/uploads/2018/06/air-max-2017-2-1024x1024.jpg\" style=\"height:500px; width:500px\"></a></p>\r\n\r\n<p>Với sự tinh chỉnh mới mẻ trong thiết kế, giày Nike Air Max 2017 là lựa chọn hàng đầu cho bạn vẻ ngoài phong cách nhất.</p>\r\n\r\n<p>Đôi giày là sự kết hợp của sự linh hoạt, liền mạch, độc đáo, cá tính và đẳng cấp. Đôi giày khiến bạn tự tin dù là mặc đồ bình thường, đi tiệc, chạy bô…Đôi giày phải là một cái gì đó gắn kết với bạn trong mọi lúc và ở mọi nơi.</p>\r\n\r\n<p><span style=\"font-size:14pt\"><strong>Công nghệ Air và áp dụng “càng đi càng bền” của Air Max 2017</strong></span></p>\r\n\r\n<p>Công nghệ Air không phải là phát minh của Nike mà&nbsp;là Marion Frank Rudy, một nhà phát minh độc lập ở California. Tất nhiên, ngay từ lúc ban đầu, nó không phải là công nghệ Air mà là một thứ được gọi là “Khí nén đóng gói trong chất nhựa dẻo”. Trước khi thuộc quyền sở hữu của Nike, phát minh “khí nén đóng gói trong chất nhựa dẻo” từng được “chào hàng” cho Adidas, tuy nhiên, nó đã bị hãng này từ chối. Sau đó, Phil Jackson – chủ tịch của Nike đã mua lại công nghệ này và phát triển nó như hiện nay. Nếu được trở về quá khứ, có lẽ Adidas sẽ không từ chối, chắc hẳn họ đã rất hối hận về quyết định của mình.</p>\r\n\r\n<p>Túi Air của những đôi giày Nike Air Max không chỉ chứa không khí</p>\r\n\r\n<p>Nếu theo dõi quảng cáo, bạn sẽ thấy rằng họ sẽ bơm không khí vào túi Air của Air Max. Tuy nhiên, sự thật là trong túi Air không chỉ chứa không khí. Ban đầu, khí sulfur hexafluoride được bơm thêm vào túi Air, nhưng sau này, do sự độc hại của chất khí này, khí Nitơ đã được thay thế.</p>\r\n\r\n<p>Càng sử dụng Nike Air Max nhiều, đôi giày sẽ càng bền.</p>\r\n\r\n<p>Nhiều bạn sau khi mua được đôi giày Air Max đã cất giữ nó rất cẩn thận và chỉ đeo mỗi khi có dịp quan trọng. Tuy nhiên, theo nghiên cứu, những đôi giày có Air được mang và “nhún” thường xuyên sẽ có độ bền cao hơn những đôi giày chỉ được cất trong tủ giày. Bởi vậy, đừng ngại mang những đôi giày Air Max thường xuyên bạn nhé!</p>\r\n\r\n<p>Review Air Max 2017 được bán với giá 190$ tại Mỹ, và 5.500.000 tại Việt Nam. Tại BountySneakers, bạn có thể sắm được một đôi giày Nike Air Max 2017 chính hãng với giá cực kì mềm cho các fan Nike nhé.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>', 400000.00, 'nike.png', 1, '2020-01-17 01:41:59', '2020-03-03 13:13:35'),
(10, 7, 2, 'Futsal AG 001', 'Futsal AG', '<p>Futsal AG</p>', 1500000.00, '614460173582677146819357990697323183210496n.jpg', 1, '2020-01-17 02:08:34', '2020-01-17 02:08:34'),
(11, 7, 2, 'Futsal AG 002', 'Futsal AG 002', '<p>Futsal AG 002</p>', 2000000.00, '609753143311466408913421855018223641034752n.jpg', 1, '2020-01-17 02:09:43', '2020-01-17 02:09:43'),
(12, 2, 1, 'T-Shirt Nike 002', '123', '<p>&Aacute;o thun Nike</p>', 300000.00, '95135a1bfe1f4da7a2920534bc79ce27.jpg', 1, '2020-01-17 02:10:50', '2020-01-17 02:10:50'),
(13, 2, 1, 'T-Shirt Adidas 002', 'T-Shirt Adidas 002', '<div class=\"mobile_product_description___19EI9 tabs_content___330t5\">\r\n<div><img alt=\"Áo Phông 3-Stripes Tie\" class=\"description_img___3nrC6\" src=\"https://assets.adidas.com/images/w_600,f_auto,q_auto/2cf4fa7b770d434aa5d2aa33012099dc_9366/Ao_Phong_3_Stripes_Tie_Mau_cam_EB4510.jpg\" /></div>\r\n\r\n<div class=\"content___3jRA5\">\r\n<h4>&Aacute;o Ph&ocirc;ng 3-Stripes Tie</h4>\r\n\r\n<p>Mẫu &aacute;o ph&ocirc;ng đồng h&agrave;nh c&ugrave;ng bạn trong lớp yoga, luyện tập bổ trợ hoặc c&aacute;c lớp quyền anh. &Aacute;o được l&agrave;m từ vải b&oacute;ng mượt, co gi&atilde;n, thấm mồ h&ocirc;i gi&uacute;p bạn lu&ocirc;n kh&ocirc; r&aacute;o. &Aacute;o rộng r&atilde;i n&ecirc;n bạn c&oacute; thể buộc vạt &aacute;o b&ecirc;n h&ocirc;ng khi muốn để thực hiện c&aacute;c b&agrave;i tập lộn đầu. Lu&ocirc;n kh&ocirc; r&aacute;o Chất liệu vải c&ocirc;ng nghệ Climalite thấm mồ h&ocirc;i để giữ cho bạn kh&ocirc; r&aacute;o trong mọi điều kiện Mặc theo c&aacute;ch của bạn Nhờ việc buộc vạt &aacute;o b&ecirc;n h&ocirc;ng n&ecirc;n chiếc &aacute;o c&oacute; thể gi&uacute;p bạn thay đổi phong c&aacute;ch</p>\r\n</div>\r\n</div>', 280000.00, '48b86c8e5e1143b2ad0dd706e1749911.jpg', 1, '2020-01-17 02:11:45', '2020-03-03 12:38:45'),
(14, 5, 2, 'Futsal IC Adidas 001', 'Futsal IC Adidas 001', '<p>Futsal IC Adidas 001</p>', 1800000.00, '41_2.jpg', 1, '2020-01-17 02:15:55', '2020-01-17 02:15:55'),
(15, 5, 2, 'Futsal IC Adidas 002', 'Futsal IC Adidas 002', '<p>Futsal IC Adidas 002</p>', 2000000.00, '17_3.jpg', 1, '2020-01-17 02:16:44', '2020-01-17 02:16:44'),
(16, 5, 2, 'Futsal IC Nike 001', '123', '<p>Futsal IC Nike 001</p>', 2500000.00, '3_2.jpg', 1, '2020-01-17 02:17:38', '2020-03-03 11:35:05'),
(17, 5, 2, 'Futsal IC Nike 002', 'Futsal IC Nike 002', '<p>Futsal IC Nike 002</p>', 3000000.00, '7739017036770581723342822431700454523011072n.jpg', 1, '2020-01-17 02:18:39', '2020-03-03 11:35:20'),
(18, 8, 2, 'Short Nike 001', 'Short Nike 001', '<p>Short Nike 001</p>', 400000.00, 'cb3658f2-a5bc-44bb-92f3-33ebf64f9b450349_230x260.jpeg', 1, '2020-01-17 02:20:07', '2020-03-03 11:35:50'),
(19, 8, 2, 'Short Nike 002', 'Short Nike 001', '<p>Short Nike 001</p>', 400000.00, 'e0bfebda-e30d-4dbf-a295-0d77a1df255a5752_230x260.jpeg', 1, '2020-01-17 02:21:08', '2020-03-03 11:36:00'),
(20, 4, 2, 'Polo Adidas 002', 'Polo Adidas 002', '<p>Polo Adidas 002</p>', 350000.00, '51161314_963152773883573_836129213684645888_n6808_230x260.jpg', 1, '2020-01-17 02:22:04', '2020-01-17 02:22:04'),
(23, 1, 2, 'Sneaker Adidas 003', 'Sneaker Adidas 003', '<p>Sneaker Adidas 003</p>', 2200000.00, 'noname_48.png', 1, '2020-01-17 02:24:37', '2020-01-17 02:24:37'),
(24, 1, 2, 'Sneaker Nike 003', 'Sneaker Nike 003', '<div class=\"entry-content\">\r\n<p><strong>C&aacute;i t&ecirc;n Air Max đ&atilde; kh&ocirc;ng c&ograve;n qu&aacute; xa lạ với những fan của Nike. Nhắc đến <a href=\"https://bountysneakers.com/danh-muc/nike/\">gi&agrave;y Nike</a>, người ta nghĩ ngay đến c&ocirc;ng nghệ Air sừng sỏ.</strong></p>\r\n\r\n<p>Được sản xuất bằng những nguy&ecirc;n liệu v&agrave; c&ocirc;ng nghệ cao cấp nhất của Nike tạo cho sản phẩm sự thoải m&aacute;i, th&ocirc;ng tho&aacute;ng v&agrave; sang trọng, kiểu d&aacute;ng thời trang lịch l&atilde;m v&agrave; tinh tế dễ phối đồ</p>\r\n\r\n<p>Air Max&nbsp;l&agrave; một trong những c&ocirc;ng nghệ gi&agrave;y th&agrave;nh c&ocirc;ng nhất hiện nay. Đối với c&aacute;c t&iacute;n đồ m&ecirc; phong c&aacute;ch thể thao th&igrave; những</p>\r\n\r\n<p>Gi&agrave;y Nike Air Max 2017 l&agrave; mẫu gi&agrave;y được n&acirc;ng cấp hơn từ phi&ecirc;n bản kinh điển 2016, được đ&aacute;nh gi&aacute; l&agrave; một đ&ocirc;i gi&agrave;y kh&aacute;c biệt nhất từ trước tới nay.</p>\r\n\r\n<p><a href=\"http://bountysneakers.com/wp-content/uploads/2018/06/air-max-2017-3.jpg\"><img alt=\"Nike air max 2017\" class=\"aligncenter size-large wp-image-3719\" src=\"http://bountysneakers.com/wp-content/uploads/2018/06/air-max-2017-3-1024x1024.jpg\" style=\"height:500px; width:500px\" /></a></p>\r\n\r\n<p>Với phần đế Air Max full-length quen thuộc, gi&agrave;y Nike Air Max 2017 vẫn đem đến một bộ đế đệm &ecirc;m &aacute;i, sức đ&agrave;n hồi v&agrave; linh hoạt cực tốt, cho cảm gi&aacute;c như bay khi di chuyển. Phi&ecirc;n bản Air Max 2017 đặc biệt được n&acirc;ng cấp tối ưu ở phần upper so với Air Max 2016, logo Swoosh kh&ocirc;ng c&ograve;n ở ph&iacute;a trước ch&acirc;n v&agrave; những sợi Flywire được ẩn đi, gi&uacute;p vẻ ngo&agrave;i của gi&agrave;y Nike Air Max 2017 th&ecirc;m bắt mắt v&agrave; thu h&uacute;t.</p>\r\n\r\n<p><a href=\"http://bountysneakers.com/wp-content/uploads/2018/06/air-max-2017-2.jpg\"><img alt=\"Nike air max 2017\" class=\"aligncenter size-large wp-image-3718\" src=\"http://bountysneakers.com/wp-content/uploads/2018/06/air-max-2017-2-1024x1024.jpg\" style=\"height:500px; width:500px\" /></a></p>\r\n\r\n<p>Với sự tinh chỉnh mới mẻ trong thiết kế, gi&agrave;y Nike Air Max 2017 l&agrave; lựa chọn h&agrave;ng đầu cho bạn vẻ ngo&agrave;i phong c&aacute;ch nhất.</p>\r\n\r\n<p>Đ&ocirc;i gi&agrave;y l&agrave; sự kết hợp của sự linh hoạt, liền mạch, độc đ&aacute;o, c&aacute; t&iacute;nh v&agrave; đẳng cấp. Đ&ocirc;i gi&agrave;y khiến bạn tự tin d&ugrave; l&agrave; mặc đồ b&igrave;nh thường, đi tiệc, chạy b&ocirc;&hellip;Đ&ocirc;i gi&agrave;y phải l&agrave; một c&aacute;i g&igrave; đ&oacute; gắn kết với bạn trong mọi l&uacute;c v&agrave; ở mọi nơi.</p>\r\n\r\n<p><span style=\"font-size:14pt\"><strong>C&ocirc;ng nghệ Air v&agrave; &aacute;p dụng &ldquo;c&agrave;ng đi c&agrave;ng bền&rdquo; của Air Max 2017</strong></span></p>\r\n\r\n<p>C&ocirc;ng nghệ Air kh&ocirc;ng phải l&agrave; ph&aacute;t minh của Nike m&agrave;&nbsp;l&agrave; Marion Frank Rudy, một nh&agrave; ph&aacute;t minh độc lập ở California. Tất nhi&ecirc;n, ngay từ l&uacute;c ban đầu, n&oacute; kh&ocirc;ng phải l&agrave; c&ocirc;ng nghệ Air m&agrave; l&agrave; một thứ được gọi l&agrave; &ldquo;Kh&iacute; n&eacute;n đ&oacute;ng g&oacute;i trong chất nhựa dẻo&rdquo;. Trước khi thuộc quyền sở hữu của Nike, ph&aacute;t minh &ldquo;kh&iacute; n&eacute;n đ&oacute;ng g&oacute;i trong chất nhựa dẻo&rdquo; từng được &ldquo;ch&agrave;o h&agrave;ng&rdquo; cho Adidas, tuy nhi&ecirc;n, n&oacute; đ&atilde; bị h&atilde;ng n&agrave;y từ chối. Sau đ&oacute;, Phil Jackson &ndash; chủ tịch của Nike đ&atilde; mua lại c&ocirc;ng nghệ n&agrave;y v&agrave; ph&aacute;t triển n&oacute; như hiện nay. Nếu được trở về qu&aacute; khứ, c&oacute; lẽ Adidas sẽ kh&ocirc;ng từ chối, chắc hẳn họ đ&atilde; rất hối hận về quyết định của m&igrave;nh.</p>\r\n\r\n<p>T&uacute;i Air của những đ&ocirc;i gi&agrave;y Nike Air Max kh&ocirc;ng chỉ chứa kh&ocirc;ng kh&iacute;</p>\r\n\r\n<p>Nếu theo d&otilde;i quảng c&aacute;o, bạn sẽ thấy rằng họ sẽ bơm kh&ocirc;ng kh&iacute; v&agrave;o t&uacute;i Air của Air Max. Tuy nhi&ecirc;n, sự thật l&agrave; trong t&uacute;i Air kh&ocirc;ng chỉ chứa kh&ocirc;ng kh&iacute;. Ban đầu, kh&iacute; sulfur hexafluoride được bơm th&ecirc;m v&agrave;o t&uacute;i Air, nhưng sau n&agrave;y, do sự độc hại của chất kh&iacute; n&agrave;y, kh&iacute; Nitơ đ&atilde; được thay thế.</p>\r\n\r\n<p>C&agrave;ng sử dụng Nike Air Max nhiều, đ&ocirc;i gi&agrave;y sẽ c&agrave;ng bền.</p>\r\n\r\n<p>Nhiều bạn sau khi mua được đ&ocirc;i gi&agrave;y Air Max đ&atilde; cất giữ n&oacute; rất cẩn thận v&agrave; chỉ đeo mỗi khi c&oacute; dịp quan trọng. Tuy nhi&ecirc;n, theo nghi&ecirc;n cứu, những đ&ocirc;i gi&agrave;y c&oacute; Air được mang v&agrave; &ldquo;nh&uacute;n&rdquo; thường xuy&ecirc;n sẽ c&oacute; độ bền cao hơn những đ&ocirc;i gi&agrave;y chỉ được cất trong tủ gi&agrave;y. Bởi vậy, đừng ngại mang những đ&ocirc;i gi&agrave;y Air Max thường xuy&ecirc;n bạn nh&eacute;!</p>\r\n\r\n<p>Review Air Max 2017 được b&aacute;n với gi&aacute; 190$ tại Mỹ, v&agrave; 5.500.000 tại Việt Nam. Tại BountySneakers, bạn c&oacute; thể sắm được một đ&ocirc;i gi&agrave;y Nike Air Max 2017 ch&iacute;nh h&atilde;ng với gi&aacute; cực k&igrave; mềm cho c&aacute;c fan Nike nh&eacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>', 2800000.00, 'hang-chinh-hang-nike-air-max-270-react-just-do-it-grey-2020.jpeg', 1, '2020-01-17 02:25:37', '2020-03-03 13:13:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_detail`
--

CREATE TABLE `tbl_product_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_detail`
--

INSERT INTO `tbl_product_detail` (`id`, `product_id`, `product_size`, `product_quantity`, `created_at`, `updated_at`) VALUES
(20, 7, '40', 10, '2020-01-03 13:38:59', '2020-01-03 13:38:59'),
(21, 7, '42', 15, '2020-01-03 13:38:59', '2020-01-03 13:38:59'),
(56, 15, '41', 19, '2020-01-17 02:16:44', '2020-03-02 16:02:07'),
(57, 15, '41.5', 15, '2020-01-17 02:16:44', '2020-03-02 16:01:57'),
(68, 21, '39', 20, '2020-01-17 02:23:20', '2020-01-17 02:23:20'),
(69, 21, '41', 20, '2020-01-17 02:23:20', '2020-01-17 02:23:20'),
(70, 23, '39', 19, '2020-01-17 02:24:37', '2020-03-02 16:01:57'),
(71, 23, '40', 20, '2020-01-17 02:24:37', '2020-01-17 02:24:37'),
(76, 8, '40', 100, '2020-03-03 11:34:23', '2020-03-03 11:34:23'),
(77, 8, '42', 100, '2020-03-03 11:34:23', '2020-03-03 11:34:23'),
(84, 14, '42', 99, '2020-03-03 11:34:54', '2020-03-03 12:22:39'),
(85, 14, '42.5', 100, '2020-03-03 11:34:54', '2020-03-03 11:34:54'),
(90, 17, '41', 94, '2020-03-03 11:35:20', '2020-03-03 12:23:05'),
(91, 17, '42', 100, '2020-03-03 11:35:20', '2020-03-03 11:35:20'),
(92, 20, 'S', 100, '2020-03-03 11:35:30', '2020-03-03 11:35:30'),
(93, 20, 'L', 100, '2020-03-03 11:35:30', '2020-03-03 11:35:30'),
(94, 5, 'L', 99, '2020-03-03 11:35:40', '2020-03-03 12:22:55'),
(95, 5, 'XL', 100, '2020-03-03 11:35:40', '2020-03-03 11:35:40'),
(96, 18, 'M', 99, '2020-03-03 11:35:50', '2020-03-03 12:22:17'),
(97, 18, 'L', 99, '2020-03-03 11:35:50', '2020-03-03 12:22:02'),
(98, 19, 'M', 98, '2020-03-03 11:36:00', '2020-03-03 12:23:05'),
(99, 19, 'L', 100, '2020-03-03 11:36:01', '2020-03-03 11:36:01'),
(100, 10, '40', 100, '2020-03-03 11:36:05', '2020-03-03 11:36:05'),
(101, 10, '41', 100, '2020-03-03 11:36:05', '2020-03-03 11:36:05'),
(102, 11, '41', 100, '2020-03-03 11:36:09', '2020-03-03 11:36:09'),
(103, 11, '43', 100, '2020-03-03 11:36:09', '2020-03-03 11:36:09'),
(104, 2, '44', 99, '2020-03-03 11:36:50', '2020-03-03 12:22:55'),
(105, 2, '42', 100, '2020-03-03 11:36:50', '2020-03-03 11:36:50'),
(106, 1, '36', 99, '2020-03-03 11:37:05', '2020-03-03 12:22:02'),
(107, 1, '38', 100, '2020-03-03 11:37:05', '2020-03-03 11:37:05'),
(112, 6, '40', 99, '2020-03-03 11:37:49', '2020-03-03 12:22:31'),
(113, 6, '41', 100, '2020-03-03 11:37:49', '2020-03-03 11:37:49'),
(114, 6, '42', 97, '2020-03-03 11:37:49', '2020-03-03 12:23:05'),
(115, 16, '40', 96, '2020-03-03 11:37:59', '2020-03-03 12:23:05'),
(116, 16, '42', 100, '2020-03-03 11:37:59', '2020-03-03 11:37:59'),
(117, 3, 'M', 99, '2020-03-03 11:38:10', '2020-03-03 12:22:02'),
(118, 3, 'L', 100, '2020-03-03 11:38:10', '2020-03-03 11:38:10'),
(124, 12, 'S', 98, '2020-03-03 11:38:47', '2020-03-03 12:22:55'),
(125, 12, 'M', 100, '2020-03-03 11:38:48', '2020-03-03 11:38:48'),
(126, 12, 'L', 100, '2020-03-03 11:38:48', '2020-03-03 11:38:48'),
(133, 13, 'XS', 99, '2020-03-03 12:38:45', '2020-03-03 12:38:45'),
(134, 13, 'S', 99, '2020-03-03 12:38:45', '2020-03-03 12:38:45'),
(135, 13, 'M', 97, '2020-03-03 12:38:45', '2020-03-03 12:38:45'),
(136, 4, 'S', 98, '2020-03-03 12:45:58', '2020-03-03 12:45:58'),
(137, 4, 'M', 97, '2020-03-03 12:45:58', '2020-03-03 12:45:58'),
(142, 24, '40', 98, '2020-03-03 13:13:00', '2020-03-03 13:13:00'),
(143, 24, '43', 98, '2020-03-03 13:13:00', '2020-03-03 13:13:00'),
(144, 9, '40', 99, '2020-03-03 13:13:35', '2020-03-03 13:13:35'),
(145, 9, '41', 94, '2020-03-03 13:13:35', '2020-03-03 13:13:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_email`, `shipping_address`, `shipping_phone`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '2', '2019-11-28 17:40:48', '2019-11-28 17:40:48'),
(2, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', 'hbh', '2019-11-28 18:21:59', '2019-11-28 18:21:59'),
(3, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '2222', '2019-11-30 02:01:17', '2019-11-30 02:01:17'),
(4, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '112', '2019-11-30 02:25:28', '2019-11-30 02:25:28'),
(5, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '112', '2019-11-30 02:32:55', '2019-11-30 02:32:55'),
(6, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '112', '2019-11-30 02:36:02', '2019-11-30 02:36:02'),
(7, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '3rwewr', '2019-11-30 03:34:35', '2019-11-30 03:34:35'),
(8, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '222', '2019-11-30 16:12:33', '2019-11-30 16:12:33'),
(9, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '222', '2019-11-30 16:31:36', '2019-11-30 16:31:36'),
(10, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '21', '2019-11-30 17:29:00', '2019-11-30 17:29:00'),
(11, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '1122', '2019-11-30 17:37:49', '2019-11-30 17:37:49'),
(12, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '232', '2019-11-30 17:44:58', '2019-11-30 17:44:58'),
(13, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', '12212', '2019-11-30 17:48:48', '2019-11-30 17:48:48'),
(14, 'NGUYEN VAN NAM', 'tes1221219@mailinartor.com', 'long an', '3232423432', '33', '2019-12-01 15:20:43', '2019-12-01 15:20:43'),
(15, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', 'guygiugihu', '2019-12-03 16:14:07', '2019-12-03 16:14:07'),
(16, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', 'lknm', '2019-12-03 16:16:25', '2019-12-03 16:16:25'),
(17, 'Nguyễn Trường Thịnh', 'test019@mailinartor.com', 'thinh', '0909090909', 'ss', '2019-12-03 16:48:44', '2019-12-03 16:48:44'),
(18, 'nguyen van b', 'a@mail.com', '7 hoang van thu', '0909090909', '2221', '2019-12-04 17:21:55', '2019-12-04 17:21:55'),
(19, 'sâsasasasasa', 'test019@mailinartor.com', 'fffff', '0909090909', 'sss', '2019-12-04 17:27:06', '2019-12-04 17:27:06'),
(20, 'nhung', '333@mail.com', '7 hoang van thu', '0909090909', '222', '2019-12-08 08:49:21', '2019-12-08 08:49:21'),
(21, 'test', '123@abc.com', 'test', '0909090909', '123', '2019-12-14 01:42:11', '2019-12-14 01:42:11'),
(22, 'testttttttttt', 'test123@gmail.com', '22222', '333333', '1111', '2019-12-14 03:15:09', '2019-12-14 03:15:09'),
(23, 'thinh', 'sssssssssssssss@mail.com', '111111', '0909090909', '1111', '2019-12-14 03:16:36', '2019-12-14 03:16:36'),
(24, 'nam lol', 'tt@mail.com', '2222', '0909090909', '123', '2019-12-14 03:28:37', '2019-12-14 03:28:37'),
(25, 't', 't@mail.com', 'thuan my', '098090887', '2222', '2019-12-14 04:09:46', '2019-12-14 04:09:46'),
(26, 'thinh', 'd@mail.com', '2222', '0909090909', '111', '2019-12-14 04:11:43', '2019-12-14 04:11:43'),
(27, 'thinh', 'd@mail.com', '2222', '0909090909', '111', '2019-12-14 04:12:27', '2019-12-14 04:12:27'),
(28, 'thinh', '3333', '222', '0909090909', '222', '2019-12-14 04:12:46', '2019-12-14 04:12:46'),
(29, 'thinh', 't@mail.com', '222', '0909090909', '222', '2019-12-14 04:19:16', '2019-12-14 04:19:16'),
(30, 'thinh', 'ttt@mail.com', '2222', '0909090909', '1222', '2019-12-14 04:34:11', '2019-12-14 04:34:11'),
(31, 'vietnam', 'th@mail.com', 'thuanmy', '3333', '3333', '2019-12-14 16:34:42', '2019-12-14 16:34:42'),
(32, '9090', 'sabc@mai.com', '0909', '09', '123', '2019-12-14 16:38:37', '2019-12-14 16:38:37'),
(33, '2222', 'e@mail.com', '333', '222', '333', '2019-12-14 16:39:54', '2019-12-14 16:39:54'),
(34, 'thinh', 'th@mail.com', 'ssss', '0909090909', 'www', '2019-12-14 16:56:04', '2019-12-14 16:56:04'),
(35, 'thinh', 'sss', 'dd', '0909090909', 'dd', '2019-12-15 08:06:38', '2019-12-15 08:06:38'),
(36, 'nhun gthinh', 'sds@mail.com', '222', '0909090909', '333', '2019-12-15 08:08:22', '2019-12-15 08:08:22'),
(37, 'thinh', 't@mail.com', '222', '0909090909', '222', '2019-12-16 14:30:16', '2019-12-16 14:30:16'),
(38, 'phong', '12@mail.com', '123', '0909090909', '222', '2019-12-17 17:43:16', '2019-12-17 17:43:16'),
(39, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:09:55', '2019-12-17 18:09:55'),
(40, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:10:53', '2019-12-17 18:10:53'),
(41, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:12:14', '2019-12-17 18:12:14'),
(42, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:12:30', '2019-12-17 18:12:30'),
(43, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:13:33', '2019-12-17 18:13:33'),
(44, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:14:28', '2019-12-17 18:14:28'),
(45, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:14:52', '2019-12-17 18:14:52'),
(46, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:15:02', '2019-12-17 18:15:02'),
(47, 'thinh 222', '22@m.com', '222', '0909090909', '333', '2019-12-17 18:16:27', '2019-12-17 18:16:27'),
(48, '123', '22@mail.com', '22', '0909090909', '22', '2019-12-17 18:17:21', '2019-12-17 18:17:21'),
(49, '123', '22@mail.com', '22', '0909090909', '22', '2019-12-17 18:21:47', '2019-12-17 18:21:47'),
(50, '123', '22@mail.com', '22', '0909090909', '22', '2019-12-17 18:22:19', '2019-12-17 18:22:19'),
(51, '123', '22@mail.com', '22', '0909090909', '22', '2019-12-17 18:22:59', '2019-12-17 18:22:59'),
(52, '123', '22@mail.com', '22', '0909090909', '22', '2019-12-17 18:23:15', '2019-12-17 18:23:15'),
(53, 'thinh', 'thinh@mail.com', 'w', '0909090909', 'w', '2019-12-18 15:27:26', '2019-12-18 15:27:26'),
(54, 'thinh', 'thinh@mail.com', 'w', '0909090909', 'w', '2019-12-18 15:31:24', '2019-12-18 15:31:24'),
(55, 'thinh', 'thinh@mail.com', 'w', '0909090909', 'w', '2019-12-18 15:31:28', '2019-12-18 15:31:28'),
(56, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-18 15:32:12', '2019-12-18 15:32:12'),
(57, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-18 15:33:31', '2019-12-18 15:33:31'),
(58, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-18 15:33:42', '2019-12-18 15:33:42'),
(59, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-18 15:35:06', '2019-12-18 15:35:06'),
(60, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-18 15:36:01', '2019-12-18 15:36:01'),
(61, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-18 15:36:10', '2019-12-18 15:36:10'),
(62, 'thinh', '123', '222', '0909090909', '123', '2019-12-18 15:37:13', '2019-12-18 15:37:13'),
(63, 'thinh', '123', '222', '0909090909', '123', '2019-12-18 15:41:24', '2019-12-18 15:41:24'),
(64, 'thinh', '123', '222', '0909090909', '123', '2019-12-18 15:49:35', '2019-12-18 15:49:35'),
(65, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:16:07', '2019-12-18 19:16:07'),
(66, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:17:54', '2019-12-18 19:17:54'),
(67, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:24:47', '2019-12-18 19:24:47'),
(68, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:30:05', '2019-12-18 19:30:05'),
(69, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:32:43', '2019-12-18 19:32:43'),
(70, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:33:43', '2019-12-18 19:33:43'),
(71, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:35:10', '2019-12-18 19:35:10'),
(72, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:44:25', '2019-12-18 19:44:25'),
(73, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:46:14', '2019-12-18 19:46:14'),
(74, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:46:59', '2019-12-18 19:46:59'),
(75, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:49:24', '2019-12-18 19:49:24'),
(76, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:50:00', '2019-12-18 19:50:00'),
(77, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:50:56', '2019-12-18 19:50:56'),
(78, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:51:11', '2019-12-18 19:51:11'),
(79, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:51:31', '2019-12-18 19:51:31'),
(80, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:52:04', '2019-12-18 19:52:04'),
(81, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:53:48', '2019-12-18 19:53:48'),
(82, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:55:16', '2019-12-18 19:55:16'),
(83, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:55:46', '2019-12-18 19:55:46'),
(84, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:56:26', '2019-12-18 19:56:26'),
(85, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:56:55', '2019-12-18 19:56:55'),
(86, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:57:04', '2019-12-18 19:57:04'),
(87, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 19:59:07', '2019-12-18 19:59:07'),
(88, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-18 20:00:14', '2019-12-18 20:00:14'),
(89, 'thinh', 'thinh@mail.com', '22', '0909090909', '222', '2019-12-18 20:05:42', '2019-12-18 20:05:42'),
(90, 'thinh', 'thinh@mail.com', '22', '0909090909', '555', '2019-12-18 20:06:22', '2019-12-18 20:06:22'),
(91, 'thinh', 'thinh@mail.com', '22', '0909090909', '123', '2019-12-18 20:12:31', '2019-12-18 20:12:31'),
(92, 'thinh', 'thinh@mail.com', '22', '0909090909', '123', '2019-12-18 20:14:57', '2019-12-18 20:14:57'),
(93, 'thinh', 'thinh@mail.com', '22', '0909090909', '211', '2019-12-18 20:50:00', '2019-12-18 20:50:00'),
(94, 'thinh', 'thinh@mail.com', '22', '0909090909', '22', '2019-12-18 21:03:38', '2019-12-18 21:03:38'),
(95, 'thinh', 'thinh@mail.com', '22', '0909090909', '22', '2019-12-18 21:04:11', '2019-12-18 21:04:11'),
(96, 'thinh', 'thinh@mail.com', '22', '0909090909', '222', '2019-12-18 21:04:58', '2019-12-18 21:04:58'),
(97, 'thinh', 'thinh@mail.com', '22', '0909090909', '333', '2019-12-18 21:09:18', '2019-12-18 21:09:18'),
(98, 'thinh', 'thinh@mail.com', '22', '0909090909', '333', '2019-12-18 21:10:04', '2019-12-18 21:10:04'),
(99, 'thinh', 'thinh@mail.com', '22', '0909090909', '333', '2019-12-18 21:10:53', '2019-12-18 21:10:53'),
(100, 'thinh', 'thinh@mail.com', '22', '0909090909', '123', '2019-12-18 21:20:15', '2019-12-18 21:20:15'),
(101, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sss', '2019-12-18 21:25:03', '2019-12-18 21:25:03'),
(102, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sss', '2019-12-18 21:26:58', '2019-12-18 21:26:58'),
(103, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sss', '2019-12-18 21:27:24', '2019-12-18 21:27:24'),
(104, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sss', '2019-12-18 21:28:00', '2019-12-18 21:28:00'),
(105, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sss', '2019-12-18 21:29:07', '2019-12-18 21:29:07'),
(106, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sssss', '2019-12-18 21:33:39', '2019-12-18 21:33:39'),
(107, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sssss', '2019-12-18 21:33:46', '2019-12-18 21:33:46'),
(108, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sssss', '2019-12-18 21:35:25', '2019-12-18 21:35:25'),
(109, 'thinh', 'thinh@mail.com', '22', '0909090909', 'sssss', '2019-12-18 21:36:09', '2019-12-18 21:36:09'),
(110, 'thinh 123', 'mail@m.com', '2', '0909090909', 'coupon', '2019-12-19 14:04:19', '2019-12-19 14:04:19'),
(111, 'thinh 123', 'mail@m.com', '2', '0909090909', 'coupon', '2019-12-19 14:10:04', '2019-12-19 14:10:04'),
(112, 'thinh 123', 'mail@m.com', '2', '0909090909', 'coupon', '2019-12-19 14:10:08', '2019-12-19 14:10:08'),
(113, 'thinh 123', 'mail@m.com', '2', '0909090909', 'coupon', '2019-12-19 14:10:16', '2019-12-19 14:10:16'),
(114, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:11:04', '2019-12-19 14:11:04'),
(115, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:38:39', '2019-12-19 14:38:39'),
(116, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:38:53', '2019-12-19 14:38:53'),
(117, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:40:27', '2019-12-19 14:40:27'),
(118, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:40:58', '2019-12-19 14:40:58'),
(119, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:41:54', '2019-12-19 14:41:54'),
(120, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:43:01', '2019-12-19 14:43:01'),
(121, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:43:48', '2019-12-19 14:43:48'),
(122, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:44:01', '2019-12-19 14:44:01'),
(123, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:45:01', '2019-12-19 14:45:01'),
(124, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:45:31', '2019-12-19 14:45:31'),
(125, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:46:53', '2019-12-19 14:46:53'),
(126, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:47:21', '2019-12-19 14:47:21'),
(127, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:47:57', '2019-12-19 14:47:57'),
(128, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:48:33', '2019-12-19 14:48:33'),
(129, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:48:35', '2019-12-19 14:48:35'),
(130, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:49:07', '2019-12-19 14:49:07'),
(131, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:49:20', '2019-12-19 14:49:20'),
(132, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:51:13', '2019-12-19 14:51:13'),
(133, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:53:02', '2019-12-19 14:53:02'),
(134, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:54:01', '2019-12-19 14:54:01'),
(135, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:57:39', '2019-12-19 14:57:39'),
(136, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:58:21', '2019-12-19 14:58:21'),
(137, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 14:59:40', '2019-12-19 14:59:40'),
(138, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 15:00:19', '2019-12-19 15:00:19'),
(139, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 15:00:30', '2019-12-19 15:00:30'),
(140, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 15:05:14', '2019-12-19 15:05:14'),
(141, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 15:05:30', '2019-12-19 15:05:30'),
(142, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 15:06:29', '2019-12-19 15:06:29'),
(143, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 15:07:00', '2019-12-19 15:07:00'),
(144, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 15:08:15', '2019-12-19 15:08:15'),
(145, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 15:09:11', '2019-12-19 15:09:11'),
(146, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:35:14', '2019-12-19 16:35:14'),
(147, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:35:41', '2019-12-19 16:35:41'),
(148, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:36:52', '2019-12-19 16:36:52'),
(149, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:38:13', '2019-12-19 16:38:13'),
(150, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:38:50', '2019-12-19 16:38:50'),
(151, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:39:10', '2019-12-19 16:39:10'),
(152, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:39:31', '2019-12-19 16:39:31'),
(153, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:41:01', '2019-12-19 16:41:01'),
(154, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:42:10', '2019-12-19 16:42:10'),
(155, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:43:17', '2019-12-19 16:43:17'),
(156, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:43:45', '2019-12-19 16:43:45'),
(157, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:44:03', '2019-12-19 16:44:03'),
(158, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:44:17', '2019-12-19 16:44:17'),
(159, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:44:34', '2019-12-19 16:44:34'),
(160, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:45:14', '2019-12-19 16:45:14'),
(161, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:45:40', '2019-12-19 16:45:40'),
(162, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:47:14', '2019-12-19 16:47:14'),
(163, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:48:08', '2019-12-19 16:48:08'),
(164, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:49:31', '2019-12-19 16:49:31'),
(165, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:50:41', '2019-12-19 16:50:41'),
(166, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:52:02', '2019-12-19 16:52:02'),
(167, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:52:12', '2019-12-19 16:52:12'),
(168, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:52:20', '2019-12-19 16:52:20'),
(169, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:55:28', '2019-12-19 16:55:28'),
(170, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:56:53', '2019-12-19 16:56:53'),
(171, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:57:58', '2019-12-19 16:57:58'),
(172, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:58:15', '2019-12-19 16:58:15'),
(173, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:58:24', '2019-12-19 16:58:24'),
(174, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:58:44', '2019-12-19 16:58:44'),
(175, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 16:59:43', '2019-12-19 16:59:43'),
(176, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:03:09', '2019-12-19 17:03:09'),
(177, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:04:24', '2019-12-19 17:04:24'),
(178, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:04:43', '2019-12-19 17:04:43'),
(179, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:05:02', '2019-12-19 17:05:02'),
(180, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:05:41', '2019-12-19 17:05:41'),
(181, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:06:26', '2019-12-19 17:06:26'),
(182, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:07:23', '2019-12-19 17:07:23'),
(183, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:11:46', '2019-12-19 17:11:46'),
(184, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:12:56', '2019-12-19 17:12:56'),
(185, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:15:16', '2019-12-19 17:15:16'),
(186, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:16:49', '2019-12-19 17:16:49'),
(187, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:18:53', '2019-12-19 17:18:53'),
(188, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:19:21', '2019-12-19 17:19:21'),
(189, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:19:50', '2019-12-19 17:19:50'),
(190, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:20:13', '2019-12-19 17:20:13'),
(191, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:20:22', '2019-12-19 17:20:22'),
(192, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:21:15', '2019-12-19 17:21:15'),
(193, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:21:39', '2019-12-19 17:21:39'),
(194, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:21:55', '2019-12-19 17:21:55'),
(195, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:23:09', '2019-12-19 17:23:09'),
(196, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:23:20', '2019-12-19 17:23:20'),
(197, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:23:48', '2019-12-19 17:23:48'),
(198, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:25:42', '2019-12-19 17:25:42'),
(199, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:26:02', '2019-12-19 17:26:02'),
(200, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:26:37', '2019-12-19 17:26:37'),
(201, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:28:02', '2019-12-19 17:28:02'),
(202, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:29:40', '2019-12-19 17:29:40'),
(203, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:30:04', '2019-12-19 17:30:04'),
(204, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:30:14', '2019-12-19 17:30:14'),
(205, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:31:38', '2019-12-19 17:31:38'),
(206, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:32:39', '2019-12-19 17:32:39'),
(207, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:33:08', '2019-12-19 17:33:08'),
(208, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:33:28', '2019-12-19 17:33:28'),
(209, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:33:46', '2019-12-19 17:33:46'),
(210, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:34:08', '2019-12-19 17:34:08'),
(211, 'thinh 123', 'mail@m.com', '2', '0909090909', '2', '2019-12-19 17:36:32', '2019-12-19 17:36:32'),
(212, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'Giao COD', '2019-12-19 17:41:35', '2019-12-19 17:41:35'),
(213, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'Giao COD', '2019-12-19 17:42:08', '2019-12-19 17:42:08'),
(214, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'Giao COD', '2019-12-19 17:43:40', '2019-12-19 17:43:40'),
(215, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'Giao COD', '2019-12-19 17:43:48', '2019-12-19 17:43:48'),
(216, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'Giao COD', '2019-12-19 17:44:21', '2019-12-19 17:44:21'),
(217, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'Giao COD', '2019-12-19 17:44:31', '2019-12-19 17:44:31'),
(218, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', '123', '2019-12-19 17:44:59', '2019-12-19 17:44:59'),
(219, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', '123', '2019-12-19 17:45:27', '2019-12-19 17:45:27'),
(220, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', '123', '2019-12-19 17:46:25', '2019-12-19 17:46:25'),
(221, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', '123', '2019-12-19 17:47:03', '2019-12-19 17:47:03'),
(222, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'thinh', '2019-12-19 17:47:42', '2019-12-19 17:47:42'),
(223, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'thinh', '2019-12-19 17:49:33', '2019-12-19 17:49:33'),
(224, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'thinh', '2019-12-19 17:50:08', '2019-12-19 17:50:08'),
(225, 'Hồng Nhung', 'thinh@mail.com', 'Long aN', '0355502991', 'thinh', '2019-12-19 17:50:17', '2019-12-19 17:50:17'),
(226, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:51:39', '2019-12-19 17:51:39'),
(227, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:53:03', '2019-12-19 17:53:03'),
(228, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:55:10', '2019-12-19 17:55:10'),
(229, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:55:18', '2019-12-19 17:55:18'),
(230, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:55:27', '2019-12-19 17:55:27'),
(231, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:55:36', '2019-12-19 17:55:36'),
(232, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:56:24', '2019-12-19 17:56:24'),
(233, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:57:26', '2019-12-19 17:57:26'),
(234, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:57:40', '2019-12-19 17:57:40'),
(235, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:58:11', '2019-12-19 17:58:11'),
(236, 'Nhung Hong Vo', 'nhungthinh@m.com', 'Thuan My', '0909090909', 'Đơn hàng test', '2019-12-19 17:58:31', '2019-12-19 17:58:31'),
(237, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-19 18:06:21', '2019-12-19 18:06:21'),
(238, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-19 18:07:03', '2019-12-19 18:07:03'),
(239, 'thinh 123', 'mail@m.com', '2', '0909090909', '123', '2019-12-19 18:08:06', '2019-12-19 18:08:06'),
(240, 'thinh', 'vbn@m.com', '22', '0909090909', '123', '2019-12-19 18:09:03', '2019-12-19 18:09:03'),
(241, 'thinh', 'vbn@m.com', '22', '0909090909', '123', '2019-12-19 18:09:59', '2019-12-19 18:09:59'),
(242, 'thinh', 'vbn@m.com', '22', '0909090909', '123', '2019-12-19 18:10:14', '2019-12-19 18:10:14'),
(243, 'thinh', 'vbn@m.com', '22', '0909090909', '123', '2019-12-19 18:10:30', '2019-12-19 18:10:30'),
(244, 'thinh 123', 'mail@m.com', '2', '0909090909', '22', '2019-12-19 18:11:52', '2019-12-19 18:11:52'),
(245, 'thinh', 'mail@mail.com', '222', '0909090909', '222', '2019-12-19 18:16:25', '2019-12-19 18:16:25'),
(246, 'thinh', 'susu@mail.com', 'thinh', '0909090909', '222', '2019-12-21 02:56:17', '2019-12-21 02:56:17'),
(247, 'thinh test', 'thinh@Mail.com', 'long an viet nam', '0909090909', '222', '2019-12-28 16:01:23', '2019-12-28 16:01:23'),
(248, 'thinh test', 'thinh@Mail.com', 'long an viet nam', '0909090909', '123', '2019-12-28 16:24:56', '2019-12-28 16:24:56'),
(249, 'thinh test', 'thinh@Mail.com', 'long an viet nam', '0909090909', '123', '2019-12-28 16:31:09', '2019-12-28 16:31:09'),
(250, 'thinh demo1', 'demo1@gmail.com', 'long an', '0909090909', '2222', '2020-01-01 10:57:07', '2020-01-01 10:57:07'),
(251, 'thinh demo1', 'demo1@gmail.com', 'long an', '0909090909', '233', '2020-01-01 11:06:42', '2020-01-01 11:06:42'),
(252, 'demo 3', 'demo1@gmail.com', 'long an 3', '0909090909', '123', '2020-01-01 11:09:47', '2020-01-01 11:09:47'),
(253, '123', 'ad@mail.com', '123', '1', '1', '2020-01-15 13:32:50', '2020-01-15 13:32:50'),
(254, 'thinh', 'testthinh@mail.com', 'long an', '09877666', '123', '2020-01-17 02:30:04', '2020-01-17 02:30:04'),
(255, 'demo', 'demo122@mail.com', 'TP Hồ Chí Minh', '0123456789', 'Tet 2020', '2020-01-17 02:31:51', '2020-01-17 02:31:51'),
(256, 'demo', 'demo122@mail.com', 'TP Hồ Chí Minh', '0123456789', 'sale', '2020-01-17 02:32:37', '2020-01-17 02:32:37'),
(257, 'demo', 'demo122@mail.com', 'TP Hồ Chí Minh', '0123456789', '10%', '2020-01-17 02:33:16', '2020-01-17 02:33:16'),
(258, 'demo', 'demo122@mail.com', 'TP Hồ Chí Minh', '0123456789', '123', '2020-01-17 02:34:05', '2020-01-17 02:34:05'),
(259, 'Phuong Nam Nguyen', 'nam@mail.com', '8 Cong Hoa, Tan Binh', '7788005444', 'giao hang nhanh', '2020-03-02 15:07:12', '2020-03-02 15:07:12'),
(260, 'Phuong Nam Nguyen', 'nam@mail.com', '8 Cong Hoa, Tan Binh', '7788005444', 'lan 2', '2020-03-02 15:07:48', '2020-03-02 15:07:48'),
(261, 'Phuong Nam Nguyen', 'nam@mail.com', '8 Cong Hoa, Tan Binh', '7788005444', 'lan 3', '2020-03-02 15:08:41', '2020-03-02 15:08:41'),
(262, 'Phuong Nam Nguyen', 'nam@mail.com', '8 Cong Hoa, Tan Binh', '7788005444', '4', '2020-03-02 15:14:35', '2020-03-02 15:14:35'),
(263, 'Phuong Nam Nguyen', 'nam@mail.com', '8 Cong Hoa, Tan Binh', '7788005444', '5', '2020-03-02 15:16:04', '2020-03-02 15:16:04'),
(264, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '1', '2020-03-03 11:42:40', '2020-03-03 11:42:40'),
(265, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '2', '2020-03-03 11:43:20', '2020-03-03 11:43:20'),
(266, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '3', '2020-03-03 11:43:55', '2020-03-03 11:43:55'),
(267, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '4', '2020-03-03 11:44:42', '2020-03-03 11:44:42'),
(268, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '6', '2020-03-03 11:46:19', '2020-03-03 11:46:19'),
(269, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '5', '2020-03-03 11:48:02', '2020-03-03 11:48:02'),
(270, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '7', '2020-03-03 11:48:29', '2020-03-03 11:48:29'),
(271, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '8', '2020-03-03 11:49:01', '2020-03-03 11:49:01'),
(272, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '9', '2020-03-03 11:49:18', '2020-03-03 11:49:18'),
(273, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '10', '2020-03-03 11:49:37', '2020-03-03 11:49:37'),
(274, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '11', '2020-03-03 11:53:58', '2020-03-03 11:53:58'),
(275, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '12', '2020-03-03 11:54:20', '2020-03-03 11:54:20'),
(276, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '13', '2020-03-03 11:54:43', '2020-03-03 11:54:43'),
(277, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '14', '2020-03-03 11:58:53', '2020-03-03 11:58:53'),
(278, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '18', '2020-03-03 12:00:39', '2020-03-03 12:00:39'),
(279, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '19', '2020-03-03 12:01:13', '2020-03-03 12:01:13'),
(280, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '20', '2020-03-03 12:01:39', '2020-03-03 12:01:39'),
(281, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '21', '2020-03-03 12:02:03', '2020-03-03 12:02:03'),
(282, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '22', '2020-03-03 12:02:24', '2020-03-03 12:02:24'),
(283, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '23', '2020-03-03 12:02:48', '2020-03-03 12:02:48'),
(284, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '24', '2020-03-03 12:03:12', '2020-03-03 12:03:12'),
(285, 'Nguyen Cong Phuong', 'thinh@mail.com', '303 Nguyen Huu Canh, Q.BT, HCMC', '0978542629', '25', '2020-03-03 12:03:57', '2020-03-03 12:03:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `slide_id` bigint(20) UNSIGNED NOT NULL,
  `slide_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slide`
--

INSERT INTO `tbl_slide` (`slide_id`, `slide_name`, `slide_image`, `slide_status`, `created_at`, `updated_at`) VALUES
(13, 'Ảnh Bìa 1', 'viking-gymnasitcs-and-dance-generic.jpg', 1, '2020-03-03 13:16:15', '2020-03-03 13:16:15'),
(14, 'Ảnh Bìa 2', '240_F_175918488_wkuz1qNqDlsWYhfsHdQAmV23SNmkj3vV.jpg', 1, '2020-03-03 13:16:48', '2020-03-03 13:16:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `image_uploads`
--
ALTER TABLE `image_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_contact_info`
--
ALTER TABLE `tbl_contact_info`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_data_apriori`
--
ALTER TABLE `tbl_data_apriori`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product_detail`
--
ALTER TABLE `tbl_product_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `image_uploads`
--
ALTER TABLE `image_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_contact_info`
--
ALTER TABLE `tbl_contact_info`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `coupon_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_data_apriori`
--
ALTER TABLE `tbl_data_apriori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10891;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_product_detail`
--
ALTER TABLE `tbl_product_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT cho bảng `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `slide_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
