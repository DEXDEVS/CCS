-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 09:20 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_fname` varchar(25) NOT NULL,
  `author_mname` varchar(25) NOT NULL,
  `author_lname` varchar(25) NOT NULL,
  `author_country` varchar(128) NOT NULL,
  `author_affiliation` varchar(256) NOT NULL,
  `author_email` varchar(56) NOT NULL,
  `author_corresponding` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_fname`, `author_mname`, `author_lname`, `author_country`, `author_affiliation`, `author_email`, `author_corresponding`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Anas ', '', 'Shafqat', 'Pakistan', 'Dexdevs', 'anas@gmail.com', 1, '2019-03-27 09:35:22', '0000-00-00 00:00:00', 2, 0),
(2, 'Nauman', '', 'Hashmi', 'USA', 'Dexdevs', 'nauman@gmail.com', 1, '2019-03-27 09:35:22', '0000-00-00 00:00:00', 2, 0),
(3, 'Kinza', '', 'Mustafa', 'Pakistan', 'Dexdevs', 'kinza@gmail.com', 1, '2019-03-27 10:04:59', '0000-00-00 00:00:00', 2, 0),
(4, 'Kinza', '', 'Mustafa', 'Pakistan', 'aaaa', 'kinza@gmail.com', 1, '2019-03-27 14:33:40', '0000-00-00 00:00:00', 4, 0),
(5, 'nauman', '', 'Hashmi', 'India', 'Affliation', 'nomi@gmail.com', 1, '2019-03-27 14:33:40', '0000-00-00 00:00:00', 4, 0),
(6, 'Amna', '', 'dfghj', 'fghjk', 'fghjk', 'nkkjhg@gmail.com', 1, '2019-03-29 10:34:44', '0000-00-00 00:00:00', 8, 0),
(7, 'Nimra', '', 'Ramzan', 'Pakistan', 'fghjk', 'nimra@gmail.com', 1, '2019-03-29 10:42:38', '0000-00-00 00:00:00', 8, 0),
(8, 'Nimra', '', 'Ramzan', 'Pakistan', 'fghjk', 'nimra@gmail.com', 1, '2019-03-29 10:44:52', '0000-00-00 00:00:00', 8, 0),
(9, 'Asad', '', 'Ramzan', 'Pakistan', 'Dexdevz', 'asad@gmail.com', 1, '2019-03-29 10:49:19', '0000-00-00 00:00:00', 8, 0),
(10, 'nauman', '', 'Hashmi', 'Australia', 'Affliation', 'nomi@gmail.com', 1, '2019-03-29 10:49:20', '0000-00-00 00:00:00', 8, 0),
(11, 'Amna', '', 'dfghj', 'fghjk', 'fghjk', 'nkkjhg@gmail.com', 1, '2019-03-29 10:54:50', '0000-00-00 00:00:00', 8, 0),
(12, 'Amna', '', 'dfghj', 'fghjk', 'fghjk', 'nkkjhg@gmail.com', 1, '2019-03-29 10:57:15', '0000-00-00 00:00:00', 8, 0),
(13, 'Amna', '', 'Ramzan', 'Pakistan', 'fghjk', 'nimra@gmail.com', 1, '2019-04-07 14:43:42', '0000-00-00 00:00:00', 4, 0),
(14, 'Iqra ', '', 'Aziz', 'Pakistan', 'DEXDEVS', 'iqraaziz@gmail.com', 1, '2019-04-08 11:58:08', '0000-00-00 00:00:00', 3, 0),
(15, 'Mahira', '', 'Khan', 'Pakistan', 'Dexdevs', 'mahira@gmail.com', 1, '2019-04-08 11:58:08', '0000-00-00 00:00:00', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `conferences`
--

CREATE TABLE `conferences` (
  `conf_id` int(11) NOT NULL,
  `conf_name` varchar(512) NOT NULL,
  `conf_year` year(4) NOT NULL,
  `conf_venue` varchar(100) NOT NULL,
  `conf_start_date` datetime NOT NULL,
  `conf_end_date` datetime NOT NULL,
  `conf_abstract_DL` datetime NOT NULL,
  `conf_poster_DL` datetime NOT NULL,
  `conf_fullpaper_DL` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conferences`
--

INSERT INTO `conferences` (`conf_id`, `conf_name`, `conf_year`, `conf_venue`, `conf_start_date`, `conf_end_date`, `conf_abstract_DL`, `conf_poster_DL`, `conf_fullpaper_DL`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '1st International Conference on Data Science and Knowledge Discovery @ KFUEIT', 2019, '@ KFUEIT', '2019-09-01 00:00:00', '2019-09-05 00:00:00', '2019-07-01 00:00:00', '2019-08-01 00:00:00', '2019-08-01 00:00:00', '0000-00-00 00:00:00', '2019-03-28 23:28:15', 1, 4),
(2, '2nd International Conference @ KFUEIT', 2019, '@ KFUEIT', '2019-03-24 09:44:05', '2019-03-24 09:44:08', '2019-03-24 09:44:05', '2019-03-24 09:44:05', '2019-03-24 09:44:05', '2019-03-24 21:44:23', '2019-03-28 23:32:50', 1, 4),
(3, '3rd International Conference @kfueit', 2019, 'ABC', '2019-04-14 08:10:17', '2019-04-08 08:11:07', '2019-04-08 08:11:11', '2019-04-08 08:11:14', '2019-04-08 08:11:17', '2019-04-08 20:11:20', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1553241841),
('m130524_201442_init', 1553241847),
('m140209_132017_init', 1554638093),
('m140403_174025_create_account_table', 1554638094),
('m140504_113157_update_tables', 1554638098),
('m140504_130429_create_token_table', 1554638100),
('m140830_171933_fix_ip_field', 1554638100),
('m140830_172703_change_account_table_name', 1554638101),
('m141222_110026_update_ip_field', 1554638101),
('m141222_135246_alter_username_length', 1554638102),
('m150614_103145_update_social_account_table', 1554638104),
('m150623_212711_fix_username_notnull', 1554638104),
('m151218_234654_add_timezone_to_profile', 1554638105),
('m160929_103127_add_last_login_at_to_user_table', 1554638105);

-- --------------------------------------------------------

--
-- Table structure for table `paper_authors`
--

CREATE TABLE `paper_authors` (
  `pa_id` int(11) NOT NULL,
  `pa_sub_id` int(11) NOT NULL,
  `pa_author_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper_authors`
--

INSERT INTO `paper_authors` (`pa_id`, `pa_sub_id`, `pa_author_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 1, '2019-03-27 09:35:22', '0000-00-00 00:00:00', 2, 0),
(2, 1, 2, '2019-03-27 09:35:22', '0000-00-00 00:00:00', 2, 0),
(3, 2, 3, '2019-03-27 10:04:59', '0000-00-00 00:00:00', 2, 0),
(4, 3, 4, '2019-03-27 14:33:40', '0000-00-00 00:00:00', 4, 0),
(5, 3, 5, '2019-03-27 14:33:40', '0000-00-00 00:00:00', 4, 0),
(6, 5, 6, '2019-03-29 10:34:44', '0000-00-00 00:00:00', 8, 0),
(7, 6, 7, '2019-03-29 10:42:38', '0000-00-00 00:00:00', 8, 0),
(8, 7, 8, '2019-03-29 10:44:52', '0000-00-00 00:00:00', 8, 0),
(9, 8, 9, '2019-03-29 10:49:20', '0000-00-00 00:00:00', 8, 0),
(10, 8, 10, '2019-03-29 10:49:20', '0000-00-00 00:00:00', 8, 0),
(11, 9, 11, '2019-03-29 10:54:50', '0000-00-00 00:00:00', 8, 0),
(12, 10, 12, '2019-03-29 10:57:15', '0000-00-00 00:00:00', 8, 0),
(13, 11, 13, '2019-04-07 14:43:42', '0000-00-00 00:00:00', 4, 0),
(14, 12, 14, '2019-04-08 11:58:08', '0000-00-00 00:00:00', 3, 0),
(15, 12, 15, '2019-04-08 11:58:08', '0000-00-00 00:00:00', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `reviewer_id` int(11) NOT NULL,
  `reviewer_name` varchar(256) NOT NULL,
  `reviewer_cnic` varchar(15) NOT NULL,
  `reviewer_designation` varchar(56) NOT NULL,
  `reviewer_email` varchar(64) NOT NULL,
  `reviewer_domain` varchar(56) NOT NULL,
  `reviewer_contact_no` varchar(15) NOT NULL,
  `reviewer_website` varchar(56) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewers`
--

INSERT INTO `reviewers` (`reviewer_id`, `reviewer_name`, `reviewer_cnic`, `reviewer_designation`, `reviewer_email`, `reviewer_domain`, `reviewer_contact_no`, `reviewer_website`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Anas', '31303-4567898-7', 'MD', 'anas@dexdevs.com', 'Database', '+92-987-6543456', 'dexdevs.com', '2019-04-08 22:55:01', '0000-00-00 00:00:00', 1, 0),
(2, 'Faraz', '31303-3333333-3', 'CEO', 'admin@ranafaraz.com', 'ranafaraz.com', '+92-300-6999824', 'ranafaraz.com', '2019-04-08 23:15:35', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `sub_id` int(11) NOT NULL,
  `conf_id` int(11) NOT NULL,
  `sub_type` enum('Abstract','Full Paper','Poster Paper') NOT NULL,
  `sub_title` varchar(256) NOT NULL,
  `sub_abstract` text NOT NULL,
  `sub_keywords` varchar(56) NOT NULL,
  `sub_file` varchar(120) NOT NULL,
  `sub_status` varchar(10) NOT NULL DEFAULT 'Pending',
  `count_title` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`sub_id`, `conf_id`, `sub_type`, `sub_title`, `sub_abstract`, `sub_keywords`, `sub_file`, `sub_status`, `count_title`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'Poster Paper', 'Collection of Automonous System Level Topology Using Looking Servers', 'kjhgfdsasdfghjhgfx\r\n;lkjhgfdfghjkmnbvcxcvbnmnbvbhjkjhgf\r\n', 'Networking,Data Manning', 'uploads/Poster Paper-XYZ.docx', 'Pending', 0, '2019-03-27 09:35:22', '0000-00-00 00:00:00', 14, 0),
(2, 2, 'Full Paper', 'Artificial Intelligence', 'juhygtfdsasdfghjkkjhgvfcdxcvgbnmnbvc\r\njhgfdszxdcfvghjkjhgffghjk\r\nkjhgfdxdcfvghjkjhgvfcdx\r\nhgfdxcfvgbhjklkjhgfd', 'Data Mining,Machine Learning', 'uploads/Full Paper-Artificial Intelligence.xlsx', 'Pending', 0, '2019-03-27 10:04:59', '0000-00-00 00:00:00', 14, 0),
(3, 1, 'Abstract', 'Abcd', 'ertyuiop\r\nfghjkl;\r\nxcvbnm,\r\nsdfghjk\r\nertyuio', 'ABC', 'uploads/Abstract-Abcd.docx', 'Pending', 0, '2019-03-27 14:33:40', '0000-00-00 00:00:00', 14, 0),
(5, 1, 'Full Paper', 'KJHGFCVBNMNB', 'KJHGVCVBHJKKJHBVBHJKJBVasdfghj\r\njhgcxcvbjk', 'KJHGFDFGHJKLKJHGV', 'uploads/Full Paper-KJHGFCVBNMNB.docx', 'Pending', 0, '2019-03-29 10:34:44', '0000-00-00 00:00:00', 20, 0),
(6, 1, 'Abstract', 'title', 'wertyuio\r\nasdfghjk\r\nzxcvbnm\r\nqwertyuio\r\nasdfghjk\r\nzxcvbnm', 'ABCD', 'uploads/Abstract-title.xlsx', 'Reviewed', 1, '2019-03-29 10:42:38', '0000-00-00 00:00:00', 20, 0),
(7, 1, 'Full Paper', 'DBMS', 'qwertyui\r\nasdfghjk\r\nzxcvbnm', 'Database', 'uploads/Full Paper-DBMS.docx', 'Pending', 0, '2019-03-29 10:44:52', '0000-00-00 00:00:00', 20, 0),
(8, 2, 'Poster Paper', 'KJHGFCVBNMNB', 'sdfghujhgfds\r\nkjhgfcdxzsxcvbn\r\nhgfdsdfghjk\r\nlkjhgfdfghjkl', 'Database', 'uploads/Poster Paper-KJHGFCVBNMNB.docx', 'Pending', 0, '2019-03-29 10:49:19', '0000-00-00 00:00:00', 20, 0),
(9, 2, 'Full Paper', 'KJHGFCVBNMNB', 'jhgfddfghjk\r\nlkjhgfdfghjkl\r\n;lkjhgfdsdfghjkl\r\nlkjhgfdsdfghjkl\r\n;lkjhgfdfghjkl', 'Database', 'uploads/Full Paper-KJHGFCVBNMNB.docx', 'Pending', 0, '2019-03-29 10:54:50', '0000-00-00 00:00:00', 14, 0),
(10, 2, 'Full Paper', 'KJHGFCVBNMNB', 'jhgfddfghjk\r\nlkjhgfdfghjkl\r\n;lkjhgfdsdfghjkl\r\nlkjhgfdsdfghjkl\r\n;lkjhgfdfghjkl', 'Database', 'uploads/Full Paper-KJHGFCVBNMNB.docx', 'Pending', 0, '2019-03-29 10:57:15', '0000-00-00 00:00:00', 20, 0),
(11, 2, 'Abstract', 'DBMS', 'kjhgfdfghjkl\r\nlkjhgfcxcvbnm,.\r\n;lkjhgffghjkl\r\n;lkjhgfdfvgbhjkl\r\n', 'KJHGFDFGHJKLKJHGV', 'uploads/Abstract-DBMS.docx', 'Reviewed', 2, '2019-04-07 14:43:42', '0000-00-00 00:00:00', 14, 0),
(12, 2, 'Abstract', 'Database', 'qwertyuiopasdfghjkl\r\nnbvcxz\r\nkjhgfdsa\r\nuytrewq\r\njhgfdsa\r\nnbvcx\r\njhgfds\r\nytrew\r\njhgfds', 'Keywords', 'uploads/Abstract-Database.jpg', 'Pending', 0, '2019-04-08 11:58:08', '0000-00-00 00:00:00', 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_assignment`
--

CREATE TABLE `sub_assignment` (
  `assign_id` int(11) NOT NULL,
  `assign_sub_id` int(11) NOT NULL,
  `assign_reviewer_id` int(11) NOT NULL,
  `assign_deadline` datetime NOT NULL,
  `assign_reviews` text NOT NULL,
  `assign_sub_status` varchar(10) DEFAULT NULL,
  `status` enum('Pending','Reviewed') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_assignment`
--

INSERT INTO `sub_assignment` (`assign_id`, `assign_sub_id`, `assign_reviewer_id`, `assign_deadline`, `assign_reviews`, `assign_sub_status`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 6, 1, '2019-04-08 11:09:50', '			 				asdsadas', 'Rejected', 'Reviewed', '2019-04-08 23:09:52', '0000-00-00 00:00:00', 16, 0),
(2, 11, 1, '2019-04-08 11:23:11', '', NULL, 'Pending', '2019-04-08 23:23:14', '0000-00-00 00:00:00', 16, 0),
(3, 11, 2, '2019-04-08 11:23:11', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', 'Rejected', 'Reviewed', '2019-04-08 23:23:14', '0000-00-00 00:00:00', 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(13, 'wwySMMQzxwgJgHRWRKLW5PtMQbYsvz4n', 1554711403, 0),
(15, 'kdgAIftNMzvCnBn2IyKf6-gNBU5j6koE', 1554713897, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `usertype`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `status`, `flags`, `last_login_at`) VALUES
(14, 'nadia', 'nadiagull285@gmail.com', '', '$2y$10$AuOMq6mld0c/Gcu7c0vVAuKNoUKeXkiMlbUujtb5TE/bQKoCTLWzq', 'iHiR1f7FgQcZi9nIEZedEtI2b5wmmf6R', 1554711724, NULL, NULL, '::1', 1554711689, 1554711689, 10, 0, 1554748088),
(16, 'kinza', 'kinza.fatima.522@gmail.com', 'Admin', '$2y$10$vL8/cMn3NliYNoPihkCove7WKi3ixY3aZUKcKsQK30B1UBTxSz7q2', 'f4VQ-YDdOHyOx9ermBP8cRP_l1RSYUg6', 1554736569, NULL, NULL, '::1', 1554714257, 1554714257, 10, 0, 1554747747),
(17, 'waleed', 'wbinnaeem@gmail.com', '', '$2y$10$QD55iSnx2cLKjW2vvCHeOefEqMtOOUTxhXtftzc7BsyRy1/ldJd4.', 'ZUCyCJMLeN4uqj4T-gCfVIMr2EnOBIhk', 1554737406, NULL, NULL, '::1', 1554737368, 1554737368, 10, 0, 1554737657),
(18, 'dexdevs', 'dexdevs007@gmail.com', 'superadmin', '$2y$10$0vtiafFHqqbLqV6x1OKcgOItYC1xtwVmGoVQ4wD4DBAJ7D7nGfy1S', 'W81jrT5-145-wXbFSCgspDdFU1qKZTIv', 1554739898, NULL, NULL, '::1', 1554739821, 1554739821, 10, 0, 1554747090),
(20, 'anasshafqat', 'anasshafqat01@gmail.com', '', '$2y$10$/eRrKQbbGwwaCxOAY.qEV.NUa1ElaRzf0rqmnGYYWzVce.rhsApt.', 'Ja8ppCvwVrzNsuSf3gvWJm_b1q8wPpax', 1554743552, NULL, NULL, '::1', 1554743424, 1554743424, 10, 0, NULL),
(21, 'anas', 'anas@dexdevs.com', 'Reviewer', '$2y$10$qlImhK7Iz9dD7O6xA.NCLukaeYVRtE4VgwRhevYX.ixTa5WLNgTfO', 'ApPDXwZewtw4uomWX9ChaewGnkCh2F-T', 1554746553, NULL, NULL, '::1', 1554745839, 1554745839, 10, 0, 1554747568),
(22, 'faraz_reviewer', 'admin@ranafaraz.com', 'Reviewer', '$2y$10$B6222HJTmyY6mdGVgug8meoZqYhqytucFdXGIUnKZoK4BdSrkKVni', '8PIZRhAkvP007ownLAid982IPwNESM7t', 1554747505, NULL, NULL, '::1', 1554747331, 1554747331, 10, 0, 1554747915),
(23, 'sadiagull', 'sadiagull400@gmail.com', NULL, '$2y$10$i.jifaZXZPmtZVZ1xIYBZOyhJrlTW9eILzVB.AZcIY.xbQl1rPpmK', 'JGhKyGbSTtnJSGfKrsLL2rnND0KAZEM1', 1554751117, NULL, NULL, '::1', 1554751091, 1554751091, 10, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE `user2` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user2`
--

INSERT INTO `user2` (`id`, `username`, `usertype`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', '6uX56u1vFgg02KUIlQz_u9zcGmNNxnw4', '$2y$13$8XbvxX/oPARvIJnQkPEIieZafzrP9dXJjnx8/98LxIki5lWJNG0o.', NULL, 'admin@dskdconf.org', 10, 1553418813, 1553418813),
(2, 'nadia', 'Reviewer', '82_3HKFRR0RIOehn6Gcm6pUDDQ0YeXBb', '$2y$13$3FJXhAOAm9yxbyqeGzNOQOJl/F3SU.DI7.0X8.6QIeSKXHn./cXAa', NULL, 'nadiagull285@gmail.com', 10, 1553578542, 1553578542),
(3, 'anas', '', 'HMdJxSCbGZppgpYl-2VKuYVDxtEXeVBn', '$2y$13$oXIKQ8CNWNQM6x6Yz4UddOMN9oDV1vsiQRzQHzPAQuORbJU/eMNpK', NULL, 'anas@dexdevs.com', 10, 1553582735, 1553582735),
(4, 'Kinza', NULL, 'Mv8lNfSbY070Ip9HuddKZ4NI7xDoj5-8', '$2y$13$zdHImXwPlRDEjMzqmnj6lOPf1xnV912cHKebvqoXW35V4t.liZzHG', NULL, 'kinza.fatima.522@gmail.com', 10, 1553671645, 1553671645),
(6, 'nauman', NULL, 'f62woFhiknlLghMi55bfwo6Wjqx_E6is', '$2y$13$lf0AZYFn/R0mcPcCnv4n6.A.ncePARuDi4.qXZ9tVBKmj4r7eyIXa', NULL, 'nauman@gmail.com', 10, 1553672699, 1553672699),
(7, 'faraz', 'Reviewer', 'yPU59PahUt46PSPKveRL7t111oK07-0r', '$2y$13$wLKRNR.X08nqQEWzOiiS4OGpkvRXVCdYD4axmT/a/5BdRxmGuR7U6', NULL, 'faraz@gmail.com', 10, 1553673489, 1553673489),
(8, 'iqra', NULL, 'rvmA0K8QUav2RpsA-ZSU_jrDfROf0abr', '$2y$13$yjGrxgDIcn7a9fY0w1XhNu1KYNmK4BQVWc6zt2/W/o0FPupzycDde', NULL, 'iqra@gmail.com', 10, 1553679498, 1553679498),
(9, 'aniqa', 'Reviewer', 'EvcAqdQEnVpZffZSQsSsGg9OllvYQKZ5', '$2y$13$5Uvxtf9CAl7K8Tu.ZbEwsuA8oZuu0xjkFIdgI2cualRnYArlpkLPO', NULL, 'aniqa@gmail.com', 10, 1553872422, 1553872422),
(10, 'sadiagull', 'Reviewer', 'Lw055QqureaUq6UwqpAAazCLQlgj4ImW', '$2y$13$Xj2DUyAnMOYP3nM1NpczO.m24mRZyrjjkwfpdTDdQnwnG2QW9vbvu', NULL, 'sadiagull@gmail.com', 10, 1553872777, 1553872777),
(12, 'ali', NULL, 'do4tfTc9-QQK4ybKpFfFGOhj0Oed8jlT', '$2y$13$M.HvMZzNcD6yavOi5HAj.e3BylsbW2cZjoJbmgwP7VJJSd6L7lH3q', NULL, 'ali@gmail.com', 10, 1554184974, 1554184974),
(13, 'saif', 'Reviewer', 'meueVK8GTsPMYznKu66UASYAb1buADV2', '$2y$13$jEWg5WgijWaOirWfsC6G2uLjR2NqooQYvI/oJiiyBDVpE3pFvnTs2', NULL, 'saif@gmail.com', 10, 1554185144, 1554185144),
(14, 'farhan', 'Reviewer', 'aAzAQKiGcC2RTOVv2gRlTHWqleNqwavy', '$2y$13$gKl77pIPgAg92ZSPszqlMOh/nssCljjXK8gkSehP9vfBQDt.ehi7u', NULL, 'farhan@gmail.com', 10, 1554185357, 1554185357);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `conferences`
--
ALTER TABLE `conferences`
  ADD PRIMARY KEY (`conf_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `paper_authors`
--
ALTER TABLE `paper_authors`
  ADD PRIMARY KEY (`pa_id`),
  ADD KEY `pa_sub_id` (`pa_sub_id`),
  ADD KEY `pa_author_id` (`pa_author_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`reviewer_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `conf_id` (`conf_id`);

--
-- Indexes for table `sub_assignment`
--
ALTER TABLE `sub_assignment`
  ADD PRIMARY KEY (`assign_id`),
  ADD KEY `assign_sub_id` (`assign_sub_id`),
  ADD KEY `assign_reviewer_id` (`assign_reviewer_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- Indexes for table `user2`
--
ALTER TABLE `user2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paper_authors`
--
ALTER TABLE `paper_authors`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `reviewer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_assignment`
--
ALTER TABLE `sub_assignment`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user2`
--
ALTER TABLE `user2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paper_authors`
--
ALTER TABLE `paper_authors`
  ADD CONSTRAINT `paper_authors_ibfk_1` FOREIGN KEY (`pa_sub_id`) REFERENCES `submissions` (`sub_id`),
  ADD CONSTRAINT `paper_authors_ibfk_2` FOREIGN KEY (`pa_author_id`) REFERENCES `authors` (`author_id`);

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`conf_id`) REFERENCES `conferences` (`conf_id`);

--
-- Constraints for table `sub_assignment`
--
ALTER TABLE `sub_assignment`
  ADD CONSTRAINT `sub_assignment_ibfk_1` FOREIGN KEY (`assign_sub_id`) REFERENCES `submissions` (`sub_id`),
  ADD CONSTRAINT `sub_assignment_ibfk_2` FOREIGN KEY (`assign_reviewer_id`) REFERENCES `reviewers` (`reviewer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
