-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 08:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_sir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saif Jahan', 'saif@gmail.com', '$2y$10$u7rIA7wkVPZAf09fK8qOnOxlwY.8WXi8CvJvrRHnbfMa3dzK/KTL.', NULL, '2024-11-21 01:08:12', '2024-11-21 01:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `specialist_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specialist_id`, `name`, `email`, `password`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jamil Hossain', 'jamil@gmail.com', '$2y$10$QZ7sGCR3fxK0HLl6jrAszeieQ/04tY4/qpmZJgX1y32yCx9Q61rgS', 'images/20241126063013.png', 'active', NULL, '2024-11-21 01:08:13', '2024-11-26 00:30:13'),
(4, 2, 'Noman', 'noman@gmail.com', '$2y$10$CBLKPxLus1H7Bxds9.dDduQeosMJhtqPvinc9E5V.NazLYFtXoGNq', 'images/20241126063027.jpg', 'active', NULL, '2024-11-25 22:37:56', '2024-11-26 00:30:27'),
(5, 1, 'Joys Boro vai', 'joys@gmail.com', '$2y$10$s9HQsZ6rHSZXu1cFNJfCQ.KsmvGLO86Gvm/vkM7B3unYB6pqLZra6', 'images/20241126060940.jpg', 'inactive', NULL, '2024-11-26 00:09:40', '2024-11-26 00:09:40'),
(6, 50, 'Mahmudul Haque', 'mahmudul@gmail.com', '$2y$10$nG8YVB6DgSzmSIctDqgrpu.ntk64c0VaHxO1yJgh87OpmyI8n2h3S', 'images/20241126062958.jpg', 'active', NULL, '2024-11-26 00:22:40', '2024-11-26 00:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(34, '2014_10_12_000000_create_users_table', 1),
(35, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(36, '2019_08_19_000000_create_failed_jobs_table', 1),
(37, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(38, '2024_11_18_063523_create_admins_table', 1),
(39, '2024_11_19_041822_create_doctors_table', 1),
(40, '2024_11_20_042404_create_specialists_table', 1),
(41, '2024_11_27_062124_create_appointments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialists`
--

CREATE TABLE `specialists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialists`
--

INSERT INTO `specialists` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Eye Specialist', '269 Kreiger Oval Suite 329\nPort Rosemarieshire, CO 67386-5497', '2024-11-21 01:08:13', '2024-11-21 01:08:13'),
(2, 'Cardiac', '7514 Cassin Trail\nZulaufhaven, VA 21752', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(3, 'Susie Johnson', '61160 Lemke Drive\nEstefaniatown, CT 64928', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(4, 'Zena Ryan', '6331 Marks Courts\nKunzechester, MN 11780-7565', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(5, 'Prof. Erin Nikolaus', '36222 Willie Meadow\nPort Hermanport, TN 01910-0445', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(6, 'Hortense Armstrong', '120 Mayert Rue\nWest Bernita, RI 45820', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(7, 'Omari Dickinson', '873 Charity Road Suite 652\nNew Winston, AL 88120', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(8, 'Estrella Carter', '82015 Dietrich Pike\nNorth Alessandro, NY 98891-7397', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(9, 'Jovanny Cassin PhD', '63946 Bradtke Ranch Suite 281\nPort Birdie, WI 17434', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(10, 'Dr. Fredrick Rice', '223 Murphy Unions\nTravisburgh, MI 35105', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(11, 'Travon Christiansen', '941 Sauer Point Suite 077\nWest Dayton, KY 62313-6226', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(12, 'Nayeli Ruecker', '6889 Donnie Prairie Suite 423\nNew Ada, KS 99834', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(13, 'Dr. Taya Grady', '543 Littel Walk Suite 372\nMorissettebury, CO 22371', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(14, 'Jason Hamill', '9748 Dillan Highway\nSylvestermouth, SD 55287', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(15, 'Alysa Moen', '1352 Hardy Extensions Suite 338\nNew John, GA 90017-9388', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(16, 'Dr. Leopoldo Nolan V', '773 Klocko Extensions\nKerlukeville, MN 46022', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(17, 'Jose Hammes', '6599 Katlynn Oval Apt. 771\nAuerport, IN 22856', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(18, 'Ephraim Harvey', '705 Beier Lodge\nJacobsonville, CT 93017', '2024-11-21 01:08:14', '2024-11-21 01:08:14'),
(19, 'Hanna Veum DVM', '26047 Kub Manors\nWolffland, OK 65977-5242', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(20, 'Mrs. Ruthe Auer V', '28932 Carter Ferry Suite 098\nDickensshire, NV 44713-3150', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(21, 'Trey Cronin', '953 Darrel Stream\nBraunport, HI 98194', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(22, 'Americo Von', '307 Mike Mountain\nLake Zoeville, NE 13002-4835', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(23, 'Kristy Gleason Jr.', '676 Jessyca Divide\nLake Marty, OH 30284-0287', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(24, 'Ola Bayer', '959 Enid Path Suite 743\nSouth Myaborough, ID 41786-7093', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(25, 'Selina Stehr', '288 Stehr Island\nHauckville, MS 70165', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(26, 'Keira Schuster', '7548 Ole Port\nBernierhaven, LA 38751', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(27, 'Florida Gerlach', '321 Nader Course\nPort Russel, NE 08687-5779', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(28, 'Patrick Collins', '324 Maybell Inlet Suite 269\nNew Rafaelview, OK 25683', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(29, 'Alexzander Dibbert', '57763 Abbott Lock\nLake Dawnmouth, CO 25818-2121', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(30, 'Daphnee Swift', '61500 Morissette Wells\nTowneborough, RI 89790-1405', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(31, 'Leopold Haley', '50822 Murazik Branch Apt. 392\nSwiftshire, OR 75846', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(32, 'Francisca Carter', '1595 Petra Drive\nNew Maximilliaside, TX 01770-3294', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(33, 'Ms. Minerva Renner DVM', '70958 Fadel Spring\nWest Melodyton, IL 06432-5512', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(34, 'Kellie Wiza', '82760 Amalia Trail Suite 018\nAltenwerthton, MA 96582', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(35, 'Erna Bosco', '37681 Erdman Way Suite 149\nNew Jamison, AL 20804', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(36, 'Mr. Jamil Mosciski', '18528 Shanahan Glen Suite 825\nWest Clementina, IN 23996', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(37, 'Phyllis Mueller', '427 O\'Hara Locks\nTurnerport, IA 11602-5193', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(38, 'Jakayla Lindgren', '3542 Feeney Lakes\nSawaynmouth, MI 65424', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(39, 'Marina Volkman Sr.', '93491 Dickens Square\nNorth Aliyahbury, TX 11689-1229', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(40, 'May Becker', '1849 Bradley Manor Suite 129\nChristaborough, CO 61559', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(41, 'Ella Wunsch', '191 Darron Club Apt. 331\nLindgrenland, NM 16461', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(42, 'Wade O\'Hara II', '252 Astrid Mission\nLake Edenhaven, MI 27632', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(43, 'Prof. Kaycee Padberg PhD', '78740 Lemke Squares Apt. 060\nLake Elizabeth, MI 51758', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(44, 'Kacie Witting Sr.', '4276 Runolfsdottir Points\nKeeblerview, FL 55301', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(45, 'Quinn Abernathy DDS', '744 Gusikowski Trace\nPort Abagail, DE 11105', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(46, 'Baby Hills', '3576 Olson Point\nImeldaton, TN 39698-3120', '2024-11-21 01:08:15', '2024-11-21 01:08:15'),
(47, 'Amanda Botsford', '325 Lavada Port\nHellerville, DE 83828', '2024-11-21 01:08:16', '2024-11-21 01:08:16'),
(48, 'Tony Marvin', '10054 Grant Harbor\nNew Alveraberg, AL 09231', '2024-11-21 01:08:16', '2024-11-21 01:08:16'),
(49, 'Alexys Jakubowski', '8227 Derick Spurs Apt. 692\nLeschborough, MS 82584-8059', '2024-11-21 01:08:16', '2024-11-21 01:08:16'),
(50, 'Obie Kiehn', '637 Milo Fords Suite 016\nRockyburgh, SD 64764', '2024-11-21 01:08:16', '2024-11-21 01:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `specialists`
--
ALTER TABLE `specialists`
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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialists`
--
ALTER TABLE `specialists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
