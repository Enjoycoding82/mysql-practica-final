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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id_client` int NOT NULL AUTO_INCREMENT COMMENT 'id únic de client',
  `nom` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'nom del client',
  `adreces_id_adreça` int NOT NULL,
  `telefon` int DEFAULT NULL COMMENT 'telèfon del client',
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'correu electrònic del client',
  `data_registre` datetime DEFAULT NULL COMMENT 'data de registre del client en la base de dades',
  `clients_id_client_recom` int DEFAULT NULL COMMENT 'id del client que el va recomanar l''òptica Cull d''ampolla',
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_clients_adreces1_idx` (`adreces_id_adreça`),
  KEY `fk_clients_clients1_idx` (`clients_id_client_recom`),
  CONSTRAINT `fk_clients_adreces1` FOREIGN KEY (`adreces_id_adreça`) REFERENCES `adreces` (`id_adreça`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_clients_clients1` FOREIGN KEY (`clients_id_client_recom`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Pepe Pérez',11,932586475,'pp@xxx.com','2020-06-25 00:00:00',NULL),(2,'Valentina Català',12,932523575,'valentina@xxx.com','2020-06-28 00:00:00',NULL),(3,'Ferran Soler',13,665253696,'soler@xxx.com','2020-07-02 00:00:00',NULL),(10,'Josep Miró',14,932586475,'josep@xxx.com','2020-07-08 00:00:00',1),(11,'Anna Corniel',15,932523575,'corniel@xxx.com','2020-07-09 00:00:00',1),(12,'Laia Casamajó',16,623564785,'laiac@xxx.com','2020-07-12 00:00:00',2);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
