-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 09:47 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adrelease`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Login_id` int(20) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Login_id`, `Username`, `Password`, `Email`, `Contact`) VALUES
(1, 'Het Patel', '1234', 'het@gmail.com', 7574041859),
(2, 'Ashish', '1234', 'ashu@gmail.com', 7041909995),
(3, 'Dhruv', '1234', 'dhruv@gmail.com', 9157472229);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Agency_id` int(20) NOT NULL,
  `Agency_name` varchar(40) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Owner_name` varchar(40) NOT NULL,
  `Established_date` date NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(40) NOT NULL,
  `State` varchar(40) NOT NULL,
  `Request_date` date NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Agency_id`, `Agency_name`, `Email`, `Contact`, `Owner_name`, `Established_date`, `Address`, `City`, `State`, `Request_date`, `Password`, `Status`) VALUES
(14, 'Divya Bhaskar', 'mehtaalpha2@gmail.com', 1234567890, 'Divya', '2021-03-24', '2nd Floor, Bhadraraj Chamber, C G Road,, Swastik C', 'Ahmedabad', 'Gujarat', '0000-00-00', 'Dhruv1234', ''),
(15, 'Sandesh ', 'hetp747@gmail.com', 1234567890, 'Sandesh ', '2021-03-24', 'Sandesh Bhavan, Sandesh Press Rd, Vastrapur, Ahmed', 'Ahmedabad', 'Gujarat', '0000-00-00', 'Het1234', ''),
(16, 'Gujarat Samachar', 'agrawalashish8480@gmail.com ', 1234567890, 'Gujarat', '2021-03-24', 'Gujarat Samachar Bhavan, Old City, Khanpur, Ahmeda', 'Ahmedabad', 'Gujarat', '0000-00-00', '1234', ''),
(17, 'The Times of India', 'mehta4937@gmail.com', 1234567890, 'Times of India', '2021-03-24', 'Fadia Chambers, 139, Ashram Rd, Opposite Bata Show', 'Ahmedabad', 'Gujarat', '0000-00-00', '1234', ''),
(18, 'NavGujarat Samay', 'hetp747@gmail.com', 1234567890, 'NavGujarat ', '2021-03-24', '2nd Floor, Fadia Chambers Opp. Old RBI Bank Buildi', 'Ahmedabad', 'Gujarat', '0000-00-00', '1234', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(20) NOT NULL,
  `Fname` varchar(40) NOT NULL,
  `Lname` varchar(40) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Dob` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Fname`, `Lname`, `Gender`, `Dob`, `Email`, `Contact`, `Address`, `Password`, `Request_date`) VALUES
