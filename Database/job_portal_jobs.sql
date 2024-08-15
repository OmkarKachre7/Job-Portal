-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: job_portal
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `pdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `emp_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (11,'devar','bhabhi ko chayei devar','Teacher','Active','Delhi','2024-06-28 12:11:25',NULL),(49,'shavfasfdfd','bdbfsd','IT','Inactive','Delhi','2024-07-05 09:22:06','shravani malekar'),(50,'svfgsf','dfdfsfb','Banking','Inactive','Jharkhand','2024-07-06 12:05:02','nuzhat khan'),(51,'sfghf','dvsdgsdg','Banking','Active','Bhubaneswar','2024-07-06 12:32:48','nuzhat khan'),(52,'dfsgsrgsfzuzu','fgsgfg','Banking','Active','Gujurat','2024-07-06 12:34:37','dsgsfhf'),(53,'daddsbvfsbfsbkk','kk','Banking','Active','Bhubaneswar','2024-07-06 20:58:53','kk'),(55,'admin ne kiya hai','admin ke dalle','Engineer','Active','Hydrabad','2024-07-08 11:41:40',NULL),(59,'sdggdgfg','dsdgsdgsffsff','Devloper','Active','Jharkhand','2024-07-14 14:12:53',NULL),(62,'job1','dfdssfvcsvsvsvfvssfvdvsdsdsfgjsfnjsnsjkvnsckjsnfsjkncsksmmvkxsmsdkvnnfjkbncjkcsnvkdvmfknsvjsnvjksdnbjkfncjkvnsjvnfbcvvjsnnvkjvvnkjvnsfkvnck nsdvjsfnbjkndkjvncjbnsckbncskjbnsbjksnkjsfnbjksnbfj','Banking','Active','Bhubaneswar','2024-07-25 13:20:00','nuzhat khan');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-13 14:56:53
