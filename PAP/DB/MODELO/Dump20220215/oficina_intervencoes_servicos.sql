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
-- Table structure for table `intervencoes_servicos`
--

DROP TABLE IF EXISTS `intervencoes_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervencoes_servicos` (
  `idIntervencao` int(11) NOT NULL,
  `idServicos` int(11) NOT NULL,
  `idFuncionarios` int(11) NOT NULL,
  `Horas` varchar(45) NOT NULL,
  PRIMARY KEY (`idIntervencao`,`idServicos`),
  KEY `fk_Intervencoes_Servicos_Servicos1_idx` (`idServicos`),
  KEY `fk_Intervencoes_Servicos_Funcionarios1_idx` (`idFuncionarios`),
  CONSTRAINT `fk_Intervencoes_Servicos_Funcionarios1` FOREIGN KEY (`idFuncionarios`) REFERENCES `funcionarios` (`idFuncionarios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Intervencoes_Servicos_Intervencoes1` FOREIGN KEY (`idIntervencao`) REFERENCES `intervencoes` (`idIntervencao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Intervencoes_Servicos_Servicos1` FOREIGN KEY (`idServicos`) REFERENCES `servicos` (`idServicos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervencoes_servicos`
--

LOCK TABLES `intervencoes_servicos` WRITE;
/*!40000 ALTER TABLE `intervencoes_servicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `intervencoes_servicos` ENABLE KEYS */;
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
