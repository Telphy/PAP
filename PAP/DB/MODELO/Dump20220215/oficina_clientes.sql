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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int(5) NOT NULL,
  `idTipoCliente` int(3) NOT NULL,
  `Nome` varchar(90) NOT NULL,
  `Idade` int(3) NOT NULL,
  `Mordada` varchar(120) NOT NULL,
  `Telemovel` int(9) NOT NULL,
  `Telefone` int(9) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_Clientes_TipoCliente1_idx` (`idTipoCliente`),
  CONSTRAINT `fk_Clientes_TipoCliente1` FOREIGN KEY (`idTipoCliente`) REFERENCES `tipocliente` (`idTipoCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,1,'Suzi Cortesão Grangeia',24,'Bairro da Misericórdia n65 9500-226 Ponta Delgada',927562351,916256236,'dotoj44575@chatich.com'),(2,1,'Josias Macedo Salvado',53,'Rua Manuel António de Vasconcelos n25 9500-221 Ponta Delgada',927625134,296145157,'dotoj44574@chatich.com'),(3,1,'Agrim Lindim Leitão',17,'Rua do Escultor Teixeira Lopes n52 9500-225 Ponta Delgada',926123415,296256123,'doto14515@chatich.com'),(4,1,'Brian Figueiredo Inês',24,'Rua Coronel Silva Leal n765 9500-175 Ponta Delgada',926623512,295145141,'dotoj5623452@chatich.com'),(5,1,'Vasco Sardo Mateus',34,'Rua Manuel António de Vasconcelos n86 9500-221 Ponta Delgada',926625255,296134144,'dotoj623414@chatich.com'),(6,1,'Solange Rodrigues Azevedo',43,'Rua Manuel Ferreira n76 9500-224 Ponta Delgada',926512415,296123412,'dotoj1753733@chatich.com'),(7,2,'Filip Macieira Aveiro',25,'Rua Doutor Marciano h Silva n674 9500-225 Ponta Delgada',926523456,296251345,'dotoj6236235@chatich.com'),(8,1,'Joaquim Paulos Bonilha',33,'Rua Coronel Silva Leal n78 9500-175 Ponta Delgada',925667235,295625125,'dotoj12356@chatich.com'),(9,1,'Denilson Amaro Lemes',54,'Rua do Escultor Teixeira Lopes n42 9500-225 Ponta Delgada',925675234,296132414,'dotoj1515136@chatich.com'),(10,1,'Helder Atilano Brandão',34,'Rua Manuel António de Vasconcelos n78 9500-221 Ponta Delgada',926762345,295151553,'dotoj135123515@chatich.com'),(11,2,'Taís Lucena Castelhano',57,'Rua Manuel Ferreira n86 9500-224 Ponta Delgada',926851232,295151515,'doto2515151j@chatich.com'),(12,1,'Alessia Azambuja Porciúncula',34,'Rua Doutor Marciano h Silva n685 9500-225 Ponta Delgada',926623462,295674356,'dotoj151251@chatich.com'),(13,1,'Aurea Breia Lindim',28,'Rua Padre Joaquim n75 9500-229 Ponta Delgada',926765445,295623525,'dotoj63635645@chatich.com'),(14,1,'Alda Godinho Soverosa',25,'Rua Conselheiro Doutor Luís Bettencourt Medeiros Câmara 9500-058 Ponta Delgada',926751235,296124123,'doto236236734@chatich.com'),(15,1,'Cédric Fitas Marçal',43,'Rua do Escultor Teixeira Lopes n72 9500-225 Ponta Delgada',926736523,295124664,'dotoj1562685@chatich.com'),(16,1,'Brian Valente Salazar',46,'Rua Padre Joaquim n86 9500-229 Ponta Delgada',927712458,295151556,'dotoj1563785@chatich.com'),(17,1,'Aysha Padilha Batata',64,'Rua Manuel Ferreira n653 9500-224 Ponta Delgada',927672341,296235235,'dotoj23462352@chatich.com'),(18,2,'Iulian Couto Reino',25,'Rua Conselheiro Doutor Luís Bettencourt Medeiros Câmara 9500-058 Ponta Delgada',926753245,295623556,'dotoj512365@chatich.com'),(19,1,'Fábia Dutra Pimenta',44,'Rua Doutor Marciano h Silva n651 9500-225 Ponta Delgada',926672352,296235356,'dotoj864645@chatich.com'),(20,1,'Mercedes Távora Madruga',19,'Rua Manuel Ferreira n645 9500-224 Ponta Delgada',926244214,295532443,'dotoj65262@chatich.com');
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

-- Dump completed on 2022-02-15 21:07:00
