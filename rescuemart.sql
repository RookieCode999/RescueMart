-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 01:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rescuemart`
--

-- --------------------------------------------------------

--
-- Table structure for table `avails`
--

CREATE TABLE `avails` (
  `serId` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `availed_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cartid` int(11) NOT NULL,
  `added_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cid`, `pid`, `cartid`, `added_time`) VALUES
(52, 57, 11, '2023-12-10 01:53:10'),
(52, 57, 12, '2023-12-10 01:53:15'),
(52, 57, 13, '2023-12-10 01:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` char(20) NOT NULL,
  `email` char(30) NOT NULL,
  `contactNo` bigint(10) NOT NULL,
  `cid` int(11) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `email`, `contactNo`, `cid`, `pass`) VALUES
('Desseree', 'desseree@gmail.com', 965226362, 51, '827ccb0eea8a706c4c34a16891f84e7b'),
('aly', 'aly@gmail.com', 9566123872, 52, '80c9ef0fb86369cd25f90af27ef53a9e');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `cid` int(11) NOT NULL,
  `pri_add` char(100) DEFAULT NULL,
  `home_add` char(100) DEFAULT NULL,
  `work_add` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`cid`, `pri_add`, `home_add`, `work_add`) VALUES
(51, 'Magalang', 'Angeles', '2009'),
(52, 'Pandacaqui, Mexico, Pampanga', 'Blk 24 Lot 39 NHA', '2021');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `shopId` int(11) NOT NULL,
  `productName` char(20) NOT NULL,
  `productCategory` char(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `info` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`shopId`, `productName`, `productCategory`, `pid`, `price`, `img1`, `img2`, `img3`, `info`) VALUES
(18, 'Gatorade Blue', 'Food', 57, 10, '1702115337gato.jpg', '', '', 'Energy Drink');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `name` char(20) NOT NULL,
  `email` char(30) NOT NULL,
  `contactNO` bigint(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `balance` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`name`, `email`, `contactNO`, `sid`, `pass`, `balance`) VALUES
('efprain', 'efprain@gmail.com', 97672838, 15, '21232f297a57a5a743894a0e4a801fc3', 40),
('Alyssa', 'aly@gmail.com', 9566123872, 16, '80c9ef0fb86369cd25f90af27ef53a9e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `shopId` int(11) NOT NULL,
  `serName` char(30) NOT NULL,
  `serId` int(11) NOT NULL,
  `category` char(20) NOT NULL,
  `baseCharge` int(11) NOT NULL,
  `img1` varchar(200) DEFAULT NULL,
  `img2` varchar(200) DEFAULT NULL,
  `info` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `ownerSid` int(11) NOT NULL,
  `shopName` char(30) NOT NULL,
  `shopCategory` char(20) NOT NULL,
  `shopInfo` char(200) DEFAULT NULL,
  `shopId` int(11) NOT NULL,
  `shopAddress` char(50) NOT NULL,
  `shopEmail` char(30) NOT NULL,
  `shopContact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`ownerSid`, `shopName`, `shopCategory`, `shopInfo`, `shopId`, `shopAddress`, `shopEmail`, `shopContact`) VALUES
(15, 'KF', 'Food', 'Manyaman', 18, 'Mexico', 'KFC@gmail.com', 9265326456);

-- --------------------------------------------------------

--
-- Table structure for table `shopimage`
--

CREATE TABLE `shopimage` (
  `shopId` int(11) NOT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shopimage`
--

INSERT INTO `shopimage` (`shopId`, `img1`, `img2`, `img3`, `img4`, `img5`) VALUES
(18, '1702115272KFC_logo.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `shopName` varchar(200) NOT NULL,
  `proName` varchar(200) NOT NULL,
  `trans_time` datetime DEFAULT current_timestamp(),
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sid`, `pid`, `cid`, `shopName`, `proName`, `trans_time`, `price`) VALUES
(15, 57, 51, 'KF', 'Gatorade Blue', '2023-12-09 17:53:12', 10),
(15, 57, 52, 'KF', 'Gatorade Blue', '2023-12-10 01:52:18', 10),
(15, 57, 52, 'KF', 'Gatorade Blue', '2023-12-10 01:52:18', 10),
(15, 57, 52, 'KF', 'Gatorade Blue', '2023-12-10 01:52:37', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avails`
--
ALTER TABLE `avails`
  ADD PRIMARY KEY (`serId`,`cid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_no` (`contactNo`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `shopId` (`shopId`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_no` (`contactNO`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serId`),
  ADD KEY `shopId` (`shopId`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shopId`),
  ADD KEY `ownerSid` (`ownerSid`);

--
-- Indexes for table `shopimage`
--
ALTER TABLE `shopimage`
  ADD PRIMARY KEY (`shopId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`,`pid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shopId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avails`
--
ALTER TABLE `avails`
  ADD CONSTRAINT `avails_ibfk_1` FOREIGN KEY (`serId`) REFERENCES `service` (`serId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avails_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`shopId`) REFERENCES `shop` (`shopId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`shopId`) REFERENCES `shop` (`shopId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`ownerSid`) REFERENCES `seller` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopimage`
--
ALTER TABLE `shopimage`
  ADD CONSTRAINT `shopimage_ibfk_1` FOREIGN KEY (`shopId`) REFERENCES `shop` (`shopId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `seller` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
