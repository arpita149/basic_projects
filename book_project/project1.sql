-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 01:29 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `master_id`, `date_added`, `date_modified`, `address`, `city`, `state`, `zipcode`, `type`) VALUES
(1, 1, '2020-12-27 17:54:06', '2020-12-27 17:54:06', 'A-64, beta-1, beta-1', 'GREATER NOIDA', 'UP', '201308', 'home'),
(2, 2, '2020-12-27 17:56:05', '2020-12-27 17:56:05', 'A-64, beta-1, beta-1', 'GREATER NOIDA', 'UP', '201308', 'home'),
(3, 3, '2020-12-27 17:58:28', '2020-12-27 17:58:28', 'sdd', 'sefrgt', 'ts', '098765', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `master_id`, `date_added`, `date_modified`, `email`, `type`) VALUES
(1, 1, '2020-12-27 17:54:06', '2020-12-27 17:54:06', 'arpita@gautam.com', 'home'),
(2, 2, '2020-12-27 17:56:05', '2020-12-27 17:56:05', 'arpita@gautam.com', 'home'),
(3, 3, '2020-12-27 17:58:29', '2020-12-27 17:58:29', 'as@ss.com', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `fax`
--

CREATE TABLE `fax` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fax`
--

INSERT INTO `fax` (`id`, `master_id`, `date_added`, `date_modified`, `fax_number`, `type`) VALUES
(1, 1, '2020-12-27 17:54:06', '2020-12-27 17:54:06', '098765', 'home'),
(2, 2, '2020-12-27 17:56:05', '2020-12-27 17:56:05', '098765', 'home'),
(3, 3, '2020-12-27 17:58:29', '2020-12-27 17:58:29', '567978', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `master_name`
--

CREATE TABLE `master_name` (
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `f_name` varchar(75) DEFAULT NULL,
  `l_name` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_name`
--

INSERT INTO `master_name` (`master_id`, `date_added`, `date_modified`, `f_name`, `l_name`) VALUES
(1, '2020-12-27 17:54:06', '2020-12-27 17:54:06', 'arpita', 'gautam'),
(2, '2020-12-27 17:56:05', '2020-12-27 17:56:05', 'arpita', 'gautam'),
(3, '2020-12-27 17:58:28', '2020-12-27 17:58:28', 'abc', 'aabb');

-- --------------------------------------------------------

--
-- Table structure for table `personal_notes`
--

CREATE TABLE `personal_notes` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_notes`
--

INSERT INTO `personal_notes` (`id`, `master_id`, `date_added`, `date_modified`, `note`) VALUES
(1, 3, '2020-12-27 17:58:29', '2020-12-27 17:58:29', 'fgfgh');

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

CREATE TABLE `telephone` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `tel_number` varchar(25) DEFAULT NULL,
  `type` enum('home','work','other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telephone`
--

INSERT INTO `telephone` (`id`, `master_id`, `date_added`, `date_modified`, `tel_number`, `type`) VALUES
(1, 1, '2020-12-27 17:54:06', '2020-12-27 17:54:06', '12324547687', 'home'),
(2, 2, '2020-12-27 17:56:05', '2020-12-27 17:56:05', '12324547687', 'home'),
(3, 3, '2020-12-27 17:58:29', '2020-12-27 17:58:29', '12324547687', 'other');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fax`
--
ALTER TABLE `fax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_name`
--
ALTER TABLE `master_name`
  ADD PRIMARY KEY (`master_id`);

--
-- Indexes for table `personal_notes`
--
ALTER TABLE `personal_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_id` (`master_id`);

--
-- Indexes for table `telephone`
--
ALTER TABLE `telephone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fax`
--
ALTER TABLE `fax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_name`
--
ALTER TABLE `master_name`
  MODIFY `master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_notes`
--
ALTER TABLE `personal_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `telephone`
--
ALTER TABLE `telephone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
