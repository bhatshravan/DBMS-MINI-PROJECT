-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Current Database: `project`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `project`;

--
-- Table structure for table `Companies`
--

DROP TABLE IF EXISTS `Companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Companies` (
  `Company_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Industry` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Series` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISIN_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Companies`
--

LOCK TABLES `Companies` WRITE;
/*!40000 ALTER TABLE `Companies` DISABLE KEYS */;
INSERT INTO `Companies` VALUES ('Adani Ports and Special Economic Zone Ltd.','SERVICES','ADANIPORTS','EQ','INE742F01042'),('Asian Paints Ltd.','CONSUMER GOODS','ASIANPAINT','EQ','INE021A01026'),('Axis Bank Ltd.','FINANCIAL SERVICES','AXISBANK','EQ','INE238A01034'),('Bajaj Auto Ltd.','AUTOMOBILE','BAJAJ-AUTO','EQ','INE917I01010'),('Bajaj Finserv Ltd.','FINANCIAL SERVICES','BAJAJFINSV','EQ','INE918I01018'),('Bajaj Finance Ltd.','FINANCIAL SERVICES','BAJFINANCE','EQ','INE296A01024'),('Bharti Airtel Ltd.','TELECOM','BHARTIARTL','EQ','INE397D01024'),('Bharat Petroleum Corporation Ltd.','ENERGY','BPCL','EQ','INE029A01011'),('Cipla Ltd.','PHARMA','CIPLA','EQ','INE059A01026'),('Coal India Ltd.','METALS','COALINDIA','EQ','INE522F01014'),('Dr. Reddys Laboratories Ltd.','PHARMA','DRREDDY','EQ','INE089A01023'),('Eicher Motors Ltd.','AUTOMOBILE','EICHERMOT','EQ','INE066A01013'),('GAIL (India) Ltd.','ENERGY','GAIL','EQ','INE129A01019'),('Grasim Industries Ltd.','CEMENT & CEMENT PRODUCTS','GRASIM','EQ','INE047A01021'),('HCL Technologies Ltd.','IT','HCLTECH','EQ','INE860A01027'),('Housing Development Finance Corporation Ltd.','FINANCIAL SERVICES','HDFC','EQ','INE001A01036'),('HDFC Bank Ltd.','FINANCIAL SERVICES','HDFCBANK','EQ','INE040A01026'),('Hero MotoCorp Ltd.','AUTOMOBILE','HEROMOTOCO','EQ','INE158A01026'),('Hindalco Industries Ltd.','METALS','HINDALCO','EQ','INE038A01020'),('Hindustan Petroleum Corporation Ltd.','ENERGY','HINDPETRO','EQ','INE094A01015'),('Hindustan Unilever Ltd.','CONSUMER GOODS','HINDUNILVR','EQ','INE030A01027'),('Indiabulls Housing Finance Ltd.','FINANCIAL SERVICES','IBULHSGFIN','EQ','INE148I01020'),('ICICI Bank Ltd.','FINANCIAL SERVICES','ICICIBANK','EQ','INE090A01021'),('IndusInd Bank Ltd.','FINANCIAL SERVICES','INDUSINDBK','EQ','INE095A01012'),('Bharti Infratel Ltd.','TELECOM','INFRATEL','EQ','INE121J01017'),('Infosys Ltd.','IT','INFY','EQ','INE009A01021'),('Indian Oil Corporation Ltd.','ENERGY','IOC','EQ','INE242A01010'),('I T C Ltd.','CONSUMER GOODS','ITC','EQ','INE154A01025'),('JSW Steel Ltd.','METALS','JSWSTEEL','EQ','INE019A01038'),('Kotak Mahindra Bank Ltd.','FINANCIAL SERVICES','KOTAKBANK','EQ','INE237A01028'),('Larsen & Toubro Ltd.','CONSTRUCTION','LT','EQ','INE018A01030'),('Maruti Suzuki India Ltd.','AUTOMOBILE','MARUTI','EQ','INE585B01010'),('NTPC Ltd.','ENERGY','NTPC','EQ','INE733E01010'),('Oil & Natural Gas Corporation Ltd.','ENERGY','ONGC','EQ','INE213A01029'),('Power Grid Corporation of India Ltd.','ENERGY','POWERGRID','EQ','INE752E01010'),('Reliance Industries Ltd.','ENERGY','RELIANCE','EQ','INE002A01018'),('State Bank of India','FINANCIAL SERVICES','SBIN','EQ','INE062A01020'),('Sun Pharmaceutical Industries Ltd.','PHARMA','SUNPHARMA','EQ','INE044A01036'),('Tata Motors Ltd.','AUTOMOBILE','TATAMOTORS','EQ','INE155A01022'),('Tata Steel Ltd.','METALS','TATASTEEL','EQ','INE081A01012'),('Tata Consultancy Services Ltd.','IT','TCS','EQ','INE467B01029'),('Tech Mahindra Ltd.','IT','TECHM','EQ','INE669C01036'),('Titan Company Ltd.','CONSUMER GOODS','TITAN','EQ','INE280A01028'),('UltraTech Cement Ltd.','CEMENT & CEMENT PRODUCTS','ULTRACEMCO','EQ','INE481G01011'),('UPL Ltd.','FERTILISERS & PESTICIDES','UPL','EQ','INE628A01036'),('Vedanta Ltd.','METALS','VEDL','EQ','INE205A01025'),('Wipro Ltd.','IT','WIPRO','EQ','INE075A01022'),('Yes Bank Ltd.','FINANCIAL SERVICES','YESBANK','EQ','INE528G01027'),('Zee Entertainment Enterprises Ltd.','MEDIA & ENTERTAINMENT','ZEEL','EQ','INE256A01028');
/*!40000 ALTER TABLE `Companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Price`
--

DROP TABLE IF EXISTS `Price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Price` (
  `symbol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` date NOT NULL,
  `open` decimal(15,2) NOT NULL,
  `high` decimal(15,2) DEFAULT NULL,
  `low` decimal(15,2) DEFAULT NULL,
  `close` decimal(15,5) DEFAULT NULL,
  `volume` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Price`
--

LOCK TABLES `Price` WRITE;
/*!40000 ALTER TABLE `Price` DISABLE KEYS */;
/*!40000 ALTER TABLE `Price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `bank_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `current_money` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES ('ICICI',20,100000.000);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investments`
--

DROP TABLE IF EXISTS `investments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investments` (
  `user_id` int(11) NOT NULL,
  `symbol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` int(20) DEFAULT NULL,
  `price_bought` decimal(15,2) DEFAULT NULL,
  `time` date DEFAULT NULL,
  KEY `symbol` (`symbol`),
  CONSTRAINT `investments_ibfk_1` FOREIGN KEY (`symbol`) REFERENCES `Companies` (`Symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investments`
--

LOCK TABLES `investments` WRITE;
/*!40000 ALTER TABLE `investments` DISABLE KEYS */;
/*!40000 ALTER TABLE `investments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profits`
--

DROP TABLE IF EXISTS `profits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profits` (
  `user_id` int(11) NOT NULL,
  `symbol` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_bought` decimal(15,2) DEFAULT NULL,
  `price_sold` decimal(15,2) DEFAULT NULL,
  `time` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT 'current_timestamp',
  `date_bought` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_sold` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalpl` decimal(15,2) DEFAULT NULL,
  KEY `symbol` (`symbol`),
  CONSTRAINT `profits_ibfk_1` FOREIGN KEY (`symbol`) REFERENCES `Companies` (`Symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profits`
--

LOCK TABLES `profits` WRITE;
/*!40000 ALTER TABLE `profits` DISABLE KEYS */;
/*!40000 ALTER TABLE `profits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,'Shravan Bhat','shrvnbhat0@gmail.com','RycmNxDQuAQ=c2hyYXZhbg==','9108287991','ICICI','2018-11-26 07:17:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `project`.`users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW
BEGIN
INSERT INTO `project`.`bank`
(`bank_name`,
`user_id`,
`current_money`) values(new.bank,new.user_id,100000);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-26 16:11:26

CREATE DEFINER=`root`@`localhost` PROCEDURE `buy`(in uid char(50), in symbol char(255), in volume char(155), in prices varchar(30),in time2 varchar(30))
BEGIN
insert into investments values(uid,symbol,volume,prices,time2);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `register`(in name char(50), in email char(255), in password char(155), in phone char(12), in bank varchar(30))
BEGIN
insert into users(`name`,`email`,`password`,`phone`,`bank`) values(name,email,password,phone,bank);
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sell`(in uid char(50), in symbol char(255), in volume char(155),  in price_bought varchar(30), in price_sold varchar(30),in time2 varchar(30), in date_bought varchar(30), in date_sold varchar(30), in totalpl varchar(30))
BEGIN
insert into profits values(uid,symbol,volume,price_bought,price_sold,time2,date_bought,date_sold,totalpl);
END
