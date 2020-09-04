-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2020 at 03:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `police_quater`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `post_id` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `area_id1` int(100) NOT NULL,
  `area_id2` int(100) NOT NULL,
  `area_id3` int(100) NOT NULL,
  `area_id4` int(100) NOT NULL,
  `Post_id` int(100) NOT NULL,
  `Requirements` varchar(1000) DEFAULT NULL,
  `Desk` int(100) NOT NULL,
  `resident` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `alloted_quater` int(100) NOT NULL,
  `Official_letter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `user_id`, `time`, `area_id1`, `area_id2`, `area_id3`, `area_id4`, `Post_id`, `Requirements`, `Desk`, `resident`, `Status`, `alloted_quater`, `Official_letter`) VALUES
(8, 2, '2019-12-25 12:53:44', 2, 4, 3, 1, 2, 'a12345678\r\n', 1, 'Yes', 'Unapproved', 0, 'ec 3.pdf'),
(10, 4, '2019-12-25 13:17:10', 5, 6, 6, 5, 2, 'a1234566', 1, 'Yes', 'Unapproved', 0, 'hp and lp.docx'),
(11, 3, '2019-12-25 13:28:05', 1, 2, 3, 4, 4, 'axcdevrfbgtnm', 1, 'Yes', 'Unapproved', 0, 'DSA_30_31_38.pdf'),
(12, 4, '2020-01-29 14:33:36', 7, 8, 7, 8, 2, 'asdfghjkl;', 1, 'Yes', 'Unapproved', 0, 'Estimation PRV.pdf'),
(13, 2, '2019-12-25 13:37:22', 1, 2, 3, 4, 1, 'asdfghjkl;', 5, 'Yes', 'Rejected', 0, 'edi-sem1.docx'),
(14, 2, '2020-01-29 14:24:53', 7, 8, 7, 8, 1, '1234567890cvbnm,', 1, 'Yes', 'Approved', 2, 'maximum_powerfinal.docx'),
(15, 3, '2020-02-09 12:31:53', 3, 2, 10, 4, 4, 'I want new quarter near the hospital.', 1, 'Yes', 'Unapproved', 0, 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `name`, `city_id`) VALUES
(1, 'Shivajingar', 1),
(2, 'Bibwewadi', 1),
(3, 'Hadapsar', 1),
(4, 'Baner', 1),
(5, 'Vishrambag', 2),
(6, 'Jaysingpur', 2),
(7, 'Rajwada', 3),
(8, 'ShaniwarPeth', 3),
(9, 'dighori', 2),
(10, 'Pimpri', 1),
(11, 'Jst', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `name`) VALUES
(1, 'Pune'),
(2, 'Sangli'),
(3, 'Satara'),
(4, 'Kolhapur'),
(5, 'Nagpur'),
(6, 'Amravati');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `applicant_id` int(100) NOT NULL,
  `left_quater` int(100) NOT NULL,
  `quater_area1` int(100) NOT NULL,
  `quater_area2` int(100) NOT NULL,
  `quater_area3` int(100) NOT NULL,
  `quater_area4` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `status` varchar(155) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alloted_quater` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `applicant_id`, `left_quater`, `quater_area1`, `quater_area2`, `quater_area3`, `quater_area4`, `user_id`, `status`, `time`, `alloted_quater`) VALUES
