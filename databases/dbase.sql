-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbase
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_agreement`
--

LOCK TABLES `car_rental_agreement` WRITE;
/*!40000 ALTER TABLE `car_rental_agreement` DISABLE KEYS */;
INSERT INTO `car_rental_agreement` VALUES (1,'Christina Yang','Owen','Hunt','34-958237523-1','Bakakeng road, Baguio City','Hatchback'),(2,'Meredeth Grey','Derek','Sheperd','22-927594743-1','Bonifacio road, Baguio City','Sedan'),(3,'Joe Wilson','Alex','Kerev','21-982579498-3','Loakan road, Baguio City','MPV'),(4,'Lexi Grey','Mark','Sloan','01-239794324-3','Rimando road, Baguio City','SUV'),(5,'Arizona Robins','Miranda','Baile','22-275475843-1','Camp 7 road, Baguio City','Crossover');
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_form`
--

LOCK TABLES `rent_form` WRITE;
/*!40000 ALTER TABLE `rent_form` DISABLE KEYS */;
INSERT INTO `rent_form` VALUES (1,'001','Owen Hunt','0006-02-18 00:00:00','0006-05-18 00:00:00',3,1,'4,500','500','Full','Pending','Christina Yang'),(2,'002','Derek Sheperd','0006-12-18 00:00:00','0000-00-00 00:00:00',5,1,'6,000','450','Full','Pending','Meredeth Grey'),(3,'003','Arizona Robins','0006-08-18 00:00:00','0006-12-18 00:00:00',4,1,'4,000','420','Full','Pending','Kelly Torres'),(4,'004','Joe Wilson','0000-00-00 00:00:00','0000-00-00 00:00:00',3,1,'4,500','500','Full','Pending','Alex Kerev'),(5,'005','Miranda Bailey','0000-00-00 00:00:00','0000-00-00 00:00:00',7,1,'8,400','450','Full','Pending','Mark Slone');
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
INSERT INTO `reserve form` VALUES (1,6,'Derek Sheperd','0006-10-18 00:00:00','0000-00-00 00:00:00','000010','Meredeth Grey','0006-08-18 00:00:00',NULL),(2,9,'Alex Kerev','0000-00-00 00:00:00','0000-00-00 00:00:00','000012','Joe Wilson','0000-00-00 00:00:00',NULL),(3,12,'Zoe Grey','0006-02-18 00:00:00','0006-07-18 00:00:00','000014','Aimee Sheperd','0000-00-00 00:00:00',NULL),(4,14,'Mark Sloan','0006-05-18 00:00:00','0006-08-18 00:00:00','000015','Lexi Grey','0006-02-18 00:00:00',NULL),(5,15,'Arizona Robins','0000-00-00 00:00:00','0000-00-00 00:00:00','000017','Miranda Baile','0000-00-00 00:00:00',NULL);
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
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `acctype` enum('Admin','Client','Service Provider') DEFAULT NULL,
  `status` enum('Approved','Pending','Declined') DEFAULT 'Pending',
  `contact_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@test.com','Francis','Cacas','admin','Admin','Approved','09051440428'),(2,'SP','sp@test.com','Iyar','Benitez','sp','Service Provider','Pending','09065798212'),(3,'Client','client@test.com','Sam','Paul','client','Client','Pending','09218542356'),(4,'admin1','admin1@gmail.com','ad','min1','admin1','Admin','Approved','09205482343'),(5,'sp1','sp1@gmail.com','s','p1','sp1','Service Provider','Approved','09041984523'),(6,'client1','client1@gmail.com','cli','ent1','client1','Client','Approved','09096781234');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_information`
--

LOCK TABLES `vehicle_information` WRITE;
/*!40000 ALTER TABLE `vehicle_information` DISABLE KEYS */;
INSERT INTO `vehicle_information` VALUES (1,'Maruti Suzuki Swift','Alto 800',2018,5,16,'Hatchback','001','Suzuki',NULL,'Red','ABS-0143','500'),(2,'Volvo S60 Cross Country','S60 Cross Country',2017,5,15,'Crossover','002','Cross',NULL,'Silver','CBN-0905','500'),(3,'Mercedes-Benz GLE Coupe','GLE Coupe',2016,5,14,'Coupe','003','Mercedes-Benz',NULL,'Black','GMA-0007','500');
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

-- Dump completed on 2018-05-11 22:42:47
