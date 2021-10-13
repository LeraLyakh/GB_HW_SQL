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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_user_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`),
  KEY `admin_user_id` (`admin_user_id`),
  CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'necessitatibus',1),(2,'corporis',2),(3,'libero',3),(4,'exercitationem',4),(5,'aspernatur',5),(6,'sed',6),(7,'dolorem',7),(8,'nihil',8),(9,'cum',9),(10,'dolore',10),(11,'excepturi',11),(12,'esse',12),(13,'enim',13),(14,'provident',14),(15,'quos',15),(16,'doloribus',16),(17,'beatae',17),(18,'ea',18),(19,'praesentium',19),(20,'fugiat',20),(21,'eveniet',1),(22,'sit',2),(23,'qui',3),(24,'eos',4),(25,'repudiandae',5),(26,'quia',6),(27,'nesciunt',7),(28,'quo',8),(29,'quas',9),(30,'modi',10),(31,'et',11),(32,'ut',12),(33,'ut',13),(34,'corporis',14),(35,'optio',15),(36,'debitis',16),(37,'iusto',17),(38,'et',18),(39,'id',19),(40,'itaque',20),(41,'voluptatem',1),(42,'soluta',2),(43,'delectus',3),(44,'laudantium',4),(45,'in',5),(46,'non',6),(47,'et',7),(48,'vitae',8),(49,'est',9),(50,'voluptatum',10);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined','unfriended') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (1,15,'declined','1992-06-13 17:56:11','2015-01-19 12:50:25'),(2,13,'requested','2015-04-14 01:06:53','1981-04-17 04:28:06'),(5,4,'requested','1995-05-06 10:56:47','1988-01-02 01:58:49'),(6,19,'unfriended','1992-11-16 08:26:48','1991-08-02 09:35:28'),(7,3,'requested','1975-07-04 00:29:08','1978-12-12 13:15:36'),(8,11,'declined','2007-11-26 05:05:36','1983-05-28 19:26:24'),(9,14,'declined','1977-11-12 07:21:35','2016-10-20 19:04:54'),(10,17,'requested','2007-12-01 22:11:51','1999-11-08 01:33:23'),(12,18,'requested','1974-09-24 08:13:38','2014-02-26 03:38:14'),(20,16,'unfriended','2007-09-02 03:17:10','2019-11-22 05:40:22');
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,1,'2006-09-22 01:35:21'),(2,2,2,'1971-12-21 13:27:01'),(3,3,3,'2004-11-08 14:07:20'),(4,4,4,'2004-03-17 00:49:18'),(5,5,5,'2009-08-30 04:46:49'),(6,6,6,'2015-06-26 02:33:20'),(7,7,7,'1970-01-23 23:40:26'),(8,8,8,'1998-11-14 11:48:52'),(9,9,9,'1999-01-07 21:49:27'),(10,10,10,'1973-03-30 05:05:32'),(11,11,11,'1983-03-15 12:42:36'),(12,12,12,'1983-06-27 14:45:14'),(13,13,13,'2021-01-15 11:52:53'),(14,14,14,'2006-05-28 14:30:39'),(15,15,15,'1979-05-27 15:18:15'),(16,16,16,'1976-09-25 16:44:18'),(17,17,17,'1992-05-16 16:38:18'),(18,18,18,'1981-01-17 06:52:25'),(19,19,19,'1996-05-17 21:26:23'),(20,20,20,'1985-02-24 20:04:17'),(21,1,1,'1970-06-01 07:10:54'),(22,2,2,'1991-06-21 05:37:17'),(23,3,3,'2015-09-04 22:52:42'),(24,4,4,'2008-04-02 23:25:40'),(25,5,5,'2004-07-24 12:02:09'),(26,6,6,'2012-01-29 06:07:04'),(27,7,7,'1984-03-27 23:25:52'),(28,8,8,'1985-02-04 06:55:14'),(29,9,9,'2011-08-04 03:19:12'),(30,10,10,'1986-11-05 02:39:30'),(31,11,11,'1995-04-18 21:11:09'),(32,12,12,'1996-01-10 11:41:44'),(33,13,13,'1984-05-29 00:51:30'),(34,14,14,'2000-03-11 19:37:28'),(35,15,15,'1990-05-07 15:19:47'),(36,16,16,'2012-07-26 18:14:29'),(37,17,17,'1975-11-02 19:48:31'),(38,18,18,'1993-07-18 10:56:00'),(39,19,19,'1987-11-18 09:19:56'),(40,20,20,'1997-07-15 22:49:14'),(41,1,1,'2001-11-15 22:34:14'),(42,2,2,'2016-03-02 13:40:43'),(43,3,3,'2018-07-21 00:47:59'),(44,4,4,'1976-11-07 10:23:10'),(45,5,5,'1989-01-04 12:31:40'),(46,6,6,'2009-10-06 21:08:08'),(47,7,7,'2008-03-04 19:18:18'),(48,8,8,'1985-11-15 20:38:34'),(49,9,9,'1984-09-25 09:40:23'),(50,10,10,'1989-01-05 16:15:54'),(51,11,11,'2015-04-14 22:29:10'),(52,12,12,'1974-08-28 20:03:00'),(53,13,13,'1970-08-27 03:49:42'),(54,14,14,'1988-06-24 22:44:04'),(55,15,15,'1993-03-16 01:56:32'),(56,16,16,'2012-02-05 11:08:36'),(57,17,17,'2004-10-27 23:03:13'),(58,18,18,'1986-06-20 11:04:00'),(59,19,19,'1977-05-02 15:02:51'),(60,20,20,'2016-02-02 02:02:21'),(61,1,1,'1983-07-21 20:47:29'),(62,2,2,'2010-04-17 11:25:59'),(63,3,3,'2003-01-08 14:29:03'),(64,4,4,'1970-05-01 23:12:20'),(65,5,5,'2011-03-04 07:29:13'),(66,6,6,'2013-09-21 23:02:30'),(67,7,7,'2004-05-15 17:36:47'),(68,8,8,'1991-07-19 14:39:38'),(69,9,9,'2004-04-09 21:58:19'),(70,10,10,'2017-12-18 21:57:45'),(71,11,11,'2010-07-22 16:20:45'),(72,12,12,'2009-03-07 20:21:33'),(73,13,13,'2007-01-22 02:57:03'),(74,14,14,'2001-07-24 17:33:58'),(75,15,15,'1982-01-10 04:32:22'),(76,16,16,'2003-10-25 18:27:17'),(77,17,17,'1992-02-06 03:13:25'),(78,18,18,'1972-07-23 04:02:16'),(79,19,19,'2015-03-26 16:34:32'),(80,20,20,'2002-02-14 05:55:45'),(81,1,1,'1993-05-18 04:07:20'),(82,2,2,'2004-10-18 09:26:30'),(83,3,3,'2011-03-25 19:25:54'),(84,4,4,'2007-05-01 03:16:33'),(85,5,5,'2018-08-25 11:56:28'),(86,6,6,'1998-08-08 09:33:32'),(87,7,7,'1983-02-12 04:34:16'),(88,8,8,'1977-04-06 06:34:45'),(89,9,9,'1989-09-02 16:59:08'),(90,10,10,'2002-05-15 12:08:41'),(91,11,11,'2003-07-14 09:07:01'),(92,12,12,'2003-05-31 14:43:25'),(93,13,13,'1981-08-14 12:57:13'),(94,14,14,'1990-07-13 10:08:45'),(95,15,15,'1997-06-11 14:04:03'),(96,16,16,'1991-05-02 07:36:34'),(97,17,17,'1989-05-24 09:20:44'),(98,18,18,'2020-11-12 07:28:59'),(99,19,19,'1975-05-02 19:01:31'),(100,20,20,'2009-06-09 06:22:03');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,1,'Asperiores quo temporibus nihil quidem facilis necessitatibus. Non eum autem corrupti qui sed ratione in.','neque',122,NULL,'2015-03-11 22:11:21','2008-10-25 22:15:08'),(2,2,2,'Nulla sed delectus dolores totam impedit enim non. Assumenda veritatis voluptatibus quod voluptatem quis. Aut dolor natus molestiae molestiae doloremque porro impedit error.','dignissimos',88,NULL,'1971-09-07 00:41:06','1976-02-21 20:07:11'),(3,3,3,'Quia exercitationem velit quidem aliquid. Laudantium quam aut ut impedit et.','laborum',236,NULL,'2012-08-16 12:00:00','1986-01-18 03:03:26'),(4,4,4,'Natus ipsam quas molestiae quasi et. Nihil eaque in quam vel. Minus voluptas suscipit laudantium quia dicta.','facere',2154,NULL,'1997-08-07 00:58:07','1988-08-11 15:15:51'),(5,1,5,'Qui non odio quod et reiciendis. Minus dolor quia doloremque consectetur molestiae animi aut.','omnis',960,NULL,'1970-04-30 06:19:39','1993-12-23 06:08:07'),(6,2,6,'Commodi ipsam aperiam perferendis et est assumenda consequuntur. Occaecati optio voluptatem quos blanditiis officiis facilis. Dignissimos vitae possimus vel totam. Fugiat temporibus totam velit necessitatibus voluptas magni nostrum.','dignissimos',6914,NULL,'1998-09-28 10:38:47','1971-12-02 21:14:03'),(7,3,7,'Laudantium corrupti consequatur debitis architecto repellat sed eaque soluta. Ut iusto quidem omnis qui ducimus aspernatur quia. Officiis enim tempore quia molestiae veritatis reiciendis. Quia non porro quas et facere maxime rerum.','nihil',29662,NULL,'1974-10-27 03:30:21','2001-03-19 14:27:45'),(8,4,8,'Qui qui autem quos. Laudantium dicta eaque aut. Occaecati odit quidem sed et quia. Ut nemo laborum temporibus aut ea sed illum est.','mollitia',0,NULL,'1985-10-31 17:04:53','2006-07-06 09:53:48'),(9,1,9,'Exercitationem consequatur odit ut praesentium officia. Ut optio voluptatem earum dignissimos repellendus. Et cum nisi et necessitatibus voluptates. Sapiente earum autem illo neque eos totam amet.','error',1,NULL,'2003-10-21 08:45:59','1989-02-15 12:10:26'),(10,2,10,'Et enim excepturi blanditiis veniam laudantium. Vel corporis et iusto et temporibus velit et in. Voluptatem rerum et dolor est sed accusamus. Corrupti nisi laboriosam velit ut impedit. Voluptatem ut laudantium porro id earum minus.','voluptatem',50216670,NULL,'1996-06-17 06:00:37','1988-09-22 03:57:15'),(11,3,11,'Numquam omnis labore explicabo veritatis unde facilis. Atque aspernatur velit ut vel quis repellat nemo qui. Sunt incidunt ut ut labore rem accusamus. Fugit magni sequi doloremque veniam odit qui amet omnis.','aut',288,NULL,'2021-08-15 16:44:41','1978-05-11 05:42:49'),(12,4,12,'Vel doloremque unde nihil officia aut ea a. Omnis et id corporis eum libero debitis enim.','accusantium',132606,NULL,'1972-01-13 18:56:35','2008-01-22 17:44:10'),(13,1,13,'Aut voluptate quia earum qui ut. Ut et et deleniti voluptatem et praesentium. Ut at voluptatibus optio vel qui facilis. Autem omnis fugiat error ipsum aliquid sint optio.','aut',3201,NULL,'2010-09-27 05:27:00','1978-09-08 09:59:03'),(14,2,14,'Voluptate libero ullam dolor sed eum aspernatur magni. Ipsam odio repudiandae nihil placeat optio animi. Ullam optio quasi voluptas tenetur sit dolores incidunt.','et',140033,NULL,'2021-08-14 11:41:37','1990-09-16 03:29:17'),(15,3,15,'Eveniet laboriosam animi consequuntur facilis nostrum dolores est et. In nulla voluptas quas atque dolores autem nihil eveniet. Nesciunt consequatur cum maiores occaecati aliquid dolores.','placeat',10459535,NULL,'1981-05-21 04:38:25','2016-03-23 17:27:12'),(16,4,16,'Et sapiente et asperiores occaecati itaque similique aut. Voluptatem et eum quod animi dignissimos in sed. Omnis non qui quos.','quisquam',43,NULL,'2019-09-15 09:39:49','1978-09-26 06:16:54'),(17,1,17,'Autem molestiae dolore minus eligendi. Perferendis delectus et laudantium vitae dolorum. Et earum et eos et ducimus repudiandae doloremque.','sapiente',29213535,NULL,'2005-05-31 17:38:25','1977-08-26 13:47:38'),(18,2,18,'Et veniam repellat recusandae fuga in. Impedit qui maxime asperiores illo sint amet. Ipsam non cum amet enim doloremque. Modi officiis aliquid nemo accusantium.','quos',59,NULL,'1994-12-31 19:36:58','2001-01-28 09:32:04'),(19,3,19,'Consequatur eius sapiente necessitatibus consequatur nihil et numquam. Facere eveniet ad asperiores blanditiis earum. Tenetur accusamus quia aliquid sunt explicabo. Facilis quasi non quis magni eum itaque saepe voluptates.','alias',8040475,NULL,'1984-11-15 04:08:56','1975-05-02 04:38:45'),(20,4,20,'Ea dolorem qui et rerum veritatis eligendi. Sunt non sequi vero est. Sed qui voluptatem ipsum nemo. Totam et repellendus hic minus sunt velit velit. Amet autem provident voluptatem dolor.','rerum',675789,NULL,'2002-10-05 18:57:58','1973-08-30 12:15:29');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'music','1981-05-10 11:19:46','1984-08-05 09:08:26'),(2,'video','2007-08-27 16:07:55','2009-10-28 05:40:06'),(3,'photo','2012-07-28 12:44:25','2001-11-17 10:13:56'),(4,'photo','2004-03-24 11:02:44','1984-09-27 19:00:28');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,10,5,'Non eum enim nobis qui non. Aut nemo dignissimos eaque totam qui consectetur qui ipsa. Officiis vero dolor nesciunt voluptas. Molestiae aperiam maiores omnis alias consequuntur tempora ut.','1970-06-09 04:29:22'),(2,17,7,'Voluptas adipisci velit voluptatem. Dolor optio sed pariatur nisi placeat nisi recusandae temporibus. Occaecati tenetur nihil omnis quam. Unde ut tempore deleniti ab veniam enim. Accusantium debitis enim commodi ut est maiores modi laboriosam.','1981-08-05 19:26:10'),(3,11,7,'Qui delectus quia reprehenderit culpa enim molestias. Quisquam deserunt sit enim ut ratione nihil consequatur earum. Sit mollitia non ut natus aut numquam.','1972-07-30 00:45:11'),(4,14,6,'Quisquam perferendis iure aut magni. Cupiditate soluta eos sed ipsam occaecati ut nisi. Ut sit aliquid eaque amet autem porro dolore.','2009-09-05 03:14:29'),(5,20,9,'Omnis aspernatur perferendis quibusdam nisi similique et dolor. Dolore aut in possimus. Enim aliquam ea ut voluptatem quam maiores incidunt. Saepe repellendus ullam repellat qui esse excepturi vel molestiae.','2004-01-20 11:02:39'),(6,11,3,'Iste mollitia et ducimus ut ut. Et vel quo sed. Dolore tempore qui architecto numquam.','2014-12-03 21:26:04'),(7,16,9,'Ut ad voluptatem et eos ut dolorum. Pariatur corrupti pariatur eaque eligendi ad provident temporibus. Voluptatem voluptatem dolore dolores sit mollitia et porro.','1999-01-06 02:10:05'),(8,15,3,'Exercitationem eos nihil rerum veritatis nihil. Nesciunt et aperiam voluptate. Quis quisquam sint consequatur consequatur dolores quam. Voluptatem nisi nesciunt quae dignissimos officia est. Qui enim laboriosam minima provident.','1997-01-07 19:45:48'),(9,14,7,'Id fugit doloremque et exercitationem beatae. Quia et sit voluptas et.','1994-07-28 12:40:56'),(10,10,6,'Ratione aut temporibus deserunt molestiae voluptate. Est dicta magnam eveniet. Impedit non iure earum aut nostrum quis iure voluptatem. Eum ea doloribus unde labore deleniti quod.','1991-08-06 14:15:06'),(11,16,5,'Voluptatibus mollitia numquam at fugiat repellendus earum. Porro nisi qui labore velit cumque labore aliquam. Quibusdam delectus dolorem est ut amet. Eos repellendus fuga quod non cupiditate velit.','1985-04-26 14:27:43'),(12,20,3,'Est quia vel exercitationem sapiente molestiae sunt. Voluptatem rerum similique alias molestias consequatur pariatur.','2006-03-05 23:14:40'),(13,15,7,'Sint et similique doloremque voluptatibus dignissimos recusandae saepe. Soluta non qui laboriosam veniam est quia. Non possimus accusamus dolorem.','2003-02-18 08:51:53'),(14,17,7,'Libero qui voluptates eos. Qui temporibus non et maiores. Dicta laborum libero deserunt minus quis hic.','2017-08-11 03:47:06'),(15,11,7,'Magnam facere animi asperiores minima porro iste. Sed officiis qui voluptas asperiores.','1971-09-07 07:10:01'),(16,10,5,'Qui vel dolores corporis expedita sit ut eum vero. Qui iure nam eos expedita ea. Voluptatibus occaecati veniam ullam ea distinctio assumenda praesentium et. Ipsum qui sunt modi.','1977-03-17 15:02:57'),(17,13,5,'Molestias porro doloremque magnam. Perspiciatis in et quia voluptatem voluptates dolores nam. Sint nemo quo quo repellat nulla quis et voluptatem. Quis enim ea ipsam modi repellendus omnis.','1979-08-01 23:24:15'),(18,19,8,'Quo exercitationem voluptas aliquam. Dicta vitae nostrum accusantium et eligendi repudiandae. Impedit libero repellendus molestiae consequatur impedit et ullam. Consequatur in error est quo.','1988-03-16 15:34:12'),(19,18,9,'Non unde nam culpa id quia voluptatem. Ut quaerat dolorum illo. In aut numquam enim laborum quia totam. Est voluptatibus eum omnis modi temporibus.','1979-03-07 06:30:17'),(20,12,5,'Consequatur nisi ipsum repellendus modi odit in et. Quia quam doloribus sunt aspernatur omnis nostrum. At veniam dolor et ut aperiam.','1980-01-01 08:57:37'),(21,18,5,'Voluptates amet beatae non quia rerum fuga quia. Perferendis voluptates sit eaque impedit sit voluptatum sint. Tenetur et magnam dolorum ipsa.','2001-04-21 16:51:09'),(22,16,4,'Corporis nostrum dolorum accusamus neque voluptatum iusto. Dolore aspernatur nesciunt qui vitae qui ea et. Ut qui odio dolores rerum explicabo et voluptas magni.','1971-10-16 08:15:17'),(23,16,6,'Rerum illum ut eveniet sit impedit aliquam. Ducimus ut sit rem qui nostrum deleniti. Aut repellat sit minus rerum sit quas. Suscipit maxime non rem qui veniam.','2018-02-06 23:12:10'),(24,13,7,'Perferendis omnis minus neque eveniet voluptas. Accusantium dignissimos tempora cupiditate autem cumque voluptas. Et quae praesentium qui optio. Exercitationem earum aspernatur laudantium magnam.','1998-01-15 07:08:43'),(25,16,3,'Sed aut ut ut quas molestiae iusto porro laudantium. Qui ipsa et suscipit. Ut in rerum eligendi et provident incidunt eum. Dolor vel odio ut est.','1980-05-24 17:08:18'),(26,15,5,'Voluptate enim repellendus unde enim in. Sit autem eum cupiditate minima non. Nobis nam laborum sed exercitationem enim dicta. Architecto eos quasi doloremque debitis qui occaecati. Soluta iure minus iure.','1980-05-21 06:38:17'),(27,10,2,'Laudantium deserunt sit iste quaerat dicta accusamus. Delectus eos recusandae iusto optio et nesciunt ut.','2005-03-23 11:22:18'),(28,18,7,'Sit eos corrupti sunt soluta aperiam dolores. In impedit nihil doloribus dicta itaque eligendi. Temporibus voluptatibus iusto doloremque quos perspiciatis reprehenderit ratione.','1992-03-29 02:46:54'),(29,15,8,'Modi unde facere quae. Voluptas excepturi ut consequatur commodi eum corrupti sed autem. Molestiae recusandae labore soluta sint et eos.','1997-11-12 01:11:19'),(30,16,8,'Architecto quos sint debitis culpa eos et. Ea velit in unde voluptatibus minima. Quam voluptatum non earum laudantium impedit ipsam.','1999-03-10 21:33:19'),(31,16,3,'Molestiae vel temporibus aliquid nobis. Velit ut minima quas sunt ut. Temporibus voluptatem perspiciatis vel soluta. Nemo quas rerum sequi dolore aut exercitationem.','2007-06-18 12:32:22'),(32,15,5,'Delectus illum sit quidem. Fugit atque dolores omnis amet cupiditate. Sit autem libero repellat quis quis rerum. Dolorum vel delectus provident ut exercitationem earum.','2015-01-07 17:18:41'),(33,17,4,'Explicabo ducimus est omnis rem reiciendis quia. Mollitia sed non similique dolorem. Atque aut est voluptatem et et.','2004-10-30 08:09:32'),(34,20,9,'Omnis excepturi vel et quia atque et maxime omnis. Rerum fugiat est neque labore. Magni corporis fugit odit animi. Qui quod veritatis dicta optio distinctio debitis autem.','2016-11-28 01:44:32'),(35,12,5,'Incidunt repellendus est corrupti repudiandae cum impedit et. Mollitia veritatis cum aliquam qui.','2015-12-06 00:12:21'),(36,16,9,'Odio sint et at inventore id ad voluptatum. In alias ea et et. Optio praesentium ut nobis quo et in. Minus aut et accusantium quisquam est reiciendis.','1995-03-15 14:56:01'),(37,11,7,'Ut cum suscipit consequatur iusto excepturi tempora. Aliquid quidem impedit quos suscipit quia. Ut asperiores inventore in deserunt molestiae excepturi doloribus.','2016-08-28 10:51:47'),(38,19,5,'Voluptatem in dolore aut esse eos possimus. Ipsa incidunt dolores accusantium maxime. Praesentium incidunt beatae dolorem laudantium in quidem. Id exercitationem modi in perspiciatis eum.','1993-07-04 05:33:52'),(39,19,7,'Harum enim omnis ipsam et. Ut molestiae in sint voluptates. Est cumque praesentium officia.','1975-03-01 01:40:14'),(40,16,2,'Ullam et nihil excepturi totam deleniti itaque magni dolores. Esse eligendi excepturi aperiam et aut asperiores cupiditate. Deserunt adipisci quam ut dolores laudantium repellat debitis tempora.','1986-03-22 02:01:24'),(41,17,6,'Nobis harum possimus vero laudantium consequatur eius quia non. Repudiandae enim sit non aut esse omnis quia. Molestias aut sed et et debitis iure.','1978-09-01 09:01:16'),(42,10,4,'Voluptatum tempore unde est sed aliquam. Ad sit magni et et ut dicta vero. Consequatur qui voluptates perferendis incidunt aliquid est nisi.','1979-07-21 03:35:27'),(43,16,5,'Quas deserunt deserunt incidunt in sed iste. Dolor quibusdam qui fugiat.','1984-05-29 00:48:18'),(44,11,7,'Minus sint vel atque suscipit eos consequatur est. Nulla magni illo et quia amet. Ipsa magnam dolorem voluptas unde est commodi. Architecto eaque nam animi quis fugiat qui optio. Eum modi ab omnis nobis earum assumenda.','1998-08-03 18:37:21'),(45,17,8,'Voluptatum nihil asperiores voluptatem qui. Et voluptas accusamus perferendis iste inventore et officiis. Eligendi quos perferendis deleniti recusandae quasi ut. Nam quaerat dolores in similique nobis.','1993-12-23 15:25:10'),(46,16,1,'Nulla repellat dolores deserunt quibusdam sapiente corrupti. Labore optio ad veniam quos rerum rerum quasi. Eligendi sed vero perferendis veniam quod aspernatur tempore. Esse consequatur nihil dolores blanditiis est.','1972-07-14 13:54:35'),(47,18,4,'Accusamus voluptate quibusdam et earum aut autem ex. Doloribus aut modi voluptatem ut totam.','2019-05-28 12:13:27'),(48,10,3,'Quos incidunt hic rem. Quo unde expedita ipsa nemo enim. Consequatur rerum et saepe aliquid. Pariatur nemo illum eum qui.','1998-11-14 23:03:46'),(49,11,2,'Aliquid impedit fugiat ut autem quia. Laudantium fugit quia velit nulla ab tempore sit et. Nam nesciunt vero quis quod vitae.','2014-08-05 05:05:35'),(50,13,8,'Natus tenetur vel ut earum in amet ut. Sunt eveniet veritatis sunt enim dicta. Repellendus beatae voluptates odio eveniet in. Debitis aliquam eius veritatis optio aliquid eum.','1989-10-12 04:46:10'),(51,14,8,'Nam est praesentium qui vero. Facere quo minus est eaque. Officia adipisci sed dolores ut deleniti delectus.','1981-07-27 23:13:40'),(52,15,7,'Nihil exercitationem vitae ut. Aut qui repellendus excepturi ut eius. Incidunt quo odit sunt. Id et omnis minima culpa.','1979-05-12 14:20:56'),(53,12,5,'Laborum fugiat ut excepturi velit provident quasi. Omnis magnam doloribus possimus doloremque. Necessitatibus qui enim sunt aut numquam quia qui. Cumque sint laborum deleniti sit. Animi autem velit minima sit laudantium voluptates.','1973-01-27 14:07:57'),(54,13,2,'Labore aut quisquam et architecto suscipit architecto quibusdam saepe. Quia vero id enim quia ea et. Nostrum expedita libero optio corporis omnis debitis. Quaerat veritatis illo saepe sint assumenda repellat qui.','1995-03-10 10:23:05'),(55,18,6,'Tenetur illum voluptatibus sed perferendis impedit. Saepe consequatur voluptates rerum animi similique. Nisi omnis totam molestias.','1988-02-05 13:50:00'),(56,17,8,'Quam id aspernatur sint veritatis consectetur assumenda adipisci. Et deserunt totam nemo ea recusandae nostrum inventore.','1982-08-07 02:31:49'),(57,16,4,'Veniam eaque tenetur tempore nemo dolores quae. Tenetur magnam sit veritatis ut ipsa. Repellendus cupiditate tempore nobis assumenda explicabo vel autem. Dicta tenetur expedita explicabo esse.','2016-12-20 16:34:57'),(58,13,6,'Natus doloribus recusandae aut. Corrupti fugiat natus sed dignissimos quia dolorem beatae. Maxime at dolorem quo sunt quis. Dolores omnis sint repellat voluptatibus illum minus itaque molestiae.','1978-01-06 22:29:14'),(59,13,6,'Necessitatibus aperiam distinctio vel earum. Aspernatur similique unde in. Velit eos dicta iste dolores sint amet.','2001-11-08 00:36:17'),(60,12,5,'Eveniet aliquid dolores in aliquam. Ad delectus minima quo at tempora. Dolores quia et sed cumque autem quia quaerat.','1973-08-06 22:16:44'),(61,11,6,'Voluptatem aut quas qui nesciunt aut rerum. Quaerat modi autem doloribus id. Qui assumenda magnam mollitia sed aut.','1991-10-26 17:32:02'),(62,10,1,'Magnam rerum recusandae mollitia eius sequi suscipit similique. Dolor quia odio expedita consequatur excepturi. Quia sit possimus id aut.','2003-04-21 12:31:19'),(63,16,3,'Qui modi odio et est non laboriosam. Sunt omnis sed rem eos nulla error necessitatibus. Modi cupiditate ipsam voluptatibus fuga quis accusamus magnam. Occaecati molestiae incidunt voluptatem culpa nesciunt deleniti.','1973-07-01 13:08:42'),(64,18,2,'Labore omnis voluptas tempora non. Quibusdam ut tempora quia dolor. Cumque necessitatibus modi et sed explicabo veniam eligendi sed. Omnis eaque maiores deleniti aspernatur vero ea autem. Numquam voluptas sint excepturi autem ipsa asperiores.','2002-02-27 22:41:39'),(65,10,6,'Possimus eum commodi harum molestiae occaecati quia facere in. Eos autem repellendus et quia eum ut id. Consequatur vel atque quisquam.','2003-08-16 16:30:51'),(66,17,4,'Voluptates beatae qui earum deleniti rerum id. Sint perspiciatis et dolore optio molestias veritatis accusantium.','1989-10-11 00:59:06'),(67,12,7,'Dolorem velit impedit ut inventore. Saepe eum esse occaecati omnis sed et. Quisquam vitae voluptates repellat consectetur consequatur exercitationem.','1990-11-25 10:45:37'),(68,16,3,'Eos assumenda sunt voluptatem exercitationem sit. Sint perspiciatis molestiae nihil inventore architecto nisi. Ea ad quia non accusantium et nihil ipsam a.','2004-11-18 12:35:21'),(69,12,1,'Cum iure vel perspiciatis ipsa et id ex rerum. Omnis provident quia repellendus enim debitis. Et et consequuntur eaque.','1999-02-27 03:18:04'),(70,11,3,'Nobis et molestiae velit consequatur quo odio aut. Non dolores eum illo aliquid corporis. Nihil et cumque odit perspiciatis repudiandae ut quia. Distinctio accusamus quaerat omnis optio.','2017-04-27 15:59:22'),(71,12,8,'Dolores animi ipsum inventore quis atque. Tempora similique qui ipsam quo. Sint unde voluptatem culpa dolorem laborum placeat.','1979-11-23 01:38:07'),(72,11,9,'Possimus optio beatae et veritatis in quam fugiat. Ut rerum illum ut delectus error vitae. At qui laudantium repudiandae quas facere consequuntur et. Nisi voluptas saepe et ipsum doloremque dolore.','1984-10-16 08:51:41'),(73,14,4,'Delectus officia laborum dolore explicabo expedita. Quasi occaecati quasi est veniam. Qui tempora nihil et exercitationem est quas possimus.','2012-04-01 03:25:16'),(74,14,2,'Impedit quos totam nobis quidem repellendus. Sit delectus optio sint tenetur itaque.','2009-05-06 12:37:14'),(75,19,9,'Vitae nihil libero fuga est culpa et est. Architecto sit eos dolorem rerum doloribus. Voluptatem in quae blanditiis at similique quia aspernatur. Rerum est et enim itaque.','1982-06-30 19:31:22'),(76,13,2,'Enim fugiat eius qui sit quia est corrupti. Possimus et dolorum enim delectus et. Consequuntur illum qui nam.','1996-06-19 17:13:34'),(77,16,3,'Voluptates et sequi consequuntur nobis esse. Explicabo iste ipsam non similique maxime. Ducimus ut consequatur asperiores doloremque itaque modi a quaerat. Quasi quo temporibus non dolorem neque.','1981-10-15 05:19:30'),(78,17,6,'Reprehenderit quia in explicabo sint voluptatum et fugit. Beatae optio explicabo nihil ipsam est. Ea error distinctio numquam amet sequi iure pariatur.','2000-12-26 06:15:01'),(79,17,1,'Debitis minima quisquam itaque placeat sed odio et. Maxime recusandae dicta architecto iste et. Sit sed velit qui ut est qui deserunt.','2000-09-27 17:43:23'),(80,15,8,'Nemo tenetur sed rerum et. Et qui hic quis illo aspernatur. Assumenda vel voluptatum sed dolor ab. Libero recusandae aspernatur quo ipsum quia quod illum.','1976-03-21 23:13:15'),(81,12,4,'Dignissimos hic enim rem nam. Pariatur occaecati culpa sapiente omnis quia.','1985-07-03 02:12:43'),(82,12,9,'A est sunt illo rem perspiciatis voluptate. Hic harum ut eum sunt voluptatem quos eum. Qui est tempora ex ut ea. Sit voluptas aut nulla id quod nihil illum. Rerum deleniti excepturi et laboriosam.','2009-07-26 17:48:47'),(83,12,2,'Magni ullam placeat non similique et excepturi. Quae id et illum ullam dolorum. Ut non est quidem natus dolore et ipsam. Qui eum exercitationem expedita unde excepturi. Nihil iste iusto sit.','2005-01-06 16:13:25'),(84,11,3,'Sit esse hic aut consequuntur. Voluptate praesentium libero aut excepturi sed.','2008-04-10 07:49:37'),(85,16,2,'Consequatur consequatur ut accusamus culpa. Omnis rerum velit quis ut neque amet et. Necessitatibus sed perspiciatis suscipit non et. Est omnis in dolorem sint consequuntur sed. Dignissimos eius dolor laboriosam dicta.','1998-01-30 12:31:51'),(86,14,5,'Repellat quia at ut ipsa. Aliquam dolor facere dolor. Quia consequatur amet enim officiis. Molestiae ab in dignissimos nostrum.','2009-05-25 17:23:54'),(87,12,8,'Reprehenderit nam impedit saepe unde. Aut animi quibusdam omnis qui tempora.','1984-03-15 07:09:22'),(88,15,6,'Nisi quidem inventore ullam ad architecto. Qui sunt possimus sit vel. Quam dolore reiciendis doloremque sit.','1980-09-04 09:09:48'),(89,19,4,'Natus at quia aliquid dolore. Recusandae voluptas voluptatibus blanditiis iusto atque voluptatibus. Ad doloribus est nulla et ut impedit excepturi.','2002-07-10 20:47:59'),(90,12,9,'Enim dolorum ipsam sed consequatur eius nobis soluta. Eum officiis architecto sunt delectus. Omnis ex saepe aspernatur unde fuga illo praesentium.','1982-10-15 00:09:42'),(91,20,3,'Rerum adipisci earum voluptatem rerum. Autem voluptatem laudantium quia nihil amet neque quo quod. Quae quo quos quia nisi mollitia et nostrum.','1972-01-24 04:30:13'),(92,12,1,'Nihil nobis quod ut quis maiores. Iusto expedita odio odio minus. Deleniti quos reiciendis ut. Corrupti optio natus magni delectus occaecati veritatis totam.','1997-10-15 16:31:00'),(93,14,8,'Nihil rerum sed sunt quae in qui. Earum rerum magnam vero nihil rem dignissimos. Tempora nobis consequatur earum et velit at. Neque est minima nemo tempora.','2017-09-24 18:38:35'),(94,19,9,'Aut dicta quos quas. Tenetur rem rem asperiores est. Molestiae sed aut cum deserunt sapiente perspiciatis eum.','1979-03-08 11:44:35'),(95,13,1,'Quo voluptas aut qui sit voluptate. Consequatur quos quia commodi cupiditate quae aut. Molestiae occaecati fugiat ut et modi est dolorum. Enim architecto ipsum ut doloremque voluptatem iste fugit.','1971-01-21 06:26:00'),(96,12,4,'Cupiditate quibusdam incidunt quidem voluptatem illum ratione. Qui totam ullam voluptatum libero ex adipisci fugit. Sunt alias ad laudantium et aut odit. Aut occaecati velit voluptatem ea quis.','1980-10-19 16:38:00'),(97,13,6,'Incidunt iste occaecati dolor deleniti vero voluptate. Tempora exercitationem laborum sit repellendus repellat qui. Voluptate dolor quisquam laudantium quia et.','2014-08-23 15:56:52'),(98,16,9,'Et aut quos reiciendis. Dolor ab autem omnis est. Itaque numquam quod repellendus quos voluptatibus. Ut fuga totam aut assumenda porro aliquid.','2014-10-03 13:12:49'),(99,18,8,'Aliquid debitis sint minima quo est et corporis provident. Dicta consequatur enim excepturi explicabo sint. Velit occaecati quaerat sed quod consectetur quod. Velit aut maxime aut non.','2000-05-01 11:15:51'),(100,18,8,'Quia non modi repudiandae tempora voluptatibus. Quisquam qui dolor est aut doloremque laudantium. In at quae enim qui pariatur. Laboriosam harum repudiandae dicta eos placeat ratione. Quae velit ea distinctio optio a facilis voluptatem.','2020-07-12 08:53:56');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_albums`
--

