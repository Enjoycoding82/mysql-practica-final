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
-- Table structure for table `ulleres`
--

DROP TABLE IF EXISTS `ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulleres` (
  `id_ullera` int NOT NULL AUTO_INCREMENT COMMENT 'id únic de la ullera',
  `marcas_id_marca` int NOT NULL,
  `grad_vid_dret` float DEFAULT NULL COMMENT 'graduació del vidre dret',
  `grad_vid_esquerre` float DEFAULT NULL COMMENT 'graduació del vidre esquerre',
  `muntura` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Tipus de muntura, opcions:\n- F: flotant\n- P: pasta\n-M: metàl·lica\n',
  `color_munt` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'color de la muntura',
  `color_vid_dret` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'color del vidre dret',
  `color_vid_esq` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'color del vidre esquerre',
  `preu` decimal(10,0) DEFAULT NULL COMMENT 'preu de la ullera',
  `empleats_id_empleat` int DEFAULT NULL,
  `clients_id_client` int DEFAULT NULL,
  PRIMARY KEY (`id_ullera`),
  KEY `fk_ulleres_marcas1_idx` (`marcas_id_marca`),
  KEY `fk_ulleres_empleats1_idx` (`empleats_id_empleat`),
  KEY `fk_ulleres_clients1_idx` (`clients_id_client`),
  CONSTRAINT `fk_ulleres_clients1` FOREIGN KEY (`clients_id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ulleres_empleats1` FOREIGN KEY (`empleats_id_empleat`) REFERENCES `empleats` (`id_empleat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ulleres_marcas1` FOREIGN KEY (`marcas_id_marca`) REFERENCES `marcas` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulleres`
--

LOCK TABLES `ulleres` WRITE;
/*!40000 ALTER TABLE `ulleres` DISABLE KEYS */;
INSERT INTO `ulleres` VALUES (1,1,1,1,'F','blau','verd','verd',125,NULL,NULL),(2,1,2,2,'P','vermell','transp','transp',150,4,3),(3,2,1,0.5,'M','negre','transp','transp',89,2,12),(4,2,0.25,0.25,'P','blanc','transp','transp',91,NULL,NULL),(5,3,0.25,0.25,'P','blanc','transp','transp',91,4,10),(6,3,0.75,0.75,'F','blau','marró','marró',230,3,11),(7,3,3,1,'P','groc','transp','transp',128,NULL,NULL),(8,4,3,1,'P','groc','transp','transp',128,NULL,NULL),(9,4,0.5,0.5,'P','blanc','transp','transp',190,NULL,NULL),(10,4,0.25,0.75,'P','negre','transp','transp',86,NULL,NULL),(11,4,2,1,'M','negre','transp','transp',130,NULL,NULL),(12,5,1,0.25,'F','blau','transp','transp',128,NULL,NULL),(13,5,0.5,1,'F','blau','transp','transp',142,NULL,NULL),(14,6,0.25,0.25,'P','verd','transp','transp',117,1,1),(15,7,0.5,0.5,'P','negre','transp','transp',85,2,2),(16,7,5,5,'P','blanc','transp','transp',52,NULL,NULL),(17,8,0.75,1,'M','blau','transp','transp',59,NULL,NULL),(18,8,0.75,0.75,'P','blau','verd','verd',225,NULL,NULL),(19,9,3,1,'M','groc','transp','transp',125,NULL,NULL),(20,10,0.25,1,'P','vermell','transp','transp',49,NULL,NULL),(21,10,3,2,'P','marró','transp','transp',69,NULL,NULL),(22,11,1,1,'P','gris','transp','transp',79,NULL,NULL),(23,12,1,1,'P','gris','transp','transp',110,NULL,NULL),(24,12,0.75,1,'P','plata','transp','transp',109,NULL,NULL),(25,12,2,1,'P','negre','transp','transp',128,NULL,NULL);
/*!40000 ALTER TABLE `ulleres` ENABLE KEYS */;
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
