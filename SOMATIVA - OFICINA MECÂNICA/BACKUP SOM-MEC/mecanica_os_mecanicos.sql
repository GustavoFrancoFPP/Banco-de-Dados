CREATE DATABASE  IF NOT EXISTS `mecanica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mecanica`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: mecanica
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `os_mecanicos`
--

DROP TABLE IF EXISTS `os_mecanicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os_mecanicos` (
  `id_os_mecanico` int NOT NULL AUTO_INCREMENT,
  `id_ordem_servico` int NOT NULL,
  `id_mecanico` int NOT NULL,
  `horas_trabalhadas` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id_os_mecanico`),
  KEY `id_ordem_servico` (`id_ordem_servico`),
  KEY `id_mecanico` (`id_mecanico`),
  CONSTRAINT `os_mecanicos_ibfk_1` FOREIGN KEY (`id_ordem_servico`) REFERENCES `ordem_servico` (`id_ordem_servico`),
  CONSTRAINT `os_mecanicos_ibfk_2` FOREIGN KEY (`id_mecanico`) REFERENCES `mecanicos` (`id_mecanico`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_mecanicos`
--

LOCK TABLES `os_mecanicos` WRITE;
/*!40000 ALTER TABLE `os_mecanicos` DISABLE KEYS */;
INSERT INTO `os_mecanicos` (`id_os_mecanico`, `id_ordem_servico`, `id_mecanico`, `horas_trabalhadas`) VALUES (1,1,1,1.00),(2,1,2,0.50),(3,2,2,2.50),(4,2,10,1.00),(5,3,3,3.00),(6,3,9,1.50),(7,4,8,1.50),(8,4,10,1.00),(9,5,1,4.00),(10,6,5,3.50),(11,7,4,1.00),(12,7,9,0.50),(13,8,8,5.00),(14,9,1,6.00),(15,10,4,0.50),(16,10,3,1.50),(17,11,3,2.50),(18,11,9,1.00),(19,12,8,3.00),(20,12,10,2.00),(21,13,1,1.00),(22,14,2,2.50),(23,15,8,1.50);
/*!40000 ALTER TABLE `os_mecanicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 14:19:31
