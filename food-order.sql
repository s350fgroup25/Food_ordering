-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-11-22 15:44:25
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `food-order`
--

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(7, 'root', 'root', '63a9f0ea7bb98050796b649e85481845');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(17, 'Chinese dishes', 'Food_category_435.jpg', 'Yes', 'Yes'),
(18, 'fast food', 'Food_category_739.png', 'Yes', 'Yes'),
(21, 'other', 'Food_category_481.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(6, 'Fried rice', 'Made with Chicken, and organice vegetables.', 65.00, 'Food-Name-8501.jpg', 17, 'Yes', 'Yes'),
(7, 'Peking Duck', 'Delicious Peking Duck, JUICY Meat and CRISPY Skin!', 80.00, 'Food-Name-4188.jpg', 17, 'Yes', 'Yes'),
(8, 'Dumplings', '6 Dumplings that have a juicy Indian-spiced minced chicken filling with Spicy Red Chili Chutney!', 30.00, 'Food-Name-6114.jpg', 17, 'Yes', 'Yes'),
(9, 'Ma Po Tofu', 'Tasty and Spicy Ma Po Tofu. Made with simmered silken tofu with pork.', 50.00, 'Food-Name-5171.jpg', 17, 'Yes', 'Yes'),
(10, 'Cheese Burger', 'A hamburger with a slice of melted cheese, along side with lettuce, tomato, onion and pickles etc.', 45.00, 'Food-Name-7569.jpg', 21, 'Yes', 'Yes'),
(11, 'Kimchi Jjigae', 'A classic Korean spicy stew made with napa cabbage kimchi, pork belly, and tofu.', 70.00, 'Food-Name-9144.jpg', 21, 'Yes', 'Yes'),
(12, 'sushi', '2 sudhi ', 15.00, 'Food-Name-7282.png', 21, 'Yes', 'Yes'),
(13, 'beer', 'beer', 30.00, 'Food-Name-7876.png', 18, 'Yes', 'Yes'),
(14, 'French fries', 'French fries', 40.00, 'Food-Name-8728.png', 18, 'Yes', 'Yes'),
(15, 'ice cream', 'ice cream', 15.00, 'Food-Name-8144.png', 18, 'Yes', 'Yes'),
(16, 'pizza', 'pizza', 25.00, 'Food-Name-101.png', 18, 'Yes', 'Yes'),
(17, 'salad', 'salad', 35.00, 'Food-Name-6426.png', 18, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- 資料表結構 `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_date` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `customer_name` varchar(10) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 傾印資料表的資料 `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, '11111', '34.00', 1.00, '34', 2024, 'Cancelled', ' 8888888', 'www', 'www@gmail.cpm', 'www'),
(2, '11111', '34.00', 1.00, '34', 2024, 'Delivered', '    siiis', '23324343', 'sss@gmail.com', 'ssss'),
(3, '11111', '34.00', 3.00, '102', 2024, 'Cancelled', 'bbbb', '8388944', 'dd@gmai.com', 'afsf'),
(4, 'Fried rice', '65.00', 1.00, '65', 2024, 'Ordered', 'Customer1', '12345678', 'Customer1@gmail.com', 'Customer1'),
(5, 'Dumplings', '30.00', 3.00, '90', 2024, 'Ordered', 'Customer2', '23456789', 'Customer2@gmail.com', 'Customer2'),
(6, 'Peking Duck', '80.00', 1.00, '80', 2024, 'Ordered', 'Customer3', '34567890', 'Customer3@gmai.com', 'Customer3'),
(7, 'Ma Po Tofu', '50.00', 1.00, '50', 2024, 'Delivered', ' sss', 'sss', 'sss@sss.com', 'sss');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
