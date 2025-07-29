CREATE DATABASE  IF NOT EXISTS `Pet_Adoption_DB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Pet_Adoption_DB`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: Pet_Adoption_DB
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comments` (
  `CommentId` int NOT NULL AUTO_INCREMENT,
  `oId` int NOT NULL,
  `pId` int NOT NULL,
  `comments` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`CommentId`),
  KEY `oId` (`oId`),
  KEY `pId` (`pId`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`oId`) REFERENCES `Owner` (`oId`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`pId`) REFERENCES `Pet` (`pId`),
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`parent_id`) REFERENCES `Comments` (`CommentId`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
INSERT INTO `Comments` VALUES (1,10,6,'這條魚看起來很會吃','2025-07-26 05:50:45',NULL),(2,4,6,'What a beautiful fish!','2025-07-26 05:50:45',NULL),(3,10,1,'很可愛的小狗!','2025-07-26 05:50:45',NULL),(4,1,6,'這隻魚有點老','2025-07-26 05:50:45',NULL),(5,10,1,'測試','2025-07-26 05:50:45',NULL),(6,10,6,'金魚抵抗力較強，對環境要求不高，習慣於低溫水環境生活，最佳生活溫度是攝氏15至18℃，但即使是高達34℃的高溫環境或低至-4℃在冰面下也能存活。可是由於金魚的心臟小，不能承受過大的溫度急劇變化，因此不','2025-07-26 05:50:45',NULL),(7,10,6,'因此不能在晝夜溫差大的室外地方存活!','2025-07-26 05:50:45',NULL),(8,10,6,'Hi','2025-07-26 05:50:45',NULL),(9,11,6,'這條魚珍受歡迎!','2025-07-26 05:50:45',NULL),(10,10,6,'Hiii','2025-07-26 05:50:45',NULL),(11,10,12,'?','2025-07-26 05:50:45',NULL),(12,14,6,'haha','2025-07-26 05:50:45',NULL),(13,14,6,'haha','2025-07-26 05:50:45',NULL),(14,14,6,'zsdfasad','2025-07-26 05:50:45',NULL),(15,10,4,'test','2025-07-26 05:50:45',NULL),(16,10,2,'cute dog!','2025-07-26 05:50:45',NULL),(17,10,6,'hi','2025-07-26 05:50:45',NULL),(18,10,2,'hey','2025-07-26 05:50:45',NULL),(19,10,7,'Hi nimo!','2025-07-26 05:50:45',NULL),(20,10,2,'哈囉，這是7/23的訊息','2025-07-26 05:50:45',NULL),(21,10,1,'hi','2025-07-26 05:50:45',NULL),(22,10,1,'test','2025-07-26 08:29:32',NULL),(27,10,1,'我也覺得','2025-07-26 09:22:26',3),(28,10,1,'時間測試','2025-07-26 09:59:35',NULL),(29,10,1,'hii','2025-07-26 10:30:36',21),(30,12,1,'我也在測試','2025-07-26 13:15:44',5),(31,10,1,'留言測試','2025-07-26 17:36:23',3),(32,12,1,'留言測試','2025-07-26 17:37:32',3),(33,12,1,'hiii','2025-07-27 05:14:44',21),(34,12,1,'測試','2025-07-27 05:58:11',5),(35,12,1,'回復','2025-07-27 06:41:24',30),(36,12,2,'reply01','2025-07-27 06:42:43',16),(37,12,2,'reply02','2025-07-27 06:42:48',36),(38,12,1,'回復','2025-07-27 08:05:41',35),(39,12,1,'第二層回覆','2025-07-27 08:08:37',35),(40,12,1,'第一層回覆','2025-07-27 08:08:46',30),(41,17,10,'好帥','2025-07-27 08:10:02',NULL),(42,17,10,'我是測試員','2025-07-27 08:10:13',41),(43,17,10,'在測試一次','2025-07-27 08:10:23',42),(44,17,10,'好喔','2025-07-27 08:10:43',43),(45,1,1,'測試員測試','2025-07-27 11:11:28',27),(46,1,6,'?','2025-07-27 11:16:14',2);
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Owner`
--

DROP TABLE IF EXISTS `Owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Owner` (
  `oId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Owner`
--

LOCK TABLES `Owner` WRITE;
/*!40000 ALTER TABLE `Owner` DISABLE KEYS */;
INSERT INTO `Owner` VALUES (1,'Tester','male','0000'),(2,'Tester2','female','0001'),(3,'Hui','male','0002'),(4,'aaaaa','male','11111'),(5,'tester3','female','999999222222288888'),(6,'bbbbb','male','plokijuhygtfre'),(7,'ccccc','male',';lkjiuhygtfds'),(8,'ddddd','male','lokijuytre'),(9,'eeeee','male','poiujhygtfrgthyujikouygtfdgthyujiokk'),(10,'Hui hui','female','HuiHui'),(11,'Sarah','female','AbcdAbcd'),(12,'BBB','male','000'),(13,'asdasd','male','agaergserg'),(14,'heke','male','poiuytre'),(15,'ooo','male','000'),(16,'Hui250723','male','1234'),(17,'KunYi','female','0315');
/*!40000 ALTER TABLE `Owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pet`
--

DROP TABLE IF EXISTS `Pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pet` (
  `pId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `variety` varchar(20) NOT NULL,
  `information` text,
  `petImage` varchar(225) NOT NULL,
  `OwnerId` int DEFAULT NULL,
  PRIMARY KEY (`pId`),
  KEY `OwnerId` (`OwnerId`),
  CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`OwnerId`) REFERENCES `Owner` (`oId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pet`
--

LOCK TABLES `Pet` WRITE;
/*!40000 ALTER TABLE `Pet` DISABLE KEYS */;
INSERT INTO `Pet` VALUES (1,'jack',10,'dog','Cuteeee!','uploads\\dog01.jpg',1),(2,'doji',5,'dog','Good dog!!','uploads\\dog02.jpg',NULL),(3,'shiro',3,'dog','A pure white puppy','uploads\\dog03.jpg',NULL),(4,'kitty',8,'cat','cute cat','uploads\\cat01.jpg',NULL),(5,'ccc',8,'cat','cattt','uploads\\cat02.jpg',NULL),(6,'Yuyu',100,'fish','A white goldfish','uploads\\fish.jpg',NULL),(7,'nimo',3,'fish','Brightly colored fish','uploads\\fish02.jpg',NULL),(8,'何yuki',3,'human','采音器材長','uploads\\yuki.jpg',NULL),(9,'Dani',1,'human','一個矮矮的馬來西亞人','uploads\\dani.png',NULL),(10,'Neiii',10,'kiwi','GOOD MEN!','uploads\\Nei.png',NULL),(11,'小水',10,'jellyfish','水母亞門是刺胞動物門的主要部分。 水母主要是自由遊動的海洋動物，有傘狀的鈴鐺和拖曳的觸手','uploads\\jellyfish.jpeg',NULL),(12,'大笨鳥',5,'bird','北科特產大笨鳥','uploads\\bird.jpg',10),(13,'ggg',654,'asdasdasd','asdadqwd','uploads\\static_1080.png',NULL),(14,'ggg',654,'asdasdasd','asdadqwd','uploads\\static_1080_1.png',NULL),(15,'ascasd',112,'sdasfg','awdgfaerg','uploads\\Title.jpg',NULL),(16,'小路亂撞',8,'giraffe','她的脖子很長','uploads\\img.jpg',NULL),(17,'tako',6,'cat','cute cat','uploads\\CatImg03.jpg',NULL);
/*!40000 ALTER TABLE `Pet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-28 14:24:41
