-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2023 at 11:00 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltweb_ccq2211ab8`
--

-- --------------------------------------------------------

--
-- Table structure for table `0055_banner`
--

CREATE TABLE `0055_banner` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã Slider',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên Slider',
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Liên kết',
  `position` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Vị trí',
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `sort_order` int UNSIGNED NOT NULL COMMENT 'Thứ tự',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint UNSIGNED DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `0055_banner`
--

INSERT INTO `0055_banner` (`id`, `name`, `link`, `position`, `image`, `sort_order`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Khuyễn mãi hè 2020', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he', 'slideshow', 'slider_1.jpg', 1, '2020-06-30 17:12:13', 1, '2022-09-02 19:07:10', 1, 1),
(2, 'Khuyễn mãi mùa khai giảng', 'http://domain.com/index.php?option=page&cat=khuyen-mai-mua-khai-giang', 'slideshow', 'slider_2.jpg', 2, '2020-06-30 17:12:13', 1, '2022-09-02 19:07:08', 1, 1),
(3, 'Khuyễn mãi giáng sinh', 'http://domain.com/index.php?option=page&cat=khuyen-giang-sinh', 'slideshow', 'slider_3.jpg', 3, '2020-06-30 17:12:13', 1, '2020-06-30 17:12:13', 1, 1),
(4, 'Khuyễn mãi Covid', 'http://domain.com/index.php?option=page&cat=khuyen-mai-covid', 'slideshow', 'slider_1.jpg', 4, '2020-06-30 17:12:13', 1, '2022-11-20 04:24:40', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0055_brand`
--

