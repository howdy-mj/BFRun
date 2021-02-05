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
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlists` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '플레이리스트 url',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '플레이리스트 이름',
  `channel_id` int(11) DEFAULT NULL COMMENT '채널 ID',
  PRIMARY KEY (`ID`),
  KEY `FK_playlists_channel_id_channels_ID` (`channel_id`),
  CONSTRAINT `FK_playlists_channel_id_channels_ID` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'https://www.youtube.com/playlist?list=PLuHgQVnccGMCEfBwnNGsJCQDiqSWI-edj','React class vs function style',1),(2,'https://www.youtube.com/playlist?list=PLuHgQVnccGMDWjb0TWItMCfDWDs8Y3Oo7','Github.com',1),(3,'https://www.youtube.com/playlist?list=PLuHgQVnccGMB4krR04ug5nEXJ3sAEOWDL','NPM Package',1),(4,'https://www.youtube.com/playlist?list=PLuHgQVnccGMChcT9IKopFDoAIoTA-03DA','Webpack',1),(5,'https://www.youtube.com/playlist?list=PLuHgQVnccGMDuVdsGtH1_452MtRxALb_7','React Redux',1),(6,'https://www.youtube.com/playlist?list=PLuHgQVnccGMCRv6f8H9K5Xwsdyg4sFSdi','React',1),(7,'https://www.youtube.com/playlist?list=PLuHgQVnccGMDF6rHsY9qMuJMd295Yk4sa','관계형 데이터 모델링',1),(8,'https://www.youtube.com/playlist?list=PLuHgQVnccGMAG1O1BRZCT3wkD_aPmPylq','SQL JOIN',1),(9,'https://www.youtube.com/playlist?list=PLuHgQVnccGMAp9YSO2J5VBWLJewTPn_0_','AWS - Educate',1),(10,'https://www.youtube.com/playlist?list=PLuHgQVnccGMBT57a9dvEtd6OuWpugF9SH','리눅스',1),(11,'https://www.youtube.com/playlist?list=PLuHgQVnccGMDZP7FJ_ZsUrdCGH68ppvPb','WEB1- HTML & Internet',1),(12,'https://www.youtube.com/playlist?list=PLuHgQVnccGMAnWgUYiAW2cTzSBywFO75B','WEB2-CSS',1),(13,'https://www.youtube.com/playlist?list=PLuHgQVnccGMBB348PWRN0fREzYcYgFybf','WEB2-JavaScript',1),(14,'https://www.youtube.com/playlist?list=PLuHgQVnccGMCI75J-rC8yZSVGZq3gYsFp','WEB2-Domain Name System',1),(15,'https://www.youtube.com/playlist?list=PLuHgQVnccGMDMxfZEpLbzHPZUEwObEaZq','WEB2 Python',1),(16,'https://www.youtube.com/playlist?list=PLuHgQVnccGMCgrP_9HL3dAcvdt8qOZxjW','DATABASE2 - MySQL',1),(17,'https://www.youtube.com/playlist?list=PLpO7kx5DnyIFyT_q9gVtg4CzYU0EYcI5C','모든 얄코영상',2),(18,'https://www.youtube.com/playlist?list=PLpO7kx5DnyIExYt0jkyWWjx8XNA2Fx2rI','컴퓨터공학',2),(19,'https://www.youtube.com/playlist?list=PLpO7kx5DnyIHrxFpyXKkzUg2F_mr-8yY0','객체지향',2),(20,'https://www.youtube.com/playlist?list=PLpO7kx5DnyIFQ4XuYirD--DvRyUgaHD9w','웹 프로그래밍',2),(21,'https://www.youtube.com/playlist?list=PLpO7kx5DnyIF-jXg6bBhLAS9WQt5metRJ','Git',2),(22,'https://www.youtube.com/playlist?list=PLGPF8gvWLYypxQkVa1mXGn3td5wX2F-3L','[초급] 1일 1파이썬',3),(23,'https://www.youtube.com/playlist?list=PLGPF8gvWLYyqwyDsJ1YcvJbP3iEtqd__X','[초급] PyCharm은 처음입니다만',3),(24,'https://www.youtube.com/playlist?list=PLGPF8gvWLYyrmWBOzypMlVgWKfqTzYvgQ','[중급] Vim 에디터는 처음입니다만',3),(25,'https://www.youtube.com/playlist?list=PLGPF8gvWLYyontH0PECIUFFUdvATXWQEL','[입문] 한입에 쏙 파이썬',3),(26,'https://www.youtube.com/playlist?list=PLGPF8gvWLYyppp-SyL_pQzAZEJcI4nTLJ','[입문] 한입에 쏙 파이썬 연습문제',3),(27,'https://www.youtube.com/playlist?list=PLa7Lj786Q-GsaenVTJ0f5GN1bar0jW4N2','워니의 팁',4),(28,'https://www.youtube.com/playlist?list=PLa7Lj786Q-GvC3-aT3J8sNDxX2bZOeonr','워니의 인터뷰',4),(29,'https://www.youtube.com/playlist?list=PLa7Lj786Q-GtH_zTBNufgR4MTiKH6OP4_','코딩 기초 없이 웹사이트 따라 만들기 (HTML, CSS)',4),(30,'https://www.youtube.com/playlist?list=PLa7Lj786Q-GtIiIHvaNMyvipFOdX07h9O','워니의 실리콘밸리 개발자 썰',4),(31,'https://www.youtube.com/playlist?list=PLa7Lj786Q-GvteC7hvNKgEclWIFzHnkel','개발자 꿈나무들을 위해',4),(32,'https://www.youtube.com/playlist?list=PLa7Lj786Q-Gts3-LsBl5I56YQrQb4sHxI','코딩 기초 강좌 - 파이썬',4),(33,'https://www.youtube.com/playlist?list=PLa7Lj786Q-Gty_eF-4t1tUFzmHNY8EYwm','그래픽 디자인, UI/UX',4),(34,'https://www.youtube.com/playlist?list=PLa7Lj786Q-GtXZ9A8r3w7r80pK6n6nTo7','워니의 여행',4),(35,'https://www.youtube.com/playlist?list=PLa7Lj786Q-GuWX4mgqK8RSReWzsorRHL2','인공지능, 머신러닝, 딥러닝, 데이터 사이언스',4),(36,'https://www.youtube.com/playlist?list=PLa7Lj786Q-GsAUWiIj2aOdktaCUuRXRyt','비트코인',4),(37,'https://www.youtube.com/playlist?list=PLv2d7VI9OotTVOL4QmPfvJWPJvkmv6h-2','자바스크립트 기초 강의 (ES5+): 같이 노트를 작성하며 배워요 ?',5),(38,'https://www.youtube.com/playlist?list=PLv2d7VI9OotSyQ6RPdytiHID5Cmnv_sA3','승승장구 커리어 관리 ?',5),(39,'https://www.youtube.com/playlist?list=PLv2d7VI9OotRTfM1zJLQMCLriBpLFg8r-','IT 트렌드 ?',5),(40,'https://www.youtube.com/playlist?list=PLv2d7VI9OotQ1F92Jp9Ce7ovHEsuRQB3Y','프론트엔드 강의 - 프론트엔드 개발자 되기 입문편⭐️ (개념 + 클론코딩)',5),(41,'https://www.youtube.com/playlist?list=PLv2d7VI9OotQB-9p29xrAnARhuE1Vf88I','Tech & Tools ❤️',5),(42,'https://www.youtube.com/playlist?list=PLv2d7VI9OotQ6qTdjSz_4FBYLHQ0rhUMZ','개발 공부 방법 ?',5),(43,'https://www.youtube.com/playlist?list=PLv2d7VI9OotR1tALnxov7sAUshyBmfYfU','개발자 브이로그 ?',5),(44,'https://www.youtube.com/playlist?list=PLv2d7VI9OotSwuex_X9ByriLr1cKb3yPR','해외 취업 · 이민 ?',5),(45,'https://www.youtube.com/playlist?list=PLv2d7VI9OotSm-6vq7Mg3plBylJjEIDR8','엘리의 개발 이야기 ??‍?',5),(46,'https://www.youtube.com/playlist?list=PLv2d7VI9OotTZfvF0s8Vs0gpRtodlTsgg','취업 보장 이력서 작성 ?',5),(47,'https://www.youtube.com/playlist?list=PL7jH19IHhOLMu8dpjb2A6O7BYYlO2gJbN','Nicolas TV: All About Programming',6),(48,'https://www.youtube.com/playlist?list=PL7jH19IHhOLPEhP6oPSgK6r-neUVVA-pi','React Native Weather 2019',6),(49,'https://www.youtube.com/playlist?list=PL7jH19IHhOLOagok7uFWKlOleLF64grb6','실전형 리액트 Hooks',6),(50,'https://www.youtube.com/playlist?list=PL7jH19IHhOLPp990qs8MbSsUlzKcTKuCf','React Fundamentals 2019',6),(51,'https://www.youtube.com/playlist?list=PL7jH19IHhOLNM5mePXxbpnPefi6PiiNCX','Build a blockchain with Typescript',6),(52,'https://www.youtube.com/playlist?list=PL7jH19IHhOLOefIzCSQ03xlBekyi81FVv','리액트 네이티브로 투두앱 만들기 Build To Do App with React Native',6),(53,'https://www.youtube.com/playlist?list=PL7jH19IHhOLM8YwJMTa3UkXZN-LldYnyK','JS Basics',6),(54,'https://www.youtube.com/playlist?list=PL7jH19IHhOLOXUYVU1D4aqdPzH3M8M2Gy','Nomad VLOG : 브이로그',6),(55,'https://www.youtube.com/playlist?list=PL7jH19IHhOLNtbssgsoLx7QMv3a6QZ6NB','Nomad Interview : 개발자 인터뷰',6),(56,'https://www.youtube.com/playlist?list=PL7jH19IHhOLMKSZoYTmslD5UoKanEgBRP','Lynn\'s Review | 리뷰.후기.사용기',6),(57,'https://www.youtube.com/playlist?list=PL7jH19IHhOLMmmjrwCi7-dMFVdoU0hhgF','33 Concepts of JavaScript',6),(58,'https://www.youtube.com/playlist?list=PL7jH19IHhOLPExjpce2jNuxahtZvkqH57','Nomad TRAVEL : 여행 이야기',6),(59,'https://www.youtube.com/playlist?list=PL7jH19IHhOLNtwXhfYrbrqM6-CYrVkUWy','PaintJS',6),(60,'https://www.youtube.com/playlist?list=PL7jH19IHhOLPDyuhF_fLCt_pKvtuLI5qX','React Hooks',6),(61,'https://www.youtube.com/playlist?list=PL7jH19IHhOLPi1T6yTqKLqeagwEocJ0uX','Startup in 1 month | 한달 1 스타트업',6),(62,'https://www.youtube.com/playlist?list=PL7jH19IHhOLMTVBzUkbN74h1nyXW7VhYV','Build an Offline Apollo Note Taking App with React, Apollo and GraphQL',6),(63,'https://www.youtube.com/playlist?list=PL7jH19IHhOLOVNxdXbPqcOweev3NuI527','Make Web App with GraphQL Client',6),(64,'https://www.youtube.com/playlist?list=PL7jH19IHhOLNUIOJcGj6egl-dNB-QXjEm','Make CSS Great Again! Styled Components!',6),(65,'https://www.youtube.com/playlist?list=PL7jH19IHhOLNY7b4Ludyz18PNqT3gfEUP','Anti Redux? React Context API',6),(66,'https://www.youtube.com/playlist?list=PL7jH19IHhOLOpU_yAYzCO4iQNvdou1AnK','Make Your First GraphQL Server',6),(67,'https://www.youtube.com/playlist?list=PL7jH19IHhOLPoITW9XI5LUHtiSFLtp9Up','블록체인 개발자 Cryptocurrency with Nicolas',6),(68,'https://www.youtube.com/playlist?list=PL7jH19IHhOLMc08n3VEYA6sJmEOwmUzkj','리액트 16 마스터하기 Mastering React 16',6),(69,'https://www.youtube.com/playlist?list=PL7jH19IHhOLMKhZfOg7fj6gFX7Lbxpk7q','리액트, 리덕스로 타이머 앱 만들기 Build timer app with React Native and Redux',6),(70,'https://www.youtube.com/playlist?list=PL7jH19IHhOLNPOI3bEBtSw1Acp3fS0enw','리액트 네이티브로 날씨앱 만들기 Build App with React Native',6),(71,'https://www.youtube.com/playlist?list=PL7jH19IHhOLOg8FmiKwc-fYmRjL4oB_PJ','파셀 30분 마스터하기 Parcel in 30 min',6),(72,'https://www.youtube.com/playlist?list=PL7jH19IHhOLOFTVD4R8FeZWkwpVi8-9Fv','리액트 기초 웹 서비스 만들기 React JS Fundamentals',6),(73,'https://www.youtube.com/playlist?list=PLsTXYDw7vAcR25tg4D36Rp3efrXBLoaLg','? 프린이 로드맵 ROADMAP',8),(74,'https://www.youtube.com/playlist?list=PLsTXYDw7vAcRhM3xkQM7N_c4eLrghP4_1','? 주짓떼라 Kimbug',8),(75,'https://www.youtube.com/playlist?list=PLsTXYDw7vAcTvwd7XBMDzXB6ZdKAs-Bpm','? 버그러운 일상',8),(76,'https://www.youtube.com/playlist?list=PLU9-uwewPMe2L7dC2us_C3LLwDL9vHQIx','점프 투 파이썬 라이브 풀버전',9),(77,'https://www.youtube.com/playlist?list=PLU9-uwewPMe0QW2dbwUBM2wGK-TJCagVu','조코딩 라이브',9),(78,'https://www.youtube.com/playlist?list=PLU9-uwewPMe19RQNzTdSdewSgw92UI1kl','조코딩 영상 몰아보기',9),(79,'https://www.youtube.com/playlist?list=PLU9-uwewPMe1AsOwlodmuaap99KH_483a','완전 쉬운 인공지능, AI, 머신러닝, 딥러닝',9),(80,'https://www.youtube.com/playlist?list=PLU9-uwewPMe3MqmxuAyDsb-DsCk-koXVu','IT, 테크, 개발자 행사',9),(81,'https://www.youtube.com/playlist?list=PLU9-uwewPMe1CTmmvmaPadntGEwtbnvrz','프로그래밍 언어 & 알고리즘 기초',9),(82,'https://www.youtube.com/playlist?list=PLU9-uwewPMe0ynomccdrAX2CtVbahN4hD','코딩의 기초와 웹, 앱 프로그래밍',9),(83,'https://www.youtube.com/playlist?list=PLU9-uwewPMe3LN8w9xgWZIlMqp2cMk07N','코딩 공부 이유',9),(84,'https://www.youtube.com/playlist?list=PLU9-uwewPMe24NhQLiyZiT3BEfjE1lA7H','현직 개발자 인터뷰',9),(85,'https://www.youtube.com/playlist?list=PLU9-uwewPMe2-vtJAgWB6SNhHcTjJDgEO','실전 수익형 웹, 앱 서비스 동물상 테스트 만들기',9);
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

-- Dump completed on 2020-08-29  0:44:02
