-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 02:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fcds`
--

-- --------------------------------------------------------

--
-- Table structure for table `crop_details`
--

CREATE TABLE `crop_details` (
  `Crop_id` varchar(10) NOT NULL,
  `farmer_id` varchar(20) NOT NULL,
  `Crop_type` varchar(20) NOT NULL,
  `Quantity` varchar(20) NOT NULL,
  `Cost` int(20) NOT NULL,
  `Discription` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop_details`
--

INSERT INTO `crop_details` (`Crop_id`, `farmer_id`, `Crop_type`, `Quantity`, `Cost`, `Discription`) VALUES
('2', '2', 'sws', 'qds', 200, ' wsertg'),
('c', 'n', ',mn b', '20', 200, ' dfgh');

-- --------------------------------------------------------

--
-- Table structure for table `disease_details`
--

CREATE TABLE `disease_details` (
  `Disease_id` varchar(10) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Discription` varchar(10000) NOT NULL,
  `Crop_id` varchar(10) NOT NULL,
  `Image` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_details`
--

INSERT INTO `disease_details` (`Disease_id`, `Type`, `Discription`, `Crop_id`, `Image`) VALUES
('1', 'w2d', 'wef', 'rtfyguhi', '93ce6b1c-46c9-4ad4-9ae1-ddf02e7ce315 (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_details`
--

CREATE TABLE `farmer_details` (
  `farmer_id` varchar(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Pincode` int(10) NOT NULL,
  `Contact_no` int(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer_details`
--

INSERT INTO `farmer_details` (`farmer_id`, `Fname`, `Lname`, `Gender`, `City`, `Address`, `Pincode`, `Contact_no`, `Email`) VALUES
('1', 'dcfvnb', 'cvb', 'fg', 'xcvb', ' gchvbhnj', 591309, 55484521, 'omkarviresh@gmail.com'),
('1', 'sad', 'sd', 'sd', 'sad', ' asd', 1234, 120, 'v@gmail.com'),
('1', 'sad', 'sd', 'sd', 'sad', ' asd', 1234, 120, 'v@gmail.com'),
('1', 'sad', 'sd', 'sd', 'sad', ' asd', 1234, 120, 'v@gmail.com'),
('1', 'sad', 'sd', 'sd', 'sad', ' asd', 1234, 120, 'v@gmail.com'),
('1', '2', '23', 'wsd', 'sded', ' wer', 23, 123, 's@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `Password`, `type`) VALUES
('admin', '1234', 'admin'),
('farmer', '12', 'farmer'),
('v@gmail.com', '123', 'farmer'),
('v@gmail.com', '123', 'farmer'),
('v@gmail.com', '123', 'farmer'),
('s@gmail.com', '123', 'farmer');

-- --------------------------------------------------------

--
-- Table structure for table `solution_details`
--

CREATE TABLE `solution_details` (
  `Solution_id` varchar(10) NOT NULL,
  `Disease_id` varchar(10) NOT NULL,
  `Solution_type` varchar(20) NOT NULL,
  `Description` mediumtext NOT NULL,
  `Image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solution_details`
--

INSERT INTO `solution_details` (`Solution_id`, `Disease_id`, `Solution_type`, `Description`, `Image`) VALUES
('3', '2', 'asx', '                                 \r\n                              asdc', '12948523-5eca-4a5b-bded-3c9a3953a7bc.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
