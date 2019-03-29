-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2019 at 07:50 AM
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
(12, 'Amna', '', 'dfghj', 'fghjk', 'fghjk', 'nkkjhg@gmail.com', 1, '2019-03-29 10:57:15', '0000-00-00 00:00:00', 8, 0);

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
(2, '2nd International Conference @ KFUEIT', 2019, '@ KFUEIT', '2019-03-24 09:44:05', '2019-03-24 09:44:08', '2019-03-24 09:44:05', '2019-03-24 09:44:05', '2019-03-24 09:44:05', '2019-03-24 21:44:23', '2019-03-28 23:32:50', 1, 4);

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
(12, 10, 12, '2019-03-29 10:57:15', '0000-00-00 00:00:00', 8, 0);

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
(2, 'Nadia Gull', '31303-7890987-6', 'Developer', 'nadiagull285@gmail.com', 'Coding', '+92-315-8410500', 'kjhgfd', '2019-03-26 11:49:22', '0000-00-00 00:00:00', 3, 0);

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
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`sub_id`, `conf_id`, `sub_type`, `sub_title`, `sub_abstract`, `sub_keywords`, `sub_file`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'Poster Paper', 'Collection of Automonous System Level Topology Using Looking Servers', 'kjhgfdsasdfghjhgfx\r\n;lkjhgfdfghjkmnbvcxcvbnmnbvbhjkjhgf\r\n', 'Networking,Data Manning', 'uploads/Poster Paper-XYZ.docx', '2019-03-27 09:35:22', '0000-00-00 00:00:00', 4, 0),
(2, 2, 'Full Paper', 'Artificial Intelligence', 'juhygtfdsasdfghjkkjhgvfcdxcvgbnmnbvc\r\njhgfdszxdcfvghjkjhgffghjk\r\nkjhgfdxdcfvghjkjhgvfcdx\r\nhgfdxcfvgbhjklkjhgfd', 'Data Mining,Machine Learning', 'uploads/Full Paper-Artificial Intelligence.xlsx', '2019-03-27 10:04:59', '0000-00-00 00:00:00', 4, 0),
(3, 1, 'Abstract', 'Abcd', 'ertyuiop\r\nfghjkl;\r\nxcvbnm,\r\nsdfghjk\r\nertyuio', 'ABC', 'uploads/Abstract-Abcd.docx', '2019-03-27 14:33:40', '0000-00-00 00:00:00', 4, 0),
(5, 1, 'Full Paper', 'KJHGFCVBNMNB', 'KJHGVCVBHJKKJHBVBHJKJBVasdfghj\r\njhgcxcvbjk', 'KJHGFDFGHJKLKJHGV', 'uploads/Full Paper-KJHGFCVBNMNB.docx', '2019-03-29 10:34:44', '0000-00-00 00:00:00', 8, 0),
(6, 1, 'Abstract', 'title', 'wertyuio\r\nasdfghjk\r\nzxcvbnm\r\nqwertyuio\r\nasdfghjk\r\nzxcvbnm', 'ABCD', 'uploads/Abstract-title.xlsx', '2019-03-29 10:42:38', '0000-00-00 00:00:00', 8, 0),
(7, 1, 'Full Paper', 'DBMS', 'qwertyui\r\nasdfghjk\r\nzxcvbnm', 'Database', 'uploads/Full Paper-DBMS.docx', '2019-03-29 10:44:52', '0000-00-00 00:00:00', 8, 0),
(8, 2, 'Poster Paper', 'KJHGFCVBNMNB', 'sdfghujhgfds\r\nkjhgfcdxzsxcvbn\r\nhgfdsdfghjk\r\nlkjhgfdfghjkl', 'Database', 'uploads/Poster Paper-KJHGFCVBNMNB.docx', '2019-03-29 10:49:19', '0000-00-00 00:00:00', 8, 0),
(9, 2, 'Full Paper', 'KJHGFCVBNMNB', 'jhgfddfghjk\r\nlkjhgfdfghjkl\r\n;lkjhgfdsdfghjkl\r\nlkjhgfdsdfghjkl\r\n;lkjhgfdfghjkl', 'Database', 'uploads/Full Paper-KJHGFCVBNMNB.docx', '2019-03-29 10:54:50', '0000-00-00 00:00:00', 8, 0),
(10, 2, 'Full Paper', 'KJHGFCVBNMNB', 'jhgfddfghjk\r\nlkjhgfdfghjkl\r\n;lkjhgfdsdfghjkl\r\nlkjhgfdsdfghjkl\r\n;lkjhgfdfghjkl', 'Database', 'uploads/Full Paper-KJHGFCVBNMNB.docx', '2019-03-29 10:57:15', '0000-00-00 00:00:00', 8, 0);

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
(1, 1, 2, '2019-04-30 09:40:40', 'jhgfdsdfghjk\r\n;lkjhgvfdxszxcvbn\r\nkjbvcxzxcvbnm			 				', 'Accepted', 'Reviewed', '2019-03-27 09:45:00', '0000-00-00 00:00:00', 2, 0),
(2, 2, 2, '2019-03-27 10:05:28', '', '', 'Pending', '2019-03-27 10:05:30', '0000-00-00 00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `usertype`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', '6uX56u1vFgg02KUIlQz_u9zcGmNNxnw4', '$2y$13$8XbvxX/oPARvIJnQkPEIieZafzrP9dXJjnx8/98LxIki5lWJNG0o.', NULL, 'admin@dskdconf.org', 10, 1553418813, 1553418813),
(2, 'nadia', 'Reviewer', '82_3HKFRR0RIOehn6Gcm6pUDDQ0YeXBb', '$2y$13$3FJXhAOAm9yxbyqeGzNOQOJl/F3SU.DI7.0X8.6QIeSKXHn./cXAa', NULL, 'nadiagull285@gmail.com', 10, 1553578542, 1553578542),
(3, 'anas', '', 'HMdJxSCbGZppgpYl-2VKuYVDxtEXeVBn', '$2y$13$oXIKQ8CNWNQM6x6Yz4UddOMN9oDV1vsiQRzQHzPAQuORbJU/eMNpK', NULL, 'anas@dexdevs.com', 10, 1553582735, 1553582735),
(4, 'Kinza', NULL, 'Mv8lNfSbY070Ip9HuddKZ4NI7xDoj5-8', '$2y$13$zdHImXwPlRDEjMzqmnj6lOPf1xnV912cHKebvqoXW35V4t.liZzHG', NULL, 'kinza.fatima.522@gmail.com', 10, 1553671645, 1553671645),
(5, 'anasshafqat', 'Reviewer', 'lkXsUSDpL2gdGx4sxNg62YXjIGCf9n5z', '$2y$13$c2R1mDqc2.zakPIjMFmXS.fKGGEP8rMLpmOUA/ijXqP6Xy9DXHS4q', NULL, 'anasshafqat01@gmail.com', 10, 1553672653, 1553672653),
(6, 'nauman', NULL, 'f62woFhiknlLghMi55bfwo6Wjqx_E6is', '$2y$13$lf0AZYFn/R0mcPcCnv4n6.A.ncePARuDi4.qXZ9tVBKmj4r7eyIXa', NULL, 'nauman@gmail.com', 10, 1553672699, 1553672699),
(7, 'faraz', NULL, 'yPU59PahUt46PSPKveRL7t111oK07-0r', '$2y$13$wLKRNR.X08nqQEWzOiiS4OGpkvRXVCdYD4axmT/a/5BdRxmGuR7U6', NULL, 'farazahmed@dskdconf.org', 10, 1553673489, 1553673489),
(8, 'iqra', NULL, 'rvmA0K8QUav2RpsA-ZSU_jrDfROf0abr', '$2y$13$yjGrxgDIcn7a9fY0w1XhNu1KYNmK4BQVWc6zt2/W/o0FPupzycDde', NULL, 'iqra@gmail.com', 10, 1553679498, 1553679498);

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
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paper_authors`
--
ALTER TABLE `paper_authors`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `reviewer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_assignment`
--
ALTER TABLE `sub_assignment`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
