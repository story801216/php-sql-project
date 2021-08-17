-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-08-16 22:35:34
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
-- 資料庫: `productdb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `categories`
--

CREATE TABLE `categories` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_sid` int(11) NOT NULL DEFAULT 0,
  `sequence` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `categories`
--

INSERT INTO `categories` (`sid`, `name`, `parent_sid`, `sequence`) VALUES
(1, '保健食品', 0, 30),
(2, '生活用品', 0, 20),
(3, '醫療器材', 0, 10),
(4, '骨骼', 1, 100),
(5, '睡眠', 1, 100),
(6, '眼睛', 1, 100),
(8, '身體', 1, 100),
(9, '腸胃', 1, 100),
(18, '血液', 1, 100),
(23, '皮膚', 2, 100),
(24, '身體', 2, 100),
(27, '其他', 2, 100),
(28, '頭部', 2, 100),
(29, '臉部', 2, 100),
(30, '口腔', 2, 100),
(32, '手', 2, 100),
(35, '骨骼', 3, 100),
(39, '身體', 3, 100),
(41, '足', 3, 100),
(42, '其他', 3, 100),
(46, '肺', 3, 100),
(48, '血', 3, 100);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `categories`
--
ALTER TABLE `categories`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
