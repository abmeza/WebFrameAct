-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: spotify_music
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB-1:10.4.8+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `search_history`
--

DROP TABLE IF EXISTS `search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_history` (
  `level_0` bigint(20) DEFAULT NULL,
  `index` bigint(20) DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Artists` text DEFAULT NULL,
  `Add Date` text DEFAULT NULL,
  `Popularity` double DEFAULT NULL,
  KEY `ix_search_history_level_0` (`level_0`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_history`
--

LOCK TABLES `search_history` WRITE;
/*!40000 ALTER TABLE `search_history` DISABLE KEYS */;
INSERT INTO `search_history` VALUES (14,14,'Dreamland','Glass Animals','2021-07-19T04:00:00Z',84),(13,13,'Todo De Ti','Rauw Alejandro','2021-07-19T04:00:00Z',97),(12,12,'Leave The Door Open','Bruno Mars','2021-07-19T04:00:00Z',93),(11,11,'Justice','Justin Bieber','2021-07-19T04:00:00Z',96),(10,10,'MONTERO (Call Me By Your Name)','Lil Nas X','2021-07-19T04:00:00Z',63),(9,9,'NDA','Billie Eilish','2021-07-19T04:00:00Z',87),(8,8,'Save Your Tears (Remix)','The Weeknd','2021-07-19T04:00:00Z',94),(7,7,'Butter / Permission to Dance','BTS','2021-07-19T04:00:00Z',95),(6,6,'Levitating (feat. DaBaby)','Dua Lipa','2021-07-19T04:00:00Z',90),(5,5,'Motley Crew','Post Malone','2021-07-19T04:00:00Z',88),(4,4,'Kiss Me More (feat. SZA)','Doja Cat','2021-07-19T04:00:00Z',96),(3,3,'good 4 u','Olivia Rodrigo','2021-07-19T04:00:00Z',87),(2,2,'Chosen','Måneskin','2021-07-19T04:00:00Z',99),(1,1,'Bad Habits','Ed Sheeran','2021-07-19T04:00:00Z',96),(0,0,'Stay (with Justin Bieber)','The Kid LAROI','2021-07-19T04:00:00Z',95);
/*!40000 ALTER TABLE `search_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `today_top_hits`
--

DROP TABLE IF EXISTS `today_top_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `today_top_hits` (
  `index` bigint(20) DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Artists` text DEFAULT NULL,
  `Add Date` text DEFAULT NULL,
  `Popularity` bigint(20) DEFAULT NULL,
  KEY `ix_today_top_hits_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `today_top_hits`
--

LOCK TABLES `today_top_hits` WRITE;
/*!40000 ALTER TABLE `today_top_hits` DISABLE KEYS */;
INSERT INTO `today_top_hits` VALUES (0,'Stay (with Justin Bieber)','The Kid LAROI','2021-07-19T04:00:00Z',95),(1,'Bad Habits','Ed Sheeran','2021-07-19T04:00:00Z',96),(2,'Chosen','Måneskin','2021-07-19T04:00:00Z',99),(3,'good 4 u','Olivia Rodrigo','2021-07-19T04:00:00Z',87),(4,'Kiss Me More (feat. SZA)','Doja Cat','2021-07-19T04:00:00Z',96),(5,'Motley Crew','Post Malone','2021-07-19T04:00:00Z',88),(6,'Levitating (feat. DaBaby)','Dua Lipa','2021-07-19T04:00:00Z',90),(7,'Butter / Permission to Dance','BTS','2021-07-19T04:00:00Z',95),(8,'Save Your Tears (Remix)','The Weeknd','2021-07-19T04:00:00Z',94),(9,'NDA','Billie Eilish','2021-07-19T04:00:00Z',87),(10,'MONTERO (Call Me By Your Name)','Lil Nas X','2021-07-19T04:00:00Z',63),(11,'Justice','Justin Bieber','2021-07-19T04:00:00Z',96),(12,'Leave The Door Open','Bruno Mars','2021-07-19T04:00:00Z',93),(13,'Todo De Ti','Rauw Alejandro','2021-07-19T04:00:00Z',97),(14,'Dreamland','Glass Animals','2021-07-19T04:00:00Z',84),(15,'Leave Before You Love Me','Marshmello','2021-07-19T04:00:00Z',88),(16,'Butter','BTS','2021-07-19T04:00:00Z',84),(17,'deja vu','Olivia Rodrigo','2021-07-19T04:00:00Z',82),(18,'Planet Her','Doja Cat','2021-07-19T04:00:00Z',87),(19,'Build a Bitch','Bella Poarch','2021-07-19T04:00:00Z',92),(20,'Yonaguni','Bad Bunny','2021-07-19T04:00:00Z',97),(21,'Teatro d\'ira - Vol. I','Måneskin','2021-07-19T04:00:00Z',96),(22,'Astronaut In The Ocean','Masked Wolf','2021-07-19T04:00:00Z',91),(23,'Future Nostalgia','Dua Lipa','2021-07-19T04:00:00Z',74),(24,'Beautiful Mistakes (feat. Megan Thee Stallion)','Maroon 5','2021-07-19T04:00:00Z',79),(25,'Qué Más Pues?','J Balvin','2021-07-19T04:00:00Z',95),(26,'When It\'s All Said And Done... Take Time','Giveon','2021-07-19T04:00:00Z',79),(27,'Planet Her','Doja Cat','2021-07-19T04:00:00Z',90),(28,'Heartbreak Anthem (with David Guetta & Little Mix)','Galantis','2021-07-19T04:00:00Z',89),(29,'Friday (feat. Mufasa & Hypeman) [Dopamine Re-Edit]','Riton','2021-07-19T04:00:00Z',93),(30,'Thot Shit','Megan Thee Stallion','2021-07-19T04:00:00Z',88),(31,'Run','OneRepublic','2021-07-19T04:00:00Z',88),(32,'SOUR','Olivia Rodrigo','2021-07-19T04:00:00Z',94),(33,'Reckless','Madison Beer','2021-07-19T04:00:00Z',85),(34,'F*CK LOVE (SAVAGE)','The Kid LAROI','2021-07-19T04:00:00Z',88),(35,'Goosebumps (Remix)','Travis Scott','2021-07-19T04:00:00Z',89),(36,'RAPSTAR','Polo G','2021-07-19T04:00:00Z',91),(37,'No Love Lost (Deluxe)','Blxst','2021-07-19T04:00:00Z',81),(38,'seaside_demo','SEB','2021-07-19T04:00:00Z',75),(39,'t r a n s p a r e n t s o u l feat. Travis Barker','WILLOW','2021-07-19T04:00:00Z',87),(40,'Little Bit of Love','Tom Grennan','2021-07-19T04:00:00Z',81),(41,'Your Love (9PM)','ATB','2021-07-19T04:00:00Z',89),(42,'Lost Cause','Billie Eilish','2021-07-19T04:00:00Z',87),(43,'Late At Night','Roddy Ricch','2021-07-19T04:00:00Z',85),(44,'By Your Side (feat. Tom Grennan)','Calvin Harris','2021-07-19T04:00:00Z',86),(45,'Rasputin','Majestic','2021-07-19T04:00:00Z',90),(46,'Our Song','Anne-Marie','2021-07-19T04:00:00Z',84),(47,'Girls Like Us','Zoe Wees','2021-07-19T04:00:00Z',81),(48,'Up','Cardi B','2021-07-19T04:00:00Z',85),(49,'CALL ME IF YOU GET LOST','Tyler, The Creator','2021-07-19T04:00:00Z',86);
/*!40000 ALTER TABLE `today_top_hits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-22 20:03:52