DROP TABLE IF EXISTS `photo_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_albums`
--

LOCK TABLES `photo_albums` WRITE;
/*!40000 ALTER TABLE `photo_albums` DISABLE KEYS */;
INSERT INTO `photo_albums` VALUES (1,'nisi',1),(2,'officia',2),(3,'repellendus',3),(4,'harum',4),(5,'voluptatibus',5),(6,'dicta',6),(7,'dolor',7),(8,'quia',8),(9,'ducimus',9),(10,'officiis',10),(11,'adipisci',11),(12,'dolor',12),(13,'maxime',13),(14,'sed',14),(15,'corporis',15),(16,'voluptas',16),(17,'minus',17),(18,'aut',18),(19,'qui',19),(20,'assumenda',20),(21,'rerum',1),(22,'dignissimos',2),(23,'mollitia',3),(24,'qui',4),(25,'unde',5),(26,'debitis',6),(27,'velit',7),(28,'accusantium',8),(29,'voluptates',9),(30,'hic',10),(31,'voluptas',11),(32,'maiores',12),(33,'cum',13),(34,'officia',14),(35,'quia',15),(36,'temporibus',16),(37,'voluptatem',17),(38,'eum',18),(39,'voluptatibus',19),(40,'consectetur',20),(41,'officia',1),(42,'quaerat',2),(43,'numquam',3),(44,'perspiciatis',4),(45,'et',5),(46,'ut',6),(47,'ut',7),(48,'qui',8),(49,'id',9),(50,'doloribus',10);
/*!40000 ALTER TABLE `photo_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned DEFAULT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`),
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,1),(22,22,2),(23,23,3),(24,24,4),(25,25,5),(26,26,6),(27,27,7),(28,28,8),(29,29,9),(30,30,10),(31,31,11),(32,32,12),(33,33,13),(34,34,14),(35,35,15),(36,36,16),(37,37,17),(38,38,18),(39,39,19),(40,40,20),(41,41,1),(42,42,2),(43,43,3),(44,44,4),(45,45,5),(46,46,6),(47,47,7),(48,48,8),(49,49,9),(50,50,10),(51,1,11),(52,2,12),(53,3,13),(54,4,14),(55,5,15),(56,6,16),(57,7,17),(58,8,18),(59,9,19),(60,10,20),(61,11,1),(62,12,2),(63,13,3),(64,14,4),(65,15,5),(66,16,6),(67,17,7),(68,18,8),(69,19,9),(70,20,10),(71,21,11),(72,22,12),(73,23,13),(74,24,14),(75,25,15),(76,26,16),(77,27,17),(78,28,18),(79,29,19),(80,30,20),(81,31,1),(82,32,2),(83,33,3),(84,34,4),(85,35,5),(86,36,6),(87,37,7),(88,38,8),(89,39,9),(90,40,10),(91,41,11),(92,42,12),(93,43,13),(94,44,14),(95,45,15),(96,46,16),(97,47,17),(98,48,18),(99,49,19),(100,50,20);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','1986-07-19',1,'2017-01-22 00:29:23','New Kyla'),(2,'f','1975-11-06',2,'2007-11-05 23:36:49','West Libbyview'),(3,'m','1987-06-22',3,'1994-05-08 06:25:04','Larsonside'),(4,'f','1978-09-05',4,'1981-10-18 03:20:41','Lake Joesphfort'),(5,'m','2008-12-02',5,'2014-06-02 10:43:43','East Giovanitown'),(6,'f','2004-06-03',6,'1994-10-19 22:09:13','Port Roberto'),(7,'m','2002-02-13',7,'2003-05-17 20:25:00','Jewelland'),(8,'m','1993-08-06',8,'1975-11-03 17:31:32','Mosciskistad'),(9,'f','1974-08-01',9,'2002-07-20 20:16:31','South Janick'),(10,'f','2020-01-09',10,'1990-06-01 01:54:44','Shanahanchester'),(11,'f','1975-11-23',11,'1981-04-28 23:03:11','West Crawford'),(12,'f','1970-03-27',12,'1971-07-16 09:42:08','Wiegandchester'),(13,'m','2017-05-08',13,'2001-03-19 11:09:35','West Isabelle'),(14,'m','1995-10-09',14,'1977-06-28 10:50:31','Spinkaview'),(15,'m','1994-06-05',15,'1984-05-06 22:41:13','Port Damionmouth'),(16,'m','1981-09-13',16,'2009-03-31 05:26:32','Lake Edwardland'),(17,'m','2017-12-11',17,'1984-02-07 07:40:24','West Leila'),(18,'f','2011-03-31',18,'2003-11-20 14:32:33','Dorthaview'),(19,'m','1970-05-06',19,'2000-10-06 07:58:01','Romagueramouth'),(20,'f','2020-09-09',20,'2007-11-09 09:40:24','West Jamilmouth');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамиль',
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='юзеры';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Emerald','Borer','howell.green@example.org','20062ac067dc905f48eea3f9141114104fb7a1c8',89418920739),(2,'Olin','Cremin','schowalter.sarah@example.net','6ed3baa742baebfc65ed66bc167f8fda9c94fe92',89865046546),(3,'Leanna','Beier','rcasper@example.com','8e143ae5b4aa44d3b87b0e7e62d878b14e309086',89759292650),(4,'Rosalyn','Sporer','kryan@example.net','ce2a9e27422eb04cb3908257946ca99f94a74eee',89093484032),(5,'Edwin','Steuber','beverly37@example.org','041efd999a7a0403b846e86254bf5c8a59443ec9',89069318764),(6,'Andre','Luettgen','abshire.daniella@example.net','68624bb420838e8565f3dc670c74ec3e3636d2f5',89794376076),(7,'Gudrun','Hilpert','littel.pearline@example.com','bffd4e73f180094c366514873f470425c7c7f0d3',89442883850),(8,'Cristopher','Fadel','hoppe.ardith@example.com','882bc61ee50e5d7ddd6e60ec3e16b5d350ac1df6',89213469362),(9,'Arvilla','Christiansen','jaiden52@example.org','4ac88a98579ee4da8e85f368d7708f6729e6a25b',89411833578),(10,'Gwen','Wolf','aubree.kunze@example.com','c5d59d4c5f61d9d255a1651b4e5cc586bac05c02',89779925051),(11,'Dahlia','Nicolas','cjacobson@example.net','ea63cf2c5f18d9ec98ac432b21c8eed857298628',89340783429),(12,'Maymie','Cremin','tara.erdman@example.org','f8836d725eb5d7d3a22e6f8a9382f76e5674cc50',89524591847),(13,'Clare','Wisoky','laisha32@example.com','b8792d8a24ba06b80c5bb59dced41b63be8d0e94',89848352210),(14,'Felicia','Monahan','marjorie.donnelly@example.net','8218e3a0dd27144c621cf9d8c6b804ea1314daff',89683884496),(15,'Deontae','Connelly','brown.kaci@example.com','7599e2783ee085c6fa0f3b30c3dc8988c5e37815',89239925104),(16,'Hiram','Feil','greenholt.general@example.net','bbdbed6a9f4f1c191c60e993072fc78e123e80ac',89143881740),(17,'Fae','Wehner','felix14@example.org','85f189fdf7abdfa2361f1b13351c8a38ca3c582d',89671226426),(18,'Justine','Bernier','wmueller@example.net','0aa4bd55652ca90d2ed50693beebec56405c74a5',89068297372),(19,'Nadia','Mayer','glueilwitz@example.org','857eb62e8cd823282aea5a651dce08843a528a22',89195830392),(20,'Kaylah','Dare','lynch.jazmyn@example.org','9a542340f39fff8245dd014e564fbef87388f6ad',89405835527);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
INSERT INTO `users_communities` VALUES (1,1),(1,11),(1,21),(1,31),(1,41),(2,2),(2,12),(2,22),(2,32),(2,42),(3,3),(3,13),(3,23),(3,33),(3,43),(4,4),(4,14),(4,24),(4,34),(4,44),(5,5),(5,15),(5,25),(5,35),(5,45),(6,6),(6,16),(6,26),(6,36),(6,46),(7,7),(7,17),(7,27),(7,37),(7,47),(8,8),(8,18),(8,28),(8,38),(8,48),(9,9),(9,19),(9,29),(9,39),(9,49),(10,10),(10,20),(10,30),(10,40),(10,50),(11,1),(11,11),(11,21),(11,31),(11,41),(12,2),(12,12),(12,22),(12,32),(12,42),(13,3),(13,13),(13,23),(13,33),(13,43),(14,4),(14,14),(14,24),(14,34),(14,44),(15,5),(15,15),(15,25),(15,35),(15,45),(16,6),(16,16),(16,26),(16,36),(16,46),(17,7),(17,17),(17,27),(17,37),(17,47),(18,8),(18,18),(18,28),(18,38),(18,48),(19,9),(19,19),(19,29),(19,39),(19,49),(20,10),(20,20),(20,30),(20,40),(20,50);
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-26  5:11:15
