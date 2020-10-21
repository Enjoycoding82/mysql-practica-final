CREATE DATABASE  IF NOT EXISTS `optic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `optic`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: optic
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `adreces`
--

DROP TABLE IF EXISTS `adreces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adreces` (
  `id_adreça` int NOT NULL AUTO_INCREMENT COMMENT 'l''id de l''adreça',
  `carrer` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'el nom del carrer',
  `numero` int DEFAULT NULL COMMENT 'numero del carrer',
  `pis` int DEFAULT NULL COMMENT 'pis ',
  `porta` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'porta (pot ser num o lletra)',
  `ciutat` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ciutat',
  `pais` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'pais',
  PRIMARY KEY (`id_adreça`),
  UNIQUE KEY `id_adreça_UNIQUE` (`id_adreça`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adreces`
--

LOCK TABLES `adreces` WRITE;
/*!40000 ALTER TABLE `adreces` DISABLE KEYS */;
INSERT INTO `adreces` VALUES (6,'carrer alella',25,3,'4','Barcelona','Espanya'),(7,'avinguda diagonal',3,1,'2','Barcelona','Espanya'),(8,'paseo canalejas',21,4,'D','Madrid','Espanya'),(9,'calle bravo murillo',112,5,'A','Madrid','Espanya'),(10,'carrer diputació',68,1,'2','Barcelona','Espanya'),(11,'Carrer Marina',312,5,'3','Barcelona','Espanya'),(12,'Carrer Malgrat',112,1,'2','Barcelona','Espanya'),(13,'Carrer Santany',5,1,'4','Barcelona','Espanya'),(14,'Carrer Teide',23,3,'2','Barcelona','Espanya'),(15,'Carrer Alloza',43,6,'3','Barcelona','Espanya'),(16,'Carrer Or',23,4,'2','Mataró','Espanya');
/*!40000 ALTER TABLE `adreces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-21 16:19:36
