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
-- Table structure for table `intercencoes_pecas`
--

DROP TABLE IF EXISTS `intercencoes_pecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intercencoes_pecas` (
  `idIntervencao` int(11) NOT NULL,
  `idPecas` int(11) NOT NULL,
  `idFuncionarios` int(11) NOT NULL,
  `Unidades` varchar(45) NOT NULL,
  PRIMARY KEY (`idIntervencao`,`idPecas`),
  KEY `fk_Intercencoes_Pecas_Pecas1_idx` (`idPecas`),
  KEY `fk_Intercencoes_Pecas_Funcionarios1_idx` (`idFuncionarios`),
  CONSTRAINT `fk_Intercencoes_Pecas_Funcionarios1` FOREIGN KEY (`idFuncionarios`) REFERENCES `funcionarios` (`idFuncionarios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Intercencoes_Pecas_Intervencoes1` FOREIGN KEY (`idIntervencao`) REFERENCES `intervencoes` (`idIntervencao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Intercencoes_Pecas_Pecas1` FOREIGN KEY (`idPecas`) REFERENCES `pecas` (`idPecas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercencoes_pecas`
--

LOCK TABLES `intercencoes_pecas` WRITE;
/*!40000 ALTER TABLE `intercencoes_pecas` DISABLE KEYS */;
/*!40000 ALTER TABLE `intercencoes_pecas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-15 21:07:02
