-- MySQL dump 10.13  Distrib 5.7.32, for osx10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: inventario
-- ------------------------------------------------------
-- Server version	5.7.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_logs` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `__data` text,
  `entity_type` tinyint(3) unsigned DEFAULT NULL,
  `project_id` int(10) unsigned DEFAULT NULL COMMENT 'Short description',
  `action_type` tinyint(3) unsigned DEFAULT NULL COMMENT 'Create, Update, Delete',
  `entity_id` int(10) unsigned DEFAULT NULL,
  `user_role_id` tinyint(3) unsigned DEFAULT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `eo_uid` (`eo_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,'2021-04-16 20:06:34',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(2,'2021-04-16 20:21:49',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Mobile\",\"description\":\"\"}',8,NULL,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(3,'2021-04-16 20:22:42',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"description\":\"\"}',18,NULL,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(4,'2021-04-16 22:39:21',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"\"}',9,NULL,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(5,'2021-04-16 22:44:39',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Bahadurabad\",\"description\":\"\"}',14,NULL,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(6,'2021-04-16 22:44:54',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Bahadurabad\",\"description\":\"\"}',14,NULL,2,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(7,'2021-04-16 22:51:49',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Cashier\",\"description\":\"\"}',3,NULL,1,3,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(8,'2021-04-16 22:52:32',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Gulshan e Iqbal\",\"description\":\"\"}',14,NULL,1,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(9,'2021-04-16 22:53:47',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"John Doe\",\"description\":\"\"}',1,NULL,1,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(10,'2021-04-16 22:54:04',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Assign Location\",\"description\":\"\"}',14,NULL,9,NULL,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(11,'2021-04-16 22:57:11',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"A2 Mobile\",\"description\":\"\"}',13,NULL,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(12,'2021-04-16 22:58:38',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"6 quantity added in Bahadurabad location.\"}',7,NULL,2,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(13,'2021-04-16 23:00:45',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"4 quantity added in Gulshan e Iqbal location.\"}',7,NULL,2,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(14,'2021-04-16 23:01:19',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,3,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(15,'2021-04-16 23:02:03',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"3 quantity added in Bahadurabad location.\"}',7,NULL,2,4,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(16,'2021-04-16 23:13:35',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"\"}',9,NULL,1,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(17,'2021-04-16 23:14:31',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"\"}',16,NULL,2,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(18,'2021-04-16 23:21:13',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"\"}',22,NULL,2,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(19,'2021-04-16 23:24:55',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"3 quantity added in Gulshan e Iqbal location.\"}',7,NULL,2,5,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(20,'2021-04-16 23:25:42',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"3 quantity added in Bahadurabad location.\"}',7,NULL,2,6,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(21,'2021-04-16 23:26:09',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"4 quantity added in Gulshan e Iqbal location.\"}',7,NULL,2,7,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(22,'2021-04-16 23:26:51',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,8,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(23,'2021-04-16 23:27:46',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"3 quantity added in Gulshan e Iqbal location.\"}',7,NULL,2,9,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(24,'2021-04-16 23:28:41',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"\"}',22,NULL,2,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(25,'2021-04-16 23:31:11',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"description\":\"\"}',20,NULL,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(26,'2021-04-16 23:31:43',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"description\":\"\"}',20,NULL,1,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(27,'2021-04-16 23:33:44',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"description\":\"\"}',17,NULL,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(28,'2021-04-16 23:33:44',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"description\":\"\"}',21,NULL,1,NULL,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(29,'2021-04-22 17:34:02',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(30,'2021-04-22 19:48:01',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,11,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(31,'2021-04-22 19:48:23',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,12,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(32,'2021-04-22 19:56:40',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"3 quantity added in Bahadurabad location.\"}',7,NULL,2,13,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(33,'2021-04-22 20:07:33',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"3 quantity added in Bahadurabad location.\"}',7,NULL,2,14,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(34,'2021-04-24 09:43:57',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(35,'2021-04-24 17:18:29',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(36,'2021-04-24 17:58:08',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,15,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(37,'2021-04-25 09:54:46',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(38,'2021-05-01 10:28:48',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(39,'2021-05-01 17:55:42',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(40,'2021-05-01 23:45:23',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(41,'2021-05-09 22:42:59',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(42,'2021-05-09 22:58:45',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"1 quantity added in Bahadurabad location.\"}',7,NULL,2,16,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(43,'2021-05-11 20:40:52',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(44,'2021-05-11 20:42:49',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,17,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(45,'2021-05-11 20:49:32',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,18,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(46,'2021-05-11 23:34:22',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"1 quantity added in Bahadurabad location.\"}',7,NULL,2,19,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(47,'2021-05-13 00:14:28',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(48,'2021-05-13 10:17:28',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(49,'2021-05-13 10:19:02',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,7,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(50,'2021-05-13 10:19:07',2,'{\"user_info\":{\"id\":2,\"full_name\":\"John Doe\",\"email\":null,\"username\":\"john_doe\"},\"ip\":\"127.0.0.1\",\"itemName\":\"John Doe\",\"description\":\"\"}',1,NULL,6,2,3,'a28462ee-416a-411e-8e62-93ddf21a181f'),(51,'2021-05-13 10:32:00',2,'{\"user_info\":{\"id\":2,\"full_name\":\"John Doe\",\"email\":null,\"username\":\"john_doe\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,20,3,'a28462ee-416a-411e-8e62-93ddf21a181f'),(52,'2021-05-13 10:32:47',2,'{\"user_info\":{\"id\":2,\"full_name\":\"John Doe\",\"email\":null,\"username\":\"john_doe\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"1 quantity added in Bahadurabad location.\"}',7,NULL,2,21,3,'a28462ee-416a-411e-8e62-93ddf21a181f'),(60,'2021-05-13 11:36:44',2,'{\"user_info\":{\"id\":2,\"full_name\":\"John Doe\",\"email\":null,\"username\":\"john_doe\"},\"ip\":\"127.0.0.1\",\"itemName\":\"John Doe\",\"description\":\"\"}',1,NULL,7,2,3,'a28462ee-416a-411e-8e62-93ddf21a181f'),(61,'2021-05-13 11:36:48',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(62,'2021-05-13 12:08:53',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(64,'2021-05-13 12:15:01',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventory\",\"description\":\"Inventory deleted\"}',7,NULL,3,17,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(65,'2021-05-13 12:16:23',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventory item\",\"description\":\"Inventory deleted\"}',7,NULL,3,13,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(66,'2021-05-13 12:16:31',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventory item\",\"description\":\"Inventory deleted\"}',7,NULL,3,3,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(67,'2021-05-13 12:17:22',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"combination\",\"description\":\"Inventory deleted\"}',7,NULL,3,14,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(68,'2021-05-13 23:02:05',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(69,'2021-05-14 00:10:07',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"product\",\"description\":\"Inventory deleted\"}',7,NULL,3,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(70,'2021-05-14 00:13:46',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"product\",\"description\":\"Product inventories deleted\"}',7,NULL,3,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(71,'2021-05-14 13:22:25',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(72,'2021-05-14 13:55:56',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(73,'2021-05-14 15:12:22',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(74,'2021-05-14 15:13:27',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"2 quantity added in Gulshan e Iqbal location.\"}',7,NULL,2,22,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(75,'2021-05-14 15:15:07',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"product\",\"description\":\"Product inventories deleted\"}',7,NULL,3,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(76,'2021-05-14 15:16:37',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"1 quantity added in Bahadurabad location.\"}',7,NULL,2,23,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(77,'2021-05-14 15:20:37',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"combination\",\"description\":\"Combination inventory deleted\"}',7,NULL,3,23,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(78,'2021-05-14 15:21:03',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,24,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(79,'2021-05-14 15:21:20',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"product\",\"description\":\"Product inventories deleted\"}',7,NULL,3,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(80,'2021-05-14 15:24:01',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,25,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(81,'2021-05-14 15:24:09',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"product\",\"description\":\"Product inventories deleted\"}',7,NULL,3,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(82,'2021-05-14 15:24:56',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"3 quantity added in Bahadurabad location.\"}',7,NULL,2,26,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(83,'2021-05-14 15:25:01',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"product\",\"description\":\"Product inventories deleted\"}',7,NULL,3,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(84,'2021-05-14 15:34:28',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,27,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(85,'2021-05-14 15:35:48',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Galaxy S10\",\"description\":\"3 quantity added in Gulshan e Iqbal location.\"}',7,NULL,2,28,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(86,'2021-05-14 15:37:04',2,'{\"user_info\":{\"id\":2,\"full_name\":\"John Doe\",\"email\":null,\"username\":\"john_doe\"},\"ip\":\"127.0.0.1\",\"itemName\":\"John Doe\",\"description\":\"\"}',1,NULL,6,2,3,'a28462ee-416a-411e-8e62-93ddf21a181f'),(87,'2021-05-14 15:39:14',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"John Doe\",\"description\":\"\"}',6,NULL,2,2,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(88,'2021-05-14 15:39:59',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Delete Assign Locations\",\"description\":\"\"}',14,NULL,3,NULL,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(89,'2021-05-14 15:39:59',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Assign Location\",\"description\":\"\"}',14,NULL,9,NULL,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(90,'2021-05-14 15:40:34',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Delete Assign Locations\",\"description\":\"\"}',14,NULL,3,NULL,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(91,'2021-05-14 15:41:17',2,'{\"user_info\":{\"id\":2,\"full_name\":\"John Doe\",\"email\":null,\"username\":\"john_doe\"},\"ip\":\"127.0.0.1\",\"description\":\"\"}',17,NULL,1,2,3,'a28462ee-416a-411e-8e62-93ddf21a181f'),(92,'2021-05-14 15:41:17',2,'{\"user_info\":{\"id\":2,\"full_name\":\"John Doe\",\"email\":null,\"username\":\"john_doe\"},\"ip\":\"127.0.0.1\",\"description\":\"\"}',21,NULL,1,NULL,3,'a28462ee-416a-411e-8e62-93ddf21a181f'),(93,'2021-05-15 14:31:42',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(94,'2021-05-15 21:48:58',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(95,'2021-05-16 18:40:00',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(96,'2021-05-16 21:18:59',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"IPhone 11 Pro\",\"description\":\"2 quantity added in Bahadurabad location.\"}',7,NULL,2,30,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(97,'2021-05-17 23:07:19',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(98,'2021-05-19 16:41:55',1,'{\"user_info\":{\"id\":1,\"full_name\":\"Inventra Administrator\",\"email\":\"\",\"username\":\"admin\"},\"ip\":\"127.0.0.1\",\"itemName\":\"Inventra Administrator\",\"description\":\"\"}',1,NULL,6,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barcodes`
--

DROP TABLE IF EXISTS `barcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barcodes` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `barcode` varchar(45) NOT NULL,
  `product_combinations__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `barcode_UNIQUE` (`barcode`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_barcodes_product_combinations1_idx` (`product_combinations__id`),
  CONSTRAINT `fk_barcodes_product_combinations1` FOREIGN KEY (`product_combinations__id`) REFERENCES `product_combinations` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barcodes`
--

LOCK TABLES `barcodes` WRITE;
/*!40000 ALTER TABLE `barcodes` DISABLE KEYS */;
INSERT INTO `barcodes` VALUES (1,'f3a16dd6-9129-4497-948d-94d99848b8b1','2021-04-16 22:39:21','2021-04-16 22:39:21','001',1),(2,'60c9a5fe-7ce1-4b9b-a5a9-c3060c0489b0','2021-04-16 22:39:21','2021-04-16 22:39:21','01',1),(3,'c2db46e0-554e-4c36-8611-d7cd2a697232','2021-04-16 22:39:21','2021-04-16 22:39:21','1',1),(4,'8cd1a675-7744-4bfb-aa77-4b8b26a270a0','2021-04-16 22:39:21','2021-04-16 22:39:21','002',2),(5,'374e96b8-8d1d-472f-8eb6-da183c47a706','2021-04-16 22:39:21','2021-04-16 22:39:21','02',2),(6,'bef0aac9-adc8-4f5f-9ce1-b2600bcfb0b2','2021-04-16 22:39:21','2021-04-16 22:39:21','2',2),(7,'6297bb53-6c15-48af-a678-7f4ac3639613','2021-04-16 22:39:21','2021-04-16 22:39:21','003',3),(8,'5e83072b-a526-4d90-a08f-1c9c872ffb2c','2021-04-16 22:39:21','2021-04-16 22:39:21','03',3),(9,'fba5048c-d62c-4ab8-8510-360048befeef','2021-04-16 22:39:21','2021-04-16 22:39:21','3',3),(10,'dba1ff2e-6e4c-449f-958b-250e092115bd','2021-04-16 22:39:21','2021-04-16 22:39:21','004',4),(11,'427c6227-f01c-462b-a465-2c964cd26603','2021-04-16 22:39:21','2021-04-16 22:39:21','04',4),(12,'92ec4708-2be2-4486-a952-f8c0f7876497','2021-04-16 22:39:21','2021-04-16 22:39:21','4',4),(13,'464fdf67-d042-4e51-9b60-c8ab3baf7112','2021-04-16 22:39:21','2021-04-16 22:39:21','005',5),(14,'72a4db71-ebb0-4bae-af7a-83c5ebeb3e89','2021-04-16 22:39:21','2021-04-16 22:39:21','05',5),(15,'1c40c257-afd1-4071-a92a-b97d98f2c36a','2021-04-16 22:39:21','2021-04-16 22:39:21','5',5),(16,'1ddd1b21-f50b-4cee-8af2-3728e0f22955','2021-04-16 22:39:21','2021-04-16 22:39:21','006',6),(17,'59661895-b0ab-4b9b-9444-5379a64e288c','2021-04-16 22:39:21','2021-04-16 22:39:21','06',6),(18,'9801ff7f-a93a-4207-b4a1-98596d6cd0a5','2021-04-16 22:39:21','2021-04-16 22:39:21','6',6),(19,'dc7fdbc7-cbae-4242-be6d-0e274762533d','2021-04-16 22:39:21','2021-04-16 22:39:21','007',7),(20,'b8d8ff51-014e-4f13-82d0-1a44f7cd9429','2021-04-16 22:39:21','2021-04-16 22:39:21','07',7),(21,'9093cbe0-ffbe-4edd-bae0-fd9e463df51a','2021-04-16 22:39:21','2021-04-16 22:39:21','7',7),(22,'752bc9af-3ce3-4ef8-9eee-92cc599c7d3c','2021-04-16 23:13:35','2021-04-16 23:13:35','0011',8),(23,'3b61a01c-80e1-42d4-abf2-abcbbbad551a','2021-04-16 23:13:35','2021-04-16 23:13:35','0022',9),(24,'421b136a-6b9a-4629-8a59-a32acdb288cf','2021-04-16 23:13:35','2021-04-16 23:13:35','0033',10),(25,'7065539f-6d83-4b40-aa57-4f2a5bb088c8','2021-04-16 23:14:31','2021-04-16 23:14:31','0044',11);
/*!40000 ALTER TABLE `barcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bills` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  `customers__id` int(10) unsigned DEFAULT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  `total_amount` decimal(13,4) DEFAULT NULL,
  `txn_id` varchar(150) DEFAULT NULL,
  `short_description` varchar(1000) DEFAULT NULL,
  `__data` text,
  `bill_number` varchar(45) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `tax_presets__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_bills_customers1_idx` (`customers__id`),
  KEY `fk_bills_user_authorities1_idx` (`user_authorities__id`),
  KEY `fk_bills_tax_presets1_idx` (`tax_presets__id`),
  CONSTRAINT `fk_bills_customers1` FOREIGN KEY (`customers__id`) REFERENCES `customers` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_bills_tax_presets1` FOREIGN KEY (`tax_presets__id`) REFERENCES `tax_presets` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_bills_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,'c0dfba1a-8660-45bf-966d-ce3bf4e42a57','2021-04-16 23:33:44','2021-04-16 23:33:44',2,'a28462ee-416a-411e-8e62-93ddf21a181f',1,1,195700.0000,'txttnn','','{\"tax_details\":{\"amount\":9500,\"type\":\"1\",\"description\":null,\"tax\":5,\"is_add_tax\":true},\"discount_details\":{\"amount\":3800,\"type\":\"1\",\"description\":null,\"discount\":2,\"is_add_discount\":true},\"customer_details\":{\"id\":1,\"name\":\"Customer 01\",\"short_description\":null,\"country\":\"Pakistan\",\"$order\":1}}','011','2021-04-17','2021-04-18',NULL),(2,'e14c5615-509a-4ab1-ac32-434139cacfc0','2021-05-14 15:41:17','2021-05-14 15:41:17',2,'a28462ee-416a-411e-8e62-93ddf21a181f',1,2,105000.0000,NULL,'','{\"tax_details\":{\"amount\":0,\"type\":\"1\",\"description\":null,\"tax\":null,\"is_add_tax\":false},\"discount_details\":{\"amount\":0,\"type\":\"1\",\"description\":null,\"discount\":null,\"is_add_discount\":false},\"customer_details\":{\"id\":1,\"name\":\"Customer 01\",\"short_description\":null,\"country\":\"Pakistan\",\"$order\":1}}','10111','2021-05-14','2021-05-14',NULL);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `eo_uid` char(36) NOT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_categories_user_authorities1_idx` (`user_authorities__id`),
  CONSTRAINT `fk_categories_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'2ae887b6-e3f4-44d8-9f2e-ee20b3e0af8c','2021-04-16 20:21:49','2021-04-16 20:21:49',1,'Mobile','a28462ee-416a-411e-8e62-93ddf21a181f',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(45) NOT NULL,
  `value` text,
  `data_type` tinyint(4) DEFAULT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `eo_uid` (`eo_uid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'2021-04-22 17:53:47','2021-04-22 17:53:47','currency_symbol','Rs.',1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(2,'2021-04-22 17:53:47','2021-04-22 17:53:47','currency_format','{__currencySymbol__}{__amount__} {__currencyCode__}',1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(3,'2021-04-22 17:53:47','2021-04-22 17:53:47','currency','other',1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(4,'2021-04-22 17:53:47','2021-04-22 17:53:47','currency_value','PKR',1,'a28462ee-416a-411e-8e62-93ddf21a181f'),(5,'2021-04-22 17:53:47','2021-04-22 17:53:47','round_zero_decimal_currency','1',2,'a28462ee-416a-411e-8e62-93ddf21a181f');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `_id` smallint(5) unsigned NOT NULL,
  `iso_code` char(2) DEFAULT NULL,
  `name_capitalized` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `iso3_code` char(3) DEFAULT NULL,
  `iso_num_code` smallint(6) DEFAULT NULL,
  `phone_code` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','AFGHANISTAN','Afghanistan','AFG',4,93),(2,'AL','ALBANIA','Albania','ALB',8,355),(3,'DZ','ALGERIA','Algeria','DZA',12,213),(4,'AS','AMERICAN SAMOA','American Samoa','ASM',16,1684),(5,'AD','ANDORRA','Andorra','AND',20,376),(6,'AO','ANGOLA','Angola','AGO',24,244),(7,'AI','ANGUILLA','Anguilla','AIA',660,1264),(8,'AQ','ANTARCTICA','Antarctica',NULL,NULL,0),(9,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28,1268),(10,'AR','ARGENTINA','Argentina','ARG',32,54),(11,'AM','ARMENIA','Armenia','ARM',51,374),(12,'AW','ARUBA','Aruba','ABW',533,297),(13,'AU','AUSTRALIA','Australia','AUS',36,61),(14,'AT','AUSTRIA','Austria','AUT',40,43),(15,'AZ','AZERBAIJAN','Azerbaijan','AZE',31,994),(16,'BS','BAHAMAS','Bahamas','BHS',44,1242),(17,'BH','BAHRAIN','Bahrain','BHR',48,973),(18,'BD','BANGLADESH','Bangladesh','BGD',50,880),(19,'BB','BARBADOS','Barbados','BRB',52,1246),(20,'BY','BELARUS','Belarus','BLR',112,375),(21,'BE','BELGIUM','Belgium','BEL',56,32),(22,'BZ','BELIZE','Belize','BLZ',84,501),(23,'BJ','BENIN','Benin','BEN',204,229),(24,'BM','BERMUDA','Bermuda','BMU',60,1441),(25,'BT','BHUTAN','Bhutan','BTN',64,975),(26,'BO','BOLIVIA','Bolivia','BOL',68,591),(27,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70,387),(28,'BW','BOTSWANA','Botswana','BWA',72,267),(29,'BV','BOUVET ISLAND','Bouvet Island',NULL,NULL,0),(30,'BR','BRAZIL','Brazil','BRA',76,55),(31,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL,246),(32,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96,673),(33,'BG','BULGARIA','Bulgaria','BGR',100,359),(34,'BF','BURKINA FASO','Burkina Faso','BFA',854,226),(35,'BI','BURUNDI','Burundi','BDI',108,257),(36,'KH','CAMBODIA','Cambodia','KHM',116,855),(37,'CM','CAMEROON','Cameroon','CMR',120,237),(38,'CA','CANADA','Canada','CAN',124,1),(39,'CV','CAPE VERDE','Cape Verde','CPV',132,238),(40,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136,1345),(41,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140,236),(42,'TD','CHAD','Chad','TCD',148,235),(43,'CL','CHILE','Chile','CHL',152,56),(44,'CN','CHINA','China','CHN',156,86),(45,'CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL,61),(46,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL,672),(47,'CO','COLOMBIA','Colombia','COL',170,57),(48,'KM','COMOROS','Comoros','COM',174,269),(49,'CG','CONGO','Congo','COG',178,242),(50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180,243),(51,'CK','COOK ISLANDS','Cook Islands','COK',184,682),(52,'CR','COSTA RICA','Costa Rica','CRI',188,506),(53,'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384,225),(54,'HR','CROATIA','Croatia','HRV',191,385),(55,'CU','CUBA','Cuba','CUB',192,53),(56,'CY','CYPRUS','Cyprus','CYP',196,357),(57,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203,420),(58,'DK','DENMARK','Denmark','DNK',208,45),(59,'DJ','DJIBOUTI','Djibouti','DJI',262,253),(60,'DM','DOMINICA','Dominica','DMA',212,1767),(61,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214,1809),(62,'EC','ECUADOR','Ecuador','ECU',218,593),(63,'EG','EGYPT','Egypt','EGY',818,20),(64,'SV','EL SALVADOR','El Salvador','SLV',222,503),(65,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226,240),(66,'ER','ERITREA','Eritrea','ERI',232,291),(67,'EE','ESTONIA','Estonia','EST',233,372),(68,'ET','ETHIOPIA','Ethiopia','ETH',231,251),(69,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238,500),(70,'FO','FAROE ISLANDS','Faroe Islands','FRO',234,298),(71,'FJ','FIJI','Fiji','FJI',242,679),(72,'FI','FINLAND','Finland','FIN',246,358),(73,'FR','FRANCE','France','FRA',250,33),(74,'GF','FRENCH GUIANA','French Guiana','GUF',254,594),(75,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258,689),(76,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL,0),(77,'GA','GABON','Gabon','GAB',266,241),(78,'GM','GAMBIA','Gambia','GMB',270,220),(79,'GE','GEORGIA','Georgia','GEO',268,995),(80,'DE','GERMANY','Germany','DEU',276,49),(81,'GH','GHANA','Ghana','GHA',288,233),(82,'GI','GIBRALTAR','Gibraltar','GIB',292,350),(83,'GR','GREECE','Greece','GRC',300,30),(84,'GL','GREENLAND','Greenland','GRL',304,299),(85,'GD','GRENADA','Grenada','GRD',308,1473),(86,'GP','GUADELOUPE','Guadeloupe','GLP',312,590),(87,'GU','GUAM','Guam','GUM',316,1671),(88,'GT','GUATEMALA','Guatemala','GTM',320,502),(89,'GN','GUINEA','Guinea','GIN',324,224),(90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624,245),(91,'GY','GUYANA','Guyana','GUY',328,592),(92,'HT','HAITI','Haiti','HTI',332,509),(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL,0),(94,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336,39),(95,'HN','HONDURAS','Honduras','HND',340,504),(96,'HK','HONG KONG','Hong Kong','HKG',344,852),(97,'HU','HUNGARY','Hungary','HUN',348,36),(98,'IS','ICELAND','Iceland','ISL',352,354),(99,'IN','INDIA','India','IND',356,91),(100,'ID','INDONESIA','Indonesia','IDN',360,62),(101,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364,98),(102,'IQ','IRAQ','Iraq','IRQ',368,964),(103,'IE','IRELAND','Ireland','IRL',372,353),(104,'IL','ISRAEL','Israel','ISR',376,972),(105,'IT','ITALY','Italy','ITA',380,39),(106,'JM','JAMAICA','Jamaica','JAM',388,1876),(107,'JP','JAPAN','Japan','JPN',392,81),(108,'JO','JORDAN','Jordan','JOR',400,962),(109,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398,7),(110,'KE','KENYA','Kenya','KEN',404,254),(111,'KI','KIRIBATI','Kiribati','KIR',296,686),(112,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408,850),(113,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410,82),(114,'KW','KUWAIT','Kuwait','KWT',414,965),(115,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417,996),(116,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418,856),(117,'LV','LATVIA','Latvia','LVA',428,371),(118,'LB','LEBANON','Lebanon','LBN',422,961),(119,'LS','LESOTHO','Lesotho','LSO',426,266),(120,'LR','LIBERIA','Liberia','LBR',430,231),(121,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434,218),(122,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438,423),(123,'LT','LITHUANIA','Lithuania','LTU',440,370),(124,'LU','LUXEMBOURG','Luxembourg','LUX',442,352),(125,'MO','MACAO','Macao','MAC',446,853),(126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807,389),(127,'MG','MADAGASCAR','Madagascar','MDG',450,261),(128,'MW','MALAWI','Malawi','MWI',454,265),(129,'MY','MALAYSIA','Malaysia','MYS',458,60),(130,'MV','MALDIVES','Maldives','MDV',462,960),(131,'ML','MALI','Mali','MLI',466,223),(132,'MT','MALTA','Malta','MLT',470,356),(133,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584,692),(134,'MQ','MARTINIQUE','Martinique','MTQ',474,596),(135,'MR','MAURITANIA','Mauritania','MRT',478,222),(136,'MU','MAURITIUS','Mauritius','MUS',480,230),(137,'YT','MAYOTTE','Mayotte',NULL,NULL,269),(138,'MX','MEXICO','Mexico','MEX',484,52),(139,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583,691),(140,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498,373),(141,'MC','MONACO','Monaco','MCO',492,377),(142,'MN','MONGOLIA','Mongolia','MNG',496,976),(143,'MS','MONTSERRAT','Montserrat','MSR',500,1664),(144,'MA','MOROCCO','Morocco','MAR',504,212),(145,'MZ','MOZAMBIQUE','Mozambique','MOZ',508,258),(146,'MM','MYANMAR','Myanmar','MMR',104,95),(147,'NA','NAMIBIA','Namibia','NAM',516,264),(148,'NR','NAURU','Nauru','NRU',520,674),(149,'NP','NEPAL','Nepal','NPL',524,977),(150,'NL','NETHERLANDS','Netherlands','NLD',528,31),(151,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530,599),(152,'NC','NEW CALEDONIA','New Caledonia','NCL',540,687),(153,'NZ','NEW ZEALAND','New Zealand','NZL',554,64),(154,'NI','NICARAGUA','Nicaragua','NIC',558,505),(155,'NE','NIGER','Niger','NER',562,227),(156,'NG','NIGERIA','Nigeria','NGA',566,234),(157,'NU','NIUE','Niue','NIU',570,683),(158,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574,672),(159,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580,1670),(160,'NO','NORWAY','Norway','NOR',578,47),(161,'OM','OMAN','Oman','OMN',512,968),(162,'PK','PAKISTAN','Pakistan','PAK',586,92),(163,'PW','PALAU','Palau','PLW',585,680),(164,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL,970),(165,'PA','PANAMA','Panama','PAN',591,507),(166,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598,675),(167,'PY','PARAGUAY','Paraguay','PRY',600,595),(168,'PE','PERU','Peru','PER',604,51),(169,'PH','PHILIPPINES','Philippines','PHL',608,63),(170,'PN','PITCAIRN','Pitcairn','PCN',612,0),(171,'PL','POLAND','Poland','POL',616,48),(172,'PT','PORTUGAL','Portugal','PRT',620,351),(173,'PR','PUERTO RICO','Puerto Rico','PRI',630,1787),(174,'QA','QATAR','Qatar','QAT',634,974),(175,'RE','REUNION','Reunion','REU',638,262),(176,'RO','ROMANIA','Romania','ROM',642,40),(177,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643,7),(178,'RW','RWANDA','Rwanda','RWA',646,250),(179,'SH','SAINT HELENA','Saint Helena','SHN',654,290),(180,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659,1869),(181,'LC','SAINT LUCIA','Saint Lucia','LCA',662,1758),(182,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666,508),(183,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670,1784),(184,'WS','SAMOA','Samoa','WSM',882,684),(185,'SM','SAN MARINO','San Marino','SMR',674,378),(186,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678,239),(187,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682,966),(188,'SN','SENEGAL','Senegal','SEN',686,221),(190,'SC','SEYCHELLES','Seychelles','SYC',690,248),(191,'SL','SIERRA LEONE','Sierra Leone','SLE',694,232),(192,'SG','SINGAPORE','Singapore','SGP',702,65),(193,'SK','SLOVAKIA','Slovakia','SVK',703,421),(194,'SI','SLOVENIA','Slovenia','SVN',705,386),(195,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90,677),(196,'SO','SOMALIA','Somalia','SOM',706,252),(197,'ZA','SOUTH AFRICA','South Africa','ZAF',710,27),(198,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL,0),(199,'ES','SPAIN','Spain','ESP',724,34),(200,'LK','SRI LANKA','Sri Lanka','LKA',144,94),(201,'SD','SUDAN','Sudan','SDN',736,249),(202,'SR','SURINAME','Suriname','SUR',740,597),(203,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744,47),(204,'SZ','SWAZILAND','Swaziland','SWZ',748,268),(205,'SE','SWEDEN','Sweden','SWE',752,46),(206,'CH','SWITZERLAND','Switzerland','CHE',756,41),(207,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760,963),(208,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158,886),(209,'TJ','TAJIKISTAN','Tajikistan','TJK',762,992),(210,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834,255),(211,'TH','THAILAND','Thailand','THA',764,66),(212,'TL','TIMOR-LESTE','Timor-Leste',NULL,NULL,670),(213,'TG','TOGO','Togo','TGO',768,228),(214,'TK','TOKELAU','Tokelau','TKL',772,690),(215,'TO','TONGA','Tonga','TON',776,676),(216,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780,1868),(217,'TN','TUNISIA','Tunisia','TUN',788,216),(218,'TR','TURKEY','Turkey','TUR',792,90),(219,'TM','TURKMENISTAN','Turkmenistan','TKM',795,7370),(220,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796,1649),(221,'TV','TUVALU','Tuvalu','TUV',798,688),(222,'UG','UGANDA','Uganda','UGA',800,256),(223,'UA','UKRAINE','Ukraine','UKR',804,380),(224,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784,971),(225,'GB','UNITED KINGDOM','United Kingdom','GBR',826,44),(226,'US','UNITED STATES','United States','USA',840,1),(227,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL,1),(228,'UY','URUGUAY','Uruguay','URY',858,598),(229,'UZ','UZBEKISTAN','Uzbekistan','UZB',860,998),(230,'VU','VANUATU','Vanuatu','VUT',548,678),(231,'VE','VENEZUELA','Venezuela','VEN',862,58),(232,'VN','VIET NAM','Viet Nam','VNM',704,84),(233,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92,1284),(234,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850,1340),(235,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876,681),(236,'EH','WESTERN SAHARA','Western Sahara','ESH',732,212),(237,'YE','YEMEN','Yemen','YEM',887,967),(238,'ZM','ZAMBIA','Zambia','ZMB',894,260),(239,'ZW','ZIMBABWE','Zimbabwe','ZWE',716,263),(240,'RS','SERBIA','Serbia','SRB',688,381),(241,'AP','ASIA PACIFIC REGION','Asia / Pacific Region','0',0,0),(242,'ME','MONTENEGRO','Montenegro','MNE',499,382),(243,'AX','ALAND ISLANDS','Aland Islands','ALA',248,358),(244,'BQ','BONAIRE, SINT EUSTATIUS AND SABA','Bonaire, Sint Eustatius and Saba','BES',535,599),(245,'CW','CURACAO','Curacao','CUW',531,599),(246,'GG','GUERNSEY','Guernsey','GGY',831,44),(247,'IM','ISLE OF MAN','Isle of Man','IMN',833,44),(248,'JE','JERSEY','Jersey','JEY',832,44),(249,'XK','KOSOVO','Kosovo','---',0,381),(250,'BL','SAINT BARTHELEMY','Saint Barthelemy','BLM',652,590),(251,'MF','SAINT MARTIN','Saint Martin','MAF',663,590),(252,'SX','SINT MAARTEN','Sint Maarten','SXM',534,1),(253,'SS','SOUTH SUDAN','South Sudan','SSD',728,211);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `countries__id` smallint(5) unsigned DEFAULT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_customers_countries1_idx` (`countries__id`),
  KEY `fk_customers_user_authorities1_idx` (`user_authorities__id`),
  CONSTRAINT `fk_customers_countries1` FOREIGN KEY (`countries__id`) REFERENCES `countries` (`_id`) ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'54c8affe-aef9-4009-9571-2f66ddfadaa8','2021-04-16 23:31:11','2021-04-16 23:31:11',1,'Customer 01',NULL,162,'a28462ee-416a-411e-8e62-93ddf21a181f',1),(2,'35cd9ce8-37c0-4a55-aaa3-0103f7ee4c8c','2021-04-16 23:31:43','2021-04-16 23:31:43',1,'Customer 02',NULL,162,'a28462ee-416a-411e-8e62-93ddf21a181f',1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_change_requests`
--

DROP TABLE IF EXISTS `email_change_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_change_requests` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `new_email` varchar(255) NOT NULL,
  `activation_key` varchar(255) NOT NULL,
  `users__id` int(10) unsigned NOT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  KEY `fk_email_change_requests_users1_idx` (`users__id`),
  KEY `fk_email_change_requests_user_authorities1_idx` (`user_authorities__id`),
  CONSTRAINT `fk_email_change_requests_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_email_change_requests_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_change_requests`
--

LOCK TABLES `email_change_requests` WRITE;
/*!40000 ALTER TABLE `email_change_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_change_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `name` varchar(85) NOT NULL,
  `location_id` varchar(45) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  `parent_locations__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_locations_user_authorities1_idx` (`user_authorities__id`),
  KEY `fk_locations_locations1_idx` (`parent_locations__id`),
  CONSTRAINT `fk_locations_locations1` FOREIGN KEY (`parent_locations__id`) REFERENCES `locations` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_locations_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'058fbcd4-608d-44b2-845b-3a25cfa7a308','2021-04-16 22:44:39','2021-04-16 22:44:54',1,'Bahadurabad','loc-01','Near imtiaz','a28462ee-416a-411e-8e62-93ddf21a181f',1,NULL),(2,'01f8ca67-24b7-4d0c-9d99-f0fe43736b1f','2021-04-16 22:52:32','2021-04-16 22:52:32',1,'Gulshan e Iqbal','loc-02','Near hassan square','a28462ee-416a-411e-8e62-93ddf21a181f',1,NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `attempts` tinyint(4) NOT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `eo_uid` (`eo_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_logs`
--

DROP TABLE IF EXISTS `login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_logs` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `eo_uid` (`eo_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_logs`
--

LOCK TABLES `login_logs` WRITE;
/*!40000 ALTER TABLE `login_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  KEY `eo_uid` (`eo_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_combinations`
--

DROP TABLE IF EXISTS `product_combinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_combinations` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `products__id` int(10) unsigned NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `price` decimal(13,4) DEFAULT NULL COMMENT 'Purchase price',
  `sale_price` decimal(13,4) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_product_combinations_products1_idx` (`products__id`),
  CONSTRAINT `fk_product_combinations_products1` FOREIGN KEY (`products__id`) REFERENCES `products` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_combinations`
--

LOCK TABLES `product_combinations` WRITE;
/*!40000 ALTER TABLE `product_combinations` DISABLE KEYS */;
INSERT INTO `product_combinations` VALUES (1,'6a7e91b7-4f17-4fe5-9b7a-9d962b6aaed0','2021-04-16 22:39:21','2021-05-14 15:34:28',2,1,'001','Higher Variant - Black',90000.0000,105000.0000),(2,'57f5fa3b-2d01-4a92-a450-965a9b0b05c3','2021-04-16 22:39:21','2021-05-14 15:24:09',1,1,'002','Higher Variant - Blue',90000.0000,105000.0000),(3,'c0f401fc-15c6-44e5-b7c4-b16d608a7e10','2021-04-16 22:39:21','2021-05-14 15:24:09',1,1,'003','Mid Variant - Black',70000.0000,85000.0000),(4,'98744000-9f2d-4971-8437-dc13c9836e66','2021-04-16 22:39:21','2021-05-14 15:24:09',1,1,'004','Mid Variant - Blue',70000.0000,85000.0000),(5,'701ef5c7-d4e2-4dab-9770-6d9e2f00bafe','2021-04-16 22:39:21','2021-05-14 15:24:09',1,1,'005','Lower Variant - Black',55000.0000,70000.0000),(6,'345d1460-b23d-4258-a22e-ad5215b7ef89','2021-04-16 22:39:21','2021-05-14 15:24:09',1,1,'006','Lower Variant - Blue',55000.0000,70000.0000),(7,'d474d36b-6a25-4dd7-9862-f1fd28649ca1','2021-04-16 22:39:21','2021-05-14 15:24:09',1,1,'007','Lower Variant - Red',57000.0000,75000.0000),(8,'0dbf329c-34fe-4200-8c72-9409ca492120','2021-04-16 23:13:35','2021-05-16 21:18:59',2,2,'0011','Top Variant - Space Gray',150000.0000,180000.0000),(9,'f61b7444-5b36-4e93-93ff-f8daddcfbb1c','2021-04-16 23:13:35','2021-05-14 15:25:01',1,2,'0022','Top Variant - Midnight  Green',155000.0000,190000.0000),(10,'216aa7e0-932a-4b40-b8b7-3cf903a8508a','2021-04-16 23:13:35','2021-05-14 15:25:01',1,2,'0033','Mid Variant - Space Gray',130000.0000,160000.0000),(11,'dfb7fc62-8e3e-4379-9101-8a68c27ef568','2021-04-16 23:13:35','2021-05-14 15:25:01',1,2,'0044','Mid Variant - Midnight Green',130000.0000,160000.0000);
/*!40000 ALTER TABLE `product_combinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_combinations_options`
--

DROP TABLE IF EXISTS `product_combinations_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_combinations_options` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  `product_option_values__id` int(10) unsigned NOT NULL,
  `product_combinations__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_product_combinations_options_product_option_values1_idx` (`product_option_values__id`),
  KEY `fk_product_combinations_options_product_combinations1_idx` (`product_combinations__id`),
  CONSTRAINT `fk_product_combinations_options_product_combinations1` FOREIGN KEY (`product_combinations__id`) REFERENCES `product_combinations` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_combinations_options_product_option_values1` FOREIGN KEY (`product_option_values__id`) REFERENCES `product_option_values` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_combinations_options`
--

LOCK TABLES `product_combinations_options` WRITE;
/*!40000 ALTER TABLE `product_combinations_options` DISABLE KEYS */;
INSERT INTO `product_combinations_options` VALUES (1,'047292cb-d049-4238-b2e3-4f75ea3ec014','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',1,1),(2,'72904d69-fe68-4cdf-ba55-7f751e0cf03c','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',2,1),(3,'18bb0fe1-ed11-4985-ae72-beb6e239793d','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',3,1),(4,'1f440043-1942-43e6-ab81-5606a4e1fbcf','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',4,2),(5,'afc06670-74ab-43a7-a490-fdd9126daf3a','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',5,2),(6,'8beccb8e-4494-475b-82c1-56b6069a145b','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',6,2),(7,'8d2c63a3-8599-4641-a05a-6c9ef142f923','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',7,3),(8,'9cb97287-8ced-434d-9ef9-3bf0158bbb5f','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',8,3),(9,'d9dbfcd4-aa6c-42c9-a790-72103c2c28e1','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',9,3),(10,'43b42d2b-be3c-4056-a104-fe8690ffdb5e','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',10,4),(11,'fe1310b1-f517-475f-9b54-76311fd9db19','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',11,4),(12,'1b08f554-97cc-4c56-9047-69f404be36e1','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',12,4),(13,'6e63e689-4cb3-44a4-bcdf-85860cfd87e8','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',13,5),(14,'357c249c-f2e5-4bd7-ac4d-827a567947a4','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',14,5),(15,'226afdc6-e18e-4b4c-a384-48efd11d9389','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',15,5),(16,'f4e1ee8f-e3b3-492b-9412-ac3314c2a0e9','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',16,6),(17,'c357a72b-c323-4ae8-ac04-ca82fa409726','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',17,6),(18,'ce8aab55-e3ca-40ba-81dc-565a02bbaa29','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',18,6),(19,'b5e49df6-558e-40f4-a672-eed7083397a0','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',19,7),(20,'28f1eb75-2a69-495b-bb01-907b0fa08522','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',20,7),(21,'8258bb43-7718-4fd0-8f80-a783b5def5d5','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f',21,7),(22,'c580980f-aae2-48bb-9d93-4ea72cc73572','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',22,8),(23,'18fb8723-51b8-4caf-a7a4-204bf1b8abcf','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',23,8),(24,'c802d002-aae4-412b-a426-6137a2b4c8be','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',24,8),(25,'f315bb0c-3f39-47fa-b98b-08c651519e07','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',25,9),(26,'03495d0f-2cd0-4f4a-af22-f266695dbd79','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',26,9),(27,'18e6efcf-67c7-4063-8e18-64c36f7e0e5e','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',27,9),(28,'5ad47177-317e-42d6-bbe5-61faf7073eea','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',28,10),(29,'59578442-ef00-4659-a2b6-f15805c355d6','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',29,10),(30,'d0526284-1be1-40ba-9d2a-6ca292e55581','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f',30,10),(31,'84818604-55a4-4cd1-a808-2369833a1fb0','2021-04-16 23:14:31','2021-04-16 23:14:31',1,'a28462ee-416a-411e-8e62-93ddf21a181f',31,11),(32,'14e34da4-c87a-46a4-a82f-ee046147b589','2021-04-16 23:14:31','2021-04-16 23:14:31',1,'a28462ee-416a-411e-8e62-93ddf21a181f',32,11),(33,'ad19ae0a-d4f9-4d07-bcb8-bb4106c81946','2021-04-16 23:14:31','2021-04-16 23:14:31',1,'a28462ee-416a-411e-8e62-93ddf21a181f',33,11);
/*!40000 ALTER TABLE `product_combinations_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_labels`
--

DROP TABLE IF EXISTS `product_option_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_labels` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `products__id` int(10) unsigned NOT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_product_option_labels_products1_idx` (`products__id`),
  KEY `fk_product_option_labels_user_authorities1_idx` (`user_authorities__id`),
  CONSTRAINT `fk_product_option_labels_products1` FOREIGN KEY (`products__id`) REFERENCES `products` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_option_labels_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_labels`
--

LOCK TABLES `product_option_labels` WRITE;
/*!40000 ALTER TABLE `product_option_labels` DISABLE KEYS */;
INSERT INTO `product_option_labels` VALUES (1,'dd1193bf-bd0b-4d34-b8cf-56587df6cf3b','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'RAM',1,1,1),(2,'26164f33-0c78-4ed5-b94f-d4fe1b4bfedf','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'ROM',1,1,1),(3,'e7b4b868-e2a3-465c-82b0-a461d92c2fd4','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'Color',1,1,1);
/*!40000 ALTER TABLE `product_option_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_values`
--

DROP TABLE IF EXISTS `product_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_values` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `product_option_labels__id` int(10) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_product_option_values_product_option_labels1_idx` (`product_option_labels__id`),
  KEY `fk_product_option_values_user_authorities1_idx` (`user_authorities__id`),
  CONSTRAINT `fk_product_option_values_product_option_labels1` FOREIGN KEY (`product_option_labels__id`) REFERENCES `product_option_labels` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_option_values_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_values`
--

LOCK TABLES `product_option_values` WRITE;
/*!40000 ALTER TABLE `product_option_values` DISABLE KEYS */;
INSERT INTO `product_option_values` VALUES (1,'2dd88e54-35b2-4b21-bd5c-84d68b12c0c3','2021-04-16 22:39:21','2021-04-16 22:39:21',1,1,'16GB',1),(2,'8039d06f-1997-4315-b817-ec0858005f57','2021-04-16 22:39:21','2021-04-16 22:39:21',1,2,'256GB',1),(3,'a180234e-8009-4000-ac5e-37b61e8259ac','2021-04-16 22:39:21','2021-04-16 22:39:21',1,3,'Black',1),(4,'e8d10437-bb83-46c3-aca1-b2201a0054af','2021-04-16 22:39:21','2021-04-16 22:39:21',1,1,'16GB',1),(5,'69591a2e-c301-4860-99be-aee27bba666c','2021-04-16 22:39:21','2021-04-16 22:39:21',1,2,'256GB',1),(6,'2d283462-7df5-488f-950b-da6a972589ef','2021-04-16 22:39:21','2021-04-16 22:39:21',1,3,'Blue',1),(7,'2b104193-ba39-4323-a8af-3c28dfc48755','2021-04-16 22:39:21','2021-04-16 22:39:21',1,1,'8GB',1),(8,'eb9b072c-363f-4162-9e9d-fac3feafbe34','2021-04-16 22:39:21','2021-04-16 22:39:21',1,2,'128GB',1),(9,'d9bf78b0-4a91-4b50-88cf-d2d843e1e3dd','2021-04-16 22:39:21','2021-04-16 22:39:21',1,3,'Black',1),(10,'ee01209d-7fbd-4234-b05c-db5ecbe1b88f','2021-04-16 22:39:21','2021-04-16 22:39:21',1,1,'8GB',1),(11,'5ead9d3f-8217-4abc-94d7-f88872725893','2021-04-16 22:39:21','2021-04-16 22:39:21',1,2,'128GB',1),(12,'bfd03f5e-f59e-4403-9831-74570a3ac601','2021-04-16 22:39:21','2021-04-16 22:39:21',1,3,'Blue',1),(13,'59e9a9f7-c80e-45cb-907c-975014336416','2021-04-16 22:39:21','2021-04-16 22:39:21',1,1,'6GB',1),(14,'ad7b7c57-99fe-4504-a237-0d423752d6e9','2021-04-16 22:39:21','2021-04-16 22:39:21',1,2,'64GB',1),(15,'ef146599-02d4-4832-a450-4e0f6d17c414','2021-04-16 22:39:21','2021-04-16 22:39:21',1,3,'Black',1),(16,'84d6a435-9854-4bcc-8bee-7aa72cd92158','2021-04-16 22:39:21','2021-04-16 22:39:21',1,1,'6GB',1),(17,'40bd3257-823b-432b-975e-2ce95568a727','2021-04-16 22:39:21','2021-04-16 22:39:21',1,2,'64GB',1),(18,'b8a2de69-5edc-4a34-b605-3db1ed468005','2021-04-16 22:39:21','2021-04-16 22:39:21',1,3,'Blue',1),(19,'2aadd10a-25cc-4138-942c-bd773abb75e4','2021-04-16 22:39:21','2021-04-16 22:39:21',1,1,'6GB',1),(20,'04677637-85fa-4f88-97e0-1b329dc67748','2021-04-16 22:39:21','2021-04-16 22:39:21',1,2,'64GB',1),(21,'25b90ac5-c123-42c3-9ecd-6ac973f54150','2021-04-16 22:39:21','2021-04-16 22:39:21',1,3,'Red',1),(22,'6d099b0e-ba98-43fb-849f-5a0bb8da7b2b','2021-04-16 23:13:35','2021-04-16 23:13:35',1,1,'16GB',1),(23,'cbaa0637-5786-4dce-8610-5af70e234c41','2021-04-16 23:13:35','2021-04-16 23:13:35',1,2,'256GB',1),(24,'ac0f05eb-e2c9-48e7-85a3-65851d3da3ff','2021-04-16 23:13:35','2021-04-16 23:13:35',1,3,'Space Gray',1),(25,'6dc4553d-1495-4065-b86c-ea1e7f6fc109','2021-04-16 23:13:35','2021-04-16 23:13:35',1,1,'16GB',1),(26,'22b875df-879a-48c6-91c4-e746afbb43ba','2021-04-16 23:13:35','2021-04-16 23:13:35',1,2,'256GB',1),(27,'a718a3da-0d1d-4274-ba32-8eb52396b75d','2021-04-16 23:13:35','2021-04-16 23:13:35',1,3,'Midnight Green',1),(28,'d2234f29-6fbf-4f31-9a1e-2728f8496dde','2021-04-16 23:13:35','2021-04-16 23:13:35',1,1,'8GB',1),(29,'519c5cf2-24d4-447a-a129-5cf539b53390','2021-04-16 23:13:35','2021-04-16 23:13:35',1,2,'64GB',1),(30,'6771bdc2-3b5b-4a2f-9f08-e227d392a100','2021-04-16 23:13:35','2021-04-16 23:13:35',1,3,'Space Gray',1),(31,'bcdbfa8c-f944-4db0-a9bf-8202bf7b2273','2021-04-16 23:14:31','2021-04-16 23:14:31',1,1,'8GB',1),(32,'b15d2865-ee78-4630-883f-b1d87a10e77d','2021-04-16 23:14:31','2021-04-16 23:14:31',1,2,'64GB',1),(33,'feb7f683-79de-4123-814d-f22175bd931c','2021-04-16 23:14:31','2021-04-16 23:14:31',1,3,'Midnight  Green',1);
/*!40000 ALTER TABLE `product_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `eo_uid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  `categories__id` int(10) unsigned DEFAULT NULL,
  `tax_presets__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_products_user_authorities1_idx` (`user_authorities__id`),
  KEY `fk_products_categories1_idx` (`categories__id`),
  KEY `fk_products_tax_presets1_idx` (`tax_presets__id`),
  CONSTRAINT `fk_products_categories1` FOREIGN KEY (`categories__id`) REFERENCES `categories` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_tax_presets1` FOREIGN KEY (`tax_presets__id`) REFERENCES `tax_presets` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'9af8b436-2395-4597-8608-53a36a133704','2021-04-16 22:39:21','2021-04-16 22:39:21',1,'a28462ee-416a-411e-8e62-93ddf21a181f','Galaxy S10','New galaxy s10 box pack',1,1,1),(2,'c556b8b5-ab01-415e-bda9-7b96161aabfc','2021-04-16 23:13:35','2021-04-16 23:13:35',1,'a28462ee-416a-411e-8e62-93ddf21a181f','IPhone 11 Pro','New iPhone 11 Pro box pack',1,1,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_transactions`
--

DROP TABLE IF EXISTS `stock_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_transactions` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `quantity` decimal(13,4) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT 'Credit or Debit',
  `sub_type` tinyint(3) unsigned DEFAULT NULL COMMENT 'Purchased,Sold,Return,Wastage,Moved In, Moved Out',
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  `locations__id` int(10) unsigned DEFAULT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  `total_price` decimal(13,4) DEFAULT NULL,
  `total_amount` decimal(13,4) DEFAULT NULL,
  `__data` text,
  `suppliers__id` int(10) unsigned DEFAULT NULL,
  `product_combinations__id` int(10) unsigned DEFAULT NULL,
  `currency_code` varchar(5) DEFAULT NULL,
  `bills__id` int(10) unsigned DEFAULT NULL,
  `customers__id` int(10) unsigned DEFAULT NULL,
  `tax_presets__id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_stock_transactions_user_authorities1_idx` (`user_authorities__id`),
  KEY `fk_stock_transactions_locations1_idx` (`locations__id`),
  KEY `fk_stock_transactions_suppliers1_idx` (`suppliers__id`),
  KEY `fk_stock_transactions_product_combinations1_idx` (`product_combinations__id`),
  KEY `fk_stock_transactions_bills1_idx` (`bills__id`),
  KEY `fk_stock_transactions_customers1_idx` (`customers__id`),
  KEY `fk_stock_transactions_tax_presets1_idx` (`tax_presets__id`),
  CONSTRAINT `fk_stock_transactions_bills1` FOREIGN KEY (`bills__id`) REFERENCES `bills` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_transactions_customers1` FOREIGN KEY (`customers__id`) REFERENCES `customers` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_transactions_locations1` FOREIGN KEY (`locations__id`) REFERENCES `locations` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_transactions_product_combinations1` FOREIGN KEY (`product_combinations__id`) REFERENCES `product_combinations` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_transactions_suppliers1` FOREIGN KEY (`suppliers__id`) REFERENCES `suppliers` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_transactions_tax_presets1` FOREIGN KEY (`tax_presets__id`) REFERENCES `tax_presets` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_transactions_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_transactions`
--

LOCK TABLES `stock_transactions` WRITE;
/*!40000 ALTER TABLE `stock_transactions` DISABLE KEYS */;
INSERT INTO `stock_transactions` VALUES (27,'0d8ce464-e8e5-4f67-a1be-31a6d86c9a4c','2021-05-14 15:34:28','2021-05-14 15:34:28',1,2.0000,2,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f',90000.0000,180000.0000,NULL,1,1,'PKR',NULL,NULL,NULL),(28,'5c973ccd-5306-4bf7-9e41-84e2e3cbf74e','2021-05-14 15:35:48','2021-05-14 15:35:48',1,3.0000,2,1,1,2,'a28462ee-416a-411e-8e62-93ddf21a181f',90000.0000,270000.0000,NULL,1,1,'PKR',NULL,NULL,NULL),(29,'2341a16e-9bf6-4ea9-8417-226b65496b3f','2021-05-14 15:41:17','2021-05-14 15:41:17',1,1.0000,1,2,2,2,'a28462ee-416a-411e-8e62-93ddf21a181f',105000.0000,105000.0000,'{\"tax_details\":[]}',NULL,1,'PKR',2,1,1),(30,'7c1d0398-b1f8-49a7-a008-803298a52ca6','2021-05-16 21:18:59','2021-05-16 21:18:59',1,2.0000,2,1,1,1,'a28462ee-416a-411e-8e62-93ddf21a181f',150000.0000,300000.0000,NULL,1,8,'PKR',NULL,NULL,NULL);
/*!40000 ALTER TABLE `stock_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  `user_authorities__id` int(10) unsigned DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_suppliers_user_authorities1_idx` (`user_authorities__id`),
  CONSTRAINT `fk_suppliers_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'ef21147c-816d-4da7-ad2a-6506952b4bd8','2021-04-16 22:57:11','2021-04-16 22:57:11',1,'A2 Mobile','a28462ee-416a-411e-8e62-93ddf21a181f',1,'A2 mobile, saddar');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_presets`
--

DROP TABLE IF EXISTS `tax_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_presets` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_presets`
--

LOCK TABLES `tax_presets` WRITE;
/*!40000 ALTER TABLE `tax_presets` DISABLE KEYS */;
INSERT INTO `tax_presets` VALUES (1,'f343dc55-79c9-482f-a084-68b7bcd907f5','2021-04-16 20:22:42','2021-04-16 20:22:42',1,NULL,'Abc','demo');
/*!40000 ALTER TABLE `tax_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `eo_uid` char(36) DEFAULT NULL,
  `tax_amount` decimal(13,4) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `tax_presets__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_taxes_tax_presets1_idx` (`tax_presets__id`),
  CONSTRAINT `fk_taxes_tax_presets1` FOREIGN KEY (`tax_presets__id`) REFERENCES `tax_presets` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_registry`
--

DROP TABLE IF EXISTS `token_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token_registry` (
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `jwt_token` varchar(1000) NOT NULL COMMENT 'Store original JWT token without encryption ',
  `user_authorities__id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `expiry_at` datetime DEFAULT NULL,
  `predecessor_token_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_token_registry_user_authorities1_idx` (`user_authorities__id`),
  CONSTRAINT `fk_token_registry_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_registry`
--

LOCK TABLES `token_registry` WRITE;
/*!40000 ALTER TABLE `token_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authorities`
--

DROP TABLE IF EXISTS `user_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_authorities` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `users__id` int(10) unsigned NOT NULL,
  `user_roles__id` tinyint(3) unsigned NOT NULL,
  `__permissions` text,
  `eo_uid` char(36) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_user_authorities_users1_idx` (`users__id`),
  KEY `fk_user_authorities_user_roles1_idx` (`user_roles__id`),
  KEY `eo_id` (`eo_uid`),
  CONSTRAINT `fk_user_authorities_user_roles1` FOREIGN KEY (`user_roles__id`) REFERENCES `user_roles` (`_id`) ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_authorities_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authorities`
--

LOCK TABLES `user_authorities` WRITE;
/*!40000 ALTER TABLE `user_authorities` DISABLE KEYS */;
INSERT INTO `user_authorities` VALUES (1,'52d7d751-b31d-11e7-ac98-305a3a82568c',1,'2021-04-16 15:12:45','2021-04-16 15:12:45',1,1,NULL,'a28462ee-416a-411e-8e62-93ddf21a181f'),(2,'877db3ef-e661-40a5-847f-cbd6f0219fd5',1,'2021-04-16 22:53:47','2021-05-14 15:39:13',2,3,'{\"allow\":[\"view_billing\",\"add_billing\"],\"deny\":[]}','a28462ee-416a-411e-8e62-93ddf21a181f');
/*!40000 ALTER TABLE `user_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_locations`
--

DROP TABLE IF EXISTS `user_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_locations` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `user_authorities__id` int(10) unsigned NOT NULL,
  `locations__id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `fk_user_locations_user_authorities1_idx` (`user_authorities__id`),
  KEY `fk_user_locations_locations1_idx` (`locations__id`),
  CONSTRAINT `fk_user_locations_locations1` FOREIGN KEY (`locations__id`) REFERENCES `locations` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_locations_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_locations`
--

LOCK TABLES `user_locations` WRITE;
/*!40000 ALTER TABLE `user_locations` DISABLE KEYS */;
INSERT INTO `user_locations` VALUES (1,'145f7ea1-aec7-47d3-b87e-c03585eeac13','2021-04-16 22:54:04','2021-04-16 22:54:04',1,2,1);
/*!40000 ALTER TABLE `user_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profiles` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `__data` text,
  `users__id` int(10) unsigned NOT NULL,
  `countries__id` smallint(5) unsigned DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `company` varchar(85) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  KEY `fk_user_profiles_users1_idx` (`users__id`),
  KEY `fk_user_profiles_countries1_idx` (`countries__id`),
  CONSTRAINT `fk_user_profiles_countries1` FOREIGN KEY (`countries__id`) REFERENCES `countries` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_profiles_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `__permissions` text,
  `eo_uid` char(36) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `eo_uid` (`eo_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'bb1cb378-aaff-4c6d-9ba1-4a1a19391ef8',1,'2021-04-16 15:12:45','2021-04-16 15:12:45','Admin',NULL,'a28462ee-416a-411e-8e62-93ddf21a181f'),(2,'af4e7fed-a3ea-4012-8ff3-1952c25f198d',1,'2021-04-16 15:12:45','2021-04-16 15:12:45','Stock Incharge',NULL,'a28462ee-416a-411e-8e62-93ddf21a181f'),(3,'009b0aaf-8b3a-40a7-8588-dd2e5dd6ac85',1,'2021-04-16 22:51:49','2021-04-16 22:51:49','Cashier','{\"allow\":[\"manage_assigned_location_inventory\",\"view_product\",\"create_product\",\"update_product\",\"view_category\",\"create_category\"],\"deny\":[\"view_only_manage_users\",\"add_user\",\"edit_user\",\"delete_and_restore_user\",\"view_user_details\",\"assign_location\",\"view_only_manage_role\",\"add_role\",\"manage_role_permission\",\"delete_role\",\"manage_confguration_setting\",\"view_activity_log\",\"delete_product\",\"update_category\",\"delete_category\",\"view_supplier\",\"create_supplier\",\"update_supplier\",\"delete_supplier\",\"view_location\",\"create_location\",\"update_location\",\"delete_location\",\"assign_user\",\"view_billing\",\"add_billing\",\"edit_billing\",\"delete_billing\",\"print_or_download_bill\",\"view_customer\",\"add_customer\",\"edit_customer\",\"delete_customer\",\"view_tax_preset\",\"add_tax_preset\",\"edit_tax_preset\",\"delete_tax_preset\",\"view_tax\",\"add_tax\",\"edit_tax\",\"delete_tax\",\"view_reports\"]}','a28462ee-416a-411e-8e62-93ddf21a181f');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `designation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid_UNIQUE` (`_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'110959df-c6e5-31b5-0b76-d8ad90825b32','2021-04-16 15:12:45','2021-04-16 15:12:45','admin','','$2y$10$0MFZ3GWf7JSlfFjpPQ0gke7Sq9lZ/s3yhKwCjY7z00mRAjwDnE4um',1,'KmCBpLa1d2IWeV4l5iSSOtyGzl1mmpQZ8SlV2gXCT0W2HAI40frU6gFhuEUK','Inventra','Administrator',NULL),(2,'89092bec-2d5d-4da6-9dbd-bc29111fd14f','2021-04-16 22:53:47','2021-04-16 22:53:47','john_doe',NULL,'$2y$10$XeONlJj4aHC474XA5EGrc.pJmYAIJwEN2X8WSw0798NerMKxXUGEW',1,NULL,'John','Doe',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04  4:14:23
