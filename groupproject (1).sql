-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 02:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groupproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', '2022-01-26 00:37:23', '2022-01-26 00:37:23'),
(2, 'Apple', '2022-01-26 00:38:16', '2022-01-26 00:38:16'),
(3, 'Vivo', '2022-01-26 00:39:13', '2022-01-26 00:39:13'),
(4, 'Oppo', '2022-01-26 00:42:10', '2022-01-26 00:42:10'),
(5, 'Huawei', '2022-01-26 01:42:14', '2022-01-26 01:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `my_carts`
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

-- --------------------------------------------------------

--
-- Table structure for table `my_orders`
--

CREATE TABLE `my_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paymentStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `CategoryID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `quantity`, `CategoryID`, `created_at`, `updated_at`) VALUES
(1, 'IPhone 13 Pro Max', 'Oh. So. Pro.', 5299.00, 'Apple_13ProMax.png', 100, '2', '2022-01-26 01:48:44', '2022-01-26 01:48:44'),
(2, 'Galaxy S21 FE 5G', 'Screen size ³ 6.4\" Dynamic AMOLED 2X (2340 x 1080) Dimension⁴ \'155.7 x 74.5 x 7.9mm Weight 177g Max. display refresh rate 120 Hz Camera 12MP Wide 12MP Ultra wide 8MP Telephoto Front Camera 32MP Battery⁶ 4,500mAh(typical) Memory 6GB/8GB Storage⁷ 128GB/256GB', 3099.00, 'Galaxy S21 FE 5G.jpg', 100, '1', '2022-01-26 01:56:36', '2022-01-26 01:56:36'),
(3, 'Airpods3rd', 'All-new with Spatial Audio', 829.00, 'MME73.jfif', 100, '2', '2022-01-26 02:33:37', '2022-01-26 02:33:37'),
(4, '33W Original Fast Charger', 'vivo 33W Original Fast Charger - 11V 3A', 99.00, '33w adapter99.png', 100, '3', '2022-01-26 04:01:12', '2022-01-26 04:01:12'),
(5, 'AirPods Max', 'AirPods Max combine high-fidelity audio with industry-leading Active Noise Cancellation to deliver an unparalleled listening experience. Each part of their custom-built driver works to produce sound with ultra-low distortion across the audible range. From deep, rich bass to accurate mids and crisp, clean highs, you’ll hear every note with a new sense of clarity.', 2399.00, 'airpods-max-2399.png', 100, '2', '2022-01-26 04:05:38', '2022-01-26 04:05:38'),
(6, 'Apple Watch Series 7', 'The larger display enhances the entire experience, making Apple Watch easier to use and read. Series 7 represents our biggest and brightest thinking yet.', 3249.00, 'apple watch7 3249.png', 100, '2', '2022-01-26 04:07:12', '2022-01-26 04:07:12'),
(7, 'Apple TV 4K', 'Apple TV 4K (2nd generation) brings thebest of TV together with access to your favorite Apple services. Its 4K High Frame Rate HDR, with Dolby Atmos sound capabilities, delivers a truly cinematic experience to your screen — whether you’re watching sports or a film.² You can enjoy content from Apple TV+, Amazon Prime Video, Netflix, and Disney+, as well as live channels from Hulu, YouTube TV, and Sling TV.⁵ The Apple TV Remote (2nd generaion), with its all-new touch-enabled clickpad, gives you precise control. Click titles, swipe through playlists, and use a circular gesture on the outer ring to find just the scene you’re looking for.', 949.00, 'apple-tv4k-949.png', 100, '2', '2022-01-26 04:12:46', '2022-01-26 04:12:46'),
(8, 'Galaxy Z Flip3 5G', 'Screen Size Main Screen : 6.7\" Dynamic AMOLED 2X (2640 x 1080) Cover Screen : 1.9\" Super AMOLED (260 x 512) Dimension³ Open : 72.2 x 166 x 6.9 mm Close : 72.2 x 86.4 x 17.1~15.9 mm Weight³ 183g Processor⁴ Qualcomm Snapdragon 888 Octa-core Max. display refresh rate 120 Hz (main) Camera⁵ 12MP Wide 12MP Ultra wide Front Camera 10MP Front Main Battery⁶ 3,300mAh (typical) Memory 8GB Storage 256GB / 128GB S Pen compatibility⁷ No', 3999.00, 'galaxy zflip 3 5g 3999.png', 100, '1', '2022-01-26 04:20:38', '2022-01-26 04:21:03'),
(9, 'Galaxy Z Fold3 5G', 'Screen Size Main Screen : 7.6\" Dynamic AMOLED 2X (2208 x 1768) Cover Screen : 6.2\" Dynamic AMOLED 2X (832 x 2268) Dimension³ Open : 158.2 x 128.1 x 6.4mm Close : 158.2 x 67.1 x 16.0~14.4mm Weight³ 271g Processor⁴ Qualcomm Snapdragon 888 Octa-core Max. display refresh rate 120 Hz (main, cover) Camera⁵ 12MP Wide 12MP Ultra wide 12MP Telephoto Front Camera 10MP Front Cover (HID) 4MP Front Main (UDC) Battery⁶ 4,400mAh (typical) Memory 12GB Storage 512GB / 256GB S Pen compatibility⁷ Yes', 6699.00, 'galaxy zfold 3 5g 6699.png', 100, '1', '2022-01-26 04:22:15', '2022-01-26 04:22:15'),
(10, 'Galaxy Buds2', 'Enjoy powerful, deep bass to clear treble through two-way dynamic speakers. The Galaxy Buds2 gives you well-balanced sound quality that enriches every moment of your audio journey. Hear like you’re there.', 499.00, 'galaxy-buds2-499.png', 100, '1', '2022-01-26 04:24:52', '2022-01-26 04:24:52'),
(11, 'Galaxy watch 4 bluetooth(44mm)', 'Track your fitness progress with our first smartwatch that conveniently measures body composition. Get to know your body fat percentage, skeletal muscle, body water and more to achieve your goals. The Samsung BioActive Sensor and our fastest chip brings the biggest innovation to Galaxy Watch yet.', 999.00, 'galaxy-watch4-999.png', 100, '1', '2022-01-26 04:26:59', '2022-01-26 04:26:59'),
(12, 'HUAWEI MateBook X Pro 2021 (Emerald Green)', 'A FullView experience, as borderless as your vision. The 13.9-inch body offers a remarkable 91% screen-to-body ratio,1 letting you see the big picture — now even wider and better, thanks to fewer bezels.', 6899.00, 'HUAWEI MateBook X Pro 2021 6899.png', 100, '5', '2022-01-26 04:33:10', '2022-01-26 04:33:10'),
(13, 'HUAWEI MatePad Pro 12.6-inch', 'Bring your vision to a borderless world.  Capture your inspiration with a masterstroke.  Amp up your productivity by upgraded experience.  HUAWEI MatePad Pro, expand your creativity.', 3799.00, 'HUAWEI MatePad Pro 12.6 3799.png', 100, '5', '2022-01-26 04:35:16', '2022-01-26 04:35:16'),
(14, 'HUAWEI WATCH GT Runner', 'Case Size  46mm  Wrist Size  140-210 mm  Weight  Approximately 38.5 g (without the strap)  Display  1.43 inch AMOLED 466 x 466 HD  Sensors  Accelerometer sensor  Gyroscope sensor  Geomagnetic sensor  Optical heart rate sensor  Air pressure sensor  Waterproof Level  5 ATM water-resistant  Connectivity  GNSS  NFC  Blue  Battery Life  14 days for typical use.', 1399.00, 'HUAWEI WATCH GT Runner 1399.png', 100, '5', '2022-01-26 04:37:13', '2022-01-26 04:37:13'),
(15, 'HUAWEI FreeBuds Lipstick', 'Key Features:  High Resolution Sound,    Air-Like Comfort,    Open-Fit Active Noise Cancellation 2.0', 999.00, 'HUAWEIFreeBudsLipstick999.png', 100, '5', '2022-01-26 04:38:39', '2022-01-26 04:38:39'),
(16, 'HUAWEI P50 Pro', 'The simplified, geometric design makes the Dual-Matrix Camera Design truly stand out. The two \"dazzling eyes\" shine through, wherever you go.', 4199.00, 'huaweip50pro4199.png', 100, '5', '2022-01-26 04:43:16', '2022-01-26 04:43:16'),
(17, 'MacBook Pro 16-inch', '10-Core CPU 32-Core GPU 32GB Unified Memory 1TB SSD Storage¹ 16-core Neural Engine 16-inch Liquid Retina XDR display Three Thunderbolt 4 ports, HDMI port, SDXC card slot, MagSafe 3 port Magic Keyboard with Touch ID Force Touch trackpad 140W USB-C Power Adapter', 14799.00, 'macbookpro14799.png', 100, '2', '2022-01-26 04:46:07', '2022-01-26 04:46:07'),
(18, 'Oppo A16', 'A big screen, massive 5000mAh battery1, and a designed-to-shine triple camera setup—streamlined into a one-piece, ultra-slim, 3D curved-edge body, which is only 190g light and 8.4mm thin2.', 539.00, 'oppo a16 539.png', 100, '4', '2022-01-26 04:47:51', '2022-01-26 04:47:51'),
(19, 'Oppo Enco X', 'Advanced technology and decades of Northern European legacy come together in the Enco X earphones, co-created by OPPO and leading Danish HiFi brand Dynaudio, founded in 1977. To bring you digitally precise audio, we evaluated 30 different materials and 152 components, and went through 120 rounds of structural fine-tuning in collaboration with the largest acoustic laboratory of Dynaudio.', 599.00, 'oppo enco x 599.png', 100, '4', '2022-01-26 04:48:43', '2022-01-26 04:48:43'),
(20, 'Oppo Find X3 Pro', 'Capture the colours of the world in their truest form with the revolutionary Find X3 Pro. Rich tones and deep hues combine to illuminate the road to the future.', 4299.00, 'oppo find x3 pro 5g 4299.png', 100, '4', '2022-01-26 04:50:05', '2022-01-26 04:50:05'),
(21, 'Oppo Reno6 Pro', 'Features: Bokeh Flare Portrait Video, AI Highlight Video, OPPO Reno Glow, 65W SuperVOOC 2.0', 2999.00, 'oppo reno6 pro 12gb+256.png', 100, '4', '2022-01-26 04:53:32', '2022-01-26 04:53:32'),
(22, 'OPPO VOOC Car Charger', 'The battery can be running out anytime, but when you with a car, with the VOOC car charger, it can be filled up in a short time. Here\'s how.  Learn about the VOOC Car Charger in F9. You can now charge your phone anytime, everywhere. Applicable to OPPO F9.  F9 supports VOOC Car Charger allowing you to charge your phone on the go.', 129.00, 'oppo vooc car charger v103.png', 100, '4', '2022-01-26 04:57:06', '2022-01-26 04:57:06'),
(23, 'Vivo Wireless Sport Lite', '18 hours power with fast charging', 299.00, 'sportearphone299.png', 100, '3', '2022-01-26 04:59:32', '2022-01-26 04:59:32'),
(24, 'Vivo TWS 2 ANC', 'studio sound. distraction free', 369.00, 'tws 2 anc 369.png', 100, '3', '2022-01-26 05:00:27', '2022-01-26 05:00:27'),
(25, 'Vivo X70 Pro', 'Photography. Redefined', 3299.00, 'x70 pro 3299.png', 100, '3', '2022-01-26 05:02:23', '2022-01-26 05:02:23'),
(26, 'Vivo Y15A', '4gb ram + 1gb extended ram. 5000mAh Battery. Side Finger Print. 6.15 Immersive Screen.', 649.00, 'y15a 649.png', 100, '3', '2022-01-26 05:18:48', '2022-01-26 05:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'qwertylim', 'lyj2000222@gmail.com', NULL, '$2y$10$Br5XDpX63CF7oG7Qmf0rx.ailJn6v8CUbEPoT8MU0WHCe.USIzXvq', 'sNTilW48m74UmB8jsRmK5FrnvtyhIbIcPvFNqZPYSbx4o83ENwPhSWBjrPqK', '2021-11-12 00:05:54', '2021-11-12 00:05:54'),
(3, 'Alex Tan', 'alextan703115@gmail.com', NULL, '$2y$10$I/Ogz5r5uFrN7RQ3b/EtKe7C21X18Gr8GWw50.D7c2KBThq5v207C', NULL, '2022-01-25 23:53:10', '2022-01-25 23:53:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `my_carts`
--
ALTER TABLE `my_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_orders`
--
ALTER TABLE `my_orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `my_carts`
--
ALTER TABLE `my_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `my_orders`
--
ALTER TABLE `my_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
