-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2018 at 08:09 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbstudent`
--

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `academic_id` int(10) UNSIGNED NOT NULL,
  `academic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`academic_id`, `academic`, `description`) VALUES
(1, '2017-2018', NULL),
(5, '2016-2017', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(10) UNSIGNED NOT NULL,
  `batch` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_id`, `batch`) VALUES
(4, '1'),
(5, '2');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(10) UNSIGNED NOT NULL,
  `academic_id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `shift_id` int(10) UNSIGNED NOT NULL,
  `time_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `batch_id` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `academic_id`, `level_id`, `shift_id`, `time_id`, `group_id`, `batch_id`, `start_date`, `end_date`, `active`) VALUES
(14, 1, 6, 3, 11, 2, 4, '2017-06-14', '2018-07-11', 1),
(15, 1, 7, 4, 12, 3, 5, '2017-06-01', '2018-06-01', 1),
(16, 1, 9, 3, 11, 2, 4, '2016-04-20', '2017-05-17', 1),
(17, 1, 7, 4, 12, 3, 5, '2017-07-06', '2018-07-11', 1),
(18, 1, 6, 4, 12, 2, 4, '2017-05-11', '2018-05-17', 1),
(19, 1, 10, 3, 11, 2, 4, '2017-04-12', '2018-05-15', 1),
(20, 1, 8, 3, 11, 2, 4, '2017-05-10', '2018-06-13', 1),
(21, 5, 6, 3, 11, 2, 4, '2016-06-11', '2017-05-09', 1),
(22, 5, 7, 3, 11, 2, 4, '2016-05-17', '2017-05-09', 1),
(23, 5, 8, 3, 11, 2, 4, '2016-01-03', '2017-01-09', 1),
(24, 5, 10, 3, 11, 2, 4, '2016-02-09', '2017-06-14', 1),
(25, 5, 9, 3, 11, 2, 4, '2016-06-15', '2017-06-14', 1),
(26, 1, 10, 3, 11, 2, 4, '2017-06-21', '2018-06-12', 1),
(27, 5, 8, 3, 11, 2, 4, '2016-05-18', '2018-06-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(10) UNSIGNED NOT NULL,
  `academic_id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `fee_type_id` int(10) UNSIGNED NOT NULL,
  `fee_heading` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fee_id`, `academic_id`, `level_id`, `fee_type_id`, `fee_heading`, `amount`) VALUES
(2, 0000000001, 6, 2, 'Fees', 250),
(3, 0000000005, 6, 2, 'Fees', 250),
(4, 0000000005, 6, 2, 'Fees', 250),
(5, 0000000005, 6, 2, 'Fees', 250),
(6, 0000000005, 6, 2, 'Fees', 250),
(7, 0000000005, 6, 2, 'Fees', 200),
(8, 0000000005, 6, 2, 'Fees', 200),
(9, 0000000005, 6, 2, 'Fees', 100),
(10, 0000000005, 6, 2, 'Fees', 250),
(11, 0000000005, 6, 2, 'Fees', 260),
(12, 0000000005, 6, 2, 'Fees', 250),
(13, 0000000005, 6, 2, 'Fees', 250),
(14, 0000000005, 6, 2, 'Fees', 280),
(15, 0000000005, 6, 2, 'Fees', 200),
(16, 0000000005, 6, 2, 'Fees', 250);

-- --------------------------------------------------------

--
-- Table structure for table `feetypes`
--

CREATE TABLE `feetypes` (
  `fee_type_id` int(10) UNSIGNED NOT NULL,
  `fee_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feetypes`
--

INSERT INTO `feetypes` (`fee_type_id`, `fee_type`) VALUES
(2, 'School fee');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `groups` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `groups`) VALUES
(2, '1'),
(3, '2');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `level_id` int(10) UNSIGNED NOT NULL,
  `level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`level_id`, `level`, `description`, `program_id`) VALUES
