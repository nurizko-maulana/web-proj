-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 09:30 AM
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
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `block_id` int(11) NOT NULL,
  `block_name` varchar(5) NOT NULL,
  `collage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`block_id`, `block_name`, `collage_id`) VALUES
(1, 'XC1', 1),
(2, 'XC2', 1),
(3, 'XB1', 1),
(4, 'XB2', 1),
(7, 'W1', 2),
(8, 'W2', 2),
(11, 'W3', 2),
(12, 'WA1', 2),
(17, 'WA3', 2),
(20, 'U5', 3),
(21, 'U6', 3),
(22, 'S04', 4),
(25, 'S05', 4),
(29, 'S08', 4),
(30, 'S09', 4),
(33, 'S10', 4),
(34, 'S11', 4),
(37, 'S12', 4),
(38, 'S13', 4),
(41, 'S14', 4),
(42, 'S15', 4),
(45, 'S20', 4),
(46, 'S22', 4),
(49, 'S23', 4),
(50, 'S24', 4),
(53, 'S37', 4),
(54, 'S38', 4),
(57, 'S39', 4),
(58, 'S40', 4),
(63, 'K04', 5),
(64, 'K06', 5),
(67, 'K09', 5),
(68, 'K13', 5),
(71, 'K14', 5),
(72, 'K15', 5),
(75, 'K16', 5),
(76, 'K23', 5),
(79, 'K25', 5),
(80, 'M05', 6),
(83, 'M06', 6),
(84, 'M07', 6),
(87, 'M09', 6),
(88, 'M10', 6),
(91, 'M11', 6),
(92, 'M16', 6),
(95, 'M17', 6),
(96, 'M19', 6),
(97, 'M20', 6),
(98, 'M21', 6),
(99, 'H02', 7),
(100, 'H03', 7),
(101, 'H04', 7),
(102, 'H05', 7),
(103, 'H06', 7),
(104, 'H07', 7),
(105, 'H08', 7),
(106, 'H09', 7),
(107, 'H10', 7),
(108, 'H11', 7),
(109, 'H12', 7),
(110, 'H13', 7),
(111, 'H14', 7),
(112, 'H15', 7),
(113, 'H16', 7),
(114, 'H17', 7),
(115, 'H18', 7),
(116, 'H19', 7),
(117, 'H20', 7),
(118, 'H21', 7),
(119, 'H22', 7),
(120, 'H23', 7),
(121, 'H24', 7),
(122, 'G09', 8),
(123, 'G10', 8),
(124, 'G11', 8),
(125, 'G13', 8),
(126, 'G14', 8),
(127, 'G15', 8),
(128, 'G16', 8),
(129, 'G17', 8),
(130, 'G18', 8),
(131, 'G19', 8),
(132, 'G20', 8),
(133, 'G21', 8),
(134, 'G22', 8),
(135, 'G23', 8),
(136, 'G24', 8),
(137, 'G25', 8),
(138, 'G28', 8),
(139, 'UA1', 9),
(140, 'UA2', 9),
(141, 'UB1', 9),
(142, 'UB2', 9),
(143, 'L17', 10),
(144, 'L18', 10),
(145, 'L20', 10),
(146, 'L21', 10),
(147, 'L22', 10),
(148, 'L23', 10),
(149, 'L24', 10),
(150, 'L25', 10),
(151, 'L26', 10),
(152, 'L27', 10),
(153, 'L28', 10),
(154, 'L29', 10),
(155, 'L31', 10),
(156, 'L32', 10),
(157, 'L33', 10),
(158, 'L34', 10),
(159, 'L35', 10),
(160, 'L36', 10),
(161, 'L37', 10),
(162, 'L38', 10);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `date_booked` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_price` decimal(10,2) NOT NULL DEFAULT 2000.00,
  `book_status` varchar(20) NOT NULL,
  `room_id` int(11) NOT NULL DEFAULT 1,
  `room_no` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `matrix` varchar(10) NOT NULL,
  `college` varchar(11) NOT NULL,
  `block` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `date_booked`, `total_price`, `book_status`, `room_id`, `room_no`, `user_id`, `user_name`, `matrix`, `college`, `block`) VALUES
(1, '2020-07-02 05:55:58', '2000.00', 'approve', 1, 161, 4, 'Nurizko Maulana', 'A18CS0318', 'KDOJ', 'XC1'),
(2, '2020-07-02 05:58:46', '2000.00', 'approve', 2, 244, 3, 'Edowardo', 'A18CS0297', 'KDOJ', 'XC2'),
(4, '2020-07-03 00:50:47', '2000.00', 'approve', 1, 323, 4, 'nurizko maulana', 'A18CS0318', 'KDOJ', 'XC1'),
(5, '2020-07-03 01:04:29', '2000.00', 'rejected', 1, 12, 4, 'raihan', 'A18CS0318', 'KDOJ', 'XC1');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(50) NOT NULL,
  `college_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `college_name`, `college_price`) VALUES
(1, 'KDOJ (Kolej Dato Onn Jafar)', 1000),
(2, 'KDSE (Kolej Datin Seri Endon)', 800),
(3, 'KP (Kolej Perdana)', 600),
(4, 'KTC (Kolej Tuanku Canselor)', 1000),
(5, 'KTR (Kolej Tun Razak)', 800),
(6, 'KTDI (Kolej Tun Dr Ismail)', 600),
(7, 'KTF (Kolej Tun Fatimah)', 1000),
(8, 'KRP (Kolej Rahman Putra)', 800),
(9, 'K9/10 (Kolej 9/10)', 600),
(10, 'KTHO (Kolej Tun Hussein On)', 1000);

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

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_no`, `room_type`, `room_price`, `college_id`) VALUES
(1, 161, 'single', '2000.00', 1),
(2, 162, 'single', '2000.00', 1);

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
(4, 'Edowardo', 'A18CS0297'),
(6, 'Raihan Wilinio', 'A18CS0316');

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
(1, 'admin', '$2y$10$CgiUAXG7C8Ekj6zPqvQIOO0PlCPsZMrjmMf0kKdLk7owDashctmPq', 'admin', 1),
(3, 'maulana2000', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'student', 1),
(4, 'edowardo', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'student', 1),
(5, 'manager', '$2a$10$0FHEQ5/cplO3eEKillHvh.y009Wsf4WCKvQHsZntLamTUToIBe.fG', 'manager', 1),
(6, 'raihan', '$2y$10$FCaCpUrWXTLWoTUI5Ke64eaoYaddz273SwNOjrylrBglwqMtIq2mW', 'student', 0),
(7, 'mokhtar', '$2y$10$qcIbVaLgsKmAqkkG8J1pW.ZxrAnhegf6Sd95.TKlHBARVku9vclkq', 'student', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`block_id`),
  ADD KEY `collage_id` (`collage_id`);

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
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_token_auth`
--
ALTER TABLE `tbl_token_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `block_ibfk_1` FOREIGN KEY (`collage_id`) REFERENCES `college` (`college_id`);

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
