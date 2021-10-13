-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

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
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` bigint(20) unsigned NOT NULL,
  `music_album_id` bigint(20) unsigned DEFAULT NULL,
  `playlist_id` bigint(20) unsigned DEFAULT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `music_album_id` (`music_album_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `music_ibfk_1` FOREIGN KEY (`music_album_id`) REFERENCES `music_albums` (`id`),
  CONSTRAINT `music_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music`
--

LOCK TABLES `music` WRITE;
/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES (1,4,1,1,'Aron Howe I','et'),(2,4,2,2,'Evangeline Roob Jr.','soluta'),(3,4,3,3,'Destini Leffler','incidunt'),(4,4,4,4,'Miss Christa Breitenberg MD','provident'),(5,4,5,5,'Dr. Aron Ortiz','cum'),(6,4,6,6,'Ebba Bernhard','labore'),(7,4,7,7,'Donnie Cartwright Jr.','laboriosam'),(8,4,8,8,'Prof. Tom Williamson III','tempore'),(9,4,9,9,'Carmel Gerlach DDS','molestiae'),(10,4,10,10,'Leonie Walker','repellat'),(11,4,1,11,'Deion Abernathy Sr.','vel'),(12,4,2,12,'Prof. Mervin Harris PhD','minus'),(13,4,3,13,'Ruthie Koss','libero'),(14,4,4,14,'Hildegard Reichel','non'),(15,4,5,15,'Curtis Pfannerstill','expedita'),(16,4,6,16,'Alyson Berge DDS','culpa'),(17,4,7,17,'Miss Alize Waters','quia'),(18,4,8,18,'Kaia O\'Hara','odio'),(19,4,9,19,'Frances Mayert','illum'),(20,4,10,20,'Prof. Sid Upton IV','molestias'),(21,4,1,1,'Chanelle Dach III','aut'),(22,4,2,2,'Aracely Gibson','saepe'),(23,4,3,3,'Reba Collier','voluptatum'),(24,4,4,4,'Theron Mertz','dolores'),(25,4,5,5,'Laury Hane','ipsam'),(26,4,6,6,'Martin Haley','odit'),(27,4,7,7,'Margarita DuBuque','natus'),(28,4,8,8,'Lina Murray','aut'),(29,4,9,9,'Prof. Fernando Simonis V','sunt'),(30,4,10,10,'Mr. Misael Dare','qui'),(31,4,1,11,'Jessica Conn','fugiat'),(32,4,2,12,'Haskell Goodwin','eos'),(33,4,3,13,'Lia Schuppe','est'),(34,4,4,14,'Prince Schiller Jr.','dolore'),(35,4,5,15,'Ms. Duane Bednar Sr.','facilis'),(36,4,6,16,'Orion Grimes','ex'),(37,4,7,17,'Trycia Corkery','veniam'),(38,4,8,18,'Kim Feeney','nesciunt'),(39,4,9,19,'Dr. Luciano Metz','est'),(40,4,10,20,'Leta Prohaska','suscipit'),(41,4,1,1,'Zoila Hilpert MD','fugit'),(42,4,2,2,'Blaise Batz I','praesentium'),(43,4,3,3,'Mrs. Ursula Gutmann I','ut'),(44,4,4,4,'Emily Lemke','pariatur'),(45,4,5,5,'Magnus Fahey','voluptatem'),(46,4,6,6,'Gail Cassin','fugiat'),(47,4,7,7,'Corbin Abernathy','quo'),(48,4,8,8,'Carleton Breitenberg','id'),(49,4,9,9,'Blaze Krajcik','ea'),(50,4,10,10,'Guy Kassulke','rem'),(51,4,1,11,'Dr. Osvaldo Hirthe III','perspiciatis'),(52,4,2,12,'Orpha Bosco','et'),(53,4,3,13,'Leopoldo Yost','quo'),(54,4,4,14,'Sammie Corwin','asperiores'),(55,4,5,15,'Prof. Felipe Quigley DVM','fugiat'),(56,4,6,16,'Quinten Heller','ut'),(57,4,7,17,'Corrine Stanton','iusto'),(58,4,8,18,'Elaina Ferry','maxime'),(59,4,9,19,'Myrtis Howe','est'),(60,4,10,20,'Prof. Emanuel Marvin','quas'),(61,4,1,1,'Bell Green','inventore'),(62,4,2,2,'Dr. Bud Marvin','voluptates'),(63,4,3,3,'Cale Crist I','et'),(64,4,4,4,'Ms. America Armstrong II','eligendi'),(65,4,5,5,'Mr. Stevie Williamson','ut'),(66,4,6,6,'Dr. Rosella Hayes','eligendi'),(67,4,7,7,'Miss Valentina Cassin','placeat'),(68,4,8,8,'Mariane Johnson','deleniti'),(69,4,9,9,'Brian Deckow','nihil'),(70,4,10,10,'Myron Jacobson','ut'),(71,4,1,11,'Mr. Granville Weissnat III','aut'),(72,4,2,12,'Veronica Farrell','suscipit'),(73,4,3,13,'Giovanna Kris','minus'),(74,4,4,14,'Antonina Cartwright II','at'),(75,4,5,15,'Cordell Bode','et'),(76,4,6,16,'Vena Gutmann','ipsa'),(77,4,7,17,'Dr. Tate Predovic I','nisi'),(78,4,8,18,'Pansy Grady','voluptas'),(79,4,9,19,'Effie Leannon','voluptatem'),(80,4,10,20,'Dessie Beahan','commodi'),(81,4,1,1,'Jeremie Langworth','velit'),(82,4,2,2,'Prof. Edwardo Dickens','possimus'),(83,4,3,3,'Candice Haley MD','ab'),(84,4,4,4,'Davin Corkery','ut'),(85,4,5,5,'Seth Heidenreich','voluptatibus'),(86,4,6,6,'Prof. Vicente Kemmer Sr.','et'),(87,4,7,7,'Jesse Gibson','nulla'),(88,4,8,8,'Prof. Heaven Okuneva','dolorem'),(89,4,9,9,'Mr. Humberto Fay','voluptatem'),(90,4,10,10,'Mrs. Ruthe Schimmel','occaecati'),(91,4,1,11,'Estell Dare Sr.','iure'),(92,4,2,12,'Kurt Bartell','inventore'),(93,4,3,13,'Valerie Batz','minima'),(94,4,4,14,'Mrs. Clare Brekke','tempora'),(95,4,5,15,'Dr. Aliyah Hermann','et'),(96,4,6,16,'Fleta Zulauf','expedita'),(97,4,7,17,'Monique Leffler I','necessitatibus'),(98,4,8,18,'Ms. Selina Rath','repellendus'),(99,4,9,19,'Jamar Miller Jr.','aut'),(100,4,10,20,'Robin Kassulke DDS','adipisci');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_albums`
--

DROP TABLE IF EXISTS `music_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_albums`
--

LOCK TABLES `music_albums` WRITE;
/*!40000 ALTER TABLE `music_albums` DISABLE KEYS */;
INSERT INTO `music_albums` VALUES (1,'reiciendis',32),(2,'excepturi',99),(3,'accusantium',30),(4,'beatae',11),(5,'distinctio',81),(6,'deleniti',42),(7,'voluptates',89),(8,'cupiditate',68),(9,'provident',83),(10,'illo',37);
/*!40000 ALTER TABLE `music_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'qui',0,8),(2,'est',0,4),(3,'voluptates',0,7),(4,'ut',0,17),(5,'quae',0,13),(6,'possimus',0,18),(7,'eum',0,6),(8,'sint',0,15),(9,'aliquam',0,9),(10,'eum',0,5),(11,'non',0,12),(12,'ut',0,19),(13,'laborum',0,6),(14,'est',0,6),(15,'consequatur',0,9),(16,'at',0,15),(17,'perspiciatis',0,8),(18,'quidem',0,12),(19,'sint',0,11),(20,'qui',0,4);
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-26  5:26:06
