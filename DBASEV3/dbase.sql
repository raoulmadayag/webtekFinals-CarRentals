-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 08, 2018 at 02:41 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

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

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_Name` int(11) NOT NULL,
  `last_Name` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_rental_agreement`
--

INSERT INTO `car_rental_agreement` (`idCar_rental_agreement`, `Owner`, `client_First_Name`, `client_Last_Name`, `Identity/SSN/Other`, `Physical_Address`, `Type of Vehicle`) VALUES
(1, 'Christina Yang', 'Owen', 'Hunt', '34-958237523-1', 'Bakakeng road, Baguio City', 'Hatchback'),
(2, 'Meredeth Grey', 'Derek', 'Sheperd', '22-927594743-1', 'Bonifacio road, Baguio City', 'Sedan'),
(3, 'Joe Wilson', 'Alex', 'Kerev', '21-982579498-3', 'Loakan road, Baguio City', 'MPV'),
(4, 'Lexi Grey', 'Mark', 'Sloan', '01-239794324-3', 'Rimando road, Baguio City', 'SUV'),
(5, 'Arizona Robins', 'Miranda', 'Baile', '22-275475843-1', 'Camp 7 road, Baguio City', 'Crossover');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_Name` int(11) NOT NULL,
  `last_Name` int(11) NOT NULL,
  PRIMARY KEY (`client_id`),
  KEY `client_id` (`client_id`)
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
  `Pickup_date` date DEFAULT NULL,
  `Return_Date` date DEFAULT NULL,
  `Rent_days` int(11) DEFAULT NULL,
  `Rent_Price` double DEFAULT NULL,
  `Total_Rent` varchar(45) DEFAULT NULL,
  `Current_Mileage` varchar(45) DEFAULT NULL,
  `Gas_Level` varchar(45) DEFAULT NULL,
  `Rent_status` varchar(45) DEFAULT NULL,
  `ReservedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Rent_iD`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
-- Table structure for table `sp`
--

DROP TABLE IF EXISTS `sp`;
CREATE TABLE IF NOT EXISTS `sp` (
  `sp_id` int(11) NOT NULL,
  `sp_type` int(11) NOT NULL,
  `sp_name` int(11) NOT NULL,
  PRIMARY KEY (`sp_id`),
  KEY `sp_id` (`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  PRIMARY KEY (`user_info_id`),
  KEY `admin_id` (`admin_id`),
  KEY `client_id` (`client_id`),
  KEY `sp_id` (`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_information`
--

INSERT INTO `vehicle_information` (`Vehicle_ID`, `Brand`, `Model`, `Year`, `Capacity`, `Rent_Price`, `Car_type`, `Vehicle_Number`, `Manufacturer`, `photo`, `color`, `License_Plate`, `Current_Mileage`) VALUES
(1, 'Maruti Suzuki Swift', 'Alto 800', 2018, 5, 16, 'Hatchback', '001', 'Suzuki', NULL, 'Red', 'ABS-0143', '500'),
(2, 'Volvo S60 Cross Country', 'S60 Cross Country', 2017, 5, 15, 'Crossover', '002', 'Cross', NULL, 'Silver', 'CBN-0905', '500'),
(3, 'Mercedes-Benz GLE Coupe', 'GLE Coupe', 2016, 5, 14, 'Coupe', '003', 'Mercedes-Benz', NULL, 'Black', 'GMA-0007', '500');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sp_id` FOREIGN KEY (`sp_id`) REFERENCES `sp` (`sp_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