(6, 'I', 'This is MS Word', 5),
(7, 'II', 'This is MS Word', 5),
(8, 'I', 'This is ms Excel', 7),
(9, 'I', 'This is ms Access', 8),
(10, 'II', 'This is ms Excel', 7),
(11, 'II', 'This is ms Access', 8);

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
(1, '2008_01_01_0000001_create_password_resets_table', 1),
(2, '2008_01_01_000002_create_roles_table', 1),
(3, '2008_01_01_000003_create_user_table', 1),
(4, '2008_01_01_000004_create_students_table', 1),
(5, '2008_01_01_000005_create_academics_table', 1),
(6, '2008_01_01_000006_create_programs_table', 1),
(7, '2008_01_01_090634_create_levels_table', 1),
(8, '2008_01_01_090720_create_shifts_table', 1),
(9, '2008_01_01_090804_create_times_table', 1),
(10, '2008_01_01_090843_create_batches_table', 1),
(11, '2008_01_01_090926_create_groups_table', 1),
(12, '2008_01_01_091121_create_classes_table', 1),
(13, '2008_01_01_091222_create_statuses_table', 1),
(14, '2008_01_01_091314_create_feetypes_table', 1),
(15, '2008_01_01_091346_create_fees_table', 1),
(16, '2008_01_01_091502_create_studentfees_table', 1),
(17, '2008_01_01_091552_create_transactions_table', 1),
(18, '2008_01_01_091651_create_receipts_table', 1),
(19, '2008_01_01_091744_create_receiptdetail_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(10) UNSIGNED NOT NULL,
  `program` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program`, `description`) VALUES
(5, 'MS-WORD', 'This is Ms Word'),
(6, 'MS-WORD', 'This is MS Word'),
(7, 'MS-EXCEL', 'This is ms Excel'),
(8, 'MS-ACCESS', 'This is ms Access');

-- --------------------------------------------------------

--
-- Table structure for table `receiptdetails`
--

CREATE TABLE `receiptdetails` (
  `receipt_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `transact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receiptdetails`
--

INSERT INTO `receiptdetails` (`receipt_id`, `student_id`, `transact_id`) VALUES
(1, 15, 2),
(2, 15, 3),
(3, 28, 4),
(4, 28, 5),
(5, 15, 6),
(6, 18, 7),
(7, 18, 8),
(8, 34, 9),
(9, 15, 10),
(10, 36, 11);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`receipt_id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Receiptionist', NULL, NULL),
(3, 'Manager', NULL, NULL),
(4, 'CEO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `shift_id` int(10) UNSIGNED NOT NULL,
  `shift` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`shift_id`, `shift`) VALUES
(3, 'Morning'),
(4, 'Evening');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `status_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`status_id`, `student_id`, `class_id`) VALUES
(15, 15, 14),
(16, 16, 20),
(17, 17, 20),
(18, 18, 21),
(19, 19, 16),
(20, 20, 16),
(21, 21, 23),
(22, 22, 24),
(23, 23, 24),
(24, 24, 14),
(25, 25, 23),
(26, 26, 25),
(27, 27, 25),
(28, 28, 21),
(29, 29, 14),
(30, 30, 21),
(31, 31, 21),
(32, 32, 25),
(33, 33, 25),
(34, 34, 21),
(35, 35, 20),
(36, 36, 21);

-- --------------------------------------------------------

--
-- Table structure for table `studentfees`
--

