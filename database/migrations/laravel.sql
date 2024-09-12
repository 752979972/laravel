-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2024-09-12 10:25:03
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `laravel`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 04:22:57', '2024-09-10 04:22:57'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 04:23:05', '2024-09-10 04:23:05'),
(3, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 04:23:08', '2024-09-10 04:23:08'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 04:23:12', '2024-09-10 04:23:12'),
(5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 04:23:19', '2024-09-10 04:23:19'),
(6, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-10 04:25:13', '2024-09-10 04:25:13'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 04:25:19', '2024-09-10 04:25:19'),
(8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 04:51:57', '2024-09-10 04:51:57'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 04:51:57', '2024-09-10 04:51:57'),
(10, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 04:51:57', '2024-09-10 04:51:57'),
(11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 04:52:05', '2024-09-10 04:52:05'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 04:59:48', '2024-09-10 04:59:48'),
(13, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 05:21:25', '2024-09-10 05:21:25'),
(14, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2024-09-10 05:21:38', '2024-09-10 05:21:38'),
(15, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-09-10 05:43:42', '2024-09-10 05:43:42'),
(16, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 05:43:50', '2024-09-10 05:43:50'),
(17, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 05:45:24', '2024-09-10 05:45:24'),
(18, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 05:45:38', '2024-09-10 05:45:38'),
(19, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 05:45:47', '2024-09-10 05:45:47'),
(20, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 05:45:59', '2024-09-10 05:45:59'),
(21, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 05:49:20', '2024-09-10 05:49:20'),
(22, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 05:50:31', '2024-09-10 05:50:31'),
(23, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"1\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 05:50:40', '2024-09-10 05:50:40'),
(24, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 05:50:41', '2024-09-10 05:50:41'),
(25, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 05:54:46', '2024-09-10 05:54:46'),
(26, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 05:56:55', '2024-09-10 05:56:55'),
(27, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 05:57:33', '2024-09-10 05:57:33'),
(28, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 05:57:46', '2024-09-10 05:57:46'),
(29, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 05:58:09', '2024-09-10 05:58:09'),
(30, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"1\\\"\"}', '2024-09-10 06:02:41', '2024-09-10 06:02:41'),
(31, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:02:50', '2024-09-10 06:02:50'),
(32, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:02:53', '2024-09-10 06:02:53'),
(33, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-09-10 06:03:25', '2024-09-10 06:03:25'),
(34, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:03:36', '2024-09-10 06:03:36'),
(35, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:05:20', '2024-09-10 06:05:20'),
(36, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:05:24', '2024-09-10 06:05:24'),
(37, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:17:27', '2024-09-10 06:17:27'),
(38, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:19:04', '2024-09-10 06:19:04'),
(39, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:19:22', '2024-09-10 06:19:22'),
(40, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from test where user=\\\"Admin\\\"\"}', '2024-09-10 06:19:48', '2024-09-10 06:19:48'),
(41, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 06:19:49', '2024-09-10 06:19:49'),
(42, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:20:21', '2024-09-10 06:20:21'),
(43, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":null}', '2024-09-10 06:30:24', '2024-09-10 06:30:24'),
(44, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:30:28', '2024-09-10 06:30:28'),
(45, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"sfd\"}', '2024-09-10 06:30:30', '2024-09-10 06:30:30'),
(46, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:30:42', '2024-09-10 06:30:42'),
(47, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:30:43', '2024-09-10 06:30:43'),
(48, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:31:17', '2024-09-10 06:31:17'),
(49, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:31:30', '2024-09-10 06:31:30'),
(50, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:31:51', '2024-09-10 06:31:51'),
(51, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:33:06', '2024-09-10 06:33:06'),
(52, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:33:47', '2024-09-10 06:33:47'),
(53, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:36:02', '2024-09-10 06:36:02'),
(54, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:36:15', '2024-09-10 06:36:15'),
(55, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:36:16', '2024-09-10 06:36:16'),
(56, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:37:31', '2024-09-10 06:37:31'),
(57, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:37:51', '2024-09-10 06:37:51'),
(58, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:38:07', '2024-09-10 06:38:07'),
(59, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:38:48', '2024-09-10 06:38:48'),
(60, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:10', '2024-09-10 06:39:10'),
(61, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:11', '2024-09-10 06:39:11'),
(62, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:12', '2024-09-10 06:39:12'),
(63, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:13', '2024-09-10 06:39:13'),
(64, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:14', '2024-09-10 06:39:14'),
(65, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:16', '2024-09-10 06:39:16'),
(66, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:16', '2024-09-10 06:39:16'),
(67, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:17', '2024-09-10 06:39:17'),
(68, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:18', '2024-09-10 06:39:18'),
(69, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:19', '2024-09-10 06:39:19'),
(70, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:19', '2024-09-10 06:39:19'),
(71, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:20', '2024-09-10 06:39:20'),
(72, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:21', '2024-09-10 06:39:21'),
(73, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:22', '2024-09-10 06:39:22'),
(74, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:23', '2024-09-10 06:39:23'),
(75, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:24', '2024-09-10 06:39:24'),
(76, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:25', '2024-09-10 06:39:25'),
(77, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:25', '2024-09-10 06:39:25'),
(78, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:26', '2024-09-10 06:39:26'),
(79, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:27', '2024-09-10 06:39:27'),
(80, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:28', '2024-09-10 06:39:28'),
(81, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:29', '2024-09-10 06:39:29'),
(82, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:39:50', '2024-09-10 06:39:50'),
(83, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:40:36', '2024-09-10 06:40:36'),
(84, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from tet where user=\\\"1\\\"\"}', '2024-09-10 06:40:38', '2024-09-10 06:40:38'),
(85, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:40:42', '2024-09-10 06:40:42'),
(86, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:40:43', '2024-09-10 06:40:43'),
(87, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:40:55', '2024-09-10 06:40:55'),
(88, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:40:57', '2024-09-10 06:40:57'),
(89, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:02', '2024-09-10 06:41:02'),
(90, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:03', '2024-09-10 06:41:03'),
(91, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:15', '2024-09-10 06:41:15'),
(92, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:41:22', '2024-09-10 06:41:22'),
(93, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:23', '2024-09-10 06:41:23'),
(94, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:24', '2024-09-10 06:41:24'),
(95, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:25', '2024-09-10 06:41:25'),
(96, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:26', '2024-09-10 06:41:26'),
(97, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:27', '2024-09-10 06:41:27'),
(98, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:27', '2024-09-10 06:41:27'),
(99, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:28', '2024-09-10 06:41:28'),
(100, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:29', '2024-09-10 06:41:29'),
(101, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:29', '2024-09-10 06:41:29'),
(102, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:30', '2024-09-10 06:41:30'),
(103, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:30', '2024-09-10 06:41:30'),
(104, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:31', '2024-09-10 06:41:31'),
(105, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:32', '2024-09-10 06:41:32'),
(106, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:32', '2024-09-10 06:41:32'),
(107, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:33', '2024-09-10 06:41:33'),
(108, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:34', '2024-09-10 06:41:34'),
(109, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:34', '2024-09-10 06:41:34'),
(110, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:35', '2024-09-10 06:41:35'),
(111, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:35', '2024-09-10 06:41:35'),
(112, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:36', '2024-09-10 06:41:36'),
(113, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:41:37', '2024-09-10 06:41:37'),
(114, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:44:02', '2024-09-10 06:44:02'),
(115, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"sfd\"}', '2024-09-10 06:45:33', '2024-09-10 06:45:33'),
(116, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:45:41', '2024-09-10 06:45:41'),
(117, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:47:10', '2024-09-10 06:47:10'),
(118, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:47:32', '2024-09-10 06:47:32'),
(119, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:47:37', '2024-09-10 06:47:37'),
(120, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:49:05', '2024-09-10 06:49:05'),
(121, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:50:55', '2024-09-10 06:50:55'),
(122, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:51:57', '2024-09-10 06:51:57'),
(123, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:58:27', '2024-09-10 06:58:27'),
(124, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"aaa\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:58:32', '2024-09-10 06:58:32'),
(125, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:58:33', '2024-09-10 06:58:33'),
(126, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"ss\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 06:58:42', '2024-09-10 06:58:42'),
(127, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 06:58:43', '2024-09-10 06:58:43'),
(128, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 07:00:52', '2024-09-10 07:00:52'),
(129, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"960814901744397848\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 07:00:57', '2024-09-10 07:00:57'),
(130, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 07:00:58', '2024-09-10 07:00:58'),
(131, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from test where user=\\\"1\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 07:01:24', '2024-09-10 07:01:24'),
(132, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 07:01:25', '2024-09-10 07:01:25'),
(133, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 07:02:42', '2024-09-10 07:02:42'),
(134, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\"}', '2024-09-10 07:02:43', '2024-09-10 07:02:43'),
(135, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\"}', '2024-09-10 07:03:18', '2024-09-10 07:03:18'),
(136, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\"}', '2024-09-10 07:04:11', '2024-09-10 07:04:11'),
(137, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\"}', '2024-09-10 07:04:35', '2024-09-10 07:04:35'),
(138, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\"}', '2024-09-10 07:07:53', '2024-09-10 07:07:53'),
(139, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\"}', '2024-09-10 07:08:13', '2024-09-10 07:08:13'),
(140, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\"}', '2024-09-10 07:08:20', '2024-09-10 07:08:20'),
(141, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"$result\"}', '2024-09-10 07:09:43', '2024-09-10 07:09:43'),
(142, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 07:10:16', '2024-09-10 07:10:16'),
(143, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 07:10:27', '2024-09-10 07:10:27'),
(144, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 07:10:30', '2024-09-10 07:10:30'),
(145, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 07:10:37', '2024-09-10 07:10:37'),
(146, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 07:11:41', '2024-09-10 07:11:41'),
(147, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 07:11:42', '2024-09-10 07:11:42'),
(148, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 07:11:44', '2024-09-10 07:11:44'),
(149, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:10:08', '2024-09-10 17:10:08'),
(150, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:18:14', '2024-09-10 17:18:14'),
(151, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devss where user=\\\"Admin\\\"\"}', '2024-09-10 17:18:26', '2024-09-10 17:18:26'),
(152, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devss where user=\\\"Admin\\\"\"}', '2024-09-10 17:19:09', '2024-09-10 17:19:09'),
(153, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devss where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:19:11', '2024-09-10 17:19:11'),
(154, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devss where user=\\\"Admin\\\"\"}', '2024-09-10 17:19:17', '2024-09-10 17:19:17'),
(155, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devss where user=\\\"Admin\\\"\"}', '2024-09-10 17:19:32', '2024-09-10 17:19:32'),
(156, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devss where user=\\\"Admin\\\"\"}', '2024-09-10 17:19:57', '2024-09-10 17:19:57'),
(157, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devss where user=\\\"Admin\\\"\"}', '2024-09-10 17:20:14', '2024-09-10 17:20:14'),
(158, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devss where user=\\\"Admin\\\"\"}', '2024-09-10 17:20:27', '2024-09-10 17:20:27'),
(159, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devss where user=\\\"Admin\\\"\"}', '2024-09-10 17:20:55', '2024-09-10 17:20:55'),
(160, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:21:14', '2024-09-10 17:21:14'),
(161, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:21:25', '2024-09-10 17:21:25'),
(162, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:00', '2024-09-10 17:24:00'),
(163, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:01', '2024-09-10 17:24:01'),
(164, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:02', '2024-09-10 17:24:02'),
(165, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:03', '2024-09-10 17:24:03'),
(166, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:04', '2024-09-10 17:24:04'),
(167, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:05', '2024-09-10 17:24:05'),
(168, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:06', '2024-09-10 17:24:06'),
(169, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:06', '2024-09-10 17:24:06'),
(170, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:07', '2024-09-10 17:24:07'),
(171, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:07', '2024-09-10 17:24:07'),
(172, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:08', '2024-09-10 17:24:08'),
(173, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:08', '2024-09-10 17:24:08'),
(174, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:09', '2024-09-10 17:24:09'),
(175, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:09', '2024-09-10 17:24:09'),
(176, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:10', '2024-09-10 17:24:10'),
(177, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:11', '2024-09-10 17:24:11'),
(178, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:11', '2024-09-10 17:24:11'),
(179, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:12', '2024-09-10 17:24:12'),
(180, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:12', '2024-09-10 17:24:12'),
(181, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:13', '2024-09-10 17:24:13'),
(182, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:13', '2024-09-10 17:24:13'),
(183, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:24:14', '2024-09-10 17:24:14'),
(184, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:25:40', '2024-09-10 17:25:40'),
(185, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:26:17', '2024-09-10 17:26:17'),
(186, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:28:45', '2024-09-10 17:28:45'),
(187, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:28:47', '2024-09-10 17:28:47'),
(188, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:30:44', '2024-09-10 17:30:44'),
(189, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:30:59', '2024-09-10 17:30:59'),
(190, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:31:00', '2024-09-10 17:31:00'),
(191, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:31:06', '2024-09-10 17:31:06'),
(192, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:31:22', '2024-09-10 17:31:22'),
(193, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:31:28', '2024-09-10 17:31:28'),
(194, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:31:30', '2024-09-10 17:31:30'),
(195, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:31:51', '2024-09-10 17:31:51'),
(196, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:31:52', '2024-09-10 17:31:52'),
(197, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:31:54', '2024-09-10 17:31:54'),
(198, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:31:55', '2024-09-10 17:31:55'),
(199, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:31:57', '2024-09-10 17:31:57'),
(200, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:32:00', '2024-09-10 17:32:00'),
(201, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:32:28', '2024-09-10 17:32:28'),
(202, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:32:30', '2024-09-10 17:32:30'),
(203, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:32:46', '2024-09-10 17:32:46'),
(204, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:33:01', '2024-09-10 17:33:01'),
(205, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:33:32', '2024-09-10 17:33:32'),
(206, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:33:43', '2024-09-10 17:33:43'),
(207, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:33:55', '2024-09-10 17:33:55'),
(208, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:35:14', '2024-09-10 17:35:14'),
(209, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:35:36', '2024-09-10 17:35:36'),
(210, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:35:44', '2024-09-10 17:35:44'),
(211, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:35:46', '2024-09-10 17:35:46'),
(212, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:35:48', '2024-09-10 17:35:48'),
(213, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:35:53', '2024-09-10 17:35:53'),
(214, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:35:55', '2024-09-10 17:35:55'),
(215, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"__search__\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:36:16', '2024-09-10 17:36:16'),
(216, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 17:36:32', '2024-09-10 17:36:32'),
(217, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 17:43:52', '2024-09-10 17:43:52'),
(218, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 17:45:26', '2024-09-10 17:45:26'),
(219, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 17:45:43', '2024-09-10 17:45:43'),
(220, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 17:45:50', '2024-09-10 17:45:50'),
(221, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"search\":\"select * from devs where user=\\\"1\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:46:05', '2024-09-10 17:46:05'),
(222, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"search\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:46:19', '2024-09-10 17:46:19'),
(223, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"search\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:46:33', '2024-09-10 17:46:33'),
(224, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:49:16', '2024-09-10 17:49:16'),
(225, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:49:33', '2024-09-10 17:49:33'),
(226, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:50:13', '2024-09-10 17:50:13'),
(227, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:50:15', '2024-09-10 17:50:15'),
(228, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:50:32', '2024-09-10 17:50:32'),
(229, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:51:02', '2024-09-10 17:51:02'),
(230, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:52:53', '2024-09-10 17:52:53'),
(231, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:53:21', '2024-09-10 17:53:21'),
(232, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:53:36', '2024-09-10 17:53:36'),
(233, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:53:51', '2024-09-10 17:53:51'),
(234, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:54:03', '2024-09-10 17:54:03'),
(235, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:54:21', '2024-09-10 17:54:21'),
(236, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:54:39', '2024-09-10 17:54:39'),
(237, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:54:48', '2024-09-10 17:54:48'),
(238, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:55:00', '2024-09-10 17:55:00'),
(239, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\"}', '2024-09-10 17:55:03', '2024-09-10 17:55:03'),
(240, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"1\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:55:07', '2024-09-10 17:55:07'),
(241, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:55:23', '2024-09-10 17:55:23'),
(242, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 17:55:43', '2024-09-10 17:55:43'),
(243, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 17:55:46', '2024-09-10 17:55:46'),
(244, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 17:57:07', '2024-09-10 17:57:07'),
(245, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 17:58:42', '2024-09-10 17:58:42'),
(246, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 18:00:31', '2024-09-10 18:00:31'),
(247, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 18:01:37', '2024-09-10 18:01:37'),
(248, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 18:01:57', '2024-09-10 18:01:57'),
(249, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 18:09:09', '2024-09-10 18:09:09'),
(250, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:09:24', '2024-09-10 18:09:24'),
(251, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"  and search=\\\"insert *\\\"\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:09:59', '2024-09-10 18:09:59'),
(252, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"  and search=\\\"insert *\\\"\"}', '2024-09-10 18:11:09', '2024-09-10 18:11:09'),
(253, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"  and search=\\\"insert *\\\"\"}', '2024-09-10 18:11:51', '2024-09-10 18:11:51'),
(254, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"  and search=\\\"insert *\\\"\"}', '2024-09-10 18:12:22', '2024-09-10 18:12:22'),
(255, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\\\"Admin\\\"  and search=\\\"insert *\\\"\"}', '2024-09-10 18:25:11', '2024-09-10 18:25:11'),
(256, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\'Admin\'\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:34:50', '2024-09-10 18:34:50'),
(257, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 18:35:00', '2024-09-10 18:35:00'),
(258, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\'test\'\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:35:12', '2024-09-10 18:35:12'),
(259, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\'test\'\"}', '2024-09-10 18:35:18', '2024-09-10 18:35:18'),
(260, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 18:35:24', '2024-09-10 18:35:24'),
(261, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:36:08', '2024-09-10 18:36:08'),
(262, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:36:09', '2024-09-10 18:36:09'),
(263, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":\"select * from devs where user=\'Admin\'\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:36:14', '2024-09-10 18:36:14'),
(264, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:36:15', '2024-09-10 18:36:15'),
(265, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 18:36:19', '2024-09-10 18:36:19'),
(266, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 18:39:49', '2024-09-10 18:39:49'),
(267, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:40:19', '2024-09-10 18:40:19'),
(268, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null,\"_pjax\":\"#pjax-container\"}', '2024-09-10 18:40:43', '2024-09-10 18:40:43'),
(269, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 18:41:34', '2024-09-10 18:41:34'),
(270, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 18:55:55', '2024-09-10 18:55:55'),
(271, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 18:59:32', '2024-09-10 18:59:32'),
(272, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:02:10', '2024-09-10 19:02:10'),
(273, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 19:02:39', '2024-09-10 19:02:39'),
(274, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:02:43', '2024-09-10 19:02:43'),
(275, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:02:51', '2024-09-10 19:02:51'),
(276, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:03:42', '2024-09-10 19:03:42'),
(277, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:04:20', '2024-09-10 19:04:20'),
(278, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:05:14', '2024-09-10 19:05:14'),
(279, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:05:36', '2024-09-10 19:05:36'),
(280, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:07:11', '2024-09-10 19:07:11'),
(281, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:09:26', '2024-09-10 19:09:26'),
(282, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 19:14:11', '2024-09-10 19:14:11'),
(283, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 19:14:28', '2024-09-10 19:14:28'),
(284, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:14:36', '2024-09-10 19:14:36'),
(285, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 19:16:49', '2024-09-10 19:16:49'),
(286, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:16:56', '2024-09-10 19:16:56'),
(287, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:18:03', '2024-09-10 19:18:03'),
(288, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:18:46', '2024-09-10 19:18:46'),
(289, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 19:19:34', '2024-09-10 19:19:34'),
(290, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Dev\",\"_key\":[\"4\",\"5\"],\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"_action\":\"App_Admin_Actions_Dev_DownloadJson\"}', '2024-09-10 19:19:39', '2024-09-10 19:19:39'),
(291, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"Nh3dwZIOpywBh9EJzfkKWW9jn8wnqqH4aj7fbjUe\",\"search\":null}', '2024-09-10 19:20:32', '2024-09-10 19:20:32'),
(292, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 19:28:37', '2024-09-10 19:28:37'),
(293, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 19:35:36', '2024-09-10 19:35:36'),
(294, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 19:35:45', '2024-09-10 19:35:45'),
(295, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-10 19:35:50', '2024-09-10 19:35:50'),
(296, 1, 'admin/dev', 'GET', '127.0.0.1', '[]', '2024-09-10 19:37:37', '2024-09-10 19:37:37'),
(297, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"0dIxJju4irkJ3iJDEyMQuIVNtKl8yJV11jofmhRp\",\"search\":\"select * from devs where user=\'Admin\'\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 19:39:06', '2024-09-10 19:39:06'),
(298, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"0dIxJju4irkJ3iJDEyMQuIVNtKl8yJV11jofmhRp\",\"search\":\"select * from devas where user=\'Admin\'\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 19:40:26', '2024-09-10 19:40:26'),
(299, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"0dIxJju4irkJ3iJDEyMQuIVNtKl8yJV11jofmhRp\",\"search\":\"select * from devas where user=\'Admin\'\",\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2024-09-10 19:43:01', '2024-09-10 19:43:01'),
(300, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"0dIxJju4irkJ3iJDEyMQuIVNtKl8yJV11jofmhRp\",\"search\":\"select * from devas where user=\'Admin\'\"}', '2024-09-10 19:45:02', '2024-09-10 19:45:02'),
(301, 1, 'admin/dev', 'GET', '127.0.0.1', '{\"_token\":\"0dIxJju4irkJ3iJDEyMQuIVNtKl8yJV11jofmhRp\",\"search\":\"UPDATE `devs` SET `sql` = \'select * from devs where user=\\\\\'Admin\\\\\'\' WHERE `devs`.`id` = 9;\",\"_pjax\":\"#pjax-container\"}', '2024-09-10 19:52:05', '2024-09-10 19:52:05'),
(302, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 20:02:10', '2024-09-10 20:02:10'),
(303, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-10 20:02:14', '2024-09-10 20:02:14');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-09-10 04:22:20', '2024-09-10 04:22:20');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$irgpux9JJLHzyuskkjiQA.e4.pp3XRtmju750O8wBsWePQJOoA/BW', 'Admin', NULL, 'kI8TX9bxSO1TNZ4FSm4L1lEWI7oDsXNLV3C2QUY4USJYguIX41ya4KbUXFrP', '2024-09-10 04:22:20', '2024-09-10 04:22:20');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `devs`
--

CREATE TABLE `devs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User Name',
  `sql` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Search Sql',
  `error` text COLLATE utf8mb4_unicode_ci COMMENT 'Error',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `devs`
--

INSERT INTO `devs` (`id`, `user`, `sql`, `error`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'select * from devs where user=\"1\"', NULL, '2024-09-11 03:19:52', NULL),
(2, 'Admin', 'select * from devs where user=\'Admin\'', '', '2024-09-10 18:34:50', NULL),
(3, 'Admin', 'select * from devs where user=\'test\'', '', '2024-09-10 18:35:12', NULL),
(4, 'Admin', 'select * from devs where user=\'test\'', '', '2024-09-10 18:35:18', NULL),
(5, 'Admin', 'select * from devs where user=\'Admin\'', '', '2024-09-10 18:36:14', NULL),
(6, 'Admin', 'select * from devs where user=\'Admin\'', '', '2024-09-10 19:39:06', NULL),
(7, 'Admin', 'select * from devas where user=\'Admin\'', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'laravel.devas\' doesn\'t exist (Connection: mysql, SQL: select * from devas where user=\"Admin\")', '2024-09-10 19:40:26', NULL),
(8, 'Admin', 'select * from devas where user=\'Admin\'', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'laravel.devas\' doesn\'t exist (Connection: mysql, SQL: select * from devas where user=\"Admin\")', '2024-09-10 19:43:01', NULL),
(9, 'Admin', 'select * from devs where user=\'Admin\'', 'SQLSTATE[42S02]: Base table or view not found: 1146 Table \'laravel.devas\' doesn\'t exist (Connection: mysql, SQL: select * from devas where user=\"Admin\")', '2024-09-10 19:45:03', NULL),
(10, 'Admin', 'UPDATE `devs` SET `sql` = \'select * from devs where user=\\\'Admin\\\'\' WHERE `devs`.`id` = 9;', 'SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'Admin\"\" WHERE `devs`.`id` = 9\' at line 1 (Connection: mysql, SQL: UPDATE `devs` SET `sql` = \"select * from devs where user=\"Admin\"\" WHERE `devs`.`id` = 9;)', '2024-09-10 19:52:05', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2016_01_04_173148_create_admin_tables', 1),
(9, '2024_09_11_130224_create_devs_table', 2);

-- --------------------------------------------------------

--
-- 表的结构 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BbdLgAkgUZLcUbttBmqyCUnnfx31HXHHtNybPwb0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxNDQ6Imh0dHA6Ly9sYXJhdmVsLmNtcy5jb20vYWRtaW4vZGV2P190b2tlbj0wZEl4Smp1NGlya0ozaUpERXlNUXVJVk50S2w4eUpWMTFqb2ZtaFJwJnNlYXJjaD1zZWxlY3QlMjAlMkElMjBmcm9tJTIwZGV2YXMlMjB3aGVyZSUyMHVzZXIlM0QlMjdBZG1pbiUyNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiIwZEl4Smp1NGlya0ozaUpERXlNUXVJVk50S2w4eUpWMTFqb2ZtaFJwIjtzOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1726027334);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- 表的索引 `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- 表的索引 `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- 表的索引 `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- 表的索引 `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- 表的索引 `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- 表的索引 `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- 表的索引 `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- 表的索引 `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- 表的索引 `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- 表的索引 `devs`
--
ALTER TABLE `devs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devs_user_index` (`user`);

--
-- 表的索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 表的索引 `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- 表的索引 `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- 表的索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- 使用表AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `devs`
--
ALTER TABLE `devs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
