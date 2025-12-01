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
-- Table structure for table `ordem_servico`
--

DROP TABLE IF EXISTS `ordem_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordem_servico` (
  `id_ordem_servico` int NOT NULL AUTO_INCREMENT,
  `id_veiculo` int NOT NULL,
  `data_abertura` date NOT NULL,
  `data_conclusao` date DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_ordem_servico`),
  KEY `id_veiculo` (`id_veiculo`),
  CONSTRAINT `ordem_servico_ibfk_1` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculos` (`id_veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordem_servico`
--

LOCK TABLES `ordem_servico` WRITE;
/*!40000 ALTER TABLE `ordem_servico` DISABLE KEYS */;
INSERT INTO `ordem_servico` (`id_ordem_servico`, `id_veiculo`, `data_abertura`, `data_conclusao`, `status`, `valor_total`) VALUES (1,1,'2024-01-10','2024-01-12','Concluída',230.00),(2,2,'2024-01-15','2024-01-18','Concluída',420.00),(3,3,'2024-01-20','2025-12-01','Em Execução',NULL),(4,4,'2024-02-01','2024-02-05','Concluída',200.00),(5,5,'2024-02-10',NULL,'Aguardando Peça',NULL),(6,6,'2024-02-15','2024-02-20','Concluída',580.00),(7,7,'2024-02-25','2025-12-01','Em Execução',NULL),(8,8,'2024-03-01','2024-03-05','Concluída',890.00),(9,9,'2024-03-10',NULL,'Aguardando Peça',NULL),(10,10,'2024-03-15','2024-03-18','Concluída',500.00),(11,11,'2024-03-20','2024-03-22','Concluída',310.00),(12,12,'2024-03-25','2025-12-01','Em Execução',NULL),(13,13,'2024-04-01','2024-04-03','Concluída',230.00),(14,1,'2024-04-05',NULL,'Aguardando Peça',NULL),(15,2,'2024-04-10','2024-04-12','Concluída',200.00);
/*!40000 ALTER TABLE `ordem_servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 14:19:32
