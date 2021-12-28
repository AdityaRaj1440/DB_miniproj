-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: miniproj
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `comic_genre`
--

DROP TABLE IF EXISTS `comic_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comic_genre` (
  `Origin_id` char(3) NOT NULL,
  `Comic_id` int NOT NULL,
  `Genre_id` int NOT NULL,
  PRIMARY KEY (`Origin_id`,`Comic_id`,`Genre_id`),
  KEY `Genre_id` (`Genre_id`),
  CONSTRAINT `comic_genre_ibfk_1` FOREIGN KEY (`Origin_id`, `Comic_id`) REFERENCES `comics` (`Origin_id`, `Comic_id`) ON DELETE CASCADE,
  CONSTRAINT `comic_genre_ibfk_2` FOREIGN KEY (`Genre_id`) REFERENCES `genre` (`Genre_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comic_genre`
--

LOCK TABLES `comic_genre` WRITE;
/*!40000 ALTER TABLE `comic_genre` DISABLE KEYS */;
INSERT INTO `comic_genre` VALUES ('CHN',1,1),('CHN',2,1),('CHN',4,1),('JPN',2,1),('JPN',3,1),('JPN',4,1),('KRN',1,1),('KRN',2,1),('KRN',3,1),('KRN',4,1),('CHN',1,2),('CHN',2,2),('CHN',4,2),('JPN',1,2),('JPN',2,2),('JPN',3,2),('JPN',4,2),('JPN',5,2),('KRN',1,2),('KRN',2,2),('KRN',3,2),('KRN',4,2),('KRN',5,2),('JPN',2,3),('JPN',3,3),('JPN',4,3),('CHN',2,4),('CHN',3,4),('JPN',2,4),('JPN',3,4),('JPN',4,4),('JPN',5,4),('KRN',2,4),('KRN',3,4),('KRN',5,4),('JPN',2,6),('JPN',3,6),('JPN',4,6),('CHN',1,7),('CHN',2,7),('JPN',2,7),('JPN',3,7),('JPN',4,7),('KRN',2,7),('KRN',5,7),('CHN',1,9),('CHN',2,9),('CHN',4,9),('JPN',2,9),('JPN',3,9),('JPN',4,9),('JPN',5,9),('KRN',1,9),('KRN',2,9),('KRN',4,9),('KRN',5,9),('CHN',2,11),('JPN',2,13),('JPN',4,13),('CHN',1,16),('CHN',4,16),('JPN',3,16),('JPN',4,16),('KRN',3,16),('KRN',5,16),('JPN',2,17),('JPN',2,20),('KRN',2,20),('JPN',2,22),('KRN',2,22),('CHN',2,23),('CHN',1,24),('CHN',3,24),('JPN',5,24),('JPN',5,25),('CHN',2,29),('CHN',4,29),('JPN',1,29),('JPN',2,29),('JPN',3,29),('JPN',4,29),('JPN',5,29),('KRN',1,29),('KRN',2,29),('KRN',3,29),('CHN',3,30),('CHN',3,31),('KRN',5,31),('CHN',1,34),('JPN',1,34),('JPN',4,34),('KRN',2,34),('KRN',3,34),('CHN',1,35),('JPN',2,35),('KRN',1,36),('KRN',2,36),('KRN',3,36),('KRN',4,36),('KRN',5,36);
/*!40000 ALTER TABLE `comic_genre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-28 21:40:59
