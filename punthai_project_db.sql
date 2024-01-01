-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 10:22 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `punthai_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `number_of_guests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--

CREATE TABLE `catering` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_rooms`
--

CREATE TABLE `meeting_rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `notified_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `number_of_guests` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `questions_and_answers`
--

CREATE TABLE `questions_and_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `asked_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createAT` datetime DEFAULT NULL,
  `updateAT` datetime DEFAULT NULL,
  `roomdesc` varchar(255) DEFAULT NULL,
  `roomabout` varchar(255) DEFAULT NULL,
  `bed` varchar(255) DEFAULT NULL,
  `amountpeople` varchar(255) DEFAULT NULL,
  `facility` varchar(255) DEFAULT NULL,
  `highlight` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `type`, `location`, `image`, `price`, `status`, `createAT`, `updateAT`, `roomdesc`, `roomabout`, `bed`, `amountpeople`, `facility`, `highlight`) VALUES
(17, 'ห้องพักเดี่ยวเตียงเล็ก', '', '', 0x433a5c78616d70705c746d705c706870434238432e746d70, 800, 'Active', '2023-12-30 11:52:33', NULL, 'คำอธิบาย ห้องพักเดี่ยวเตียงเล็ก', 'เกี่ยวกับห้องพัก ห้องพักเดี่ยวเตียงเล็ก', '1 เตียง', '1', 'อาหารเช้า,พนักงานบริการ 24 ชั่วโมง,WiFi', 'ฟิตเนส,ห้องอาหาร'),
(18, 'ห้องพักเตียงคู่', '', '', 0x433a5c78616d70705c746d705c706870393232322e746d70, 1400, 'Active', '2023-12-31 15:33:39', NULL, 'คำอธิบาย ห้องพักเตียงคู่', 'เกี่ยวกับห้องพัก ห้องพักเตียงคู่', '2 เตียง', '4', 'อาหารเช้า,ที่จอดรถ,WiFi,พื้นที่สูบบุหรี่', 'ฟิตเนส,สปา,ห้องประชุม'),
(19, 'test', '', '', 0x433a5c78616d70705c746d705c706870333645382e746d70, 1, 'Inactive', '2023-12-31 19:00:50', NULL, 'test', 'test', '1 เตียง', '1', 'อาหารเช้า,ระบบรักษาความปลอดภัย 24 ชั่วโมง', 'สระว่ายน้ำ'),
(20, '1', '', '', 0x433a5c78616d70705c746d705c706870314333352e746d70, 1, 'Active', '2024-01-01 15:16:25', NULL, '1', '1', '3', '1', 'อาหารเช้า,พนักงานบริการ 24 ชั่วโมง', 'ห้องอาหาร,บริการรับ-ส่งสนามบิน'),
(21, '2', '', '', 0x433a5c78616d70705c746d705c706870393746322e746d70, 2, 'Active', '2024-01-01 16:17:03', NULL, '2', '2', '2 เตียง', '2', 'พนักงานบริการ 24 ชั่วโมง', 'สระว่ายน้ำ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bed`
--

CREATE TABLE `tbl_bed` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bed`
--

INSERT INTO `tbl_bed` (`id`, `name`) VALUES
(1, '1 เตียง'),
(2, '2 เตียง'),
(3, '1 เตียงใหญ่');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone_number`, `password`) VALUES
(1, 'maii maii', 'maill@gmail.com', '191', 'mon23445'),
(2, 'usasna na', 'nana@gmail.com', '192', 'na23445'),
(4, 'monsuniti', 'mon@mai.com', '0943030401', 'mon123'),
(5, 'maii maii1', 'mon@mai', '09122', '111'),
(6, 'mon123', 'mon123@ddd', '1111', '111'),
(7, '111', '222@eef', '333', '111'),
(8, '11', 'dad@dwdwd', '111', '111'),
(9, 'mon00', 'mon123@mm', '111', '123'),
(10, '112', '11212@wd', '111', 'mon'),
(11, '112xx', '11212@wdx', '111', '111'),
(13, 'mon', 'mon@gmail.com', '1111', '111'),
(14, 'monmon', 'mon1@gmail.com', '191', '111'),
(15, 'maii', 'maii@gmail.com', '121', '111'),
(16, 'na', 'na@gmailcom', '191', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_rooms`
--
ALTER TABLE `meeting_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_and_answers`
--
ALTER TABLE `questions_and_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bed`
--
ALTER TABLE `tbl_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catering`
--
ALTER TABLE `catering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_rooms`
--
ALTER TABLE `meeting_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions_and_answers`
--
ALTER TABLE `questions_and_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_bed`
--
ALTER TABLE `tbl_bed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
