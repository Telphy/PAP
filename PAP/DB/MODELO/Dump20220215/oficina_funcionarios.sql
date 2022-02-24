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
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `idFuncionarios` int(11) NOT NULL,
  `Nome` varchar(90) NOT NULL,
  `Idade` int(3) NOT NULL,
  `Morada` varchar(120) NOT NULL,
  `Telemovel` int(9) NOT NULL,
  `Telefone` int(9) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFuncionarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Adolfo Miguel Cabral  Frazao',18,'Rua Beco do Calote n 62 9500-380 Arrifes',926786554,29521352,'dotoj415123@chatich.com'),(2,'Kirill Eanes Capistrano',19,'Rua do Outeiro n61 9500-379 Arrifes',926235257,29523458,'dotoj125145@chatich.com'),(3,'Raphael Vidigal Velasques',21,'Caminho Abelheira de Baixon t621 9500-701 Fajã de Baixo',927752375,29563248,'dotoj414515@chatich.com'),(4,'Maximiano Bulhosa Carrasqueira',23,'Rua Manuel da Ponte n14 9500-008 Ponta Delgada',926234525,29562422,'dotoj445177@chatich.com'),(5,'Brian Tedim Távora',25,'Largo de Santo André n55 9500-008 Ponta Delgada',926664124,29523524,'dotoj441561@chatich.com'),(6,'Raquel Abasto Lucena',18,'Rua Machado dos Santos n56 9500-008 Ponta Delgada',926434224,29623522,'dotoj441515@chatich.com');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-15 21:07:00