CREATE TABLE `0055_brand` (
  `id` int NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'SLug Loại SP',
  `sort_order` int NOT NULL DEFAULT '1' COMMENT 'Thứ tự',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT 'Hình đại diện',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Từ khóa SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người tạo',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `0055_brand`
--

INSERT INTO `0055_brand` (`id`, `name`, `slug`, `sort_order`, `image`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Việt Nam', 'viet-nam', 0, '', 'Từ khóa SEO', '2020-07-03 02:06:19', 1, '2022-11-19 00:54:25', 1, 1),
(2, 'Hàn Quốc', 'han-quoc', 0, '', 'Từ khóa SEO', '2020-07-03 02:06:19', 1, '2022-11-19 00:54:31', 1, 1),
(3, 'Thái Lan', 'thai-lan', 0, '', 'Từ khóa SEO', '2020-07-03 02:06:19', 1, '2022-11-19 00:54:36', 1, 1),
(4, 'Nhật Bản', 'nhat-ban', 0, '', 'Từ khóa SEO', '2020-07-03 02:06:19', 1, '2022-11-19 00:54:44', 1, 1),
(5, 'Quảng Châu', 'quang-chau', 0, '', 'Từ khóa SEO', '2020-07-03 02:06:19', 1, '2022-11-19 04:33:57', 1, 0),
(6, 'dsfd', 'dsfd', 1, 'dsfd.png', 'fdsfds', '2023-07-30 10:54:00', 1, '2023-07-30 16:03:21', 1, 0),
(8, 'cvcxv', 'cvcxv', 1, '', 'cxvcxv', '2023-07-30 11:03:43', 1, '2023-07-30 16:03:19', 1, 0),
(9, 'dsfsdf', 'dsfsdf', 1, '', 'dsfdsf', '2023-07-30 11:07:13', 1, '2023-07-30 16:03:18', 1, 0),
(10, 'fdgfd', 'fdgfd', 1, '', 'gfdg', '2023-07-30 11:17:58', 1, '2023-07-30 16:03:17', 1, 0),
(11, 'dfdsfdsf', 'dfdsfdsf', 1, '', 'dsfdsf', '2023-07-30 11:20:40', 1, '2023-07-30 16:03:16', 1, 0),
(12, 'dsfsd', 'dsfsd', 1, '', 'fdsfsd', '2023-07-30 11:25:12', 1, '2023-07-30 16:03:15', 1, 0),
(13, 'sdfdsf', 'sdfdsf', 1, '', 'dsfsdfds', '2023-07-30 11:26:09', 1, '2023-07-30 16:03:11', 1, 0),
(14, 'Ten moi nha', 'ten-moi-nha', 1, '', 'Ten moi nha kjey', '2023-07-30 11:39:04', 1, '2023-07-30 16:03:07', 1, 0),
(15, 'sdfdsfsdfdsfds loi', 'sdfdsfsdfdsfds-loi', 1, 'sdfdsfsdfdsfds-loi.png', 'dsfsdfdsfdsfdsf', '2023-07-30 11:43:56', 1, '2023-07-30 16:07:00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `0055_category`
--

CREATE TABLE `0055_category` (
  `id` int NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'SLug Loại SP',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Mã cấp cha',
  `sort_order` int NOT NULL COMMENT 'Thứ tự',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Hình đại diện',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint DEFAULT '0' COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `0055_category`
--

INSERT INTO `0055_category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `image`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Đồ nam', 'do-nam', 0, 0, NULL, 'Đồ nam', '2022-11-22 18:17:31', 1, '2022-11-22 18:17:31', 0, 1),
(2, 'Đồ nữ', 'do-nu', 0, 0, NULL, 'Đồ nữ', '2022-11-22 18:18:00', 1, '2022-11-22 18:18:00', 0, 1),
(3, 'Áo thun nam', 'ao-thun-nam', 1, 0, NULL, 'Áo thun nam', '2022-11-22 18:18:27', 1, '2022-11-22 18:18:27', 0, 1),
(4, 'Áo sơ mi nam', 'ao-so-mi-nam', 1, 0, NULL, 'Áo sơ mi nam', '2022-11-22 18:18:53', 1, '2022-11-22 18:18:53', 0, 1),
(5, 'Quần short nam', 'quan-short-nam', 1, 0, NULL, 'Quần short nam', '2022-11-22 18:19:32', 1, '2022-11-22 18:19:32', 0, 1),
(6, 'Quần dài nam', 'quan-dai-nam', 1, 0, NULL, 'Quần dài nam', '2022-11-22 18:19:57', 1, '2022-11-22 18:19:57', 0, 1),
(7, 'Áo thun nữ', 'ao-thun-nu', 2, 0, NULL, 'Áo thun nữ', '2022-11-22 18:21:27', 1, '2022-11-22 18:21:27', 0, 1),
(8, 'Áo sơ mi nữ', 'ao-so-mi-nu', 2, 0, NULL, 'Áo sơ mi nữ', '2022-11-22 18:21:43', 1, '2022-11-22 18:21:43', 0, 1),
(9, 'Áo kiểu', 'ao-kieu', 2, 0, NULL, 'Áo kiểu', '2022-11-22 18:22:00', 1, '2022-11-22 18:22:00', 0, 1),
(10, 'Quần short nữ', 'quan-short-nu', 2, 0, NULL, 'Quần short nữ', '2022-11-22 18:22:14', 1, '2022-11-22 18:22:14', 0, 1),
(11, 'Quần dài nữ', 'quan-dai-nu', 2, 0, NULL, 'Quần dài nữ', '2022-11-22 18:22:48', 1, '2022-11-22 18:22:48', 0, 1),
(12, 'Chân váy', 'chan-vay', 2, 0, NULL, 'Chân váy', '2022-11-22 18:23:07', 1, '2022-11-22 18:23:07', 0, 1),
(13, 'Đầm', 'dam', 2, 0, NULL, 'Đầm', '2022-11-22 18:23:20', 1, '2022-12-29 11:17:44', 1, 2),
(14, 'Thầy lợi mói nhập', 'thay-loi-moi-nhap', 2, 1, NULL, 'sad', '2023-07-27 06:49:37', 1, '2023-07-27 06:49:37', NULL, 1),
(15, 'thay loi dep zdai', 'thay-loi-dep-zdai', 0, 1, 'thay-loi-dep-zdai.png', 'cxzcxz', '2023-07-27 07:01:37', 1, '2023-07-27 07:01:37', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0055_contact`
--

CREATE TABLE `0055_contact` (
  `id` int NOT NULL COMMENT 'Mã liên hệ',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Email',
  `phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Điện thoại',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tiêu đề',
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Chi tiết',
  `replay_id` int UNSIGNED DEFAULT NULL COMMENT 'Nội dung liên hệ',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày liên hệ',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày trả lời',
  `updated_by` tinyint DEFAULT '0' COMMENT 'Người trả lời',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT 'Tráng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0055_menu`
--

CREATE TABLE `0055_menu` (
  `id` int NOT NULL COMMENT 'Mã Menu',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên Menu',
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Liên kết',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Kiểu Menu',
  `table_id` int NOT NULL DEFAULT '0' COMMENT 'Mã trong bảng',
  `sort_order` int NOT NULL DEFAULT '0' COMMENT 'Thứ tự',
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Vị trí',
  `level` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL COMMENT 'Mã cấp cha',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày Tạo',
  `created_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `0055_menu`
--

INSERT INTO `0055_menu` (`id`, `name`, `link`, `type`, `table_id`, `sort_order`, `position`, `level`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', 'http://localhost/PHP/LTWEB_CCQ2211AB8/', 'custom', 0, 2, 'mainmenu', 1, 0, '2022-11-22 05:36:05', 1, '2023-07-31 23:17:16', 1, 1),
(2, 'Giới thiệu', 'index.php?option=page&cat=gioi-thieu', 'page', 39, 2, 'mainmenu', 1, 0, '2022-11-22 06:13:46', 1, '2022-11-22 06:18:22', 1, 1),
(3, 'Đầm', 'index.php?option=product&cat=dam', 'category', 13, 9, 'mainmenu', 2, 14, '2022-11-22 06:14:09', 1, '2022-11-22 06:18:22', 1, 1),
(4, 'Chân váy', 'index.php?option=product&cat=chan-vay', 'category', 12, 8, 'mainmenu', 2, 14, '2022-11-22 06:14:09', 1, '2022-11-22 06:18:22', 1, 1),
(5, 'Quần dài nữ', 'index.php?option=product&cat=quan-dai-nu', 'category', 11, 7, 'mainmenu', 2, 14, '2022-11-22 06:14:09', 1, '2022-11-22 06:18:22', 1, 1),
(6, 'Quần short nữ', 'index.php?option=product&cat=quan-short-nu', 'category', 10, 6, 'mainmenu', 2, 14, '2022-11-22 06:14:09', 1, '2022-11-22 06:18:22', 1, 1),
(7, 'Áo kiểu', 'index.php?option=product&cat=ao-kieu', 'category', 9, 5, 'mainmenu', 2, 14, '2022-11-22 06:14:09', 1, '2022-11-22 06:18:22', 1, 1),
(8, 'Áo sơ mi nữ', 'index.php?option=product&cat=ao-so-mi-nu', 'category', 8, 4, 'mainmenu', 2, 14, '2022-11-22 06:14:09', 1, '2022-11-22 06:18:22', 1, 1),
(9, 'Áo thun nữ', 'index.php?option=product&cat=ao-thun-nu', 'category', 7, 3, 'mainmenu', 2, 14, '2022-11-22 06:14:09', 1, '2022-11-22 06:18:22', 1, 1),
(10, 'Quần dài nam', 'index.php?option=product&cat=quan-dai-nam', 'category', 6, 13, 'mainmenu', 2, 15, '2022-11-22 06:14:09', 1, '2022-11-22 06:19:04', 1, 1),
(11, 'Quần short nam', 'index.php?option=product&cat=quan-short-nam', 'category', 5, 12, 'mainmenu', 2, 15, '2022-11-22 06:14:09', 1, '2022-11-22 06:19:04', 1, 1),
(12, 'Áo sơ mi nam', 'index.php?option=product&cat=ao-so-mi-nam', 'category', 4, 11, 'mainmenu', 2, 15, '2022-11-22 06:14:09', 1, '2022-11-22 06:19:04', 1, 1),
(13, 'Áo thun nam', 'index.php?option=product&cat=ao-thun-nam', 'category', 3, 10, 'mainmenu', 2, 15, '2022-11-22 06:14:09', 1, '2022-11-22 06:19:04', 1, 1),
(14, 'Đồ nữ', 'index.php?option=product&cat=do-nu', 'category', 2, 4, 'mainmenu', 1, 0, '2022-11-22 06:14:09', 1, '2022-11-22 06:19:41', 1, 1),
(15, 'Đồ nam', 'index.php?option=product&cat=do-nam', 'category', 1, 3, 'mainmenu', 1, 0, '2022-11-22 06:14:09', 1, '2022-11-22 06:19:41', 1, 1),
(16, 'Giới thiệu', 'index.php?option=page&cat=gioi-thieu', 'page', 39, 1, 'footermenu', 1, 0, '2022-11-22 06:55:36', 1, '2022-11-29 19:31:59', 1, 0),
(17, 'Chính Sách Hoàn Tiền', 'index.php?option=page&cat=chinh-sach-hoan-tien', 'page', 38, 1, 'footermenu', 1, 0, '2022-11-22 06:55:36', 1, '2022-11-22 06:55:42', 1, 1),
(18, 'Chính sách bảo hành', 'index.php?option=page&cat=chinh-sach-bao-hanh', 'page', 37, 2, 'footermenu', 1, 0, '2022-11-22 06:55:36', 1, '2023-07-31 23:17:16', 1, 1),
(19, 'Chính sách đổi hàng', 'index.php?option=page&cat=chinh-sach-doi-hang', 'page', 36, 2, 'footermenu', 1, 0, '2022-11-22 06:55:36', 1, '2023-07-31 23:17:16', 1, 1),
(20, 'Quần dài nữ', 'index.php?option=product&cat=quan-dai-nu', 'category', 11, 2, 'mainmenu', 1, 0, '2023-07-31 23:16:31', 1, '2023-07-31 23:17:16', 1, 2),
(21, 'Quần short nữ', 'index.php?option=product&cat=quan-short-nu', 'category', 10, 1, 'mainmenu', 1, 0, '2023-07-31 23:16:31', 1, '2023-07-31 23:16:31', 1, 2),
(22, 'Áo kiểu', 'index.php?option=product&cat=ao-kieu', 'category', 9, 1, 'mainmenu', 1, 0, '2023-07-31 23:16:31', 1, '2023-07-31 23:16:31', 1, 2),
(23, 'Áo sơ mi nữ', 'index.php?option=product&cat=ao-so-mi-nu', 'category', 8, 1, 'mainmenu', 1, 0, '2023-07-31 23:16:31', 1, '2023-07-31 23:16:31', 1, 2),
(24, 'Áo thun nữ', 'index.php?option=product&cat=ao-thun-nu', 'category', 7, 1, 'mainmenu', 1, 0, '2023-07-31 23:16:31', 1, '2023-07-31 23:16:31', 1, 2),
(25, 'Quần short nữ', 'index.php?option=product&cat=quan-short-nu', 'category', 10, 1, 'mainmenu', 1, 0, '2023-08-17 05:53:49', 1, '2023-08-17 05:53:49', 1, 2),
(26, 'Áo kiểu', 'index.php?option=product&cat=ao-kieu', 'category', 9, 1, 'mainmenu', 1, 0, '2023-08-17 05:53:49', 1, '2023-08-17 05:53:49', 1, 2),
(27, 'Áo sơ mi nữ', 'index.php?option=product&cat=ao-so-mi-nu', 'category', 8, 1, 'mainmenu', 1, 0, '2023-08-17 05:53:49', 1, '2023-08-17 05:53:49', 1, 2),
(28, 'Áo thun nữ', 'index.php?option=product&cat=ao-thun-nu', 'category', 7, 1, 'mainmenu', 1, 0, '2023-08-17 05:53:49', 1, '2023-08-17 05:53:49', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `0055_order`
--

CREATE TABLE `0055_order` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `user_id` int NOT NULL COMMENT 'Mã khách hàng',
  `deliveryaddress` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Địa chỉ người nhận',
  `deliveryname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên người nhận',
  `deliveryphone` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Điện thoại người nhận',
  `deliveryemail` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Email ngươig nhận',
  `note` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Code đơn hàng',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày cập nhật',
  `updated_by` tinyint UNSIGNED DEFAULT NULL COMMENT 'Người cập nhật',
  `status` tinyint UNSIGNED NOT NULL COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0055_orderdetail`
--

CREATE TABLE `0055_orderdetail` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã CT Đơn hàng',
  `order_id` int UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `product_id` int UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `price` float(12,2) NOT NULL COMMENT 'Giá sản phẩm',
  `qty` int UNSIGNED NOT NULL COMMENT 'Số lượng',
  `amount` float(12,2) NOT NULL COMMENT 'Thành tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0055_post`
--

CREATE TABLE `0055_post` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã bài viết',
  `topic_id` int UNSIGNED DEFAULT NULL COMMENT 'Mã chủ đề',
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tiêu đề bài viết',
  `slug` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tiêu đề',
  `detail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Chi tiết bài viết',
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0055_product`
--

CREATE TABLE `0055_product` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `category_id` int UNSIGNED NOT NULL COMMENT 'Mã loại sản phẩm',
  `brand_id` int UNSIGNED NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `slug` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tên sản phẩm',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `detail` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Chi tiết',
  `qty` smallint UNSIGNED NOT NULL COMMENT 'Số lượng',
  `price` float(12,2) NOT NULL COMMENT 'Giá',
  `pricesale` float(12,3) NOT NULL COMMENT 'Giá khuyến mãi',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `0055_product`
--

INSERT INTO `0055_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `image`, `detail`, `qty`, `price`, `pricesale`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 3, 1, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC LỚN MÀU', 'ao-len-nam-totoday-ao-len-soc-lon-mau', 'ao-len-nam-totoday-ao-len-soc-lon-mau.jpg', '<p>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN SỌC LỚN M&Agrave;U</p>\r\n', 3, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC LỚN MÀU', '2022-11-22 04:40:37', 1, '2022-11-22 04:40:37', 1, 1),
(2, 3, 1, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC PHỐI MÀU', 'ao-len-nam-totoday-ao-len-soc-phoi-mau', 'ao-len-nam-totoday-ao-len-soc-phoi-mau.jpg', '<h1>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN SỌC PHỐI M&Agrave;U</h1>\r\n', 1, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC PHỐI MÀU', '2022-11-22 04:42:49', 1, '2022-11-22 04:42:49', 1, 1),
(3, 3, 1, 'ÁO LEN NAM - TOTODAY - ÁO LEN TRAFFIC', 'ao-len-nam-totoday-ao-len-traffic', 'ao-len-nam-totoday-ao-len-traffic.jpg', '<h1>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN TRAFFIC</h1>\r\n', 1, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN TRAFFIC', '2022-11-22 04:48:35', 1, '2022-11-22 04:48:35', 1, 1),
(4, 3, 1, 'ÁO LEN NAM - TOTODAY - ÁO LEN NHIỀU MÀU', 'ao-len-nam-totoday-ao-len-nhieu-mau', 'ao-len-nam-totoday-ao-len-nhieu-mau.jpg', '<h1>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN NHIỀU M&Agrave;U</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN NHIỀU MÀU', '2022-11-22 04:49:40', 1, '2022-11-22 04:49:40', 1, 1),
(5, 4, 1, 'ÁO SƠ MI NAM - TOTODAY - THE BASIC', 'ao-so-mi-nam-totoday-the-basic', 'ao-so-mi-nam-totoday-the-basic.jpg', '<h1>&Aacute;O SƠ MI NAM - TOTODAY - THE BASIC</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - THE BASIC', '2022-11-22 05:11:51', 1, '2022-11-22 05:15:16', 1, 1),
(6, 4, 1, 'ÁO SƠ MI NAM - TOTODAY - COOL SHIRT', 'ao-so-mi-nam-totoday-cool-shirt', 'ao-so-mi-nam-totoday-cool-shirt.jpg', '<h1>&Aacute;O SƠ MI NAM - TOTODAY - THE BASIC</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - COOL SHIRT', '2022-11-22 05:11:51', 1, '2022-11-22 05:14:52', 1, 1),
(7, 4, 1, 'ÁO SƠ MI NAM - TOTODAY - SIMPLE SHIRT', 'ao-so-mi-nam-totoday-simple-shirt', 'ao-so-mi-nam-totoday-simple-shirt.jpg', '<h1>&Aacute;O SƠ MI NAM - TOTODAY - SIMPLE SHIRT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - SIMPLE SHIRT', '2022-11-22 05:16:17', 1, '2022-11-22 05:16:17', 1, 1),
(8, 4, 1, 'ÁO SƠ MI NAM - TOTODAY - FORMAT', 'ao-so-mi-nam-totoday-format', 'ao-so-mi-nam-totoday-format.jpg', '<h1>&Aacute;O SƠ MI NAM - TOTODAY - FORMAT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - FORMAT', '2022-11-22 05:16:51', 1, '2022-11-22 05:16:51', 1, 1),
(9, 5, 1, 'SHORTS JEAN NAM - TOTODAY - 11203', 'shorts-jean-nam-totoday-11203', 'shorts-jean-nam-totoday-11203.jpg', '<h1>SHORTS JEAN NAM - TOTODAY - 11203</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11203', '2022-11-22 05:17:53', 1, '2022-11-22 05:17:53', 1, 1),
(10, 5, 1, 'SHORTS JEAN NAM - TOTODAY - 11202', 'shorts-jean-nam-totoday-11202', 'shorts-jean-nam-totoday-11202.jpg', '<h1>SHORTS JEAN NAM - TOTODAY - 11202</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11202', '2022-11-22 05:19:09', 1, '2022-11-22 05:19:09', 1, 1),
(11, 5, 1, 'SHORTS JEAN NAM - TOTODAY - 11201', 'shorts-jean-nam-totoday-11201', 'shorts-jean-nam-totoday-11201.jpg', '<h1>SHORTS JEAN NAM - TOTODAY - 11201</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11201', '2022-11-22 05:19:43', 1, '2022-11-22 05:19:43', 1, 1),
(12, 5, 1, 'SHORTS THUN NAM - TOTODAY - FREEDOM TOTODAY', 'shorts-thun-nam-totoday-freedom-totoday', 'shorts-thun-nam-totoday-freedom-totoday.jpg', '<h1>SHORTS THUN NAM - TOTODAY - FREEDOM TOTODAY</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS THUN NAM - TOTODAY - FREEDOM TOTODAY', '2022-11-22 05:20:53', 1, '2022-11-22 05:20:53', 1, 1),
(13, 6, 1, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10206', 'quan-jean-nam-slimfit-totoday-10206', 'quan-jean-nam-slimfit-totoday-10206.jpg', '<h1>QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10206</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10206', '2022-11-22 05:21:58', 1, '2022-11-22 05:21:58', 1, 1),
(14, 6, 1, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10205', 'quan-jean-nam-slimfit-totoday-10205', 'quan-jean-nam-slimfit-totoday-10205.jpg', '<h1>QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10205</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10205', '2022-11-22 05:22:27', 1, '2022-11-22 05:22:27', 1, 1),
(15, 6, 1, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10204', 'quan-jean-nam-slimfit-totoday-10204', 'quan-jean-nam-slimfit-totoday-10204.jpg', '<h1>QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10204</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10204', '2022-11-22 05:22:56', 1, '2022-11-22 05:22:56', 1, 1),
(16, 6, 1, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10203', 'quan-jean-nam-slimfit-totoday-10203', 'quan-jean-nam-slimfit-totoday-10203.jpg', '<h1>QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10203</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10203', '2022-11-22 05:23:18', 1, '2022-11-22 05:23:18', 1, 1),
(17, 7, 1, 'ÁO THUN W2ATN09203FOSHT', 'ao-thun-w2atn09203fosht', 'ao-thun-w2atn09203fosht.jpg', '<h1>&Aacute;O THUN W2ATN09203FOSHT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN09203FOSHT', '2022-11-22 05:24:58', 1, '2022-11-22 05:24:58', 1, 1),
(18, 7, 1, 'ÁO THUN W2ATN09201FOSHT', 'ao-thun-w2atn09201fosht', 'ao-thun-w2atn09201fosht.jpg', '<h1>&Aacute;O THUN W2ATN09201FOSHT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN09201FOSHT', '2022-11-22 05:26:02', 1, '2022-11-22 05:26:02', 1, 1),
(19, 7, 1, 'ÁO THUN W2ATN08213BOSHT', 'ao-thun-w2atn08213bosht', 'ao-thun-w2atn08213bosht.jpg', '<h1>&Aacute;O THUN W2ATN08213BOSHT</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN08213BOSHT', '2022-11-22 05:26:25', 1, '2022-11-22 05:26:25', 1, 1),
(20, 7, 1, 'ÁO THUN W2ATN08210BOSBA', 'ao-thun-w2atn08210bosba', 'ao-thun-w2atn08210bosba.jpg', '<h1>&Aacute;O THUN W2ATN08210BOSBA</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN08210BOSBA', '2022-11-22 05:26:44', 1, '2022-11-22 05:26:44', 1, 1),
(21, 8, 1, 'ÁO SƠMI W2SMD05204BOSTR', 'ao-somi-w2smd05204bostr', 'ao-somi-w2smd05204bostr.jpg', '<h1>&Aacute;O SƠMI W2SMD05204BOSTR</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMD05204BOSTR', '2022-11-22 05:29:53', 1, '2022-11-22 05:29:53', 1, 1),
(22, 8, 1, 'ÁO SƠMI W2SMN05201BOSTR', 'ao-somi-w2smn05201bostr', 'ao-somi-w2smn05201bostr.jpg', '<h1>&Aacute;O SƠMI W2SMN05201BOSTR</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMN05201BOSTR', '2022-11-22 05:30:23', 1, '2022-11-22 05:30:23', 1, 1),
(23, 8, 1, 'ÁO SƠMI W2SMD05203BOSTR', 'ao-somi-w2smd05203bostr', 'ao-somi-w2smd05203bostr.jpg', '<h1>&Aacute;O SƠMI W2SMD05203BOSTR</h1>\r\n', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMD05203BOSTR', '2022-11-22 05:30:45', 1, '2022-11-22 05:30:45', 1, 1),
(24, 8, 1, 'SET SƠMI W2SET05201FOSCR', 'set-somi-w2set05201foscr', 'set-somi-w2set05201foscr.jpg', '<h1>SET SƠMI W2SET05201FOSCR</h1>\r\n', 1, 10000.00, 10000.000, 'SET SƠMI W2SET05201FOSCR', '2022-11-22 05:31:09', 1, '2022-11-22 05:31:09', 1, 1),
(25, 10, 1, 'SHORTS JEAN NỮ WASH - TOTODAY - 10205', 'shorts-jean-nu-wash-totoday-10205', 'shorts-jean-nu-wash-totoday-10205.jpg', '<h1>SHORTS JEAN NỮ WASH - TOTODAY - 10205</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ WASH - TOTODAY - 10205', '2022-11-22 05:34:00', 1, '2022-11-22 05:34:00', 1, 1),
(26, 10, 1, 'SHORTS JEAN NỮ - TOTODAY - 10205', 'shorts-jean-nu-totoday-10205', 'shorts-jean-nu-totoday-10205.jpg', '<h1>SHORTS JEAN NỮ - TOTODAY - 10205</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ - TOTODAY - 10205', '2022-11-22 05:34:21', 1, '2022-11-22 05:34:21', 1, 1),
(27, 10, 1, 'SHORTS JEAN NỮ - TOTODAY - 10203', 'shorts-jean-nu-totoday-10203', 'shorts-jean-nu-totoday-10203.jpg', '<h1>SHORTS JEAN NỮ - TOTODAY - 10203</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ - TOTODAY - 10203', '2022-11-22 05:34:52', 1, '2022-11-22 05:34:52', 1, 1),
(28, 10, 1, 'SHORTS JEAN NỮ RÁCH - TOTODAY - 10202', 'shorts-jean-nu-rach-totoday-10202', 'shorts-jean-nu-rach-totoday-10202.jpg', '<h1>SHORTS JEAN NỮ R&Aacute;CH - TOTODAY - 10202</h1>\r\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ RÁCH - TOTODAY - 10202', '2022-11-22 05:35:13', 1, '2022-11-22 05:35:13', 1, 1),
(29, 11, 1, 'QUẦN JEAN W2QJN05203FBGTR', 'quan-jean-w2qjn05203fbgtr', 'quan-jean-w2qjn05203fbgtr.jpg', '<h1>QUẦN JEAN W2QJN05203FBGTR</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN05203FBGTR', '2022-11-22 05:38:14', 1, '2022-11-22 05:38:15', 1, 1),
(30, 11, 1, 'QUẦN JEAN W2QJN05202FBGTR', 'quan-jean-w2qjn05202fbgtr', 'quan-jean-w2qjn05202fbgtr.jpg', '<h1>QUẦN JEAN W2QJN05202FBGTR</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN05202FBGTR', '2022-11-22 05:38:39', 1, '2022-11-22 05:38:39', 1, 1),
(31, 11, 1, 'QUẦN JEAN W2QJN05201FBGTR', 'quan-jean-w2qjn05201fbgtr', 'quan-jean-w2qjn05201fbgtr.jpg', '<h1>QUẦN JEAN W2QJN05201FBGTR</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN05201FBGTR', '2022-11-22 05:38:59', 1, '2022-11-22 05:38:59', 1, 1),
(32, 11, 1, 'QUẦN JEAN W2QJN04208FBGTR', 'quan-jean-w2qjn04208fbgtr', 'quan-jean-w2qjn04208fbgtr.jpg', '<h1>QUẦN JEAN W2QJN04208FBGTR</h1>\r\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN04208FBGTR', '2022-11-22 05:39:47', 1, '2022-11-22 05:39:48', 1, 1),
(33, 12, 1, 'CHÂN VÁY JEAN NỮ - TOTODAY - 10201', 'chan-vay-jean-nu-totoday-10201', 'chan-vay-jean-nu-totoday-10201.jpg', '<h1>CH&Acirc;N V&Aacute;Y JEAN NỮ - TOTODAY - 10201</h1>\r\n', 1, 10000.00, 10000.000, 'CHÂN VÁY JEAN NỮ - TOTODAY - 10201', '2022-11-22 05:41:15', 1, '2022-11-22 05:41:15', 1, 1),
(34, 12, 1, 'CHÂN VÁY W2CNV06203FOSXL', 'chan-vay-w2cnv06203fosxl', 'chan-vay-w2cnv06203fosxl.jpg', '<h1>CH&Acirc;N V&Aacute;Y W2CNV06203FOSXL</h1>\r\n', 1, 10000.00, 10000.000, 'CHÂN VÁY W2CNV06203FOSXL', '2022-11-22 05:41:36', 1, '2022-11-22 05:41:36', 1, 1),
(35, 12, 1, 'CHÂN VÁY W2CNV06202FOSXL', 'chan-vay-w2cnv06202fosxl', 'chan-vay-w2cnv06202fosxl.jpg', '<h1>CH&Acirc;N V&Aacute;Y W2CNV06202FOSXL</h1>\r\n', 1, 10000.00, 10000.000, 'CHÂN VÁY W2CNV06202FOSXL', '2022-11-22 05:41:58', 1, '2022-11-22 05:41:58', 1, 1),
(36, 12, 1, 'CHÂN VÁY W2CNV06201FOSCR', 'chan-vay-w2cnv06201foscr', 'chan-vay-w2cnv06201foscr.jpg', '<h1>CH&Acirc;N V&Aacute;Y W2CNV06201FOSCR</h1>\r\n', 1, 10000.00, 10000.000, 'CHÂN VÁY W2CNV06201FOSCR', '2022-11-22 05:42:21', 1, '2023-08-08 23:48:03', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `0055_topic`
--

CREATE TABLE `0055_topic` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tên chủ đề',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Mã cấp cha',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Sắp xếp',
  `metakey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0055_user`
--

CREATE TABLE `0055_user` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã tài khoản',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên đăng nhâp',
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Email',
  `gender` tinyint UNSIGNED NOT NULL COMMENT 'Giới tính',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Điện thoại',
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình',
  `roles` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quyền truy cập',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `0055_user`
--

INSERT INTO `0055_user` (`id`, `name`, `username`, `password`, `email`, `gender`, `phone`, `image`, `roles`, `address`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(6, 'Hồ Diên Lợi', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hodienloi@gmail.com', 1, '098888', 'hodienloi.jpg', 1, 'Bình Dương', '2023-10-13 10:34:44', 1, '2023-10-13 10:34:44', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `0055_banner`
--
ALTER TABLE `0055_banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_brand`
--
ALTER TABLE `0055_brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_category`
--
ALTER TABLE `0055_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_contact`
--
ALTER TABLE `0055_contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_menu`
--
ALTER TABLE `0055_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_order`
--
ALTER TABLE `0055_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_orderdetail`
--
ALTER TABLE `0055_orderdetail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_post`
--
ALTER TABLE `0055_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_product`
--
ALTER TABLE `0055_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_topic`
--
ALTER TABLE `0055_topic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0055_user`
--
ALTER TABLE `0055_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `0055_banner`
--
ALTER TABLE `0055_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã Slider', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `0055_brand`
--
ALTER TABLE `0055_brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `0055_category`
--
ALTER TABLE `0055_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `0055_contact`
--
ALTER TABLE `0055_contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã liên hệ', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `0055_menu`
--
ALTER TABLE `0055_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Menu', AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `0055_order`
--
ALTER TABLE `0055_order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `0055_orderdetail`
--
ALTER TABLE `0055_orderdetail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã CT Đơn hàng', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `0055_post`
--
ALTER TABLE `0055_post`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `0055_product`
--
ALTER TABLE `0055_product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `0055_topic`
--
ALTER TABLE `0055_topic`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `0055_user`
--
ALTER TABLE `0055_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã tài khoản', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