CREATE TABLE `studentfees` (
  `s_fee_id` int(10) UNSIGNED NOT NULL,
  `fee_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentfees`
--

INSERT INTO `studentfees` (`s_fee_id`, `fee_id`, `student_id`, `level_id`, `amount`, `discount`) VALUES
(29, 14, 18, 6, 250, 10),
(30, 14, 34, 6, 200, 28),
(31, 14, 15, 6, 200, 28),
(32, 14, 36, 6, 100, 64);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rac` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_card` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commune` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateregistered` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `sex`, `dob`, `email`, `rac`, `status`, `nationality`, `national_card`, `passport`, `phone`, `village`, `commune`, `district`, `province`, `current_address`, `dateregistered`, `user_id`, `photo`) VALUES
(15, 'Zannatun', 'Nayem', 1, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, '56315.2018-08-08.1533721980.jpg'),
(16, 'asdf', 'sadfd', 0, '2012-08-08', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, '49612.2018-08-08.1533722929.jpg'),
(17, 'Rahim', 'Ahamed', 0, '2018-08-22', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, '50927.2018-08-08.1533727132.jpg'),
(18, 'karim', 'Ahamed', 0, '2018-08-15', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, ''),
(19, 'Asha', 'Khatun', 1, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, ''),
(20, 'Asha', 'Khatun', 1, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, ''),
(21, 'sfgdg', 'sdfsg', 0, '2018-08-15', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, ''),
(22, 'desdfsf', 'sdsf', 1, '2018-08-07', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, ''),
(23, 'desdfsf', 'sdsf', 1, '2018-08-07', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-08', 1, ''),
(24, 'sfsd', 'sdfdsg', 1, '2018-08-08', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-09', 1, ''),
(25, 'xfgdgfd', 'gfdgdfh', 1, '2018-08-15', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-09', 1, ''),
(26, 'sdfsdfg', 'hfgjhgjhgk', 0, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-09', 1, ''),
(27, 'sdfsdfg', 'hfgjhgjhgk', 0, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-09', 1, ''),
(28, 'Trisna', 'Khatun', 1, '2018-08-13', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-09', 1, ''),
(29, 'zannat', 'Nayem', 1, '2018-08-16', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-09', 1, '21554.2018-08-09.1533837402.jpg'),
(30, 'Jabed', 'Ahamed', 0, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-09', 1, ''),
(31, 'Zannatun', 'Nayem', 1, '2018-08-15', 'a@gmail.com', 'gdg', 0, '456356', '5635+4', '56456', '45645456', 'sdf', NULL, 'sfsfg', 'sfsd', 'fsg', '2018-08-10', 1, '14927.2018-08-10.1533876162.jpg'),
(32, 'dfgfdg', 'dfgdh', 1, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-10', 1, ''),
(33, 'dfgfdg', 'dfgdh', 1, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-10', 1, ''),
(34, 'sdfsdt', 'dfdg', 0, '2018-08-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-10', 1, ''),
(35, 'zannat', 'Nayem', 1, '2018-08-14', 'a@gmail.com', '4565', 0, 'sdfsdf', '46546', '46456', '456456', 'asdad', NULL, 'asdad', '635', 'fgfh', '2018-08-10', 1, '50900.2018-08-10.1533880920.jpg'),
(36, 'zsdff', 'dfdfd', 1, '2018-08-15', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-10', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `time_id` int(10) UNSIGNED NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`time_id`, `time`) VALUES
(11, '07.30AM-11.30AM'),
(12, '01.30PM-05.30PM');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transact_id` int(10) UNSIGNED NOT NULL,
  `transact_date` datetime NOT NULL,
  `fee_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `s_fee_id` int(10) UNSIGNED NOT NULL,
  `paid` float NOT NULL,
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transact_id`, `transact_date`, `fee_id`, `user_id`, `student_id`, `s_fee_id`, `paid`, `remark`, `description`) VALUES
(8, '2018-08-10 05:42:24', 14, 1, 18, 29, 100, 'USD', 'Complete'),
(9, '2018-08-10 05:44:33', 14, 1, 34, 30, 100, 'USD', 'Complete'),
(10, '2018-08-10 05:47:55', 14, 1, 15, 31, 100, 'USD', 'Complete'),
(11, '2018-08-10 06:03:40', 14, 1, 36, 32, 50, 'USD', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `password`, `remember_token`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'zannat', 'zannat', 'zannat@gmail.com', '$2y$10$f0zv1rjWb7y8g8uF9lsbzuoYZTsgbR2fTa8sHg/fFgjGzImLRJVM2', 'NE562HoGuRUqyR1SmfGFNOQj28LzMPavZKnmgXOpwotRaM3GEriopMGHT1bz', 1, '2008-01-01 18:41:00', '2008-01-01 18:41:00'),
(2, 2, 'user', 'user', 'user@gmail.com', '$2y$10$k36.b1FniCoWBn2G0uEmG.UxchVNYIzUzPE8lTeqjuTEP1BGdOtle', 'eMcHWKVbvIqnVrdsuPh9Joktuqx1aAXfKrCJVanoRg7OAB3J2RmB16GRpXL0', 1, '2018-07-11 04:04:41', '2018-07-11 04:04:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`academic_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `classes_academic_id_foreign` (`academic_id`),
  ADD KEY `classes_level_id_foreign` (`level_id`),
  ADD KEY `classes_shift_id_foreign` (`shift_id`),
  ADD KEY `classes_time_id_foreign` (`time_id`),
  ADD KEY `classes_group_id_foreign` (`group_id`),
  ADD KEY `classes_batch_id_foreign` (`batch_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `fees_academic_id_foreign` (`academic_id`),
  ADD KEY `fees_level_id_foreign` (`level_id`),
  ADD KEY `fees_fee_type_id_foreign` (`fee_type_id`);

--
-- Indexes for table `feetypes`
--
ALTER TABLE `feetypes`
  ADD PRIMARY KEY (`fee_type_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`level_id`),
  ADD KEY `levels_program_id_foreign` (`program_id`);

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
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `statuses_student_id_foreign` (`student_id`),
  ADD KEY `statuses_class_id_foreign` (`class_id`);

--
-- Indexes for table `studentfees`
--
ALTER TABLE `studentfees`
  ADD PRIMARY KEY (`s_fee_id`),
  ADD KEY `studentfees_fee_id_foreign` (`fee_id`),
  ADD KEY `studentfees_student_id_foreign` (`student_id`),
  ADD KEY `studentfees_level_id_foreign` (`level_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transact_id`),
  ADD KEY `transactions_fee_id_foreign` (`fee_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_student_id_foreign` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `academic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `feetypes`
--
ALTER TABLE `feetypes`
  MODIFY `fee_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `level_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `receipt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `shift_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `status_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `studentfees`
--
ALTER TABLE `studentfees`
  MODIFY `s_fee_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `time_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_academic_id_foreign` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`academic_id`),
  ADD CONSTRAINT `classes_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`batch_id`),
  ADD CONSTRAINT `classes_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  ADD CONSTRAINT `classes_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`level_id`),
  ADD CONSTRAINT `classes_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`shift_id`),
  ADD CONSTRAINT `classes_time_id_foreign` FOREIGN KEY (`time_id`) REFERENCES `times` (`time_id`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_academic_id_foreign` FOREIGN KEY (`academic_id`) REFERENCES `academics` (`academic_id`),
  ADD CONSTRAINT `fees_fee_type_id_foreign` FOREIGN KEY (`fee_type_id`) REFERENCES `feetypes` (`fee_type_id`),
  ADD CONSTRAINT `fees_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`level_id`);

--
-- Constraints for table `levels`
--
ALTER TABLE `levels`
  ADD CONSTRAINT `levels_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`);

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `statuses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `studentfees`
--
ALTER TABLE `studentfees`
  ADD CONSTRAINT `studentfees_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`fee_id`),
  ADD CONSTRAINT `studentfees_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`level_id`),
  ADD CONSTRAINT `studentfees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`fee_id`),
  ADD CONSTRAINT `transactions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
