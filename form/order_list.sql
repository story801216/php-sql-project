-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-08-19 03:28:38
-- 伺服器版本： 10.4.20-MariaDB
-- PHP 版本： 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `order_list`
--

CREATE TABLE `order_list` (
  `sid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `delivery` varchar(255) NOT NULL,
  `addressee_name` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_list`
--

INSERT INTO `order_list` (`sid`, `member_id`, `amount`, `payment`, `delivery`, `addressee_name`, `mobile`, `address`, `status`, `order_date`) VALUES
(44, 0, 12850, '信用卡', '自取', '尹相宸', 972438496, '台北市大安區師大路49巷5號5樓501室', '', '2021-08-19'),
(45, 0, 17000, '信用卡', '自取', '', 0, '', '', '2021-08-19'),
(46, 0, 10450, '信用卡', '自取', '', 0, '', '', '2021-08-19'),
(47, 0, 8500, '銀行轉帳', '宅配', '尹相宸', 972438496, '台北市大安區師大路49巷5號5樓501室', '', '2021-08-19'),
(48, 0, 8500, '銀行轉帳', '自取', '尹相宸', 972438496, '台北市大安區師大路49巷5號5樓501室', '', '2021-08-19'),
(49, 0, 8500, '信用卡', '自取', '', 0, '', '', '2021-08-19'),
(50, 1, 29100, '信用卡', '自取', '尹相宸', 972438496, '台北市大安區師大路49巷5號5樓501室', '', '2021-08-19'),
(51, 1, 19400, '銀行轉帳', '宅配', '尹相宸', 972438496, '台北市大安區師大路49巷5號5樓501室', '', '2021-08-19');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_list`
--
ALTER TABLE `order_list`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
