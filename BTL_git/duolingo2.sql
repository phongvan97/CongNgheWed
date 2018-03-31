-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2018 lúc 11:00 AM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

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
(5, 'Hàng Hóa', '\'../image/box.png\''),
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
(43, 3, 'Dịch \" Tôi thích ăn bánh \"', 'i like eat cake'),
(44, 4, 'Điền từ đúng với \"Những cái bánh\" ', 'cakes'),
(45, 4, 'Dịch \" Tôi có 3 cái oto \"\r\n', 'I have three cars'),
(46, 4, 'Dịch \"I buy six apples\"', 'tôi mua sáu quả táo'),
(47, 4, 'Điền từ đúng với \"5 con lợn\"', 'five pigs'),
(48, 4, 'Điền từ đúng với \"những cái bút chì\"', 'pencils'),
(49, 4, 'Điền từ đúng với \"những con cừu\"', 'sheep'),
(50, 4, 'Điền từ đúng với \"những con sói\"', 'wolves'),
(51, 4, 'Điền từ đúng với \"những củ khoa tây\"', 'potatoes'),
(52, 4, 'dịch câu: \"đây là những cái đồng hồ\" ', 'there are watches'),
(53, 4, 'Điền từ đúng với \"3 cái điện thoại \"', 'three phones'),
(54, 5, 'Điền từ đúng với \"người sản xuất\"', 'producer'),
(55, 5, 'Dịch \"tôi mua 3 chai nước\"', 'I bought three bottles of water'),
(56, 5, 'Điền từ đúng với \"washing powder\"', 'bột giặt'),
(57, 5, 'Điền từ đúng với \"dầu gội\"', 'shampoo'),
(58, 5, 'Dịch \"tôi muốn đi siêu thị\"', 'i want to go supermarket'),
(59, 5, 'Dịch \"tôi đi siêu thị để mua rau\"', 'i go to the supermarket to buy vegetable '),
(60, 5, 'Điền từ đúng với \"snack\"', 'đồ ăn nhanh'),
(61, 5, 'Điền từ đúng với \"máy tính\"', 'computer'),
(62, 5, 'Dịch \"Tôi có một cái bút\"', 'i have a pen'),
(63, 5, 'Điền từ đúng với \"giày\"', 'shoe'),
(64, 6, 'Điền từ đúng với \"apron\"', 'tạp dề'),
(65, 6, 'Điền từ đúng với \"áo khoác\"', 'coat'),
(66, 6, 'Điền từ đúng với \"umbrella\"', 'cái ô'),
(67, 6, 'Điền từ đúng với \"shirt\"', 'áo sơ mi'),
(68, 6, 'Điền từ đúng với \"quần bò\"', 'jeans'),
(69, 6, 'Điền từ đúng với \"comb\"', 'cái lược'),
(70, 6, 'Điền từ đúng với \"mirror\"', 'gương'),
(71, 6, 'Điền từ đúng với \"cà vạt\"', 'tie'),
(72, 6, 'Điền từ đúng với \"jumper\" ', 'áo len'),
(73, 6, 'Điền từ đúng với \"quần áo ngủ\"', 'pyjamas'),
(74, 7, 'Điền từ đúng với \"màu đỏ\"', 'red'),
(75, 7, 'Điền từ đúng với \"màu xanh da trời\"', 'blue'),
(76, 7, 'Điền từ đúng với \"màu xanh lá cây\"', 'greeen'),
(77, 7, 'Điền từ đúng với \"màu vàng\"', 'yellow'),
(78, 7, 'Điền từ đúng với \"màu tím\"', 'violet'),
(79, 7, 'Điền từ đúng với \"màu đen\"', 'black'),
(80, 7, 'Điền từ đúng với \" màu trắng \"', 'white'),
(81, 7, 'Điền từ đúng với \"màu hồng\"', 'pink'),
(82, 7, 'Điền từ đúng với \" màu nâu \"', 'brown'),
(83, 7, 'Điền từ đúng với \"màu ghi\"', 'gray'),
(84, 8, 'Điền từ đúng với \"bay\"', 'fly'),
(85, 8, 'Điền từ đúng với \"nhảy\"', 'jump'),
(86, 8, 'Điền từ đúng với \"cười\"', 'smile'),
(87, 8, 'Điền từ đúng với \"khóc\"', 'cry'),
(88, 8, 'Điền từ đúng với \"walk\"', 'đi bộ'),
(89, 8, 'Điền từ đúng với \"chạy\"', 'run'),
(90, 8, 'Điền từ đúng với \"punch\"', 'đấm'),
(91, 8, 'Điền từ đúng với \"play\"', 'chơi'),
(92, 8, 'Điền từ đúng với \"sleep\"', 'ngủ'),
(93, 8, 'Điền từ đúng với \"learn\"', 'học');

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
(9, 'son', '123456', 3, 0),
(12, 'tung2', '1234546', 4, 0),
(13, 'admin', 'admin', 8, 50);

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
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
