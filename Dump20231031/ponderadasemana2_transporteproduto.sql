-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ponderadasemana2
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `transporteproduto`
--

DROP TABLE IF EXISTS `transporteproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporteproduto` (
  `ID_Transporte` int NOT NULL AUTO_INCREMENT,
  `ID_Veiculo` int DEFAULT NULL,
  `ID_UnidadeSaude` int DEFAULT NULL,
  `ID_Produto` int DEFAULT NULL,
  `DataHora` datetime DEFAULT NULL,
  `Tempo` time DEFAULT NULL,
  `Avaliacao` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Transporte`),
  KEY `ID_Veiculo` (`ID_Veiculo`),
  KEY `ID_UnidadeSaude` (`ID_UnidadeSaude`),
  KEY `ID_Produto` (`ID_Produto`),
  CONSTRAINT `transporteproduto_ibfk_1` FOREIGN KEY (`ID_Veiculo`) REFERENCES `veiculo` (`ID_Veiculo`),
  CONSTRAINT `transporteproduto_ibfk_2` FOREIGN KEY (`ID_UnidadeSaude`) REFERENCES `unidadesaude` (`ID_Unidade`),
  CONSTRAINT `transporteproduto_ibfk_3` FOREIGN KEY (`ID_Produto`) REFERENCES `produtomedico` (`ID_Produto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporteproduto`
--

LOCK TABLES `transporteproduto` WRITE;
/*!40000 ALTER TABLE `transporteproduto` DISABLE KEYS */;
INSERT INTO `transporteproduto` VALUES (1,1,1,1,'2023-10-02 11:00:00','00:15:00',4.30),(2,2,3,2,'2023-10-06 13:00:00','00:10:00',3.80),(3,3,2,3,'2023-10-08 15:00:00','00:20:00',4.60),(4,1,3,1,'2023-10-11 12:00:00','00:30:00',4.20);
/*!40000 ALTER TABLE `transporteproduto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-31 13:04:10
