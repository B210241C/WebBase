-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2022-01-26 08:42:17
-- 服务器版本： 10.4.17-MariaDB
-- PHP 版本： 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `cart2021c`
--

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'phone', '2021-11-19 00:23:47', '2021-11-19 00:23:47'),
(4, 'vivo', '2021-11-22 00:02:13', '2021-11-22 00:02:13'),
(5, 'iphone', '2021-11-25 23:21:20', '2021-11-25 23:21:20'),
(6, 'Samsung', '2021-11-25 23:46:09', '2021-11-25 23:46:09');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2021_11_19_073141_create_categories_table', 2),
(9, '2021_11_26_073655_create_product_table', 3),
(16, '2021_12_17_083436_create_my_carts_table', 4),
(17, '2021_12_27_010707_my_order', 5);

-- --------------------------------------------------------

--
-- 表的结构 `my_carts`
--

CREATE TABLE `my_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productID` double NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `my_carts`
--

INSERT INTO `my_carts` (`id`, `userID`, `orderID`, `productID`, `quantity`, `created_at`, `updated_at`) VALUES
(1, '2', '', 10, 1, '2021-12-17 00:40:30', '2021-12-17 00:40:30'),
(2, '2', '', 10, 1, '2021-12-17 00:48:48', '2021-12-17 00:48:48'),
(3, '2', '', 10, 2, '2021-12-17 00:50:48', '2021-12-17 00:50:48'),
(4, '1', '5', 9, 2, '2021-12-23 23:27:38', '2021-12-26 17:43:36'),
(5, '1', '6', 9, 1, '2021-12-23 23:27:46', '2021-12-26 17:44:10'),
(6, '1', '', 10, 1, '2021-12-23 23:28:03', '2021-12-23 23:28:03'),
(7, '1', '', 10, 1, '2021-12-23 23:28:59', '2021-12-23 23:28:59'),
(8, '1', '', 10, 1, '2021-12-23 23:29:39', '2021-12-23 23:29:39'),
(9, '1', '10', 10, 1, '2021-12-23 23:30:57', '2021-12-30 23:51:20'),
(10, '1', '', 4, 1, '2022-01-02 17:21:26', '2022-01-02 17:21:26'),
(11, '1', '', 6, 1, '2022-01-02 17:21:37', '2022-01-02 17:21:37'),
(12, '1', '', 10, 1, '2022-01-02 17:21:47', '2022-01-02 17:21:47');

-- --------------------------------------------------------

--
-- 表的结构 `my_orders`
--

CREATE TABLE `my_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `my_orders`
--

INSERT INTO `my_orders` (`id`, `paymentStatus`, `userID`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'Done', '1', 1200.00, '2021-12-26 17:36:42', '2021-12-26 17:36:42'),
(2, 'Done', '1', 600.00, '2021-12-26 17:37:00', '2021-12-26 17:37:00'),
(3, 'Done', '1', 234.00, '2021-12-26 17:40:34', '2021-12-26 17:40:34'),
(4, 'Done', '1', 234.00, '2021-12-26 17:41:20', '2021-12-26 17:41:20'),
(5, 'Done', '1', 1200.00, '2021-12-26 17:43:36', '2021-12-26 17:43:36'),
(6, 'Done', '1', 600.00, '2021-12-26 17:44:10', '2021-12-26 17:44:10'),
(7, 'Done', '1', 234.00, '2021-12-30 23:46:53', '2021-12-30 23:46:53'),
(8, 'Done', '1', 234.00, '2021-12-30 23:47:46', '2021-12-30 23:47:46'),
(9, 'Done', '1', 234.00, '2021-12-30 23:50:03', '2021-12-30 23:50:03'),
(10, 'Done', '1', 234.00, '2021-12-30 23:51:20', '2021-12-30 23:51:20');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `CategoryID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `quantity`, `CategoryID`, `created_at`, `updated_at`) VALUES
(3, 'x50', 'stupid', 600.00, 'Screenshot (200).png', 2, '6', '2021-11-26 00:50:08', '2021-11-26 00:50:08'),
(4, 'x50', 'stupid', 600.00, 'Screenshot (200).png', 2, '6', '2021-11-26 00:50:58', '2021-11-26 00:50:58'),
(5, 'x50', 'stupid', 600.00, 'Screenshot (200).png', 2, '6', '2021-11-26 00:51:45', '2021-11-26 00:51:45'),
(6, 'x50', 'stupid', 600.00, 'Screenshot (200).png', 2, '6', '2021-11-26 00:53:34', '2021-11-26 00:53:34'),
(7, 'x50', 'stupid', 600.00, 'Screenshot (200).png', 2, '6', '2021-11-26 00:54:13', '2021-11-26 00:54:13'),
(8, 'x50', 'stupid', 600.00, 'Screenshot (200).png', 2, '6', '2021-11-26 00:54:29', '2021-11-26 00:54:29'),
(9, 'x50', 'stupid', 600.00, 'Screenshot (200).png', 2, '6', '2021-11-26 00:55:48', '2021-11-26 00:55:48'),
(10, 'sdf', '234', 234.00, 'Screenshot (206).png', 234, '4', '2021-11-28 17:31:09', '2021-11-28 17:31:09'),
(11, 'polo', 'polo', 2111.00, 'Screenshot (206).png', 1213, '6', '2021-11-28 17:44:03', '2021-11-28 17:44:03');

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
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'qwertylim', 'lyj2000222@gmail.com', NULL, '$2y$10$Br5XDpX63CF7oG7Qmf0rx.ailJn6v8CUbEPoT8MU0WHCe.USIzXvq', 'sNTilW48m74UmB8jsRmK5FrnvtyhIbIcPvFNqZPYSbx4o83ENwPhSWBjrPqK', '2021-11-12 00:05:54', '2021-11-12 00:05:54'),
(2, '233', 'qwqq2SS@DDD.COM', NULL, '$2y$10$rDo09MvQ3jb28p2AXj6EIOwqqdaJ77xGKyy7vj3xnL0RcoV/UdkBW', NULL, '2021-12-17 00:10:06', '2021-12-17 00:10:06');

--
-- 转储表的索引
--

--
-- 表的索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `my_carts`
--
ALTER TABLE `my_carts`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `my_orders`
--
ALTER TABLE `my_orders`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 表的索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 表的索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- 使用表AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `my_carts`
--
ALTER TABLE `my_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `my_orders`
--
ALTER TABLE `my_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
