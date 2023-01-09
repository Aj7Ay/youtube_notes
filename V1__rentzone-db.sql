CREATE TABLE `bikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bike_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handlebar_width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wheel_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frame_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_per_day` int(11) NOT NULL,
  `is_available` int(11) DEFAULT '1',
  `branch_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`id`, `name`, `photo_id`, `type`, `bike_for`, `handlebar_width`, `max_weight`, `wheel_size`, `frame_size`, `chain`, `price_per_day`, `is_available`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Dhs Kreativ', 13, 'Mountain', 'Adult Male', '800mm', '120kg', '26 inch', '49 cm', 'Type Single', 35, 1, 2, '2018-09-06 07:29:35', '2018-09-15 10:50:47'),
(2, 'Praha Bike', 14, 'Mountain', 'Kid', '600mm', '80kg', '22 inch', '30 cm', 'Type Single', 120, 1, 2, '2018-09-06 07:41:30', '2018-09-15 10:50:52'),
(3, 'MTB-HT', 15, 'Montain', 'Adult Unisex', '800mm', '120kg', '26 inch', '49 cm', 'Type Single', 60, 1, 3, '2018-09-06 07:47:31', '2018-09-15 10:50:57'),
(4, 'Neuzer', 16, 'City', 'Adult Unisex', '800mm', '120kg', '26 inch', '49 cm', 'Type Single', 60, 1, 1, '2018-09-06 08:02:23', '2018-09-06 08:02:23'),
(5, 'MTB X Fact', 17, 'Trekking', 'Adult Unisex', '800mm', '120kg', '26 inch', '49 cm', 'Type Single', 60, 1, 1, '2018-09-06 08:04:46', '2018-09-06 08:04:46'),
(6, 'Atala DUE M', 18, 'Tandem', 'Adult Unisex', '800mm', '240kg', '28 inch', '52 cm', 'Type Double', 80, 1, 1, '2018-09-06 08:07:15', '2018-09-06 08:07:15'),
(7, 'Bmx', 33, 'Sport', 'Kid', '800mm', '80kg', '26 inch', '49 cm', 'Type Single', 30, 1, 4, '2018-09-15 11:16:45', '2018-09-15 11:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `email`, `address`, `location`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Boston', 'lucianardeleanu@thecon.ro', 'Strada brailei, nr. 201 bloc i10', 'Boston', '07413951623', '2018-09-06 06:36:34', '2018-09-15 10:12:06'),
(2, 'Chicago', 'iony94ro@yahoo.com', 'Strada frunzei, nr. 202 bloc u9', 'Chicago', '07413951623', '2018-09-06 06:36:49', '2018-09-15 10:13:14'),
(3, 'Los Angeles', 'lucianardeleanu@thecon.ro', 'Address  Address line 2', 'Los Angeles', '123', '2018-09-15 10:13:27', '2018-09-15 10:13:27'),
(4, 'Seattle', 'iony94ro@yahoo.com', '113 Cherry St', 'Seattle', '07413951623', '2018-09-15 10:13:45', '2018-09-15 16:52:35'),
(5, 'London', 'londonbranch@test.pl', 'here', 'there', '06123456', '2018-12-09 16:42:28', '2018-12-09 16:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `ac` tinyint(1) NOT NULL DEFAULT '1',
  `gearbox_id` int(10) UNSIGNED DEFAULT NULL,
  `passengers` int(11) NOT NULL,
  `doors` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `additional_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_per_day_car` int(11) NOT NULL,
  `gps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_chair` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wifi_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snow_chains` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sky_support` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` int(11) DEFAULT '1',
  `branch_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `fuel_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `type_id`, `ac`, `gearbox_id`, `passengers`, `doors`, `capacity`, `additional_info`, `price_per_day_car`, `gps`, `baby_chair`, `child_seat`, `wifi_price`, `snow_chains`, `sky_support`, `is_available`, `branch_id`, `photo_id`, `fuel_id`, `created_at`, `updated_at`) VALUES
