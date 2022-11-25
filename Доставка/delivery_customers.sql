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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `district` varchar(15) NOT NULL,
  `street` varchar(25) NOT NULL,
  `house` int NOT NULL,
  `apartment` int NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers`
VALUES 
(1,'Алексей','Иванов','+79505435514','Южный','Улица Южная',1,10),
(2,'Иван','Петров','+79510587959','Западный','Улица Весенняя',2,35),
(3,'Евгений','Понасенков','+79198920766','Восточный','Пятый проспект',77,14),
(4,'Захар','Плетнин','+79912163851','Южный','Угловой проспект',24,89),
(5,'Константин','Гордон','+79567202609','Южный','Улица Площадь Ленина',11,85),
(6,'Владимир','Дерябин','+79029888308','Западный','Улица Западная',123,52),
(7,'Юлия','Прудкая','+79253439628','Западный','Улица Западная',76,44),
(8,'Михаил','Горбачёв','+79869953375','Восточный','Улица Головная',21,91),
(9,'Ксения','Ястребова','+79629107942','Северный','Улица Декабристов',23,67),
(10,'Анна','Лучшая','+79869888470','Южный','Угловой проспект',62,44),
(11,'Максим','Певцов','+79875017646','Южный','Улица Южная',15,56),
(12,'Леонид','Царствующий','+79239490170','Южный','Улица Площадь Ленина',5,13),
(13,'Валентин','Праздников','+79214424174','Северный','Улица Декабристов',18,88),
(14,'Людмила','Артёмова','+79917137234','Северный','Улица Декабристов',17,7),
(15,'Ульрих','Восьмой','+79543642836','Южный','Улица Южная',18,9);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
