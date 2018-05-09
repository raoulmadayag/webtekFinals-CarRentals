CREATE DATABASE  IF NOT EXISTS `dbase` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbase`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dbase
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car_rental_agreement`
--

DROP TABLE IF EXISTS `car_rental_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_rental_agreement` (
  `idCar_rental_agreement` int(11) NOT NULL AUTO_INCREMENT,
  `Owner` varchar(45) DEFAULT NULL,
  `client_First_Name` varchar(45) DEFAULT NULL,
  `client_Last_Name` varchar(45) DEFAULT NULL,
  `Identity/SSN/Other` varchar(45) DEFAULT NULL,
  `Physical_Address` varchar(45) DEFAULT NULL,
  `Type of Vehicle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCar_rental_agreement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_agreement`
--

LOCK TABLES `car_rental_agreement` WRITE;
/*!40000 ALTER TABLE `car_rental_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_rental_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent_form`
--

DROP TABLE IF EXISTS `rent_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rent_form` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_form`
--

LOCK TABLES `rent_form` WRITE;
/*!40000 ALTER TABLE `rent_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve form`
--

DROP TABLE IF EXISTS `reserve form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve form` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve form`
--

LOCK TABLES `reserve form` WRITE;
/*!40000 ALTER TABLE `reserve form` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserve form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `idTransaction` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_idClient` int(11) NOT NULL,
  `transaction_idSP` int(11) NOT NULL,
  PRIMARY KEY (`idTransaction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `acctype` enum('Admin','Client','Service Provider') DEFAULT NULL,
  `status` enum('Approved','Pending','Decline') DEFAULT 'Pending',
  `contact_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@test.com','Francis','Cacas','admin','Admin','Approved','09090909'),(2,'SP','sp@test.com','Iyar','Benitez','sp','Service Provider','Approved','09090909'),(3,'Client','client@test.com','Sam','Paul','client','Client','Approved','09090909');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_information`
--

DROP TABLE IF EXISTS `vehicle_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_information` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_information`
--

LOCK TABLES `vehicle_information` WRITE;
/*!40000 ALTER TABLE `vehicle_information` DISABLE KEYS */;
INSERT INTO `vehicle_information` VALUES (1,'Nissan','Skyline',2005,12,16000,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vehicle_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-09 17:17:56
