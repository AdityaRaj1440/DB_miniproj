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
-- Table structure for table `comics`
--

DROP TABLE IF EXISTS `comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comics` (
  `Origin_id` char(3) NOT NULL,
  `Comic_id` int NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Status` char(10) DEFAULT NULL,
  `Total_Chapters` int DEFAULT NULL,
  `Other_Media` char(2) DEFAULT NULL,
  PRIMARY KEY (`Origin_id`,`Comic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics`
--

LOCK TABLES `comics` WRITE;
/*!40000 ALTER TABLE `comics` DISABLE KEYS */;
INSERT INTO `comics` VALUES ('CHN',1,'Versatile Mage','Ongoing',804,'Y'),('CHN',2,'Tales of Demons and Gods','Ongoing',367,'N'),('CHN',3,'19 Days','Ongoing',377,'N'),('CHN',4,'Journey to the West','Ongoing',114,'N'),('JPN',1,'Jujutsu Kaisen','Ongoing',170,'Y'),('JPN',2,'Attack On Titan','Completed',139,'Y'),('JPN',3,'Naruto','Completed',700,'Y'),('JPN',4,'Bleach','Completed',686,'Y'),('JPN',5,'My Hero Academia','Ongoing',338,'Y'),('KRN',1,'Solo Levelling','Ongoing',178,'N'),('KRN',2,'Tower Of God','Ongoing',523,'Y'),('KRN',3,'The God of High School','Ongoing',526,'Y'),('KRN',4,'Omniscient Reader\'s Viewpoint','Ongoing',86,'N'),('KRN',5,'Peerless Dad','Ongoing',200,'N');
/*!40000 ALTER TABLE `comics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-28 21:41:01
