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

-- Dump completed on 2021-12-28 21:41:02
