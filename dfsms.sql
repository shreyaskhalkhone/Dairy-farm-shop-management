-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 08:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dfsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'vedant', 'admin', 1234567899, 'admin@test.com', '123', '2019-12-22 18:30:00', '2023-02-23 17:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryCode`, `PostingDate`) VALUES
(1, 'Milk', 'MK01', '2022-05-20 16:27:43'),
(2, 'Butter', 'BT01', '2022-05-20 16:27:43'),
(3, 'Bread', 'BD01', '2022-05-20 16:27:43'),
(4, 'Paneer', 'PN01', '2022-05-20 16:27:43'),
(5, 'Khava', 'SY01', '2022-05-20 16:27:43'),
(7, 'Ghee', 'GH01', '2022-05-20 16:27:43'),
(8, 'Milk', 'M', '2022-05-20 16:27:43'),
(10, 'Milk', 'M22', '2023-02-21 07:44:42'),
(11, 'Milk', 'M22', '2023-02-21 07:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `CompanyName`, `PostingDate`) VALUES
(1, 'Amul', '2022-05-22 03:30:51'),
(2, 'Mother Diary', '2022-05-22 03:30:51'),
(3, 'Patanjali', '2022-05-22 03:30:51'),
(4, 'Namaste India', '2022-05-22 03:30:51'),
(10, 'Paras', '2022-05-22 03:30:51'),
(11, 'gokul', '2022-06-08 05:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(1, 4, 2, 1000, 'Abhishekh', 9354778033, 'cash', '2022-05-24 08:32:47'),
(2, 1, 1, 753947547, 'Kiran', 9354778033, 'cash', '2022-05-24 08:32:47'),
(3, 1, 1, 979148350, 'Rohit', 1234567890, 'card', '2022-05-24 08:32:47'),
(4, 4, 1, 979148350, 'Ankush', 1234567890, 'card', '2022-05-24 08:32:47'),
(5, 1, 1, 861354457, 'Rohit', 9876543210, 'cash', '2022-05-24 08:32:47'),
(6, 5, 1, 861354457, 'Kiran', 9876543210, 'cash', '2022-05-24 08:32:47'),
(7, 5, 1, 276794782, 'Abhi', 1122334455, 'cash', '2022-05-24 08:32:47'),
(8, 6, 1, 276794782, 'Sarita', 1122334455, 'cash', '2022-05-24 08:32:47'),
(9, 6, 2, 744608164, 'Ankush', 123458962, 'card', '2022-05-24 08:32:47'),
(10, 2, 2, 744608164, 'Abhishek', 123458962, 'card', '2022-05-24 08:32:47'),
(11, 7, 1, 139640585, 'Rohit', 45632147892, 'cash', '2022-05-24 08:32:47'),
(12, 5, 1, 139640585, 'Abhi', 45632147892, 'cash', '2022-05-24 08:32:47'),
(13, 1, 1, 535602702, 'abhishek', 1234567890, 'cash', '2022-06-03 09:05:11'),
(14, 1, 1, 561112966, 'Abhi', 123, 'cash', '2022-06-04 05:07:34'),
(15, 1, 1, 592232951, 'Abhi', 123, 'cash', '2022-06-04 05:08:09'),
(16, 8, 3, 822467050, 'Raj Patil', 758841, 'cash', '2022-06-08 05:23:12'),
(17, 1, 1, 350268038, 'abhijeet', 8945896589, 'cash', '2022-06-08 05:39:27'),
(18, 8, 1, 350268038, 'abhijeet', 8945896589, 'cash', '2022-06-08 05:39:27'),
(19, 3, 4, 350268038, 'abhijeet', 8945896589, 'cash', '2022-06-08 05:39:27'),
(20, 8, 1, 1000, 'Abhinav', 12345678921111, 'card', '2022-06-08 05:45:47'),
(21, 1, 1, 631721124, 'Abhi', 123, 'cash', '2022-06-08 06:06:51'),
(22, 1, 1, 1001, 'Ankush', 1234, 'cash', '2022-06-08 06:09:01'),
(23, 2, 1, 1001, 'Abhinav', 12345, 'cash', '2022-06-08 06:09:27'),
(24, 1, 1, 4082, 'Raj Patil', 546, 'cash', '2022-06-08 06:14:05'),
(25, 8, 10, 2238, 'abhijeet', 1234567890, 'online', '2022-06-08 06:25:59'),
(26, 4, 1, 4172, 'Ankush', 1234567890, 'online', '2022-06-08 06:33:45'),
(27, 1, 1, 6051, 'abhi', 1234567890, 'online', '2022-06-09 05:11:36'),
(28, 1, 1, 1, 'Ankush', 1234567890, 'online', '2022-06-09 05:20:45'),
(29, 8, 3, 1, 'Ankush', 1234567890, 'online', '2022-06-09 05:20:45'),
(30, 8, 3, 1, 'Abhi', 1234567890, 'cash', '2022-06-09 05:21:21'),
(31, 1, 1, 1, 'Abhi', 1234567890, 'cash', '2022-06-09 05:21:21'),
(32, 8, 4, 2, 'Ganguly', 1234567890, 'online', '2022-06-09 05:22:22'),
(33, 8, 1, 3, 'Raj Patil', 1234567890, 'online', '2022-06-09 05:23:02'),
(34, 8, 3, 4, 'Raj Patil', 1234567890, 'cash', '2022-06-09 05:24:17'),
(35, 2, 1, 5, 'abhi', 987654321, 'online', '2022-06-09 05:24:36'),
(36, 4, 1, 6, 'atharav naykwad', 1234567890, 'cash', '2022-06-09 05:27:08'),
(37, 8, 1, 7, 'kiran', 1234567890, 'card', '2022-06-09 05:39:47'),
(38, 8, 5, 8, 'golu', 1234567890, 'online', '2022-06-09 06:12:08'),
(39, 6, 2, 9, 'shreyash khalkone', 1234567890, 'card', '2022-06-09 17:27:13'),
(40, 8, 1, 9, 'shreyash khalkone', 1234567890, 'card', '2022-06-09 17:27:13'),
(41, 8, 5, 10, 'Shreya', 1234567890, 'cash', '2022-06-12 09:40:32'),
(42, 2, 1, 10, 'Shreya', 1234567890, 'cash', '2022-06-12 09:40:32'),
(43, 1, 1, 11, 'abhinav patil ', 1234567890, 'online', '2022-06-15 08:39:37'),
(44, 5, 2, 12, 'Jai Kale ', 9766501177, 'cash', '2022-06-15 08:41:03'),
(45, 8, 1, 12, 'Jai Kale ', 9766501177, 'cash', '2022-06-15 08:41:03'),
(46, 1, 1, 13, 'bhargavi', 8945896589, 'online', '2022-06-19 11:08:00'),
(47, 8, 2, 14, 'aatrey', 1234567890, 'cash', '2022-06-30 16:19:42'),
(48, 8, 5, 15, 'abhi', 1234567890, 'cash', '2023-02-23 17:00:56'),
(49, 2, 1, 15, 'abhi', 1234567890, 'cash', '2023-02-23 17:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT current_timestamp(),
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(1, 'Milk', 'Amul', 'Toned milk 500ml \'\'\"', '22', '2022-05-10 20:39:33', '2022-05-10 20:39:33'),
(2, 'Milk', 'Amul', 'Toned milk 1ltr', '42', '2022-05-31 03:00:09', '2022-05-26 06:42:24'),
(3, 'Milk', 'Mother Diary', 'Full Cream Milk 500ml', '26', '2022-05-31 02:59:51', '2022-05-26 06:42:24'),
(4, 'Milk', 'Mother Diary', 'Full Cream Milk 1ltr', '50', '2022-05-31 03:00:09', '2022-05-26 06:42:24'),
(5, 'Butter', 'Amul', 'Butter 100mg', '46', '2022-05-31 03:00:09', '2022-05-26 06:42:24'),
(6, 'Bread', 'Patanjali', 'Sandwich Bread', '30', '2022-05-31 03:00:09', '2022-05-26 06:42:24'),
(7, 'Ghee', 'Paras', 'Ghee 500mg', '350', '2022-05-31 03:00:09', '2022-05-26 06:42:24'),
(8, 'Paneer', 'Patanjali', 'Desi Paneer', '50', '2022-06-07 15:04:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
