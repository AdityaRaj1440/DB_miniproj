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
  `ApiKey` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `ApiKey` (`ApiKey`)
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
-- Table structure for table `adaptations`
--

DROP TABLE IF EXISTS `adaptations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adaptations` (
  `Type` varchar(10) NOT NULL,
  `Adapt_id` int NOT NULL,
  `Origin_id` char(3) DEFAULT NULL,
  `Comic_id` int DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Image` varchar(1000) DEFAULT NULL,
  `Url` varchar(1000) DEFAULT NULL,
  `Rating` decimal(4,2) DEFAULT NULL,
  `Release_Date` date DEFAULT NULL,
  PRIMARY KEY (`Type`,`Adapt_id`),
  KEY `Origin_id` (`Origin_id`,`Comic_id`),
  CONSTRAINT `adaptations_ibfk_1` FOREIGN KEY (`Origin_id`, `Comic_id`) REFERENCES `comics` (`Origin_id`, `Comic_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adaptations`
--

LOCK TABLES `adaptations` WRITE;
/*!40000 ALTER TABLE `adaptations` DISABLE KEYS */;
INSERT INTO `adaptations` VALUES ('ANI',1,'CHN',1,'Versatile Mage','https://cdn.myanimelist.net/images/manga/2/253595.jpg','',7.20,NULL),('ANI',2,'JPN',1,'Jujutsu Kaisen','https://cdn.myanimelist.net/images/anime/1171/109222.jpg','',8.71,NULL),('ANI',3,'JPN',2,'Attack on Titan','https://cdn.myanimelist.net/images/anime/10/47347.jpg','',8.50,NULL),('ANI',4,'JPN',3,'Naruto','https://cdn.myanimelist.net/images/anime/13/17405.jpg','',7.96,NULL),('ANI',5,'JPN',4,'Bleach','https://cdn.myanimelist.net/images/anime/3/40451.jpg','',7.83,NULL),('ANI',6,'JPN',5,'My Hero Academia','https://cdn.myanimelist.net/images/anime/10/78745.jpg','',7.97,NULL),('ANI',7,'JPN',6,'One Piece','https://cdn.myanimelist.net/images/anime/6/73245.jpg','',8.62,NULL),('ANI',8,'JPN',7,'Fairy Tail','https://cdn.myanimelist.net/images/anime/5/18179.jpg','',7.60,NULL),('ANI',9,'JPN',8,'Claymore','https://cdn.myanimelist.net/images/anime/3/21834.jpg','',7.76,NULL),('ANI',10,'JPN',10,'Hajime No Ippo','https://cdn.myanimelist.net/images/anime/4/86334.jpg','',8.74,NULL),('ANI',11,'JPN',11,'Fullmetal Alchemist','https://cdn.myanimelist.net/images/anime/10/75815.jpg','',8.13,NULL),('ANI',12,'JPN',12,'Gintama','https://cdn.myanimelist.net/images/anime/10/73274.jpg','',8.95,NULL),('ANI',13,'JPN',13,'Steins:Gate','https://cdn.myanimelist.net/images/anime/5/73199.jpg','',9.09,NULL),('ANI',14,'JPN',14,'Hunter X Hunter','https://cdn.myanimelist.net/images/anime/1337/99013.jpg','',9.05,NULL),('ANI',15,'JPN',15,'Clannad','https://cdn.myanimelist.net/images/anime/1804/95033.jpg','',8.02,NULL),('ANI',16,'JPN',16,'One Punch Man','https://cdn.myanimelist.net/images/anime/12/76049.jpg','',8.52,NULL),('ANI',17,'JPN',17,'Monster','https://cdn.myanimelist.net/images/anime/10/18793.jpg','',8.81,NULL),('ANI',18,'JPN',18,'Death Note','https://cdn.myanimelist.net/images/anime/9/9453.jpg','',8.63,NULL),('ANI',19,'JPN',19,'Haikyuu!!','https://cdn.myanimelist.net/images/anime/7/76014.jpg','',8.46,NULL),('ANI',20,'JPN',20,'Shokugeki no Suma','https://cdn.myanimelist.net/images/anime/3/72943.jpg','',8.20,NULL),('ANI',21,'JPN',21,'Hellsing','https://cdn.myanimelist.net/images/anime/10/19956.jpg','',7.49,NULL),('ANI',22,'JPN',22,'No Game No Life','https://cdn.myanimelist.net/images/anime/1074/111944.jpg','',8.13,NULL),('ANI',23,'JPN',23,'Nodame Cantabile','https://cdn.myanimelist.net/images/anime/9/11986.jpg','',8.29,NULL),('ANI',24,'JPN',24,'Berserk','https://cdn.myanimelist.net/images/anime/10/79352.jpg','',6.31,NULL),('ANI',25,'JPN',25,'Kuroshitshuji','https://cdn.myanimelist.net/images/anime/5/27013.jpg','',7.69,NULL),('ANI',26,'KRN',2,'Tower of God','https://cdn.myanimelist.net/images/anime/1702/106229.jpg','',7.58,NULL),('ANI',27,'KRN',3,'The God of High School','https://cdn.myanimelist.net/images/anime/1722/107269.jpg','',7.06,NULL),('LIV',1,'JPN',2,'Attack on Titan','https://upload.wikimedia.org/wikipedia/en/7/73/Attack_on_Titan_%28film%29_poster.jpeg',NULL,5.00,NULL),('LIV',2,'JPN',4,'Bleach','https://upload.wikimedia.org/wikipedia/en/4/47/Bleach_%282018_film%29_poster.jpg',NULL,6.40,NULL),('LIV',3,'JPN',5,'My Hero Academia','',NULL,0.00,NULL),('LIV',4,'JPN',6,'One Piece','https://static0.cbrimages.com/wordpress/wp-content/uploads/2020/02/Featured-Image-One-Piece-Indeed-Commercial-Cropped.jpg?q=50&fit=crop&w=960&h=500&dpr=1.5',NULL,0.00,NULL),('LIV',5,'JPN',11,'Fullmetal Alchemist','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSIW7EYTEn-Kx0HWkuV73RT-5UHrlET38NBKOvczYk4Trr0Xr6c',NULL,5.20,NULL),('LIV',6,'JPN',12,'Gintama','https://upload.wikimedia.org/wikipedia/en/f/f1/Gintama_%28film%29%2C_Theatrical_release_poster.jpg',NULL,6.10,NULL),('LIV',7,'JPN',18,'Death Note','https://upload.wikimedia.org/wikipedia/en/3/36/Death_Note_%28film%29_poster.jpeg',NULL,7.60,NULL),('LIV',8,'JPN',18,'Death Note 2: The Last Name','https://upload.wikimedia.org/wikipedia/en/3/31/Death_Note_2_The_Last_Name_poster.jpeg',NULL,7.20,NULL),('LIV',9,'JPN',18,'L: Change the World ','https://upload.wikimedia.org/wikipedia/en/1/1b/L_%E2%80%93_Change_the_World_%282008_film%29_poster.jpg',NULL,6.10,NULL),('LIV',10,'JPN',18,'Death Note: New Generation','https://upload.wikimedia.org/wikipedia/en/6/67/Death_Note_New_Generation_poster.jpeg',NULL,5.70,NULL),('LIV',11,'JPN',18,'Death Note: Light Up the New World','https://upload.wikimedia.org/wikipedia/en/9/97/Death_Note_Light_Up_the_New_World_poster.jpeg',NULL,5.70,NULL),('LIV',12,'JPN',18,'Death Note (2017 film)','https://upload.wikimedia.org/wikipedia/en/6/6c/DeathNotePoster.jpg',NULL,4.40,NULL),('LIV',13,'JPN',18,'Death Note (2015 TV series)','https://upload.wikimedia.org/wikipedia/en/b/bc/DeathNote%28tv_series%29-poster.jpg',NULL,7.00,NULL),('LIV',14,'JPN',23,'Nodame Cantabile (live-action TV drama)','https://cdn.animenewsnetwork.com/thumbnails/max500x600/encyc/A7169-4.jpg',NULL,8.00,NULL),('LIV',15,'JPN',23,'Nodame Cantabile in Europe (live-action special)','https://cdn.animenewsnetwork.com/thumbnails/max500x600/encyc/A9749-10.jpg',NULL,7.40,NULL),('LIV',16,'JPN',23,'Nodame Cantabile Saish? Gakush? (live-action movie)','https://cdn.animenewsnetwork.com/thumbnails/fit200x200/encyc/A20570-3217228290.1516609638.jpg',NULL,7.00,NULL),('LIV',17,'JPN',25,'Black Butler (film)','https://upload.wikimedia.org/wikipedia/en/c/c7/Black-butler-film-poster.jpg',NULL,6.20,NULL);
/*!40000 ALTER TABLE `adaptations` ENABLE KEYS */;
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
INSERT INTO `comic_genre` VALUES ('CHN',1,1),('CHN',2,1),('CHN',4,1),('JPN',2,1),('JPN',3,1),('JPN',4,1),('JPN',6,1),('JPN',7,1),('JPN',8,1),('JPN',11,1),('JPN',12,1),('JPN',14,1),('JPN',18,1),('JPN',22,1),('JPN',24,1),('KRN',1,1),('KRN',2,1),('KRN',3,1),('KRN',4,1),('CHN',1,2),('CHN',2,2),('CHN',4,2),('JPN',1,2),('JPN',2,2),('JPN',3,2),('JPN',4,2),('JPN',5,2),('JPN',6,2),('JPN',7,2),('JPN',8,2),('JPN',9,2),('JPN',10,2),('JPN',11,2),('JPN',12,2),('JPN',14,2),('JPN',16,2),('JPN',18,2),('JPN',21,2),('JPN',24,2),('JPN',25,2),('KRN',1,2),('KRN',2,2),('KRN',3,2),('KRN',4,2),('KRN',5,2),('JPN',2,3),('JPN',3,3),('JPN',4,3),('JPN',8,3),('JPN',11,3),('JPN',18,3),('CHN',2,4),('CHN',3,4),('JPN',2,4),('JPN',3,4),('JPN',4,4),('JPN',5,4),('JPN',6,4),('JPN',7,4),('JPN',9,4),('JPN',10,4),('JPN',11,4),('JPN',12,4),('JPN',16,4),('JPN',18,4),('JPN',19,4),('JPN',20,4),('JPN',21,4),('JPN',22,4),('JPN',23,4),('JPN',25,4),('KRN',2,4),('KRN',3,4),('KRN',5,4),('JPN',20,5),('JPN',2,6),('JPN',3,6),('JPN',4,6),('JPN',8,6),('JPN',11,6),('JPN',18,6),('CHN',1,7),('CHN',2,7),('JPN',2,7),('JPN',3,7),('JPN',4,7),('JPN',6,7),('JPN',10,7),('JPN',11,7),('JPN',12,7),('JPN',13,7),('JPN',14,7),('JPN',15,7),('JPN',17,7),('JPN',18,7),('JPN',19,7),('JPN',20,7),('JPN',23,7),('JPN',25,7),('KRN',2,7),('KRN',5,7),('JPN',20,8),('JPN',22,8),('CHN',1,9),('CHN',2,9),('CHN',4,9),('JPN',2,9),('JPN',3,9),('JPN',4,9),('JPN',5,9),('JPN',6,9),('JPN',7,9),('JPN',8,9),('JPN',11,9),('JPN',14,9),('JPN',15,9),('JPN',16,9),('JPN',18,9),('JPN',22,9),('JPN',24,9),('KRN',1,9),('KRN',2,9),('KRN',4,9),('KRN',5,9),('CHN',2,11),('JPN',15,11),('JPN',11,12),('JPN',12,12),('JPN',25,12),('JPN',2,13),('JPN',4,13),('JPN',9,13),('JPN',18,13),('JPN',21,13),('JPN',24,13),('JPN',23,15),('CHN',1,16),('CHN',4,16),('JPN',3,16),('JPN',4,16),('KRN',3,16),('KRN',5,16),('JPN',2,17),('JPN',8,17),('JPN',16,17),('JPN',21,17),('JPN',24,17),('JPN',2,20),('JPN',8,20),('JPN',11,20),('JPN',13,20),('JPN',16,20),('JPN',17,20),('JPN',18,20),('JPN',25,20),('KRN',2,20),('JPN',2,22),('JPN',11,22),('JPN',14,22),('JPN',16,22),('JPN',17,22),('JPN',18,22),('KRN',2,22),('CHN',2,23),('JPN',15,23),('JPN',23,23),('CHN',1,24),('CHN',3,24),('JPN',5,24),('JPN',15,24),('JPN',20,24),('JPN',23,24),('JPN',5,25),('JPN',9,25),('JPN',11,25),('JPN',12,25),('JPN',13,25),('JPN',16,25),('JPN',13,26),('JPN',16,26),('JPN',17,26),('JPN',21,26),('JPN',24,26),('CHN',2,29),('CHN',4,29),('JPN',1,29),('JPN',2,29),('JPN',3,29),('JPN',4,29),('JPN',5,29),('JPN',6,29),('JPN',7,29),('JPN',8,29),('JPN',10,29),('JPN',11,29),('JPN',12,29),('JPN',14,29),('JPN',15,29),('JPN',18,29),('JPN',19,29),('JPN',20,29),('JPN',25,29),('KRN',1,29),('KRN',2,29),('KRN',3,29),('CHN',3,30),('CHN',3,31),('JPN',15,31),('JPN',19,31),('JPN',23,31),('KRN',5,31),('JPN',10,33),('JPN',19,33),('CHN',1,34),('JPN',1,34),('JPN',4,34),('JPN',11,34),('JPN',16,34),('JPN',18,34),('JPN',21,34),('JPN',22,34),('JPN',24,34),('JPN',25,34),('KRN',2,34),('KRN',3,34),('CHN',1,35),('JPN',2,35),('JPN',8,35),('JPN',14,35),('JPN',15,35),('JPN',18,35),('JPN',24,35),('KRN',1,36),('KRN',2,36),('KRN',3,36),('KRN',4,36),('KRN',5,36);
/*!40000 ALTER TABLE `comic_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `comic_result`
--

DROP TABLE IF EXISTS `comic_result`;
/*!50001 DROP VIEW IF EXISTS `comic_result`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comic_result` AS SELECT 
 1 AS `Origin_id`,
 1 AS `Comic_id`,
 1 AS `Name`,
 1 AS `Status`,
 1 AS `Total_Chapters`,
 1 AS `Other_Media`,
 1 AS `Url`,
 1 AS `Image`,
 1 AS `Synopsis`*/;
SET character_set_client = @saved_cs_client;

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
  `Url` varchar(100) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Synopsis` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`Origin_id`,`Comic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics`
--

LOCK TABLES `comics` WRITE;
/*!40000 ALTER TABLE `comics` DISABLE KEYS */;
INSERT INTO `comics` VALUES ('CHN',1,'Versatile Mage','Ongoing',804,'Y','https://chap.manganelo.com/manga-bf116425','https://avt.mkklcdnv6temp.com/33/a/16-1583494657.jpg','He awoke, and the world was changed. The familiar high school now teaches magic, encouraging students to become the greatest magicians they can be. Beyond the city limits, wandering magical beasts prey on humans. An advanced scientific world changed into one with advanced magic. Yet, what has not changed was the same teacher who looks upon him with disdain, the same students who look upon him with contempt, the same father who struggles at the bottom rung of society, and the same innocent step sister who cannot walk. However, Mo Fan discovered that while everyone else can only use one major element, he himself can use all magic!'),('CHN',2,'Tales of Demons and Gods','Ongoing',367,'N','https://chap.manganelo.com/manga-ax89091','https://avt.mkklcdnv6temp.com/19/v/1-1583464475.jpg','Nie Li, one of the strongest Demon Spiritist in his past life standing at the pinnacle of the martial world , however he lost his life during the battle with Sage Emperor and the six deity ranked beast, his soul was then reborn back in time back to when he is still 13. Although he?s the weakest in his class with the lowest talent at only Red soul realm, with the aid of the vast knowledge which he accumulated in his previous life, he trained faster then anyone. Trying to protect the city which in the coming future was being assaulted by beast and ended up being destroyed as well as protecting his lover, friends and family who died by the beast assault. and to destroy the Sacred family whom abandon their duty and betrayed the city in his past life.'),('CHN',3,'19 Days','Ongoing',377,'N','https://chap.manganelo.com/manga-ep89135','https://avt.mkklcdnv6temp.com/21/k/1-1583464539.jpg','The super cute and funny adventures of a boy and his BFF(best friend forever). You\'ll find out the names of the main characters after 113 pictures(maybe).'),('CHN',4,'Journey to the West','Ongoing',114,'N','https://chap.manganelo.com/manga-yi113028','https://avt.mkklcdnv6temp.com/17/y/15-1583492109.jpg','The journey to the West was a conspiracy of heaven! After Sutra (Buddhist sacred texts) went missing for more than a decade, Heaven sent its army to search, in order not to let the Sutra once again fall into the hands of heaven, the journey to West begins again.'),('JPN',1,'Jujutsu Kaisen','Ongoing',170,'Y','https://chap.manganelo.com/manga-ba116346','https://avt.mkklcdnv6temp.com/30/d/16-1583494554.jpg','Yuuji is a genius at track and field. But he has zero interest running around in circles, he\'s happy as a clam in the Occult Research Club. Although he\'s only in the club for kicks, things get serious when a real spirit shows up at school! Life\'s about to get really strange in Sugisawa Town #3 High School!'),('JPN',2,'Attack On Titan','Completed',139,'Y','https://chap.manganelo.com/manga-oa89494','https://avt.mkklcdnv6temp.com/34/b/1-1583465037.jpg','It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans; the story follows Eren Yeager, who vows to exterminate the Titans after a Titan brings about the destruction of his hometown and the death of his mother. '),('JPN',3,'Naruto','Completed',700,'Y','https://chap.manganelo.com/manga-ng89900','https://avt.mkklcdnv6temp.com/48/g/1-1583465604.jpg','When he was a child, Naruto was isolated from its community. The people in the village treated him as he was Nine-Tails itself and don\'t want him. None in the village had the right to mention the Nine-Tails, in order to prevent Naruto from finding the truth. But 12 years later, he finds out the truth from ninja Mizuki, who told him. Some time later, Naruto becomes a ninja and usually competes against other teams, and they form a three-person team by the name Team 7. Like all the other similar teams in every village, the Team 7 has to complete missions that are requested by the villagers, ranging from being bodyguards or doing chores. After participating in a number of missions, the Team 7 is allowed to take place in an exam, in order to move up in hierarchy and be able to be involved in more difficult missions. After 2,5 years, Naruto returns from training and he continued with his team to fight the Akatsuki members.'),('JPN',4,'Bleach','Completed',686,'Y','https://chap.manganelo.com/manga-qq88636','https://avt.mkklcdnv6temp.com/4/i/1-1583463837.jpg','Kurosaki is a soul reaper commonly known as Shinigami in Japan and he gained powers from Rukia Kuchiki. In his quest to defend humans from evil spirits, Kurosaki pushes them into after life. '),('JPN',5,'My Hero Academia','Ongoing',338,'Y','https://w30.readheroacademia.com/','https://avt.mkklcdnv6temp.com/23/e/1-1583464609.jpg','Izuku Midoriya was only a regular middle school pupil in a world where individuals with superpowers known as \"Quirks\" will be the standard. Nevertheless, he dreams of one day being a Hero, for lacking a Quirk, despite being intimidated by his classmates. The storyline follows Izuku\'s entry into U.A. High School , a school that educates the next generation of Heroes.'),('JPN',6,'One Piece','Ongoing',1035,'Y','https://chap.manganelo.com/manga-aa88620','https://avt.mkklcdnv6temp.com/3/u/1-1583463814.jpg','One Piece follows the adventurous and funny story of Monkey D. Luffy. As a boy, Luffy has always wanted to be the Pirate King. His body obtained the properties of rubber after eating a Devil Fruit. Together with a diverse crew of wannabe pirates, Luffy sets out on the ocean in an attempt to find the world?s ultimate treasure, One Piece.'),('JPN',7,'Fairy Tail','Completed',545,'Y','https://chap.manganelo.com/manga-tk89278','https://avt.mkklcdnv6temp.com/26/p/1-1583464737.jpg','Celestial wizard Lucy wants to join the Fairy Tail, a guild for the most powerful wizards. But instead, her ambitions land her in the clutches of a gang of unsavory pirates led by a devious magician. Her only hope is Natsu, a strange boy she happens to meet on her travels. Natsu\'s not your typical hero - but he just might be Lucy\'s best hope.'),('JPN',8,'Claymore','Completed',155,'Y','https://chap.manganelo.com/manga-ha97120','https://avt.mkklcdnv6temp.com/31/l/6-1583475400.jpg','Show is set on a fictional medieval island where people are harassed by Yoma, humanoid shape-shifters that feed on people. A cryptic group, called The Organization, creates human-Yoma hybrid vehicles to kill Yoma for a fee. These female warriors wear uniforms that are armored.'),('JPN',9,'Kaiju No. 8','Ongoing',53,'N','https://chap.manganelo.com/manga-in123133','https://avt.mkklcdnv6temp.com/36/j/21-1595608305.jpg','A man, unhappy with the work he has had to do in life, is involved in an unexpected event ...! He becomes a Kaijuu, a monstrous creature, giving him a new chance to achieve what he always dreamed of!'),('JPN',10,'Hajime No Ippo','Ongoing',1365,'Y','https://m.manganelo.com/manga-ls88686','https://avt.mkklcdnv6temp.com/6/a/1-1583463897.jpg','Several bullies directed by Umezawa got into the practice of picking on him, because he kept to himself. One day, he was given a somewhat serious beating by these bullies. A middleweight professional fighter who was passing by to treat his wounds and took the wounded Ippo to the Kamogawa Gym,owned by retired fighter Genji Kamogawa, stopped the bullies. After Ippo woke to the sounds of fighters training, the fighter who saved him, Mamoru Takamura, strove to cheer upward Ippo by letting him vent his frustrations on a sandbag. It was then that they had their first peek into Ippo\'s gift for boxing.'),('JPN',11,'Fullmetal Alchemist','Completed',108,'Y','https://chap.manganelo.com/manga-uh93175','https://avt.mkklcdnv6temp.com/47/t/3-1583469558.jpg','When a failed alchemical ritual leaves brothers Edward and Alphonse Elric with severely damaged bodies, they begin searching for the one thing that can save them; the fabled philosopher\'s stone.'),('JPN',12,'Gintama','Ongoing',704,'Y','https://chap.manganelo.com/manga-sc93048','https://avt.mkklcdnv6temp.com/43/d/3-1583469370.jpg','Sakata Gintoki is a samurai living in an era when samurai are no longer needed. To add to his troubles, oppressive aliens have moved in to invade. Gintoki lives with Kagura and Shinpachi, taking on odd jobs to make the world a better place... and to pay their rent.'),('JPN',13,'Steins:Gate','Completed',18,'Y','https://chap.manganelo.com/manga-mu100740','https://avt.mkklcdnv6temp.com/1/u/8-1583480163.jpg','The story of Steins;Gate takes place in Akihabara and is about a group of friends who have managed to customize their microwave into a device that can send text messages to the past. As they perform different experiments, an organization named SERN who has been doing their own research on time travel tracks them down and now the characters have to find a way to avoid being captured by them.'),('JPN',14,'Hunter X Hunter','Hiatus',390,'Y','https://chap.manganelo.com/manga-oc92596','https://avt.mkklcdnv6temp.com/35/w/3-1583469086.jpg','This story stars with a main character who is a boy named Gon Freecss. He originally thought his father was dead but found out this was a lie and his father was actually alive and a hunter famous throughout the world. Whether it was hunting down treasure, dangerous outlaws on the loose, rare animals, or lost civilizations, there were plenty of adventures available to go on. This led to Gon pursuing his father and looking to follow in those famous footsteps by going on major adventures of his own. After all, the hunting genes run in the family.'),('JPN',15,'Clannad','Completed',45,'Y','https://chap.manganelo.com/manga-hc97122','https://avt.mkklcdnv6temp.com/31/n/6-1583475402.jpg','Clannad is set in a high-school located in a Japanese town. Tomoya Okazaki is a third-year student who doesn\'t take his studies seriously. Always late for class, he\'s seen as a delinquent by the rest of his classmates who are busy preparing for their entrance examinations. Needless to say, he doesn\'t have too many close friends either. Tomoya seems not to mind too--until he meets a few other girls from his school. Though he doesn\'t care much about them at first, he soon opens his heart to them as they get to know each other better. Clannad is a romantic youth drama that\'s likely to be more down-to-earth than Key\'s other works. But like Kanon and Air, Clannad\'s story is expected to be another touching and heart-breaking weeper. '),('JPN',16,'One Punch Man','Ongoing',152,'Y','https://chap.manganelo.com/manga-wd89049','https://avt.mkklcdnv6temp.com/18/f/1-1583464405.jpg','One punch-Man imitates the life of an average hero who wins all of his fights with only one punch! This is why he is called Onepunch man Manga. This story takes place in the fictional Z-City. The world is full of mysterious beings, villains and monsters that cause destruction and havoc. An association of heroes has been established to protect the citizens from all harms and enemies. People with superhuman ability can register themselves with the association that protects citizens. There, they will be required to take a series of tests to determine their ability and what class they are. Class S being the highest and class C being the lowest.'),('JPN',17,'Monster','Completed',156,'Y','https://chap.manganelo.com/manga-kr98737','https://avt.mkklcdnv6temp.com/41/i/7-1583477839.jpg','Monster weaves the riveting story of brilliant Dr. Kenzo Tenma, a famous surgeon with a promising career at a leading hospital. Tenma risks his reputation and promising career to save the life of a critically wounded young boy. Unbeknownst to him, this child is destined for a terrible fate. A string of strange and mysterious murders begin to occur soon afterward, ones that professionally benefit Dr. Tenma, and he emerges as the primary suspect. Conspiracies, serial murders, and a scathing depiction of the underbelly of hospital politics are all masterfully woven together in this compelling manga thriller.'),('JPN',18,'Death Note','Completed',112,'Y','https://chap.manganelo.com/manga-bv96541','https://avt.mkklcdnv6temp.com/9/v/6-1583474504.jpg','The storyline follows a high school student who falls upon a supernatural laptop from a shinigami named Ryuk that allows its user the power to kill anyone whose name and face he understands, Light Yagami. The series centres around Light\'s subsequent attempts to make and rule a world \"cleansed of evil\" as a \"God\" using this located laptop, as well as the efforts of a detective called L to stop him. Light Yagami is a blase young prodigy who resents all things bad. His life experiences a radical change when he falls upon the \"Death Note\", a laptop that kills anyone whose name is written inside. After testing with all the laptop, its credibility is confirmed by Light and is joined through an unexpected house guest - the previous owner of the laptop, a shinigami called Ryuk. Light tells Ryuk of his plan to exterminate all of the individuals he considers unfair and wrong in the planet, until only individuals whom he\'s deemed truthful and type stay. Once he ends creating this utopia, he means to rule over it as the self proclaimed \"God of the new world\".'),('JPN',19,'Haikyuu!!','Ongoing',402,'Y','https://chap.manganelo.com/manga-qq88584','https://avt.mkklcdnv6temp.com/2/n/1-1583463761.jpg','Junior high school pupil Shoyo After viewing a nationwide tournament match on Television, Hinata develops a surprising love of volleyball. Although short tall, he becomes motivated to follow in the footsteps of the tournament\'s star player, nick-named the \"Little Giant\", after viewing his plays. He starts practicing by himself and produces a volley-ball club. Eventually 3 members join the group by his past year of middle-school, driving his two buddies that have been in different teams to join solely for the championship to be persuaded by Hinata. Nevertheless, they can be conquered in their very first tournament match after being challenged by the championship favourite team, including the so called \"King of the Court\" Tobio Kageyama, in the initial round. Though the group of Hinata endures a miserable defeat, get the better of him and he vows to finally surpass Kageyama. Fastforward to high school, Hinata enters Karasuno Highschool with all the hopes of joining their club that is volley-ball. Sadly for him, the very man he vowed to surpass seems as among his new team-mates before him'),('JPN',20,'Shokugeki no Souma','Completed',315,'Y','https://chap.manganelo.com/manga-hs89164','https://avt.mkklcdnv6temp.com/22/k/1-1583464578.jpg','It tells us a story of a boy Soma Yukihira. This boy in Shokugeki no Soma dreams of becoming a full-time chef in his father\'s neighbourhood restaurant. His father has taught him his own cooking style called \'Yukihira Style\''),('JPN',21,'Hellsing','Completed',95,'Y','https://m.manganelo.com/manga-yv96215','https://avt.mkklcdnv6temp.com/47/x/5-1583473765.jpg','Vampires exist. It is the duty of Hellsing, an organization sponsored by the British government, to hide that frightening fact and protect the blissfully unaware populace. Along with its own personal army, Hellsing also has a few secret weapons. Alucard, an incredibly powerful vampire, has been controlled by Hellsing for years. Although he dislikes being a servant to the Hellsing family, he certainly enjoys his job as Hellsing?s vampire exterminator. Seras is a fledgling vampire and a former police woman. Although reluctant to embrace her new self, she is still a valuable member of the organization. Integra Hellsing, the current leader, is usually fully capable of fulfilling her duty, but lately, vampire activity has been on the rise. Unfortunately, the cause is more alarming than anything she could have imagined. A group long thought dead has been plotting in secret since their apparent destruction over 50 years ago. Plotting to plunge England, and perhaps the entire world, into war.'),('JPN',22,'No Game No Life','Ongoing',12,'Y','https://m.manganelo.com/manga-lf100525','https://avt.mkklcdnv6temp.com/45/l/8-1583479913.jpg','The internet is full of rumors about the Neet and Hikikomori genius gamer siblings Sora and Shiro. The two go as far as to refer to the world as a \"shit game\", but then one day a young man calling himself \"God\" summons them to a parallel universe. There, God has forbidden war, and \"everything is to be settled with games\". Yes, even the national borders. Driven into a corner by other species, the \'human species\' is down to its last city. Can Sora and Shiro, these related failures of society, become the saviors of humankind in this parallel world?'),('JPN',23,'Nodame Cantabile','Completed',136,'Y','https://m.manganelo.com/manga-ju94688','https://avt.mkklcdnv6temp.com/46/v/4-1583471659.jpg','The son of a famous pianist, music student Shinichi Chiaki dreams of studying abroad and becoming a conductor like his mentor. Unfortunately, his fear of flying grounds his lofty plans! As he watches other classmates achieve what he has always wanted, Shinichi wonders if he should quit music altogether. Then one day he meets fellow student Megumi Noda, also known as Nodame. This oddball girl cannot cook, clean, or even read a music score, but she can play the piano in incomparable Cantabile style. And she teaches Chiaki something that he has forgotten: to enjoy his music, no matter where he is.'),('JPN',24,'Berserk','Abandoned',349,'Y','https://chap.manganelo.com/manga-ma89768','https://avt.mkklcdnv6temp.com/43/o/1-1583465423.jpg',' Place in a medieval Europe-divine the narrative centers on the characters of Guts dark fantasy world, a lone mercenary, and Griffith, the leader of a mercenary group known as the Band of the Hawk. Motifs of camaraderie, isolation, as well as the question of whether mankind is basically good or bad pervade the narrative, as it investigates both the very best and worst of human nature. Both anime and the manga are noticed for their utilization of sexual content and heavy violence.'),('JPN',25,'Kuroshitshuji','Ongoing',182,'Y','https://chap.manganelo.com/manga-kd89197','https://avt.mkklcdnv6temp.com/23/r/1-1583464629.jpg','In the Victorian ages of London The Earl of the Phantomhive house, Ciel Phantomhive, needs to get his revenge on those who had humiliated him and destroyed what he loved. Not being able to do it alone he sells his soul to a demon he names Sebastian Michaelis. Now working as his butler, Sebastian must help the Earl Phantomhive in this suspenseful, exciting, thriller manga. Overcoming many obstacles like Jack the Ripper and Noah\'s Ark Circus in the name of the Queen, Ciel and Sebastian truly make the best characters in this amazing story!'),('KRN',1,'Solo Levelling','Ongoing',178,'N','https://chap.manganelo.com/manga-dr117685','https://avt.mkklcdnv6temp.com/30/a/17-1583496340.jpg','10 years ago, after \"the Gate\" that connected the real world with the monster world opened, some of the ordinary, everyday people received the power to hunt monsters within the Gate. They are known as \"Hunters\". However, not all Hunters are powerful. My name is Sung Jin-Woo, an E-rank Hunter. I\'m someone who has to risk his life in the lowliest of dungeons, the \"World\'s Weakest\". Having no skills whatsoever to display, I barely earned the required money by fighting in low-leveled dungeons? at least until I found a hidden dungeon with the hardest difficulty within the D-rank dungeons! In the end, as I was accepting death, I suddenly received a strange power, a quest log that only I could see, a secret to leveling up that only I know about! If I trained in accordance with my quests and hunted monsters, my level would rise. Changing from the weakest Hunter to the strongest S-rank Hunter!'),('KRN',2,'Tower Of God','Ongoing',523,'Y','https://chap.manganelo.com/manga-aa89094','https://avt.mkklcdnv6temp.com/19/x/1-1583464480.jpg','The storyline centers around a boy called Twenty-Fifth Baam, that has spent his life trapped beneath a tower that was mysterious. Chasing after his only friend, as he attempts to locate his company, he manages to open a door to the Tower, and must face challenges at every floor of the cryptic tower.'),('KRN',3,'The God of High School','Ongoing',526,'Y','https://chap.manganelo.com/manga-xf88799','https://avt.mkklcdnv6temp.com/9/y/1-1583464054.jpg','This full colored manga tells the story of a young 17 high school student named Mori Jin. The main character is an orphan taken in care by his \"grandfather\" without any real blood relation.'),('KRN',4,'Omniscient Reader\'s Viewpoint','Ongoing',86,'N','https://chap.manganelo.com/manga-iw122790','https://avt.mkklcdnv6temp.com/21/z/21-1590949493.jpg','This is a development that I know of.? The moment he thought that, the world had been destroyed, and a new universe had unfolded. The new life of an ordinary reader begins within the world of the novel, a novel that he alone had finished.'),('KRN',5,'Peerless Dad','Ongoing',200,'N','https://chap.manganelo.com/manga-cz116593','https://avt.mkklcdnv6temp.com/39/j/16-1583494878.jpg','Its an amazing story about one martial arts journey through marriage, fatherhood, and battles.');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
-- Temporary view structure for view `novel_result`
--

DROP TABLE IF EXISTS `novel_result`;
/*!50001 DROP VIEW IF EXISTS `novel_result`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `novel_result` AS SELECT 
 1 AS `Book_id`,
 1 AS `Name`,
 1 AS `Status`,
 1 AS `Origin`,
 1 AS `Total_Chapters`,
 1 AS `Release_Date`,
 1 AS `Last_Updated`,
 1 AS `Author_Name`,
 1 AS `Url`,
 1 AS `Image`,
 1 AS `Synopsis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `novelresult`
--

DROP TABLE IF EXISTS `novelresult`;
/*!50001 DROP VIEW IF EXISTS `novelresult`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `novelresult` AS SELECT 
 1 AS `Genre_id`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

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
  `Url` varchar(100) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Synopsis` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`Book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novels`
--

LOCK TABLES `novels` WRITE;
/*!40000 ALTER TABLE `novels` DISABLE KEYS */;
INSERT INTO `novels` VALUES (1,'Omniscient Reader\'s Viewpoint','Completed','Korean',551,2018,'2020-03-06','Shing-Shong','https://boxnovel.com/novel/omniscient-readers-viewpoint-boxnovel/','https://boxnovel.com/wp-content/uploads/2018/09/omniscient-readers-viewpoint-193x278.jpg','Only I know the end of this world. One day our MC finds himself stuck in the world of his favorite webnovel. What does he do to survive? It is a world struck by catastrophe and danger all around. His edge? He knows the plot of the story to end. Because he was the sole reader that stuck with it. Read his story to see how he survives!'),(2,'Only I Level Up Alone','Completed','Korean',270,2016,'2018-04-18','Chugong','https://www.lightnovelpub.com/novel/i-alone-level-up-solo-leveling-24121303','https://static.lightnovelpub.com/bookcover/300x400/00236-i-alone-level-up-solo-leveling-ln.jpg','10 years ago, after \"the Gate\" that connected the real world with the monster world opened, some of the ordinary, everyday people received the power to hunt monsters within the Gate. They are known as \"Hunters\". However, not all Hunters are powerful. My name is Sung Jin-Woo, an E-rank Hunter. I?m someone who has to risk his life in the lowliest of dungeons, the \"World?s Weakest\". Having no skills whatsoever to display, I barely earned the required money by fighting in low-leveled dungeons? at least until I found a hidden dungeon with the hardest difficulty within the D-rank dungeons! In the end, as I was accepting death, I suddenly received a strange power, a quest log that only I could see, a secret to leveling up that only I know about! If I trained in accordance with my quests and hunted monsters, my level would rise. Changing from the weakest Hunter to the strongest S-rank Hunter!'),(3,'Embers ad Infinitum','Ongoing','Chinese',676,2020,'2021-12-26','Cuttlefish that loves diving','https://boxnovel.com/novel/embers-ad-infinitum/','https://boxnovel.com/wp-content/uploads/2021/01/Embers-Ad-Infinitum-193x278.jpg','In this latest work by Lord of the Mysteries author, Cuttlefish That Loves Diving, be prepared for a well-thought out and detailed apocalyptic, cyberpunk world with a setting superseding Lord of the Mysteries!\nOur protagonist, Shang Jianyao, is crazy-literally crazy, at least that?s what the doctors said. Living in a huge, underground building of Pangu Biology, one of the few remaining factions in this apocalyptic wasteland known as the Ashlands, he acts in unfathomable ways that?s head-scratching, comical, and shrewd. So is he really crazy? Probably. He has a grand dream: to save all of humanity. Intricately tied to this dream is something everyone in the Ashlands believes in: Deep in a particular ruin buried away by danger and famine, a path leading to a new world awaits. To step into the new world, one only needs to find a special key and open that certain door. There, the land is bountiful, as if milk and honey flows freely. The sunlight is dazzling, as if all coldness and darkness are washed away. The people will no longer have to face desolation, monsters, infections, mutations, and all kinds of dangers. There, children are joyous, adults are happy, everything is fine as they are supposed to be. Every Antiquarian, Ruin Hunter, and Historian roaming the Ashlands knows: That?s the New World.'),(4,'A Game to Make Him Fall','Completed','Japanese',1,2016,NULL,'Kare wo Kanrakusareru Game','https://boxnovel.com/novel/a-game-to-make-him-fall/','https://boxnovel.com/wp-content/uploads/2018/09/A-Game-to-Make-him-Fall-193x278.jpg','Born to a house where women were only seen as tools to birth children, I was already in my twenties. I was standing on the crossroads of life.\nAt my fingertips were close to fifty photos of different men. They were the marriage partner candidates my father had prepared. Those who took the initiative and volunteered because they wanted his company, and those that were recommended to strengthen our ties with other companies. There were various reasons, but I was to marry one, and build up a child. That was my reason for existence in this house. I don?t think I can love another. I wonder how everyone believes in something so shapeless as love. It was only a marvel to me. That I couldn?t do something any standard person could must be because I was a person who was never properly loved. I put a break on the countless unanswered questions I held since my birth, and stared down at the photos around me. That I chose him was truly a coincidence.'),(5,'Sevens','Completed','Japanese',367,2014,'2018-06-18','Mishima Yomu','https://boxnovel.com/novel/sevens/','https://boxnovel.com/wp-content/uploads/2018/06/sevens-193x278.jpg','Lyle Walt is a young noble boy and heir looking forward to the day he can inherit his family?s territory. Except around when he was 10 year old, his parents started neglecting him more and more in favour of his little sister, Celes. On his fifteenth birthday, he is challenged to a duel by his sister to see who will inherit the household and horribly loses, being cast out of his family. Afterwards, he gets treated by the family groundskeepers and receives the family heirloom Gem from him that Lyle?s grandfather had entrusted to him. From there, he begins an aimless journey with his childhood friend and former fiancée, Novem, and the Gem-turned-Jewel that houses the memories, personalities, and Skills of seven of his ancestors.');
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookgenre` AS select `distinctbook`.`Book_id` AS `Book_id`,`selectedgenre`.`Genre_id` AS `Genre_id` from (`distinctbook` join `selectedgenre`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comic_result`
--

/*!50001 DROP VIEW IF EXISTS `comic_result`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comic_result` AS select `comics`.`Origin_id` AS `Origin_id`,`comics`.`Comic_id` AS `Comic_id`,`comics`.`Name` AS `Name`,`comics`.`Status` AS `Status`,`comics`.`Total_Chapters` AS `Total_Chapters`,`comics`.`Other_Media` AS `Other_Media`,`comics`.`Url` AS `Url`,`comics`.`Image` AS `Image`,`comics`.`Synopsis` AS `Synopsis` from `comics` where (`comics`.`Origin_id`,`comics`.`Comic_id`) in (select `comicresult`.`Origin_id`,`comicresult`.`Comic_id` from `comicresult`) */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `distinctcomic` AS select distinct `comics`.`Origin_id` AS `Origin_id`,`comics`.`Comic_id` AS `Comic_id` from `comics` */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
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
-- Final view structure for view `novel_result`
--

/*!50001 DROP VIEW IF EXISTS `novel_result`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `novel_result` AS select `novels`.`Book_id` AS `Book_id`,`novels`.`Name` AS `Name`,`novels`.`Status` AS `Status`,`novels`.`Origin` AS `Origin`,`novels`.`Total_Chapters` AS `Total_Chapters`,`novels`.`Release_Date` AS `Release_Date`,`novels`.`Last_Updated` AS `Last_Updated`,`novels`.`Author_Name` AS `Author_Name`,`novels`.`Url` AS `Url`,`novels`.`Image` AS `Image`,`novels`.`Synopsis` AS `Synopsis` from `novels` where `novels`.`Book_id` in (select `result`.`Book_id` from `result`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `novelresult`
--

/*!50001 DROP VIEW IF EXISTS `novelresult`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `novelresult` AS select `genre`.`Genre_id` AS `Genre_id`,`genre`.`Name` AS `Name` from `genre` */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `result` AS select distinct `novel_genre`.`Book_id` AS `Book_id` from `novel_genre` where `novel_genre`.`Book_id` in (select `difference`.`Book_id` from `difference`) is false */;
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
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `selectedgenre` AS select `genre`.`Genre_id` AS `Genre_id` from `genre` where (`genre`.`Name` in ('Tragedy','Fantasy')) */;
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

-- Dump completed on 2022-01-17  9:29:17
