-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 18, 2018 at 04:18 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webteklab`
--

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `request_Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Id` int(111) NOT NULL,
  `vehicle_Id` int(11) NOT NULL,
  `request_Type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `request_date` date DEFAULT NULL,
  PRIMARY KEY (`request_Id`),
  KEY `vehicle_Id` (`vehicle_Id`) USING BTREE,
  KEY `user_Id` (`user_Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_Id`, `user_Id`, `vehicle_Id`, `request_Type`, `status`, `request_date`) VALUES
(1, 1, 1, 'rent', 'approved', '0000-00-00'),
(2, 2, 2, 'reserve', 'pending', '0000-00-00'),
(3, 7, 3, 'rent', 'approved', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `trans_Id` int(11) NOT NULL AUTO_INCREMENT,
  `request_Id` int(11) NOT NULL,
  `amount` int(50) NOT NULL,
  `mode_Of_Payment` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`trans_Id`),
  KEY `request_Id` (`request_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`trans_Id`, `request_Id`, `amount`, `mode_Of_Payment`, `status`) VALUES
(1, 1, 1000, 'Cash', 'Paid'),
(2, 3, 3000, 'Card', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_Id` int(11) NOT NULL AUTO_INCREMENT,
  `first_Name` varchar(50) NOT NULL,
  `last_Name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_No` int(50) NOT NULL,
  `acc_Type` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`user_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Id`, `first_Name`, `last_Name`, `address`, `contact_No`, `acc_Type`, `username`, `password`, `status`) VALUES
(0, 'Jolly', 'Tolentino', 'Baguio ', 123213, 'Admin', 'jollymadness', 'jolly222', 'activated'),
(1, 'Justin', 'Gutierrez', 'Ilocos', 234324, 'Client', 'manghustino', 'hustino123', 'activated'),
(2, 'Kevin', 'Portento', 'Tarlac ', 12345678, 'Client', 'kevports', '123kevin', 'activated'),
(3, 'Allen', 'Batac', 'Baguio', 432345234, 'Service Provider', 'emoji30', 'allen0984', 'activated'),
(4, 'Iris', 'Quiming', 'Pangasinan', 9864455, 'Client', 'mciq', 'zoldyck2', 'pending'),
(5, 'Kevin', 'Orian', 'Pampanga', 3243265, 'Client', 'kevs', 'kevs222', 'denied'),
(6, 'Julian', 'Jose', 'Baguio', 111111, 'Service Provider', 'jj47', 'juliaknows', 'activated'),
(7, 'Kirk', 'Tade', 'Baguio', 3243432, 'Client', 'kirk', 'kirkbb', 'activated');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_Id` int(11) NOT NULL,
  `availability` varchar(50) NOT NULL DEFAULT 'undefined',
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `rent_Price` varchar(50) NOT NULL,
  `car_Type` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `license_Plate` varchar(50) NOT NULL,
  `vehicle_No` varchar(50) NOT NULL,
  `current_Mileage` varchar(50) NOT NULL,
  `vehicle_status` varchar(45) NOT NULL DEFAULT 'undefined',
  `photo` longblob NOT NULL,
  PRIMARY KEY (`vehicle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_Id`, `availability`, `brand`, `model`, `year`, `capacity`, `rent_Price`, `car_Type`, `color`, `license_Plate`, `vehicle_No`, `current_Mileage`, `vehicle_status`, `photo`) VALUES
(1, 'undefined', 'Chevrolet', 'Colorado', '2018', '5', '1000', 'pickup', 'red', 'VVV-123', '1', '14567', 'active', ''),
(2, 'undefined', 'Honda', 'Accord', '2018', '5', '1500', 'sedan', 'black', 'UWH-526', '2', '14466', 'deactivated', ''),
(3, 'undefined', 'Toyota', 'Fortuner', '2018', '7', '3000', 'suv', 'white', 'XGT-547', '3', '17890', 'avtive', ''),
(4, 'undefined', 'Isuzu', 'Crosswind', '2018', '7', '6000', 'auv', 'gray', 'ZAC-594', '4', '9230', 'active', ''),
(5, 'undefined', 'Mistubishi', 'ASX', '2018', '5', '5000', 'crossover', 'black', 'UNH-210', '5', '4556', 'deactivated', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
