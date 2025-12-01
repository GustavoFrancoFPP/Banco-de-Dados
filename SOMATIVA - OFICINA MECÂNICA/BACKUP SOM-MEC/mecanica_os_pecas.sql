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
-- Table structure for table `os_pecas`
--

DROP TABLE IF EXISTS `os_pecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os_pecas` (
  `id_os_peca` int NOT NULL AUTO_INCREMENT,
  `id_ordem_servico` int NOT NULL,
  `id_peca` int NOT NULL,
  `quantidade_usada` int NOT NULL,
  `preco_unitario_cobrado` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_os_peca`),
  KEY `id_ordem_servico` (`id_ordem_servico`),
  KEY `id_peca` (`id_peca`),
  CONSTRAINT `os_pecas_ibfk_1` FOREIGN KEY (`id_ordem_servico`) REFERENCES `ordem_servico` (`id_ordem_servico`),
  CONSTRAINT `os_pecas_ibfk_2` FOREIGN KEY (`id_peca`) REFERENCES `pecas` (`id_peca`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_pecas`
--

LOCK TABLES `os_pecas` WRITE;
/*!40000 ALTER TABLE `os_pecas` DISABLE KEYS */;
INSERT INTO `os_pecas` (`id_os_peca`, `id_ordem_servico`, `id_peca`, `quantidade_usada`, `preco_unitario_cobrado`) VALUES (1,1,1,1,35.00),(2,1,14,4,45.00),(3,2,2,2,150.00),(4,2,15,1,25.00),(5,3,9,1,165.00),(6,3,10,2,140.00),(7,4,5,1,65.00),(8,4,12,2,30.00),(9,5,4,1,220.00),(10,6,18,1,390.00),(11,7,8,1,450.00),(12,7,12,2,30.00),(13,8,7,2,320.00),(14,9,17,1,720.00),(15,10,8,1,450.00),(16,11,3,4,45.00),(17,12,13,2,120.00),(18,13,1,1,35.00),(19,13,14,4,45.00),(20,14,2,2,150.00),(21,15,5,1,65.00);
/*!40000 ALTER TABLE `os_pecas` ENABLE KEYS */;
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
