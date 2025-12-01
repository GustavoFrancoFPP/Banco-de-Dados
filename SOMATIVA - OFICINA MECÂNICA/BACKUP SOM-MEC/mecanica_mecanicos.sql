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
-- Table structure for table `mecanicos`
--

DROP TABLE IF EXISTS `mecanicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanicos` (
  `id_mecanico` int NOT NULL AUTO_INCREMENT,
  `nome_mecanico` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `especialidade` varchar(150) DEFAULT NULL,
  `carga_horaria` decimal(4,2) NOT NULL,
  `salario` decimal(8,2) NOT NULL,
  `status` enum('ativo','inativo') NOT NULL,
  PRIMARY KEY (`id_mecanico`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecanicos`
--

LOCK TABLES `mecanicos` WRITE;
/*!40000 ALTER TABLE `mecanicos` DISABLE KEYS */;
INSERT INTO `mecanicos` (`id_mecanico`, `nome_mecanico`, `cpf`, `especialidade`, `carga_horaria`, `salario`, `status`) VALUES (1,'Roberto Alves','111.222.333-44','Motor e Câmbio',44.00,4500.00,'ativo'),(2,'Paulo Mendes','222.333.444-55','Suspensão e Freios',40.00,3800.00,'ativo'),(3,'Carlos Santos','333.444.555-66','Injeção Eletrônica',44.00,4200.00,'ativo'),(4,'Antônio Lima','444.555.666-77','Elétrica Automotiva',36.00,3500.00,'ativo'),(5,'Fernando Costa','555.666.777-88','Ar Condicionado',40.00,3700.00,'ativo'),(6,'Ricardo Oliveira','666.777.888-99','Motor e Transmissão',44.00,4600.00,'ativo'),(7,'José Silva','777.888.999-00','Funilaria e Pintura',40.00,3900.00,'inativo'),(8,'Marcos Rocha','888.999.000-11','Suspensão',44.00,4100.00,'ativo'),(9,'Luiz Pereira','999.000.111-22','Elétrica e Injeção',40.00,4300.00,'ativo'),(10,'Diego Souza','000.111.222-33','Freios e Direção',44.00,4000.00,'ativo');
/*!40000 ALTER TABLE `mecanicos` ENABLE KEYS */;
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
