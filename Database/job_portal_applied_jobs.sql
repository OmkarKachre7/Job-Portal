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
-- Table structure for table `applied_jobs`
--

DROP TABLE IF EXISTS `applied_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applied_jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `qualification` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applied_jobs`
--

LOCK TABLES `applied_jobs` WRITE;
/*!40000 ALTER TABLE `applied_jobs` DISABLE KEYS */;
INSERT INTO `applied_jobs` VALUES (1,'kk','kk2','Banking','safar khan','safar@gmail.com ','Bsc-IT'),(2,'kk','daddsbvfsbfsbkk','Banking','safar khan','safar@gmail.com ','Bsc-IT'),(3,'dsgsfhf','dfsgsrgsfzuzu','Banking','safar khan','safar@gmail.com ','Bsc-IT'),(4,'nuzhat khan','svfgsf','Banking','safar khan','safar@gmail.com ','Bsc-IT'),(5,'null','devar','Teacher','safar khan','safar@gmail.com ','Bsc-IT'),(6,'kk','kk2','Banking','mayur omkar kachre','mayurjhatu@gmail.com ','Bsc-IT'),(7,'nuzhat khan','svfgsf','Banking','mayur omkar kachre','mayurjhatu@gmail.com ','Bsc-IT'),(8,'kk','daddsbvfsbfsbkk','Banking','mayur omkar kachre','mayurjhatu@gmail.com ','Bsc-IT'),(9,'kk','kk2','Banking','safar khan','safar@gmail.com ','Bsc-IT'),(10,'null','devar','Teacher','safar khan','safar@gmail.com ','Bsc-IT'),(11,'kk','kk2','Banking','chetana','abcd@gmail.com ','MBA Tech'),(12,'kk','kk2','Banking','chetana','abcd@gmail.com ','MBA Tech'),(13,'nuzhat khan','emplloyer ke kand','Engineer','safar khan','safar@gmail.com ','Bsc-IT'),(14,'null','admin ne kiya hai','Engineer','safar khan','safar@gmail.com ','Bsc-IT'),(15,'nuzhat khan','employer','IT','safar khan','safar@gmail.com ','Bsc-IT'),(16,'null','admin','IT','safar khan','safar@gmail.com ','Bsc-IT'),(17,'nuzhat khan','employer','IT','vd','vd@gmail.com ','vd'),(18,'null','admin','IT','vd','vd@gmail.com ','vd'),(19,'nuzhat khan','emplloyer ke kand','Engineer','vd','vd@gmail.com ','vd'),(20,'null','admin ne kiya hai','Engineer','vd','vd@gmail.com ','vd'),(21,'dsgsfhf','dfsgsrgsfzuzu','Banking','vd','vd@gmail.com ','vd'),(22,'nuzhat khan','svfgsf','Banking','vd','vd@gmail.com ','vd'),(23,'nuzhat khan','employer','IT','chetana','abcd@gmail.com ','MBA Tech'),(24,'null','admin','IT','chetana','abcd@gmail.com ','MBA Tech'),(25,'null','admin ne kiya hai','Engineer','sahil','sahil@gmail.com ','Bcom'),(26,'nuzhat khan','emplloyer ke kand','Engineer','sahil','sahil@gmail.com ','Bcom'),(27,'nuzhat khan','emplloyer ke kand','Engineer','sahil','sahil@gmail.com ','Bcom'),(28,'null','devar','Teacher','sahil','sahil@gmail.com ','Bcom'),(29,'nuzhat khan','employer','IT','sahil','sahil@gmail.com ','Bcom'),(30,'null','dgsfgsf','Banking','avi','avi@gmail.com ','bms'),(31,'null','dgsfgsf','Banking','avi','avi@gmail.com ','bms'),(32,'null','sdggdgfg','Devloper','vish','omkark@mgail.com ','Bsc-IT'),(33,'null','job1','Devloper','vish','omkark@mgail.com ','Bsc-IT'),(34,'nuzhat khan','emplloyer ke kand','Engineer','shaun','sh@gmail.com ','Bsc-IT'),(35,'dsgsfhf','dfsgsrgsfzuzu ','Banking ','shaun','sh@gmail.com ','Bsc-IT');
/*!40000 ALTER TABLE `applied_jobs` ENABLE KEYS */;
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
