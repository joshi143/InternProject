-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2020 at 04:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_balance` int(11) NOT NULL,
  `phno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`c_id`, `c_name`, `c_email`, `c_balance`, `phno`) VALUES
(586201, 'Avinash kulkarni', 'avinashk@gmail.com', 80000, 244611),
(586202, 'Bhavana Gowda', 'bhavusis@gmail.com', 80100, 244612),
(586203, 'Channappa Singrani', 'channusingu@gmail.com', 80100, 244613),
(586204, 'Danesh Sait', 'danishsait@gmail.com', 79100, 244614),
(586205, 'Ekanth Rathod', 'ekrathod@gmail.com', 79800, 244615),
(586206, 'Fahad Fazil', 'fahadf@gmail.com', 80800, 244616),
(586207, 'Gopal Krishna', 'gopalgopi@outlook.com', 80100, 244617),
(586208, 'Harshad Mehta', 'bseking@yahoo.com', 79000, 244618),
(586209, 'Indrajit Ramu', 'inramu225@gmail.com', 80000, 244619),
(586210, 'Jayakrishna Rampe', 'rampefamily108@gmail.com', 80000, 244620);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_history`
--

CREATE TABLE `transfer_history` (
  `t_id` int(11) NOT NULL,
  `t_sender` varchar(255) NOT NULL,
  `t_receiver` varchar(255) NOT NULL,
  `t_amount` int(11) NOT NULL,
  `t_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer_history`
--

INSERT INTO `transfer_history` (`t_id`, `t_sender`, `t_receiver`, `t_amount`, `t_time`) VALUES
(22, 'Danesh Sait', 'Fahad Fazil', 1000, '2020-11-07 12:51:43'),
(23, 'Fahad Fazil', 'Gopal Krishna', 100, '2020-11-09 11:37:03'),
(24, 'Fahad Fazil', 'Bhavana Gowda', 100, '2020-11-09 11:44:43'),
(25, 'Ekanth Rathod', 'Channappa Singrani', 100, '2020-11-09 11:45:17'),
(26, 'Ekanth Rathod', 'Channappa Singrani', 100, '2020-11-09 11:45:46'),
(27, 'Danesh Sait', 'Fahad Fazil', 100, '2020-11-09 11:46:07'),
(28, 'Fahad Fazil', 'Danesh Sait', 100, '2020-11-09 11:46:46'),
(30, 'Channappa Singrani', 'Danesh Sait', 100, '2020-11-14 20:52:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_name` (`c_name`),
  ADD UNIQUE KEY `c_email` (`c_email`);

--
-- Indexes for table `transfer_history`
--
ALTER TABLE `transfer_history`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586212;

--
-- AUTO_INCREMENT for table `transfer_history`
--
ALTER TABLE `transfer_history`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
