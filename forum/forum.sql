-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 11:50 AM
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
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `post_text` text DEFAULT NULL,
  `post_create_time` datetime DEFAULT NULL,
  `post_owner` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`post_id`, `topic_id`, `post_text`, `post_create_time`, `post_owner`) VALUES
(1, 1, 'jhgfxcgvhbn', '2020-12-28 19:59:37', 'arpitagautam511@gmail.com'),
(2, 2, 'jhgfxcgvhbn', '2020-12-28 20:00:07', 'arpitagautam511@gmail.com'),
(3, 3, 'hello', '2020-12-28 22:42:25', 'abc@abc.com');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `topic_id` int(11) NOT NULL,
  `topic_title` varchar(150) DEFAULT NULL,
  `topic_create_time` datetime DEFAULT NULL,
  `topic_owner` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`topic_id`, `topic_title`, `topic_create_time`, `topic_owner`) VALUES
(1, 'PHP', '2020-12-28 19:59:37', ''),
(2, 'PHP', '2020-12-28 20:00:07', 'arpitagautam511@gmail.com'),
(3, 'topic1', '2020-12-28 22:42:25', 'abc@abc.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`topic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
