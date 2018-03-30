-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 30, 2018 lúc 04:50 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duolingo2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level`
--

CREATE TABLE `level` (
  `id` int(2) NOT NULL,
  `namelevel` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `level`
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
-- Cấu trúc bảng cho bảng `question`
--

CREATE TABLE `question` (
  `id` int(2) NOT NULL,
  `level` int(2) NOT NULL,
  `myquestion` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `myanswer` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `question`
--

INSERT INTO `question` (`id`, `level`, `myquestion`, `myanswer`) VALUES
(1, 1, 'Điền Từ Đúng Với \" Cô Ấy \"', 'she'),
(2, 1, 'Điền Từ Đúng Với \"Anh Ấy\"', 'he'),
(3, 1, 'Điền Từ Đúng Với \"Quả Táo\"', 'apple'),
(4, 1, 'Điền Từ Đúng Với \"Ngày Mai\"', 'tomorrow'),
(7, 1, 'Điền từ đúng với \" Phụ nữ \"', 'woman'),
(8, 1, 'Điền từ đúng với \" Cô gái \"', 'girl'),
(9, 1, 'Dịch : \" I am a man \"', 'tôi là một người đàn ông'),
(10, 1, 'Dịch \" This is an apple \"', 'đây là một quả táo'),
(11, 1, 'Dịch \" Tôi ăn \"', 'i eat'),
(12, 1, 'Dịch \" He is a man and I am a boy \"', 'anh ấy là một người đàn ông và tôi là một cậu bé'),
(13, 2, 'Điền từ đúng với \" Tờ báo \"', 'newspaper'),
(14, 2, 'Điền từ đúng với \"Con hổ\"', 'tiger'),
(24, 2, 'Dịch \" Chúng tôi ăn và uống \"', 'we eat and drink'),
(25, 2, 'Điền từ đúng với \"Một con chó\"', 'a dog'),
(26, 2, 'Dịch \" Brother \"', 'anh trai'),
(27, 2, 'Điền từ đúng với \" Sữa \"', 'milk'),
(28, 2, 'Điền từ đúng với \" Cơm \"', 'rice'),
(29, 2, 'Dịch \" Tôi đang đá bóng \"', 'i am playing football'),
(30, 2, 'Điền từ đúng với \"Con lợn\"', 'pig'),
(31, 2, 'Điền từ đúng với \" trẻ em (số nhiều)', 'children'),
(34, 3, 'Dịch \"Tôi ăn gà\"', 'i eat chicken'),
(35, 3, 'Điền từ đúng với \" phở \"', 'noodle'),
(36, 3, 'Điền từ đúng với \" nen rán \"', 'spring roll'),
(37, 3, 'Dịch \" Tôi thích ăn rau \"\r\n', 'i like eat vegetable'),
(38, 3, 'Điền từ đúng với \" Hot dog \"', 'xúc xích'),
(39, 3, 'Điền từ đúng với \" Bánh mỳ kẹp \"', 'sandwich'),
(40, 3, 'Dịch \" tôi ăn một quả táo \"', 'i eat an apple'),
(41, 3, 'Điền từ đúng với \" Thịt bò :', 'beef'),
(42, 3, 'Điền từ đúng với \" socola \"', 'chocolate'),
(43, 3, 'Dịch \" Tôi thích ăn bánh \"', 'i like eat cake');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(2) NOT NULL DEFAULT '1',
  `score` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `score`) VALUES
(1, 'anh', 'em', 1, 18),
(3, 'phong2', 'trecongtu1234', 3, 25),
(4, 'am', 'am', 1, 22),
(5, 'em', '123', 1, 1),
(6, '1', '1', 1, 1),
(7, 'ahihi', 'ahaha', 1, 1),
(8, 'tung', '1941997', 2, 0),
(9, 'son', '123456', 3, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aaaaa` (`level`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `adasd` (`level`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `level`
--
ALTER TABLE `level`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `question`
--
ALTER TABLE `question`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `aaaaa` FOREIGN KEY (`level`) REFERENCES `level` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `adasd` FOREIGN KEY (`level`) REFERENCES `level` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
