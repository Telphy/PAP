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
-- Temporary view structure for view `servicosview`
--

DROP TABLE IF EXISTS `servicosview`;
/*!50001 DROP VIEW IF EXISTS `servicosview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `servicosview` AS SELECT 
 1 AS `idServicos`,
 1 AS `Servico`,
 1 AS `Descricao`,
 1 AS `Preco/h`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `intervencoesview`
--

DROP TABLE IF EXISTS `intervencoesview`;
/*!50001 DROP VIEW IF EXISTS `intervencoesview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `intervencoesview` AS SELECT 
 1 AS `idIntervencao`,
 1 AS `Matricula`,
 1 AS `Descricao`,
 1 AS `Estado`,
 1 AS `DataEntrada`,
 1 AS `DataConcluido`,
 1 AS `DataEntregue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `funcionariosview`
--

DROP TABLE IF EXISTS `funcionariosview`;
/*!50001 DROP VIEW IF EXISTS `funcionariosview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `funcionariosview` AS SELECT 
 1 AS `idFuncionarios`,
 1 AS `Nome`,
 1 AS `Idade`,
 1 AS `Morada`,
 1 AS `Telemovel`,
 1 AS `Telefone`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientesview`
--

DROP TABLE IF EXISTS `clientesview`;
/*!50001 DROP VIEW IF EXISTS `clientesview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientesview` AS SELECT 
 1 AS `idCliente`,
 1 AS `idTipoCliente`,
 1 AS `Nome`,
 1 AS `Idade`,
 1 AS `Mordada`,
 1 AS `Telemovel`,
 1 AS `Telefone`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viaturasview`
--

DROP TABLE IF EXISTS `viaturasview`;
/*!50001 DROP VIEW IF EXISTS `viaturasview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viaturasview` AS SELECT 
 1 AS `Matricula`,
 1 AS `idCliente`,
 1 AS `Marca`,
 1 AS `Modelo`,
 1 AS `Cor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fornecedorview`
--

DROP TABLE IF EXISTS `fornecedorview`;
/*!50001 DROP VIEW IF EXISTS `fornecedorview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fornecedorview` AS SELECT 
 1 AS `idFornecedor`,
 1 AS `Fornecedor`,
 1 AS `Morada`,
 1 AS `Telemovel`,
 1 AS `Telefone`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pecasview`
--

DROP TABLE IF EXISTS `pecasview`;
/*!50001 DROP VIEW IF EXISTS `pecasview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pecasview` AS SELECT 
 1 AS `idPecas`,
 1 AS `Peca`,
 1 AS `Preco/uni`,
 1 AS `idFornecedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `matereaisview`
--

DROP TABLE IF EXISTS `matereaisview`;
/*!50001 DROP VIEW IF EXISTS `matereaisview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `matereaisview` AS SELECT 
 1 AS `idMatereais`,
 1 AS `Material`,
 1 AS `Preco/uni`,
 1 AS `idFornecedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `historicoview`
--

DROP TABLE IF EXISTS `historicoview`;
/*!50001 DROP VIEW IF EXISTS `historicoview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historicoview` AS SELECT 
 1 AS `idHistorico`,
 1 AS `idIntervencao`,
 1 AS `Matricula`,
 1 AS `Descricao`,
 1 AS `DatadeEntrada`,
 1 AS `DataConcluido`,
 1 AS `DataEntregue`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `servicosview`
--

/*!50001 DROP VIEW IF EXISTS `servicosview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `servicosview` AS select `servicos`.`idServicos` AS `idServicos`,`servicos`.`Servico` AS `Servico`,`servicos`.`Descricao` AS `Descricao`,`servicos`.`Preco/h` AS `Preco/h` from `servicos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `intervencoesview`
--

/*!50001 DROP VIEW IF EXISTS `intervencoesview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `intervencoesview` AS select `intervencoes`.`idIntervencao` AS `idIntervencao`,`intervencoes`.`Matricula` AS `Matricula`,`intervencoes`.`Descricao` AS `Descricao`,`intervencoes`.`Estado` AS `Estado`,`intervencoes`.`DataEntrada` AS `DataEntrada`,`intervencoes`.`DataConcluido` AS `DataConcluido`,`intervencoes`.`DataEntregue` AS `DataEntregue` from `intervencoes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `funcionariosview`
--

/*!50001 DROP VIEW IF EXISTS `funcionariosview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `funcionariosview` AS select `funcionarios`.`idFuncionarios` AS `idFuncionarios`,`funcionarios`.`Nome` AS `Nome`,`funcionarios`.`Idade` AS `Idade`,`funcionarios`.`Morada` AS `Morada`,`funcionarios`.`Telemovel` AS `Telemovel`,`funcionarios`.`Telefone` AS `Telefone`,`funcionarios`.`Email` AS `Email` from `funcionarios` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientesview`
--

/*!50001 DROP VIEW IF EXISTS `clientesview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientesview` AS select `clientes`.`idCliente` AS `idCliente`,`clientes`.`idTipoCliente` AS `idTipoCliente`,`clientes`.`Nome` AS `Nome`,`clientes`.`Idade` AS `Idade`,`clientes`.`Mordada` AS `Mordada`,`clientes`.`Telemovel` AS `Telemovel`,`clientes`.`Telefone` AS `Telefone`,`clientes`.`Email` AS `Email` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viaturasview`
--

/*!50001 DROP VIEW IF EXISTS `viaturasview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viaturasview` AS select `viaturas`.`Matricula` AS `Matricula`,`viaturas`.`idCliente` AS `idCliente`,`viaturas`.`Marca` AS `Marca`,`viaturas`.`Modelo` AS `Modelo`,`viaturas`.`Cor` AS `Cor` from `viaturas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fornecedorview`
--

/*!50001 DROP VIEW IF EXISTS `fornecedorview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fornecedorview` AS select `fornecedor`.`idFornecedor` AS `idFornecedor`,`fornecedor`.`Fornecedor` AS `Fornecedor`,`fornecedor`.`Morada` AS `Morada`,`fornecedor`.`Telemovel` AS `Telemovel`,`fornecedor`.`Telefone` AS `Telefone`,`fornecedor`.`Email` AS `Email` from `fornecedor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pecasview`
--

/*!50001 DROP VIEW IF EXISTS `pecasview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pecasview` AS select `pecas`.`idPecas` AS `idPecas`,`pecas`.`Peca` AS `Peca`,`pecas`.`Preco/uni` AS `Preco/uni`,`pecas`.`idFornecedor` AS `idFornecedor` from `pecas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `matereaisview`
--

/*!50001 DROP VIEW IF EXISTS `matereaisview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `matereaisview` AS select `matereais`.`idMatereais` AS `idMatereais`,`matereais`.`Material` AS `Material`,`matereais`.`Preco/uni` AS `Preco/uni`,`matereais`.`idFornecedor` AS `idFornecedor` from `matereais` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historicoview`
--

/*!50001 DROP VIEW IF EXISTS `historicoview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historicoview` AS select `historico`.`idHistorico` AS `idHistorico`,`historico`.`idIntervencao` AS `idIntervencao`,`historico`.`Matricula` AS `Matricula`,`historico`.`Descricao` AS `Descricao`,`historico`.`DatadeEntrada` AS `DatadeEntrada`,`historico`.`DataConcluido` AS `DataConcluido`,`historico`.`DataEntregue` AS `DataEntregue` from `historico` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-15 21:07:02
