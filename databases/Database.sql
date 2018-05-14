-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbase
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `rent_form`
--

DROP TABLE IF EXISTS `rent_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rent_form` (
  `rent_id` int(11) NOT NULL,
  `pickup_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `rent_days` int(11) DEFAULT NULL,
  `rent_price` int(25) DEFAULT NULL,
  `client_firstname` varchar(45) DEFAULT NULL,
  `client_lastname` varchar(45) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_form`
--

LOCK TABLES `rent_form` WRITE;
/*!40000 ALTER TABLE `rent_form` DISABLE KEYS */;
INSERT INTO `rent_form` VALUES (1,'2018-05-21','2018-05-24',3,15000,'Owen','Hunt',1000);
/*!40000 ALTER TABLE `rent_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_form`
--

DROP TABLE IF EXISTS `request_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_form` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_firstname` varchar(45) DEFAULT NULL,
  `client_lastname` varchar(45) DEFAULT NULL,
  `vehicle_request` varchar(45) DEFAULT NULL,
  `capacity_request` varchar(45) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `request_days` int(2) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_form`
--

LOCK TABLES `request_form` WRITE;
/*!40000 ALTER TABLE `request_form` DISABLE KEYS */;
INSERT INTO `request_form` VALUES (10,'Meredeth','Grey','Crossover','4','2018-05-25',3);
/*!40000 ALTER TABLE `request_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve_form`
--

DROP TABLE IF EXISTS `reserve_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve_form` (
  `reserve_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `sp_firstname` varchar(45) DEFAULT NULL,
  `sp_lastname` varchar(45) DEFAULT NULL,
  `client_firstname` varchar(45) DEFAULT NULL,
  `client_lastname` varchar(45) DEFAULT NULL,
  `reserve_date` date NOT NULL,
  PRIMARY KEY (`reserve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve_form`
--

LOCK TABLES `reserve_form` WRITE;
/*!40000 ALTER TABLE `reserve_form` DISABLE KEYS */;
INSERT INTO `reserve_form` VALUES (100,1000,'Derek','Sheperd','Alex','Kerev','2018-05-28');
/*!40000 ALTER TABLE `reserve_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_info`
--

DROP TABLE IF EXISTS `sp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_info` (
  `sp_id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_firstname` varchar(45) DEFAULT NULL,
  `sp_lastname` varchar(45) DEFAULT NULL,
  `sp_contact` int(11) DEFAULT NULL,
  `vehicle_id` varchar(45) NOT NULL,
  PRIMARY KEY (`sp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_info`
--

LOCK TABLES `sp_info` WRITE;
/*!40000 ALTER TABLE `sp_info` DISABLE KEYS */;
INSERT INTO `sp_info` VALUES (10000,'Mark','Sloan',90514404,'1000');
/*!40000 ALTER TABLE `sp_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rent_id` int(11) NOT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `t_idusers_idx` (`user_id`),
  KEY `t_rentID_idx` (`rent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `acct_type` enum('Admin','Service Provider','Client') DEFAULT NULL,
  `status` enum('Approved','Pending') DEFAULT 'Pending',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Christina','Yang','yang@email.com',NULL,'Admin','Approved'),(2,'Meredeth','Grey','grey@email.com',NULL,'Service Provider','Approved'),(3,'Alex','Kerev','kerev@email.com',NULL,'Client','Approved');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_year` int(4) DEFAULT NULL,
  `vehicle_manufacturer` varchar(45) DEFAULT NULL,
  `vehicle_model` varchar(45) DEFAULT NULL,
  `vehicle_color` varchar(45) DEFAULT NULL,
  `vehicle_capacity` int(11) DEFAULT NULL,
  `platenumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1000,2017,'Suzuki','Maruti Suzuki Alto 800','Red',5,'ABS-0143');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-14  1:56:39
