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
-- Table structure for table `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculos` (
  `id_veiculo` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `ano_fabricacao` int NOT NULL,
  `placa` varchar(8) NOT NULL,
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_veiculo`),
  UNIQUE KEY `placa` (`placa`),
  KEY `id_cliente` (`id_cliente`),
  KEY `idx_veiculos_placa` (`placa`),
  CONSTRAINT `veiculos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculos`
--

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` (`id_veiculo`, `modelo`, `marca`, `descricao`, `ano_fabricacao`, `placa`, `id_cliente`) VALUES (1,'Civic','Honda','Sedan LX 2.0',2020,'ABC1D23',1),(2,'Corolla','Toyota','Altis Hybrid',2022,'DEF2G34',2),(3,'Onix','Chevrolet','LT 1.0 Turbo',2021,'GHI3J45',3),(4,'HB20','Hyundai','Sense 1.0',2019,'JKL4M56',4),(5,'Argo','Fiat','Drive 1.3',2021,'MNO5P67',5),(6,'T-Cross','Volkswagen','Highline 1.4',2022,'PQR6S78',6),(7,'Kicks','Nissan','SV 1.6',2020,'STU7T89',7),(8,'Compass','Jeep','Longitude 1.3',2023,'VWX8U90',8),(9,'Renegade','Jeep','Sport 1.8',2019,'YZA9V01',9),(10,'Tracker','Chevrolet','LTZ 1.2',2022,'BCD0W12',10),(11,'Fiesta','Ford','SE 1.6',2018,'CDE1X23',1),(12,'Gol','Volkswagen','Trendline 1.0',2020,'EFG2Y34',2),(13,'Uno','Fiat','Way 1.0',2017,'GHI3Z45',3);
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
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