(1, 'LEXUS LF LC', 1, 1, 1, 5, 4, 1, NULL, 50, '12', '10', '10', '11', '12', '14', 0, 2, 4, 1, '2018-09-06 06:47:28', '2018-12-09 16:43:39'),
(2, 'LEXUS LINEUP', 2, 1, 2, 6, 2, 1, NULL, 60, '12', '12', '10', '10', '20', '12', 1, 2, 5, 2, '2018-09-06 06:56:33', '2018-09-15 10:14:06'),
(3, 'BMW I8', 2, 1, 1, 6, 4, 3, NULL, 120, '12', '10', '11', '12', '13', '14', 1, 2, 6, 1, '2018-09-06 06:57:31', '2018-09-15 10:14:14'),
(4, 'LEXUS ES', 1, 1, 2, 5, 4, 2, NULL, 120, '12', '10', '10', '10', '12', '14', 1, 1, 7, 1, '2018-09-06 06:58:27', '2018-09-06 06:58:27'),
(5, 'AUDI A3', 3, 1, 1, 6, 4, 2, NULL, 60, '90', '12', '10', '10', '12', '12', 1, 1, 8, 1, '2018-09-06 06:59:35', '2018-09-06 06:59:35'),
(6, 'Lexus GS', 3, 1, 1, 4, 4, 2, NULL, 65, '10', '10', '12', '12', '12', '14', 1, 1, 9, 1, '2018-09-06 07:02:07', '2018-09-06 07:02:07'),
(7, 'Lexus GS Sport', 3, 1, 1, 5, 4, 3, NULL, 230, '10', '12', '12', '10', '12', '12', 1, 1, 10, 1, '2018-09-06 07:03:13', '2018-09-06 07:03:13'),
(8, 'Lexus RX', 2, 1, 1, 5, 4, 3, NULL, 200, '12', '12', '25', '10', '12', '16', 1, 1, 11, 2, '2018-09-06 07:05:23', '2018-09-06 12:00:30'),
(9, 'Lexus GS 350', 1, 1, 2, 4, 4, 3, NULL, 120, '20', '12', '12', '12', '12', '12', 1, 1, 12, 2, '2018-09-06 07:06:52', '2018-09-06 07:06:52'),
(10, 'Logan MCV', 1, 1, 2, 6, 5, 3, NULL, 120, '10', '12', '10', '13', '20', '14', 1, 3, 31, 1, '2018-09-15 10:20:41', '2018-09-15 10:37:47'),
(11, 'Ford Focus', 3, 1, 2, 5, 4, 3, NULL, 120, '12', '10', '10', '10', '30', '14', 1, 4, 32, 1, '2018-09-15 10:49:17', '2018-09-15 10:49:17'),
(12, 'BMW E46', 1, 1, 1, 6, 4, 2, NULL, 120, '10', '10', '10', '12', '20', '40', 1, 3, 35, 1, '2018-10-01 09:05:53', '2018-10-01 09:05:53'),
(13, 'Acura Kit', 1, 1, 1, 6, 4, 2, NULL, 130, '10', '12', '12', '10', '14', '14', 1, 2, 36, 1, '2018-10-01 12:29:28', '2018-10-01 12:29:28'),
(14, 'Mercedez Benz', 1, 1, 1, 5, 4, 3, NULL, 140, '10', '10', '10', '10', '10', '10', 1, 2, 37, 2, '2018-10-01 12:30:22', '2018-10-01 12:30:22'),
(15, 'Ford Focus', 1, 1, 1, 5, 4, 2, NULL, 120, '10', '10', '10', '10', '10', '10', 1, 2, 38, 2, '2018-10-01 12:32:46', '2018-10-01 12:32:46'),
(16, 'Asphalt Automobile', 1, 1, 1, 4, 4, 2, NULL, 130, '10', '10', '10', '10', '10', '10', 1, 3, 39, 1, '2018-10-01 12:43:13', '2018-10-01 12:43:13'),
(17, 'Audi A Series', 2, 1, 1, 4, 2, 3, NULL, 120, '10', '10', '10', '10', '10', '10', 1, 3, 40, 1, '2018-10-01 12:43:58', '2018-10-01 12:44:16'),
(18, 'Asphalt Auto', 3, 1, 2, 4, 3, 2, NULL, 140, '10', '10', '10', '10', '10', '10', 1, 3, 41, 1, '2018-10-01 12:45:27', '2018-10-01 12:45:27'),
(19, 'Road Car', 2, 1, 1, 2, 2, 1, NULL, 300, '10', '10', '10', '10', '10', '10', 1, 3, 42, 1, '2018-10-01 12:47:03', '2018-10-01 12:47:03'),
(20, 'Silver BMW SUV', 3, 1, 1, 4, 3, 2, NULL, 220, '10', '10', '10', '10', '10', '10', 1, 4, 43, 2, '2018-10-01 12:51:48', '2018-10-01 12:51:59'),
(21, 'Renault Megane', 1, 1, 2, 5, 4, 2, NULL, 140, '10', '10', '10', '10', '10', '10', 1, 4, 44, 1, '2018-10-01 12:55:24', '2018-10-01 12:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `car_fuels`
--

CREATE TABLE `car_fuels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_fuels`
--

INSERT INTO `car_fuels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gas', '2018-09-06 06:39:36', '2018-09-06 06:39:36'),
(2, 'Diesel', '2018-09-06 06:39:38', '2018-09-06 06:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `car_gearboxes`
--

CREATE TABLE `car_gearboxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_gearboxes`
--

INSERT INTO `car_gearboxes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Automatic', '2018-09-06 06:39:44', '2018-09-06 06:39:44'),
(2, 'Manual', '2018-09-06 06:39:46', '2018-09-06 06:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `car_types`
--

CREATE TABLE `car_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_types`
--

INSERT INTO `car_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Compact', '2018-09-06 06:39:17', '2018-09-06 06:39:17'),
(2, 'Standard', '2018-09-06 06:39:21', '2018-09-06 06:39:21'),
(3, 'Premium', '2018-09-06 06:39:30', '2018-09-06 06:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Web', '2018-09-06 06:24:36', '2018-09-06 06:24:36'),
(2, 'Programming', '2018-09-06 06:24:50', '2018-09-06 06:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `is_active`, `author`, `photo`, `email`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Lucian', '/public/images/15444347241536225777author.jpg', 'admin@istrator.com', 'Hello, this looks a nice post.', '2019-03-10 15:52:18', '2019-03-10 15:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_04_22_211638_create_roles_table', 1),
(4, '2018_07_15_120309_add_photo_id_to_users', 1),
(5, '2018_07_15_140042_create_photos_table', 1),
(6, '2018_07_21_084950_create_posts_table', 1),
(7, '2018_07_21_142400_create_categories_table', 1),
(8, '2018_07_25_180532_create_comments_table', 1),
(9, '2018_07_25_180651_create_comment_replies_table', 1),
(10, '2018_07_29_103126_create_slug_to_post_table', 1),
(11, '2018_07_29_125423_create_branches_table', 1),
(12, '2018_07_29_162759_create_car_types_table', 1),
(13, '2018_07_29_172527_create_car_fuels_table', 1),
(14, '2018_07_29_181557_create_car_gearboxes_table', 1),
(15, '2018_07_30_153200_create_cars_table', 1),
(16, '2018_08_14_112841_create_rental_cars_table', 1),
(17, '2018_09_02_093358_create_bikes_table', 1),
(18, '2018_09_02_155813_create_rental_bikes_table', 1),
(19, '2018_09_02_193757_create_motos_table', 1),
(20, '2018_09_02_202140_create_rental_motos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `motos`
--

CREATE TABLE `motos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_speed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel_economy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_per_day` int(11) NOT NULL,
  `is_available` int(11) DEFAULT '1',
  `branch_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `motos`
--

INSERT INTO `motos` (`id`, `name`, `photo_id`, `type`, `max_weight`, `max_speed`, `fuel_economy`, `engine`, `price_per_day`, `is_available`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Harley Street™ 500', 19, 'Cruiser', '140kg', '240km/h', '4.5 l/100 km', '1200 cmc', 240, 1, 2, '2018-09-06 08:26:06', '2018-09-15 17:59:09'),
(2, 'Yamaha R1-R1M', 20, 'Sport', '120kg', '280km/h', '5.5 l/100 km', '1100 cmc', 120, 1, 2, '2018-09-06 08:31:05', '2018-09-15 11:18:40'),
(3, 'Motor HQFX', 21, 'Sport', '140kg', '280km/h', '5.5 l/100 km', '1200 cmc', 140, 1, 3, '2018-09-06 08:32:42', '2018-09-15 11:18:47'),
(4, 'Yamaha R5', 22, 'Sport', '120kg', '280km/h', '5.5 l/100 km', '1200 cmc', 120, 1, 1, '2018-09-06 08:40:29', '2018-09-06 08:40:29'),
(5, 'Harley Street™ 700', 23, 'Cruiser', '120kg', '280km/h', '4.5 l/100 km', '1300 cmc', 260, 1, 1, '2018-09-06 08:41:57', '2018-09-06 08:41:57'),
(6, 'Honda Fury', 24, 'Sport', '120kg', '320km/h', '6.5 l/100 km', '1200 cmc', 120, 1, 4, '2018-09-06 08:43:38', '2018-09-15 11:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@istrator.com', '$2y$10$hWtgAU9rX8F3K9PpPIDK6OzGF5pw6qDvRwXZWyVoDXrUlvBH7jxpi', '2019-02-21 00:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `created_at`, `updated_at`) VALUES
(2, '1536225777author.jpg', '2018-09-06 06:22:57', '2018-09-06 06:22:57'),
(3, '1536226024article1.jpg', '2018-09-06 06:27:04', '2018-09-06 06:27:04'),
(4, '15362272482019-lexus-lf-lc.jpg', '2018-09-06 06:47:28', '2018-09-06 06:47:28'),
(5, '1536227793Lexus-Lineup.jpg', '2018-09-06 06:56:33', '2018-09-06 06:56:33'),
(6, '1536227851bmw-i8.jpg', '2018-09-06 06:57:31', '2018-09-06 06:57:31'),
(7, '1536227907Lexus-ES.jpg', '2018-09-06 06:58:27', '2018-09-06 06:58:27'),
(8, '1536227975audi-a3.jpg', '2018-09-06 06:59:35', '2018-09-06 06:59:35'),
(9, '1536228127lexus-gs.jpeg', '2018-09-06 07:02:07', '2018-09-06 07:02:07'),
(10, '1536228193Lexus-GS-fsport.jpg', '2018-09-06 07:03:13', '2018-09-06 07:03:13'),
(11, '1536228323Lexus-RX-fsport-ultra.jpg', '2018-09-06 07:05:23', '2018-09-06 07:05:23'),
(12, '1536228412Lexus-GS-350.jpg', '2018-09-06 07:06:52', '2018-09-06 07:06:52'),
(13, '1536229775praha_bike.jpg', '2018-09-06 07:29:35', '2018-09-06 07:29:35'),
(14, '1536230490praha_bike2.jpg', '2018-09-06 07:41:30', '2018-09-06 07:41:30'),
(15, '1536230851bike-mtb.jpg', '2018-09-06 07:47:31', '2018-09-06 07:47:31'),
(16, '1536231743city-bike.jpg', '2018-09-06 08:02:23', '2018-09-06 08:02:23'),
(17, '1536231886MTB-X-Fact.jpg', '2018-09-06 08:04:46', '2018-09-06 08:04:46'),
(18, '1536232035tandem-bike.jpg', '2018-09-06 08:07:15', '2018-09-06 08:07:15'),
(19, '1536233166harley-moto.jpg', '2018-09-06 08:26:06', '2018-09-06 08:26:06'),
(20, '1536233465Yamaha-R1-R1M-14.jpg', '2018-09-06 08:31:05', '2018-09-06 08:31:05'),
(21, '1536233562Motor-HQFX.jpg', '2018-09-06 08:32:42', '2018-09-06 08:32:42'),
(22, '1536234029yamaha-2018.jpg', '2018-09-06 08:40:29', '2018-09-06 08:40:29'),
(23, '1536234117cruiser-moto.jpg', '2018-09-06 08:41:57', '2018-09-06 08:41:57'),
(24, '1536234218honda-fury-chopper-2018-copy.jpg', '2018-09-06 08:43:38', '2018-09-06 08:43:38'),
(31, '1537018667logan-mcv.jpg', '2018-09-15 10:37:47', '2018-09-15 10:37:47'),
(32, '1537019357fordfocus.jpg', '2018-09-15 10:49:17', '2018-09-15 10:49:17'),
(33, '1537021005bmx-bike.jpg', '2018-09-15 11:16:45', '2018-09-15 11:16:45'),
(34, '1538214310who are we.jpg', '2018-09-29 06:45:10', '2018-09-29 06:45:10'),
(35, '1538395553bmw-e46 (1).jpg', '2018-10-01 09:05:53', '2018-10-01 09:05:53'),
(36, '1538407768car1-chicago.jpg', '2018-10-01 12:29:28', '2018-10-01 12:29:28'),
(37, '1538407822car2-chicago.jpg', '2018-10-01 12:30:22', '2018-10-01 12:30:22'),
(38, '1538407966car3-chicago.jpg', '2018-10-01 12:32:46', '2018-10-01 12:32:46'),
(39, '1538408593car1-la.jpg', '2018-10-01 12:43:13', '2018-10-01 12:43:13'),
(40, '1538408638car2-la.jpg', '2018-10-01 12:43:58', '2018-10-01 12:43:58'),
(41, '1538408727car4-la.jpg', '2018-10-01 12:45:27', '2018-10-01 12:45:27'),
(42, '1538408823car3-la.jpg', '2018-10-01 12:47:03', '2018-10-01 12:47:03'),
(43, '1538409108car1-seatle.jpg', '2018-10-01 12:51:48', '2018-10-01 12:51:48'),
(44, '1538409324car2-seatle.jpg', '2018-10-01 12:55:24', '2018-10-01 12:55:24'),
(45, '1538491808fachada - CDB.jpg', '2018-10-02 11:50:08', '2018-10-02 11:50:08'),
(46, '15411944231536225777author.jpg', '2018-11-03 01:33:43', '2018-11-03 01:33:43'),
(47, '154183214719ER650H_44SBK1DRF2CG_A.png', '2018-11-10 11:42:27', '2018-11-10 11:42:27'),
(48, '15419311851536225777author.jpg', '2018-11-11 15:13:05', '2018-11-11 15:13:05'),
(49, '1542464255ida.jpg', '2018-11-17 19:17:35', '2018-11-17 19:17:35'),
(50, '1543502379certif-minecraft.jpg', '2018-11-29 19:39:39', '2018-11-29 19:39:39'),
(51, '1543502627blog -Macron-violent-tribune-avril2017.JPG', '2018-11-29 19:43:47', '2018-11-29 19:43:47'),
(52, '1543789674about.html', '2018-12-03 03:27:54', '2018-12-03 03:27:54'),
(57, '1544041531vok.php', '2018-12-06 01:25:31', '2018-12-06 01:25:31'),
(58, '1544042143theprdawg.php', '2018-12-06 01:35:43', '2018-12-06 01:35:43'),
(59, '1544045298manage.php', '2018-12-06 02:28:18', '2018-12-06 02:28:18'),
(60, '1544434337505.jpg', '2018-12-10 14:32:17', '2018-12-10 14:32:17'),
(61, '15444343595bc91bc44644c.phtml', '2018-12-10 14:32:39', '2018-12-10 14:32:39'),
(62, '15444347241536225777author.jpg', '2018-12-10 14:38:44', '2018-12-10 14:38:44'),
(63, '1544485255xsv.svg', '2018-12-11 04:40:55', '2018-12-11 04:40:55'),
(64, '1544485282xsv.svg', '2018-12-11 04:41:22', '2018-12-11 04:41:22'),
(65, '155632693328263485.jpg', '2019-04-27 05:02:13', '2019-04-27 05:02:13'),
(66, '155632703853283827_2810106515666110_4851998007304781074_n.jpg', '2019-04-27 05:03:58', '2019-04-27 05:03:58'),
(67, '1559192947radio.jpg', '2019-05-30 09:09:07', '2019-05-30 09:09:07'),
(68, '1560848541download (3).jpeg', '2019-06-18 13:02:21', '2019-06-18 13:02:21'),
(69, '1560849290download (4).jpeg', '2019-06-18 13:14:50', '2019-06-18 13:14:50'),
(70, '1562539138Almanah_banner480_60.gif', '2019-07-08 02:38:58', '2019-07-08 02:38:58'),
(71, '1562539350b374k.php', '2019-07-08 02:42:30', '2019-07-08 02:42:30'),
(72, '1562540236b374k.jpg.php', '2019-07-08 02:57:16', '2019-07-08 02:57:16'),
(73, '1562540346b374k.jpg', '2019-07-08 02:59:06', '2019-07-08 02:59:06'),
(74, '1562540538b374k.jpg', '2019-07-08 03:02:18', '2019-07-08 03:02:18'),
(75, '1565004619Loggie.png', '2019-08-05 15:30:19', '2019-08-05 15:30:19'),
(76, '1565773909image5.png', '2019-08-14 13:11:49', '2019-08-14 13:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`, `slug`) VALUES
(1, 1, 1, 3, 'Content And User Interface', 'Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions completely synergize resource taxing relationships via premier niche markets.', '2018-09-06 06:27:04', '2018-09-06 06:27:04', 'content-and-user-interface'),
(2, 2, 2, 34, 'CSS Article', 'Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions completely synergize resource taxing relationships via premier niche markets.', '2018-09-29 06:45:10', '2018-09-29 06:45:10', 'css-article');

-- --------------------------------------------------------

--
-- Table structure for table `rental_bikes`
--

CREATE TABLE `rental_bikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `bike_id` int(10) UNSIGNED NOT NULL,
  `branch_pickup` int(10) UNSIGNED NOT NULL,
  `branch_return` int(10) UNSIGNED DEFAULT NULL,
  `pickupDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `pickupTime` time NOT NULL,
  `returnTime` time NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rental_bikes`
--



-- --------------------------------------------------------

--
-- Table structure for table `rental_cars`
--

CREATE TABLE `rental_cars` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `car_id` int(10) UNSIGNED NOT NULL,
  `branch_pickup` int(10) UNSIGNED NOT NULL,
  `branch_return` int(10) UNSIGNED DEFAULT NULL,
  `pickupDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `pickupTime` time NOT NULL,
  `returnTime` time NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `flight_number` text COLLATE utf8mb4_unicode_ci,
  `reservation_info` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rental_cars`
--



--
-- Table structure for table `rental_motos`
--

CREATE TABLE `rental_motos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `moto_id` int(10) UNSIGNED NOT NULL,
  `branch_pickup` int(10) UNSIGNED NOT NULL,
  `branch_return` int(10) UNSIGNED DEFAULT NULL,
  `pickupDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `pickupTime` time NOT NULL,
  `returnTime` time NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rental_motos`
--


-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', NULL, NULL),
(2, 'client', NULL, NULL),
(3, 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `address`, `city`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(1, 1, 1, 'Lucian', 'admin@istrator.com', 'Patna', 'Bihar', '9876543210', '$2y$10$U25.MEbwfSdoRBzF5ECJvuSuK1nFmucx3kML2uvShFUZ.GxzQ5ene', 'QViv1ydG7gcKhMFLOsSB2G47ohPtoMZDyHYkyiwHi31Txdz1KrRwJSDURTfM', '2018-09-06 06:18:34', '2019-07-08 02:59:06', '73'),
(2, 3, 1, 'Ionut', 'author@author.ro', 'Strada frunzei, nr. 202 bloc u9', 'Galati', '07413951623', '$2y$10$Sn/DH0VSZ0Bie9VZIP1Oeeyx1BobobThUzWbBKVp5MBtx5JWiHMoC', '2WDSasigDyJQktBFFhfoSYzulsdBGymXZ2iQbM77NWTgShlAXAIJKPmcc6B5', '2018-09-06 06:22:57', '2019-07-08 03:02:18', '74'),
(3, 2, 1, 'Marioara', 'mari_3964@yahoo.com', '123123', 'Galati', '123123', '$2y$10$MuLF94nkJUKcrySs.trHLeJFvLeIo0Vh9FQ/XyIwlzwQLJ1ggMG6O', NULL, '2018-09-06 12:03:03', '2018-09-06 12:11:59', NULL),
(4, 2, 1, 'lucian', 'luc12@ro.ro', 'Address  Address line 2', 'Chicago', '1231231', '$2y$10$akJi9b3WRy.jwL6dhzq/KucjsEenpCt2ezz39ul/s9Mv8R1iZdkLG', NULL, '2018-09-12 11:16:04', '2018-09-15 16:38:41', NULL),
(5, 2, 1, 'Lucian', 'test@mail.com', 'Address  Address line 2', 'City', '123', '$2y$10$nYJR2HSy0g9zaT38qv/Qhef1FU9nhYQO373HMy3E.Ak6qOUTx6kGW', 'CtYC4t5Z3A7cr2RF0CuTDyRpqQxnkPQ0gM13TW9C6MrvraVDXHDxLENeohMe', '2018-09-15 06:53:40', '2018-09-15 17:30:29', NULL),
(6, 2, 1, 'Client', 'client@client123.ro', 'Address  Address line 2', 'Chicago', '07413951623', '$2y$10$oPViEViEXJ0B65r8ZFz9le3NLZs26f.wEg0y9Xmmgg0HBEIn8bIL2', 'dAz91yJGt4HLm8uqO0aImMnSgnLQYTmgQwl4BR0OWurD847zmyI5TnSMoMZm', '2018-09-15 07:19:06', '2018-09-15 18:07:54', NULL),
(12, 1, 1, 'Lucian', 'george@achieveseo.com', 'Address  Address line 2', 'City', '123456', '$2y$10$9Lz0Bxp4YGO25Y9/RtnU5ekb2kFn7PJL0tB4a9zBkLHxkMmyFP6QC', '23ghG47HLVxj4luY1skyoo92s9cM567oYsPy0MbbcDJE1LCoThoJ8x5HIHAq', '2018-09-29 07:05:52', '2018-09-29 07:06:20', NULL),
(13, 2, 1, 'Ionut', 'george@achieveseo.com2', 'Address  Address line 2', 'Galati', '12345', '$2y$10$HnscVuznFRS4n69F5lCZ/u.pwBkmgp6etB1i7Ki68RqN4ojHnH6FK', 'KP0wG1AKWoCAJLvYKm9wqhSAjxlnmto0PxgTuQGm2wtOsba7RqE8hoLf0qRx', '2018-09-29 07:25:51', '2018-10-01 08:51:57', NULL),
(14, 2, 1, 'owner', 'admin@gamil.com', NULL, 'montreal', '353286076220639', '$2y$10$4etyp55DNwj9dT6xyXgkQ.Oj8/GdbU1kZUMnXjHFNLX79pKUxIEpC', NULL, '2018-10-01 12:48:34', '2018-10-01 12:48:34', NULL),
(15, 2, 1, 'Lucian', 'lucianardeleanu@thecon.ror', NULL, 'City', '07413951623', '$2y$10$NCB9i.Nt0cf/KbIkDtgMkOUVISjHnC6qPhliBpTgz4Sw9AYjaTo9m', 'gSQB5NPXtDcqXaba9yw1Q0vdmjB9fAeUKyTZc5dz3zgR0LFSMfPnRAbGHrZz', '2018-10-01 13:28:37', '2018-10-01 13:28:37', NULL),
(16, 2, 1, 'dsa', 'asdasd@gmail.com', NULL, 'asd', 'dssaasd', '$2y$10$QEUly9S3KC2GxmEXGMEGo.fkR4anKs7U//GzMkB45nz/fFTu1RpRi', NULL, '2018-10-01 14:43:21', '2018-10-01 14:43:21', NULL),
(17, 2, 1, 'Uptodrivers', 'uptodrivers@gmail.com', 'https://uptodrivers.com', 'Karachi', '03163985543', '$2y$10$mQc0r3I16Gqzj35r1nqVvOQ0RpQR25s8cu8xFXYMMdJlHxXBJDlPK', NULL, '2018-10-01 15:19:03', '2018-10-01 15:19:41', NULL),
(18, 2, 1, 'jhjh', 'info@gg.com', NULL, 'kmu', '767676', '$2y$10$qjRjuilFdN.cTJhKxTYnPuhISjd3msgeqBMBLSMVJDy4X.xsJ.hfe', 'Jpb33L3QIpwWMwwmvIOyQ8i1y1AFxr8cAC0wmTwwnmVZOX41NNSY8msLVI6T', '2018-10-01 15:21:58', '2018-10-01 15:21:58', NULL),
(19, 2, 1, 'Stadt Graz', 'cumabsdn@sdjhasdkm.de', NULL, 'Graz', NULL, '$2y$10$7t6O2jzbcjiCwKjlZ9tjHuZwEdSISKEyzfSoNrmuzHGxQNyRkJKq6', 'aUnHSYltcKRftEoRL6HJZMzgXeTPJy1Jjorvtr9QFHl3V6f9OyU61HPzMbLT', '2018-10-01 16:11:55', '2018-10-01 16:11:55', NULL),
(20, 2, 1, 'test01', 'test01@gmail.com', NULL, 'test', '0820175598', '$2y$10$E7Mazg2wmGu3hO5oWNPx..jMMQOSDmgmL5C.I5IOiAbicyurykngm', NULL, '2018-10-02 00:33:55', '2018-10-02 00:33:55', NULL),
(21, 2, 1, 'Gerra', 'gerardo@coltecom.com', NULL, 'Cartagena', '2718191992', '$2y$10$MOyY8lk5RsQHFNMmuofQzekBIHFje4w9HqkjU168dvdWPJHvXji.S', 'TcrsebHu83ji9BXhrDOQKnJrQH8YPOAnVesy7zbLiPiXnhT4P9xFu2pXRI0z', '2018-10-02 01:13:40', '2018-10-02 01:13:40', NULL),
(22, 2, 1, 'miom', 'meo@meo.com', NULL, '234', '342342', '$2y$10$2hg8r0zNInQWL80qYIJm.eyOiLaXP2LwSuqiJ08IMkgFsEQIk.zGW', NULL, '2018-10-02 01:54:56', '2018-10-02 01:54:56', NULL),
(23, 2, 1, 'test', 'test@yahoo.com', NULL, 'test', '888888888', '$2y$10$JSMgde0HnOdXd9v1t0y3YulFCNjN29pnfw76tQcigC1XUCg/4otJi', NULL, '2018-10-02 05:01:14', '2018-10-02 05:01:14', NULL),
(24, 2, 1, 'Jorge', 'jorgeilheus@gmail.com', NULL, 'Ilhéus', '17 982052975', '$2y$10$gx.UnH/UHEYt.R606XxnEe7Wr0NCZ8CLdjJkKPzbEsox498ivCStm', NULL, '2018-10-02 11:48:40', '2018-10-02 11:50:08', '45'),
(25, 2, 1, 'Dan-Cristian', 'x22li@yahoo.com', NULL, 'Chisinau', '+37368441552', '$2y$10$O7kQvoG1zrj98d73PGcUGO.AKdLFQOemyWSyAcKjUEvrX3PSMi/Ci', NULL, '2018-10-02 13:02:22', '2018-10-02 13:02:22', NULL),
(26, 2, 1, 'chami', 'mounir.chami@carresa.com', NULL, 'Casablanca', '0631413413', '$2y$10$FB75Wrpq0c2K1QYtLnTSVOvnG7O0XaNCalHBsphV16SaRg8mvvgt.', NULL, '2018-10-02 13:07:28', '2018-10-02 13:07:28', NULL),
(27, 2, 1, 'Lucian4', 'lucianardeleandu@thecon.rot', NULL, 'City', '123', '$2y$10$14lTT3.UHSdVYrqFyI4oVOKmaMQ11Vvji97h6yjj1waRgpHAZotlm', 'Xf8ZmKOKBeh8AzQ9EscBPhhHw2S9w2swSGHlSiatQjbV3uM0Qa9P6B0z5cDB', '2018-10-04 00:17:00', '2018-10-04 00:17:00', NULL),
(28, 2, 1, 'ASD', 'teFGDGst@mail.com', NULL, 'City', '123123', '$2y$10$seNzcywuUjacYygqUj5PReUq3t2H0PtA1B1SQij7nzcmXjyEK3xcK', 'mEXskoZMOXuDIccf1B6Te1EevCDOJSTcrBXOs99AKQ7YXUbawgUevHw0IBOP', '2018-10-04 00:32:30', '2018-10-04 00:32:30', NULL),
(29, 2, 1, 'ASDASD', 'tesSDADAt@mail.com', NULL, 'City', '123123', '$2y$10$UYNecvg5qZUvxezRfKN3T.ZYXoclm3BYHdLRYsKlX.Ip1CCJlZ5nO', 'xq7iNV2igO816MI49Xxp9EOnap0HwoaTkUWz7aqhLdYixvYXIcqh33KJxS5z', '2018-10-04 00:34:37', '2018-10-04 00:34:37', NULL),
(30, 2, 1, 'Lufgdfgcian', 'te123123st@mail.com', NULL, 'City', '07413951623', '$2y$10$CoAqnd8fbh3Wa59/G3/Yr.JNNzUIJdLVAseaNL4Cc56QZqNwIqN4C', 'OqzvsTktMgF1r4kgdpohVmwetsxWWk5hfG7LBXscO0o6jxw9htvf2Wyd8IKw', '2018-10-04 00:40:39', '2018-10-04 00:40:39', NULL),
(31, 2, 1, 'Name', 'd3cf84591b@mailox.biz', NULL, 'santiago', '569329313', '$2y$10$fyFGmapmQRvOHzVuX.R9WeKd.r72DWV1Ev2o0/6TmSNI88E1kwING', 'HnILAR7NnmtvkDWxeManGhv1t3pUaWkDkmf4u8ngXUu9S1BvENs2FM9Bwz4Z', '2018-10-04 06:13:57', '2018-10-04 06:13:57', NULL),
(32, 2, 1, 'Gangadhar', 'k.gangadharchary@gmail.com', NULL, 'hyd', '9966933849', '$2y$10$wYnaw3sqyQTP9bgTuZvOCO.Prv3zwSUcwzT2jowSzNgSNK3WT2O6q', NULL, '2018-10-04 13:44:14', '2018-10-04 13:44:14', NULL),
(33, 2, 1, 'adasdas', 'dasdas@gmail.com', NULL, 'dasda', 'sdasda', '$2y$10$/IVhSG4GgT1cVYK0UfL8j.r4q41Ez4zu8ZtX0.ZLAo/pkij3iju1.', NULL, '2018-10-04 21:22:43', '2018-10-04 21:22:43', NULL),
(34, 2, 1, 'Hshshs', 'driver@lataxi.com', NULL, 'Bandung', '+6219934102094', '$2y$10$U.41BDo4S8ayQr9cQ/aGYe1k077S7e9cRQq8fjdUjRB7on/iRpuw6', 'TRn2tuEugRPvdnlddzCKEqFjtEAtJSCcHXHHepmssj3AvKOzjj5Vk57oz81v', '2018-11-03 03:55:08', '2018-11-03 03:55:08', NULL),
(35, 2, 1, 'gajffhj', 'admin@admin.com', NULL, 'sjdjfa', '544440540545', '$2y$10$xCZRA0NVbVptPMV22Ybrc.BOjVmII6j557I5pEQ6AW2uqgkAGOhd6', 'YGIacUHMpWomyJGz5vaIGUdYOXwhpSO1yTY01JgGkiembCTwhRa9T6Inc6cx', '2018-11-04 17:41:40', '2018-11-04 17:41:40', NULL),
(36, 2, 1, 'smail', 'smail.bahri@gmail.com', NULL, 'casa', '043436767858', '$2y$10$dWeV9fA/nFJi0ZP711epdOjXDLqldt8iZQfUMvKCyggBPsHxn3jDa', 'V2KMV2JRYMBu9Wb6vH2GwwNFowqUxSKwL02yxMyQAMUPrStmtR9ASqPP9YKm', '2018-11-04 23:21:49', '2018-11-04 23:21:49', NULL),
(37, 2, 1, 'Ram Prasad Anusuri', 'ramprasad189@gmail.com', NULL, 'Visakhapatnam', '9640835842', '$2y$10$UPFKIF1aW.aiDJaxlpEiyOUfj53MCJ9f4WVTn.k8KhuK3PM5pgtL.', NULL, '2018-11-05 09:10:42', '2018-11-05 09:10:42', NULL),
(38, 2, 1, 'MOhsin', 'mohsin.9187@gmail.com', NULL, 'Goa', '9833220378', '$2y$10$U.riQqyAFcSpjJE.s3QJAeQ4ofu6lA.HdUBu9WY4AsXLSRewjzvaa', 'apNWDXV0nSPAb0OUaJB1WmFUHKIQRd30tPDiqedjsn44eivFyuZbVA6mfFSi', '2018-11-05 16:12:48', '2018-11-05 16:12:48', NULL),
(39, 2, 1, 'ee', 'ss@gmail.com', NULL, 'nnn', '77878665757', '$2y$10$eOIFImON.uk2lRrLZV6kFeSAXE4trXL10GdNsHKh5LCvW85OchQQO', NULL, '2018-11-05 22:31:07', '2018-11-05 22:31:07', NULL),
(40, 2, 1, 'Silicone Cover', 'mvpath@gmail.com', NULL, 'male, Maldives', NULL, '$2y$10$Z.xw5nvou0Xy6xboP9VpBe48VfWMEkrpqdG9TjWb4jhgtPaMZtgOW', NULL, '2018-11-06 04:42:17', '2018-11-06 04:42:17', NULL),
(41, 2, 1, 'Manikanta Racharla', 'mani.rcla@gmail.com', NULL, 'Hyderabad', '09581705721', '$2y$10$Pf8fMIql3wMqTh9kq5fw9eTN8WwsyvZ7RmUMDGM8eq/lkwA.G4I2C', NULL, '2018-11-06 19:52:42', '2018-11-06 19:52:42', NULL),
(43, 2, 1, 'test', 'test@email.com', NULL, 'istanbul', '53164154156', '$2y$10$sRQQr8BXpKjhSsAS5lwe0.Z2PMZm0Yn3aW3FqW/dRttr8P0RTgRlm', NULL, '2018-11-07 12:06:38', '2018-11-07 12:06:38', NULL),
(44, 2, 1, 'nazlı günerli', 'nazligunerli@hotmail.com', NULL, 'istanbul', '05342983985', '$2y$10$BHc/NBjpNU.Z8xRQKNJJ8OPhK7kPTbocLpOOnyKMVEPaN89hifCLe', 'IuHjWXLNnLYtRNBIQG18nlCirZ9XJLeh2J2LIDzxP13uGFmIGTtBfy4vnq6y', '2018-11-07 12:15:33', '2018-11-07 12:15:33', NULL),
(45, 2, 1, 'berkay söyler', 'teknobimm@gmail.com', NULL, 'antalya', '05535737596', '$2y$10$MUTiVeO3ZYonDXsCBo1CoO2HI37i3jNTt4Ch8OrWcHJ0ndSIk/CXC', '71ZACOtCMKGVSZH8xX07iDLYwImDYdJGR3EiNGeNoehZ1RnH01MSr4Sy8jY9', '2018-11-08 02:21:42', '2018-11-08 02:21:42', NULL),
(46, 2, 1, 'NBA Crossover', 'mbkhbk@mail.com', NULL, 'nmnm', '987986969', '$2y$10$woxU8puBJJmAtdpoi8P7ZuuX7ft9DAp3VcOSpZ.ehonQTPvhl/Lfi', NULL, '2018-11-08 17:45:56', '2018-11-08 17:45:56', NULL),
(47, 2, 1, 'Masa 8', 'admin@dar-elweb.com', NULL, 'Van', '21256789', '$2y$10$oJouomMykedniXV0N1TBb..h95Uc90hX2sq/wrCvfB8QhhFDVuiLi', NULL, '2018-11-09 04:10:34', '2018-11-09 04:10:34', NULL),
(49, 2, 1, 'ephesuszxczxchalfmarathon.com', 'ajansbee@gmail.com', NULL, 'izmir', '02324596787', '$2y$10$iPUX6VKlY6whNxpXVgF9o.cnYnZgIK3GxzRs2P0Nzv9/9Ef5.h6P6', NULL, '2018-11-10 19:23:54', '2018-11-10 19:23:54', NULL),
(50, 2, 1, '123', '123@qwe.com', NULL, 'fgdfgs', '1223435435', '$2y$10$Pf89f4yDQX3x25EnxtpohOWTrMzxg25HXhstn4QRJjLNZNQ7kLx.e', NULL, '2018-11-11 04:59:49', '2018-11-11 04:59:49', NULL),
(51, 2, 1, 'Nazmus', 'softghor@gmail.com', NULL, 'Dhaka', '01779724380', '$2y$10$w9MNgLmQ3Oq96Lw7n9JcCODYcfsRMOS0caOSAuZrx8DWQW/ferUk6', NULL, '2018-11-11 18:41:50', '2018-11-11 18:41:50', NULL),
(52, 2, 1, 'ases', 'i1716634@nwytg.net', NULL, 'seattle', '2934893489234', '$2y$10$iZ6IjlKw7mcaiqoJpV7G9.r1ShA8/Kr0QRXmm6ZflKUXrS73xRct2', NULL, '2018-11-11 20:53:46', '2018-11-11 20:53:46', NULL),
(53, 2, 1, 'srsrtzrstz', 'rtzhrtjrtsz@rgsdggsg.com', NULL, 'edrgedfhdf', '57578785785', '$2y$10$vTKqbz5u86..jHd2kFJa5ebCAz4Fnz68PHjbxw6iSB/gtosd8ddw2', NULL, '2018-11-12 05:42:34', '2018-11-12 05:42:34', NULL),
(54, 2, 1, 'John Danny Reyes Be', 'reyes_dark@hotmail.com', NULL, 'Chetumal', '019831327898', '$2y$10$gDAK6K9TjIkCtA.yhie4s.SqcUdDAeTgwFp3G6VYzo5Y4qrtIhrs.', '1JUGzk3QdSDPAVUNTScUvtiGVcnE3JA8wB18M2Fj0HMbMQbIl7KHAgtzWKeY', '2018-11-13 10:32:29', '2018-11-13 10:32:29', NULL),
(55, 2, 1, 'vipin mathur', 'vipin2vipin@gmail.com', NULL, 'Jaipur', '+919829418959', '$2y$10$Hgjr9ECwktcmDbnSjYthA.BWwGmAn9WEJXv2gQx6lKZUpe683riOS', 'dFeSvlt0Wkee1At1BHPCG4DbfWMFUGHJe08Z82Tuhmp2mkaVV6mXMSxvi2FJ', '2018-11-13 13:29:07', '2018-11-13 13:29:07', NULL),
(56, 2, 1, 'jbjb', 'comnjknjk@gmail.com', NULL, 'kkj', '87989', '$2y$10$dXGn8Wk.7P0eTJ4O6EZvx.3F3rEOws92qSBwyvpE08ex1JIzDwhhW', NULL, '2018-11-13 17:10:20', '2018-11-13 17:10:20', NULL),
(57, 2, 1, 'Jabir', 'jabir@gmail.com', NULL, 'Dhaka', '01494484555', '$2y$10$bxE5tu6xK7kHwIUJiA09beFk/QWec2CpfdjkhxrJHV6HBxNZjYU1a', '7eJ2fabnVNF0GUbKq4Tt1iWmXXHD8EZ5AwKw9EbxdpKGPUuFpAk03o6lJnhc', '2018-11-13 19:26:30', '2018-11-13 19:26:30', NULL),
(58, 2, 1, 'egerg', 'super_user@ism.app', NULL, NULL, '234567', '$2y$10$Md84IbMNGMXKzw1dXOoFtOY4c5ChN621tCI/lbr.2.kxrsyOLo4uW', NULL, '2018-11-14 01:55:58', '2018-11-14 01:55:58', NULL),
(59, 2, 1, 'washiley', 'washiley@yahoo.com', NULL, 'Salt Lake', '1234567890', '$2y$10$qAUZxkz86uBbNy9vWnxmPOn1QE80cWRF.3xodl9/bCCqQBwW1YSeG', NULL, '2018-11-14 04:37:07', '2018-11-14 04:37:07', NULL),
(60, 2, 1, 'Jennifer Thomas', 'jenithomas.feb02@gmail.com', NULL, NULL, NULL, '$2y$10$NX/zYp2EViTP0SaBxyFc8.9E51bI3k1OijRu7e.lMLnE015P8MeZu', NULL, '2018-11-14 10:24:06', '2018-11-14 10:24:06', NULL),
(61, 2, 1, 'Sadik', 'sadiksejdiu.f@gmail.com', NULL, 'Prishtina', '+37745230870', '$2y$10$XYbgcDy9b76dmy29dbH7Be.36k1iOJ24yRYZh7lWydTce9upDk6D6', 'erxVbzuszAAJuAJjHVpY5xsKDnqRZ491wpc0VxFxNxNDtqipc3iG8LIFweAr', '2018-11-14 17:14:42', '2018-11-14 17:14:42', NULL),
(62, 2, 1, 'dasdasd', 'mulla3d@gmail.com', NULL, 'asdasd', '123123123', '$2y$10$CwiRF9fQ.MXzl15IXuovROwVqJcP/CUwWQZ74zacL2aRXXD6my776', NULL, '2018-11-14 23:21:56', '2018-11-14 23:21:56', NULL),
(63, 2, 1, 'Jsjjs', 'asep@lataksi.com', NULL, 'Nsjsjs', 'Hshs', '$2y$10$hsT6aQgr3hZukjVEkLIxK.BjhuUKgQTgN6f7arxMChkcx2d2xlJXG', NULL, '2018-11-15 03:02:04', '2018-11-15 03:02:04', NULL),
(65, 2, 1, 'Nijaz Omanovic', 'info@quracom.com', NULL, 'Dordrecht', '0645107755', '$2y$10$5W9xULS.CAxrhM.2hEnszeTN8PpQcblipAxRn0vxeTIoZGeV6QFW.', 'Vv62yem66HXVZAjs453XSwsYKo1eqMJUaUfS9qfadUeuHvqovMF1Sr8jRgjM', '2018-11-15 14:18:58', '2018-11-15 14:18:58', NULL),
(66, 2, 1, 'TEST', 'TEST@TEST.COM', NULL, 'TEST', '03125818', '$2y$10$dNwMKS4Zz8X3nW2.ZqA1qOby/7.PsklMOelsRl4orptDJJHKSOoOm', NULL, '2018-11-15 16:52:20', '2018-11-15 16:52:20', NULL),
(67, 2, 1, 'Omar Vega', 'xtra.dodo@gmail.com', NULL, 'Sacramento', '21341', '$2y$10$OVo3gytqrAyS6cjgsnwMoeDvGDLhG7GMa6ft/UlO2IipkdN2Trr92', NULL, '2018-11-15 23:28:07', '2018-11-15 23:28:07', NULL),
(68, 2, 1, 'hdhd', 'hdhgd@hfhgfhg.com', NULL, 'hdhdhg', '8768678', '$2y$10$wgwThTKD32F3GtrGob6Eo.x.HuvOKnNrEhoB.Xe/FkHx8KXa2zga2', NULL, '2018-11-16 01:50:55', '2018-11-16 01:50:55', NULL),
(69, 2, 1, 'sdsds', 'sdsdd@dsfsanf.ci', NULL, 'Sacramento', '9164701493', '$2y$10$.NSkdA.qw7L6o4mZ0XvGmukSxI9xHvlwk2UaH5VgEPzxSSPGZL/GC', NULL, '2018-11-16 05:10:45', '2018-11-16 05:10:45', NULL),
(70, 2, 1, 'nomi', 'nomikhan444@gmail.com', NULL, 'Islamabad', '+923319509964', '$2y$10$BnAgFJWnxGMONcMq1Bc5P.YhlX2NAktcjd.WGUyI7nugONmOUQjlu', NULL, '2018-11-16 14:15:05', '2018-11-16 14:15:05', NULL),
(71, 2, 1, 'Amit Loomba', 'tempamit@gmail.com', NULL, 'New Delhi', '+919810250601', '$2y$10$aW.U2hl1noik2FUfthzeVu6Ybf4MoykzaNAAmTJFaW0oGtqG2Mt/.', NULL, '2018-11-16 14:20:27', '2018-11-16 14:20:27', NULL),
(72, 2, 1, 'sdfsdfsdf', 'sdfsdfsdf@fdgfdg.fgh', NULL, 'sadsadasd', '54654654654', '$2y$10$P7GA64Dw3nfI1GJDHji5k.jRzZU1VOlhgzvYXIZrvS/qJCkGLzzlO', NULL, '2018-11-16 15:55:04', '2018-11-16 15:55:04', NULL),
(73, 2, 1, 'f', '2@gmail.com', NULL, NULL, NULL, '$2y$10$yRdXQFBGgQEp.yA1gcz78Ot1wLuqRGs5RD0UvynoUeYITjIvBISj.', NULL, '2018-11-18 01:15:23', '2018-11-18 01:15:23', NULL),
(74, 2, 1, 'KENEI D MOSERAY', 'keneimose@gmail.com', NULL, 'Williams Landing', '0466529827', '$2y$10$qkOhRzt3JEaXhRKu.pg.LeJxhZRNyqa5HpAI685qHIaN2ltpHvdR6', NULL, '2018-11-18 08:29:44', '2018-11-18 08:29:44', NULL),
(75, 2, 1, 'umapathi m', 'umamaha1994@gmail.com', NULL, 'salem', '09790441839', '$2y$10$uh57QQUrpNJgzkysekagROOyk9W4nCKSnu/MtLpEh.kACYm0FGoAm', '95bFiN81b1YGM9jYwcN1vgcu3kVQpL0Mo9348lzGOhrB0mDRsGwb2gtWp7TD', '2018-11-18 13:15:58', '2018-11-18 13:15:58', NULL),
(76, 2, 1, 'dfhgf', 'gfhgfh@gfg.com', NULL, 'NY', '12568365', '$2y$10$47FvS5EOJ0MnSgHYgyyOuO1wXMhXldUwlRrQeFjt/Z/gK1aF0QmEi', NULL, '2018-11-18 13:47:38', '2018-11-18 13:47:38', NULL),
(77, 2, 1, 'Richard kimemia', 'RichKimemia@gmail.com', NULL, 'NAIROBI', '+254773461743', '$2y$10$NKVxiinL6WzOK9CB6neYmui5/duPO0w6rid.ZuZMsRdvtjZEbD7.i', NULL, '2018-11-19 23:48:46', '2018-11-19 23:48:46', NULL),
(78, 2, 1, 'asyraf muda', 'flashar1022@gmail.com', NULL, 'calgary', '0169169211', '$2y$10$Vm/aSrjyeuj33dbuM6o10u7OVZCguapAj7l3IURzC1qNJvikDJmu.', NULL, '2018-11-20 08:00:16', '2018-11-20 08:00:16', NULL),
(79, 2, 1, 'Audrey Mancock', 'audrey.mancock@gmail.com', NULL, 'Johannesburg', '813898960', '$2y$10$rppQvxoWyKKH0Dm41GVHiu1.fwmyU4o0rvzQUXn6xKna.uHgpn.Q6', NULL, '2018-11-20 19:59:26', '2018-11-20 19:59:26', NULL),
(80, 2, 1, 'Rousset Julien', 'contact@julienrousset.fr', NULL, 'Carbon-blanc', '+33641859685', '$2y$10$/MoLPA0xUdUeb3I97Yt3pey18gHqMb94/Dn8ZwIdkU2CdpjqQM4ji', 'oM3dBF7AVNrxoqlRyyKsQkBWYpKPMqrnRxceRx0F8b3VtIVR0DtiwhwdTAZu', '2018-11-20 20:56:26', '2018-11-20 20:56:26', NULL),
(82, 2, 1, 'Rousset Julien', 'contact@julienrousset.frr', NULL, 'Carbon-blanc', '+33641859685', '$2y$10$ep3lsxnaaYtEgBf7D7mzT.W7t9Z3X8QdQLo4xLWma1DWGaHIk5mW.', NULL, '2018-11-20 21:05:42', '2018-11-20 21:05:42', NULL),
(83, 2, 1, 'erew', 'qwrqw@wqrwrq.com', NULL, 'qwrrwq', '91792371', '$2y$10$.2fK3QOsY9In3uVOtbGsve9h0G8ZW/hy.F6g0zEvg2Xsryuyr6aF.', NULL, '2018-11-21 00:36:27', '2018-11-21 00:36:27', NULL),
(84, 2, 1, 'al', 'al@al.com', NULL, 's', '96588955', '$2y$10$RwWjsZLclUU3XXv191ue9uCphQcHD3yrvSH0ofzxAhjxO3xKbkOLG', '9comH7Ya5f7f4fqOnvVPKvkIVaNZCNOd90f102kCqug5F6rnZQcEl63Os4UJ', '2018-11-21 10:48:46', '2018-11-21 10:48:46', NULL),
(85, 2, 1, 'LEO', 'LEO@leo', NULL, 'LOS ANGELES', '234567', '$2y$10$bLQubKbYJxZYXgcViHN5huzIz1v6pUaiRl/F/VQ//HHAW6VFtGvvy', 'QCc8B8YF7wZOTHoXnGlcmxNPfKwTxbJpCoRlYqzMf5v783bAK9MKxBad0jXR', '2018-11-21 10:55:56', '2018-11-21 10:55:56', NULL),
(86, 2, 1, 'qw', 'qw@qw.co', NULL, 'qw', '0989969', '$2y$10$B14gEa.hMLVEC1mxRn78EOvP66VshLuGxiT5fxPIOH9pe.kLnpUgq', NULL, '2018-11-21 11:31:07', '2018-11-21 11:31:07', NULL),
(87, 2, 1, 'marco marc', 'marrek05@gmail.com', NULL, 'Grassano', '3292731859', '$2y$10$W9ke1o9stL.fOQq0XvBMAO7Tjrk7usCd73zw0nbh.sIDKuCM6I1Ty', NULL, '2018-11-21 12:34:27', '2018-11-21 12:34:27', NULL),
(88, 2, 1, 'grfg', 'fgfg@dsd.fr', NULL, 'fgfg', 'fgfg', '$2y$10$ldtyPwfxD0KASCSvexNwG.GL1usggWgzFCxcQAEhf7zUNd3xv55fG', NULL, '2018-11-21 23:05:27', '2018-11-21 23:05:27', NULL),
(89, 2, 1, 'Carlos', 'christiansocc@gmail.com', NULL, 'guayaquil', '+593994983559', '$2y$10$/d1HDIMI.1XviB0dacOFCug0CZgZVX4UzUZcijWcuTMGPA5PQnBEO', 'gAqTsj5dvnM1lLn6VhliQhZqn1AmLl5DMV6MWTpEq9oyuUULsBTU59nNZFed', '2018-11-22 00:27:03', '2018-11-22 00:27:03', NULL),
(90, 2, 1, 'william', 'gwillprivate@gmail.com', NULL, 'nairobi', '0720052808', '$2y$10$Qqb7vx3t3IWj2YEIQA/QQuypdjn16dKEGqBLuDSOfquBE6bdELLAS', 'AErjnjUhzqM5UshovNvNGDtvxpNK40G14OKAzs26gXESLCzu9V6qWMZRitHF', '2018-11-22 01:11:55', '2018-11-22 01:11:55', NULL),
(91, 2, 1, 'sdf', 'fabio.roca@gmail.com', NULL, 'lisbon', '545455', '$2y$10$ULrZ5IeOVf950Voz2TURUuIguePEQX/tT1cYF6oAnaGehMlmPqQH6', 'lM0MqnoYMR2w2IoaNB1tw5WEU3BUcIcfaaB4GUakX6v7qzhrw1ZHdxx6vDrZ', '2018-11-22 03:50:18', '2018-11-22 03:50:18', NULL),
(92, 2, 1, 'Rafael', 'easeas@dada.com', NULL, 'Passo Fundo', '31243243243', '$2y$10$kpszhq8nhmmUNxkZ7/QIbehbU8TmaKTFGd0e3ybxgII3HNwfOCkEm', NULL, '2018-11-22 03:52:17', '2018-11-22 03:52:17', NULL),
(93, 2, 1, 'Wutinan Suwanawong', 'toekingsize@gmail.com', NULL, 'ลำลูกกา', '0926456394', '$2y$10$gDeeABtwlYJLNd8aqDV8HOMdZDaL3x/VtGlmmIIbEHy3HderrYog2', NULL, '2018-11-22 13:07:54', '2018-11-22 13:07:54', NULL),
(94, 2, 1, 'nanaa', 'marsanto.id@outlook.com', NULL, 'Kabupaten Kotawaringin Barat', '0816280817', '$2y$10$0/PfISAilb7uebvwmuro2.RQym9UbZveXyR4mYatCVjTxi8wGIdK6', NULL, '2018-11-23 03:15:07', '2018-11-23 03:15:07', NULL),
(95, 2, 1, 'Martin Vega', 'martin_vega@yahoo.com', NULL, 'Nicolas Romero', '+5215584897183', '$2y$10$mlJJxfNc6lWSQGQ4lT9J6.nOfxnaW1.4XUbWZiiTkF9Hil7ZM0j2e', NULL, '2018-11-23 10:27:37', '2018-11-23 10:27:37', NULL),
(96, 2, 1, 'ΤΑΝΙΑ ΠΑΠΑΣΤΑΥΡΟΥ', 'arxiremali-2011@yahoo.gr', NULL, 'ΝΕΑ ΣΜΥΡΝΗ', '6944370888', '$2y$10$glM/smbV4F6SZvLwzCYmfeD2QR2/ZQT4XsqkVFv1eaFP.aWIzZUlS', 'uPakSfBemjZS1td2bM9A9UXd3nWwVdTeptBQTKLMkXjWGshU7lZbWUVF35Xg', '2018-11-23 17:13:38', '2018-11-23 17:13:38', NULL),
(97, 2, 1, 'Mohamed Tarek', 'super@nour.com', NULL, 'Alex', '123456', '$2y$10$BYxKdDauyBh2WFUVnV6bRucLJvweAWgnKeXwYJfAAsKWy53j5tRYG', 'rqXt99KEoRrsHxPQXZQ7radtYTHDAgVAG9g5BpGTbCJiPxFmxTjQuThAN8FU', '2018-11-26 03:03:33', '2018-11-26 03:03:33', NULL),
(98, 2, 1, 'Test', 'tesg@gmail.com', NULL, 'Sibgapire', '5637374554', '$2y$10$ADgHzLV28yFzU1ya8NwVEu7ltKnGtmgJ/2ASFE7Wtywl68FqpuCN2', NULL, '2018-11-26 06:26:18', '2018-11-26 06:26:18', NULL),
(99, 2, 1, 'Rusiru', 'rusirugannoruwa@gmail.com', NULL, 'Kandy', '+94770195962', '$2y$10$hAkzUeSpmOz5pc1oWGaWE.UCjeVLFEJ9L3.VTHj05d613fl5NlXNm', 'k09dydFOCHms4qeOEocOoKfjGELOCOkv4qkq7EuC37KFcWIQQXwV1dn0EDcG', '2018-11-26 12:34:33', '2018-11-26 12:34:33', NULL),
(100, 2, 1, 'raja', 'aads@dfdkjd.com', NULL, 'sdaa', '955444', '$2y$10$kUyRGvywTY6mPG3rDd8hVeqjtfqM69x5dy876hDbSVRFOx..DXSre', 'NhFIH1R7887laUCchxp6qg4Zfzqw5wnLTY79tLxZHfsL9kAIPLGGnMXRBgE7', '2018-11-26 19:21:39', '2018-11-26 19:21:39', NULL),
(101, 2, 1, 'k', 'kevin@gmail.com', '9', 'Bègles', '0000000000000000000000000000000', '$2y$10$w3PvoUYkhf3tOVggUe7AdeylzJ5YBqG5qYhi5BsVGHUBYWEePRTz6', NULL, '2018-11-29 19:39:39', '2018-11-29 19:43:47', '51'),
(103, 2, 1, 'asda', 'adssa@gmail.com', NULL, 'asds', 'adsas', '$2y$10$hAIhLx4T0V0Z/gSnDacVMOt5MrMkTaarcM2nzC4BIJ.iGqgaTJBLS', NULL, '2018-11-30 12:35:40', '2018-11-30 12:35:40', NULL),
(104, 2, 1, 'kirk', 'kirk@email.com', NULL, 'boston', '767686876876687', '$2y$10$TBHxMU5UAV1firoMZDGX0eSM1Awkhy1oWuEGpD.578PYcqB57CVvO', NULL, '2018-12-01 00:47:47', '2018-12-01 00:47:47', NULL),
(105, 2, 1, 'denemedenemedeneme', 'denmee@dene.com', NULL, 'uyfty', '6547', '$2y$10$lOrfCrYJdGCsEY30bc1pSeo0SJwQQOe2Ff1ebSF1CNi2jbdmbqWvq', NULL, '2018-12-01 05:01:10', '2018-12-01 05:01:10', NULL),
(106, 2, 1, 'Goget', 'test@example.com', NULL, NULL, NULL, '$2y$10$0MRTYOzkMEf9NWtjxCBb2OuvMAKTM8i8.nLrjQYVjNnLCRS1IhtRy', NULL, '2018-12-01 17:25:29', '2018-12-01 17:25:29', NULL),
(107, 2, 1, 'milad', 'milad@mir.com', NULL, 'arak', '09902329861', '$2y$10$mhHT37jbvl9wXyZ8b3UDwuwRIMFBj4v5rWX3x1GYFDDCKpAceRtlu', 'qNJEcuhcQK2AqEtrPb3TQiE1YZYBG39IIpcsl2uOoq2tV46soZ3RHjGiMpLc', '2018-12-03 03:23:01', '2018-12-03 03:23:01', NULL),
(108, 2, 1, 'Richard kimemia', 'RichKimemia34@gmail.com', NULL, 'NAIROBI', '773461743', '$2y$10$mnNsv5YgCMNekhUSeF2O5e8oO.sGbUQuuqi1Zz.EIU0wmQ7wMdIbm', NULL, '2018-12-03 07:29:25', '2018-12-03 07:29:25', NULL),
(109, 2, 1, 'Raja', 'dfwer@dfre.com', NULL, 'csewr', '924778788', '$2y$10$J15jQRXXUAwtlR.cL4.kgeN3I5HNpF7SDfXy3IpD6vvk/1WORmSGy', 'u0X8570kAQk4o8gKCsatdegUgkRYVMPD3SrR4zqxpNfEWYLwWdQXdqPgux1k', '2018-12-04 11:30:37', '2018-12-04 11:30:37', NULL),
(110, 2, 1, 'pier', 'info@book.iy', NULL, 'ol', '09573092875093827', '$2y$10$sEr1ApW4i0KaQV./UKlPleRYYVY3Wm1umDarHQA7vFs6uO6cDSEFm', NULL, '2018-12-04 19:58:02', '2018-12-04 19:58:02', NULL),
(111, 2, 1, 'Martin MASSE', 'masse.martin@gmail.com', NULL, 'SAINT CHAMOND (42400)', '0650520078', '$2y$10$teiwJbkAp/HilEm9azf55eg1lQbMle4YPhluA/VYjVQ0ZHSLqcOLa', NULL, '2018-12-05 02:47:20', '2018-12-05 02:47:20', NULL),
(112, 2, 1, 'Lohith Tiruveedula', 'ss!@gmail.com', NULL, 'hyderabad', '9052465416', '$2y$10$nP8d5cAuA/eBLT3dYhIMeuWe5hTFTjML1/hMgRt3KuUuQylKBEA2S', NULL, '2018-12-05 10:19:09', '2018-12-05 10:19:09', NULL),
(113, 2, 1, 'Baraka bakari mkande', 'barakaomondi12@gmail.com', NULL, 'moshi', '+255620857767', '$2y$10$VZbhypaSERmoCu3pKE0Qiu03i9GQD35e/h.rxtXhVepe/sTIx6vmy', NULL, '2018-12-05 17:19:43', '2018-12-05 17:19:43', NULL),
(114, 2, 1, 'francis Okaformbah', 'onufran6@gmail.com', NULL, 'Surulere', '8052665878', '$2y$10$YgKqKn98MWa7TBub.en9.u9jtTQ16.YppZs3lo0D10EE8o6wvdhnK', NULL, '2018-12-05 18:11:01', '2018-12-05 18:11:01', NULL),
(116, 2, 1, 'Aremo Francis Sunday', 'fastincorporated1@gmail.com', NULL, 'Lagos', '2347068833966', '$2y$10$6JMVYz0MZNaICrkOv9gyiuHBaKjrHI52Mn7Hp6rF/2r5iI6B1fv42', 'lBnTq1yFDAJWnAMQXG9gl0z6foRc9J0pYDJQvpVqS3przN4SEA1M4xzix4Ul', '2018-12-06 21:55:45', '2018-12-06 21:55:45', NULL),
(117, 2, 1, 'TEST TEST111', 'xofax@cliptik.net', NULL, 'port louis', '57354121', '$2y$10$wqz7BGHZ.DhkZdJ23ivxoO7Vm2kMDi38Z9P4i.MOO7cCHBSrvdcU.', 'Efo0ZXrSype6EFfQLBMXQlyYJLUFFkPcHWXWJm3pH9JJvbN1SobHQMiAwjeu', '2018-12-06 22:52:09', '2018-12-06 22:52:09', NULL),
(118, 2, 1, 'Waqar', 'w4waqar@gmail.com', NULL, 'Karachi', '3132909074', '$2y$10$qn0vz2c0VDtMiSVNFtR7mesR3SO4vy/HTil7OsIxCMPHyHSVj1QFq', 'nUPsLw3CndTICo8ZChcC5F9eqmm3qUBuEJcD418FkxbIFnqMdDYTEksh5MzO', '2018-12-07 09:37:49', '2018-12-07 09:37:49', NULL),
(119, 2, 1, 'Tom', 'Hanks@test.se', NULL, 'Goth street', '1234567', '$2y$10$4YwAge.XrrCxANe8erJ01.h5I8gpJ1BjDQ9vA.7AAM2ngDwpLXXIq', 'ID5GUxlEbdXprYND4VH4q3CvKilW8IA9tnXeeyEg9mwUNfxXhqFlwGDE5OKq', '2018-12-07 14:59:27', '2018-12-07 14:59:27', NULL),
(120, 2, 1, 'gdge', 'ywryw@ghh.com', NULL, 'yrvureb', '8968939939', '$2y$10$Qm73MSHelHd9bAHwqWM64eDD0ZBKumXlKIK3UpxknEdBe0/1K/fOu', NULL, '2018-12-07 15:29:39', '2018-12-07 15:29:39', NULL),
(121, 2, 1, 'dfsdf', 'sukrugulesi@gmail.com', NULL, 'dsada', '654654', '$2y$10$eHIZVCDQag/4fx52huOZ..aE.UWJ3IhNezkLXgRwQfn8BjRW2pmwS', '514ntx9boJsot8qk6apSDrdR78ALZ0euYafe1jrEVo0tSnzidOO16wbpNtNJ', '2018-12-07 22:33:11', '2018-12-07 22:33:11', NULL),
(122, 2, 1, 'dsqdsq', 'chbani111@gmail.com', NULL, 'sqdsqd', '55', '$2y$10$gQuwNAJx5X3bFS91qfiu1.0XYep0T0MZb0QCMO.WUQj78AYXIlpEy', NULL, '2018-12-08 06:33:42', '2018-12-08 06:33:42', NULL),
(123, 2, 1, 'Faisal Ijaz', 'se.faisalijaz@gmail.com', NULL, 'Duabi', '+971582646237', '$2y$10$QdywWAfx0pEjWfEO9NEO3.D98Vp/OdJxCpAhv5dEtTk7qFL/GjFQq', 'Z1vbIyknZDtMDhGv9LJKHWgGxaU02DBEGkpQFPIUqX5SD6W5L4ah1FGQmUZy', '2018-12-08 10:06:30', '2018-12-08 10:06:30', NULL),
(124, 2, 1, 'rrfuiigu', 'help09@providier.com', NULL, 'Ghhi', '8968939939', '$2y$10$7LsupRKMPUw87GJxwkQxAOGNhZLG6b5mv2cIvWlFkT.G/jzzBCrHm', NULL, '2018-12-08 11:06:19', '2018-12-08 11:06:19', NULL),
(125, 2, 1, 'kamil', 'osan@gmail.com', NULL, 'sanane', 'sanane', '$2y$10$SN7g4.iXglCsaLUwkpLZROj9sVpO0keSlrg2zSQd7e8z9R05/c.wq', NULL, '2018-12-08 18:54:42', '2018-12-08 18:54:42', NULL),
(126, 1, 1, 'Star', 'david.rockefeller@outlook.com', NULL, 'here', NULL, '$2y$10$H72Ei6pkBmqlOWdo9rIuaO4L9Mf9m/WdkjbXNsKA5lP.N0olgku9i', 'zXulLXGhNnn3K63a0YKwj63moDtRInxYlczRj5rTdMrC5BRSkYtnch3VlqnX', '2018-12-09 16:38:19', '2018-12-09 19:09:59', NULL),
(127, 2, 1, 'test test', 'abhijeet@walkingdreamz.com', NULL, 'indore', '9893646142', '$2y$10$5RjtMla.bSY8GETlEYWpIes6qDIqEcB4cQck48HT5P6haRhliyAja', 'caOs3KLXqanWnU1sslR84H78H5zvrOUJfDxhdzgWJfB89lEDYFSuhMYb9jJZ', '2018-12-10 14:59:44', '2018-12-10 14:59:44', NULL),
(128, 2, 1, 'KOl', 'William@gmail.com', NULL, 'Almhg', '7456456456', '$2y$10$fXAIumJu0LDUExytd.9u6eYXFwQX5FMaDfflmtusuNcQZ/1u/lNYu', 'bC9jnCeaocuEA5OpS1Kn0kEYolJSy2v2Im10owRj1zMC3N3vvk5LY9NoOKa4', '2018-12-10 17:13:50', '2018-12-10 17:13:50', NULL),
(131, 2, 1, 'test', 'suro@mail.com', NULL, 'Kirkland', '88888888888', '$2y$10$fpqgBdtz.lXzsRxBg0ZMQOfLaavyc6fFvDCkAm9yUfvtRlHaS.JLy', 'j66h5dyq94fDzihazFziM7FQb2YIINwMdf9w8lPNeUXP3h5v0SFuH4Hflmo8', '2018-12-11 09:50:37', '2018-12-11 09:50:37', NULL),
(132, 2, 1, 'dhaval', 'dhavalgohil131@gmail.com', NULL, 'SURAT', '9512539953', '$2y$10$ukeD2yBDnBWQlvsCXaqvu.6/aEupJwRdXlJxqGuUFVKhS68HqoWV6', NULL, '2018-12-11 15:45:16', '2018-12-11 15:45:16', NULL),
(133, 2, 1, 'loic voisine', 'loic.voisine@orange.fr', NULL, 'Toulouse', NULL, '$2y$10$StgcmfGG.l.l7VFPS821nuxUP921h5c7EmGNU4E.MhIzIp6yR4gqO', NULL, '2018-12-11 15:46:49', '2018-12-11 15:46:49', NULL),
(134, 2, 1, 'a', 'a@a.a', NULL, 'a', 'a', '$2y$10$mTMdX98yZrC7hdaM0kCI7.8ePljSALkDBtElw22xVyBqhgg/U5lFG', NULL, '2018-12-11 17:52:36', '2018-12-11 17:52:36', NULL),
(135, 2, 1, 'shidiq pitoyo', 'piyshidiq@gmail.com', NULL, 'Banjarmasin', '+6281255638693', '$2y$10$qNAyb8tva06CEHJxXRUpT.9EnEtRB9jTe.0lJ8SBihcH1Mz.rLmsq', NULL, '2018-12-11 22:44:09', '2018-12-11 22:44:09', NULL),
(136, 2, 1, 'formecar', '4k02@g.com', NULL, 'y', 'u525', '$2y$10$yt3sreiHoglUN/lKvyytW.7qdqQIhCHmzIhsQBO/nfU9X3EfbY/Ke', NULL, '2018-12-11 23:06:03', '2018-12-11 23:06:03', NULL),
(137, 2, 1, 'testing', 'lukmanaffa@gmail.com', NULL, '654654', '0217217271271', '$2y$10$hqF0G8sg2xwkPVVIhpt6E.cvZglBQsXQ3N0jApJh3FEhlGD/szKdW', NULL, '2018-12-12 07:46:33', '2018-12-12 07:46:33', NULL),
(138, 2, 1, 'Test', 'thilam@gmail.com', NULL, 'Monaco', '888888888', '$2y$10$iQCIrb7kEH2/WmxDfY/OtOfnyMCQhMtObxJ7Nt2ZFyvn6FAmeI2DO', NULL, '2018-12-13 04:13:08', '2018-12-13 04:13:08', NULL),
(140, 2, 1, 'sfddf', 'dsfasdfasdf@dfsasdfsd.com', NULL, 'dase', '213234534', '$2y$10$bo3mp6ZjJeVXukR3D2JS7uk./01BSf4e7WJtl2hZzEoGGOohAGeHO', 'mMHKxPRI8FU3dVGlEA541S1V7jG051FcwT3LQUil4NRzh1HAM5ORODgBNYIk', '2018-12-14 00:07:08', '2018-12-14 00:07:08', NULL),
(141, 2, 1, 'ayat', 'ayatabdelmorid@gmail.com', NULL, 'alex', '01287656412', '$2y$10$K5R.xYn7M12VoGEvl7d1keKMASsy2LB79QwINVr2nVdjLvs8RVRF2', 'TWcO76lQlf4Y83vpvO1AaJ955C4NpBEOYldwa42CBPAXwqL9eEX6Ij3Gm1nN', '2018-12-16 19:33:08', '2018-12-16 19:33:08', NULL),
(143, 2, 1, 'franck', 'mail@mail.com', NULL, 'libreville', '34567890', '$2y$10$h6ovh6a0tZGB5UsTHyF8u.SitCOJbDQoXfW25wkC/qtkmtyqThP7C', 'qmgA4TsVG3gre5YWkKc1cTCMPn8jCqBymze7VvnkBv4NJqeuXgWIbevuVU3l', '2018-12-17 20:09:27', '2018-12-17 20:09:27', NULL),
(144, 2, 1, 'Derek Byrd', 'jaw@example.com', NULL, 'Ocivouto', '7866177410', '$2y$10$vmhRlIvn0SHyZwDCF848M.MpEmoRBCkhthuz2hj6jj318/319iBYK', NULL, '2018-12-18 15:55:24', '2018-12-18 15:55:24', NULL),
(145, 2, 1, 'Aman', 'amankaushikkannu@gmail.com', NULL, 'Agra', '8533912463', '$2y$10$IT4Ae.VQdtDW3bVjP8B01uEagFdk8DYoRbNgnXCRuPq7V.flgZtKq', 'rNRw6ZYPwxMb8Ks9u7MwHcOByWO1KwrfU3NW5QkAbvUcRpnekT8ajnRa9iyf', '2018-12-20 12:11:27', '2018-12-20 12:11:27', NULL),
(146, 2, 1, 'sgdfg', 'sdfgdfg@dgdf.com', NULL, 'Chicago', '3124984652', '$2y$10$gnsrAcA7HPvV1ck4I5BX4eAVihx95/1qMPuKdzp.zDJkwrZmdtRDe', NULL, '2018-12-20 15:39:20', '2018-12-20 15:39:20', NULL),
(147, 2, 1, 'Praveen', 'praveenkarn.sonu@gmail.com', NULL, 'delhi', '9136185424', '$2y$10$zPOTQLKI7lBZYbYdZ80XGOTijsoNaEKfNF6OmFuAJgNlHHBe9uYeK', NULL, '2018-12-21 05:15:39', '2018-12-21 05:15:39', NULL),
(148, 2, 1, 'VIPIN', 'krishnan.vipin95@gmail.com', NULL, 'Manama', '39602777', '$2y$10$7JkPmmF305x32rqBsty3l.E5Cy5RQl/xNwo3Nwp2XDMT9eaeE8yla', 'wXspSdaRoHAxeCDTCpGE3c5EWK9Ig3EliZevLwe7z4WyjX3CGxuy2YT7cRqC', '2018-12-21 18:32:54', '2018-12-21 18:32:54', NULL),
(149, 2, 1, 'goawebdesigner.com', 'goantravels@gmail.com', NULL, 'Calangute', '7030620980', '$2y$10$zB3D.0QoVVbPWVojx.B4wO8b4WIpVutPEtii/ezGNNJ0jetCmFOiG', 'dpR5cMTaCfDXCafe5R24usY6vmxg24nUBEbNGVrlJccvaqI86Tqfu2Cwug2r', '2018-12-23 18:11:49', '2018-12-23 18:11:49', NULL),
(150, 2, 1, 'Zeesahn Shafiq', 'zeeshan.mshafiq@gmail.com', NULL, 'Atlanta', '03323167487', '$2y$10$O/xDsw1CEX/tHYQMRkGEqetjlpfabEfDcdpOZXb24RHb5wk0o5v9G', NULL, '2018-12-24 02:44:09', '2018-12-24 02:44:09', NULL),
(151, 2, 1, 'Flavio Conca', 'user@email.com', NULL, 'São Paulo', '(11) 9814-03007', '$2y$10$g7DzQfHy5MGD9Y7ul0YmceIeuskB/iPLsA5Ub.4jvkQwlxfCzArd2', NULL, '2018-12-24 09:24:58', '2018-12-24 09:24:58', NULL),
(152, 2, 1, 'Asish das', 'dasasish07@gmail.com', NULL, 'Bhubaneswar', '8114361763', '$2y$10$wXMIQvKJJQhZLSsKJB3.U.CBS7Ht/86gVbwqanSIn9DtJfkPuU4m.', NULL, '2018-12-25 17:08:22', '2018-12-25 17:08:22', NULL),
(153, 2, 1, 'bhai', 'ji@ji.com', NULL, 'boston', '508859859859', '$2y$10$ROlCcObl8RWouZRcpX0EKe0AdXreIS3BB1ZOrlVEsnyfAiIdD/2QC', NULL, '2018-12-26 15:09:37', '2018-12-26 15:09:37', NULL),
(154, 2, 1, 'Matheus Reis', 'matheusviniciusdesousa@gmail.com', NULL, 'Porto Seguro', '86995976564', '$2y$10$YjXBdvyZ2ohKXlPKobdQz.iktLMK04mk3SmTI92uDzlIMBbblwOJa', NULL, '2018-12-26 18:25:36', '2018-12-26 18:25:36', NULL),
(155, 2, 1, 'Hebron Gift', 'gifthebron@gmail.com', NULL, 'Dar Es Salaam', '0687029104', '$2y$10$MVaWp.RgO2Eh0bXSAJ629uOyyQaiB7HZNHjKmRoPLNQDHBGTKxtN.', NULL, '2018-12-27 10:38:35', '2018-12-27 10:38:35', NULL),
(156, 2, 1, 'ASAS', '123@gmail.com', NULL, 'BHOPAL', '7724867636', '$2y$10$hBFLsd.Zzy4UdUtmaIw6qea.V8U/vrxPC05suk.AlcLLfNnea1CJG', NULL, '2018-12-27 14:46:12', '2018-12-27 14:46:12', NULL),
(157, 2, 1, 'Levent', 'levent@lece.com', NULL, 'Trabzon', '05340000000', '$2y$10$r0rKSbLZpn0sncS.XNBTCOluv3fYt0ClwWjse3EFebh0N6gWdziZy', NULL, '2018-12-27 17:02:22', '2018-12-27 17:02:22', NULL),
(158, 2, 1, 'Carlos Rene', 'verkentfotogffffffrafia@gmail.com', NULL, 'aguascalientes', '07955381161', '$2y$10$XN8WQa.p9YR5mbrWh7k3TeHVwu9.6hGvFedN5i2gCdM52O08w7yKe', NULL, '2018-12-27 21:53:43', '2018-12-27 21:53:43', NULL),
(160, 2, 1, 'junior', 'mycompanyrd@gmail.com', NULL, 'sss', '2345678', '$2y$10$tODNZSWIBNdo7MVFHo./2.n8zWFFCXx69gxIaX0Sfje9IQYh6DHMi', NULL, '2018-12-28 13:20:15', '2018-12-28 13:20:15', NULL),
(161, 2, 1, 'Ercan Jalil', 'ercandj@gmail.com', NULL, 'Edirne', '+905366652490', '$2y$10$OpDG4J2IRdgXmtQE19p9iOSEeUUFWuI02o3h.OWwZd6oVyHFtRKmy', 'dkupkM1UDniztKLcQ8bPW9vkToLYzHNACB2VYDXk33AN9ENAfbbmxpheQlQG', '2018-12-28 14:12:07', '2018-12-28 14:12:07', NULL),
(162, 2, 1, 'Md Arefin', 'arefin2k@gmail.com', NULL, 'Khulna', '0191288888', '$2y$10$ZttpWEGwBi/NhwZMswW8J.d6J8.Burq/LT2Phruz0ELfBpEdpFSgS', 'Ppien7f88DB6LvnJnhtwfzRU8BIlP8vZBpHTsytA98vFFAWkQzTJpjLacGTB', '2018-12-28 22:35:14', '2018-12-28 22:35:14', NULL),
(163, 2, 1, 'Asd', 'nafzaydn@gmai.com', NULL, 'Jkjgh', '567899', '$2y$10$2NZNJVtE02fD95HY/WIG9OO4crn8n3VTakZwKDBpGEku4Me3pyrRO', NULL, '2018-12-29 00:24:57', '2018-12-29 00:24:57', NULL),
(164, 2, 1, 'waranugraha', 'waragham@gmail.com', NULL, 'yogyakarta', '085701362005', '$2y$10$GDlbrodD.t7M4uCwuO871eoKBbuDYEOPjfso9CSwUuzV/DaYCsQUi', NULL, '2018-12-29 17:31:40', '2018-12-29 17:31:40', NULL),
(165, 2, 1, 'grb srht', 'grbsrht@gmail.com', NULL, 'qweq', '123123123', '$2y$10$udUaTtI.RwVYvHjt9Eld7OlLA.ZzYMmURBqjYmGxnB/4K5rupPAWW', NULL, '2018-12-31 06:14:08', '2018-12-31 06:14:08', NULL),
(166, 2, 1, 'huihih', 'uihiuh@hihoiio.com', NULL, NULL, NULL, '$2y$10$gQly9Myp5ICMhexqKwiwvu8N3uMwagaLz61yYpyubZ2/3ILdxucJO', NULL, '2018-12-31 22:45:03', '2018-12-31 22:45:03', NULL),
(167, 2, 1, 'Fiqi', 'fiqi.afui@gmail.com', NULL, 'asd', '123123123', '$2y$10$6pDeH./P17IBxBiDLTxhr.D/cTmduyv2924mARFQBYmTWHP2gVteS', 'tfD4ANIwunyEWXCsMuRpsDAnxbL88im0Xv1nkh5FJnJNviT6z5dLS2oxtmUc', '2019-01-01 13:24:39', '2019-01-01 13:24:39', NULL),
(168, 2, 1, 'Ali Kibirige', 'admin@example.com', NULL, 'Boston', '0754124551', '$2y$10$5tU/qVrKtQf.65vofsEDfetO.5vU62jFN99pBNpnjQzEgu8KIRrke', 'MNUUWtO2k1dIodJqarP0p5jEzvYP4sNIGNx7CZZNE4vPJQbHzqJYJMXpODQZ', '2019-01-01 18:08:46', '2019-01-01 18:08:46', NULL),
(169, 2, 1, 'Simen Aas Henriksen', 'hei@simenhenriksen.no', NULL, 'MJØNDALEN', '405 56 168', '$2y$10$w5HAJ/I7us02.HmvmIUTiug0qnzceK32rzd5sZAjwtMFGmVQ3yTAO', NULL, '2019-01-03 02:19:03', '2019-01-03 02:19:03', NULL),
(170, 2, 1, 'test', 'nayrevil@gmail.com', NULL, 'test', '12345', '$2y$10$5nGVav0Lmly102dOA2JDneR9WEAJki.8HUzjRbS.GcfsOT1CX0x8K', 'd2Rmw0BH8R0pOFb0s5faUMwOvb1Mg23eb1elhggsQ4i2fLVYeehfKRiCk7qg', '2019-01-03 06:11:48', '2019-01-03 06:11:48', NULL),
(172, 2, 1, 'Test', 'test@gmail.com', NULL, 'Al', '548697451', '$2y$10$QpoqxigNtCS.rPXdEZV6uewfAKc5TCNHJJ3ybqXwjj4V/v07TvnW6', NULL, '2019-01-03 19:44:29', '2019-01-03 19:44:29', NULL),
(173, 2, 1, 'Alex', 'Alime@gma.com', NULL, 'Auckland', '22222222', '$2y$10$Iy3o0bPXBAMFgSkWLZAfYOHMA12JvRhCoYzjYbvlFJqoi4jSOyGBy', 'lVJtDdsoARZ89QSM6jejl4LhMpoCYAjqWKQ9z8IbCBWJrkLW8DcZn14qScq9', '2019-01-05 09:52:20', '2019-01-05 09:52:20', NULL),
(174, 2, 1, 'washiley', 'matthew_william29@yahoo.com', NULL, 'Salt Lake', '1234567890', '$2y$10$MJXXRvWk.f//I0qbky.rH.oBHkmkAbI2zvzy38kIJMvBU1JLpiona', NULL, '2019-01-05 16:35:31', '2019-01-05 16:35:31', NULL),
(175, 2, 1, 'fgjdfdj', 'fsjhfgj@gdrhg.vb', NULL, 'fjd', 'fjdjfdgf', '$2y$10$fPARLXeSFTcua7SnguOFSOsGy9mlitPAxTfEJvL1uOp.LLmisje26', '10oFpbXA2csDh6F0qHJhnE3BLr8OCkaRxuEB7L7efP0XYOS8YMLeXNeRxDGa', '2019-01-05 17:52:41', '2019-01-05 17:52:41', NULL),
(179, 2, 1, 'othmane', 'othmane.guti@gmail.com', NULL, 'Casablanca', '0675401772', '$2y$10$8zeaSBqJ0y8k0PHmp/B.rOgdb4oezE2KygBK7LAXRMIB3wrZbK56y', NULL, '2019-01-06 05:38:57', '2019-01-06 05:38:57', NULL),
(180, 2, 1, 'Cihad Ekber AYYILDIZ', 'cea@hotmail.com.tr', NULL, 'Muğla', NULL, '$2y$10$4HZ2QHZa7KdwcgUKI9oR0eZf8wWnAoTuUyeJo6t1OtbtoAc0N2/gW', NULL, '2019-01-07 07:47:54', '2019-01-07 07:47:54', NULL),
(181, 2, 1, 'D', 'de@inbx.lv', NULL, 'R', '22', '$2y$10$f/b.anHe5Z9x3HXJm6E82ugCtk/hwepmdfXcvr1LWrcEMS/YxFNBG', NULL, '2019-01-07 12:48:15', '2019-01-07 12:48:15', NULL),
(182, 2, 1, 'Dung Le', 'lechidungvl@gmail.com', NULL, 'Quận Bình Tân', '0939598926', '$2y$10$49468tjMBskW76rKs3jipecOLuOYj8T34cnUlYxyHELP.8da3.dEy', 'FIxG9np3TYFcJe80wn4rWvmz4gbStD9FDRoUHKZD88UzaigFtCLbA49y9Uzi', '2019-01-08 21:17:14', '2019-01-08 21:17:14', NULL),
(183, 2, 1, 'T CHANRAKUMAR', 'a@gmail.com', NULL, 'WEMBLEY', '02081236458', '$2y$10$IoOGIHN4C1brEo6VZsOmOe/coEwWPUT6MHuAej5YdSdvAalYEos.i', '6wuVHrPiwVFBMIPwuP6SwL3sDiRtld8qyVZu4lyg2rbOLLBqm20Noi5AgkqA', '2019-01-08 22:20:00', '2019-01-08 22:20:00', NULL),
(184, 2, 1, 'gungun', 'gunsmedia1@gmail.com', NULL, 'jakarta', '081212747491', '$2y$10$eeIvTWQP/DmsfgSjeY3XNOmzvAvY3TVrzDuqBmVG1cwC1DjlWJw.u', NULL, '2019-01-09 07:29:57', '2019-01-09 07:29:57', NULL),
(185, 2, 1, 'Shubham Sindhu', 'sindhushubham@gmail.com', NULL, 'NEW DELHI', '8527676907', '$2y$10$Cf1S8PMD.gPxJj7V4K5TfOP8YyT54S46dasUDwAsOJYPVTERgw.FO', 'XCQrPywOgCTfkRgnZmmxkOTYNiFUl35GLv7DSqqUG1pF2AIyIwijhd8wz8uO', '2019-01-09 10:30:49', '2019-01-09 10:30:49', NULL),
(186, 2, 1, 'cvb fgh ghjn', 'a@aa.com', NULL, 'asdfasdf', '6666666', '$2y$10$xK/XJTuoZ0.FBCpVOhu1R.vl6JxXdY0C08YpkgA4zBJ9kdMj5ntGK', 'NcyDgRSVq8hRsUwv0L5Q0GZLjhnwXMiIluwZGmuS9nT0ICZgdarxpoKzexR6', '2019-01-10 22:09:47', '2019-01-10 22:09:47', NULL),
(187, 2, 1, 'Thakur Silwal', 'tnsilwal@gmail.com', NULL, 'Boston', '789462', '$2y$10$013C.RCO47WJo9LaBV8tZ.LiPDk0AH465Hf3lEmXs10z6RL1iS5ay', 'pM855sB6FC4Y0WhVkyRuQQwHzkkWoFtTDmj6bnrTSPIcAcwzdWzU6PSS6XO2', '2019-01-12 16:28:55', '2019-01-12 16:28:55', NULL),
(188, 2, 1, 'Matheus Reis', 'hospedaservers@gmail.com', NULL, 'Parnaíba', '8065391192', '$2y$10$kwGvbc00GFQW0y1sxHCPues3Jco4n.7hmdoJOtXY8yZSrXlFFxBEi', NULL, '2019-01-12 19:05:49', '2019-01-12 19:05:49', NULL),
(189, 2, 1, 'utshab bhetuwal', 'utsav_bhetu@hotmail.com', NULL, 'kathmandu', '9841969727', '$2y$10$vTMZwfplzX8gZWGbQZ806.htc.3Dv5GfSN4eHhrTj.W1J3.9/Wete', 'KZKXt6cvvKHXapq9whVpt3oAMwcA2m3gkwVYcMS8auFARsDlrlmIoyhPGXVD', '2019-01-13 09:15:11', '2019-01-13 09:15:11', NULL),
(191, 2, 1, 'Pascal Hefti', 'office@pasdfdffd.at', NULL, 'Bludenz', '06601993513', '$2y$10$Vg0HrOyJMHcpJSgFunLMEu5KSbje31gvLWicME5OTPGPObucVWany', NULL, '2019-01-14 12:52:41', '2019-01-14 12:52:41', NULL),
(192, 2, 1, 'BARIŞ BİBER', 'baris.biber@hoopsdigital.com', NULL, 'İstanbul', '05327930817', '$2y$10$6c.gi0zN2Ybm2HaChHOJy.7FChf7UvoQmZLyCvT/WAPeApDNj9aCe', 'P8SaiV6olKBeBej67BO6gWsYBLWf490d00xl5rDOnC74CinIG2uaaLzwWxzG', '2019-01-14 15:12:56', '2019-01-14 15:12:56', NULL),
(193, 2, 1, 'Ramharu', 'ramhari@gmail.com', NULL, 'kathmandu', '456552', '$2y$10$7fepgrFHcJRc1881VS2VDuXAkJFIgU1ZygHv8/RMZ35dd/yPrWgPa', 'KiWWJJMY6rX9LX3B63mCZTJrZR7pkIuGY2dHiQSFfi0E3tFfUEnOtIxbQCkL', '2019-01-14 20:29:14', '2019-01-14 20:29:14', NULL),
(194, 2, 1, 'uuu', 'uu@gmail.com', NULL, 'delhi', '7667766767', '$2y$10$cjPbUCzdYjEOPXKgdH96Y.m6liHcpEEAEZZR8oxPzShml82T3fWzG', NULL, '2019-01-15 10:29:55', '2019-01-15 10:29:55', NULL),
(195, 2, 1, 'khai', 'izzuan.jamaluddin@yahoo.com', NULL, 'SHAH ALAM', '0127925411', '$2y$10$NnQLuOx1WrzctYo77sNA1uoc0qIbhfIx1gVD3GoepKXAaekRqrxj2', 'NmSh92SqjJaVWpApfLITYcQnwoUFsYmZfvuOlHEwTis028kmj82IothslWbc', '2019-01-15 10:44:50', '2019-01-15 10:44:50', NULL),
(196, 2, 1, 'nitin', 'nitinprajapati2002@gmail.com', NULL, 'new delhi', '8800881080', '$2y$10$1b2ujre136sOJzbnSb7pSusAIhfLvrqgFsPOUFn30hAf..xJd.RAS', NULL, '2019-01-15 16:45:32', '2019-01-15 16:45:32', NULL),
(197, 2, 1, 'Md. Elias', 'mdeliasregister@gmail.com', NULL, 'Rangpur', '+8801722987160', '$2y$10$eoPIZ8Sq54iryq3gEDdgfOrBN0hmbSvkhv18NA/ThKwoFP4b.AndW', NULL, '2019-01-15 18:50:03', '2019-01-15 18:50:03', NULL),
(198, 2, 1, 'sss', 'ss@g.com', NULL, 'ddd', '22222222222222', '$2y$10$1RXF7j9GUw8VKUZdxqDLXeCMiL5h9C/k0Rk1VX2Qtfrgm7M9e27oa', 'Icr9FhACQnyXxiNz3PdSqtpPYVLvmcF7NGpp9VGvVZHm6TsWWUEoNnc7SnR6', '2019-01-16 11:35:42', '2019-01-16 11:35:42', NULL),
(199, 2, 1, 'Hj', 'fxmarketsltd@gmail.com', NULL, 'Chicago', '5899', '$2y$10$K28ALhiyBfGbEPfIgWxEF.SfFhiOiDhpp3pDUv6rnTgwPN38VMUJ6', NULL, '2019-01-16 17:53:01', '2019-01-16 17:53:01', NULL),
(200, 2, 1, 'Test You', 'test@you.com', NULL, 'Test City', '0018321113242', '$2y$10$38w2OR6PSVFiERoCotHEVuEQkSLOBXz6At81CN.tq.xdxWALwH4za', NULL, '2019-01-17 02:00:18', '2019-01-17 02:00:18', NULL),
(201, 2, 1, 'fdsfsdff', 'fdsfsdff@live.fr', NULL, 'fdsfsdff', 'fdsfsdff', '$2y$10$joL.EWuIn639oe8Kpoerqu4njgm273Md7K/iJtAN5HTarDjOlTOka', 'f5mPj8vMszbfcgEqE4s1sLywVwarNibbhNhrfdJDPoLdwPTS0YoRyWgTaL1P', '2019-01-17 06:16:43', '2019-01-17 06:16:43', NULL),
(202, 2, 1, 'jdjdjrrejdkms', 'anyakorasomto4@gmail.com', NULL, 'Karu', '888559595959', '$2y$10$4atePShslEmpF6a2.3SYZOyTS6jvKB6ADvl1dNA9DmbUqrWqpHfi6', NULL, '2019-01-17 20:20:57', '2019-01-17 20:20:57', NULL),
(203, 2, 1, 'Singamn', 'singam@gmail.com', NULL, 'Vavuniya', '01245125', '$2y$10$.nCJBf0vMor9pu9y4zRoAeGvKpFMr3G7FfZj52z6GW30ptakrO4uu', 'TmHoer9TnAgMKwfJ5Izsr0z5qI8agMso9xYQP7ZHP2CO4yye1eunO6c7Rbpd', '2019-01-18 09:55:24', '2019-01-18 09:55:24', NULL),
(204, 2, 1, 'Basel Safia', 'baselsafia@gmail.com', NULL, 'Amman', '798310891', '$2y$10$QklkN7AYJdeD/qmlweznv.h8VMOP5tXNtHk/uFHYNtPuOH.0lOvvC', 'cJIVq6LTNkTWiUiMKCCHqGtltrGxFoUK8UBZcCW2wgfJAFafrOZiPkXbK8Le', '2019-01-18 17:56:05', '2019-01-18 17:56:05', NULL),
(205, 2, 1, 'saad', 'saad@gmail.com', NULL, 'lahore', '+923174014433', '$2y$10$nDdl/ohLnOvyt8cvD4kDFOFKqGvc.UPk9yn0jayWpIHiiG3XMpol2', NULL, '2019-01-18 21:27:00', '2019-01-18 21:27:00', NULL),
(206, 2, 1, 'testuser', 'test7869@test.com', NULL, 'Test', '123123123213213', '$2y$10$.AUVgm2zL3rgie1wx9myYOkhP35z5APkzSaKnhUiDt1s.erqEWk3q', 'XTVYfcpXMnVRB2h9AcUtoz9FY3cIsxjBLORc3ReQhtDinkv6J80SAvinBDxE', '2019-01-20 12:04:58', '2019-01-20 12:04:58', NULL),
(207, 2, 1, 'askldjasl', 'laksjdlas@gmail.com', NULL, 'as;dkas', '2190312903', '$2y$10$vKE/1dVbTk9DMZv6Iq5rUucwDwHi4e2Q9tKFc5nlLaEAXUxhASeHq', NULL, '2019-01-20 12:34:13', '2019-01-20 12:34:13', NULL),
(208, 2, 1, 'Reem Sbeih', 'reem.sbaih@gmail.com', NULL, 'amman', '00962777794752', '$2y$10$lIX2Gbq49X1/sV3qQQBi7urUYm0suxMRsppoLyL/bRndg1EEhGxdy', 'yM8CGBUZ7ID4YCXRbLc7SX8VnuMPFT0oAX8br0iJlwwzukP14GaNeOP52S26', '2019-01-20 20:07:02', '2019-01-20 20:07:02', NULL),
(209, 2, 1, 'FARHAL', 'k122025@nu.edu.pk', NULL, 'sdsd', '223', '$2y$10$yLqKDmoYlHjt4yzYHPyIFu1PCk4eDx7RdpdA.CawqiAgMxnHD6Ev.', 'gVILUQH3WB9UyhZmBzUVzpa0rCfFkyGFUhajFsxbW7xK5AEF7Fzldolpbi3W', '2019-01-22 10:45:31', '2019-01-22 10:45:31', NULL),
(210, 2, 1, 'wahajkhan', 'wahaj_khan786@yahoo.com', NULL, 'w', '033213', '$2y$10$.YqxxUwGem/.dQOjbhBAmO1f5UqFH3Ns0k4jNNCfIkmtoEE/ksrdK', NULL, '2019-01-23 17:43:25', '2019-01-23 17:43:25', NULL),
(211, 2, 1, 'jhon xtreme', '3xtr3m3.jhon@gmail.com', NULL, 'Las MATAS', '643089257', '$2y$10$vJuw89nxz0c.tO4Dp2FyAOw3iwM73hnAX1R0zatA0LYVtE2RXAWci', 'w8sE0krRNwCVvCqqa0zFj8kM8sGS1Sb2PDlef4pyyIcMRpcQM2flHeS5wqwl', '2019-01-24 01:04:35', '2019-01-24 01:04:35', NULL),
(212, 2, 1, 'Ahmadou Bouya Diaw', 'ahmadou.diaw@dgconsulting.biz', NULL, 'DAKAR', '+221 0774559671', '$2y$10$AjI9eCD9qaSay5lNe23wseuD5zNvufhTkk6f5TRmnlkuo3rf7DQyO', NULL, '2019-01-24 17:12:20', '2019-01-24 17:12:20', NULL),
(213, 2, 1, 'rick', 'rick@jimmyjohns.com', NULL, 'boston', '3215555555', '$2y$10$Spv94sFom5phaB.8wqAOau2svMqtdIVYTcAWj.fOI/TmMAtSWRsdq', NULL, '2019-01-25 01:42:56', '2019-01-25 01:42:56', NULL),
(214, 2, 1, 'paytm', '0amitmishra@gmail.com', NULL, 'Bhubaneswar', '9090565875', '$2y$10$6qs.lrgtSOOW1sxzLv/YM.H8guKoy8kJM.nEPZgS/qNyYNX9HjlLK', '1YHFItrn2VttbA35hlKZRCc7oXA22rTrWWGBmdYbSnU9XizujgRaotzxHXqe', '2019-01-26 09:43:51', '2019-01-26 09:43:51', NULL),
(215, 2, 1, 'James', 'jj@jj.com', NULL, 'Brisbane', NULL, '$2y$10$sOqBPjnQEmuPNo2sH9pGD.bHKfx3PML9j9XYYNEqM8JTHxu0SgaFa', 'Ytur5B13xxjTZ94peeCLzECurXFZDlUslIGzKdR3uzqfBw11PAHzTtaGqTQj', '2019-01-27 02:07:32', '2019-01-27 02:07:32', NULL),
(216, 2, 1, 'Carlo', 'nina@gmails.it', NULL, 'Roma', '000000', '$2y$10$JlqRNV4D/raNA5OIm7hzhuT8vGMntzejtzFy3V3po99Qg3TlFjWne', NULL, '2019-01-27 19:48:47', '2019-01-27 19:48:47', NULL),
(217, 2, 1, 'novko', 'novko@abv.bg', NULL, 'dasd', '646464', '$2y$10$4pz1ejTznULOoNB9w2zstOkLU5WYnz21gHiv4dXRh.WvYxAfUWf3W', NULL, '2019-01-29 00:17:11', '2019-01-29 00:17:11', NULL),
(218, 2, 1, 'CLEOMORA MOM', 'mosra@gmail.com', NULL, 'PH.DEI THMEY/PHNOM PENH THMEY,', '12855901', '$2y$10$YcJ10Rda5y6g.11k.TS4auMoFuPxamP6RRS70MWamkPPVdQDefgZu', NULL, '2019-01-29 14:27:11', '2019-01-29 14:27:11', NULL),
(219, 2, 1, 'MOHD FAZIL SALIM SIDDIQUI', 'rbhadavkar@gmail.com', NULL, 'MUMBAI', '8779111679', '$2y$10$WLPVjf3QRgnqU.O7IOutj.hL9qYTjZ7Src6Zey9FdArMaN4ZOBfNO', 'BDxSE5tFtfCwndw6QCg2PXJ1tFP5TmjrVgFJDZHn0m1d0krbn5LO2FFnrDoZ', '2019-01-29 18:44:28', '2019-01-29 18:44:28', NULL),
(220, 2, 1, 'Abdourazak Hassan', 'abdourazak@bricocarconcept.com', NULL, 'Djibouti', '77113842', '$2y$10$lvSSMbCqXkEEqaLTN06i7eWqDOzYB2VzFLq.CNJqd8lFBlywp2BoW', 'SWxNSmhJapLMfMc6sOl1ATGr38G2ukviJYOrgMSf09WZeLEtCc1adH9mRjkS', '2019-01-29 22:41:47', '2019-01-29 22:41:47', NULL),
(221, 2, 1, 'mohan', 'mo.pi@yahoo.com', NULL, 'nan', '8300190006', '$2y$10$JEKHKmHCDyAzP8Bo9mbWbOX.XJy48YxHO2UEM61segl8xS7KaM/Sa', NULL, '2019-01-31 11:32:23', '2019-01-31 11:32:23', NULL),
(225, 2, 1, 'TEST', 'TEST@123.COM', NULL, 'BHOPAL', '123456789', '$2y$10$w3KYf2w7VT3RcPb0no8f5u6JJELx1MByqt3OQ1A33fQMUh76zQNtu', 'qWh0fG7JNL7JPiSM42ubdG0yB9foj1Jr3zkTQZp2VXep0XP1Y0JD42DXCfn1', '2019-02-01 10:58:48', '2019-02-01 10:58:48', NULL),
(226, 2, 1, 'SSD', 'ssd@gm.com', NULL, 'Bhopal', '888888800', '$2y$10$ClVwSDT1mNgodIIG7PtjW.3sRN7e6YnIOtmldmP/NOBwhI4IuhCjO', NULL, '2019-02-01 11:08:21', '2019-02-01 11:08:21', NULL),
(227, 2, 1, 'Sanjay', 'sanjay.yadav1003@gmail.com', NULL, 'Bhopal', '9893191291', '$2y$10$XGPYjUUsxQCH7kYPnET0LepHKeJp.AaWFgcSXP3ZYzhy/FKCNJenW', 'd8Z9XUBEmxnecVO1SvLQn5cs5BwESYwpHiwbeq5YnB0SMSDe37POxmzHCsyc', '2019-02-01 11:20:19', '2019-02-01 11:20:19', NULL),
(228, 2, 1, 'tewtwe', 'ete@ete.ete', NULL, 'tee', '1212412', '$2y$10$ooHY2cS3RtHh4v3AwwCHbervYTwnXfLuCABu6B6iX3Z2Z1b/99/Uy', '0NeDDlFGmsQ9TEUwv0LPjGlXgdZQTixhvOZ3qYqcomBT9exiQQ3yaoBy9Uo2', '2019-02-02 06:41:53', '2019-02-02 06:41:53', NULL),
(229, 2, 1, 'yair', 'yairzapata@hotmail.com', NULL, 'medellin', '32154', '$2y$10$SY04s5a.1W9BBm/omOE0FuLP2Tf0m3pyaeKHSv63zI4sJs50zSFWC', NULL, '2019-02-02 21:20:07', '2019-02-02 21:20:07', NULL),
(230, 2, 1, 'Kormoran', 'jankowalski@tester.pl', NULL, 'Opole', NULL, '$2y$10$X2/wx/7mpBnGgOlhNYhNO.E4QeNpELOz8tKBanhzyjq/r6Oa70qv2', '6hKHpWPTNeYzczSZoqEQZ997654usuaJAONoVobt3UhlFSRc4kVHv7WRXTuj', '2019-02-03 05:13:33', '2019-02-03 05:13:33', NULL),
(231, 2, 1, 'mm', 'Samuel@gmail.com', NULL, 'bbb', '7777777777', '$2y$10$sk9aOgFLjXFfP52DuHsLvOUfRc8ZfRKYT7bqREac/Kh4T6pPaWiG6', NULL, '2019-02-04 15:54:35', '2019-02-04 15:54:35', NULL),
(232, 2, 1, 'a', 'a@a.com', NULL, 'admas', '949193913', '$2y$10$SxdOltUpVHiCHTElx7JvuO9VCI/s2m.D4Cs/eUOnQPslU7NMVELoK', NULL, '2019-02-05 00:52:18', '2019-02-05 00:52:18', NULL),
(233, 2, 1, 'vict', 'sdas@mail.ru', NULL, 'asd;lk', 'sdlkfjlka', '$2y$10$vgOFh4yx0aeHPSv73W8h3ODbVfdyWXTfyquf0KkEXkwte1ard8jMS', NULL, '2019-02-05 16:22:02', '2019-02-05 16:22:02', NULL),
(234, 2, 1, 'tytrytry ytrytrttt', 'ertertertert@xn--rter-uv7a.etr', NULL, 'agadir', '202020201', '$2y$10$n/5BpnRA6y0IWpjaiGd.YewzrF/Byq1jWW1qrU1Iq9gClOqlBtm7G', NULL, '2019-02-05 19:55:47', '2019-02-05 19:55:47', NULL),
(235, 2, 1, 'Ahmed Basheer Kharsa', 'ahmadkharsah@hotmail.com', NULL, 'Alkhobar', '502546610', '$2y$10$nte.ibqfuYIFYOeg1Zwio.HBoGXevHqi88dtRtzn5Ba0nS2m2fIkS', 'TXE957l70NkRIE6ij2LunSDM4FcsqulCEFheVEHuOzgjeSMtGQqGIYZgdGsF', '2019-02-06 13:53:55', '2019-02-06 13:53:55', NULL),
(236, 2, 1, 'hatay1 hatay1', 'aliaslan3107@gmail.com', NULL, 'HATAY', NULL, '$2y$10$mg4zH/gYzLTNSPadkkbsVeUu2jJJxPkoGrw3KpJkWrGd6/zih88ii', NULL, '2019-02-06 21:17:50', '2019-02-06 21:17:50', NULL),
(237, 2, 1, 'Rajus', 'ffjgr@kfjdjg.com', NULL, 'namakpppp', '9847587458', '$2y$10$ytJUICUhll8oweR/bZsJf.fmz2OwVA8mNUQczb9XbGPc6cSjzoyiu', '7Vftj5p8Q1tFdOYZ7qOwh30J6I03pG12na7RBR376cHVSJkLXMnLgEfgK0QW', '2019-02-07 11:52:24', '2019-02-07 11:52:24', NULL),
(238, 2, 1, 'hng', '357fds@free.fr', NULL, 'hgjjhg', '56357', '$2y$10$Y03OpUdNKsZVKVeehccE6.Qte0a8K9KtAqKizRbWTT172z6S7.uRW', NULL, '2019-02-07 13:47:46', '2019-02-07 13:47:46', NULL),
(239, 2, 1, 'dd', 'dddd@jjljl.com', NULL, 'df', 'd08908080988', '$2y$10$/vdYsoJSLUa/tBq7dzgB2eOpT3Gi0fv0U6ZZNbwPhMFFWv3JWcsSS', NULL, '2019-02-08 13:57:34', '2019-02-08 13:57:34', NULL),
(241, 2, 1, 'dafadsf', 'e@yahoo.com', NULL, 'dafdfa', '09602589522', '$2y$10$Tlr2PnpF73Wi0mi3bRg5Z.IzCi5H8exk1pxL04R9V.dQdsS6FuZXC', '8W0XUUi2apnVwrQk7ZfUdio5QR8pgj8rSfVpMAx0v44WczTyW8FpCg6hkVmt', '2019-02-09 12:26:57', '2019-02-09 12:26:57', NULL),
(242, 2, 1, 'dsf', 'sfdqeasd@sd.om', NULL, 'dsf', '343242', '$2y$10$yQQPe6sNy2yTz3QZQQPYouYCnMorN8x8At7xQHwvAUpAtEYcMWCPu', NULL, '2019-02-10 05:59:04', '2019-02-10 05:59:04', NULL),
(243, 2, 1, 'zdfsd', 'fdsdfsdf@sfdf.com', NULL, 'sdfdsf', '64564564', '$2y$10$l.vva12yAEoeTzQmCFcHJOU9xKuYVmAuU/OUpDBaL6eTJtMvr.bK2', NULL, '2019-02-10 13:30:40', '2019-02-10 13:30:40', NULL),
(244, 2, 1, 'gail', 'cgetondo@yahoo.com', NULL, 'Bcolod', '09602589522', '$2y$10$zIaxAA0dSQXDqyI149qaKe5faljQSt4LM2uPJHzhMajeFScnK16A.', NULL, '2019-02-10 15:05:13', '2019-02-10 15:05:13', NULL),
(245, 2, 1, 'qaQ', 'sal.wa.7@hotmail.fr', NULL, 'QQ', '444', '$2y$10$CyeVB94rdJT7MRFFhSg.peVgZWYP7eqrM9nE536z3FrxxmqNsW17e', NULL, '2019-02-11 19:27:55', '2019-02-11 19:27:55', NULL),
(246, 2, 1, 'ken', 'kamondeg@gmail.com', NULL, 'nairobi', '254', '$2y$10$5L.u7HievGi3MhuUxXAdHOSwsU.x/6Ab79H.lA2apMQVQla8rLGLy', '7392YlIMzEMKooymtFZAQqcVcwn15qlfVBcgbKBdzBtPC0Ttyg24maGuj1xv', '2019-02-12 13:01:38', '2019-02-12 13:01:38', NULL),
(247, 2, 1, 'Liquid Adrenalyn', 'liquid.adrenalyn@gmail.com', NULL, 'Liquid', '123456789', '$2y$10$rJNiFsNoE8pNdopgo17zmO7pKfhq6Gsl7QYrzU3d78EuG9nUl6oai', NULL, '2019-02-14 03:48:22', '2019-02-14 03:48:22', NULL),
(248, 2, 1, 'grhr', 'greg@gmail.com', NULL, 'france', '0700000000', '$2y$10$ZG90tYEdYav7vzGzwSfXa.NaY4byRaYQXpkLYRSk.VNKOGnd2jfqa', NULL, '2019-02-14 13:42:52', '2019-02-14 13:42:52', NULL),
(249, 2, 1, 'kdsjfkls', 'hgh@dfgg.sdfds', NULL, 'SBS Nagar', '453534', '$2y$10$vs9K5ivdnKOZbLsom6QFRuXm64hqSf5d4oD78J6nyNRW8LFQcSdRS', 'coqc4cIZpx0qNWdYkp6cKxOty0gJw9zgAWDbW9QyzF6SOhu82bxFfg5xd6Cy', '2019-02-16 14:19:54', '2019-02-16 14:19:54', NULL),
(250, 2, 1, 'joe', 'hamza@movoo.us', NULL, 'Cumming', '627362732', '$2y$10$9vYaGxvs/MX5luAXe.T6CucDb.rMcm82QJstI2tcV.eYb7zHW7zlu', NULL, '2019-02-18 15:27:39', '2019-02-18 15:27:39', NULL);
INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `address`, `city`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(251, 2, 1, 'sdsq', 'sqdsq@sqdsq.com', NULL, 'dsqfdsf', '454545', '$2y$10$hCabA.m4izIBt5Qj7bYg0.9/gqBDzsDZKVpICBa1wI9fU3vxfdB/.', NULL, '2019-02-19 21:56:23', '2019-02-19 21:56:23', NULL),
(252, 2, 1, 'syahril', 'bajuhitam400@gmail.com', NULL, 'GURUN', '0135077314', '$2y$10$Cqss/eG1/2yvlkQFYt2cNulMtTjvGpqxQx9CaoIiIzwNRbmIwNBNC', 'wDFsjR3lBuxx4VFEaU87Nq2spIMdf6fAtJ4LkhqlsZyzzeKItu07TOG7Y87G', '2019-02-20 09:22:46', '2019-02-20 09:22:46', NULL),
(253, 2, 1, 'fizah', 'fizah@gmail.com', NULL, 'GURUN', '135077314', '$2y$10$zj8XwYHHrDlr9igwefLbSOiVIuesUqf10myflGCAH3JFfOpBl4Sca', NULL, '2019-02-20 09:28:07', '2019-02-20 09:28:07', NULL),
(254, 2, 1, 'yuvaraj', 'yuvaraj@kgf.com', NULL, NULL, NULL, '$2y$10$UCtx/UppWnOqE03C3lN9NOawGOrLcHqkAuHarlKAEiJszSb2ycyLq', '6HFEyhY1b73HuIqSYT07ZetyPI0OTwKPuZIs5JG0KJle9SONta1MulA7fVX6', '2019-02-20 12:53:43', '2019-02-20 12:53:43', NULL),
(255, 2, 1, 'Walied Emara', 'emara21975@gmail.com', NULL, 'Alkhor', '30463336', '$2y$10$pFHhVmbReZhoBUGbe0O/fO72ueqc7KVecd1D3/bJQNsRNt/RFEcQe', NULL, '2019-02-20 23:06:36', '2019-02-20 23:06:36', NULL),
(256, 2, 1, 'Mert Bülbüloğlu', 'bulbuloglumert@gmail.com', NULL, 'Doğu Karadeniz Bölgesi', '5438589761', '$2y$10$mWZ15FHaFllnBklBCEAw1.kHJGY3u6vkNpYAbXg9SITeh84BuOOFC', NULL, '2019-02-21 03:31:13', '2019-02-21 03:31:13', NULL),
(257, 2, 1, 'teste', 'cocas42@gmail.com', NULL, 'asid', '9459898459', '$2y$10$0gQP3f3lJnX5i1ey6F8xSuX3HNZvrVnw9EQdNa4VbkbvcQdlxUstG', 'WlZMjkwMm4Gx89xbOl5G9GCjmOLkARajPyDORnu7ppNm3fNzA35bEAUgN4vs', '2019-02-21 22:57:47', '2019-02-21 22:57:47', NULL),
(259, 2, 1, 'Footage', 'footagepoint@gmail.com', NULL, 'cs', '112123121', '$2y$10$9dRdas4YHiqTI7nRq88PfudI3F6IjExKFbeFPsGyv6aGcUbLoWxqO', NULL, '2019-02-23 13:36:57', '2019-02-23 13:36:57', NULL),
(260, 2, 1, 'mustafa qadoum', 'mostfa.qadou@gmail.com', NULL, 'amman', '785033772', '$2y$10$7qJTsFo0yjXQqczOzDOXDO0tZATeXE0AET9ZwSSnGgbzf.m57JEeW', NULL, '2019-02-24 21:55:55', '2019-02-24 21:55:55', NULL),
(261, 2, 1, 'marilena madrid', 'marcogold1@gmail.com', NULL, 'La Esmeralda', '+584243152549', '$2y$10$rFAUupfMzdXXev9dnz6lSOlvl5NsRYVeL1bcLrocv3SnkHZTh.qVC', 'PUBXWoynn7GAlunT6Gv3Bc6ycLfuuW2qu4VgOFBHIfeHY7qn8hrPgWzmxIxx', '2019-02-25 00:26:24', '2019-02-25 00:26:24', NULL),
(262, 2, 1, 'sdad', 'superadmin@mail.com', NULL, 'sad', '1212312312', '$2y$10$3v9LO3KU7RfBH7oPIPBF.uGmSSmRIuIED2BFAH1cxOTjBy7p2Th5W', NULL, '2019-02-27 05:06:32', '2019-02-27 05:06:32', NULL),
(263, 2, 1, 'Henri Joel St Baptiste', 'saintbaptiste.ralph@gmail.com', NULL, 'Omaha', '4028891038', '$2y$10$zAnczxbnBH.BcLC9oLwa7OZ6P7/pzpOnQMkbPlePfvDCFE0RF77hK', NULL, '2019-02-28 02:01:15', '2019-02-28 02:01:15', NULL),
(264, 2, 1, 'car rental', 'carrental@xpress-print.net', NULL, 'dueseldorf', '234135456', '$2y$10$u6tYtFGH5u2.6gI6ljAXde4zMrGxbklxkvPF3hAkaOTJ2i3oNP0/q', 'VvVt8GnUf2qDbb46YeQbGt56GotxhXT5eygFb4xUwGTCJTi3tOcIMgfi0qOq', '2019-02-28 19:57:53', '2019-02-28 19:57:53', NULL),
(266, 2, 1, 'dsfsd', 'omer19001@hotmail.com', NULL, 'adsf', '0176244443', '$2y$10$hTNWNpYdnOTNFVTcu2i1a.hJci7L4lz.59PCpU1yzTgr0.amuM.r.', 'tHzAl93oICnxIX3n6UW42FYsjIOb47t6a7GuUG3x7xM1riBzfYv11ycBOXP9', '2019-03-03 15:15:18', '2019-03-03 15:15:18', NULL),
(267, 2, 1, 'dfd', 'abc@gmail.com', NULL, 'fdfdf', '34343', '$2y$10$bTaiIm7QIXPRUvufUPk37OlTpGgsTyk1zae2BRMOuwenybpkwOy0C', 'QW2lzFB222RDxAAwS9ShbGepOernL51nO0t3FMvmma4NTD3Nh9euj2p8ikij', '2019-03-04 11:55:21', '2019-03-04 11:55:21', NULL),
(269, 2, 1, 'hcncvjcd', 'no@no.com', NULL, 'fgggfgg', '35466466', '$2y$10$sKuhA2y6r2Qgl8sqrJHrjexMb.G5EN.dJFoZYAW8khHCsrHAuIUF2', 'wniWJQbpCY8mFUlSsqOqzxDUXnO51bDKs2rhIXm4hv8WecHZietJzKHOW5JO', '2019-03-04 19:39:10', '2019-03-04 19:39:10', NULL),
(270, 2, 1, 'Kharl Gibran Lataza', 'klataza@litestockinsurance.com', NULL, 'Cebu', '+639993990807', '$2y$10$rJLxsKOYZaJy1xP4WQZ1cuF.4Zw5pLVqBbY7gS1ZBmbl07Zuyyjde', '5so5v7qI7RTGXRxoG8xebVcUdS4s5M3ACW1EI8rny3YtVk321nFm2mHS1zwY', '2019-03-06 12:35:16', '2019-03-06 12:35:16', NULL),
(271, 2, 1, 'Vivian Murray', 'z@sieutocgl.net', NULL, 'Memphis', '5104883841', '$2y$10$2txjtQ9UNf3qqGMiyPebmeKIYOf4N0a9tRTuQEdDLq53qtLin8p5y', 'kBJX0INVG5YvJpmPK9EWBEN2t5aATx5Bq98TvOq7evKYdmr5h0Uh1XaQGcxS', '2019-03-06 17:08:50', '2019-03-06 17:08:50', NULL),
(272, 2, 1, 'vffvfv', 'v@g.c', NULL, 'vfvfv', '123', '$2y$10$OaBbTWgd8CEmCX1LwpZQIOMKFJEIlhFmupyNj7aAUpVr4ReleXPAi', '2ttFNcpfWaFYjLxX86DjErmgFqrvU9wEOYOBwPr1xOIDCzcOWvGJupAHBf2Y', '2019-03-07 00:21:02', '2019-03-07 00:21:02', NULL),
(273, 2, 1, 'hafizz nizar', 'hafizznizar@gmail.com', NULL, 'Kajang', '0137927853', '$2y$10$6q/xP7q1ZMSFbk61fLA8mOUhW552uT/N9HhMWEfK8zn.avxD4nqkq', 'UJnuKK6shH2eaj2a6etyUk2Scf9zPKRStKxD0cUdcgKxjxU1zHgpHtLK0vtt', '2019-03-07 07:18:19', '2019-03-07 07:18:19', NULL),
(274, 2, 1, 'rgdrgg', 'rgreg@ada.com', NULL, 'sadasd', '4278733453', '$2y$10$SCU1Ay2D.3./qk3hq43F0eGFKip/HJjc.C.kqTjTA7uDEUfpygCpO', NULL, '2019-03-07 17:53:14', '2019-03-07 17:53:14', NULL),
(275, 2, 1, 'Hüseyin TUNÇ', 'spam@huseyintunc.net', NULL, 'Istanbul', '5465465465', '$2y$10$shjEVZWJentENPI8tSGXLuubhUGnq0qtgPlirGliMNHBqJg/RjXx2', 'seK99xhQQUGlJ1jkSpWo5EDJBToD1PmoBY8WTqFvVIVfP6lhjbxdqPIYHX0n', '2019-03-08 16:35:57', '2019-03-08 16:35:57', NULL),
(276, 2, 1, 'Alex Melodiev', 'alex.melodiev@gmail.com', NULL, 'Ташкент', '903551302', '$2y$10$VIzjCDOChST04QJh2jC8iOYWrXPdOwGMM.1KS2DABUVASDXUJTZiW', NULL, '2019-03-09 12:21:55', '2019-03-09 12:21:55', NULL),
(277, 2, 1, 'Maarten Kamerling', 'Maarten@gatewayventures.nl', NULL, 'Amsterdam', 'admin@istrator.com', '$2y$10$q0foB98JFFr/hqNKzU9dS.eeRZVWF4/sG4hyMDpvPNFHfyt/Dnjue', NULL, '2019-03-09 20:47:23', '2019-03-09 20:47:23', NULL),
(278, 2, 1, 'grtgbrg', 'gbgbdgbd@fhnfh.mnb', NULL, 'fgnfgnfnf', '4564564564', '$2y$10$b7zxwQ0/2pekiyjBm7wQzuNKrn61N0hOX9baZ1dZhD/OmFUVvU2s6', NULL, '2019-03-09 21:36:07', '2019-03-09 21:36:07', NULL),
(280, 2, 1, 'asdsad', 'asdasdasd@asdsa.com', NULL, 'aklsjfasij', 'asljifasijsaf', '$2y$10$wVDzJc4SX1UDEwg9.xvAbuJZwUYKGpKEAwMJVYdWFj/9RzazaTvIO', '8RZ2FXic0jws9XIJWVl1vI7bMcrakjSg9i0PP8vuzLTlrY5HAy8eBKMtCuao', '2019-03-10 08:12:39', '2019-03-10 08:12:39', NULL),
(281, 2, 1, 'Memek', 'memekbau@gmaik.com', NULL, 'Bogota', '738339', '$2y$10$.IyvzPtc4TMosTuhAo7h6OPAhiTQjDT0Xzd7y74Tfvy10BoLEXHgy', NULL, '2019-03-10 18:19:57', '2019-03-10 18:19:57', NULL),
(282, 2, 1, 'GMRentals', 'gavrea_radu@yahoo.com', NULL, 'Cluj-Napoca', '+40', '$2y$10$sW09CKSsittAaQ0fEU1qoeOTnM8HSFGwelhzTPH0UVhNNweAlr9vy', NULL, '2019-03-11 14:46:46', '2019-03-11 14:46:46', NULL),
(283, 2, 1, 'anna', 'manna@manna', NULL, 'manna', '12304465120', '$2y$10$JvklDcfWLgQOSzAFnXmRmuhb/5ofG28awhuQW8oQmXciGNTiqpZT.', 'i0tvoamJbKrTdA6ZbYFjcPqFGYASZ9lJQYiAMnddngODuvZwDRTNY9bknGJo', '2019-03-13 03:26:37', '2019-03-13 03:26:37', NULL),
(284, 2, 1, 'Manusha Wijekoon', 'manusha1980@gmail.com', NULL, 'pannipitiya', '758670215', '$2y$10$JDvVGqz3qpx1WTTxM7foEedD46EzgTDVaaJHHr2GHm6nhIKwr/OjC', NULL, '2019-03-13 05:17:01', '2019-03-13 05:17:01', NULL),
(285, 2, 1, 'Sami Abdel Razeq', 'sami.a@alissa-best.com', NULL, 'Riyadh', '920010116', '$2y$10$VMXK2Etg.YkJlauWk07CAuG2ir7hKU.l1Oxh5BsNpZgF9h1O236Ci', NULL, '2019-03-14 09:56:58', '2019-03-14 09:56:58', NULL),
(286, 2, 1, 'Saba', 'skhanskhan0021@gmail.com', NULL, 'New Delhi', '+918285932633', '$2y$10$mzSU3tTm0yak4B70waqf3usbJ6PyypPqK4wzXxCxjZwcXvwjsp/va', NULL, '2019-03-14 13:04:23', '2019-03-14 13:04:23', NULL),
(287, 2, 1, 'asdsad', 'asasd@gmail.com', NULL, 'dfdf', 'dfdf', '$2y$10$hnY64WaItNwPDEu4/kbMWuG9vrZ6SFoBprPFqKGREB98rXP6PxPfu', NULL, '2019-03-14 15:36:20', '2019-03-14 15:36:20', NULL),
(288, 2, 1, 'ggf', 'fedf@gg.com', NULL, 'gdg', '5555555555', '$2y$10$1xxXw9aiRjTO5WgunoOXx.5iVyUJcSeu21W4/R6cQfPPJ3K0JNo4y', NULL, '2019-03-15 05:41:23', '2019-03-15 05:41:23', NULL),
(289, 2, 1, 'test', 'test@test.email', NULL, 'testing', '0200302', '$2y$10$KjmjAhywiyqGgmT26Ow7IeVdjrGXo5.GTHRqmf6mBcCmJ3RB1hTjG', NULL, '2019-03-16 00:20:32', '2019-03-16 00:20:32', NULL),
(290, 2, 1, 'Nazmul Haque', 'demo@demo.dom', NULL, 'Dhaka', '01688138948', '$2y$10$CIXydJgEC3oYBDbaFwKc4.89Ip53g7NTyoJ1YUwhCTrvbJ2WJ6abS', 'rjA7FfRTaupV7S5rQ7N0i4ZEe3yNBq9GzeZXBHqPbaGKmSnliwr3x6ygMPXR', '2019-03-17 20:56:30', '2019-03-17 20:56:30', NULL),
(291, 2, 1, 'Musa ATALAY', 'musaatalay@mail.com.tr', NULL, 'İstanbul', '+905447434252', '$2y$10$6TygbBk0DiHND7uSmn2ciO5bhoP82o19w9OARKk0Agk8Q72T3zjui', 'iAjnyQIKLI6E7BmGuQIX4RM4H19DYHtRhbe96MzBhDsVmMXyrBmF94zhmBtm', '2019-03-17 22:13:39', '2019-03-17 22:13:39', NULL),
(292, 2, 1, 'Anastasios Papadopoulos', 'in@in.gr', NULL, 'Θεσσαλονίκη', '+fdfdg', '$2y$10$aTm/2HNyLbyQk87GOXdvhe5w3tBwMjLfKfSu/fvfHO3mxkEUtzHCO', NULL, '2019-03-19 10:18:13', '2019-03-19 10:18:13', NULL),
(293, 2, 1, 'Cem Kalkan', 'cemklkan@gmail.com', NULL, 'Ankara', '05535852540', '$2y$10$F3t5UnZgYZh3ke6egYAIHubCQbVBXW6YVeiEDRBznYc.0jXPszYEW', NULL, '2019-03-21 12:07:24', '2019-03-21 12:07:24', NULL),
(294, 2, 1, 'dfs', 'sdf@jhjh.com', NULL, 'sdf', '3242', '$2y$10$XFwlIqSl3VnL96WTHLacteX.SNwvrJpAIxkwBHdETWzD0PUzk/ezO', '1nl9kXvGuOTlqVh2xu58hNHG1yMtKrPBeSvMBloAwrLgPBA5Xi2A3llbayak', '2019-03-22 21:12:57', '2019-03-22 21:12:57', NULL),
(296, 2, 1, 'YIFAN WANG', 'yifan@popingmarketing.com', NULL, 'Vancouver', '4038183456', '$2y$10$1kLQ/NfjaCaVg5r8ofwBNObA.9AI1.fQ3CdCwgD7qXf.Z1QWzA3am', 'DhFVXR9NXoKJJPLpcvX9rdmij009TJyebSga7tKdUuBHnunNBnPLgzbazMDh', '2019-03-26 02:40:40', '2019-03-26 02:40:40', NULL),
(297, 2, 1, 'Rafael', 'rafael@livemotion.com.br', NULL, 'Ocoee', '2323232', '$2y$10$N.pAj98smjfGmGIvjXVB2e4GfkKcnc9t9kic3ez5KCj5iglASAvrW', NULL, '2019-03-28 00:40:59', '2019-03-28 00:40:59', NULL),
(298, 2, 1, 'bharath', '91.bharatt@gmail.com', NULL, 'Hyderabad', '9032946662', '$2y$10$hK2ZifdjDwqntEU4kExCo.mms/SWkPj3TV3XbQQjwa8TxPN4JnM8S', NULL, '2019-03-28 09:36:49', '2019-03-28 09:36:49', NULL),
(299, 2, 1, 'Mohammed JABIR', 'support@safarplan.com', NULL, 'Marrakech', '0662389830', '$2y$10$yxZHZz/uFP2/QvGn8pdcfOEodvJnPGcKZn/3V0jErgG2zS4KNBDxO', 'n5a2yX6fhnIT1DQJDA13aXu3mgzcFpfzVTlXBhSyf5RHpnkvoD4CnO7fvaWI', '2019-03-29 00:55:19', '2019-03-29 00:55:19', NULL),
(300, 2, 1, 'lucian', 'lucian@lu.ro', NULL, 'galati', '123123123', '$2y$10$ebXHisYe1K4y2QruItH07ONDFAXGhkBEu1kNHkgh6FhjeQQevucAe', 'eYJgxwbj0GFKVAPFTdk8X4mwfMin1XCtazFBckY8Sum1PFNmxJs00LX6IBXz', '2019-03-29 01:50:29', '2019-03-29 01:50:29', NULL),
(301, 2, 1, 'Alaa Hilal', 'alaahilal@gmail.com', NULL, 'Sin El Fil', '+9613558160', '$2y$10$U5.ULgmCo7.wE40fKAaEK.eHXgm.m4Yi0H2lABO.riNwRMPFo3FnG', NULL, '2019-03-31 12:16:37', '2019-03-31 12:16:37', NULL),
(302, 2, 1, 'vladdimer boddrtishvili', 'medicalscddhool-3@mail.rud', NULL, 'New Castle', '8664119401', '$2y$10$qOkk85OKfygfeicsddQzI.8x29eczFKbQqJSJn/PcGODQBIKI4oku', NULL, '2019-04-01 18:29:52', '2019-04-01 18:29:52', NULL),
(303, 2, 1, 'sdfsd', 'sdfsdf@yahoo.com', NULL, 'sdfsd', '54454', '$2y$10$ptSab2GnsT5SxtsI7v4vbeMaDBQYxyGx.dag9jK29Io7jrvNsITv6', '83f10ql4TCVMkzNkM6yKNSOIIVavjTEIZG4geuIzzzyIyMa3KsxCyXtPSL9S', '2019-04-01 23:37:26', '2019-04-01 23:37:26', NULL),
(304, 2, 1, 'Nasrun', 'Nasrungeneral@gmail.com', NULL, 'Makassar', '08161616', '$2y$10$Qu7ABesmLcYw/MyGkMQJMOtKYlT/lYomH.ajEoVqRCCJQQT3w1tsW', NULL, '2019-04-02 04:37:37', '2019-04-02 04:37:37', NULL),
(305, 2, 1, 'm', 'centusur@hotmail.com', NULL, 'Madrid', '6255224533', '$2y$10$FKNnv7WaNQU3HH9iQxXPduHscqO61JT0NrWUkWzW2ngn0/MRiQVo.', NULL, '2019-04-03 15:38:52', '2019-04-03 15:38:52', NULL),
(306, 2, 1, 'Hispamedia Premium Support', 'hispamediavip@gmail.com', NULL, 'Santo Domingo', NULL, '$2y$10$VuKgjhox4YHwJysnosNcdOMN5J6NRz11JnSNTiIvC2GagyQ5dIB7W', 'SuO6f210J4jNVl4fylslLjjOyT8wpNoN81dUk9Qze20XsigmrwBE9QrDD6tD', '2019-04-03 22:16:16', '2019-04-03 22:16:16', NULL),
(307, 2, 1, 'jose hernandez', 'erick@gmail.com', NULL, 'Santo Domingo', '8095900053', '$2y$10$tGPmYhYVj1bj3B7HphYQKeJ9hBW1HSVgLJPXZfgNQBZd1qV59eHB.', NULL, '2019-04-03 22:28:17', '2019-04-03 22:28:17', NULL),
(308, 2, 1, 'sdf', 'jasamaroc@gail.com', NULL, 'Marrakech', '66535', '$2y$10$42zMguBq5VcPrYS5BZy4zOLrSTjpCtlj5cSRw5yvjFu7eXqD9UlJC', 'saZsnQZISuUtQPigavXfw6vpcFRD1wwhgHHif5WLbAs70woiYrQxiJIdHrOT', '2019-04-04 14:04:39', '2019-04-04 14:04:39', NULL),
(309, 2, 1, 'Anurag Gupta', 'anurag.sotr@gmail.com', NULL, 'Panaji', '8554082874', '$2y$10$X6jvavkq9sox.x7tJ88b9.SllJgpuCYjI0e5np0aL7b9zxTQjHj2S', 'Nu1FbInHk3C2SVK3kVuQIoBSyqkf6AqvzJjwI3Kn1iIkjFKHqObNUY2F8VcU', '2019-04-06 10:24:46', '2019-04-06 10:24:46', NULL),
(310, 2, 1, 'Paras Jain', 'parasjain0000.pj@gmail.com', NULL, 'Ghaziabad', '+918826475451', '$2y$10$vbnvkad9U22zp2kov.VBN.Fe//Ur0bUR6Z3HbMJcPo76ubV4/cFK6', 'Jig0S2TM8y1OH763SR76jOXWGXDHsDsZbEBW0y1YsQKZLL0AuGk5iLsR1OWV', '2019-04-06 11:06:20', '2019-04-06 11:06:20', NULL),
(311, 2, 1, 'footer-test', 'ad222dddmin@admin.com', NULL, 'Phuket', NULL, '$2y$10$g7do7yuiCPWDxSOYKi/xVOrFhGyaSWKv4nNSegKr/rEGKs1Z.CdeO', NULL, '2019-04-07 18:00:59', '2019-04-07 18:00:59', NULL),
(312, 2, 1, '123456', '123456@123456.dom', NULL, 'sdfasdf', '45345345', '$2y$10$F0r7w2KxLTmO6zk1bxo3zeXTH2IP8fa5ha.N2EYfIec6GF3FVR4ka', 'bMzypVlEZBqtuZ3JRPKG9wuXMly0Ps7s5rDIMoOaYyA0dB3vl5ivAyhM3LvP', '2019-04-07 18:27:53', '2019-04-07 18:27:53', NULL),
(313, 2, 1, 'Efrain Andrade', 'eacoronado93@gmail.com', NULL, 'barranquilla', '3508838000', '$2y$10$LsbSR8V3LmLdbvRKLD5Lwu3NggD9pcTSFEs0kPztIlEkvfoTq2Gy.', NULL, '2019-04-09 22:25:39', '2019-04-09 22:25:39', NULL),
(314, 2, 1, 'test', 'jafizi88@gmail.com', NULL, 'langkawi', '0174002022', '$2y$10$OB9Q1AdWoVhVs93mACNjJed6LkuQHmUvdUnvFp95VULSbsiX6Pcke', NULL, '2019-04-11 03:58:46', '2019-04-11 03:58:46', NULL),
(315, 2, 1, 'okm', 'kmp@kjni.ca', NULL, 'om', NULL, '$2y$10$TTFXRR.LnMSUpRepdko2MO4BqkNL6SLJZmBk.o738stKjM8Ncubp6', 'Cf9DMO2BT7wf4aqlPRlPJ8no1TC9KnpemRABWEtE7PicwJgxhOre8rAJSYVl', '2019-04-11 06:58:28', '2019-04-11 06:58:28', NULL),
(317, 2, 1, 'dsadsa', 'dizicehennemi0@gmail.com', NULL, 'izmir', '1234567897', '$2y$10$eviBoQkVGUu8N1ngNUTtN.4iJau2GyucUXlSi0IduJLSF82zlABwW', NULL, '2019-04-12 00:19:53', '2019-04-12 00:19:53', NULL),
(318, 2, 1, 'Sk Nisaruddin', 'nisaruddin.skyliteweb@gmail.com', NULL, 'Bhubaneswar', '+911234567898', '$2y$10$9ixbiopDX/nC3DJ24zEP5e3xa.drhZjXOhywBTFSwxRh6.dpwVWjS', 'HcjD5QZn5g4EXGKtDimU5GbyaqFA3CrE5gUumyUObwRpSV0nuuQHeHopigAA', '2019-04-15 12:27:20', '2019-04-15 12:27:20', NULL),
(322, 2, 1, 'abdelali chaoulid', 'abdel@wizaxe.fr', NULL, 'Marrakech', '+33656043079', '$2y$10$HBH0wwJ1fwBcAKnbDM1Pm.jM4pOibtPWj6BAOXiqt2JeaUbmQWUne', 'UFopQsz8Ogl5qLWf0t5xfPn66Bc8IslV6PFRiMzZdsUA8dh7avdlrZ4zSFjK', '2019-04-15 13:24:47', '2019-04-15 13:24:47', NULL),
(323, 2, 1, 'Abdelhamid ELKHADEM', 'linkadsweb@gmail.com', NULL, 'OUJDA', '12312', '$2y$10$CR9rb9QmKdlyX0gjQA6g8uKyLA64QXYgv9hZ7.a2DLAxxBoYlBzrO', 'gYH5srODiu7xCb5SCxEdu15KQ0bGWfytx8p2cSn6RqVzXUgdbdAXoVyWhhkv', '2019-04-16 01:49:26', '2019-04-16 01:49:26', NULL),
(324, 2, 1, 'Antalya Transfer', 'info@brkyazilim.net', NULL, 'Antalya, Türkiye', '534533', '$2y$10$ruyIFc0HZV7N.MaAxJDM0.VLYo8/sTNUf.7vp7ETfGu2wawYCIy7m', '666V05j2VGQy1LTmkhLVRu8xut3lH4ApUKxk9E5N8B89kwEnO47l1RjF6IQW', '2019-04-18 13:28:11', '2019-04-18 13:28:11', NULL),
(325, 2, 1, 'ggggg', 'hdjdj@gmail.com', NULL, 'edddd', '23456754', '$2y$10$xF9SFV4mIRWcdUwoWdQEX.h37sJ9AXRDrbPzoHM6DvSHDY4cjaG.a', NULL, '2019-04-18 22:44:54', '2019-04-18 22:44:54', NULL),
(326, 2, 1, 'Thomas Reimschüssel', 'thomas-reimschuessel@web.de', NULL, 'Hamburg', '15901408563', '$2y$10$wuZ/hTkS/y3ye9pDFQAfjelbLJaeU9gDZ5yG1.bH6jyvTXFbavGwC', 'EK3P6zLuCiZHz2jU0E41j61VmLVN2OKWb5G9m3da2L2yCADiGawSi7NBuEjj', '2019-04-19 00:28:02', '2019-04-19 00:28:02', NULL),
(327, 2, 1, 'Francisco', 'nikei2018@outlook.com', NULL, 'Orlando', '3214373151', '$2y$10$s7TUqoykcd435TjDReSUAeVO2nRAP9dDBkp/bwPnBFKgv.XM82RKi', 'rosuc8NrW59GNiE6Gf14WTTgwZaCk1PUs2SdJ6R4MtVlIdUJrbez8mNElADp', '2019-04-19 01:06:09', '2019-04-19 01:06:09', NULL),
(328, 2, 1, 'rrr', 'all@hahaha.in', NULL, 'a', NULL, '$2y$10$ZQAAMblYt4ZAxYqyHjvRZelWkkcVvAFWPS3UlZReqT/dW6yyhwCYu', '4lKFn4p4IanC09hBkGgwEBERIGYWMgfXPMJB7kuhybW3tkIyJd7zAo1idtNO', '2019-04-22 08:03:29', '2019-04-22 08:03:29', NULL),
(329, 2, 1, 'Tausif Ahmad', 'budi.hadiana@dagmarshipping.com', NULL, 'ranchi', '8603715065', '$2y$10$C4jypIL1/rI/4R7L.kkpFOfy1WUUF.ojD78NbMsbWpmakIsOuJ6iK', NULL, '2019-04-22 14:02:22', '2019-04-22 14:02:22', NULL),
(332, 2, 1, 'Francisco', 'nikedi2018@outlook.com', NULL, 'Orlando', '3214373151', '$2y$10$Lnja3cyLwzcpVbRDyS8AZOT7E5/aU2Fpr/njTfpd3krQoqA0dqHIu', 'ER22gMTE0fa5GfQcTq99pa2TNW9gSjOwSuUlwgDdmFSmUPs39GyXpDCexzRS', '2019-04-23 23:18:20', '2019-04-23 23:18:20', NULL),
(333, 2, 1, 'BHAURAO BHAKRU RAUT', 'rohanraut716@gmail.com', NULL, 'PUNE', '07775889612', '$2y$10$pvMTg5EJnBzNeLdUf82OpedgVDpPfFOxa0W2iepy5WsBScg./U.Nm', NULL, '2019-04-24 21:44:59', '2019-04-24 21:44:59', NULL),
(334, 2, 1, 'Ercan', 'admin@gmail.com', NULL, 'fghdfg', '654065406540', '$2y$10$8mtAHI5QoLd7Jk49UKZo7OO48AHQ.57D5yPuvVQ0DTo2RP7KrcGTq', 'COd4VRb4edfIOOQpYuiZ55mmQm2rXXvpKlW4yjsRuVrnOxAHLE4lVI3ln59r', '2019-04-26 15:48:43', '2019-04-26 15:48:43', NULL),
(335, 2, 1, 'MartinGraph', 'asdas@hotmail.com', NULL, '1', '5115115415451', '$2y$10$hvnA.TPWLLxxdwtDiUbtYevWS8.UV3/SSHERN8IyFgt0wLGM.m0Va', NULL, '2019-04-27 05:01:50', '2019-04-27 05:03:58', '66'),
(336, 2, 1, 'Angel Goitia', 'angelgoitia1995@gmail.com', NULL, 'caracas', '04264509731', '$2y$10$qvtjW2opWGk7JQhDIBLYj.D.YgJ6leUrQfl3lLVj2JcyOnxfjsyIG', NULL, '2019-04-27 05:11:33', '2019-04-27 05:11:33', NULL),
(337, 2, 1, 'try xxx', 'test123@test.com', NULL, 'xxx', '1234', '$2y$10$2RtCwpZ.joPmtd8p2ZBRJ.3QntDYIgvqWfjIUQIhPWb607iIcg1nm', 'tjuX8yDZ8DAejZkeEssUtbqu93sDVdana9c48OzyI2f70wwc2f7Pzfh6JZXl', '2019-04-27 12:20:34', '2019-04-27 12:20:34', NULL),
(339, 2, 1, 'Amazonas', '1117@nonexa.com', NULL, 'London', '+370 60897721', '$2y$10$ZW54ZXsXNCsi2XvEG45qX.WliSsnocsWsA/tENmQU/KhWqI4SmL8S', 'AtLyzgPzkm9fFbxPJahcLUKFf1WX6HIweBBlNhTpmL5SPZHB5W7Z5EaYZFzA', '2019-04-28 18:39:22', '2019-04-28 18:39:22', NULL),
(341, 2, 1, 'drgrdzfg', 'm555gzly@gmail.com', NULL, 'Kol', '9910420205', '$2y$10$K6QNE8IJEfJBRBbje4LsR.LgViQaS3H3pQAvnID9lAtK0zgXYGvUe', NULL, '2019-05-02 18:05:48', '2019-05-02 18:05:48', NULL),
(342, 2, 1, 'Prakash', 'prakashchary319@gmail.com', NULL, 'MEdak', '9573680485', '$2y$10$7yZTLwH89XDBCVTbueidAeTCR6rekCj7m76Fd.4K4AGUIBkHe.mei', 'KYzJoIP7IqZOflNON7oUhuCwWGa9UVcUGP7sHuEkp4Nonz1M4FWvpAigwoC5', '2019-05-05 15:18:51', '2019-05-05 15:18:51', NULL),
(343, 2, 1, 'Test', 'l.arifi@albsoft.com', NULL, 'Tirana', NULL, '$2y$10$SfEHheXuEoS0RXPQB7NUo.Ux3EW.ubfKgHPeExv0CDPZe/RI.mVx6', 'fiKcdxEYPQ9vJCrl8rYgLvS03MoIoM2jeBEQsJpWxtJVri53QDGCYKz7cuRU', '2019-05-07 13:40:27', '2019-05-07 13:40:27', NULL),
(344, 2, 1, 'fa', 'af@sad.xcom', NULL, 'asd', 'a', '$2y$10$zVJXrv9iKA2HsopxGA92OOFofib9tf.oLaasSW9RNthjOYrsT8adK', NULL, '2019-05-09 20:43:51', '2019-05-09 20:43:51', NULL),
(345, 2, 1, 'Sam', 'sambhav.jain@scrumdigital.com', NULL, 'delhi', '123456789', '$2y$10$9gd/85tdiFiSW85XQzYx6uStFSZXVG.EkncBH/Bn2NloFUrAQ9sUq', 'pz14A2GgFqHwm366FWexRFImVmlbEbkmCUYPXNhjsRrOI86iwnELURscnA6p', '2019-05-11 10:37:38', '2019-05-11 10:37:38', NULL),
(346, 2, 1, 'aaa', 'aaaaa@gmail.com', NULL, 'ssss', '123456789', '$2y$10$iy2900eS3v2Igs9wyFomq.YtTf3z6EIqs7AXrzj3kFKcCrCyfKuyG', NULL, '2019-05-13 10:15:54', '2019-05-13 10:15:54', NULL),
(347, 2, 1, 'mamoqirreny-7707@yopmail.com', 'mamoqirreny-7707@yopmail.com', NULL, 'zzzz', '1354545614', '$2y$10$S17r0a6HJF5VvQ6p9vrmU.ZwtTu93Kb86YbOAxSPi3lgt84JFukGS', 'TzeZX1GlTP3yejqLDuvoNDNhfOrZeET04qvoQGOS8k0tLCfTr20Th9yLjwNG', '2019-05-13 16:40:08', '2019-05-13 16:40:08', NULL),
(348, 2, 1, 'ASD', 'asdl@gmail.com', NULL, 'tBS', '6549854198', '$2y$10$cHnrJMqZFkYRai00fA2JXeSqVVuEJ16hn9eh1CrH0dRBuZrzEaara', NULL, '2019-05-18 17:05:37', '2019-05-18 17:05:37', NULL),
(349, 2, 1, 'jobagru', 'joebaru@gmail.com', NULL, 'manila', '4345555', '$2y$10$F73Z9bXmoVAfdxdYOJZEC.XyB4mrAL8ZMB4V/Q3B1c6ZquGFBs8bm', '6qqrgcjK7BpWJzXvHRIlDbAmcgL1sbgkDeqC5fTA2HCQAjF0nQ1YWmqlPKHO', '2019-05-19 15:21:17', '2019-05-19 15:21:17', NULL),
(350, 2, 1, 'trztruzteg  hthtrhtrhj', 'csakregz@gmail.com', NULL, 'dddddddddd', '6666666666666e', '$2y$10$GWq6LeIM5H0wz8QPVgMHQ.EG45/oqNUlsnl6D2TPXRlY/4AkQ3XX.', '2jdyxRssyKhHH6PcHHNmYAAvzHBYJq2IiH5DREdODiE28XnI6VlYzOwakVln', '2019-05-23 19:34:50', '2019-05-23 19:34:50', NULL),
(351, 2, 1, 'walid', 'admindunet@gmail.com', NULL, 'Annaba', '+213551288722', '$2y$10$khYyU4hfc4oHIDZhibq6r.R4Il2fq87/dKhDteaI4AG.8urUPbj.G', 'OmoiuyjBcfBpImd8K1nQbRPT4yv40a1ReHxr8ayUlTMHrY9eicTHl52lp703', '2019-05-23 21:49:50', '2019-05-23 21:49:50', NULL),
(352, 2, 1, 'Erick Eduardo Morales', 'ricks_technology@outlook.com', NULL, 'Guadalajara', '012711027851', '$2y$10$Lr1.SOIF7N3eA/lO2c5ufu.qYiI.9VwM8AyoUB4tKeoxxFMbEicAC', 'aDNEOsE6V4Q91BYmobYQPuVJGL4jnSWYMgqWXvIZVTHe1jgdPK17HTlWUhkx', '2019-05-25 21:26:27', '2019-05-25 21:26:27', NULL),
(353, 2, 1, 'samyr saldarriaga', 's4m1r.5a@gmail.com', NULL, 'Santa Marta', '3007753983', '$2y$10$ZWnmVlnVWRGJix/cxQZ7TeOR5dtZNlbx.rGeqcwAiF0ubDSh716yC', 'cUYb2rV8l17C9IdgXGopMNq7pUtsq02UEpkLoxgYpx0yqBangSt1OwDt7Z8Q', '2019-05-30 07:46:49', '2019-05-30 07:46:49', NULL),
(354, 2, 1, 'Ryan Adhitama Putra', 'ryanadhitama2@gmail.com', NULL, 'dps', '0908098', '$2y$10$kmL2GlNs3yijeouH9ReR8uJQl9HvHiBYQ7ZmroHHQG1buxfbvyvFu', NULL, '2019-05-30 08:55:18', '2019-05-30 08:55:18', NULL),
(355, 2, 1, 'Mashud Rana', 'mashud.28bubt@gmail.com', NULL, 'Dhaka', '01722159546', '$2y$10$H0jPXuNnY98uBJ5qaG.13.tJQaR5dtoAFOu2NoLrvKQr/FNMaEfIy', 'kptIklmBYZzTeutbFX8AbRqddrNi1fwoKOucz6EnA4DiWCLJqA2o8GRPB3qe', '2019-05-30 09:08:17', '2019-05-30 09:09:07', '67'),
(358, 2, 1, 'dumebi', 'dumbe@jdl.com', NULL, 'chicago', '4569439312', '$2y$10$Mq81YXpwUv4BXGD8KRzb5OpwlK/n.KiQKEZ4ZRhkgMo2B5Ra9Xy.2', NULL, '2019-05-31 14:37:10', '2019-05-31 14:37:10', NULL),
(359, 2, 1, 'PABLO', 'lapulgard.net@gmail.com', NULL, 'LA ROMANA', '8096541236', '$2y$10$Ixuu4K4ZkGKOUbCxT5jsdueXcc0PjPEvIGlqIE6EMOOOvJQPQgn2q', 'jTwOUvuuFmaXDwpyPVw8qMEBS4ZI2EMGI9jkMQLoYGKzuyVVVgD5IOPhZhrC', '2019-06-06 22:01:33', '2019-06-06 22:01:33', NULL),
(360, 2, 1, 'Salisu Shuaibu Yusuf', 'salisu@mail.com', NULL, 'Kano', '08027931919', '$2y$10$l6YLETuqwjwhyAKmmi7lNO1HlmeRf5pkOSfojEx7LAeRwSuOWcuki', '4MziBX0cD5qMO29KT6xvmMweK6ymWpn5GzDM4U8Q8q77Umn9MDcZdl1ld2bE', '2019-06-15 01:58:09', '2019-06-15 01:58:09', NULL),
(361, 2, 1, 'muhammad muslihuddin', 'musly.fp.upnyk@gmail.com', NULL, 'yogyakarta', '085200886166', '$2y$10$z0H1YXmqhZ6ibqa/PS3REeL2H65fNtFD5IzeVuXKl/fAdPKz7QmHa', NULL, '2019-06-15 10:53:15', '2019-06-15 10:53:15', NULL),
(362, 2, 1, 'Gaston Athuman', 'athumangaston@gmail.com', NULL, 'Dar es salaam, Ukonga, Ilala', '+255718579472', '$2y$10$BthJ.pu70QrJ9akkaDsYZ.TQGZhPWYxVDrvK1bzjJ4YZi9FSxa6zq', NULL, '2019-06-16 17:30:23', '2019-06-16 17:30:23', NULL),
(363, 2, 1, 'Suraj Gupta', 'suraj96sept@gmail.com', NULL, 'gzb', '8826211832', '$2y$10$32JNMwnXMDNCJbdvfbC/JOBWYVsKoFN4ZpbjjUgGuNHpKcY0K018u', NULL, '2019-06-18 13:01:32', '2019-06-18 13:14:50', '69'),
(364, 2, 1, 'Samuel', 'samuel@grupobroad.com.br', NULL, 'Porto Seguro', '73991273514', '$2y$10$NIzCXr0WHDKNbS/bKJmVI.6ZOAbeW31U3WF1Uc5CtUqA0JfTmPyw6', 'yoLzot144DYDqhGprr1g4gYOQNhcgTwFQPfPRMIdArfjqxn6q6b43QCak2CD', '2019-06-19 18:23:32', '2019-06-19 18:23:32', NULL),
(365, 2, 1, 'llloolll', 'ro.lapenna@gmail.com', NULL, 'Palagiano', '3474337114', '$2y$10$DcQvojZcgNG8w1Lh3v864usFHXqMWp7cn7ZZEbsH6xeY08Ya6Pbem', NULL, '2019-06-19 20:38:12', '2019-06-19 20:38:12', NULL),
(367, 2, 1, 'Samuel', 'samuelfoco@gmail.com', NULL, 'Porto seguro', '73999027921', '$2y$10$l76cHwEggLP8V4Sxe1Qq4O0VQjkrjlYVRc4JZfEfDlikxN3qqqgvq', '5OKEVdWON5znvYQi2kHqtCcyqhQ6PoEOEKMmJCS5Y54Aw4798fAUTIe4QXui', '2019-06-26 16:34:54', '2019-06-26 16:34:54', NULL),
(368, 2, 1, 'AHMED MAGHRBI', 'AHMED.MAGHRBI@GMAIL.COM', NULL, 'HERNDON', NULL, '$2y$10$BFoYs2Lf1DEmnWCchhmbCeTGefxeQC5rOe1T4Ue/0svB3qBLfVsL6', NULL, '2019-06-27 04:00:01', '2019-06-27 04:00:01', NULL),
(369, 2, 1, 'YOUNESS NAITDBOU', 'email@youness.me', NULL, 'casablanca', '771063850', '$2y$10$hQM3QdJjC6sjuSF4kARlpOYXB5YdmM4MThXyBVt5HeJqwNlVoKYzS', NULL, '2019-06-27 15:18:21', '2019-06-27 15:18:21', NULL),
(370, 2, 1, 'Alexandre', 'alexandre.iosimura@gmail.com', NULL, 'Toronto', '0000000', '$2y$10$H2S0VKVwD38fsgEwIyf6ee/dC9oPH6Fo9IbSccEjtWggd/xucjPKO', NULL, '2019-06-28 01:13:25', '2019-06-28 01:13:25', NULL),
(371, 2, 1, 'Name', 'email@email.email', NULL, NULL, NULL, '$2y$10$sRWSYvpj..VVRlUGr/y2ZOHM7iRY7MKbtaN2KIw/kdNzBV6QAARcO', NULL, '2019-06-28 19:58:24', '2019-06-28 19:58:24', NULL),
(372, 2, 1, 'ddd', 'ssd@h.com', NULL, 'vffdvv', '134556', '$2y$10$8ePdVvjwz9BS6W0XUc5yJOFrKZ4xEynAe1YmFVICmcTf1ItW3y3Ii', NULL, '2019-06-29 15:30:12', '2019-06-29 15:30:12', NULL),
(374, 2, 1, 'test', 'souhaibou04@gmail.com', NULL, 'test', '+221771090842', '$2y$10$ReJWut96D2fEJvJdCrgxfeUWn/irQpwXGsbnfmFqFbG9TJeXUSU5S', 'eom30EUXkNbY1rPIyBnbM12itauz3CfnJsLodLZjrVfF163xBh2iCEO99Kuo', '2019-06-29 22:59:06', '2019-06-29 22:59:06', NULL),
(375, 2, 1, 'john', 'tech.fasthelp@gmail.com', NULL, 'skt', '9293639111', '$2y$10$lKuJ7B7B9njf7QU0irnk2eLrFYv/.xkmL1QFI7X0tZxDhSDiOSBpq', 'KZPiPvBaerv2GO4eT0KwB9e1SQp4SheMrhrEyvTAPoCzMR7zKXdsG1YOyX7O', '2019-07-02 20:26:31', '2019-07-02 20:26:31', NULL),
(376, 2, 1, 'Tvtv', 'yvyv@hubu.com', NULL, NULL, NULL, '$2y$10$V9JozRGo3SftE/KWseO.xuw.lSGmUnKcSLTMVrfo14MsCM1qsHXQK', NULL, '2019-07-03 03:07:42', '2019-07-03 03:07:42', NULL),
(377, 2, 1, 'hghh', 'dhs@gmal.com', NULL, NULL, NULL, '$2y$10$N3v/cbgYGBZQuzPJj5NQ9.kKX6ZMU0raCA6.uRhCCVlIGwkSFZEhq', NULL, '2019-07-04 19:14:26', '2019-07-04 19:14:26', NULL),
(378, 2, 1, 'test', 'test@ff.com', NULL, 'test', '1111111111', '$2y$10$QvNZpel8kuQxeCytJ6n0/OvoVTxk8urXI2Xr1lj/aN3x/prMLDd..', 'hnVQcMvhH6KYeUKf2YT9Rqdlxmr5KqAHGxOiipupFucdsALa6h7dSo5yA6nX', '2019-07-07 16:33:21', '2019-07-07 16:33:21', NULL),
(379, 2, 1, 'joey gee', 'joeg@email.com', NULL, 'greenville', '8005551212', '$2y$10$dx764y8QBewBSRmHk7jnXuE4iVxiSF0AcmLZwKGGtM2i67R1YlvwG', NULL, '2019-07-08 06:22:46', '2019-07-08 06:22:46', NULL),
(380, 2, 1, 'Rody Isidore', 'rodyisidore@gmail.com', NULL, 'Coconut Creek', '516-713-9086', '$2y$10$8su6j.hgVl0ETwHn/R2X0e4FJKOXBNeFTIB1VRRFGW1hVrweOfeZm', NULL, '2019-07-09 21:34:41', '2019-07-09 21:34:41', NULL),
(381, 2, 1, 'ADLKMLKFDMA', 'lkfmlkf@gmail.com', NULL, 'kjnfdkjna', '54564654654', '$2y$10$fdBT7..OMjR.oINFrLeuy.aOw9TuOVkblww3Sv/OHRE78lqNny7ze', 'ljw2VuXhALPcwPkeDvoSgPA3HBb09544oh5VH6jUPxpxigAL7MSzh2OtWi4S', '2019-07-10 22:08:45', '2019-07-10 22:08:45', NULL),
(382, 2, 1, 'gr', 'gdfs@mail.ru', NULL, 'fdsfsfasda', NULL, '$2y$10$uEsLKXsep80FByoVDMagFekCasVvxmQCzSHJJBKS8wPi6MB/kbsj2', NULL, '2019-07-14 13:04:57', '2019-07-14 13:04:57', NULL),
(384, 2, 1, 'PMI', 'cds@gmail.com', NULL, NULL, NULL, '$2y$10$cPATeFUjrL/WrLv3t/SJu.1zL3ITd22UPFSM4dZJDoN9GDGbHzeQy', NULL, '2019-07-18 04:11:33', '2019-07-18 04:11:33', NULL),
(385, 2, 1, 'asd', 'omar@itqanbs.com', NULL, 'sadas', 'asda', '$2y$10$6tJ11NOvyuuxlij29fR5jO7i/3LK10XH0xTgMky3ATi728nx1QCcG', 'xTznzybWlRzHs3bNmMOxI1S2i0cvoCiiAg4zoRcOu3wFtqASdCPH0hCpR8ot', '2019-07-19 16:52:12', '2019-07-19 16:52:12', NULL),
(386, 2, 1, 'xxxxxx', 'xxxxxxxx@gmail.com', NULL, 'xxxxxxx', '0998', '$2y$10$iM0UjzWQJNFP67auXwgu1em/3TxRacdp2ETO0pr1oVyaPEA2abdhe', NULL, '2019-07-19 18:36:32', '2019-07-19 18:36:32', NULL),
(387, 2, 1, 'Bayoudh', 'bayoudh.abdellatif@gmail.com', NULL, 'Belvedere', '36313444', '$2y$10$erDwq1b8xG2CE1Ss28FTJuiD2EQAQKq4/Bkl/NMntbfKolB7B.MK.', NULL, '2019-07-20 13:56:47', '2019-07-20 13:56:47', NULL),
(388, 2, 1, 'Nabil CHIHEB', 'chiheb.design@gmail.com', NULL, 'DAR EL BEIDA', '+213556529908', '$2y$10$B0Xm2bIPm.3avea3xyzW9OvC76m2DVvo4pBW2YK8qNhE0fso5.1eG', 'CqcELQhGJgdfnIGC83tRcbS72AG121vFHfeqaIUAidmnqJF30zoCbrqJnXVr', '2019-07-22 00:40:18', '2019-07-22 00:40:18', NULL),
(389, 2, 1, 'asd', 'asd@asd.asd', NULL, 'asd', '2323423', '$2y$10$G49E2P7R5sMPxxTT3zf.Su8Ep2gnctZkx4LNE69M0J8PSDj6W0KVS', NULL, '2019-07-23 14:16:29', '2019-07-23 14:16:29', NULL),
(391, 2, 1, 'fgdfgdg', 'dfgdgd@dfgdfgd.dfd', NULL, 'dfgdg', '3434334565', '$2y$10$UPtXvRsYVENW8I4ndKCEQeypuUOAgg2PurQMBqjhzAcunLYdqBpBi', NULL, '2019-07-26 15:25:05', '2019-07-26 15:25:05', NULL),
(392, 2, 1, 'Test', 'poulav@mailinator.com', NULL, 'Siliguri', '7894561', '$2y$10$buAGpPWViQzurKwGUiM44eAPuUHrsb1ZluLsfn5.bIgwCtFq.YEIq', 'dYvsKTGU3kZcYJENUI58MfAImtK6Ppd4JTzTC0GKNbKHmOPHqTJqp0K4FotJ', '2019-07-27 15:51:32', '2019-07-27 15:51:32', NULL),
(394, 2, 1, 'xx', 'admin@dev.com', NULL, 'xx', 'xx', '$2y$10$pg1ZOGQ.V10f7vTbbZYPmOAT4jL1QDC/g/Ngh6xOxtNRrRqJuGXxi', NULL, '2019-07-30 13:34:23', '2019-07-30 13:34:23', NULL),
(395, 2, 1, 'dfcqdvfg', 'fsgbs@cghn.gfy', NULL, 'srfsgf', '456463746', '$2y$10$jn6xtJGD3FMb4q2mU.LM0.XqhiG5B32o/ldo2OREBDa2igfQ9rUqy', NULL, '2019-07-31 14:14:04', '2019-07-31 14:14:04', NULL),
(396, 2, 1, 'Mohamed Mohideen', 'fmntec@gmail.com', NULL, 'Colombo', '0779434140', '$2y$10$Aftky/wMWvEHu1sF0QRKuOy5gUby6cOP2GJSCFM0Owi2U15TYljQW', 'rbxcEZkVvot8mNYjdSgB3WxXipQ89Adic9NFQ9mca6OqHkx7hPYebcS467qg', '2019-07-31 18:00:31', '2019-07-31 18:00:31', NULL),
(397, 2, 1, 'Juancho', 'juancho@demo.com', NULL, 'Mexico', '5551231212', '$2y$10$iU6TfodDXo4LFOcf6AFXVuwgmZDSn1cT2/sbJr/X1K51lWWBMGYSK', 'beSA0oqm2F3LtBuiARdTTfPMCuJvqNrKyK0oT6fjU5bYV7oEaRs5D9BULVoM', '2019-08-01 09:25:52', '2019-08-01 09:25:52', NULL),
(398, 2, 1, 'Eyram Kwaku Titiati', 'eyramtitiati@gmail.com', NULL, 'Accra', '0247908639', '$2y$10$nnp65.JYTW5XZfHTKIIRi.V2ZUILI80ewXs8Tnq/iRaNGwM9yFwB6', 'vqEzK9LSha8oYCLz2MPPs8VrVstmLk3Z4WTVAQPA3ckQeL6HRhSchqw5ZX3I', '2019-08-01 18:37:38', '2019-08-01 18:37:38', NULL),
(399, 2, 1, 'ron', 'aa@yahoo.com', NULL, 'msa', '0384849404', '$2y$10$8rzXy5eF3jMkJfIYeVbvduTvJ.sHSi444biitpfpp1J7NEFx5l1Zy', NULL, '2019-08-01 22:33:11', '2019-08-01 22:33:11', NULL),
(400, 2, 1, 'Hasan Selim GÜNER', 'hasanselimguner@gmail.com', NULL, 'İstanbul', '+905455521446', '$2y$10$vI3I/cHFV5JIIfZ7f2Z1F.ImD58Gqy9vuwXvtDbp7p/1epyJvkxfC', NULL, '2019-08-02 11:53:36', '2019-08-02 11:53:36', NULL),
(401, 2, 1, 'Leonel Castillo', 'mcleo29@gmail.com', NULL, 'coro', '04146756184', '$2y$10$8QGNSxLT.G9i.ySzysAKgOrsW4iwGPs8asj0zamCUK8juvm68Smjy', 'HF1OzuPqXWyUZaJO1LM4mP0Ds18dHrRka8NLbJwIvwPeqJi7VnKGG41jj3AU', '2019-08-02 20:34:31', '2019-08-02 20:34:31', NULL),
(404, 2, 1, 'Olga Moran', 'seo.bhetu@gmail.com', NULL, 'Minim ex adipisicing', '+1 (927) 716-3619', '$2y$10$kMCeSdfluIbvUtdqmO4yFO7uXdfjtU8bljynOeUIix0SNuft3BoBK', 'octoh0wdzlfKMPs8p1BoyjSvPTDTewl1aSL8S5yAjhWVfiA4Mcnd1IPQq7Cr', '2019-08-04 16:56:47', '2019-08-04 16:56:47', NULL),
(405, 2, 1, 'Kiara Cabrera', 'liga@mailinator.net', NULL, 'Ducimus id dolor qu', '+1 (863) 525-8747', '$2y$10$lT00EZaLFXhKYwZZy8Q.wug5CnLgppDSmId/OqR/2V5GrP16vgUTK', 'KW0YvjbX3knaiv9M0dJq2l4dupDQsJyB7YHkAfD4l325CYMJ7IiCm0bEYfTI', '2019-08-04 17:00:43', '2019-08-04 17:00:43', NULL),
(406, 2, 1, 'Zubair Rao', 'raozubair1441@gmail.com', NULL, 'lahore', '3042205526', '$2y$10$Qykv7OIuRXYi8WuOiYqThO/zzQzxJpFnvQdbmM3fCd8NdEHMQbJee', NULL, '2019-08-04 18:07:49', '2019-08-04 18:07:49', NULL),
(407, 2, 1, 'Richard Mulder', 'rcr1984@hotmail.com', NULL, 'Vianen', '0653494839', '$2y$10$1DYmbLcVC0sWJY3QlJgME.afb2HhRm4YalNyqoOyz8j51tSdfLl7G', 'XbfCyVy7UImaB8UnR2NQddkbvZL8vjbemeE9eYriPw7o5AWgY0mZKAITGIkQ', '2019-08-05 15:29:29', '2019-08-05 15:30:19', '75'),
(409, 2, 1, 'Raphael Souza', 'rasouza@teste.com', NULL, 'SIA, Brasília', '6139626785', '$2y$10$j7/LxLVIwJMe.2FmSgm8Fupikxbk/3DTemh42wzvfLCGw82bzABb.', NULL, '2019-08-07 01:18:58', '2019-08-07 01:18:58', NULL),
(410, 2, 1, 'Raphael Souza', 'rasouza@brasal.com.br', NULL, 'SIA, Brasília', '6139626785', '$2y$10$CkxoFi8zztz8pPdaF5ee8eoPaXG/2YMY67DcDUzKiv.HCiHaXhRcW', NULL, '2019-08-07 23:06:45', '2019-08-07 23:06:45', NULL),
(411, 2, 1, 'Tester', 'tester@tesrter.comm', NULL, 'Bston', '4567890678', '$2y$10$VRG.fCBtCygOlwoHYAdfj.MqXOPSKl2h0S25MosKWrvPu8zEBd4Hq', '4vK2PacYgzxbmucyLasz5aEfgck8Ck4N2gW0PrWsQJQHGSO6PHNj0ems2vIB', '2019-08-12 18:45:26', '2019-08-12 18:45:26', NULL),
(412, 2, 1, 'PRITAM', 'pritam.ngl@gmail.com', NULL, 'Agartala', '8794047652', '$2y$10$nHnOKB4/wVjpl4CnTjeYJ.ysE/nYlqCtA7sBxaUzsPCS7rl76sLfG', NULL, '2019-08-14 13:10:26', '2019-08-14 13:11:49', '76'),
(413, 2, 1, 'David Kimari', 'david.kimari@outlook.com', NULL, 'Nairobi', '+254727500128', '$2y$10$CRp7xiXbLmKpf99Sff6eiuB1OJmuZlTg6XfjdNQ0j9/XgQ99.F2EC', NULL, '2019-08-19 22:06:37', '2019-08-19 22:06:37', NULL),
(414, 2, 1, 'rajib kumar', 'exeemshop@gmail.com', NULL, 'Shillong', '9874563214', '$2y$10$CKrkbdqzjIEA36H6Ft2jBeoLgNR6mkuW/Qz15YmVcO9sHG3dspFmy', NULL, '2019-08-20 15:35:17', '2019-08-20 15:35:17', NULL),
(415, 2, 1, 'asd', 'sdfsf@asdasd.com', NULL, 'asdasd', 'asdasd', '$2y$10$Hak4vf0nLNbV6pks6HDWfOzrXA9eqjDbn.eo19p2rvUmQGF5YCbki', 'LlnUdZLcBOc1f81xQvvrjSe5vbMRIIm9soa6HYsrXPONJlIGXhIvxb5wFt8F', '2019-08-20 19:21:45', '2019-08-20 19:21:45', NULL),
(416, 2, 1, 'Nesma nad', 'llcdanube@gmail.com', NULL, 'amman', '0798724229', '$2y$10$u8I0Uydnzd7L4IYbBqA08.laDlJHpNu9XF1jwF6d1XokuRDedT.E.', 'BYIoAdIcGL4ZNjb5n1sJhDAlm0BHleXKfpsACpwecSTl8HZ41NX4Qu0YBBHa', '2019-08-21 01:09:13', '2019-08-21 01:09:13', NULL),
(417, 2, 1, 'Rahul', 'raahul.sh@gmail.com', NULL, 'Guwahati', '9854009009', '$2y$10$nedTxZjjAjCvJ7WhuC633.l7TKH39SufEP.aboo63AAsa5Zxu0gXi', 'NKR4HMpCNDmoxAuxOtbop2caH77vTvNL0vBD1RGT4RhEVO9KfLrc2kUk6lSc', '2019-08-21 01:46:19', '2019-08-21 01:46:19', NULL),
(418, 2, 1, 'dzsfsaf', 'asdas@darfs.cpm', NULL, 'sdfsd', '32423', '$2y$10$8cMcTYPvB25Qh7zosr7f9uib.PhgBwy0a31Mme9Nq5JJANZdlroCC', NULL, '2019-08-22 15:14:39', '2019-08-22 15:14:39', NULL),
(419, 2, 1, 'Mukesh', 'mukeshrai11@gmail.com', NULL, 'LA', '88772726', '$2y$10$2ReiNJWj8U6a5cr/QsOqnuWKLBaNUqC64U7Zbm9IJz3otVhSdFuqC', NULL, '2019-08-22 16:06:18', '2019-08-22 16:06:18', NULL),
(420, 2, 1, 'Amol Yemulkar', 'amol@sspectra.net', NULL, 'Pune', '123123', '$2y$10$B7xsLdi1w25fRDWRy1rLKORTcqLcUzPeJWXJxci4pOpyOfiUBGkUW', NULL, '2019-08-23 10:29:54', '2019-08-23 10:29:54', NULL),
(421, 2, 1, 'abc', 'tech@gmail.com', NULL, 'pune', '9876453', '$2y$10$wfDRls00BweOg6Qn28IBMeIooAJTwXVDT2Ub9iM/1ep8VUS9riIym', NULL, '2019-08-23 10:38:26', '2019-08-23 10:38:26', NULL),
(423, 2, 1, 'asd', 'asd@asd.ca', NULL, 'cas', '80854646', '$2y$10$rGTf2m9YZcAqeiaIVracae7to/6nRY7bplV9.VHXtEQlP3Ma7lhZu', NULL, '2019-08-25 14:52:42', '2019-08-25 14:52:42', NULL),
(424, 2, 1, 'Iig', 'denongugi73@gmail.com', NULL, 'Ff', '18 564', '$2y$10$F17MlBZseawKloLojykxwOKHgQBYWvmmsexLAqJJrM9EN1af4agBO', NULL, '2019-08-25 17:21:49', '2019-08-25 17:21:49', NULL),
(425, 2, 1, 'munjal', 'lodatari@gandmaray.com', NULL, 'lodabad', '982577788', '$2y$10$sg3UeKniSHi17I.G/GN8TOFu7Ve75ZIu8F3AbNNBQtEVsoHbXZ7lS', 'OOFUuvJqnDCvsNyWHkEKa0eSDg1pelc2LPbhAplvJhNT3iw0PR3lQ4wxqaNi', '2019-08-26 11:14:14', '2019-08-26 11:14:14', NULL),
(426, 2, 1, 'hassan', 'wasimbhatti91@gmail.com', NULL, 'Rawalpindi', '312584876', '$2y$10$/ZvpChK1GgM.RDO/5YYbaORghXUyo6OMfsUCU5cNvUpBObktWrixK', NULL, '2019-08-26 13:18:28', '2019-08-26 13:18:28', NULL),
(427, 2, 1, 'sandy a', 'sandystan637@gmail.com', NULL, 'salem', '8122326157', '$2y$10$wB3SGBwW0B1nw99iYqaHOOtxF7ME8s0BFFJbtzf6k.ohJi0zBSYii', NULL, '2019-08-26 16:06:12', '2019-08-26 16:06:12', NULL),
(429, 2, 1, 'jani', 'zaibbrothers2255@gmail.com', NULL, 'sialkot', '555555555', '$2y$10$Wv5vBli9raco46Cai1I0UuDzDFds3MYmltTdTMNTZYiFodNaZoBpK', NULL, '2019-08-29 15:50:08', '2019-08-29 15:50:08', NULL),
(430, 2, 1, 'Serge', 'alainserge@163.com', NULL, 'Libreville', '04602811', '$2y$10$EW.Zcbik1Oy5qcHUniMh.eAMInhPTlnJv96FtN9uP1lF5JH.oVZ5y', NULL, '2019-08-29 23:31:42', '2019-08-29 23:31:42', NULL),
(431, 2, 1, 'maks maks', 'makscarrent@gmail.com', NULL, 'pattaya', '+66626167709', '$2y$10$qTQKYFr.aQJIYM3m3WerSOIq4pFdDjXy82yC3.ocaRGtnVA5kwxPW', NULL, '2019-08-31 13:35:50', '2019-08-31 13:35:50', NULL),
(432, 2, 1, 'cecep hermawan', 'cecephermawan1998@gmail.com', NULL, 'Bandung', '081214371758', '$2y$10$qgysZx5yU2oF5zZ2NyYPieuShwGno.ptf74SgTNK9zxmlwHw5yTHa', 'Jqe48P3hLyUXUFmHiAMSx0VCeqI47zflWb8StiUhQnG51Cf1lQx76hJw4HyO', '2019-09-01 09:18:17', '2019-09-01 09:18:17', NULL),
(433, 2, 1, 'AIAC Junior', 'ajegroupe@gmail.com', NULL, 'Casablanca', '+2121627674', '$2y$10$JOLIkx6tcrDjGKnhUr7ixe/zUJ1ArlzLo3G3pYn7a/6aWnExJ/i3S', 'asJIBfAzT4Hl2vcxInxTQmPWNMnMSVEWn8aXQ6qTAA3QYeZFUlKJ5LCWVQ1c', '2019-09-01 21:06:48', '2019-09-01 21:06:48', NULL),
(434, 2, 1, 'blah', 'blah@blah.co.ke', NULL, 'mumbai', '097764989', '$2y$10$fwvhT1.ly31v8C3ET8ZVFO7a2TngFR4C6KTCsI5blPMXBAStYW49m', '0NFdwf6QAHM2Px5ZhWX1nuir6SRM2aBq8QkgAz7EW067QzDkEBUimKaaTIXQ', '2019-09-02 01:26:16', '2019-09-02 01:26:16', NULL),
(435, 2, 1, 'fssd', 'sdfasdf2#g@gmail.com', NULL, 'dfvdsf', NULL, '$2y$10$wzLY40a7kiYHMfoUQib6iOfJGjiXix9umqDhcLksgCMhA7YdQIBn.', NULL, '2019-09-03 17:10:54', '2019-09-03 17:10:54', NULL),
(436, 2, 1, 'joebagru', 'macware1985@gmail.com', NULL, 'dumaguete', '4312928', '$2y$10$jTvnlswKIFVqaGMVeiqA6eGj67uFvgqKtLBmEbVTsb9yr5em6Xpj2', 'MFWf5Sjbr5p5oNB3AXg3FdTjpgWUUe7cu9QtzgFD142OY4T6xPM23z6PUewA', '2019-09-04 14:59:06', '2019-09-04 14:59:06', NULL),
(437, 2, 1, 'MD MONIRUL ISLAM', 'wsgp.trad@gmail.com', NULL, 'sohar', '95686463', '$2y$10$E8u9rQdeNsvbL2grr5yNhOgt.DYgqRc1RZayi73ChuzHrMJZuQFEy', NULL, '2019-09-04 18:23:57', '2019-09-04 18:23:57', NULL),
(438, 2, 1, 'Mirza Music', 'soloxen@gmail.com', NULL, 'Round Lake', '123012031', '$2y$10$wODzw8.8nDoU2ywkBR5gIerO6j6dq90MXBpGoJS5WzNX5TB.xRzQG', NULL, '2019-09-07 03:30:12', '2019-09-07 03:30:12', NULL),
(440, 2, 1, 'Juan Ramon Jimenez', 'mixiando@gmail.com', NULL, 'Santo Domingo', '8094949276', '$2y$10$mZwSGAD/O4tT2dT/3e3o.u7/a7gKdpCGdITnCMpYd/bllTd4JB1YW', NULL, '2019-09-10 02:58:03', '2019-09-10 02:58:03', NULL),
(441, 2, 1, 'Industrial News', 'tourpackage@gmail.com', NULL, 'boston', '000000000', '$2y$10$ibB.pn1VTeIladNhika37.eDTYUizTfznQpOhtHuecdM6OuDDggDW', 'eKInMAE80WRdpCQ4m6yORQarfeW3jtk8kMW65fofbbc55o3xYC4XDqPl99fu', '2019-09-10 06:18:40', '2019-09-10 06:18:40', NULL),
(442, 2, 1, 'aaaa', 'bbbb@bbb.pl', NULL, 'sfafgsdg', '54857878', '$2y$10$XQ.RemFqiMrK5cMBU5i6z.ts0868RclYvGKbG29C7puN0gt0cYk8m', 'utYADBfITFCNM5agwGj9WWuKUbxyNHHNDrhMYr2ZMhtYHFGMscmRa8Ti3B48', '2019-09-10 14:57:21', '2019-09-10 14:57:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bikes_photo_id_index` (`photo_id`),
  ADD KEY `bikes_branch_id_index` (`branch_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_type_id_index` (`type_id`),
  ADD KEY `cars_gearbox_id_index` (`gearbox_id`),
  ADD KEY `cars_branch_id_index` (`branch_id`),
  ADD KEY `cars_photo_id_index` (`photo_id`),
  ADD KEY `cars_fuel_id_index` (`fuel_id`);

--
-- Indexes for table `car_fuels`
--
ALTER TABLE `car_fuels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_gearboxes`
--
ALTER TABLE `car_gearboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_types`
--
ALTER TABLE `car_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_replies_comment_id_index` (`comment_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motos`
--
ALTER TABLE `motos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `motos_photo_id_index` (`photo_id`),
  ADD KEY `motos_branch_id_index` (`branch_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_photo_id_index` (`photo_id`);

--
-- Indexes for table `rental_bikes`
--
ALTER TABLE `rental_bikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_bikes_user_id_index` (`user_id`),
  ADD KEY `rental_bikes_bike_id_index` (`bike_id`),
  ADD KEY `rental_bikes_branch_pickup_index` (`branch_pickup`),
  ADD KEY `rental_bikes_branch_return_index` (`branch_return`);

--
-- Indexes for table `rental_cars`
--
ALTER TABLE `rental_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_cars_user_id_index` (`user_id`),
  ADD KEY `rental_cars_car_id_index` (`car_id`),
  ADD KEY `rental_cars_branch_pickup_index` (`branch_pickup`),
  ADD KEY `rental_cars_branch_return_index` (`branch_return`);

--
-- Indexes for table `rental_motos`
--
ALTER TABLE `rental_motos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_motos_user_id_index` (`user_id`),
  ADD KEY `rental_motos_moto_id_index` (`moto_id`),
  ADD KEY `rental_motos_branch_pickup_index` (`branch_pickup`),
  ADD KEY `rental_motos_branch_return_index` (`branch_return`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bikes`
--
ALTER TABLE `bikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `car_fuels`
--
ALTER TABLE `car_fuels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_gearboxes`
--
ALTER TABLE `car_gearboxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `car_types`
--
ALTER TABLE `car_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `motos`
--
ALTER TABLE `motos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rental_bikes`
--
ALTER TABLE `rental_bikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `rental_cars`
--
ALTER TABLE `rental_cars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `rental_motos`
--
ALTER TABLE `rental_motos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bikes`
--
ALTER TABLE `bikes`
  ADD CONSTRAINT `bikes_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cars_fuel_id_foreign` FOREIGN KEY (`fuel_id`) REFERENCES `car_fuels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cars_gearbox_id_foreign` FOREIGN KEY (`gearbox_id`) REFERENCES `car_gearboxes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cars_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `car_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD CONSTRAINT `comment_replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rental_bikes`
--
ALTER TABLE `rental_bikes`
  ADD CONSTRAINT `rental_bikes_bike_id_foreign` FOREIGN KEY (`bike_id`) REFERENCES `bikes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rental_bikes_branch_pickup_foreign` FOREIGN KEY (`branch_pickup`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `rental_bikes_branch_return_foreign` FOREIGN KEY (`branch_return`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `rental_bikes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rental_cars`
--
ALTER TABLE `rental_cars`
  ADD CONSTRAINT `rental_cars_branch_pickup_foreign` FOREIGN KEY (`branch_pickup`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `rental_cars_branch_return_foreign` FOREIGN KEY (`branch_return`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `rental_cars_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rental_cars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rental_motos`
--
ALTER TABLE `rental_motos`
  ADD CONSTRAINT `rental_motos_branch_pickup_foreign` FOREIGN KEY (`branch_pickup`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `rental_motos_branch_return_foreign` FOREIGN KEY (`branch_return`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `rental_motos_moto_id_foreign` FOREIGN KEY (`moto_id`) REFERENCES `motos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rental_motos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

SET @OLD_CHARACTER_SET_CLIENT = @@character_set_client;
SET @OLD_COLLATION_CONNECTION = @@collation_connection;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
