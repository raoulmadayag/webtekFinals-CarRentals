-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2018 at 03:04 PM
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
-- Database: `dbase`
--
CREATE DATABASE IF NOT EXISTS `dbase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbase`;

-- --------------------------------------------------------

--
-- Table structure for table `car_rental_agreement`
--

DROP TABLE IF EXISTS `car_rental_agreement`;
CREATE TABLE IF NOT EXISTS `car_rental_agreement` (
  `idCar_rental_agreement` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` varchar(45) DEFAULT NULL,
  `client_First_Name` varchar(45) DEFAULT NULL,
  `client_Last_Name` varchar(45) DEFAULT NULL,
  `Identity/SSN/Other` varchar(45) DEFAULT NULL,
  `Physical_Address` varchar(45) DEFAULT NULL,
  `Type of Vehicle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCar_rental_agreement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rent_form`
--

DROP TABLE IF EXISTS `rent_form`;
CREATE TABLE IF NOT EXISTS `rent_form` (
  `Rent_iD` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_Number` varchar(45) DEFAULT NULL,
  `SP_Name` varchar(45) DEFAULT NULL,
  `Pickup_date` datetime DEFAULT NULL,
  `Return_Date` datetime DEFAULT NULL,
  `Rent_days` int(11) DEFAULT NULL,
  `Rent_Price` double DEFAULT NULL,
  `Total_Rent` varchar(45) DEFAULT NULL,
  `Current_Mileage` varchar(45) DEFAULT NULL,
  `Gas_Level` varchar(45) DEFAULT NULL,
  `Rent_status` varchar(45) DEFAULT NULL,
  `ReservedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Rent_iD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reserve form`
--

DROP TABLE IF EXISTS `reserve form`;
CREATE TABLE IF NOT EXISTS `reserve form` (
  `ReservedID` int(11) NOT NULL,
  `Vehicle_Number` int(11) DEFAULT NULL,
  `SP_Name` varchar(45) DEFAULT NULL,
  `pickup_date` datetime DEFAULT NULL,
  `dropoff_date` datetime DEFAULT NULL,
  `Confirmation_Number` varchar(45) DEFAULT NULL,
  `Reservedby` varchar(45) DEFAULT NULL,
  `ReservedDate` datetime NOT NULL,
  `Remarks` blob,
  PRIMARY KEY (`ReservedID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `idTransaction` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_idClient` int(11) NOT NULL,
  `transaction_idSP` int(11) NOT NULL,
  PRIMARY KEY (`idTransaction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idUsers` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `acctype` enum('Admin','Client','Service Provider') DEFAULT NULL,
  `status` enum('Approved','Pending','Declined') DEFAULT 'Pending',
  `contact_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `username`, `email`, `firstname`, `lastname`, `password`, `acctype`, `status`, `contact_number`) VALUES
(1, 'Admin', 'admin@test.com', 'Francis', 'Cacas', 'admin', 'Admin', 'Approved', '09090909'),
(2, 'SP', 'sp@test.com', 'Iyar', 'Benitez', 'sp', 'Service Provider', 'Pending', '09090909'),
(3, 'Client', 'serviceProvider@test.com', 'Sam', 'Paul', 'serviceProvider', 'Client', 'Pending', '09090909'),
(4, 'asd', 'asd@gmail.com', 'asd', 'asd', '123', 'Service Provider', 'Declined', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_information`
--

DROP TABLE IF EXISTS `vehicle_information`;
CREATE TABLE IF NOT EXISTS `vehicle_information` (
  `Vehicle_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Brand` varchar(45) NOT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  `Capacity` int(2) DEFAULT NULL,
  `Rent_Price` int(11) DEFAULT NULL,
  `Car_type` varchar(45) DEFAULT NULL,
  `Vehicle_Number` varchar(45) DEFAULT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `photo` blob,
  `color` varchar(45) DEFAULT NULL,
  `License_Plate` varchar(45) DEFAULT NULL,
  `Current_Mileage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_information`
--

INSERT INTO `vehicle_information` (`Vehicle_ID`, `Brand`, `Model`, `Year`, `Capacity`, `Rent_Price`, `Car_type`, `Vehicle_Number`, `Manufacturer`, `photo`, `color`, `License_Plate`, `Current_Mileage`) VALUES
(1, 'Nissan', 'Skyline', 2005, 12, 16000, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
