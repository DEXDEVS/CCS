-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2019 at 09:08 AM
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
(1, 'sdfghj', 'sdfghjk', 'jhgfd', 'iuytr', 'kjhgfdx', 'kjhgfd', 1, '2019-03-24 12:08:35', '0000-00-00 00:00:00', 0, 0),
(2, 'Aniqa', 'Gull', 'Iftikhar', 'pakistan', 'jhgf', 'aniqa@gmail.com', 1, '2019-03-24 12:11:34', '0000-00-00 00:00:00', 0, 0),
(3, 'kjhgfd', 'lkjhgfd', 'kjhgfd', 'kjhbgfd', 'kjhgfd', 'jhgf', 1, '2019-03-24 12:12:49', '0000-00-00 00:00:00', 0, 0),
(4, 'iuhygtfrde', 'kjhgtfd', 'jhgfd', 'nbvcx', 'jhgfd', 'jhgfdx', 1, '2019-03-24 12:12:49', '0000-00-00 00:00:00', 0, 0),
(5, 'Rana', 'Faraz', 'Ahmed', 'Pakistan', 'DEXDEVS', 'admin@ranafaraz.com', 1, '2019-03-24 12:21:54', '0000-00-00 00:00:00', 0, 0),
(6, 'Nadia', 'Gull', 'Rana', 'India', 'DEXDEVS', 'nadiagull285@gmail.com', 1, '2019-03-24 12:21:54', '0000-00-00 00:00:00', 0, 0),
(7, 'Nauman', 'Hashmi', 'Qureshi', 'Ethopia', 'DEXDEVS', 'naumanhashmi24@gmail.com', 0, '2019-03-24 12:21:54', '0000-00-00 00:00:00', 0, 0),
(8, 'Mr.', 'Ali', 'Naveed', 'Pakistan', 'xyz', 'ali@gmail.com', 1, '2019-03-24 14:20:13', '0000-00-00 00:00:00', 1, 0),
(9, 'Miss', 'Sadia', 'Gull', 'Pakistan', 'ABC', 'sadiagull@gmail.com', 1, '2019-03-24 14:20:13', '0000-00-00 00:00:00', 1, 0),
(10, 'Asmat', '', 'Ara', 'Pakistan', 'abc', 'asmat@gmail.com', 1, '2019-03-24 14:26:31', '0000-00-00 00:00:00', 1, 0),
(11, 'Waqas', '', 'Umer', 'pakistan', 'xyz', 'waqas@gmail.com', 0, '2019-03-24 14:26:32', '0000-00-00 00:00:00', 1, 0),
(12, 'dcvbnm,', '', 'lkjhbgvf', 'kjhg', 'kjhg', 'kjhg', 1, '2019-03-24 14:33:39', '0000-00-00 00:00:00', 1, 0),
(13, 'kjhgv', 'nbvc', 'nbvc', 'nbvc', 'jhbgvc', 'jhbgvc', 0, '2019-03-24 14:33:39', '0000-00-00 00:00:00', 1, 0),
(14, 'dfghjk', 'dfghjkl', 'dfghjk', 'fghjk', 'fghjkl', 'fghjk', 1, '2019-03-24 14:36:24', '0000-00-00 00:00:00', 1, 0),
(15, 'dfghjk', 'dfghjk', 'vbnm', 'dfghjk', 'fghjkl', 'fghjk', 1, '2019-03-24 14:36:25', '0000-00-00 00:00:00', 1, 0),
(16, 'Rana', 'Faraz', 'Ahmed', 'Pakistan', 'DEXDES', 'admin@ranafaraz.com', 1, '2019-03-24 15:04:38', '0000-00-00 00:00:00', 1, 0),
(17, 'Nadia', '', 'Gull', 'Uganda', 'DEXDEVS', 'nadiagull285@gmail.com', 1, '2019-03-24 15:04:38', '0000-00-00 00:00:00', 1, 0),
(18, 'kjhgfd', 'kjhgfd', 'jhgfd', 'lkjhgfd', 'kjhgfd', 'kjhgfd', 1, '2019-03-24 15:14:52', '0000-00-00 00:00:00', 0, 0),
(19, 'hbgvfcdxz', 'jhgfdsz', 'kjhgfdsz', 'kjhgfd', 'lkjhgfcdxz', 'jhgfdsz', 0, '2019-03-24 15:14:52', '0000-00-00 00:00:00', 0, 0),
(20, 'Aqsa', '', 'Rasheed', 'Pakistan', 'sdfgh', 'jhgfdsasdfghbv ', 1, '2019-03-24 15:45:26', '0000-00-00 00:00:00', 1, 0),
(21, 'Kinza', '', 'Mustafa', 'USA', 'PQR', 'kinza@gmail.com', 1, '2019-03-24 21:46:11', '0000-00-00 00:00:00', 0, 0),
(22, 'Asra', '', 'Mustafa', 'Pakistan', 'ABC', 'asra@gmail.com', 0, '2019-03-24 21:46:11', '0000-00-00 00:00:00', 0, 0),
(23, 'Aniqa', '', 'Gull', 'USA', 'XYZ', 'aniqa@gmail.com', 1, '2019-03-24 21:47:32', '0000-00-00 00:00:00', 0, 0),
(24, 'Aisha', '', 'Ameen', 'America', 'ABC', 'aisha@gmail.com', 1, '2019-03-24 21:50:44', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `conferences`
--

CREATE TABLE `conferences` (
  `conf_id` int(11) NOT NULL,
  `conf_name` varchar(512) NOT NULL,
  `conf_year` year(4) NOT NULL,
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

INSERT INTO `conferences` (`conf_id`, `conf_name`, `conf_year`, `conf_start_date`, `conf_end_date`, `conf_abstract_DL`, `conf_poster_DL`, `conf_fullpaper_DL`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '1st International Conference on Data Science and Knowledge Discovery @ KFUEIT', 2019, '2019-09-01 00:00:00', '2019-09-05 00:00:00', '2019-07-01 00:00:00', '2019-08-01 00:00:00', '2019-08-01 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(2, '2nd International Conference', 2019, '2019-03-24 09:44:05', '2019-03-24 09:44:08', '2019-03-24 09:44:05', '2019-03-24 09:44:05', '2019-03-24 09:44:05', '2019-03-24 21:44:23', '0000-00-00 00:00:00', 1, 0);

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
('m130524_201442_init', 1553241847);

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
(1, 1, 9, '2019-03-24 14:20:13', '0000-00-00 00:00:00', 1, 0),
(2, 2, 11, '2019-03-24 14:26:32', '0000-00-00 00:00:00', 1, 0),
(3, 3, 13, '2019-03-24 14:33:39', '0000-00-00 00:00:00', 1, 0),
(4, 4, 14, '2019-03-24 14:36:25', '0000-00-00 00:00:00', 1, 0),
(5, 4, 15, '2019-03-24 14:36:25', '0000-00-00 00:00:00', 1, 0),
(6, 5, 16, '2019-03-24 15:04:38', '0000-00-00 00:00:00', 1, 0),
(7, 5, 17, '2019-03-24 15:04:38', '0000-00-00 00:00:00', 1, 0),
(8, 6, 20, '2019-03-24 15:45:26', '0000-00-00 00:00:00', 1, 0),
(9, 7, 24, '2019-03-24 21:50:44', '0000-00-00 00:00:00', 1, 0);

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
(1, 'Faraz', '31303-9876543-4', 'MD', 'ranafarazahmed@gmail.com', 'Networking,Databases,', '+92-345-6789876', 'lkjhgfdsd', '2019-03-24 17:12:22', '0000-00-00 00:00:00', 1, 0),
(2, 'Nadia Gull', '31303-7890987-6', 'Developer', 'nadia@dskdconf.org', 'Coding', '+92-315-8410500', 'kjhgfd', '2019-03-26 11:49:22', '0000-00-00 00:00:00', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `sub_id` int(11) NOT NULL,
  `conf_id` int(11) NOT NULL,
  `sub_type` varchar(56) NOT NULL,
  `sub_title` varchar(256) NOT NULL,
  `sub_abstract` text NOT NULL,
  `sub_keywords` varchar(56) NOT NULL,
  `sub_file` varchar(120) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`sub_id`, `conf_id`, `sub_type`, `sub_title`, `sub_abstract`, `sub_keywords`, `sub_file`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'Abstract', 'asdfghj', 'sdfghjklkjhgftyuio', 'sdfghjk', 'asdfghj', '2019-03-24 14:20:13', '0000-00-00 00:00:00', 1, 0),
(2, 1, 'abstract', 'asdfghjk', 'sdfghjkl;', 'zxcvbnm,', 'asdfghjk', '2019-03-24 14:26:31', '0000-00-00 00:00:00', 1, 0),
(3, 1, 'mnbvc', 'mnbvc', ',mnbvc,mnbvbnm,mnbv', ',mnbv', ',mnbv', '2019-03-24 14:33:39', '0000-00-00 00:00:00', 1, 0),
(4, 1, 'dfghjkl', 'fghjkl', 'fghjkljhgcxcvbnm,mnbvciuygtfds', 'fghjkl', 'fghjkl', '2019-03-24 14:36:24', '0000-00-00 00:00:00', 1, 0),
(5, 1, 'Abstract', 'Collection of Automonous System Level Topology Using Looking Servers', 'jsflkjsdlfkjslfjlakjsflksjaflkjsdlkfjlasjfljasdlfjlsdjf\r\nsjdflkjsdlfkjsdf\r\nspjdflksdjflksd\r\nsjfasjfkl\r\nfpsajf;k\r\nakf\r\najsf\r\n;jas\r\n;fja\r\njf;\r\nasjf\r\nasjf\r\njasd\r\nf;jsd\r\n;fajsd;\r\nfjk', 'networks, data ining', 'asdsada', '2019-03-24 15:04:38', '0000-00-00 00:00:00', 1, 0),
(6, 1, 'Full Paper', 'Data Science', 'sdfghjkjhgfdsdfghjnbvc\r\ndfghjkjhbgvcxdfgh\r\nsdfghjjhgfdsdfghjjnbvcx', 'mhgfdsdthjknbvc', 'uploads/zxcvbhjhgfdsdfghjkjhg.docx', '2019-03-24 15:45:26', '0000-00-00 00:00:00', 1, 0),
(7, 2, 'Full Paper', 'kjhgfds', 'oiuygtfdsdfghjk\r\nkjhgfdssdfghj\r\njhgfdsasdfghjkl;\'\r\nuhgfdsdfghjkl;\'\r\n', 'lkjhgfdsdfghjkjhgfd', 'uploads/kjhgfds.xlsx', '2019-03-24 21:50:44', '0000-00-00 00:00:00', 1, 0);

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
  `assign_sub_status` enum('Accepted','Rejected') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_assignment`
--

INSERT INTO `sub_assignment` (`assign_id`, `assign_sub_id`, `assign_reviewer_id`, `assign_deadline`, `assign_reviews`, `assign_sub_status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 5, 2, '2019-04-08 12:25:51', '', 'Accepted', '2019-03-26 12:31:07', '0000-00-00 00:00:00', 1, 0),
(2, 6, 2, '2019-05-27 12:30:48', '', 'Accepted', '2019-03-26 12:34:10', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '6uX56u1vFgg02KUIlQz_u9zcGmNNxnw4', '$2y$13$8XbvxX/oPARvIJnQkPEIieZafzrP9dXJjnx8/98LxIki5lWJNG0o.', NULL, 'admin@dskdconf.org', 10, 1553418813, 1553418813),
(2, 'nadia', '82_3HKFRR0RIOehn6Gcm6pUDDQ0YeXBb', '$2y$13$3FJXhAOAm9yxbyqeGzNOQOJl/F3SU.DI7.0X8.6QIeSKXHn./cXAa', NULL, 'nadia@dskdconf.org', 10, 1553578542, 1553578542),
(3, 'anas', 'HMdJxSCbGZppgpYl-2VKuYVDxtEXeVBn', '$2y$13$oXIKQ8CNWNQM6x6Yz4UddOMN9oDV1vsiQRzQHzPAQuORbJU/eMNpK', NULL, 'anas@dexdevs.com', 10, 1553582735, 1553582735);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
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
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paper_authors`
--
ALTER TABLE `paper_authors`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `reviewer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_assignment`
--
ALTER TABLE `sub_assignment`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
