-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2021 at 07:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `art_sell`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `b_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`b_id`, `name`, `mobile`, `email`, `address`, `age`, `dob`, `gender`, `status`) VALUES
('B-1', 'sakin', '12345625490', 'sk@gmail.com', 'dhaka, bangladesh', '21', '2000-08-03', 'Male', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_guy`
--

CREATE TABLE `delivery_guy` (
  `d_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_guy`
--

INSERT INTO `delivery_guy` (`d_id`, `name`, `mobile`, `email`, `address`, `age`, `dob`, `gender`, `status`) VALUES
('D-1', 'akash', '12345612359', 'jh23@gmail.com', 'badda,dhaka, bangladesh', '21', '2000-05-06', 'Male', 'active'),
('D-2', 'nobin', '01878110256', 'nb@gmail.com', 'dhk,bd', '29', '2021-08-10', 'male', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_info`
--

CREATE TABLE `delivery_info` (
  `di_id` varchar(50) NOT NULL,
  `d_id` varchar(50) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `paid_status` varchar(50) NOT NULL,
  `b_id` varchar(50) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `delivery_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_info`
--

INSERT INTO `delivery_info` (`di_id`, `d_id`, `d_name`, `p_id`, `p_name`, `quantity`, `price`, `paid_status`, `b_id`, `b_name`, `address`, `delivery_status`) VALUES
('Di-1', 'D-1', 'akash', 'P-1', 'pubg', '1', '145666', 'paid', 'B-1', 'sakin', 'dhaka, bangladesh', 'undone');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `r_id` varchar(50) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `d_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`r_id`, `comment`, `d_id`) VALUES
('I-305040', 'good', 'D-1');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`, `type`, `ans`, `status`) VALUES
('D-1', '123', 'deliveryGuy', 'dog', 'active'),
('D-2', '123', 'deliveryGuy', 'f1', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `name`, `quantity`, `price`, `remarks`, `status`) VALUES
('P-1', 'pubg', '100', '145666', 'antique', 'active'),
('P-2', 'art poster', '324', '2314325235', 'ancient', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `delivery_guy`
--
ALTER TABLE `delivery_guy`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `delivery_info`
--
ALTER TABLE `delivery_info`
  ADD PRIMARY KEY (`di_id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
