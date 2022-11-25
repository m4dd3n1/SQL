-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: delivery
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `delivery_list`
--

DROP TABLE IF EXISTS `delivery_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_list` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `courier_id` int NOT NULL,
  `date_arrived` timestamp NULL DEFAULT NULL,
  `taken` varchar(3) NOT NULL,
  `payment_method` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  UNIQUE KEY `order_id` (`order_id`),
  UNIQUE KEY `date_arrived` (`date_arrived`),
  KEY `courier_id` (`courier_id`),
  CONSTRAINT `delivery_list_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `delivery_list_ibfk_2` FOREIGN KEY (`courier_id`) REFERENCES `courier_info` (`courier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_list`
--

LOCK TABLES `delivery_list` WRITE;
/*!40000 ALTER TABLE `delivery_list` DISABLE KEYS */;
INSERT INTO `delivery_list` 
VALUES 
(1,1,3,'2021-02-26 14:59:15','Да','Наличные'),
(2,2,4,'2021-02-26 15:01:05','Да','Карта'),
(3,3,1,'2021-02-26 15:04:36','Да','Наличные'),
(4,4,2,'2021-02-26 15:03:11','Да','Наличные'),
(5,5,1,'2021-02-26 15:19:56','Да','Наличные'),
(6,6,3,'2021-02-26 15:18:44','Да','Карта'),
(7,7,2,'2021-02-26 15:50:11','Нет','NULL'),
(8,8,4,'2021-02-26 15:35:07','Да','Карта'),
(9,9,4,'2021-02-26 15:58:28','Нет','NULL'),
(10,10,3,'2021-02-26 15:36:51','Да','Карта'),
(11,11,2,'2021-02-26 16:10:34','Да','Наличные'),
(12,12,1,NULL,'Нет','NULL'),(13,13,2,'2021-02-26 16:17:04','Да','Наличные'),
(14,14,3,'2021-02-26 15:56:17','Да','Карта'),
(15,15,4,'2021-02-26 16:05:29','Да','Карта');
/*!40000 ALTER TABLE `delivery_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-25 21:45:11
