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
-- Table structure for table `pecas`
--

DROP TABLE IF EXISTS `pecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pecas` (
  `id_peca` int NOT NULL AUTO_INCREMENT,
  `nome_peca` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `qtd_estoque` int NOT NULL,
  `preco_custo` decimal(8,2) NOT NULL,
  `preco_venda` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_peca`),
  CONSTRAINT `chk_preco_venda` CHECK ((`preco_venda` >= `preco_custo`))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pecas`
--

LOCK TABLES `pecas` WRITE;
/*!40000 ALTER TABLE `pecas` DISABLE KEYS */;
INSERT INTO `pecas` (`id_peca`, `nome_peca`, `descricao`, `fabricante`, `qtd_estoque`, `preco_custo`, `preco_venda`) VALUES (1,'Filtro de Óleo','Filtro de óleo sintético','Bosch',50,18.00,36.75),(2,'Pastilha de Freio','Pastilha freio dianteiro','TRW',30,85.00,150.00),(3,'Velas de Ignição','Vela de ignição platina','NGK',100,25.00,45.00),(4,'Correia Dentada','Kit correia dentada completa','Gates',15,120.00,220.00),(5,'Filtro de Ar','Filtro de ar esportivo','Mann Filter',40,35.00,65.00),(6,'Disco de Freio','Disco freio ventilado','Brembo',20,150.00,280.00),(7,'Amortecedor','Amortecedor dianteiro','Monroe',25,180.00,320.00),(8,'Bateria','Bateria 60Ah','Moura',10,250.00,450.00),(9,'Sensor de Oxigênio','Sensor O2 universal','Bosch',35,90.00,173.25),(10,'Bobina de Ignição','Bobina ignição digital','Delphi',45,75.00,140.00),(11,'Filtro de Combustível','Filtro combustível alta pressão','Mahle',28,40.00,75.00),(12,'Lâmpada Farol','Lâmpada H7 55W','Philips',80,15.00,30.00),(13,'Rolamento','Rolamento roda dianteiro','SKF',22,65.00,120.00),(14,'Óleo Motor','Óleo 5W30 sintético 1L','Petronas',60,25.00,45.00),(15,'Fluido de Freio','Fluido freio DOT4 500ml','Castrol',35,12.00,25.00),(16,'Radiador','Radiador alumínio','Valeo',8,300.00,550.00),(17,'Embreagem','Kit embreagem completo','Luk',12,400.00,720.00),(18,'Bomba de Combustível','Bomba combustível elétrica','Bosch',18,220.00,409.50),(19,'Termostato','Termostato motor','Mahle',30,45.00,85.00),(20,'Módulo de Ignição','Módulo ignição eletrônico','Delphi',30,180.00,330.00);
/*!40000 ALTER TABLE `pecas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 14:19:30
