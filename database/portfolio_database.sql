-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 12:55 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `portfolio_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement_details`
--

CREATE TABLE IF NOT EXISTS `achievement_details` (
  `ach_id` int(5) NOT NULL,
  `ach_name` varchar(50) NOT NULL,
  `ach_rank` varchar(10) NOT NULL,
  `ach_year` varchar(5) NOT NULL,
  `ach_certy` varchar(50) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievement_details`
--

INSERT INTO `achievement_details` (`ach_id`, `ach_name`, `ach_rank`, `ach_year`, `ach_certy`, `reg_id`) VALUES
(10, 'Code Expert', '3rd', '2017', 'certy2.png', 29),
(9, 'Best Designer', '1st', '2020', 'certy3.jpg', 29);

-- --------------------------------------------------------

--
-- Table structure for table `admin_detail`
--

CREATE TABLE IF NOT EXISTS `admin_detail` (
  `a_id` int(5) NOT NULL,
  `a_uname` varchar(10) NOT NULL COMMENT 'Username of Admin',
  `a_passwd` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_detail`
--

INSERT INTO `admin_detail` (`a_id`, `a_uname`, `a_passwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `education_detail`
--

CREATE TABLE IF NOT EXISTS `education_detail` (
  `edu_id` int(5) NOT NULL,
  `edu_qua` varchar(20) NOT NULL,
  `edu_year` varchar(5) NOT NULL,
  `edu_uni` varchar(50) NOT NULL,
  `edu_grade` float(4,2) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education_detail`
--

INSERT INTO `education_detail` (`edu_id`, `edu_qua`, `edu_year`, `edu_uni`, `edu_grade`, `reg_id`) VALUES
(17, '10th', '2014', 'GSEB', 72.68, 29),
(16, '12th', '2016', 'GHSEB', 72.04, 29),
(15, 'Graduation', '2019', 'Veer Narmad South Gujarat University', 8.97, 29),
(14, 'Post Graduation', '2022', 'Institute of technology, Nirma University', 8.67, 29),
(18, 'Graduation', 'april', 'hit', 2.10, 30),
(19, 'Graduation', 'april', 'hit', 2.10, 30),
(20, 'Graduation', 'March', 'HIT', 8.00, 30);

-- --------------------------------------------------------

--
-- Table structure for table `personal_detail`
--

CREATE TABLE IF NOT EXISTS `personal_detail` (
  `pd_id` int(5) NOT NULL,
  `pd_gender` varchar(6) NOT NULL,
  `pd_hobby` varchar(50) DEFAULT NULL,
  `pd_contact` varchar(10) NOT NULL,
  `pd_dob` varchar(20) NOT NULL,
  `pd_skill` varchar(50) NOT NULL,
  `pd_add` varchar(50) NOT NULL,
  `pd_profile` varchar(50) NOT NULL,
  `pd_nation` varchar(10) NOT NULL,
  `pd_status` varchar(10) NOT NULL,
  `pd_lang` varchar(50) NOT NULL,
  `pd_pitch` varchar(1000) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_detail`
--

INSERT INTO `personal_detail` (`pd_id`, `pd_gender`, `pd_hobby`, `pd_contact`, `pd_dob`, `pd_skill`, `pd_add`, `pd_profile`, `pd_nation`, `pd_status`, `pd_lang`, `pd_pitch`, `reg_id`) VALUES
(8, 'Male', 'Reading,Writing & Traveling', '0719725776', '22/04/1993', 'Python,OPP,PHP & React', '30 Banister Close\r\nBraeside\r\nHarare', 'Lalo profile 2.PNG', 'Zimbabwean', 'Single', 'lang', 'Hoping to leverage Technical Skills to help ALX-Holberton introduce E-Commerce Portals.', 29),
(9, 'Male', 'swimming', '0713567890', '14/3/1995', 'trading', 'cranborne', '', 'zimbabwe', 'single', 'english', 'im a trader', 30);

-- --------------------------------------------------------

--
-- Table structure for table `project_detail`
--

CREATE TABLE IF NOT EXISTS `project_detail` (
  `p_id` int(5) NOT NULL,
  `p_title` varchar(20) NOT NULL COMMENT 'Project Title',
  `p_dur` varchar(10) NOT NULL COMMENT 'Duration',
  `p_desc` varchar(1000) NOT NULL COMMENT 'Description',
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_detail`
--

INSERT INTO `project_detail` (`p_id`, `p_title`, `p_dur`, `p_desc`, `reg_id`) VALUES
(9, 'PortfolioBox', '2 Months', 'Generating a resume of a user according to their data.', 29),
(10, 'Web Housing', '6 Months', 'Searching hostels and PGs for the students and bechlors. ', 29),
(8, 'Hotel management sys', '2 Months', 'Searching & managing the hotel system.', 29);

-- --------------------------------------------------------

--
-- Table structure for table `reg_details`
--

CREATE TABLE IF NOT EXISTS `reg_details` (
  `reg_id` int(5) NOT NULL,
  `reg_name` varchar(20) NOT NULL,
  `reg_email` varchar(50) NOT NULL,
  `reg_passwd` varchar(200) NOT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `login_status` int(2) NOT NULL DEFAULT '0',
  `block_status` int(2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_details`
--

INSERT INTO `reg_details` (`reg_id`, `reg_name`, `reg_email`, `reg_passwd`, `reg_date`, `login_status`, `block_status`) VALUES
(29, 'Nyasha Jerahuni', 'nyashajerahuni@gmail.com', 'jera2023', '2021-04-27 09:48:07', 0, 0),
(30, 'Tonderai', 'tonderaijerahuni@gmail.com', 'tor123', '2023-03-01 07:57:03', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `work_experiance_detail`
--

CREATE TABLE IF NOT EXISTS `work_experiance_detail` (
  `we_id` int(5) NOT NULL,
  `we_title` varchar(20) NOT NULL COMMENT 'Position of User',
  `we_comp` varchar(20) NOT NULL COMMENT 'Name of Company',
  `we_dur` varchar(10) NOT NULL COMMENT 'Working Duration',
  `we_desc` varchar(1000) DEFAULT NULL COMMENT 'Company Profile',
  `we_ach` varchar(20) DEFAULT NULL COMMENT 'Achievements',
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_experiance_detail`
--

INSERT INTO `work_experiance_detail` (`we_id`, `we_title`, `we_comp`, `we_dur`, `we_desc`, `we_ach`, `reg_id`) VALUES
(7, 'Web Developer', 'Infosys', '6 months', 'Doing the job as a web developer at Infosys with a front-end developer. Having skills in CSS & jQuery.', 'NA', 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement_details`
--
ALTER TABLE `achievement_details`
  ADD PRIMARY KEY (`ach_id`), ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `admin_detail`
--
ALTER TABLE `admin_detail`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `education_detail`
--
ALTER TABLE `education_detail`
  ADD PRIMARY KEY (`edu_id`), ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `personal_detail`
--
ALTER TABLE `personal_detail`
  ADD PRIMARY KEY (`pd_id`), ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `project_detail`
--
ALTER TABLE `project_detail`
  ADD PRIMARY KEY (`p_id`), ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `reg_details`
--
ALTER TABLE `reg_details`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `work_experiance_detail`
--
ALTER TABLE `work_experiance_detail`
  ADD PRIMARY KEY (`we_id`), ADD KEY `reg_id` (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement_details`
--
ALTER TABLE `achievement_details`
  MODIFY `ach_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `admin_detail`
--
ALTER TABLE `admin_detail`
  MODIFY `a_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `education_detail`
--
ALTER TABLE `education_detail`
  MODIFY `edu_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `personal_detail`
--
ALTER TABLE `personal_detail`
  MODIFY `pd_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `project_detail`
--
ALTER TABLE `project_detail`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `reg_details`
--
ALTER TABLE `reg_details`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `work_experiance_detail`
--
ALTER TABLE `work_experiance_detail`
  MODIFY `we_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
