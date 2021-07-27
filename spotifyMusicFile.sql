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
  `index` text DEFAULT NULL,
  KEY `ix_search_history_index` (`index`(3072))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_history`
--

LOCK TABLES `search_history` WRITE;
/*!40000 ALTER TABLE `search_history` DISABLE KEYS */;
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
INSERT INTO `today_top_hits` VALUES (0,'STAY (with Justin Bieber)','The Kid LAROI','2021-07-26T04:00:00Z',97),(1,'Bad Habits','Ed Sheeran','2021-07-26T04:00:00Z',97),(2,'Chosen','Måneskin','2021-07-26T04:00:00Z',99),(3,'good 4 u','Olivia Rodrigo','2021-07-26T04:00:00Z',85),(4,'Kiss Me More (feat. SZA)','Doja Cat','2021-07-26T04:00:00Z',96),(5,'INDUSTRY BABY (feat. Jack Harlow)','Lil Nas X','2021-07-26T04:00:00Z',84),(6,'Levitating (feat. DaBaby)','Dua Lipa','2021-07-26T04:00:00Z',90),(7,'Save Your Tears (Remix)','The Weeknd','2021-07-26T04:00:00Z',94),(8,'Motley Crew','Post Malone','2021-07-26T04:00:00Z',89),(9,'NDA','Billie Eilish','2021-07-26T04:00:00Z',88),(10,'MONTERO (Call Me By Your Name)','Lil Nas X','2021-07-26T04:00:00Z',60),(11,'Justice','Justin Bieber','2021-07-26T04:00:00Z',95),(12,'Dreamland','Glass Animals','2021-07-26T04:00:00Z',84),(13,'Butter / Permission to Dance','BTS','2021-07-26T04:00:00Z',96),(14,'Don\'t Go Yet','Camila Cabello','2021-07-26T04:00:00Z',77),(15,'Leave Before You Love Me','Marshmello','2021-07-26T04:00:00Z',89),(16,'Leave The Door Open','Bruno Mars','2021-07-26T04:00:00Z',93),(17,'Todo De Ti','Rauw Alejandro','2021-07-26T04:00:00Z',96),(18,'Teatro d\'ira - Vol. I','Måneskin','2021-07-26T04:00:00Z',96),(19,'deja vu','Olivia Rodrigo','2021-07-26T04:00:00Z',80),(20,'Future Nostalgia','Dua Lipa','2021-07-26T04:00:00Z',76),(21,'Planet Her','Doja Cat','2021-07-26T04:00:00Z',89),(22,'F*CK LOVE 3: OVER YOU','The Kid LAROI','2021-07-26T04:00:00Z',77),(23,'Build a Bitch','Bella Poarch','2021-07-26T04:00:00Z',91),(24,'Butter','BTS','2021-07-26T04:00:00Z',82),(25,'Astronaut In The Ocean','Masked Wolf','2021-07-26T04:00:00Z',91),(26,'Beautiful Mistakes (feat. Megan Thee Stallion)','Maroon 5','2021-07-26T04:00:00Z',77),(27,'Heartbreak Anthem (with David Guetta & Little Mix)','Galantis','2021-07-26T04:00:00Z',89),(28,'Yonaguni','Bad Bunny','2021-07-26T04:00:00Z',97),(29,'When It\'s All Said And Done... Take Time','Giveon','2021-07-26T04:00:00Z',79),(30,'SOUR','Olivia Rodrigo','2021-07-26T04:00:00Z',94),(31,'Planet Her','Doja Cat','2021-07-26T04:00:00Z',90),(32,'Wild Side (feat. Cardi B)','Normani','2021-07-26T04:00:00Z',79),(33,'No Love Lost (Deluxe)','Blxst','2021-07-26T04:00:00Z',82),(34,'Run','OneRepublic','2021-07-26T04:00:00Z',89),(35,'Qué Más Pues?','J Balvin','2021-07-26T04:00:00Z',95),(36,'Friday (feat. Mufasa & Hypeman) [Dopamine Re-Edit]','Riton','2021-07-26T04:00:00Z',93),(37,'Rasputin','Majestic','2021-07-26T04:00:00Z',90),(38,'Thot Shit','Megan Thee Stallion','2021-07-26T04:00:00Z',88),(39,'seaside_demo','SEB','2021-07-26T04:00:00Z',72),(40,'Our Song','Anne-Marie','2021-07-26T04:00:00Z',84),(41,'Reckless','Madison Beer','2021-07-26T04:00:00Z',85),(42,'By Your Side (feat. Tom Grennan)','Calvin Harris','2021-07-26T04:00:00Z',86),(43,'Goosebumps (Remix)','Travis Scott','2021-07-26T04:00:00Z',88),(44,'RAPSTAR','Polo G','2021-07-26T04:00:00Z',90),(45,'Your Love (9PM)','ATB','2021-07-26T04:00:00Z',89),(46,'Little Bit of Love','Tom Grennan','2021-07-26T04:00:00Z',81),(47,'Lost Cause','Billie Eilish','2021-07-26T04:00:00Z',86),(48,'Late At Night','Roddy Ricch','2021-07-26T04:00:00Z',85),(49,'t r a n s p a r e n t s o u l feat. Travis Barker','WILLOW','2021-07-26T04:00:00Z',87);
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

-- Dump completed on 2021-07-27 18:57:22
