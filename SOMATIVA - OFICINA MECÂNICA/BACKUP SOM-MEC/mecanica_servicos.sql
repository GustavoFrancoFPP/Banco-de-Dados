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
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `id_servico` int NOT NULL AUTO_INCREMENT,
  `tipo_servico` varchar(100) NOT NULL,
  `preco_mao_obra` decimal(8,2) NOT NULL,
  `tempo_estimado` decimal(5,2) NOT NULL,
  `especialidade_requerida` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` (`id_servico`, `tipo_servico`, `preco_mao_obra`, `tempo_estimado`, `especialidade_requerida`) VALUES (1,'Troca de Óleo e Filtro',80.00,1.00,'Motor'),(2,'Substituição de Pastilhas de Freio',120.00,2.50,'Freios'),(3,'Alinhamento e Balanceamento',100.00,1.50,'Suspensão'),(4,'Limpeza de Bicos Injetores',150.00,3.00,'Injeção Eletrônica'),(5,'Substituição de Correia Dentada',200.00,4.00,'Motor'),(6,'Reparo no Sistema de Ar Condicionado',180.00,3.50,'Ar Condicionado'),(7,'Diagnóstico Eletrônico',90.00,1.00,'Elétrica Automotiva'),(8,'Substituição de Amortecedores',250.00,5.00,'Suspensão'),(9,'Troca de Embreagem',350.00,6.00,'Motor'),(10,'Reparo no Sistema de Injeção',220.00,4.50,'Injeção Eletrônica'),(11,'Substituição de Bateria',50.00,0.50,'Elétrica Automotiva'),(12,'Limpeza do Sistema de Admissão',130.00,2.50,'Motor'),(13,'Reparo no Sistema de Escape',160.00,3.00,'Motor'),(14,'Substituição de Rolamentos',140.00,3.00,'Suspensão'),(15,'Reparo no Sistema de Direção',190.00,3.50,'Suspensão');
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
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
