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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Sno` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(30) DEFAULT NULL,
  `Email_id` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `allnovel`
--

DROP TABLE IF EXISTS `allnovel`;
/*!50001 DROP VIEW IF EXISTS `allnovel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allnovel` AS SELECT 
 1 AS `Book_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bookgenre`
--

DROP TABLE IF EXISTS `bookgenre`;
/*!50001 DROP VIEW IF EXISTS `bookgenre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bookgenre` AS SELECT 
 1 AS `Book_id`,
 1 AS `Genre_id`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Temporary view structure for view `comicdifference`
--

DROP TABLE IF EXISTS `comicdifference`;
/*!50001 DROP VIEW IF EXISTS `comicdifference`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comicdifference` AS SELECT 
 1 AS `Origin_id`,
 1 AS `Comic_id`,
 1 AS `Genre_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `comicresult`
--

DROP TABLE IF EXISTS `comicresult`;
/*!50001 DROP VIEW IF EXISTS `comicresult`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comicresult` AS SELECT 
 1 AS `Origin_id`,
 1 AS `Comic_id`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Temporary view structure for view `crossjoin`
--

DROP TABLE IF EXISTS `crossjoin`;
/*!50001 DROP VIEW IF EXISTS `crossjoin`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `crossjoin` AS SELECT 
 1 AS `Genre_id`,
 1 AS `Book_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `diff`
--

DROP TABLE IF EXISTS `diff`;
/*!50001 DROP VIEW IF EXISTS `diff`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `diff` AS SELECT 
 1 AS `Genre_id`,
 1 AS `Book_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `differ`
--

DROP TABLE IF EXISTS `differ`;
/*!50001 DROP VIEW IF EXISTS `differ`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `differ` AS SELECT 
 1 AS `Genre_id`,
 1 AS `Book_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `difference`
--

DROP TABLE IF EXISTS `difference`;
/*!50001 DROP VIEW IF EXISTS `difference`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `difference` AS SELECT 
 1 AS `Book_id`,
 1 AS `Genre_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `distinctbook`
--

DROP TABLE IF EXISTS `distinctbook`;
/*!50001 DROP VIEW IF EXISTS `distinctbook`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `distinctbook` AS SELECT 
 1 AS `Book_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `distinctcomic`
--

DROP TABLE IF EXISTS `distinctcomic`;
/*!50001 DROP VIEW IF EXISTS `distinctcomic`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `distinctcomic` AS SELECT 
 1 AS `Origin_id`,
 1 AS `Comic_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `Genre_id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(15) NOT NULL,
  PRIMARY KEY (`Genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Adventure'),(2,'Action'),(3,'Adult'),(4,'Comedy'),(5,'Cooking'),(6,'Doujinshi'),(7,'Drama'),(8,'Ecchi'),(9,'Fantasy'),(10,'Gender-Bender'),(11,'Harem'),(12,'Historical'),(13,'Horror'),(14,'Isekai'),(15,'Josei'),(16,'Martial Arts'),(17,'Mature'),(18,'Mecha'),(19,'Medical'),(20,'Mystery'),(21,'Oneshot'),(22,'Psychological'),(23,'Romance'),(24,'School life'),(25,'Sci-fi'),(26,'Seinen'),(27,'Shoujo'),(28,'Shoujo ai'),(29,'Shounen'),(30,'Shounen ai'),(31,'Slice of life'),(32,'Smut'),(33,'Sports'),(34,'Supernatural'),(35,'Tragedy'),(36,'Webtoons'),(37,'Yaoi'),(38,'Yuri');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mangagenre`
--

DROP TABLE IF EXISTS `mangagenre`;
/*!50001 DROP VIEW IF EXISTS `mangagenre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mangagenre` AS SELECT 
 1 AS `Origin_id`,
 1 AS `Comic_id`,
 1 AS `Genre_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `novel`
--

DROP TABLE IF EXISTS `novel`;
/*!50001 DROP VIEW IF EXISTS `novel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `novel` AS SELECT 
 1 AS `Genre_id`,
 1 AS `Book_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `novel_genre`
--

DROP TABLE IF EXISTS `novel_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novel_genre` (
  `Genre_id` int NOT NULL,
  `Book_id` int NOT NULL,
  PRIMARY KEY (`Genre_id`,`Book_id`),
  KEY `Book_id` (`Book_id`),
  CONSTRAINT `novel_genre_ibfk_1` FOREIGN KEY (`Genre_id`) REFERENCES `genre` (`Genre_id`) ON DELETE CASCADE,
  CONSTRAINT `novel_genre_ibfk_2` FOREIGN KEY (`Book_id`) REFERENCES `novels` (`Book_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novel_genre`
--

LOCK TABLES `novel_genre` WRITE;
/*!40000 ALTER TABLE `novel_genre` DISABLE KEYS */;
INSERT INTO `novel_genre` VALUES (1,1),(2,1),(7,1),(9,1),(22,1),(1,2),(9,2),(9,3),(25,3),(7,4),(23,4),(31,4),(1,5),(2,5),(4,5),(7,5),(9,5),(11,5),(20,5),(22,5),(23,5);
/*!40000 ALTER TABLE `novel_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novels`
--

DROP TABLE IF EXISTS `novels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novels` (
  `Book_id` int NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  `Origin` char(15) DEFAULT NULL,
  `Total_Chapters` int DEFAULT NULL,
  `Release_Date` int DEFAULT NULL,
  `Last_Updated` date DEFAULT NULL,
  `Author_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novels`
--

LOCK TABLES `novels` WRITE;
/*!40000 ALTER TABLE `novels` DISABLE KEYS */;
INSERT INTO `novels` VALUES (1,'Omniscient Reader\'s Viewpoint','Completed','Korean',551,2018,'2020-03-06','Shing-Shong'),(2,'Only I Level Up Alone','Completed','Korean',270,2016,'2018-04-18','Chugong'),(3,'Embers ad Infinitum','Ongoing','Chinese',676,2020,'2021-12-26','Cuttlefish that loves diving'),(4,'A Game to Make Him Fall','Completed','Japanese',1,2016,NULL,'Kare wo Kanrakusareru Game'),(5,'Sevens','Completed','Japanese',367,2014,'2018-06-18','Mishima Yomu');
/*!40000 ALTER TABLE `novels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `r`
--

DROP TABLE IF EXISTS `r`;
/*!50001 DROP VIEW IF EXISTS `r`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `r` AS SELECT 
 1 AS `Book_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `result`
--

DROP TABLE IF EXISTS `result`;
/*!50001 DROP VIEW IF EXISTS `result`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `result` AS SELECT 
 1 AS `Book_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `selectedgenre`
--

DROP TABLE IF EXISTS `selectedgenre`;
/*!50001 DROP VIEW IF EXISTS `selectedgenre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `selectedgenre` AS SELECT 
 1 AS `Genre_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `try1`
--

DROP TABLE IF EXISTS `try1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `try1` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `try1`
--

LOCK TABLES `try1` WRITE;
/*!40000 ALTER TABLE `try1` DISABLE KEYS */;
INSERT INTO `try1` VALUES (1,'a'),(2,'b');
/*!40000 ALTER TABLE `try1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `allnovel`
--

/*!50001 DROP VIEW IF EXISTS `allnovel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allnovel` AS select `novel_genre`.`Book_id` AS `Book_id` from `novel_genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bookgenre`
--

/*!50001 DROP VIEW IF EXISTS `bookgenre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookgenre` AS select `distinctbook`.`Book_id` AS `Book_id`,`selectedgenre`.`Genre_id` AS `Genre_id` from (`distinctbook` join `selectedgenre`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comicdifference`
--

/*!50001 DROP VIEW IF EXISTS `comicdifference`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comicdifference` AS select `mangagenre`.`Origin_id` AS `Origin_id`,`mangagenre`.`Comic_id` AS `Comic_id`,`mangagenre`.`Genre_id` AS `Genre_id` from `mangagenre` where (`mangagenre`.`Origin_id`,`mangagenre`.`Comic_id`,`mangagenre`.`Genre_id`) in (select `comic_genre`.`Origin_id`,`comic_genre`.`Comic_id`,`comic_genre`.`Genre_id` from `comic_genre`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comicresult`
--

/*!50001 DROP VIEW IF EXISTS `comicresult`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comicresult` AS select distinct `comic_genre`.`Origin_id` AS `Origin_id`,`comic_genre`.`Comic_id` AS `Comic_id` from `comic_genre` where (`comic_genre`.`Origin_id`,`comic_genre`.`Comic_id`) in (select `comicdifference`.`Origin_id`,`comicdifference`.`Comic_id` from `comicdifference`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `crossjoin`
--

/*!50001 DROP VIEW IF EXISTS `crossjoin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `crossjoin` AS select `selectedgenre`.`Genre_id` AS `Genre_id`,`allnovel`.`Book_id` AS `Book_id` from (`selectedgenre` join `allnovel`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `diff`
--

/*!50001 DROP VIEW IF EXISTS `diff`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `diff` AS select `crossjoin`.`Genre_id` AS `Genre_id`,`crossjoin`.`Book_id` AS `Book_id` from `crossjoin` where (`crossjoin`.`Genre_id`,`crossjoin`.`Book_id`) in (select `novel`.`Genre_id`,`novel`.`Book_id` from `novel`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `differ`
--

/*!50001 DROP VIEW IF EXISTS `differ`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `differ` AS select `crossjoin`.`Genre_id` AS `Genre_id`,`crossjoin`.`Book_id` AS `Book_id` from `crossjoin` where (`crossjoin`.`Genre_id`,`crossjoin`.`Book_id`) in (select `novel`.`Genre_id`,`novel`.`Book_id` from `novel`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `difference`
--

/*!50001 DROP VIEW IF EXISTS `difference`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `difference` AS select `bookgenre`.`Book_id` AS `Book_id`,`bookgenre`.`Genre_id` AS `Genre_id` from `bookgenre` where (`bookgenre`.`Book_id`,`bookgenre`.`Genre_id`) in (select `novel_genre`.`Book_id`,`novel_genre`.`Genre_id` from `novel_genre`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `distinctbook`
--

/*!50001 DROP VIEW IF EXISTS `distinctbook`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `distinctbook` AS select distinct `novel_genre`.`Book_id` AS `Book_id` from `novel_genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `distinctcomic`
--

/*!50001 DROP VIEW IF EXISTS `distinctcomic`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `distinctcomic` AS select distinct `comic_genre`.`Origin_id` AS `Origin_id`,`comic_genre`.`Comic_id` AS `Comic_id` from `comic_genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mangagenre`
--

/*!50001 DROP VIEW IF EXISTS `mangagenre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mangagenre` AS select `distinctcomic`.`Origin_id` AS `Origin_id`,`distinctcomic`.`Comic_id` AS `Comic_id`,`selectedgenre`.`Genre_id` AS `Genre_id` from (`distinctcomic` join `selectedgenre`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `novel`
--

/*!50001 DROP VIEW IF EXISTS `novel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `novel` AS select `novel_genre`.`Genre_id` AS `Genre_id`,`novel_genre`.`Book_id` AS `Book_id` from `novel_genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `r`
--

/*!50001 DROP VIEW IF EXISTS `r`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `r` AS select `novel_genre`.`Book_id` AS `Book_id` from `novel_genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `result`
--

/*!50001 DROP VIEW IF EXISTS `result`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `result` AS select `novels`.`Book_id` AS `Book_id` from `novels` where (`novels`.`Total_Chapters` > 500) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `selectedgenre`
--

/*!50001 DROP VIEW IF EXISTS `selectedgenre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `selectedgenre` AS select `genre`.`Genre_id` AS `Genre_id` from `genre` where (`genre`.`Name` in ('Romance','Drama')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-28 21:46:06
