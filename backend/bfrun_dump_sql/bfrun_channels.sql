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
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (1,'생활코딩','https://www.youtube.com/user/egoing2','https://yt3.ggpht.com/a/AATXAJxvRQAUhMMDMMAh3cofTIx1PupaB2fBAQAfOZFc=s100-c-k-c0xffffffff-no-rj-mo'),(2,'얄팍한 코딩사전','https://www.youtube.com/channel/UC2nkWbaJt1KQDi2r2XclzTQ','https://yt3.ggpht.com/a/AATXAJw5bxklV3QRM8tbSGld3Xyyll92vK4RWrrd2jD3ww=s100-c-k-c0xffffffff-no-rj-mo'),(3,'김왼손의 왼손코딩','https://www.youtube.com/channel/UC0h8NzL2vllvp3PjdoYSK4g','https://yt3.ggpht.com/a/AATXAJzyuaic5KHIhV6m3V-xJowoO3hpB7dNP-5uXyNn=s100-c-k-c0xffffffff-no-rj-mo'),(4,'코딩하는 테크보이 워니','https://www.youtube.com/channel/UC0uDM1xZMNBAoW2xnzhAQ7g','https://yt3.ggpht.com/a/AATXAJzqYxFVUFCuf0I6P_eG8AI1Ny3V132lSjwkEp_6=s100-c-k-c0xffffffff-no-rj-mo'),(5,'드림코딩 by 엘리','https://www.youtube.com/channel/UC_4u-bXaba7yrRz_6x6kb_w','https://yt3.ggpht.com/a/AATXAJz9EnjhQpfqISFjg7RGjoe7noTiMR3QtPBqt5xcCA=s100-c-k-c0xffffffff-no-rj-mo'),(6,'노마드 코더 Nomad Coders','https://www.youtube.com/channel/UCUpJs89fSBXNolQGOYKn0YQ','https://yt3.ggpht.com/a/AATXAJzCX8YF_HYtAIhbmP7Ks1-Znxam4mjCh4TZU47STA=s100-c-k-c0xffffffff-no-rj-mo'),(7,'Minjun Kim','https://www.youtube.com/channel/UCmMgRlN-3GKQ_CH7cOtLdvg','https://yt3.ggpht.com/a/AATXAJwRJTvimRige59GQ1eZDwVdoVfbenJJJLSnoZ0t=s100-c-k-c0xffffffff-no-rj-mo'),(8,'김버그 Kimbug','https://www.youtube.com/channel/UCFDbz39kFPvU0AUpgHx4ICw','https://yt3.ggpht.com/a/AATXAJyZ59XTf3i_Zt41u6UXe_Ew1j-sHWd6yHjlEfCiJA=s100-c-k-c0xffffffff-no-rj-mo'),(9,'조코딩 JoCoding','https://www.youtube.com/channel/UCQNE2JmbasNYbjGAcuBiRRg','https://yt3.ggpht.com/a/AATXAJzrwRCEMvnxxQJD8vf59zDEh5caBAYKoRNTX9DZ=s100-c-k-c0xffffffff-no-rj-mo');
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
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
