-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 08:45 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webcodice`
--

-- --------------------------------------------------------

--
-- Table structure for table `jitendra_categorys`
--

CREATE TABLE `jitendra_categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jitendra_categorys`
--

INSERT INTO `jitendra_categorys` (`id`, `name`) VALUES
(1, 'mobile'),
(3, 'laptop'),
(5, 'ipad');

-- --------------------------------------------------------

--
-- Table structure for table `jitendra_login`
--

CREATE TABLE `jitendra_login` (
  `id` int(10) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jitendra_login`
--

INSERT INTO `jitendra_login` (`id`, `username`, `email`, `password`, `role`) VALUES
(2, 'jitendra singh', 'jitendra@gmail.com', 'c5fe25896e49ddfe996db7508cf00534', 'admin'),
(3, 'avinash', 'avi@gmail.com', 'c5fe25896e49ddfe996db7508cf00534', 'user'),
(4, 'avinash', 'avi@gmail.com', '6074c6aa3488f3c2dddff2a7ca821aab', 'user'),
(5, 'Ayush singh', 'ayush@gmail.com', 'c813f5c4bec88c823f9073d92fab042b', 'user'),
(6, 'Ayush singh', 'ayush@gmail.com', '468d31710d7c6bbd280a4e81a2c64c1b', 'user'),
(7, 'hello', 'hellow@gmail.com', 'c5fe25896e49ddfe996db7508cf00534', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `jitendra_produtcs`
--

CREATE TABLE `jitendra_produtcs` (
  `id` int(10) NOT NULL,
  `pName` varchar(250) NOT NULL,
  `pCode` varchar(250) NOT NULL,
  `pQty` varchar(250) NOT NULL,
  `packQty` varchar(250) NOT NULL,
  `disp` varchar(250) NOT NULL,
  `pImage` varchar(250) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jitendra_produtcs`
--

INSERT INTO `jitendra_produtcs` (`id`, `pName`, `pCode`, `pQty`, `packQty`, `disp`, `pImage`, `category`) VALUES
(19, 'iphone 1', '1', '1', '1', '1000', 'Login.jpg', 'mobile'),
(20, 'iphone 2', '1', '1', '1', '1000', 'Login.jpg', 'mobile'),
(21, 'iphone 3', '1', '1', '1', '1000', 'Login.jpg', 'mobile'),
(22, 'ipad 1', '1', '1', '1', '1000', 'Login.jpg', 'ipad'),
(23, 'ipad 2', '1', '1', '1', '1000', 'Login.jpg', 'ipad'),
(24, 'ipad 3', '1', '1', '1', '1000', 'Login.jpg', 'ipad'),
(25, 'laptop 1', '1', '1', '1', '1000', 'Login.jpg', 'laptop'),
(26, 'laptop 2', '1', '1', '1', '1000', 'Login.jpg', 'laptop'),
(27, 'laptop 3', '1', '1', '1', '1000', 'Login.jpg', 'laptop'),
(30, 'iphone 4', '1', '1', '1', '1000', 'dev.realitis.com_user-interface_new-tour-upload-images.php_tour-id=755515955.png', 'mobile');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jitendra_categorys`
--
ALTER TABLE `jitendra_categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jitendra_login`
--
ALTER TABLE `jitendra_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jitendra_produtcs`
--
ALTER TABLE `jitendra_produtcs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jitendra_categorys`
--
ALTER TABLE `jitendra_categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jitendra_login`
--
ALTER TABLE `jitendra_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jitendra_produtcs`
--
ALTER TABLE `jitendra_produtcs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
