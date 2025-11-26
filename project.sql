-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: chatbot_db
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat_history`
--

DROP TABLE IF EXISTS `chat_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `message` text,
  `response` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_history`
--

LOCK TABLES `chat_history` WRITE;
/*!40000 ALTER TABLE `chat_history` DISABLE KEYS */;
INSERT INTO `chat_history` VALUES (1,'jj','Mood: Happy','Bot responded to Happy mood','2025-11-07 15:04:28'),(2,'jj','Mood: Moody','Bot responded to Moody mood','2025-11-07 15:04:55'),(3,'User','hi','Interesting! Tell me more...','2025-11-07 16:20:32'),(4,'User','great','Interesting! Tell me more...','2025-11-07 16:20:40'),(5,'User','hi','Interesting! Tell me more...','2025-11-07 16:21:08'),(6,'User','hlo','Interesting! Tell me more...','2025-11-07 16:21:11'),(7,'User','1','Yay! That’s awesome 😄 Stay positive!','2025-11-07 16:25:52'),(8,'User','hi','Hey buddy! You can type 1–7 for options or just chat!','2025-11-07 16:26:00'),(9,'User','hlo','Hey buddy! You can type 1–7 for options or just chat!','2025-11-07 16:26:07'),(10,'User','2','Hmm, sounds like you need a break or a song 🎶','2025-11-07 16:26:11'),(11,'User','yes','Hey buddy! You can type 1–7 for options or just chat!','2025-11-07 16:26:16'),(12,'User','3','No worries, confusion is the first step to learning! 🤔','2025-11-07 16:26:32'),(13,'User','yeah','Hey buddy! You can type 1–7 for options or just chat!','2025-11-07 16:26:38'),(14,'User','4','You can search that on Google — I believe you’ll find it!','2025-11-07 16:26:48'),(15,'User','java','Hey buddy! You can type 1–7 for options or just chat!','2025-11-07 16:27:04'),(16,'User','4','You can search that on Google — I believe you’ll find it!','2025-11-07 16:27:15'),(17,'User','5','Sure! You can use your phone’s reminder app for that ⏰','2025-11-07 16:27:24'),(18,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Exit','2025-11-07 17:15:29'),(19,'User','6','Opened Notes Manager.','2025-11-07 17:17:13'),(20,'User','5','Got it! Reminder set.','2025-11-07 17:17:27'),(21,'User','4','Opening Google for you...','2025-11-07 17:17:40'),(22,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Exit','2025-11-07 17:21:57'),(23,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Exit\n8. Chat History','2025-11-07 19:13:11'),(24,'User','1','That\'s awesome! Keep smiling 😊','2025-11-07 19:13:17'),(25,'User','2','Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶','2025-11-07 19:13:24'),(26,'User','3','Tell me what\'s confusing you 🤔 Maybe I can help!','2025-11-07 19:13:29'),(27,'User','hl','Interesting! Tell me more...','2025-11-07 19:13:37'),(28,'User','4','Opening Google for you...','2025-11-07 19:13:48'),(29,'User','5','Got it! Reminder set.','2025-11-07 19:14:03'),(30,'User','6','Opened Notes Manager.','2025-11-07 19:14:43'),(31,'User','8','Displayed your chat history!','2025-11-07 19:15:03'),(32,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-07 19:17:15'),(33,'User','1','That\'s awesome! Keep smiling 😊','2025-11-07 19:17:21'),(34,'User','2','Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶','2025-11-07 19:17:24'),(35,'User','7','Displayed your chat history!','2025-11-07 19:17:31'),(36,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-07 19:19:57'),(37,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-09 06:03:45'),(38,'User','1','That\'s awesome! Keep smiling 😊','2025-11-09 06:03:50'),(39,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-09 06:03:55'),(40,'User','2','Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶','2025-11-09 06:03:58'),(41,'User','ok','Interesting! Tell me more...','2025-11-09 06:04:02'),(42,'User','3','Tell me what\'s confusing you 🤔 Maybe I can help!','2025-11-09 06:04:06'),(43,'User','4','Opening Google for you...','2025-11-09 06:04:24'),(44,'User','4','Opening Google for you...','2025-11-09 06:04:39'),(45,'User','5','Got it! Reminder set.','2025-11-09 06:04:58'),(46,'User','5','Got it! Reminder set.','2025-11-09 06:05:26'),(47,'User','6','Opened Notes Manager.','2025-11-09 06:06:32'),(48,'User','7','Displayed your chat history!','2025-11-09 06:09:35'),(49,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-10 05:41:47'),(50,'User','4','Opening Google for you...','2025-11-10 05:41:57'),(51,'User','5','Got it! Reminder set.','2025-11-10 05:42:11'),(52,'User','7','Displayed your chat history!','2025-11-10 05:42:35'),(53,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-10 05:51:28'),(54,'User','1','That\'s awesome! Keep smiling 😊','2025-11-10 05:51:46'),(55,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-10 05:51:51'),(56,'User','2','Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶','2025-11-10 05:51:55'),(57,'User','3','Tell me what\'s confusing you 🤔 Maybe I can help!','2025-11-10 05:51:58'),(58,'User','4','Opening Google for you...','2025-11-10 05:52:08'),(59,'User','7','Displayed your chat history!','2025-11-10 05:52:50'),(60,'User','2','Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶','2025-11-10 05:54:51'),(61,'User','ok','Interesting! Tell me more...','2025-11-10 05:54:56'),(62,'User','1','That\'s awesome! Keep smiling 😊','2025-11-10 05:54:58'),(63,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-10 05:55:01'),(64,'User','6','Opened Notes Manager.','2025-11-10 05:56:39'),(65,'User','5','Got it! Reminder set.','2025-11-10 05:57:06'),(66,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-10 06:00:18'),(67,'User','3','Tell me what\'s confusing you 🤔 Maybe I can help!','2025-11-10 06:00:25'),(68,'User','life','Interesting! Tell me more...','2025-11-10 06:00:33'),(69,'User','4','Opening Google for you...','2025-11-10 06:00:55'),(70,'User','4','Opening Google for you...','2025-11-10 06:01:11'),(71,'User','4','Opening Google for you...','2025-11-10 06:02:10'),(72,'User','4','Opening Google for you...','2025-11-10 06:02:30'),(73,'User','5','Got it! Reminder set.','2025-11-10 06:03:17'),(74,'User','7','Displayed your chat history!','2025-11-10 06:03:33'),(75,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-10 06:05:56'),(76,'User','1','That\'s awesome! Keep smiling 😊','2025-11-10 06:06:03'),(77,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-10 06:06:04'),(78,'User','2','Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶','2025-11-10 06:06:06'),(79,'User','hey','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-10 06:06:10'),(80,'User','7','Displayed your chat history!','2025-11-10 06:06:38'),(81,'User','6','Opened Notes Manager.','2025-11-10 06:08:13'),(82,'User','4','Opening Google for you...','2025-11-10 06:08:34'),(83,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-13 16:49:14'),(84,'User','1','That\'s awesome! Keep smiling 😊','2025-11-13 16:57:07'),(85,'User','hello','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-13 16:57:15'),(86,'User','2','Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶','2025-11-13 16:57:19'),(87,'User','yes','Interesting! Tell me more...','2025-11-13 16:57:58'),(88,'User','3','Tell me what\'s confusing you 🤔 Maybe I can help!','2025-11-13 16:58:00'),(89,'User','yeah !nothing big','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-13 16:58:27'),(90,'User','4','Opening Google for you...','2025-11-13 16:59:00'),(91,'User','5','Got it! Reminder set.','2025-11-13 16:59:39'),(92,'User','7','Displayed your chat history!','2025-11-13 19:25:08'),(93,'User','hi','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-22 16:53:30'),(94,'User','1','That\'s awesome! Keep smiling 😊','2025-11-22 16:57:15'),(95,'User','great','Interesting! Tell me more...','2025-11-22 16:57:22'),(96,'User','2','Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶','2025-11-22 16:58:12'),(97,'User','ok','Interesting! Tell me more...','2025-11-22 16:58:31'),(98,'User','3','Tell me what\'s confusing you 🤔 Maybe I can help!','2025-11-22 16:58:34'),(99,'User','nothing','HEY THERE! HOW R YA FEELIN\'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit','2025-11-22 16:58:39'),(100,'User','4','Opening Google for you...','2025-11-22 17:03:33'),(101,'User','5','Got it! Reminder set.','2025-11-22 17:06:43'),(102,'User','6','Opened Notes Manager.','2025-11-22 17:14:38'),(103,'User','7','Displayed your chat history!','2025-11-22 17:16:03');
/*!40000 ALTER TABLE `chat_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jj','hidden'),(2,'h','hidden'),(3,'l','hidden');
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

-- Dump completed on 2025-11-26 16:28:58
