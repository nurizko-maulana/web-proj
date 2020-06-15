-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 10:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accommodation_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `admin_name`) VALUES
(1, 'Nurizko Maulana');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `date_booked` date NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `book_status` varchar(20) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(50) NOT NULL,
  `college_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `college_name`, `college_address`) VALUES
(1, 'KDOJ (Kolej Dato Onn Jafar)', NULL),
(2, 'KDSE (Kolej Datin Seri Endon)', NULL),
(3, 'KP (Kolej Perdana)', NULL),
(4, 'KTC (Kolej Tuanku Canselor)', NULL),
(5, 'KTR (Kolej Tun Razak)', NULL),
(6, 'KTDI (Kolej Tun Dr Ismail)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `user_id` int(11) NOT NULL,
  `manager_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_no` int(20) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_price` decimal(10,2) NOT NULL,
  `college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `user_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `matrix` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_id`, `student_name`, `matrix`) VALUES
(3, 'Nurizko Maulana', 'A18CS0318'),
(4, 'Edowardo', 'A18CS0297');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_auth`
--

CREATE TABLE `tbl_token_auth` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password_hash` varchar(255) CHARACTER SET latin1 NOT NULL,
  `selector_hash` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_expired` int(11) NOT NULL DEFAULT 0,
  `expiry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_token_auth`
--

INSERT INTO `tbl_token_auth` (`id`, `username`, `password_hash`, `selector_hash`, `is_expired`, `expiry_date`) VALUES
(1, 'admin', '$2y$10$612mnnTCA6kP0sdzoa2U4uOjF8gCQTFTJ8nYTr5uhWOHkg/mGEMzi', '$2y$10$ZcS8Fs7aUglnJXOXiD9h6OdjLg3oDZgk9kuOfIxn50foseZEkKYfq', 1, '2020-06-15 06:39:31'),
(2, 'admin', '$2y$10$73SObIysodWLSTa3cDFLNebo9kFPs57RKpIVj/ixbhPgiT0uePNky', '$2y$10$FdkaSC3bUI9RcavrZ6gHhOJQzI8b2Ibhs8xwgtv0HB/mUKc4e1cb6', 1, '2020-06-15 06:41:09'),
(3, 'admin', '$2y$10$B6yUUaHKe1o.uLfbCGDNL./olK0bPMZRXyODiGXVVLscH6REB/wz.', '$2y$10$laawu5t2WDBxThdQ0Zj2HeR9IlHT9tv.Ub36gmhyVukd5MehCaSU.', 1, '2020-06-15 06:54:29'),
(4, 'admin', '$2y$10$lt5ZcRxSPkt6bZBjYMhNoOV55Il1gdCMzvcduSpD4VwI0zpBEE9wq', '$2y$10$OMSG9HBQKRZZI0jrrWrOee9iHmcRNmOi00MfFMo4Vq1.5taCucgNC', 1, '2020-06-15 06:58:13'),
(5, 'admin', '$2y$10$4ouo35Hoa6lYI.qj1kylouNTlPKJ6TDwrNVZRX0JboOx3dlfokqRi', '$2y$10$tU6o38jCeGkC14OgJ7Z7cOeXay9X0laFKyhlZOMyWqR38NCyoXn3q', 1, '2020-06-15 08:03:29'),
(6, 'admin', '$2y$10$f0NppX8pceyMUgLRgarhoeCMy/nfVgLiHNYMSmJ480dd8gPU127Ge', '$2y$10$2bmepl42Rixuo.J4NxESm.2Ht98dwjNL.L.phKqW14XKCR/dKQwym', 1, '2020-06-15 13:18:10'),
(7, 'admin', '$2y$10$ox9DOg3aSbucWeAsLUVg5uBEKQtTfm21RFXuPAQhlKhaEWlPR1oRa', '$2y$10$FL2put5GZbvLOOlO5NkLDuQPX2PcgI.sZq8u.ar0GUJVlZSS8Bnam', 1, '2020-06-15 16:13:24'),
(8, 'admin', '$2y$10$yyc7OJrkY.stYJJ/3DkZCe8usVZRYxXZTiI5mwJFFnWaCu1iTaAOK', '$2y$10$Hy.lqX3qcuOb6.dL7ejdC.yOQ8i2EnWjmhm9yAt0tbP11aWpGCemm', 1, '2020-06-15 17:54:32'),
(9, 'admin', '$2y$10$FKwricIjRvbZ.EjCES8.f.ShJCLH.xLFwsrGG1hExepP/AWTt0liW', '$2y$10$lSKYqW5438.oZXYSso26ee6M/1l.vCAOB4Tcw1Wgz6wjlfKtHF7Ge', 0, '2020-07-15 12:54:32'),
(10, 'edowardo', '$2y$10$W4sbyWHiUGhPed0k5J9iIu1jsDbcwJ9dxlioHN1a6U47hm412vDi.', '$2y$10$qrbvsTrBep66Vps984f1OeQssxNaPQzuJ0lIYNlAxHG5gMiiUTLNy', 1, '2020-06-15 19:52:49'),
(11, 'edowardo', '$2y$10$FY7l5BGJp4dVAabPBeUjpeQPVrtKAiyLKhn5fm7Ylk2HQLYrV9yvW', '$2y$10$f2QUjq3eM8HyhongqbgDmu0Aax0RYxMkaTSbge3ZPHUAQaiJO8K1C', 0, '2020-07-15 14:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `level`, `status`) VALUES
(1, 'admin', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'admin', 1),
(3, 'maulana2000', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'student', 1),
(4, 'edowardo', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'student', 1),
(5, 'manager', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'manager', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `booking_fk_room_id` (`room_id`),
  ADD KEY `booking_fk_user_id` (`user_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_token_auth`
--
ALTER TABLE `tbl_token_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_token_auth`
--
ALTER TABLE `tbl_token_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_fk_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `booking_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college` (`college_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
