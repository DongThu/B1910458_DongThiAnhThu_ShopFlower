-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 04:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shopflower`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetails`
--

CREATE TABLE `billdetails` (
  `bill_id` int(11) NOT NULL,
  `flower_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billdetails`
--

INSERT INTO `billdetails` (`bill_id`, `flower_id`, `item_qty`) VALUES
(1, 9, 3),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(7, 2, 1),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1),
(12, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `billstatus`
--

CREATE TABLE `billstatus` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bill_phone` varchar(255) DEFAULT NULL,
  `bill_address` text DEFAULT NULL,
  `bill_when` varchar(255) DEFAULT NULL,
  `bill_method` varchar(255) DEFAULT NULL,
  `bill_discount` int(11) DEFAULT NULL,
  `bill_delivery` int(11) DEFAULT NULL,
  `bill_total` int(11) DEFAULT NULL,
  `bill_paid` varchar(255) DEFAULT NULL,
  `bill_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billstatus`
--

INSERT INTO `billstatus` (`bill_id`, `user_id`, `bill_phone`, `bill_address`, `bill_when`, `bill_method`, `bill_discount`, `bill_delivery`, `bill_total`, `bill_paid`, `bill_status`) VALUES
(1, 1, '84946830300', 'Cần Thơ', '2023-03-26T21:14', 'cash', 0, 15, 57, 'true', 6),
(2, 1, '84946830300', 'Cần Thơ', '2023-03-27T12:45', 'cash', 0, 15, 500015, 'true', 6),
(3, 1, '84946830300', 'Cần Thơ', '2023-03-27T12:55', 'card', 0, 15, 500015, 'true', 6),
(4, 1, '84946830300', 'Cần Thơ', '2023-03-27T13:02', 'cash', 0, 15, 500015, 'true', 6),
(5, 1, '84946830300', 'Cần Thơ', '2023-03-28T10:20', 'cash', 0, 15, 500015, 'true', 6),
(6, 1, '84946830300', 'Cần Thơ', '2023-03-28T10:23', 'cash', 0, 15, 500015, 'true', 6),
(7, 1, '84946830300', 'cần thơ', '2023-04-18T19:32', 'card', 20000, 15, 960015, 'false', 0),
(8, 1, '84946830300', 'cần thơ', '2023-04-18T20:00', 'cash', 0, 15, 500015, 'true', 6),
(9, 1, '84946830300', 'czbgfng', '2023-04-18T20:56', 'cash', 0, 15, 500015, 'true', 6),
(10, 1, '84946830300', 'sdfd', '2023-05-01T22:45', 'cash', 0, 15, 500015, 'false', 0),
(11, 1, '84946830300', 'ádf', '2023-05-01T22:49', 'card', 0, 15, 500015, 'false', 0),
(12, 1, '84946830300', 'nbhkj', '2023-05-03T11:34', 'cash', 0, 15, 1000015, 'true', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `flower_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flower`
--

CREATE TABLE `flower` (
  `flower_id` int(11) NOT NULL,
  `flower_name` varchar(255) DEFAULT NULL,
  `flower_star` varchar(255) DEFAULT NULL,
  `flower_vote` varchar(255) DEFAULT NULL,
  `flower_price` varchar(255) DEFAULT NULL,
  `flower_discount` varchar(255) DEFAULT NULL,
  `flower_desc` varchar(255) DEFAULT NULL,
  `flower_status` varchar(255) DEFAULT NULL,
  `flower_type` varchar(255) DEFAULT NULL,
  `flower_category` varchar(255) DEFAULT NULL,
  `flower_src` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flower`
--

INSERT INTO `flower` (`flower_id`, `flower_name`, `flower_star`, `flower_vote`, `flower_price`, `flower_discount`, `flower_desc`, `flower_status`, `flower_type`, `flower_category`, `flower_src`) VALUES
(1, 'Đóa hồng', '4.5', '999', '500000', '0.00', '7 hoa hồng mỗi đóa', 'best seller', 'Hồng phấn ', 'Đóa hoa', 'doahoa/doa-1.png'),
(2, 'Đóa cúc trắng', '4.5', '999', '480000', '20000', 'Đóa cỡ to', 'best seller', 'Cúc trắng baby', 'Đóa hoa', 'doahoa/doa-2.png'),
(3, 'Hoa tiền', '4.5', '500', '800000', '0.00', 'Được làm từ tờ 20k', 'best seller', 'Tờ 20k', 'Đóa hoa', 'doahoa/doa-3.png'),
(4, 'Đóa hồng baby', '4.5', '999', '300000', '20000', 'Kích cỡ trung bình', 'best seller', 'Baby hồng', 'Đóa hoa', 'doahoa/doa-4.png'),
(5, 'Đóa hồng đỏ', '4', '500', '450000', '0.00', 'Trên 10 hoa', 'normal', 'Hồng đỏ Pháp', 'Đóa hoa', 'doahoa/doa-5.png'),
(6, 'Đóa hồng ngoại Billet', '4', '500', '620000', '20000', 'Trên 10 hoa', 'new dishes', 'Hồng nhạt Billet', 'Đóa hoa', 'doahoa/doa-6.png'),
(7, 'Đóa hướng dương', '4.5', '500', '300000', '20000', '3 hoa', 'seasonal dishes online only', 'Hướng Dương', 'Đóa hoa', 'doahoa/doa-7.png'),
(8, 'Đóa cẩm tú cầu', '4.5', '100', '250000', '20000', '2 hoa kèm baby trắng', 'new dishes', 'cẩm tú cầu xanh', 'Đóa hoa', 'doahoa/doa-8.png'),
(9, 'Hoa hồng trắng', '4.5', '600', '350000', '0.00', 'Kết hợp hoa baby hồng', 'new dishes', 'Hoa cưới', 'Hoa cưới', 'hoacuoi/hoacuoi-1.png'),
(10, 'Tulip trắng', '4.5', '999', '550000', '30000', 'Bó theo yêu thích', 'best seller', 'Hoa cưới', 'Hoa cưới', 'hoacuoi/hoacuoi-2.png'),
(11, 'Tulip và baby trắng', '4.5', '999', '400000', '0.00', 'nhỏ gọn, tinh tế', 'best seller', 'Hoa cưới', 'Hoa cưới', 'hoacuoi/hoacuoi-3.png'),
(12, 'Tulip hồng', '4.5', '999', '405000', '20000', 'Nhập khẩu từ Pháp', 'new dishes', 'Hoa cưới', 'Hoa cưới', 'hoacuoi/hoacuoi-4.png'),
(13, 'Hoa sen hồng', '4.5', '999', '560000', '0.00', 'Kết hợp baby trắng', 'best seller', 'Hoa cưới', 'Hoa cưới', 'hoacuoi/hoacuoi-5.png'),
(14, 'Hoa hướng dương', '4', '400', '280000', '20000', 'Kết hợp hoa baby', 'seasonal dishes', 'Hoa cưới', 'Hoa cưới', 'hoacuoi/hoacuoi-6.png'),
(15, 'Đế cắm', '4', '699', '50000', '12000', 'Hình tròn', 'best seller', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu-1.png'),
(16, 'Giấy gói', '4.5', '999', '60000', '0.00', '6 màu cơ bản', 'best seller', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu-2.png'),
(17, '3 bình hoa', '4.5', '', '270000', '20000', 'Kiểu hiện đại', 'best seller', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu-3.png'),
(18, 'Đế đóa hoa', '4.5', '999', '45000', '0.00', 'Cỡ to', 'best seller', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu-4.png'),
(19, 'Bình hoa', '4', '999', '200000', '20000', '3 màu  ', 'normal', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu-5.png'),
(20, 'Giấy gói kèm ruy băng', '4.5', '999', '50000', '0', 'Màu đỏ và đen', 'best seller', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu1-1.png'),
(21, '4 bình hoa', '4', '699', '400000', '20000', 'Kiểu bầu, cổ rộng', 'best seller', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu1-2.png'),
(22, 'Kéo cắt cành', '4.5', '499', '80000', '10000', 'Bán nguyên set(8 cây)', 'seasonal dishes', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu1-3.png'),
(23, 'Xốp cắm hoa', '4.5', '999', '10000', '0', 'Hình vuông', 'best seller', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu1-4.png'),
(24, 'Xốp cắm hoa', '4.5', '699', '10000', '0', 'Hình tròn', 'best seller', 'Dụng cụ', 'Dụng cụ', 'dungcu/dungcu1-5.png'),
(25, 'bộ dụng cụ trồng hoa', '3.5', '699', '70000', '10000', 'bằng gỗ', 'new dishes seasonal dishes', 'Hạt giống', 'Hạt giống', 'hatgiong/hatgiong-1.png'),
(26, 'hạt giống cúc trắng', '4.5', '999', '85000', '0.00', 'Bán theo gói', 'best seller', 'Hạt giống', 'Hạt giống', 'hatgiong/hatgiong-2.png'),
(27, 'Hạt giống cẩm tú cầu', '4.5', '200', '80000', '0.00', 'Bán theo gói', 'normal', 'Hạt giống', 'Hạt giống', 'hatgiong/hatgiong-3.png'),
(28, 'Giống hoa tulip', '4', '100', '20000', '0.00', 'Bán theo củ', 'new dishes', 'Hạt giống', 'Hạt giống', 'hatgiong/hatgiong-4.png'),
(29, 'Dụng cụ làm vườn cỡ trung bình', '3.5', '299', '100000', '20000', 'Bạn theo set', 'new dishes', 'Hạt giống', 'Hạt giống', 'hatgiong/hatgiong-5.png'),
(30, 'Cẩm chướng', '4.5', '999', '70000', '0.00', 'Bán theo chậu', 'best seller', 'Hoa trang trí', 'Hoa trang trí', 'trangtri/trangtri-1.png'),
(31, 'Tuyết mai', '4.5', '999', '200000', '0.0', 'Bán theo bó', 'best seller', 'Hoa trang trí', 'Hoa trang trí', 'trangtri/trangtri-2.png'),
(32, 'Hoa đồng tiền', '4.5', '50', '15000', '0.00', 'Bán theo cành', 'new dishes', 'Hoa trang trí', 'Hoa trang trí', 'trangtri/trangtri-3.png'),
(33, 'Hồng Billet', '3', '599', '25000', '0.0', 'Bán theo cành', 'seasonal dishes online only', 'Hoa trang trí', 'Hoa trang trí', 'trangtri/trangtri-4.png'),
(34, 'Hoa oải hương', '4', '199', '180000', '0.00', 'Bán theo bó', 'normal', 'Hoa trang trí', 'Hoa trang trí', 'trangtri/trangtri-5.png'),
(35, 'Hoa sen', '4', '299', '20000', '0.00', 'Bán  theo cành', 'normal', 'Hoa trang trí', 'Hoa trang trí', 'trangtri/trangtri-6.png'),
(36, 'Hồng phấn', '4.5', '999', '30000', '5000', 'Bán theo cành', 'normal', 'Hoa trang trí', 'Hoa trang trí', 'trangtri/trangtri-7.png'),
(37, 'Sen đá long phụng', '4.5', '999', '50000', '0.00', 'Bán theo chậu', 'best seller', 'Sen đá', 'Sen đá', 'senda/senda-1.png'),
(38, 'Sen đá sỏi hồng', '4.5', '999', '49000', '0.00', 'Bán theo chậu', 'best seller', 'Sen đá', 'Sen đá', 'senda/senda-2.png'),
(39, 'Sen đá sỏi', '4.5', '599', '60000', '0.00', 'Bán theo chậu', 'new dishes seasonal dishes', 'Sen đá', 'Sen đá', 'senda/senda-3.png'),
(40, 'sen đá nhím', '4', '999', '80000', '10000', 'Bán theo chậu', 'best seller', 'Sen đá', 'Sen đá', 'senda/senda-4.png'),
(41, 'Sen đá ngọc', '3.5', '999', '45000', '0.00', 'Bán theo chậu', 'seasonal dishes best seller', 'Sen đá', 'Sen đá', 'senda/senda-5.png'),
(42, 'Sen đá hoa hồng', '4.5', '9999', '40000', '0.00', 'Bán theo chậu', 'best seller', 'Sen đá', 'Sen đá', 'senda/senda-6.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_birth` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_birth`, `user_gender`) VALUES
(1, 'Anh Thu', 'dongthu1512@gmail.com', '84946830300', '1234123@', '2023-03-21', 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD PRIMARY KEY (`bill_id`,`flower_id`);

--
-- Indexes for table `billstatus`
--
ALTER TABLE `billstatus`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`flower_id`);

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`flower_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flower`
--
ALTER TABLE `flower`
  MODIFY `flower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
