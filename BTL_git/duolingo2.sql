-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 09:15 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duolingo`
--

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(2) NOT NULL,
  `namelevel` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `namelevel`, `image`) VALUES
(1, 'Cơ Bản 1', '\'../image/egg.png\''),
(2, 'Cơ Bản 2', '\'../image/chick.png\''),
(3, 'Món ăn', '\'../image/food.png\''),
(4, 'Số Nhiều', '\'../image/bee.png\''),
(5, 'Sở Hữu', '\'../image/box.png\''),
(6, 'Quần Áo', '\'../image/tie.png\''),
(7, 'Màu Sắc', '\'../image/color.png\''),
(8, 'Động từ', '\'../image/run.png\'');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(2) NOT NULL,
  `level` int(2) NOT NULL,
  `myquestion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `myanswer` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `level`, `myquestion`, `myanswer`) VALUES
(1, 1, 'Điền Từ Đúng Với \"Cô Ấy\"', 'she'),
(2, 1, 'Điền Từ Đúng Với \"Anh Ấy\"', 'he'),
(3, 1, 'Điền Từ Đúng Với \"Quả Táo\"', 'apple'),
(4, 1, 'Điền Từ Đúng Với \"Ngày Mai\"', 'tomorrow'),
(6, 2, 'ádasd', 'ádsad');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(2) NOT NULL DEFAULT '1',
  `score` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `score`) VALUES
(1, 'anh', 'em', 1, 10),
(3, 'phong2', 'trecongtu1234', 1, 6),
(4, 'am', 'am', 1, 22),
(5, 'em', '123', 1, 1),
(6, '1', '1', 1, 1),
(7, 'ahihi', 'ahaha', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aaaaa` (`level`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `adasd` (`level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `aaaaa` FOREIGN KEY (`level`) REFERENCES `level` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `adasd` FOREIGN KEY (`level`) REFERENCES `level` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
