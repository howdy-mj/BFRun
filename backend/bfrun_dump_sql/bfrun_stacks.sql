-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: bfrun
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `stacks`
--

DROP TABLE IF EXISTS `stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stacks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '언어 이름',
  `color_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '색상 코드',
  `position_id` int(11) DEFAULT NULL COMMENT '포지션 ID',
  PRIMARY KEY (`ID`),
  KEY `FK_stacks_position_id_positions_ID` (`position_id`),
  CONSTRAINT `FK_stacks_position_id_positions_ID` FOREIGN KEY (`position_id`) REFERENCES `positions` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stacks`
--

LOCK TABLES `stacks` WRITE;
/*!40000 ALTER TABLE `stacks` DISABLE KEYS */;
INSERT INTO `stacks` VALUES (1,'HTML','#E55126',2),(2,'CSS','#0C73B8',2),(3,'JavaScript','#E5A228',2),(4,'Python','#396C97',3),(5,'TypeScript','#007ACC',2),(6,'React','#5ED4F4',2),(7,'React Native','#5ED4F4',2),(8,'Django','#092D1F',3),(9,'Vue','#3FB37F',2),(10,'Node.js','#7CB801',3),(11,'Flask','#000000',3),(12,'Angular','#BE002E',2),(13,'GraphQL','#DF34A6',1),(14,'Apollo','#112A47',1),(15,'Webpack','#8AD0F4',2),(16,'AWS','#08132B',1),(17,'Database','#036172',1),(18,'SQL','#008062',3),(19,'Git','#08132B',1),(20,'Linux','#08132B',1),(21,'Etc','#08132B',1);
/*!40000 ALTER TABLE `stacks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-29  0:44:02