(14, 'Dhruv', 'Mehta', 'Male', '2021-03-17', 'mehtaalpha2@gmail.com', 9157472229, '312,hariom complex vaparijin,kalol', 'Dhruv1234', '2021-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `F_id` int(20) NOT NULL,
  `Customer_id` int(20) NOT NULL,
  `Message` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `agency_id` varchar(60) NOT NULL,
  `ratings` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `Inq_id` int(20) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Message` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `Ad_id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Size` varchar(30) NOT NULL,
  `Price` float NOT NULL,
  `ad_page` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `Agency_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `papper_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `Ad_id`, `Title`, `Size`, `Price`, `ad_page`, `user_id`, `description`, `filename`, `Agency_id`, `order_date`, `papper_date`) VALUES
(4, 142, 'Divya Bhaskar', '2', 1000, '10', 14, 'abc', '2 (2).png', 14, '2021-04-02', '2021-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `order_ad`
--

CREATE TABLE `order_ad` (
  `Order_id` int(20) NOT NULL,
  `Order_date` date NOT NULL,
  `Ad_id` int(20) NOT NULL,
  `Customer_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_ad`
--

CREATE TABLE `table_ad` (
  `Ad_id` int(20) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `Size` int(10) NOT NULL,
  `Description` text NOT NULL,
  `Price` int(15) NOT NULL,
  `ad_type` varchar(20) NOT NULL,
  `ad_page` varchar(20) NOT NULL,
  `Agency_id` int(20) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_ad`
--

INSERT INTO `table_ad` (`Ad_id`, `Title`, `Size`, `Description`, `Price`, `ad_type`, `ad_page`, `Agency_id`, `logo`) VALUES
(136, 'Divya Bhaskar', 1, 'This is for tasting', 1000, 'online', '10', 14, 'divya_bhaskar.png'),
(137, 'Divya Bhaskar', 1, 'This is for tasting', 1000, 'online', '11', 14, 'divya_bhaskar.png'),
(138, 'Divya Bhaskar', 1, 'This is for tasting', 1000, 'offline', '10', 14, 'divya_bhaskar.png'),
(139, 'Divya Bhaskar', 1, 'This is for tasting', 1000, 'offline', '11', 14, 'divya_bhaskar.png'),
(140, 'Divya Bhaskar', 1, 'This is for tasting', 1000, 'both', '10', 14, 'divya_bhaskar.png'),
(141, 'Divya Bhaskar', 1, 'This is for tasting', 1000, 'both', '11', 14, 'divya_bhaskar.png'),
(142, 'Divya Bhaskar', 2, 'This is for tasting', 1000, 'online', '10', 14, 'divya_bhaskar.png'),
(143, 'Divya Bhaskar', 2, 'This is for tasting', 1000, 'online', '11', 14, 'divya_bhaskar.png'),
(144, 'Divya Bhaskar', 2, 'This is for tasting', 1000, 'offline', '10', 14, 'divya_bhaskar.png'),
(145, 'Divya Bhaskar', 2, 'This is for tasting', 1000, 'offline', '11', 14, 'divya_bhaskar.png'),
(146, 'Divya Bhaskar', 2, 'This is for tasting', 1000, 'both', '10', 14, 'divya_bhaskar.png'),
(147, 'Divya Bhaskar', 2, 'This is for tasting', 1000, 'both', '11', 14, 'divya_bhaskar.png'),
(148, 'Divya Bhaskar', 3, 'This is for tasting', 1000, 'online', '10', 14, 'divya_bhaskar.png'),
(149, 'Divya Bhaskar', 3, 'This is for tasting', 1000, 'online', '11', 14, 'divya_bhaskar.png'),
(150, 'Divya Bhaskar', 3, 'This is for tasting', 1000, 'offline', '10', 14, 'divya_bhaskar.png'),
(151, 'Divya Bhaskar', 3, 'This is for tasting', 1000, 'offline', '11', 14, 'divya_bhaskar.png'),
(152, 'Divya Bhaskar', 3, 'This is for tasting', 1000, 'both', '10', 14, 'divya_bhaskar.png'),
(153, 'Divya Bhaskar', 3, 'This is for tasting', 1000, 'both', '11', 14, 'divya_bhaskar.png'),
(154, 'Divya Bhaskar', 4, 'This is for tasting', 1000, 'online', '10', 14, 'divya_bhaskar.png'),
(155, 'Divya Bhaskar', 4, 'This is for tasting', 1000, 'online', '11', 14, 'divya_bhaskar.png'),
(156, 'Divya Bhaskar', 4, 'This is for tasting', 1000, 'offline', '10', 14, 'divya_bhaskar.png'),
(157, 'Divya Bhaskar', 4, 'This is for tasting', 1000, 'offline', '11', 14, 'divya_bhaskar.png'),
(158, 'Divya Bhaskar', 4, 'This is for tasting', 1000, 'both', '10', 14, 'divya_bhaskar.png'),
(159, 'Divya Bhaskar', 4, 'This is for tasting', 1000, 'both', '11', 14, 'divya_bhaskar.png'),
(160, 'Divya Bhaskar', 5, 'This is for tasting', 1000, 'online', '10', 14, 'divya_bhaskar.png'),
(161, 'Divya Bhaskar', 5, 'This is for tasting', 1000, 'online', '11', 14, 'divya_bhaskar.png'),
(162, 'Divya Bhaskar', 5, 'This is for tasting', 1000, 'offline', '10', 14, 'divya_bhaskar.png'),
(163, 'Divya Bhaskar', 5, 'This is for tasting', 1000, 'offline', '11', 14, 'divya_bhaskar.png'),
(164, 'Divya Bhaskar', 5, 'This is for tasting', 1000, 'both', '10', 14, 'divya_bhaskar.png'),
(165, 'Divya Bhaskar', 5, 'This is for tasting', 1000, 'both', '11', 14, 'divya_bhaskar.png'),
(166, 'Gujarat Samachar', 1, 'This is for tasting', 700, 'online', '10', 16, 'gujarat.png'),
(167, 'Gujarat Samachar', 1, 'This is for tasting', 700, 'offline', '10', 16, 'gujarat.png'),
(168, 'Gujarat Samachar', 1, 'This is for tasting', 700, 'both', '10', 16, 'gujarat.png'),
(169, 'Gujarat Samachar', 1, 'This is for tasting', 700, 'online', '11', 16, 'gujarat.png'),
(170, 'Gujarat Samachar', 1, 'This is for tasting', 700, 'offline', '11', 16, 'gujarat.png'),
(171, 'Gujarat Samachar', 1, 'This is for tasting', 700, 'both', '11', 16, 'gujarat.png'),
(172, 'Gujarat Samachar', 2, 'This is for tasting', 700, 'online', '10', 16, 'gujarat.png'),
(173, 'Gujarat Samachar', 2, 'This is for tasting', 700, 'offline', '10', 16, 'gujarat.png'),
(174, 'Gujarat Samachar', 2, 'This is for tasting', 700, 'both', '10', 16, 'gujarat.png'),
(175, 'Gujarat Samachar', 2, 'This is for tasting', 700, 'online', '11', 16, 'gujarat.png'),
(176, 'Gujarat Samachar', 2, 'This is for tasting', 700, 'offline', '11', 16, 'gujarat.png'),
(177, 'Gujarat Samachar', 2, 'This is for tasting', 700, 'both', '11', 16, 'gujarat.png'),
(178, 'Gujarat Samachar', 3, 'This is for tasting', 700, 'online', '10', 16, 'gujarat.png'),
(179, 'Gujarat Samachar', 3, 'This is for tasting', 700, 'offline', '10', 16, 'gujarat.png'),
(180, 'Gujarat Samachar', 3, 'This is for tasting', 700, 'both', '10', 16, 'gujarat.png'),
(181, 'Gujarat Samachar', 3, 'This is for tasting', 700, 'online', '11', 16, 'gujarat.png'),
(182, 'Gujarat Samachar', 3, 'This is for tasting', 700, 'offline', '11', 16, 'gujarat.png'),
(183, 'Gujarat Samachar', 3, 'This is for tasting', 700, 'both', '11', 16, 'gujarat.png'),
(184, 'Gujarat Samachar', 4, 'This is for tasting', 700, 'online', '10', 16, 'gujarat.png'),
(185, 'Gujarat Samachar', 4, 'This is for tasting', 700, 'offline', '10', 16, 'gujarat.png'),
(186, 'Gujarat Samachar', 4, 'This is for tasting', 700, 'both', '10', 16, 'gujarat.png'),
(187, 'Gujarat Samachar', 4, 'This is for tasting', 700, 'online', '11', 16, 'gujarat.png'),
(188, 'Gujarat Samachar', 4, 'This is for tasting', 700, 'offline', '11', 16, 'gujarat.png'),
(189, 'Gujarat Samachar', 4, 'This is for tasting', 700, 'both', '11', 16, 'gujarat.png'),
(190, 'Gujarat Samachar', 5, 'This is for tasting', 700, 'online', '10', 16, 'gujarat.png'),
(191, 'Gujarat Samachar', 5, 'This is for tasting', 700, 'offline', '10', 16, 'gujarat.png'),
(192, 'Gujarat Samachar', 5, 'This is for tasting', 700, 'both', '10', 16, 'gujarat.png'),
(193, 'Gujarat Samachar', 5, 'This is for tasting', 700, 'online', '11', 16, 'gujarat.png'),
(194, 'Gujarat Samachar', 5, 'This is for tasting', 700, 'offline', '11', 16, 'gujarat.png'),
(195, 'Gujarat Samachar', 5, 'This is for tasting', 700, 'both', '11', 16, 'gujarat.png'),
(196, 'NavGujarat Samay', 1, 'This is for tasting', 500, 'online', '10', 16, 'nav-gujarat-samay.png'),
(197, 'NavGujarat Samay', 1, 'This is for tasting', 500, 'offline', '10', 16, 'nav-gujarat-samay.png'),
(198, 'NavGujarat Samay', 1, 'This is for tasting', 500, 'both', '10', 16, 'nav-gujarat-samay.png'),
(199, 'NavGujarat Samay', 1, 'This is for tasting', 500, 'online', '11', 16, 'nav-gujarat-samay.png'),
(200, 'NavGujarat Samay', 1, 'This is for tasting', 500, 'offline', '11', 16, 'nav-gujarat-samay.png'),
(201, 'NavGujarat Samay', 1, 'This is for tasting', 500, 'both', '11', 16, 'nav-gujarat-samay.png'),
(202, 'NavGujarat Samay', 2, 'This is for tasting', 500, 'online', '10', 16, 'nav-gujarat-samay.png'),
(203, 'NavGujarat Samay', 2, 'This is for tasting', 500, 'offline', '10', 16, 'nav-gujarat-samay.png'),
(204, 'NavGujarat Samay', 2, 'This is for tasting', 500, 'both', '10', 16, 'nav-gujarat-samay.png'),
(205, 'NavGujarat Samay', 2, 'This is for tasting', 500, 'online', '11', 16, 'nav-gujarat-samay.png'),
(206, 'NavGujarat Samay', 2, 'This is for tasting', 500, 'offline', '11', 16, 'nav-gujarat-samay.png'),
(207, 'NavGujarat Samay', 2, 'This is for tasting', 500, 'both', '11', 16, 'nav-gujarat-samay.png'),
(208, 'NavGujarat Samay', 3, 'This is for tasting', 500, 'online', '10', 16, 'nav-gujarat-samay.png'),
(209, 'NavGujarat Samay', 3, 'This is for tasting', 500, 'offline', '10', 16, 'nav-gujarat-samay.png'),
(210, 'NavGujarat Samay', 3, 'This is for tasting', 500, 'both', '10', 16, 'nav-gujarat-samay.png'),
(211, 'NavGujarat Samay', 3, 'This is for tasting', 500, 'online', '11', 16, 'nav-gujarat-samay.png'),
(212, 'NavGujarat Samay', 3, 'This is for tasting', 500, 'offline', '11', 16, 'nav-gujarat-samay.png'),
(213, 'NavGujarat Samay', 3, 'This is for tasting', 500, 'both', '11', 16, 'nav-gujarat-samay.png'),
(214, 'NavGujarat Samay', 4, 'This is for tasting', 500, 'online', '10', 16, 'nav-gujarat-samay.png'),
(215, 'NavGujarat Samay', 4, 'This is for tasting', 500, 'offline', '10', 16, 'nav-gujarat-samay.png'),
(216, 'NavGujarat Samay', 4, 'This is for tasting', 500, 'both', '10', 16, 'nav-gujarat-samay.png'),
(217, 'NavGujarat Samay', 4, 'This is for tasting', 500, 'online', '11', 16, 'nav-gujarat-samay.png'),
(218, 'NavGujarat Samay', 4, 'This is for tasting', 500, 'offline', '11', 16, 'nav-gujarat-samay.png'),
(219, 'NavGujarat Samay', 4, 'This is for tasting', 500, 'both', '11', 16, 'nav-gujarat-samay.png'),
(220, 'NavGujarat Samay', 5, 'This is for tasting', 500, 'online', '10', 16, 'nav-gujarat-samay.png'),
(221, 'NavGujarat Samay', 5, 'This is for tasting', 500, 'offline', '10', 16, 'nav-gujarat-samay.png'),
(222, 'NavGujarat Samay', 5, 'This is for tasting', 500, 'both', '10', 16, 'nav-gujarat-samay.png'),
(223, 'NavGujarat Samay', 5, 'This is for tasting', 500, 'online', '11', 16, 'nav-gujarat-samay.png'),
(224, 'NavGujarat Samay', 5, 'This is for tasting', 500, 'offline', '11', 16, 'nav-gujarat-samay.png'),
(225, 'NavGujarat Samay', 5, 'This is for tasting', 500, 'both', '11', 16, 'nav-gujarat-samay.png'),
(226, 'Sandesh ', 1, 'This is for tasting', 800, 'online', '10', 15, 'images.jpg'),
(227, 'Sandesh ', 1, 'This is for tasting', 800, 'offline', '10', 15, 'images.jpg'),
(228, 'Sandesh ', 1, 'This is for tasting', 800, 'both', '10', 15, 'images.jpg'),
(229, 'Sandesh ', 1, 'This is for tasting', 800, 'online', '11', 15, 'images.jpg'),
(230, 'Sandesh ', 1, 'This is for tasting', 800, 'offline', '11', 15, 'images.jpg'),
(231, 'Sandesh ', 1, 'This is for tasting', 800, 'both', '11', 15, 'images.jpg'),
(232, 'Sandesh ', 2, 'This is for tasting', 800, 'online', '10', 15, 'images.jpg'),
(233, 'Sandesh ', 2, 'This is for tasting', 800, 'offline', '10', 15, 'images.jpg'),
(234, 'Sandesh ', 2, 'This is for tasting', 800, 'both', '10', 15, 'images.jpg'),
(235, 'Sandesh ', 2, 'This is for tasting', 800, 'online', '11', 15, 'images.jpg'),
(236, 'Sandesh ', 2, 'This is for tasting', 800, 'offline', '11', 15, 'images.jpg'),
(237, 'Sandesh ', 2, 'This is for tasting', 800, 'both', '11', 15, 'images.jpg'),
(238, 'Sandesh ', 3, 'This is for tasting', 800, 'online', '10', 15, 'images.jpg'),
(239, 'Sandesh ', 3, 'This is for tasting', 800, 'offline', '10', 15, 'images.jpg'),
(240, 'Sandesh ', 3, 'This is for tasting', 800, 'both', '10', 15, 'images.jpg'),
(241, 'Sandesh ', 3, 'This is for tasting', 800, 'online', '11', 15, 'images.jpg'),
(242, 'Sandesh ', 3, 'This is for tasting', 800, 'offline', '11', 15, 'images.jpg'),
(243, 'Sandesh ', 3, 'This is for tasting', 800, 'both', '11', 15, 'images.jpg'),
(244, 'Sandesh ', 4, 'This is for tasting', 800, 'online', '10', 15, 'images.jpg'),
(245, 'Sandesh ', 4, 'This is for tasting', 800, 'offline', '10', 15, 'images.jpg'),
(246, 'Sandesh ', 4, 'This is for tasting', 800, 'both', '10', 15, 'images.jpg'),
(247, 'Sandesh ', 4, 'This is for tasting', 800, 'online', '11', 15, 'images.jpg'),
(248, 'Sandesh ', 4, 'This is for tasting', 800, 'offline', '11', 15, 'images.jpg'),
(249, 'Sandesh ', 4, 'This is for tasting', 800, 'both', '11', 15, 'images.jpg'),
(250, 'Sandesh ', 5, 'This is for tasting', 800, 'online', '10', 15, 'images.jpg'),
(251, 'Sandesh ', 5, 'This is for tasting', 800, 'offline', '10', 15, 'images.jpg'),
(252, 'Sandesh ', 5, 'This is for tasting', 800, 'both', '10', 15, 'images.jpg'),
(253, 'Sandesh ', 5, 'This is for tasting', 800, 'online', '11', 15, 'images.jpg'),
(254, 'Sandesh ', 5, 'This is for tasting', 800, 'offline', '11', 15, 'images.jpg'),
(255, 'Sandesh ', 5, 'This is for tasting', 800, 'both', '11', 15, 'images.jpg'),
(256, 'The Times of India', 1, 'This is for tasting', 1500, 'online', '10', 17, 'times-of-india.png'),
(257, 'The Times of India', 1, 'This is for tasting', 1500, 'offline', '10', 17, 'times-of-india.png'),
(258, 'The Times of India', 1, 'This is for tasting', 1500, 'both', '10', 17, 'times-of-india.png'),
(259, 'The Times of India', 1, 'This is for tasting', 1500, 'online', '11', 17, 'times-of-india.png'),
(260, 'The Times of India', 1, 'This is for tasting', 1500, 'offline', '11', 17, 'times-of-india.png'),
(261, 'The Times of India', 1, 'This is for tasting', 1500, 'both', '11', 17, 'times-of-india.png'),
(262, 'The Times of India', 2, 'This is for tasting', 1500, 'online', '10', 17, 'times-of-india.png'),
(263, 'The Times of India', 2, 'This is for tasting', 1500, 'offline', '10', 17, 'times-of-india.png'),
(264, 'The Times of India', 2, 'This is for tasting', 1500, 'both', '10', 17, 'times-of-india.png'),
(265, 'The Times of India', 2, 'This is for tasting', 1500, 'online', '11', 17, 'times-of-india.png'),
(266, 'The Times of India', 2, 'This is for tasting', 1500, 'offline', '11', 17, 'times-of-india.png'),
(267, 'The Times of India', 2, 'This is for tasting', 1500, 'both', '11', 17, 'times-of-india.png'),
(268, 'The Times of India', 3, 'This is for tasting', 1500, 'online', '10', 17, 'times-of-india.png'),
(269, 'The Times of India', 3, 'This is for tasting', 1500, 'offline', '10', 17, 'times-of-india.png'),
(270, 'The Times of India', 3, 'This is for tasting', 1500, 'both', '10', 17, 'times-of-india.png'),
(271, 'The Times of India', 3, 'This is for tasting', 1500, 'online', '11', 17, 'times-of-india.png'),
(272, 'The Times of India', 3, 'This is for tasting', 1500, 'offline', '11', 17, 'times-of-india.png'),
(273, 'The Times of India', 3, 'This is for tasting', 1500, 'both', '11', 17, 'times-of-india.png'),
(274, 'The Times of India', 4, 'This is for tasting', 1500, 'online', '10', 17, 'times-of-india.png'),
(275, 'The Times of India', 4, 'This is for tasting', 1500, 'offline', '10', 17, 'times-of-india.png'),
(276, 'The Times of India', 4, 'This is for tasting', 1500, 'both', '10', 17, 'times-of-india.png'),
(277, 'The Times of India', 4, 'This is for tasting', 1500, 'online', '11', 17, 'times-of-india.png'),
(278, 'The Times of India', 4, 'This is for tasting', 1500, 'offline', '11', 17, 'times-of-india.png'),
(279, 'The Times of India', 4, 'This is for tasting', 1500, 'both', '11', 17, 'times-of-india.png'),
(280, 'The Times of India', 5, 'This is for tasting', 1500, 'online', '10', 17, 'times-of-india.png'),
(281, 'The Times of India', 5, 'This is for tasting', 1500, 'offline', '10', 17, 'times-of-india.png'),
(282, 'The Times of India', 5, 'This is for tasting', 1500, 'both', '10', 17, 'times-of-india.png'),
(283, 'The Times of India', 5, 'This is for tasting', 1500, 'online', '11', 17, 'times-of-india.png'),
(284, 'The Times of India', 5, 'This is for tasting', 1500, 'offline', '11', 17, 'times-of-india.png'),
(285, 'The Times of India', 5, 'This is for tasting', 1500, 'both', '11', 17, 'times-of-india.png');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(20) NOT NULL,
  `view` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `view`) VALUES
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Login_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Agency_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`F_id`),
  ADD KEY `Customer_id` (`Customer_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`Inq_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `Ad_id` (`Ad_id`);

--
-- Indexes for table `order_ad`
--
ALTER TABLE `order_ad`
  ADD PRIMARY KEY (`Order_id`),
  ADD KEY `Ad_id` (`Ad_id`),
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `Ad_id_2` (`Ad_id`),
  ADD KEY `Customer_id_2` (`Customer_id`);

--
-- Indexes for table `table_ad`
--
ALTER TABLE `table_ad`
  ADD PRIMARY KEY (`Ad_id`),
  ADD KEY `Agency_id` (`Agency_id`) USING BTREE;

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Login_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Agency_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `F_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `Inq_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_ad`
--
ALTER TABLE `order_ad`
  MODIFY `Order_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_ad`
--
ALTER TABLE `table_ad`
  MODIFY `Ad_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Ad_id`) REFERENCES `table_ad` (`Ad_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `customer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `table_ad`
--
ALTER TABLE `table_ad`
  ADD CONSTRAINT `table_ad_ibfk_1` FOREIGN KEY (`Agency_id`) REFERENCES `company` (`Agency_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
