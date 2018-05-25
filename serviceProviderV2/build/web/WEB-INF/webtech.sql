-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 03:54 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `idcontact_details` int(11) NOT NULL,
  `contact_firstname` varchar(45) DEFAULT NULL,
  `contact_lastname` varchar(45) DEFAULT NULL,
  `contact_number` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_Id` int(11) NOT NULL,
  `user_Id` int(111) NOT NULL,
  `vehicle_Id` int(11) NOT NULL,
  `request_Type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `rent_startdate` date DEFAULT NULL,
  `rent_enddate` date DEFAULT NULL,
  `id_contact_details` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_Id`, `user_Id`, `vehicle_Id`, `request_Type`, `status`, `rent_startdate`, `rent_enddate`, `id_contact_details`) VALUES
(1, 1, 1, 'rent', 'approved', '0000-00-00', '0000-00-00', NULL),
(2, 2, 2, 'rent', 'pending', '0000-00-00', '0000-00-00', NULL),
(3, 3, 3, 'rent', 'approved', '0000-00-00', '0000-00-00', NULL),
(4, 4, 2, 'rent', 'approved', '0000-00-00', '0000-00-00', NULL),
(5, 5, 3, 'rent', 'approved', NULL, NULL, NULL),
(6, 7, 5, 'rent', '', NULL, NULL, NULL),
(7, 8, 4, 'rent', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `trans_Id` int(11) NOT NULL,
  `request_Id` int(11) NOT NULL,
  `amount` int(50) NOT NULL,
  `mode_Of_Payment` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`trans_Id`, `request_Id`, `amount`, `mode_Of_Payment`, `status`) VALUES
(1, 1, 1000, 'Cash', 'Paid'),
(2, 3, 3000, '', 'Unpaid'),
(3, 4, 5000, 'Cash', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_Id` int(11) NOT NULL,
  `first_Name` varchar(50) NOT NULL,
  `last_Name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_No` int(50) NOT NULL,
  `acc_Type` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Id`, `first_Name`, `last_Name`, `address`, `contact_No`, `acc_Type`, `username`, `password`, `status`) VALUES
(0, 'Raoul', 'Madayag', 'Baguio ', 123213, 'Admin', 'Admin', 'admin', 'activated'),
(1, 'Justin', 'Gutierrez', 'Ilocos', 234324, 'Client', 'manghustino', 'hustino123', 'deactivated'),
(2, 'Kevin', 'Portento', 'Tarlac ', 12345678, 'Client', 'kevports', '123kevin', 'activated'),
(3, 'Allen', 'Batac', 'Baguio', 432345234, 'Service Provider', 'emoji30', 'allen0984', 'activated'),
(4, 'Iris', 'Quiming', 'Pangasinan', 9864455, 'Client', 'mciq', 'zoldyck2', 'declined'),
(5, 'Kevin', 'Orian', 'Pampanga', 3243265, 'Client', 'kevs', 'kevs222', 'declined'),
(6, 'Julian', 'Jose', 'Baguio', 111111, 'Service Provider', 'jj47', 'juliaknows', 'activated'),
(7, 'Kirk', 'Tade', 'Baguio', 3243432, 'Client', 'kirk', 'kirkbb', 'deactivated'),
(8, 'Iyar', 'Benitez', 'Baguio', 2147483647, 'Service Provider', 'iyar88', 'iyar123', 'activated'),
(9, 'Jed', 'Benitez', 'Baguio', 123123123, 'Client', 'jed88', 'jed123', 'approved'),
(10, 'Paul', 'Sam', 'Baguio', 2147483647, 'Service Provider', 'sam123', 'sam123', 'activated'),
(11, 'Caim', 'Drake', 'Baguio', 11111111, 'Client', 'Caim1', 'caim1', 'approved'),
(12, 'Francisco', 'Cacas', 'Baguio', 909190919, 'Service Provider', 'Francis11', 'francis123', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_Id` int(11) NOT NULL,
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
  `photo` longblob NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_Id`, `brand`, `model`, `year`, `capacity`, `rent_Price`, `car_Type`, `color`, `license_Plate`, `vehicle_No`, `current_Mileage`, `vehicle_status`) VALUES
(1, 'Chevrolet', 'Colorado', '2018', '5', '1000', 'pickup', 'red', 'VVV-123', '1', '14567', 'available'),
(2, 'Honda', 'Accord', '2018', '5', '1500', 'sedan', 'black', 'UWH-526', '2', '14466', 'deactivated'),
(3, 'Toyota', 'Fortuner', '2018', '7', '3000', 'suv', 'white', 'XGT-547', '3', '17890', 'available'),
(4, 'Isuzu', 'Crosswind', '2018', '7', '6000', 'auv', 'gray', 'ZAC-594', '4', '9230', 'available'),
(5, 'Mistubishi', 'ASX', '2018', '5', '5000', 'crossover', 'black', 'UNH-210', '5', '4556', 'deactivated');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`idcontact_details`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_Id`),
  ADD KEY `vehicle_Id` (`vehicle_Id`) USING BTREE,
  ADD KEY `user_Id` (`user_Id`) USING BTREE,
  ADD KEY `r_contactDetails_idx` (`id_contact_details`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`trans_Id`),
  ADD KEY `request_Id` (`request_Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_Id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `trans_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `r_contactDetails` FOREIGN KEY (`id_contact_details`) REFERENCES `contact_details` (`idcontact_details`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `r_userID` FOREIGN KEY (`user_Id`) REFERENCES `user` (`user_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `r_vehicleID` FOREIGN KEY (`vehicle_Id`) REFERENCES `vehicle` (`vehicle_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `t_requestID` FOREIGN KEY (`request_Id`) REFERENCES `request` (`request_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
