-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 01:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `h_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `activity` varchar(50) DEFAULT NULL,
  `login_time` time DEFAULT current_timestamp(),
  `login_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`h_id`, `id`, `activity`, `login_time`, `login_date`) VALUES
(1, 1, 'Logged In', '11:45:01', '2020-06-07'),
(2, 1, 'Logged In', '14:33:32', '2020-06-07'),
(3, 1, 'Updated User Data  Pirates', '14:37:35', '2020-06-07'),
(4, 1, 'Updated User Data  Pirates', '14:39:44', '2020-06-07'),
(5, 6, 'Logged In', '14:43:36', '2020-06-07'),
(6, 6, 'Logged Out', '14:45:16', '2020-06-07'),
(7, 4, 'Logged In', '15:14:35', '2020-06-07'),
(8, 4, 'Updated User admin admin', '15:17:01', '2020-06-07'),
(9, 1, 'Logged In', '15:21:01', '2020-06-07'),
(10, 1, 'Logged Out', '15:21:28', '2020-06-07'),
(11, 1, 'Logged In', '15:21:35', '2020-06-07'),
(12, 29, 'Logged In', '11:43:40', '2020-06-08'),
(13, 29, 'Logged Out', '11:43:45', '2020-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `gender`, `age`, `date_created`, `is_admin`, `is_blocked`) VALUES
(1, 'Data ', 'Pirates', 'sita@gmail.com', 'sita123', 'female', 18, '2020-05-12', 1, 0),
(4, 'admin', 'admin', 'admin@gmail.com', 'admin123', 'female', 18, '0000-00-00', 1, 0),
(6, 'Shovan', 'Shah', 'shovan@gmail.com', 'shovan123', 'Male', 17, '2020-05-12', 0, 0),
(7, 'Suraj', 'Kumal', 'suraj@gmail.com', 'suraj12', 'Male', 19, '2020-05-12', 0, 1),
(8, 'Sunil', 'Rawal', 'sunil@gmail.com', 'sunil12', 'Male', 20, '2020-05-12', 0, 1),
(9, 'Tenzin', 'Sparks', 'tenzin@gmail.com', 'tenzin12', 'Male', 20, '2020-05-12', 0, 0),
(10, 'Samrat', 'Gurung', 'samrat@gmail.com', 'samrat123', 'Male', 16, '2020-05-12', 0, 0),
(11, 'Samir', 'Khan', 'samir@gmail.com', 'samir454', 'Male', 20, '2020-05-12', 0, 0),
(12, 'Anil', 'Shah', 'anil@gmail.com', 'anil123', 'Male', 22, '2020-05-12', 1, 1),
(13, 'Aayam', 'Shrestha', 'aayam@gmail.com', 'aayam12', 'Male', 18, '2020-05-12', 0, 1),
(14, 'Atit', 'Joshi', 'atit@gmail.com', 'atit123', 'Female', 23, '2020-05-12', 0, 0),
(16, 'Ray', 'Ban', 'rayban@gmail.com', 'rayban', 'Female', 17, '2020-05-12', 0, 0),
(17, 'Eric', 'Bajracharya', 'eric@gmail.com', 'eric123', 'Male', 18, '2020-05-12', 0, 0),
(18, 'Yangji', 'Gurung', 'yangji@gmail.com', 'yangji123', 'Female', 16, '2020-05-12', 0, 0),
(19, 'Dolma', 'Sherpa', 'dolma@gmail.com', 'dolma123', 'Female', 17, '2020-05-12', 0, 0),
(20, 'test', 'test', 'test@gmail.com', 'test123', 'Male', 18, '2020-06-01', 1, 1),
(29, 'lmao', 'lmao', 'lmao@gmail.com', 'lmao123', NULL, NULL, '2020-06-09', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history_log`
--
ALTER TABLE `history_log`
  ADD CONSTRAINT `history_log_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
