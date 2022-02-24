-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: oficina
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `matereais`
--

DROP TABLE IF EXISTS `matereais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matereais` (
  `idMatereais` int(11) NOT NULL,
  `Material` varchar(45) NOT NULL,
  `Descricao` varchar(150) DEFAULT NULL,
  `Preco/uni` float(5,2) NOT NULL,
  `idFornecedor` int(5) NOT NULL,
  PRIMARY KEY (`idMatereais`),
  KEY `fk_Matereais_Fornecedor1_idx` (`idFornecedor`),
  CONSTRAINT `fk_Matereais_Fornecedor1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matereais`
--

LOCK TABLES `matereais` WRITE;
/*!40000 ALTER TABLE `matereais` DISABLE KEYS */;
INSERT INTO `matereais` VALUES (1,'Massas de Ferro',NULL,25.00,2),(2,'Massas de fibra de Vidro',NULL,34.00,1),(3,'Secante para massas',NULL,21.00,2),(4,'Freeze do vidro',NULL,58.00,3),(5,'Shampo',NULL,19.00,1),(6,'Massa de Polimento',NULL,25.00,3),(7,'Cera',NULL,37.00,2),(8,'Produto de Brilho',NULL,38.00,2),(9,'Boina da Polidora',NULL,23.00,1),(10,'Lixa 400P',NULL,2.00,3),(11,'Lixa 240P',NULL,3.00,3),(12,'Lixa 180P',NULL,4.00,3),(13,'Lixa 120P',NULL,4.00,3);
/*!40000 ALTER TABLE `matereais` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-15 21:07:01
