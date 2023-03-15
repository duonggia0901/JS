-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 15, 2023 lúc 04:15 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_game2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `ngay` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `atm` varchar(30) NOT NULL,
  `dienthoai` int(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `ngay`, `atm`, `dienthoai`, `name`, `image`, `email`, `total`) VALUES
(39, '2021-12-17 16:53:10', '13560238', 2147483647, 'Trần Hồng Quân', '', 'uuuuuuuuuuiuiyi001@gmail.com', 150000),
(40, '2021-12-17 16:53:10', '651238974', 2147483647, 'Trần Hồng Đào', '', 'colate2001@gmail.com', 1160000),
(41, '2021-12-17 16:53:10', '365897452', 2147483647, 'Đỗ Thị Thi', '', 'ththi99991@gmail.com', 0),
(42, '2021-12-17 16:53:10', '9999999999', 2147483647, 'Đặng Hiền Đức', '', 't999999999colate2001@gmail.com', 840000),
(52, '2021-12-17 16:53:10', '246789034', 2147483647, 'Nguyễn Trung', '', 'trunghhh78@gmail.com', 320000),
(53, '2021-12-17 16:53:10', '234567890', 2147483647, 'Nguyễn Tuấn', '', 'trantuan1@gmail.com', 0),
(54, '2021-12-17 16:53:10', '5336789023', 2147483647, 'John Caddi', '', 'kasuaji889@gmail.com', 850000),
(55, '2021-12-17 16:53:10', '534789034', 2147483647, 'Ha Van Duc', '', 'javaabnyalate@gmail.com', 850000),
(56, '2021-12-17 16:53:10', '6463263636', 2147483647, 'Duc Chinh', '', 'Ducchinhq12344@gmail.com', 320000),
(57, '2021-12-17 16:53:10', '2442343333', 567899999, 'Jonny Dang', '', 'jonnydang1244e@gmail.com', 0),
(58, '2021-12-18 02:42:51', '5336789023', 2147483647, 'Dang Nhn', '', 'NHANDANGe@gmail.com', 150000),
(62, '2021-12-25 13:22:57', '4744444522222', 987654321, 'Hồ Hà Tùng', '', 'hohahung01@gmail.com', 150000),
(63, '2022-01-19 15:01:04', 'ddddddddđ', 2147483647, 'dsad', '', 'dddddddddddđ', 0),
(64, '2022-01-19 15:01:26', '5555555555555555555', 2147483647, 'haaaaaaaaa', '', 'transontungchocolate2001@gmail.com', 840000),
(65, '2022-01-29 13:11:05', 'dasdf', 2147483647, 'sdcscsd', '', 'transontungchocolate2001@gmail.com', 840000),
(67, '2022-06-16 14:58:51', '123456987', 2147483647, 'Tran Teamcook', '', 'teamcook@gmail.com', 0),
(68, '2022-06-16 15:05:14', '1234566666', 2147483647, 'Trần A', '', 'ATRAN123@gmail.com', 150000),
(69, '2022-06-18 09:28:07', '123566666', 234569888, 'tranB', '', 'tranb@gmail.com', 150000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `IdCategory` int(10) NOT NULL,
  `CategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` datetime NOT NULL,
  `is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`IdCategory`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `is_Active`) VALUES
(1, 'Action', 'Thể loại hành động', '2021-12-07 16:04:59', '2021-12-07 05:04:59', 1),
(2, 'Sport', 'Thể loại thể thao, hỏi đáp về thể thao...', '2021-12-07 13:06:49', '0000-00-00 00:00:00', 1),
(3, 'â', 'đc', '2021-12-07 13:07:39', '0000-00-00 00:00:00', 0),
(4, 'ok', '1', '2021-12-07 13:07:59', '0000-00-00 00:00:00', 0),
(5, 'hiland', 'hilan1213', '2022-06-18 08:48:15', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `postId` int(50) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postingDate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(0, 90, 'tunH', 'tunh@gmail.com', 'Game rất hay', '2022-06-25 16:51:02.011751', 0),
(0, 90, 'dat ', 'datduong@gmail.', 'Tôi không thích chế độ 3d cho ', '2022-06-25 16:52:06.066998', 0),
(0, 90, 'tranb', 'tranb@gmail.com', 'Cần nhiều thứ hay hơn', '2022-06-25 16:52:26.258614', 0),
(0, 90, 'tuan', 'tuan@gmail.com', 'yaaaaa game awsome!', '2022-06-25 16:52:56.655725', 0),
(0, 90, 'johnny', 'john@jon.com', 'good gaem i like it!', '2022-06-25 16:53:20.653524', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `games`
--

CREATE TABLE `games` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `developer` varchar(500) NOT NULL,
  `IdCategory` int(10) NOT NULL,
  `intro` varchar(1000) NOT NULL,
  `version` varchar(10) NOT NULL,
  `price` int(20) NOT NULL,
  `size` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(200) NOT NULL,
  `internet` varchar(10) NOT NULL,
  `is_Active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `games`
--

INSERT INTO `games` (`id`, `name`, `developer`, `IdCategory`, `intro`, `version`, `price`, `size`, `date`, `image`, `internet`, `is_Active`) VALUES
(75, 'Apex Legends', 'Respawn Entertainment', 1, 'Apex Legends là trò chơi bắn súng anh hùng miễn phí phổ biến được tạo ra bởi Respawn Entertainment. Làm chủ một nhóm các nhân vật huyền thoại với khả năng chế ngự và trải nghiệm lối chơi sáng tạo với chiều sâu chiến thuật tuyệt vời trong sự phát triển mới này của thể loại.', '6.265', 840000, 9500, '2019-12-07 16:31:11', 'game4.png', 'Yes', 1),
(76, 'Lost: Find', 'DSGame', 1, 'Đây là một trò chơi bình thường theo lượt. Người chơi có thể tấn công hoặc phục hồi lượng máu tùy theo giá trị của sàng, và vượt qua màn bằng cách đánh bại boss.', '5.3654', 850000, 9500, '2020-12-07 16:22:33', 'game8.png', 'Yes', 1),
(79, 'Smash ball', 'Smashball Labs LLC', 1, 'Smash ball là một trò chơi chiến đấu nhiều người chơi trên cơ sở vật lý. Nhân vật được điều khiển hoàn toàn bởi công cụ vật lý, đồng thời có rất nhiều vũ khí và bản đồ khác nhau. Nó sẽ cung cấp cho bạn trải nghiệm chiến đấu hoàn toàn khác biệt.', '8.364', 899100, 5500, '2020-12-07 16:25:25', 'game6.png', 'Yes', 1),
(80, 'Tales Arise', 'DHJgGame', 1, '300 năm chuyên chế. Một chiếc mặt nạ bí ẩn. Nỗi đau và ký ức đã mất. Sử dụng Blazing Sword và tham gia cùng một cô gái bí ẩn, không thể chạm tới để chống lại những kẻ áp bức bạn. Trải nghiệm một câu chuyện về sự giải phóng, có các nhân vật với biểu cảm đồ họa thế hệ tiếp theo!', '5.3654', 150000, 7800, '2022-06-18 15:03:00', 'game10.png', 'No', 1),
(81, 'Team Fortress 2', 'Valve', 1, 'Chín lớp khác biệt cung cấp một loạt các khả năng chiến thuật và tính cách. Cập nhật liên tục với các chế độ chơi, bản đồ, trang bị mới và quan trọng nhất là mũ!', '5.3654', 320000, 3500, '2022-06-18 15:03:37', 'game5.png', 'No', 1),
(82, '0', 'Pixonic', 4, 'null', '3.6985', 105000, 6500, '2022-06-25 16:23:23', 'game7.png', 'Yes', 0),
(83, '0', 'Saber Interactive Inc', 3, 'null', '7.3268', 320000, 6500, '2021-12-09 03:58:39', 'game2.png', 'No', 0),
(84, 'Action Taimanin', ' LiLith', 1, 'Một game nhập vai hành động hack-and-slash cường độ cao, tuyệt đẹp từ Taimanin nổi tiếng!\n', '12', 0, 2, '2021-12-07 16:34:12', 'game9.png', 'No', 1),
(85, '11', '1', 1, '1', '1', 1, 1, '2021-12-09 03:58:34', 'bg-game-1.jpg', 'Yes', 0),
(86, 'SpellForce 3', 'Grimlore Games', 1, 'Đăng nhập để tìm hiểu lý do tại sao bạn có thể thích sản phẩm này hoặc không. Các đề xuất này khác nhau tùy thuộc vào trò chơi bạn sở hữu, địa chỉ liên hệ của bạn và nhóm quản lý mà bạn theo dõi.', '3', 464000, 4, '2021-12-09 03:58:24', 'game11.jpg', 'Yes', 1),
(87, 'Dota 2', 'Valve', 1, 'Mỗi ngày trên khắp thế giới, hàng triệu người chơi một trong hơn 100 nhân vật và thi đấu với nhau trong Dota 2. Luôn có điều gì đó để khám phá, khi lối chơi, tính năng và nhân vật liên tục phát triển theo từng bản cập nhật.', '7', 0, 15000, '2021-12-14 02:09:29', 'dota2.jpg', 'Yes', 1),
(88, 'GTFO', ' 10 Chambers', 1, 'GTFO là một game bắn súng co-op kinh dị sẽ đưa bạn vào bầu không khí hồi hộp nghẹt thở và những pha hành động bùng nổ với tốc độ chóng mặt. Sự thận trọng, chiến lược và sự hợp tác sẽ là điều cần thiết để bạn tồn tại trong nhà tù dưới lòng đất này. Cùng nhau, bạn sẽ chiến đấu… hoặc chết.', '12072021', 232500, 8000, '2021-12-14 02:15:08', 'gfto.jpg', 'Yes', 1),
(89, 'God of War', ' Studio Santa Monica', 1, 'Sự trả thù của anh ta chống lại các vị thần trên đỉnh Olympus đang đứng sau anh ta, Kratos hiện đang sống như một cư dân đơn giản trong vương quốc của các vị thần Bắc Âu (và quái vật). Chính trong thế giới hiếu khách và tàn nhẫn này, anh ta phải chiến đấu vì sự sống còn của mình ', '2018', 1139000, 20000, '2021-12-14 02:22:01', 'gow2.jpg', 'Yes', 1),
(90, 'FIFA 22', ' EA Canada và EA Romania', 2, 'Chơi FIFA 22 và nhận Vật phẩm cầu thủ thế hệ tiếp theo: Nhận Vật phẩm cầu thủ thế hệ tiếp theo không thể giao dịch trong FIFA Ultimate Team bắt đầu từ ngày 15 tháng 12 khi chơi FIFA 22 trước ngày 14 tháng 1 năm 2022 *.', '1.15', 990000, 8000, '2021-12-25 08:47:20', 'ff22.jpg', 'Yes', 1),
(91, 'null', 'null', 0, 'null', 'null', 0, 0, '0000-00-00 00:00:00', 'null', 'null', 0),
(96, 'Pubg', 'KRAFTON, Inc.', 1, ' PUBG: BATTLEGROUNDS miễn phí. Hạ cánh trên các địa điểm chiến lược, cướp vũ khí và vật tư, và sống sót để trở thành đội cuối cùng đứng trên các Chiến trường đa dạng, phong phú.', '3.1256', 78000, 7800, '2022-06-18 15:00:42', 'game3.png', 'No', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gamesfree`
--

CREATE TABLE `gamesfree` (
  `name` varchar(200) NOT NULL,
  `developer` varchar(200) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `version` varchar(1000) NOT NULL,
  `price` int(20) NOT NULL,
  `size` int(20) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `internet` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gamesfree`
--

INSERT INTO `gamesfree` (`name`, `developer`, `Category`, `version`, `price`, `size`, `date`, `image`, `internet`) VALUES
('PUBG: BATTLEGROUNDS', 'KRAFTON, Inc.', 'Ation,Multiplayer', 'Khi bước vào thế giới thực, anh gặp hai cô gái, Kido Tsubasa và Ibaraki Rino.\r\nCả hai tâm hồn tốt bụng có cuộc sống đã bị xúc động bởi các thí nghiệm BMI vô đạo đức, giống như anh ấy.', 0, 7800, '2020-12-10', 'game3.png', 'Yes'),
('Tales of Arise', 'DHJgGame', 'Zombie,action', '“Một trò chơi vô cùng thỏa mãn và hứa hẹn nhiều hứa hẹn về sự phát triển của nó, Forager là một sản phẩm tuyệt vời khi nó đang tồn tại và là một khoản đầu tư đáng giá về lâu dài.”\r\n', 0, 0, '2021-12-12', 'game10.png', 'No'),
('Team Fortress 2', 'Valve', 'Ation,Multiplayer', 'Là một trò chơi mang lại cho bạn niềm vui ngay từ khi bạn bắt đầu chơi và từ đó bạn chỉ cần tiếp tục phân phối.Tái tạo lại tài nguyên rèn luyện kĩ năng bắn súng thiện xạ.Cảm ơn bạn  ', 0, 3500, '2021-01-20', 'game5.png', 'Yes'),
('World War Z: Aftermath', 'Saber Interactive Inc', 'Zombie,action', 'Một ngày khi bầy zoobie xuất hiện.Bạn sẽ phải sử dụng hết tất cả những kĩ năng của mình có để chống lại bầy zoombie hung giữ sẽ cố gắng lây nhiễm cho bạn.Cố gắng sinh tồn bạn sẽ tăng cấp độ.', 0, 6500, '2021-12-31', 'game2.png', 'No');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`IdCategory`);

--
-- Chỉ mục cho bảng `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `IdCategory` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `games`
--
ALTER TABLE `games`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
