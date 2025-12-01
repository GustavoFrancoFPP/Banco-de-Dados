-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: mecanica
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mecanica`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mecanica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mecanica`;

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
INSERT INTO `clientes` VALUES (1,'João Silva','123.456.789-01','1985-03-15','(11)99999-1111','Rua das Flores',100,'Centro','São Paulo','01234-000','2023-01-15',NULL),(2,'Maria Santos','234.567.890-12','1990-07-22','(11)98888-2222','Av. Paulista',2000,'Bela Vista','São Paulo','01310-000','2023-02-20',NULL),(3,'Carlos Oliveira','345.678.901-23','1978-11-30','(11)97777-3333','Rua Augusta',500,'Consolação','São Paulo','01304-000','2023-03-10',NULL),(4,'Ana Costa','456.789.012-34','1982-05-18','(11)96666-4444','Rua XV de Novembro',300,'Centro','São Paulo','01013-000','2023-04-05',NULL),(5,'Pedro Almeida','567.890.123-45','1995-09-12','(11)95555-5555','Alameda Santos',800,'Jardins','São Paulo','01418-000','2023-05-22',NULL),(6,'Fernanda Lima','678.901.234-56','1988-12-03','(11)94444-6666','Rua da Consolação',1500,'Consolação','São Paulo','01301-000','2023-06-18',NULL),(7,'Ricardo Souza','789.012.345-67','1975-02-28','(11)93333-7777','Av. Brigadeiro Faria Lima',2500,'Itaim Bibi','São Paulo','01451-000','2023-07-30',NULL),(8,'Juliana Pereira','890.123.456-78','1992-08-14','(11)92222-8888','Rua Haddock Lobo',700,'Cerqueira César','São Paulo','01414-000','2023-08-12',NULL),(9,'Marcos Ferreira','901.234.567-89','1980-04-25','(11)91111-9999','Alameda Jaú',1200,'Jardim Paulista','São Paulo','01420-000','2023-09-05',NULL),(10,'Patrícia Rocha','012.345.678-90','1987-06-08','(11)90000-0000','Rua Bela Cintra',900,'Consolação','São Paulo','01415-000','2023-10-20',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `mecanicos` VALUES (1,'Roberto Alves','111.222.333-44','Motor e Câmbio',44.00,4500.00,'ativo'),(2,'Paulo Mendes','222.333.444-55','Suspensão e Freios',40.00,3800.00,'ativo'),(3,'Carlos Santos','333.444.555-66','Injeção Eletrônica',44.00,4200.00,'ativo'),(4,'Antônio Lima','444.555.666-77','Elétrica Automotiva',36.00,3500.00,'ativo'),(5,'Fernando Costa','555.666.777-88','Ar Condicionado',40.00,3700.00,'ativo'),(6,'Ricardo Oliveira','666.777.888-99','Motor e Transmissão',44.00,4600.00,'ativo'),(7,'José Silva','777.888.999-00','Funilaria e Pintura',40.00,3900.00,'inativo'),(8,'Marcos Rocha','888.999.000-11','Suspensão',44.00,4100.00,'ativo'),(9,'Luiz Pereira','999.000.111-22','Elétrica e Injeção',40.00,4300.00,'ativo'),(10,'Diego Souza','000.111.222-33','Freios e Direção',44.00,4000.00,'ativo');
/*!40000 ALTER TABLE `mecanicos` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `ordem_servico` VALUES (1,1,'2024-01-10','2024-01-12','Concluída',230.00),(2,2,'2024-01-15','2024-01-18','Concluída',420.00),(3,3,'2024-01-20','2025-12-01','Em Execução',NULL),(4,4,'2024-02-01','2024-02-05','Concluída',200.00),(5,5,'2024-02-10',NULL,'Aguardando Peça',NULL),(6,6,'2024-02-15','2024-02-20','Concluída',580.00),(7,7,'2024-02-25','2025-12-01','Em Execução',NULL),(8,8,'2024-03-01','2024-03-05','Concluída',890.00),(9,9,'2024-03-10',NULL,'Aguardando Peça',NULL),(10,10,'2024-03-15','2024-03-18','Concluída',500.00),(11,11,'2024-03-20','2024-03-22','Concluída',310.00),(12,12,'2024-03-25','2025-12-01','Em Execução',NULL),(13,13,'2024-04-01','2024-04-03','Concluída',230.00),(14,1,'2024-04-05',NULL,'Aguardando Peça',NULL),(15,2,'2024-04-10','2024-04-12','Concluída',200.00);
/*!40000 ALTER TABLE `ordem_servico` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `os_mecanicos` VALUES (1,1,1,1.00),(2,1,2,0.50),(3,2,2,2.50),(4,2,10,1.00),(5,3,3,3.00),(6,3,9,1.50),(7,4,8,1.50),(8,4,10,1.00),(9,5,1,4.00),(10,6,5,3.50),(11,7,4,1.00),(12,7,9,0.50),(13,8,8,5.00),(14,9,1,6.00),(15,10,4,0.50),(16,10,3,1.50),(17,11,3,2.50),(18,11,9,1.00),(19,12,8,3.00),(20,12,10,2.00),(21,13,1,1.00),(22,14,2,2.50),(23,15,8,1.50);
/*!40000 ALTER TABLE `os_mecanicos` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `os_pecas` VALUES (1,1,1,1,35.00),(2,1,14,4,45.00),(3,2,2,2,150.00),(4,2,15,1,25.00),(5,3,9,1,165.00),(6,3,10,2,140.00),(7,4,5,1,65.00),(8,4,12,2,30.00),(9,5,4,1,220.00),(10,6,18,1,390.00),(11,7,8,1,450.00),(12,7,12,2,30.00),(13,8,7,2,320.00),(14,9,17,1,720.00),(15,10,8,1,450.00),(16,11,3,4,45.00),(17,12,13,2,120.00),(18,13,1,1,35.00),(19,13,14,4,45.00),(20,14,2,2,150.00),(21,15,5,1,65.00);
/*!40000 ALTER TABLE `os_pecas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_servicos`
--

DROP TABLE IF EXISTS `os_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os_servicos` (
  `id_os_servico` int NOT NULL AUTO_INCREMENT,
  `id_ordem_servico` int NOT NULL,
  `id_servico` int NOT NULL,
  `preco_cobrado` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_os_servico`),
  KEY `id_ordem_servico` (`id_ordem_servico`),
  KEY `id_servico` (`id_servico`),
  CONSTRAINT `os_servicos_ibfk_1` FOREIGN KEY (`id_ordem_servico`) REFERENCES `ordem_servico` (`id_ordem_servico`),
  CONSTRAINT `os_servicos_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_servicos`
--

LOCK TABLES `os_servicos` WRITE;
/*!40000 ALTER TABLE `os_servicos` DISABLE KEYS */;
INSERT INTO `os_servicos` VALUES (1,1,1,80.00),(2,1,2,120.00),(3,2,2,120.00),(4,2,3,100.00),(5,3,4,150.00),(6,3,10,220.00),(7,4,3,100.00),(8,4,12,130.00),(9,5,5,200.00),(10,6,6,180.00),(11,7,7,90.00),(12,7,11,50.00),(13,8,8,250.00),(14,9,9,350.00),(15,10,11,50.00),(16,10,13,160.00),(17,11,4,150.00),(18,11,12,130.00),(19,12,8,250.00),(20,12,14,140.00),(21,13,1,80.00),(22,14,2,120.00),(23,15,3,100.00);
/*!40000 ALTER TABLE `os_servicos` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `pecas` VALUES (1,'Filtro de Óleo','Filtro de óleo sintético','Bosch',50,18.00,36.75),(2,'Pastilha de Freio','Pastilha freio dianteiro','TRW',30,85.00,150.00),(3,'Velas de Ignição','Vela de ignição platina','NGK',100,25.00,45.00),(4,'Correia Dentada','Kit correia dentada completa','Gates',15,120.00,220.00),(5,'Filtro de Ar','Filtro de ar esportivo','Mann Filter',40,35.00,65.00),(6,'Disco de Freio','Disco freio ventilado','Brembo',20,150.00,280.00),(7,'Amortecedor','Amortecedor dianteiro','Monroe',25,180.00,320.00),(8,'Bateria','Bateria 60Ah','Moura',10,250.00,450.00),(9,'Sensor de Oxigênio','Sensor O2 universal','Bosch',35,90.00,173.25),(10,'Bobina de Ignição','Bobina ignição digital','Delphi',45,75.00,140.00),(11,'Filtro de Combustível','Filtro combustível alta pressão','Mahle',28,40.00,75.00),(12,'Lâmpada Farol','Lâmpada H7 55W','Philips',80,15.00,30.00),(13,'Rolamento','Rolamento roda dianteiro','SKF',22,65.00,120.00),(14,'Óleo Motor','Óleo 5W30 sintético 1L','Petronas',60,25.00,45.00),(15,'Fluido de Freio','Fluido freio DOT4 500ml','Castrol',35,12.00,25.00),(16,'Radiador','Radiador alumínio','Valeo',8,300.00,550.00),(17,'Embreagem','Kit embreagem completo','Luk',12,400.00,720.00),(18,'Bomba de Combustível','Bomba combustível elétrica','Bosch',18,220.00,409.50),(19,'Termostato','Termostato motor','Mahle',30,45.00,85.00),(20,'Módulo de Ignição','Módulo ignição eletrônico','Delphi',30,180.00,330.00);
/*!40000 ALTER TABLE `pecas` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `servicos` VALUES (1,'Troca de Óleo e Filtro',80.00,1.00,'Motor'),(2,'Substituição de Pastilhas de Freio',120.00,2.50,'Freios'),(3,'Alinhamento e Balanceamento',100.00,1.50,'Suspensão'),(4,'Limpeza de Bicos Injetores',150.00,3.00,'Injeção Eletrônica'),(5,'Substituição de Correia Dentada',200.00,4.00,'Motor'),(6,'Reparo no Sistema de Ar Condicionado',180.00,3.50,'Ar Condicionado'),(7,'Diagnóstico Eletrônico',90.00,1.00,'Elétrica Automotiva'),(8,'Substituição de Amortecedores',250.00,5.00,'Suspensão'),(9,'Troca de Embreagem',350.00,6.00,'Motor'),(10,'Reparo no Sistema de Injeção',220.00,4.50,'Injeção Eletrônica'),(11,'Substituição de Bateria',50.00,0.50,'Elétrica Automotiva'),(12,'Limpeza do Sistema de Admissão',130.00,2.50,'Motor'),(13,'Reparo no Sistema de Escape',160.00,3.00,'Motor'),(14,'Substituição de Rolamentos',140.00,3.00,'Suspensão'),(15,'Reparo no Sistema de Direção',190.00,3.50,'Suspensão');
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `veiculos` VALUES (1,'Civic','Honda','Sedan LX 2.0',2020,'ABC1D23',1),(2,'Corolla','Toyota','Altis Hybrid',2022,'DEF2G34',2),(3,'Onix','Chevrolet','LT 1.0 Turbo',2021,'GHI3J45',3),(4,'HB20','Hyundai','Sense 1.0',2019,'JKL4M56',4),(5,'Argo','Fiat','Drive 1.3',2021,'MNO5P67',5),(6,'T-Cross','Volkswagen','Highline 1.4',2022,'PQR6S78',6),(7,'Kicks','Nissan','SV 1.6',2020,'STU7T89',7),(8,'Compass','Jeep','Longitude 1.3',2023,'VWX8U90',8),(9,'Renegade','Jeep','Sport 1.8',2019,'YZA9V01',9),(10,'Tracker','Chevrolet','LTZ 1.2',2022,'BCD0W12',10),(11,'Fiesta','Ford','SE 1.6',2018,'CDE1X23',1),(12,'Gol','Volkswagen','Trendline 1.0',2020,'EFG2Y34',2),(13,'Uno','Fiat','Way 1.0',2017,'GHI3Z45',3);
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mecanica'
--

--
-- Dumping routines for database 'mecanica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-01 14:47:26