(2, 0, 1, 5, 6, 6, 5, 4, 'Unapproved', '2019-12-25 13:17:10', NULL),
(3, 0, 1, 1, 2, 3, 4, 3, 'Unapproved', '2019-12-25 13:28:05', NULL),
(4, 12, 1, 7, 8, 7, 8, 4, 'Unapproved', '2019-12-25 13:29:49', NULL),
(5, 0, 2, 1, 2, 3, 4, 2, 'Rejected', '2019-12-25 13:35:55', NULL),
(6, 14, 2, 7, 8, 7, 8, 2, 'Approved', '2019-12-16 13:36:33', NULL),
(7, 0, 5, 1, 4, 3, 2, 2, 'Unapproved', '2019-12-25 13:45:33', NULL),
(8, 0, 1, 3, 2, 10, 4, 3, 'Unapproved', '2020-02-09 12:31:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_status`
--

CREATE TABLE `leave_status` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `electricity_bill` varchar(100) NOT NULL,
  `transfer_letter` varchar(100) NOT NULL,
  `warden_letter` varchar(100) DEFAULT NULL,
  `quater_id` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_status`
--

INSERT INTO `leave_status` (`id`, `user_id`, `electricity_bill`, `transfer_letter`, `warden_letter`, `quater_id`, `status`, `time`) VALUES
(4, 1, 'Dsa1.cpp', 'Edi.docx', NULL, 6, 'Unapproved', '2019-12-25 13:32:01'),
(5, 1, 'Dsa1.cpp', 'Edi.docx', NULL, 6, 'Unapproved', '2019-12-25 13:32:01'),
(6, 1, 'DHT_U.cpp', 'DHT_U.cpp', NULL, 3, 'Unapproved', '2019-12-25 13:32:01'),
(7, 1, '14_FM.docx', 'Dsa1.cpp', NULL, 2, 'Unapproved', '2019-12-25 13:32:01'),
(8, 1, 'bbsort.PNG', '2Z2pi.PNG', NULL, 4, 'Unapproved', '2019-12-25 13:32:01'),
(9, 2, 'dsa_8.docx', 'ec 3.pdf', NULL, 2, 'Approved', '2019-12-25 13:32:01'),
(10, 4, 'ec6.pdf', 'ec47.pdf', NULL, 1, 'Approved', '2019-12-25 13:32:01'),
(11, 3, 'ec41.pdf', 'group3-driver_drowsiness.pdf', NULL, 1, 'Approved', '2019-12-25 13:32:01'),
(12, 3, 'logo.png', 'profile.jpg', NULL, 6, 'Approved', '2020-02-09 13:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(50) NOT NULL,
  `post` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'A4'),
(5, 'A5'),
(6, 'A6'),
(7, 'A7'),
(8, 'A8'),
(9, 'A9');

-- --------------------------------------------------------

--
-- Table structure for table `quaters`
--

CREATE TABLE `quaters` (
  `id` int(100) NOT NULL,
  `area_id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `flats_available` int(50) NOT NULL,
  `post_id` int(50) NOT NULL,
  `waiting_count` int(50) NOT NULL,
  `Quater_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quaters`
--

INSERT INTO `quaters` (`id`, `area_id`, `name`, `flats_available`, `post_id`, `waiting_count`, `Quater_info`) VALUES
(1, 1, 'Loukik', 2, 1, 0, ''),
(2, 1, 'Nikhil', 1, 2, 0, ''),
(3, 2, 'ruturaj', 4, 3, 0, ''),
(4, 5, 'Aditya', 2, 2, 2, ''),
(5, 6, 'Harshad', 3, 1, 2, ''),
(6, 7, 'Prathmesh', 1, 2, 2, ''),
(7, 1, 'Vaibhav', 3, 7, 0, ''),
(8, 1, 'Chinmay', 4, 5, 0, ''),
(9, 9, 'abc', 25, 4, 0, 'REWATSHDYFGWAFSZDXGHCJVWADESGRDF SFHGyuidfg cfbn'),
(10, 10, 'Ruturajd', 34, 3, 0, 'edrftgyhuijokpl['),
(11, 11, 'new home', 25, 9, 0, 'There are very good flats.');

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE `remarks` (
  `id` int(11) NOT NULL,
  `post_id` int(50) NOT NULL,
  `user_id` int(100) NOT NULL,
  `applicant_id` int(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `status` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`id`, `post_id`, `user_id`, `applicant_id`, `remark`, `status`) VALUES
(1, 1, 5, 8, '<p>xacsdvbfngm</p>', 'Unapproved'),
(2, 1, 5, 15, '<p>Yes you can allot the quarter</p>', 'Unapproved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_firstname` varchar(100) NOT NULL,
  `user_lastname` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `Age` int(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `quater_resident` varchar(50) NOT NULL,
  `quater_id` int(50) NOT NULL,
  `area_id` int(50) NOT NULL,
  `city_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `mobile_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `user_firstname`, `user_lastname`, `user_password`, `Age`, `user_image`, `Gender`, `quater_resident`, `quater_id`, `area_id`, `city_id`, `post_id`, `user_role`, `mobile_no`) VALUES
(1, 'rutu', 'Ruturaj', 'Deshmukh', '123', 18, '', 'male', 'Yes', 2, 2, 2, 0, '', 0),
(2, 'manish', 'Ruturaj', 'Deshmukh', '123', 24, '', 'male', 'Yes', 1, 1, 1, 1, 'subscriber\r\n', 0),
(3, 'Aditya', 'Aditya', 'Giradkar', '1234', 19, '', 'Male', 'Yes', 4, 5, 2, 4, 'Subscriber', 1234567890),
(4, 'harshad', 'Harshad', 'Dabhade', '12345', 19, '', 'Male', 'Yes', 1, 1, 1, 2, 'admin', 453276890),
(5, 'ruturaj', 'ruturaj', 'deshmukh', '123', 19, '', 'Male', 'Yes', 1, 1, 1, 1, 'admin', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `waiting`
--

CREATE TABLE `waiting` (
  `id` int(50) NOT NULL,
  `applicant_id` int(50) NOT NULL,
  `quater_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warden`
--

CREATE TABLE `warden` (
  `id` int(50) NOT NULL,
  `quater_id` int(50) NOT NULL,
  `warden_firstname` varchar(50) NOT NULL,
  `warden_lastname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warden`
--

INSERT INTO `warden` (`id`, `quater_id`, `warden_firstname`, `warden_lastname`) VALUES
(1, 9, 'Aditya Giradkar', '0'),
(2, 10, 'Ruturaj Deshmukh', '0'),
(3, 11, 'Harshad Dabhade', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_status`
--
ALTER TABLE `leave_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `quaters`
--
ALTER TABLE `quaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remarks`
--
ALTER TABLE `remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waiting`
--
ALTER TABLE `waiting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warden`
--
ALTER TABLE `warden`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `leave_status`
--
ALTER TABLE `leave_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quaters`
--
ALTER TABLE `quaters`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `remarks`
--
ALTER TABLE `remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `waiting`
--
ALTER TABLE `waiting`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warden`
--
ALTER TABLE `warden`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
