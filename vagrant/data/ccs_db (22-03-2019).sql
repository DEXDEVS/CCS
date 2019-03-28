-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2019 at 11:56 AM
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
(1, '1st International Conference on Data Science and Knowledge Discovery @ KFUEIT', 2019, '2019-09-01 00:00:00', '2019-09-05 00:00:00', '2019-07-01 00:00:00', '2019-08-01 00:00:00', '2019-08-01 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1);

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
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conferences`
--
ALTER TABLE `conferences`
  MODIFY `conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paper_authors`
--
ALTER TABLE `paper_authors`
  MODIFY `pa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `reviewer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_assignment`
--
ALTER TABLE `sub_assignment`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
