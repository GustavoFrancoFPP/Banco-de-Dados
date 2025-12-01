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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(18) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` int NOT NULL,
  `bairro` varchar(40) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cep` varchar(9) NOT NULL,
  `data_cadastro` date NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `cpf`, `data_nascimento`, `telefone`, `rua`, `numero`, `bairro`, `cidade`, `cep`, `data_cadastro`, `email`) VALUES (1,'João Silva','123.456.789-01','1985-03-15','(11)99999-1111','Rua das Flores',100,'Centro','São Paulo','01234-000','2023-01-15',NULL),(2,'Maria Santos','234.567.890-12','1990-07-22','(11)98888-2222','Av. Paulista',2000,'Bela Vista','São Paulo','01310-000','2023-02-20',NULL),(3,'Carlos Oliveira','345.678.901-23','1978-11-30','(11)97777-3333','Rua Augusta',500,'Consolação','São Paulo','01304-000','2023-03-10',NULL),(4,'Ana Costa','456.789.012-34','1982-05-18','(11)96666-4444','Rua XV de Novembro',300,'Centro','São Paulo','01013-000','2023-04-05',NULL),(5,'Pedro Almeida','567.890.123-45','1995-09-12','(11)95555-5555','Alameda Santos',800,'Jardins','São Paulo','01418-000','2023-05-22',NULL),(6,'Fernanda Lima','678.901.234-56','1988-12-03','(11)94444-6666','Rua da Consolação',1500,'Consolação','São Paulo','01301-000','2023-06-18',NULL),(7,'Ricardo Souza','789.012.345-67','1975-02-28','(11)93333-7777','Av. Brigadeiro Faria Lima',2500,'Itaim Bibi','São Paulo','01451-000','2023-07-30',NULL),(8,'Juliana Pereira','890.123.456-78','1992-08-14','(11)92222-8888','Rua Haddock Lobo',700,'Cerqueira César','São Paulo','01414-000','2023-08-12',NULL),(9,'Marcos Ferreira','901.234.567-89','1980-04-25','(11)91111-9999','Alameda Jaú',1200,'Jardim Paulista','São Paulo','01420-000','2023-09-05',NULL),(10,'Patrícia Rocha','012.345.678-90','1987-06-08','(11)90000-0000','Rua Bela Cintra',900,'Consolação','São Paulo','01415-000','2023-10-20',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
