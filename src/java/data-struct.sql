-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: kt_fst_2
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AUFLAGESEITENCOVERMATRIX`
--

DROP TABLE IF EXISTS `AUFLAGESEITENCOVERMATRIX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUFLAGESEITENCOVERMATRIX` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AUFLAGE_ID` int(11) DEFAULT NULL,
  `BAUKASTEN_ID` bigint(20) DEFAULT NULL,
  `COVER_ID` varchar(255) DEFAULT NULL,
  `FARBIGKEIT_ID` varchar(255) DEFAULT NULL,
  `FORMATAUSWAEHLEN_ID` varchar(255) DEFAULT NULL,
  `SEITEN_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_AUFLAGESEITENCOVERMATRIX_SEITEN_ID` (`SEITEN_ID`),
  KEY `FK_AUFLAGESEITENCOVERMATRIX_FORMATAUSWAEHLEN_ID` (`FORMATAUSWAEHLEN_ID`),
  KEY `FK_AUFLAGESEITENCOVERMATRIX_COVER_ID` (`COVER_ID`),
  KEY `FK_AUFLAGESEITENCOVERMATRIX_AUFLAGE_ID` (`AUFLAGE_ID`),
  KEY `FK_AUFLAGESEITENCOVERMATRIX_FARBIGKEIT_ID` (`FARBIGKEIT_ID`),
  KEY `FK_AUFLAGESEITENCOVERMATRIX_BAUKASTEN_ID` (`BAUKASTEN_ID`),
  CONSTRAINT `FK_AUFLAGESEITENCOVERMATRIX_AUFLAGE_ID` FOREIGN KEY (`AUFLAGE_ID`) REFERENCES `AUFLAGE` (`ID`),
  CONSTRAINT `FK_AUFLAGESEITENCOVERMATRIX_BAUKASTEN_ID` FOREIGN KEY (`BAUKASTEN_ID`) REFERENCES `BAUKASTEN` (`ID`),
  CONSTRAINT `FK_AUFLAGESEITENCOVERMATRIX_COVER_ID` FOREIGN KEY (`COVER_ID`) REFERENCES `COVER` (`ID`),
  CONSTRAINT `FK_AUFLAGESEITENCOVERMATRIX_FARBIGKEIT_ID` FOREIGN KEY (`FARBIGKEIT_ID`) REFERENCES `FARBIGKEIT` (`ID`),
  CONSTRAINT `FK_AUFLAGESEITENCOVERMATRIX_FORMATAUSWAEHLEN_ID` FOREIGN KEY (`FORMATAUSWAEHLEN_ID`) REFERENCES `FORMATAUSWAEHLEN` (`ID`),
  CONSTRAINT `FK_AUFLAGESEITENCOVERMATRIX_SEITEN_ID` FOREIGN KEY (`SEITEN_ID`) REFERENCES `SEITEN` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUFLAGESEITENCOVERMATRIX`
--

LOCK TABLES `AUFLAGESEITENCOVERMATRIX` WRITE;
/*!40000 ALTER TABLE `AUFLAGESEITENCOVERMATRIX` DISABLE KEYS */;
INSERT INTO `AUFLAGESEITENCOVERMATRIX` VALUES (4,0.00,1,1502,'Softcover','4/4 c','A4',78),(5,0.00,1,1502,'Softcover','4/4 c','A4',79),(6,10.07,1,1502,'Softcover','4/4 c','A4',80),(7,12.32,1,1502,'Softcover','4/4 c','A4',81),(8,15.07,1,1502,'Softcover','4/4 c','A4',82),(9,18.10,1,1502,'Softcover','4/4 c','A4',83),(10,20.99,1,1502,'Softcover','4/4 c','A4',84),(11,31.00,1,1502,'Softcover','4/4 c','A4',85),(12,35.05,1,1502,'Softcover','4/4 c','A4',86),(13,44.77,1,1502,'Softcover','4/4 c','A4',87),(14,64.71,1,1502,'Softcover','4/4 c','A4',88),(15,77.99,1,1502,'Softcover','4/4 c','A4',89),(16,91.52,1,1502,'Softcover','4/4 c','A4',90),(17,106.78,1,1502,'Softcover','4/4 c','A4',91),(18,118.22,1,1502,'Softcover','4/4 c','A4',92),(19,133.54,1,1502,'Softcover','4/4 c','A4',93),(20,154.55,1,1502,'Softcover','4/4 c','A4',94),(21,168.08,1,1502,'Softcover','4/4 c','A4',95),(22,181.94,1,1502,'Softcover','4/4 c','A4',96),(23,196.02,1,1502,'Softcover','4/4 c','A4',97),(24,211.46,1,1502,'Softcover','4/4 c','A4',98),(25,224.10,1,1502,'Softcover','4/4 c','A4',99),(26,235.44,1,1502,'Softcover','4/4 c','A4',100),(27,249.16,1,1502,'Softcover','4/4 c','A4',101),(28,270.00,1,1502,'Softcover','4/4 c','A4',102),(29,284.04,1,1502,'Softcover','4/4 c','A4',103),(30,305.30,1,1502,'Softcover','4/4 c','A4',104),(31,314.97,1,1502,'Softcover','4/4 c','A4',105),(32,325.89,1,1502,'Softcover','4/4 c','A4',106),(33,339.82,1,1502,'Softcover','4/4 c','A4',107),(34,353.76,1,1502,'Softcover','4/4 c','A4',108),(35,367.70,1,1502,'Softcover','4/4 c','A4',109),(36,385.92,1,1502,'Softcover','4/4 c','A4',110),(37,406.29,1,1502,'Softcover','4/4 c','A4',111),(38,420.22,1,1502,'Softcover','4/4 c','A4',112),(39,434.16,1,1502,'Softcover','4/4 c','A4',113),(40,453.46,1,1502,'Softcover','4/4 c','A4',114),(41,463.10,1,1502,'Softcover','4/4 c','A4',115),(42,481.33,1,1502,'Softcover','4/4 c','A4',116),(43,490.98,1,1502,'Softcover','4/4 c','A4',117),(44,515.52,1,1502,'Softcover','4/4 c','A4',118),(45,522.58,1,1502,'Softcover','4/4 c','A4',119),(46,3.18,1,1502,'Softcover','4/4 c','A5',78),(47,6.36,1,1502,'Softcover','4/4 c','A5',79),(48,5.57,1,1502,'Softcover','4/4 c','A5',80),(49,7.07,1,1502,'Softcover','4/4 c','A5',81),(50,8.89,1,1502,'Softcover','4/4 c','A5',82),(51,11.08,1,1502,'Softcover','4/4 c','A5',83),(52,13.43,1,1502,'Softcover','4/4 c','A5',84),(53,19.84,1,1502,'Softcover','4/4 c','A5',85),(54,22.43,1,1502,'Softcover','4/4 c','A5',86),(55,28.65,1,1502,'Softcover','4/4 c','A5',87),(56,41.42,1,1502,'Softcover','4/4 c','A5',88),(57,49.91,1,1502,'Softcover','4/4 c','A5',89),(58,58.57,1,1502,'Softcover','4/4 c','A5',90),(59,68.34,1,1502,'Softcover','4/4 c','A5',91),(60,75.66,1,1502,'Softcover','4/4 c','A5',92),(61,85.47,1,1502,'Softcover','4/4 c','A5',93),(62,98.91,1,1502,'Softcover','4/4 c','A5',94),(63,107.57,1,1502,'Softcover','4/4 c','A5',95),(64,116.44,1,1502,'Softcover','4/4 c','A5',96),(65,125.45,1,1502,'Softcover','4/4 c','A5',97),(66,135.33,1,1502,'Softcover','4/4 c','A5',98),(67,143.42,1,1502,'Softcover','4/4 c','A5',99),(68,150.68,1,1502,'Softcover','4/4 c','A5',100),(69,159.46,1,1502,'Softcover','4/4 c','A5',101),(70,172.80,1,1502,'Softcover','4/4 c','A5',102),(71,181.79,1,1502,'Softcover','4/4 c','A5',103),(72,195.39,1,1502,'Softcover','4/4 c','A5',104),(73,201.58,1,1502,'Softcover','4/4 c','A5',105),(74,208.57,1,1502,'Softcover','4/4 c','A5',106),(75,217.49,1,1502,'Softcover','4/4 c','A5',107),(76,226.41,1,1502,'Softcover','4/4 c','A5',108),(77,235.33,1,1502,'Softcover','4/4 c','A5',109),(78,246.99,1,1502,'Softcover','4/4 c','A5',110),(79,260.02,1,1502,'Softcover','4/4 c','A5',111),(80,268.94,1,1502,'Softcover','4/4 c','A5',112),(81,277.86,1,1502,'Softcover','4/4 c','A5',113),(82,290.21,1,1502,'Softcover','4/4 c','A5',114),(83,296.39,1,1502,'Softcover','4/4 c','A5',115),(84,308.05,1,1502,'Softcover','4/4 c','A5',116),(85,314.22,1,1502,'Softcover','4/4 c','A5',117),(86,329.94,1,1502,'Softcover','4/4 c','A5',118),(87,334.45,1,1502,'Softcover','4/4 c','A5',119),(88,2.29,1,1502,'Softcover','4/4 c','A6',78),(89,4.58,1,1502,'Softcover','4/4 c','A6',79),(90,2.90,1,1502,'Softcover','4/4 c','A6',80),(91,3.71,1,1502,'Softcover','4/4 c','A6',81),(92,4.71,1,1502,'Softcover','4/4 c','A6',82),(93,5.93,1,1502,'Softcover','4/4 c','A6',83),(94,7.25,1,1502,'Softcover','4/4 c','A6',84),(95,10.71,1,1502,'Softcover','4/4 c','A6',85),(96,12.11,1,1502,'Softcover','4/4 c','A6',86),(97,15.47,1,1502,'Softcover','4/4 c','A6',87),(98,22.36,1,1502,'Softcover','4/4 c','A6',88),(99,26.95,1,1502,'Softcover','4/4 c','A6',89),(100,31.63,1,1502,'Softcover','4/4 c','A6',90),(101,36.90,1,1502,'Softcover','4/4 c','A6',91),(102,40.86,1,1502,'Softcover','4/4 c','A6',92),(103,46.15,1,1502,'Softcover','4/4 c','A6',93),(104,53.41,1,1502,'Softcover','4/4 c','A6',94),(105,58.09,1,1502,'Softcover','4/4 c','A6',95),(106,62.88,1,1502,'Softcover','4/4 c','A6',96),(107,67.74,1,1502,'Softcover','4/4 c','A6',97),(108,73.08,1,1502,'Softcover','4/4 c','A6',98),(109,77.45,1,1502,'Softcover','4/4 c','A6',99),(110,81.37,1,1502,'Softcover','4/4 c','A6',100),(111,86.11,1,1502,'Softcover','4/4 c','A6',101),(112,93.31,1,1502,'Softcover','4/4 c','A6',102),(113,98.16,1,1502,'Softcover','4/4 c','A6',103),(114,105.51,1,1502,'Softcover','4/4 c','A6',104),(115,108.86,1,1502,'Softcover','4/4 c','A6',105),(116,112.63,1,1502,'Softcover','4/4 c','A6',106),(117,117.44,1,1502,'Softcover','4/4 c','A6',107),(118,122.26,1,1502,'Softcover','4/4 c','A6',108),(119,127.08,1,1502,'Softcover','4/4 c','A6',109),(120,133.37,1,1502,'Softcover','4/4 c','A6',110),(121,140.41,1,1502,'Softcover','4/4 c','A6',111),(122,145.23,1,1502,'Softcover','4/4 c','A6',112),(123,150.05,1,1502,'Softcover','4/4 c','A6',113),(124,156.71,1,1502,'Softcover','4/4 c','A6',114),(125,160.05,1,1502,'Softcover','4/4 c','A6',115),(126,166.35,1,1502,'Softcover','4/4 c','A6',116),(127,169.68,1,1502,'Softcover','4/4 c','A6',117),(128,178.17,1,1502,'Softcover','4/4 c','A6',118),(129,180.60,1,1502,'Softcover','4/4 c','A6',119),(130,0.00,1,1502,'Softcover','4/4 c','E5PLUS',78),(131,0.00,1,1502,'Softcover','4/4 c','E5PLUS',79),(132,5.87,1,1502,'Softcover','4/4 c','E5PLUS',80),(133,7.38,1,1502,'Softcover','4/4 c','E5PLUS',81),(134,9.20,1,1502,'Softcover','4/4 c','E5PLUS',82),(135,11.36,1,1502,'Softcover','4/4 c','E5PLUS',83),(136,13.64,1,1502,'Softcover','4/4 c','E5PLUS',84),(137,20.15,1,1502,'Softcover','4/4 c','E5PLUS',85),(138,22.78,1,1502,'Softcover','4/4 c','E5PLUS',86),(139,29.10,1,1502,'Softcover','4/4 c','E5PLUS',87),(140,42.06,1,1502,'Softcover','4/4 c','E5PLUS',88),(141,50.69,1,1502,'Softcover','4/4 c','E5PLUS',89),(142,59.49,1,1502,'Softcover','4/4 c','E5PLUS',90),(143,69.41,1,1502,'Softcover','4/4 c','E5PLUS',91),(144,76.84,1,1502,'Softcover','4/4 c','E5PLUS',92),(145,86.80,1,1502,'Softcover','4/4 c','E5PLUS',93),(146,100.46,1,1502,'Softcover','4/4 c','E5PLUS',94),(147,109.25,1,1502,'Softcover','4/4 c','E5PLUS',95),(148,118.26,1,1502,'Softcover','4/4 c','E5PLUS',96),(149,127.41,1,1502,'Softcover','4/4 c','E5PLUS',97),(150,137.45,1,1502,'Softcover','4/4 c','E5PLUS',98),(151,145.67,1,1502,'Softcover','4/4 c','E5PLUS',99),(152,153.04,1,1502,'Softcover','4/4 c','E5PLUS',100),(153,161.95,1,1502,'Softcover','4/4 c','E5PLUS',101),(154,175.50,1,1502,'Softcover','4/4 c','E5PLUS',102),(155,184.63,1,1502,'Softcover','4/4 c','E5PLUS',103),(156,198.45,1,1502,'Softcover','4/4 c','E5PLUS',104),(157,204.73,1,1502,'Softcover','4/4 c','E5PLUS',105),(158,211.83,1,1502,'Softcover','4/4 c','E5PLUS',106),(159,220.89,1,1502,'Softcover','4/4 c','E5PLUS',107),(160,229.94,1,1502,'Softcover','4/4 c','E5PLUS',108),(161,239.00,1,1502,'Softcover','4/4 c','E5PLUS',109),(162,250.85,1,1502,'Softcover','4/4 c','E5PLUS',110),(163,264.09,1,1502,'Softcover','4/4 c','E5PLUS',111),(164,273.15,1,1502,'Softcover','4/4 c','E5PLUS',112),(165,282.20,1,1502,'Softcover','4/4 c','E5PLUS',113),(166,294.75,1,1502,'Softcover','4/4 c','E5PLUS',114),(167,301.02,1,1502,'Softcover','4/4 c','E5PLUS',115),(168,312.86,1,1502,'Softcover','4/4 c','E5PLUS',116),(169,319.13,1,1502,'Softcover','4/4 c','E5PLUS',117),(170,335.09,1,1502,'Softcover','4/4 c','E5PLUS',118),(171,339.68,1,1502,'Softcover','4/4 c','E5PLUS',119),(172,0.00,1,1502,'Softcover','4/4 c','F1926',78),(173,0.00,1,1502,'Softcover','4/4 c','F1926',79),(174,9.88,1,1502,'Softcover','4/4 c','F1926',80),(175,12.31,1,1502,'Softcover','4/4 c','F1926',81),(176,15.20,1,1502,'Softcover','4/4 c','F1926',82),(177,18.59,1,1502,'Softcover','4/4 c','F1926',83),(178,21.93,1,1502,'Softcover','4/4 c','F1926',84),(179,32.40,1,1502,'Softcover','4/4 c','F1926',85),(180,36.63,1,1502,'Softcover','4/4 c','F1926',86),(181,46.78,1,1502,'Softcover','4/4 c','F1926',87),(182,67.63,1,1502,'Softcover','4/4 c','F1926',88),(183,81.50,1,1502,'Softcover','4/4 c','F1926',89),(184,95.64,1,1502,'Softcover','4/4 c','F1926',90),(185,111.59,1,1502,'Softcover','4/4 c','F1926',91),(186,123.53,1,1502,'Softcover','4/4 c','F1926',92),(187,139.55,1,1502,'Softcover','4/4 c','F1926',93),(188,161.50,1,1502,'Softcover','4/4 c','F1926',94),(189,175.64,1,1502,'Softcover','4/4 c','F1926',95),(190,190.13,1,1502,'Softcover','4/4 c','F1926',96),(191,204.84,1,1502,'Softcover','4/4 c','F1926',97),(192,220.98,1,1502,'Softcover','4/4 c','F1926',98),(193,234.18,1,1502,'Softcover','4/4 c','F1926',99),(194,246.03,1,1502,'Softcover','4/4 c','F1926',100),(195,260.37,1,1502,'Softcover','4/4 c','F1926',101),(196,282.15,1,1502,'Softcover','4/4 c','F1926',102),(197,296.82,1,1502,'Softcover','4/4 c','F1926',103),(198,319.04,1,1502,'Softcover','4/4 c','F1926',104),(199,329.15,1,1502,'Softcover','4/4 c','F1926',105),(200,340.55,1,1502,'Softcover','4/4 c','F1926',106),(201,355.12,1,1502,'Softcover','4/4 c','F1926',107),(202,369.68,1,1502,'Softcover','4/4 c','F1926',108),(203,384.24,1,1502,'Softcover','4/4 c','F1926',109),(204,403.29,1,1502,'Softcover','4/4 c','F1926',110),(205,424.57,1,1502,'Softcover','4/4 c','F1926',111),(206,439.13,1,1502,'Softcover','4/4 c','F1926',112),(207,453.70,1,1502,'Softcover','4/4 c','F1926',113),(208,473.86,1,1502,'Softcover','4/4 c','F1926',114),(209,483.94,1,1502,'Softcover','4/4 c','F1926',115),(210,502.99,1,1502,'Softcover','4/4 c','F1926',116),(211,513.07,1,1502,'Softcover','4/4 c','F1926',117),(212,0.00,1,1502,'Softcover','4/4 c','F1926',118),(213,0.00,1,1502,'Softcover','4/4 c','F1926',119);
/*!40000 ALTER TABLE `AUFLAGESEITENCOVERMATRIX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUSGABEPRICING`
--

DROP TABLE IF EXISTS `AUSGABEPRICING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUSGABEPRICING` (
  `ID` bigint(20) NOT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `AUSGABE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_AUSGABEPRICING_AUSGABE_ID` (`AUSGABE_ID`),
  CONSTRAINT `FK_AUSGABEPRICING_AUSGABE_ID` FOREIGN KEY (`AUSGABE_ID`) REFERENCES `AUSGABE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUSGABEPRICING`
--

LOCK TABLES `AUSGABEPRICING` WRITE;
/*!40000 ALTER TABLE `AUSGABEPRICING` DISABLE KEYS */;
/*!40000 ALTER TABLE `AUSGABEPRICING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BAUKASTENPRICING`
--

DROP TABLE IF EXISTS `BAUKASTENPRICING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BAUKASTENPRICING` (
  `ID` bigint(20) NOT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `BAUKASTEN_ID` bigint(20) DEFAULT NULL,
  `COVER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BAUKASTENPRICING_BAUKASTEN_ID` (`BAUKASTEN_ID`),
  KEY `FK_BAUKASTENPRICING_COVER_ID` (`COVER_ID`),
  CONSTRAINT `FK_BAUKASTENPRICING_BAUKASTEN_ID` FOREIGN KEY (`BAUKASTEN_ID`) REFERENCES `BAUKASTEN` (`ID`),
  CONSTRAINT `FK_BAUKASTENPRICING_COVER_ID` FOREIGN KEY (`COVER_ID`) REFERENCES `COVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BAUKASTENPRICING`
--

LOCK TABLES `BAUKASTENPRICING` WRITE;
/*!40000 ALTER TABLE `BAUKASTENPRICING` DISABLE KEYS */;
INSERT INTO `BAUKASTENPRICING` VALUES (1556,184.84,1502,'Softcover'),(1557,352.79,1502,'Hardcover');
/*!40000 ALTER TABLE `BAUKASTENPRICING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NACHSATZ`
--

DROP TABLE IF EXISTS `NACHSATZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NACHSATZ` (
  `ID` bigint(20) NOT NULL,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `COVER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_NACHSATZ_COVER_ID` (`COVER_ID`),
  CONSTRAINT `FK_NACHSATZ_COVER_ID` FOREIGN KEY (`COVER_ID`) REFERENCES `COVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NACHSATZ`
--

LOCK TABLES `NACHSATZ` WRITE;
/*!40000 ALTER TABLE `NACHSATZ` DISABLE KEYS */;
INSERT INTO `NACHSATZ` VALUES (1902,'',0.00,'Softcover'),(1903,'3 Seiten 1/0-fbg. Skala',99.70,'Hardcover'),(1904,'3 Seiten 1/1-fbg. Skala',199.40,'Hardcover'),(1905,'3 Seiten 4/0-fbg. Skala',258.53,'Hardcover'),(1906,'3 Seiten 4/4-fbg. Skala',352.79,'Hardcover');
/*!40000 ALTER TABLE `NACHSATZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NACHSPANN`
--

DROP TABLE IF EXISTS `NACHSPANN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NACHSPANN` (
  `ID` bigint(20) NOT NULL,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `VALUE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NACHSPANN`
--

LOCK TABLES `NACHSPANN` WRITE;
/*!40000 ALTER TABLE `NACHSPANN` DISABLE KEYS */;
INSERT INTO `NACHSPANN` VALUES (1907,'4 Seiten, 1/1-fbg. Skala',199.40),(1908,'4 Seiten, 1/1-fbg. Sonderfarbe',199.40),(1909,'4 Seiten, 2/2-fbg. Skala',250.53),(1910,'4 Seiten, 2/2-fbg. Skala + 1 Sonderfarbe',250.53),(1911,'4 Seiten, 3/3-fbg. Skala',301.66),(1912,'4 Seiten, 3/3-fbg. Skala + 1 Sonderfarbe',301.66),(1913,'4 Seiten, 3/3-fbg. Skala + 2 Sonderfarben',301.66),(1914,'4 Seiten, 4/4-fbg. Skala',352.79);
/*!40000 ALTER TABLE `NACHSPANN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UMSCHLAGFARBIGKEITELEMENT`
--

DROP TABLE IF EXISTS `UMSCHLAGFARBIGKEITELEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UMSCHLAGFARBIGKEITELEMENT` (
  `ID` bigint(20) NOT NULL,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `COVER_ID` varchar(255) DEFAULT NULL,
  `UMSCHLAGFARBIGKEIT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_UMSCHLAGFARBIGKEITELEMENT_COVER_ID` (`COVER_ID`),
  KEY `FK_UMSCHLAGFARBIGKEITELEMENT_UMSCHLAGFARBIGKEIT_ID` (`UMSCHLAGFARBIGKEIT_ID`),
  CONSTRAINT `FK_UMSCHLAGFARBIGKEITELEMENT_COVER_ID` FOREIGN KEY (`COVER_ID`) REFERENCES `COVER` (`ID`),
  CONSTRAINT `FK_UMSCHLAGFARBIGKEITELEMENT_UMSCHLAGFARBIGKEIT_ID` FOREIGN KEY (`UMSCHLAGFARBIGKEIT_ID`) REFERENCES `UMSCHLAGFARBIGKEIT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UMSCHLAGFARBIGKEITELEMENT`
--

LOCK TABLES `UMSCHLAGFARBIGKEITELEMENT` WRITE;
/*!40000 ALTER TABLE `UMSCHLAGFARBIGKEITELEMENT` DISABLE KEYS */;
INSERT INTO `UMSCHLAGFARBIGKEITELEMENT` VALUES (1959,'Firmeneindruck',NULL,NULL,NULL),(1960,'Individueller Sonderumschlag',NULL,NULL,NULL);
/*!40000 ALTER TABLE `UMSCHLAGFARBIGKEITELEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VORSPANN`
--

DROP TABLE IF EXISTS `VORSPANN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VORSPANN` (
  `ID` bigint(20) NOT NULL,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `VALUE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VORSPANN`
--

LOCK TABLES `VORSPANN` WRITE;
/*!40000 ALTER TABLE `VORSPANN` DISABLE KEYS */;
INSERT INTO `VORSPANN` VALUES (1,'4 Seiten, 1/1-fbg. Skala\r4 Seiten, 1/1-fbg. Skala4 Seiten, 1/1-fbg. Skala',199.40),(2,'4 Seiten, 1/1-fbg. Sonderfarbe',199.40),(3,'4 Seiten, 2/2-fbg. Skala\r4 Seiten, 2/2-fbg. Skala\r',250.53),(4,'4 Seiten, 2/2-fbg. Skala + 1 Sonderfarbe',250.53),(5,'4 Seiten, 3/3-fbg. Skala',301.66),(6,'4 Seiten, 3/3-fbg. Skala + 1 Sonderfarbe',301.66),(7,'4 Seiten, 3/3-fbg. Skala + 2 Sonderfarben',301.66),(8,'4 Seiten, 4/4-fbg. Skala',352.79),(9,'4 Seiten, 5/5-fbg. Skala + 1 Sonderfarbe ',429.48),(10,'8 Seiten, 1/1-fbg. Skala',398.81),(11,'8 Seiten, 1/1-fbg. Sonderfarbe',398.81),(12,'8 Seiten, 2/2-fbg. Skala',501.07),(13,'8 Seiten, 2/2-fbg. Skala + 1 Sonderfarbe',501.07),(14,'8 Seiten, 3/3-fbg. Skala',603.32),(15,'8 Seiten, 3/3-fbg. Skala + 1 Sonderfarbe',603.32),(16,'8 Seiten, 3/3-fbg. Skala + 2 Sonderfarben',603.32),(17,'8 Seiten, 4/4-fbg. Skala ',705.58);
/*!40000 ALTER TABLE `VORSPANN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artderweiterverarbeitung`
--

DROP TABLE IF EXISTS `artderweiterverarbeitung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artderweiterverarbeitung` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artderweiterverarbeitung`
--

LOCK TABLES `artderweiterverarbeitung` WRITE;
/*!40000 ALTER TABLE `artderweiterverarbeitung` DISABLE KEYS */;
/*!40000 ALTER TABLE `artderweiterverarbeitung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auflage`
--

DROP TABLE IF EXISTS `auflage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auflage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auflage`
--

LOCK TABLES `auflage` WRITE;
/*!40000 ALTER TABLE `auflage` DISABLE KEYS */;
INSERT INTO `auflage` VALUES (1,'50',50.00),(2,'100',100.00),(3,'150',150.00),(4,'200',200.00),(5,'500',500.00),(6,'750',750.00),(7,'1000',1000.00),(8,'1250',1250.00),(9,'1500',1500.00),(10,'1750',1750.00),(11,'2000',2000.00),(12,'2500',2500.00),(13,'3000',3000.00),(14,'3500',3500.00),(15,'4000',4000.00),(16,'4500',4500.00),(17,'5000',5000.00),(18,'5500',5500.00),(19,'6000',6000.00),(20,'6500',6500.00),(21,'7000',7000.00),(22,'7500',7500.00),(23,'8000',8000.00),(24,'8500',8500.00),(25,'9000',9000.00),(26,'9500',9500.00),(27,'10000',10000.00);
/*!40000 ALTER TABLE `auflage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ausgabe`
--

DROP TABLE IF EXISTS `ausgabe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ausgabe` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `VALUEE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ausgabe`
--

LOCK TABLES `ausgabe` WRITE;
/*!40000 ALTER TABLE `ausgabe` DISABLE KEYS */;
INSERT INTO `ausgabe` VALUES (7,'Erstausgabe',NULL,0.50),(8,'Folgeausgabe',NULL,0.20);
/*!40000 ALTER TABLE `ausgabe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup` (
  `ID` bigint(20) NOT NULL,
  `DATESYSTEME` date DEFAULT NULL,
  `NOM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
INSERT INTO `backup` VALUES (256,'2017-08-02','2017-08-02.sql');
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baukasten`
--

DROP TABLE IF EXISTS `baukasten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baukasten` (
  `ID` bigint(20) NOT NULL,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `VALUE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baukasten`
--

LOCK TABLES `baukasten` WRITE;
/*!40000 ALTER TABLE `baukasten` DISABLE KEYS */;
INSERT INTO `baukasten` VALUES (1502,'4/4-fbg.Skala ',NULL);
/*!40000 ALTER TABLE `baukasten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bindung`
--

DROP TABLE IF EXISTS `bindung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bindung` (
  `ID` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bindung`
--

LOCK TABLES `bindung` WRITE;
/*!40000 ALTER TABLE `bindung` DISABLE KEYS */;
INSERT INTO `bindung` VALUES ('Fadenheftung',NULL,NULL),('PUR-Bindung',NULL,NULL);
/*!40000 ALTER TABLE `bindung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Katalog'),(2,'Fleyer'),(3,'Prospekt'),(4,'BMEcat');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATEAPPLICATION` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'2012-07-03');
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurationitem`
--

DROP TABLE IF EXISTS `configurationitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurationitem` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DEFAULTVALUE` decimal(10,2) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CONFIGURATION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CONFIGURATIONITEM_CONFIGURATION_ID` (`CONFIGURATION_ID`),
  CONSTRAINT `FK_CONFIGURATIONITEM_CONFIGURATION_ID` FOREIGN KEY (`CONFIGURATION_ID`) REFERENCES `configuration` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurationitem`
--

LOCK TABLES `configurationitem` WRITE;
/*!40000 ALTER TABLE `configurationitem` DISABLE KEYS */;
INSERT INTO `configurationitem` VALUES (1,56.25,'std_stz',NULL),(2,70.00,'std_stz_dtp',NULL),(3,56.25,'std_stz_pm',NULL),(4,162.50,'std_satz_fotograf',1),(5,75.00,'std_satz_kind_model',1),(6,112.50,'std_satz_erwachsene_model',1);
/*!40000 ALTER TABLE `configurationitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correctionschluessel`
--

DROP TABLE IF EXISTS `correctionschluessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correctionschluessel` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PERCENT` int(11) DEFAULT NULL,
  `WERT` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correctionschluessel`
--

LOCK TABLES `correctionschluessel` WRITE;
/*!40000 ALTER TABLE `correctionschluessel` DISABLE KEYS */;
INSERT INTO `correctionschluessel` VALUES (1,0,1.000),(2,1,1.000),(3,2,1.000),(4,3,1.000),(5,4,1.000),(6,5,1.000),(7,6,1.000),(8,7,1.000),(9,8,1.000),(10,9,1.000),(11,10,1.000),(12,11,1.000),(13,12,1.000),(14,13,1.000),(15,14,1.000),(17,15,1.050),(18,16,1.025),(19,17,1.025),(20,18,1.025),(21,19,1.025),(22,20,1.025),(23,21,1.025),(24,22,1.025),(25,23,1.025),(26,24,1.025),(27,25,1.025),(28,26,1.025),(29,27,1.025),(30,28,1.025),(31,29,1.025),(32,30,1.025),(33,31,1.050),(34,32,1.050),(35,33,1.050),(36,34,1.050),(37,35,1.050),(38,36,1.050),(39,37,1.050),(40,38,1.050),(41,39,1.050),(42,40,1.050),(43,41,1.050),(44,42,1.050),(45,43,1.050),(46,44,1.050),(47,45,1.050),(48,46,1.050),(49,47,1.050),(50,48,1.050),(51,49,1.050),(52,50,1.050),(53,51,1.100),(54,52,1.100),(55,53,1.100),(56,54,1.100),(57,55,1.100),(58,56,1.100),(59,57,1.100),(60,58,1.100),(61,59,1.100),(62,60,1.100),(63,61,1.100),(64,62,1.100),(65,63,1.100),(66,64,1.100),(67,65,1.100),(68,66,1.100),(69,67,1.100),(70,68,1.100),(71,69,1.100),(72,70,1.100),(73,71,1.100),(74,72,1.100),(75,73,1.100),(76,74,1.100),(77,75,1.100),(78,76,1.150),(79,77,1.150),(80,78,1.150),(81,79,1.150),(82,80,1.150),(83,81,1.150),(84,82,1.150),(85,83,1.150),(86,84,1.150),(87,85,1.150),(88,86,1.150),(89,87,1.150),(90,88,1.150),(91,89,1.150),(92,90,1.150),(93,91,1.150),(94,92,1.150),(95,93,1.150),(96,94,1.150),(97,95,1.150),(98,96,1.150),(99,97,1.150),(100,98,1.150),(101,99,1.150),(102,100,1.150);
/*!40000 ALTER TABLE `correctionschluessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cover`
--

DROP TABLE IF EXISTS `cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cover` (
  `ID` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cover`
--

LOCK TABLES `cover` WRITE;
/*!40000 ALTER TABLE `cover` DISABLE KEYS */;
INSERT INTO `cover` VALUES ('Hardcover',NULL,NULL),('Softcover',NULL,NULL);
/*!40000 ALTER TABLE `cover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandcategory`
--

DROP TABLE IF EXISTS `demandcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demandcategory` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ANZAHLBESTANDARTIKEL` int(11) DEFAULT NULL,
  `ANZAHLBESTANDPRODUKT` int(11) DEFAULT NULL,
  `ANZAHLBESTELLNRSEITEN` int(11) DEFAULT NULL,
  `ANZAHLBETEILIGTEN` int(11) DEFAULT NULL,
  `ANZAHLGENERIERUNGUPDATESEITEN` int(11) DEFAULT NULL,
  `ANZAHLGESAMTARTIKEL` int(11) DEFAULT NULL,
  `ANZAHLGESAMTPRODUKT` int(11) DEFAULT NULL,
  `ANZAHLGESAMTSEITEN` int(11) DEFAULT NULL,
  `ANZAHLIHVZSEITEN` int(11) DEFAULT NULL,
  `ANZAHLKAPITETEL` int(11) DEFAULT NULL,
  `ANZAHLLIEFERANTGESAMT` int(11) DEFAULT NULL,
  `ANZAHLLIEFERANTNEU` int(11) DEFAULT NULL,
  `ANZAHLMITGLIEDER` int(11) DEFAULT NULL,
  `ANZAHLNEUEARTIKEL` int(11) DEFAULT NULL,
  `ANZAHLNEUEPRODUKT` int(11) DEFAULT NULL,
  `ANZAHLSONDERSEITEN` int(11) DEFAULT NULL,
  `ANZAHLÜBERNAHMEARTIKEL` int(11) DEFAULT NULL,
  `ARTIKELPERPAGELFAKTOR` decimal(10,2) DEFAULT NULL,
  `BEARBEITUNGSZEIT` int(11) DEFAULT NULL,
  `DATEDEMANDCATEGORY` date DEFAULT NULL,
  `DATESYSTEM` date DEFAULT NULL,
  `DRUCK` tinyint(1) DEFAULT '0',
  `LKSCHLUESSELFAKTOR` decimal(10,2) DEFAULT NULL,
  `LIEFERTERMIN` date DEFAULT NULL,
  `MKSCHLUESSELFAKTOR` decimal(10,2) DEFAULT NULL,
  `NBRTOTALVALIDATION` int(11) DEFAULT NULL,
  `PERCENTSEITENFAKTOR` int(11) DEFAULT NULL,
  `PRODUCTSCHLUESSELFAKTOR` decimal(10,2) DEFAULT NULL,
  `SEITENANZAHL` int(11) DEFAULT NULL,
  `SUMMDRUCK` decimal(10,2) DEFAULT NULL,
  `SUMMUNITPRICE` decimal(10,2) DEFAULT NULL,
  `SUMMEGLOBAL` decimal(10,2) DEFAULT NULL,
  `TEILNEHMERZAHL` int(11) DEFAULT NULL,
  `TEILNEHMERZAHLPRICING` decimal(10,2) DEFAULT NULL,
  `UMFANG` int(11) DEFAULT NULL,
  `UMSCHLAG` tinyint(1) DEFAULT '0',
  `SCHLUESSEL_ID` bigint(20) DEFAULT NULL,
  `ARTDERWEITERVERARBEITUNG_ID` bigint(20) DEFAULT NULL,
  `AUFLAGE_ID` int(11) DEFAULT NULL,
  `AUSGABE_ID` bigint(20) DEFAULT NULL,
  `BAUKASTEN_ID` bigint(20) DEFAULT NULL,
  `BINDUNG_ID` varchar(255) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `CORRECTIONSCHLUESSEL_ID` bigint(20) DEFAULT NULL,
  `COVER_ID` varchar(255) DEFAULT NULL,
  `DEPARTMENT_ID` bigint(20) DEFAULT NULL,
  `DRUCKSEITEN_ID` bigint(20) DEFAULT NULL,
  `FARBIGKEIT_ID` varchar(255) DEFAULT NULL,
  `FORMATAUSWAEHLEN_ID` varchar(255) DEFAULT NULL,
  `KATALOGART_ID` bigint(20) DEFAULT NULL,
  `KONZEPTBEARBEITUNGFAKTOR_ID` bigint(20) DEFAULT NULL,
  `LAYOUT_ID` bigint(20) DEFAULT NULL,
  `MITGLIEDERKORREKTURFAKTOR_ID` bigint(20) DEFAULT NULL,
  `PAPIERMATERIALAUSWAEHLEN_ID` varchar(255) DEFAULT NULL,
  `PARTICIPANTFAKTOR_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `PROZESS_ID` bigint(20) DEFAULT NULL,
  `REGISTER_ID` bigint(20) DEFAULT NULL,
  `UMSCHLAGFARBIGKEIT_ID` bigint(20) DEFAULT NULL,
  `UMSCHLAGPAPIERAUSWAEHLEN_ID` varchar(255) DEFAULT NULL,
  `USER_LOGIN` varchar(255) DEFAULT NULL,
  `VEREDLUNG_ID` varchar(255) DEFAULT NULL,
  `WECHSELFASSUNGVARIANTFAKTOR_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DEMANDCATEGORY_PROZESS_ID` (`PROZESS_ID`),
  KEY `FK_DEMANDCATEGORY_REGISTER_ID` (`REGISTER_ID`),
  KEY `FK_DEMANDCATEGORY_CORRECTIONSCHLUESSEL_ID` (`CORRECTIONSCHLUESSEL_ID`),
  KEY `FK_DEMANDCATEGORY_PRODUCT_ID` (`PRODUCT_ID`),
  KEY `FK_DEMANDCATEGORY_CATEGORY_ID` (`CATEGORY_ID`),
  KEY `FK_DEMANDCATEGORY_DEPARTMENT_ID` (`DEPARTMENT_ID`),
  KEY `FK_DEMANDCATEGORY_KONZEPTBEARBEITUNGFAKTOR_ID` (`KONZEPTBEARBEITUNGFAKTOR_ID`),
  KEY `FK_DEMANDCATEGORY_VEREDLUNG_ID` (`VEREDLUNG_ID`),
  KEY `FK_DEMANDCATEGORY_COVER_ID` (`COVER_ID`),
  KEY `FK_DEMANDCATEGORY_PARTICIPANTFAKTOR_ID` (`PARTICIPANTFAKTOR_ID`),
  KEY `FK_DEMANDCATEGORY_LAYOUT_ID` (`LAYOUT_ID`),
  KEY `FK_DEMANDCATEGORY_DRUCKSEITEN_ID` (`DRUCKSEITEN_ID`),
  KEY `FK_DEMANDCATEGORY_MITGLIEDERKORREKTURFAKTOR_ID` (`MITGLIEDERKORREKTURFAKTOR_ID`),
  KEY `FK_DEMANDCATEGORY_USER_LOGIN` (`USER_LOGIN`),
  KEY `FK_DEMANDCATEGORY_BAUKASTEN_ID` (`BAUKASTEN_ID`),
  KEY `FK_DEMANDCATEGORY_KATALOGART_ID` (`KATALOGART_ID`),
  KEY `FK_DEMANDCATEGORY_FORMATAUSWAEHLEN_ID` (`FORMATAUSWAEHLEN_ID`),
  KEY `FK_DEMANDCATEGORY_SCHLUESSEL_ID` (`SCHLUESSEL_ID`),
  KEY `FK_DEMANDCATEGORY_ARTDERWEITERVERARBEITUNG_ID` (`ARTDERWEITERVERARBEITUNG_ID`),
  KEY `FK_DEMANDCATEGORY_AUFLAGE_ID` (`AUFLAGE_ID`),
  KEY `FK_DEMANDCATEGORY_UMSCHLAGPAPIERAUSWAEHLEN_ID` (`UMSCHLAGPAPIERAUSWAEHLEN_ID`),
  KEY `FK_DEMANDCATEGORY_BINDUNG_ID` (`BINDUNG_ID`),
  KEY `FK_DEMANDCATEGORY_PAPIERMATERIALAUSWAEHLEN_ID` (`PAPIERMATERIALAUSWAEHLEN_ID`),
  KEY `FK_DEMANDCATEGORY_UMSCHLAGFARBIGKEIT_ID` (`UMSCHLAGFARBIGKEIT_ID`),
  KEY `FK_DEMANDCATEGORY_WECHSELFASSUNGVARIANTFAKTOR_ID` (`WECHSELFASSUNGVARIANTFAKTOR_ID`),
  KEY `FK_DEMANDCATEGORY_AUSGABE_ID` (`AUSGABE_ID`),
  KEY `FK_DEMANDCATEGORY_FARBIGKEIT_ID` (`FARBIGKEIT_ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_ARTDERWEITERVERARBEITUNG_ID` FOREIGN KEY (`ARTDERWEITERVERARBEITUNG_ID`) REFERENCES `artderweiterverarbeitung` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_AUFLAGE_ID` FOREIGN KEY (`AUFLAGE_ID`) REFERENCES `auflage` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_AUSGABE_ID` FOREIGN KEY (`AUSGABE_ID`) REFERENCES `ausgabe` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_BAUKASTEN_ID` FOREIGN KEY (`BAUKASTEN_ID`) REFERENCES `baukasten` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_BINDUNG_ID` FOREIGN KEY (`BINDUNG_ID`) REFERENCES `bindung` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_CATEGORY_ID` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_CORRECTIONSCHLUESSEL_ID` FOREIGN KEY (`CORRECTIONSCHLUESSEL_ID`) REFERENCES `correctionschluessel` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_COVER_ID` FOREIGN KEY (`COVER_ID`) REFERENCES `cover` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_DEPARTMENT_ID` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `departement` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_DRUCKSEITEN_ID` FOREIGN KEY (`DRUCKSEITEN_ID`) REFERENCES `seiten` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_FARBIGKEIT_ID` FOREIGN KEY (`FARBIGKEIT_ID`) REFERENCES `farbigkeit` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_FORMATAUSWAEHLEN_ID` FOREIGN KEY (`FORMATAUSWAEHLEN_ID`) REFERENCES `formatauswaehlen` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_KATALOGART_ID` FOREIGN KEY (`KATALOGART_ID`) REFERENCES `katalogart` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_KONZEPTBEARBEITUNGFAKTOR_ID` FOREIGN KEY (`KONZEPTBEARBEITUNGFAKTOR_ID`) REFERENCES `konzeptbearbeitungfaktor` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_LAYOUT_ID` FOREIGN KEY (`LAYOUT_ID`) REFERENCES `layout` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_MITGLIEDERKORREKTURFAKTOR_ID` FOREIGN KEY (`MITGLIEDERKORREKTURFAKTOR_ID`) REFERENCES `mitgliederkorrekturfaktor` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_PAPIERMATERIALAUSWAEHLEN_ID` FOREIGN KEY (`PAPIERMATERIALAUSWAEHLEN_ID`) REFERENCES `papiermaterialauswaehlen` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_PARTICIPANTFAKTOR_ID` FOREIGN KEY (`PARTICIPANTFAKTOR_ID`) REFERENCES `participantfaktor` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_PRODUCT_ID` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_PROZESS_ID` FOREIGN KEY (`PROZESS_ID`) REFERENCES `prozess` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_REGISTER_ID` FOREIGN KEY (`REGISTER_ID`) REFERENCES `register` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_SCHLUESSEL_ID` FOREIGN KEY (`SCHLUESSEL_ID`) REFERENCES `schluessel` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_UMSCHLAGFARBIGKEIT_ID` FOREIGN KEY (`UMSCHLAGFARBIGKEIT_ID`) REFERENCES `umschlagfarbigkeit` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_UMSCHLAGPAPIERAUSWAEHLEN_ID` FOREIGN KEY (`UMSCHLAGPAPIERAUSWAEHLEN_ID`) REFERENCES `umschlagpapierauswaehlen` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_USER_LOGIN` FOREIGN KEY (`USER_LOGIN`) REFERENCES `user` (`LOGIN`),
  CONSTRAINT `FK_DEMANDCATEGORY_VEREDLUNG_ID` FOREIGN KEY (`VEREDLUNG_ID`) REFERENCES `veredlung` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORY_WECHSELFASSUNGVARIANTFAKTOR_ID` FOREIGN KEY (`WECHSELFASSUNGVARIANTFAKTOR_ID`) REFERENCES `wechselfassungvariantfaktor` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandcategory`
--

LOCK TABLES `demandcategory` WRITE;
/*!40000 ALTER TABLE `demandcategory` DISABLE KEYS */;
INSERT INTO `demandcategory` VALUES (34,-1,0,5,2,0,6,1,0,4,15,13,14,20,7,1,0,9,15.80,3,'2017-07-24','2017-07-24',1,1.10,'2017-07-24',1.05,1,10,4.70,17,0.00,2338.19,10026.74,16,1.00,0,0,NULL,NULL,NULL,7,NULL,'Fadenheftung',2,102,NULL,NULL,NULL,'1/1 -farbig',NULL,1,1,3,2,'65 g/qm',NULL,1,5,NULL,NULL,NULL,'walo',NULL,1),(35,50,11,5,0,990,100,21,0,4,9,13,14,0,50,10,110,9,15.80,0,'2017-07-26','2017-07-26',0,1.10,'2017-07-26',1.05,1,10,4.70,17,0.00,2744.19,23802.70,35,1.20,1100,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,2,5,NULL,NULL,NULL,'admin',NULL,1),(39,3900,488,5,0,1710,4000,500,0,4,15,13,14,0,100,12,190,9,26.90,0,'2017-07-26','2017-07-26',0,1.00,'2017-07-26',1.00,1,10,8.00,17,0.00,3192.19,43803.08,16,1.00,1900,0,NULL,NULL,NULL,8,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,3,1,2,2,NULL,NULL,1,6,NULL,NULL,NULL,'admin',NULL,1),(41,910,190,5,0,900,1000,208,0,4,15,13,14,0,90,18,100,9,16.10,0,'2017-07-26','2017-07-26',0,1.00,'2017-07-26',1.00,1,10,4.80,17,0.00,2688.19,26290.59,37,1.35,1000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,1,2,NULL,NULL,2,5,NULL,NULL,NULL,'admin',NULL,1),(42,1100,550,5,0,926,1900,950,0,4,9,16,14,0,800,400,102,9,5.70,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,2.00,17,0.00,2733.41,45859.84,16,1.00,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,5,5,NULL,NULL,NULL,'admin',NULL,1),(43,910,505,5,0,900,1000,555,0,4,15,13,14,0,90,50,100,9,6.10,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,1.80,17,0.00,2717.66,31873.54,16,1.00,1000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,7,5,NULL,NULL,NULL,'admin',NULL,1),(44,400,222,5,0,926,1200,666,0,4,9,13,14,0,800,444,102,9,6.10,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,1.80,17,0.00,2733.41,42904.63,16,1.00,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,7,5,NULL,NULL,NULL,'admin',NULL,1),(45,100,40,5,0,9000,1000,400,0,4,15,13,14,0,900,360,1000,9,8.40,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,2.50,17,0.00,7780.16,162942.36,16,1.00,10000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,6,5,NULL,NULL,NULL,'admin',NULL,1),(48,1090,681,5,0,1710,1980,1237,0,4,15,30,20,0,890,556,190,9,5.38,0,'2017-07-27','2017-07-27',0,1.15,'2017-07-27',1.08,1,10,1.60,17,0.00,3223.91,67193.04,38,1.35,1900,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(49,1800,225,8,0,1800,1890,236,0,9,4,33,23,0,90,11,200,9,26.90,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,8.00,17,0.00,3276.78,40156.35,23,1.20,2000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,1,1,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(50,2181,272,5,0,1800,2990,373,0,4,9,20,12,0,809,101,200,9,26.90,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,8.00,17,0.00,3276.78,44485.01,45,1.35,2000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,1,2,2,NULL,NULL,3,5,NULL,NULL,NULL,'admin',NULL,1),(51,729,202,5,0,1800,809,224,0,4,9,20,2,0,80,22,200,9,12.10,0,'2017-07-27','2017-07-27',0,1.10,'2017-07-27',1.05,1,10,3.60,17,0.00,3276.78,38522.43,46,1.35,2000,0,NULL,NULL,NULL,7,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,1,1,1,2,NULL,NULL,2,5,NULL,NULL,NULL,'admin',NULL,1),(52,7309,2149,5,0,1800,8098,2381,0,4,15,13,14,0,789,232,200,9,11.43,0,'2017-07-27','2017-07-27',0,1.11,'2017-07-27',1.05,1,10,3.40,17,0.00,3276.78,74856.03,80,1.35,2000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,1,1,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(53,7300,2920,5,2,1800,8000,3200,0,4,15,13,14,20,700,280,200,9,8.40,3,'2017-07-27','2017-07-27',1,1.00,'2017-07-27',1.00,1,10,2.50,17,0.00,3487.72,86551.15,16,1.00,2000,0,NULL,NULL,3,8,NULL,'Fadenheftung',1,1,'Hardcover',NULL,NULL,'2/2 -farbig','A5',1,1,2,2,'65 g/qm',NULL,2,5,NULL,NULL,NULL,'admin',NULL,1),(57,23217,4837,5,0,4212,23451,4885,0,4,15,13,14,0,234,48,467,9,16.10,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,4.80,17,0.00,4783.72,146061.47,16,1.00,4679,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,4,1,3,2,NULL,NULL,2,6,NULL,NULL,NULL,'admin',NULL,1),(58,7000,875,5,0,8100,7890,986,0,4,34,78,21,0,890,111,900,9,26.90,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,8.00,17,0.00,7217.66,158783.43,34,1.20,9000,0,NULL,NULL,NULL,7,NULL,NULL,2,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,1,6,NULL,NULL,NULL,'admin',NULL,1),(59,801,321,5,0,1701,890,356,0,4,9,30,27,0,89,35,189,9,8.40,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,2.50,17,0.00,1788.04,37812.60,16,1.00,1890,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,1,NULL,NULL,NULL,2,NULL,2,2,NULL,NULL,1,NULL,NULL,NULL,NULL,'ana',NULL,NULL),(69,74889,46805,5,0,17018,75678,47298,0,4,9,20,2,0,789,493,1890,9,5.38,0,'2017-07-27','2017-07-27',0,1.15,'2017-07-27',1.08,1,10,1.60,17,0.00,12790.91,927782.12,44,1.35,18908,0,NULL,NULL,NULL,7,NULL,NULL,3,1,NULL,NULL,NULL,NULL,NULL,2,1,3,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(71,820,12,5,0,1710,900,360,0,4,9,18,7,0,80,32,190,9,8.40,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,2.50,17,0.00,572.43,1907.52,16,1.00,1900,0,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,2,6,NULL,NULL,NULL,'dmd',NULL,NULL),(72,1622,649,5,0,1710,1700,680,0,4,9,9,7,0,78,31,190,9,8.40,0,'2017-07-27','2017-07-27',0,1.00,'2017-07-27',1.00,1,10,2.50,17,0.00,1793.66,41618.44,16,1.00,1900,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,1,NULL,NULL,NULL,2,NULL,3,2,NULL,NULL,1,NULL,NULL,NULL,NULL,'ana',NULL,NULL),(73,1100,440,5,0,926,1900,760,0,4,9,16,14,0,800,320,102,9,8.40,0,'2017-07-28','2017-07-28',0,1.00,'2017-07-28',1.00,1,10,2.50,17,0.00,2733.41,41456.39,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,4,5,NULL,NULL,NULL,'admin',NULL,1),(76,1100,305,5,0,926,1900,527,0,4,9,16,14,0,800,222,102,9,12.10,0,'2017-07-28','2017-07-28',0,1.10,'2017-07-28',1.05,1,10,3.60,17,0.00,2733.41,36059.01,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,3,5,NULL,NULL,NULL,'admin',NULL,1),(81,1100,305,5,0,926,1900,527,0,4,9,16,14,0,800,222,102,9,12.10,0,'2017-07-28','2017-07-28',0,1.10,'2017-07-28',1.05,1,10,3.60,17,0.00,2733.41,36059.01,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(93,1100,272,5,0,926,1900,470,0,4,9,16,14,0,800,198,102,9,13.58,0,'2017-07-28','2017-07-28',0,1.09,'2017-07-28',1.05,1,10,4.04,17,0.00,2730.03,33763.74,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,1,3,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(94,1100,305,5,0,926,1900,527,0,4,9,16,14,0,800,222,102,9,12.10,0,'2017-07-28','2017-07-28',0,1.10,'2017-07-28',1.05,1,10,3.60,17,0.00,2730.03,34966.65,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,1,3,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(96,1100,305,5,0,926,1900,527,0,4,9,16,14,0,800,222,102,9,12.10,0,'2017-07-28','2017-07-28',0,1.10,'2017-07-28',1.05,1,10,3.60,17,0.00,2730.03,34966.65,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,1,1,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(97,1100,176,5,0,926,1900,304,0,4,9,16,14,0,800,128,102,9,20.98,0,'2017-07-28','2017-07-28',0,1.04,'2017-07-28',1.02,1,10,6.24,17,0.00,2731.91,33820.64,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,1,1,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(98,1100,687,5,0,926,1900,1187,0,4,9,16,14,0,800,500,102,9,5.38,0,'2017-07-28','2017-07-28',0,1.15,'2017-07-28',1.08,1,10,1.60,17,0.00,2737.17,58482.79,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,1,6,NULL,NULL,NULL,'admin',NULL,1),(99,1100,137,5,0,926,1900,237,0,4,9,16,14,0,800,100,102,9,26.90,0,'2017-07-28','2017-07-28',0,1.00,'2017-07-28',1.00,1,10,8.00,17,0.00,2733.79,35974.00,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,1,1,1,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(103,1100,611,5,0,180,1900,1055,0,4,9,16,14,0,800,444,20,9,6.10,0,'2017-07-28','2017-07-28',0,1.00,'2017-07-28',1.00,1,10,1.80,17,0.00,1630.47,50457.87,20,1.00,200,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,4,5,NULL,NULL,NULL,'admin',NULL,1),(106,1100,611,5,0,926,1900,1055,0,4,9,16,14,0,800,444,102,9,6.10,0,'2017-07-28','2017-07-28',0,1.00,'2017-07-28',1.00,1,10,1.80,17,0.00,2096.22,61958.04,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(107,1100,611,10,0,160,1900,1055,0,10,9,16,14,0,800,444,20,9,6.10,0,'2017-07-28','2017-07-28',0,1.00,'2017-07-28',1.00,1,10,1.80,17,0.00,1630.47,50457.87,20,1.00,200,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,2,5,NULL,NULL,NULL,'admin',NULL,1),(131,1100,305,10,0,906,1900,527,0,10,9,16,14,0,800,222,102,9,12.10,0,'2017-07-30','2017-07-30',0,1.10,'2017-07-30',1.05,1,10,3.60,17,0.00,2134.02,49729.01,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,3,2,NULL,NULL,2,5,NULL,NULL,NULL,'admin',NULL,1),(133,1100,212,10,0,906,1900,365,0,10,9,16,14,0,800,153,102,9,17.50,0,'2017-08-01','2017-08-01',0,1.00,'2017-08-01',1.00,0,10,5.20,17,0.00,2443.19,51194.15,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,3,5,NULL,NULL,NULL,'admin',NULL,1),(134,1100,260,10,0,906,1900,449,0,10,9,16,14,0,800,189,102,9,14.76,0,'2017-08-01','2017-08-01',0,1.11,'2017-08-01',1.05,1,10,4.39,17,0.00,2443.19,53156.71,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,NULL,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(136,1100,687,10,0,2680,1900,1187,0,10,9,16,14,0,800,500,300,9,5.38,0,'2017-08-01','2017-08-01',0,1.15,'2017-08-01',1.08,0,10,1.60,17,0.00,3552.44,102980.84,35,1.20,3000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(137,1100,550,10,0,3580,1900,950,0,10,9,16,14,0,800,400,400,9,5.70,0,'2017-08-01','2017-08-01',0,1.00,'2017-08-01',1.00,1,10,2.00,17,0.00,4114.94,114072.00,35,1.20,4000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,5,5,NULL,NULL,NULL,'admin',NULL,1),(138,2200,423,10,0,2140,3000,576,0,10,9,16,14,0,800,153,240,9,17.50,0,'2017-08-02','2017-08-02',0,1.00,'2017-08-02',1.00,1,10,5.20,17,0.00,3214.94,88030.46,35,1.20,2400,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,3,5,NULL,NULL,NULL,'admin',NULL,1),(144,2200,423,10,0,1780,3000,576,0,10,9,16,14,0,800,153,200,9,17.50,0,'2017-08-02','2017-08-02',0,1.00,'2017-08-02',1.00,1,10,5.20,17,0.00,2989.94,81394.82,35,1.20,2000,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,3,5,NULL,NULL,NULL,'admin',NULL,1),(145,10,1,10,0,1861,1900,1,0,10,9,16,14,0,800,1,209,9,12.10,0,'2017-08-02','2017-08-02',0,1.10,'2017-08-02',1.05,0,10,3.60,17,0.00,515.72,8275.50,35,1.20,2090,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,4,NULL,NULL,NULL,2,1,2,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,'pm',NULL,1),(150,10,1,10,0,4390,1900,1,0,10,9,16,14,0,800,1,490,9,8.40,0,'2017-08-02','2017-08-02',0,1.00,'2017-08-02',1.00,0,10,2.50,17,0.00,515.72,15862.50,40,1.35,4900,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,4,NULL,NULL,NULL,2,1,2,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,'pm',NULL,1),(153,10,1,10,0,3091,1900,1,0,10,9,16,14,0,800,1,345,9,5.70,0,'2017-08-02','2017-08-02',0,1.00,'2017-08-02',1.00,1,10,2.00,17,0.00,515.72,11963.70,45,1.35,3456,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,4,NULL,NULL,NULL,2,1,3,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'pm',NULL,1),(155,10,1,10,0,3091,1900,1,0,10,9,16,14,0,800,1,345,9,26.90,0,'2017-08-03','2017-08-03',0,1.00,'2017-08-03',1.00,1,10,8.00,17,0.00,515.72,11963.70,45,1.35,3456,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,4,NULL,NULL,NULL,2,1,2,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,'pm',NULL,1),(157,1100,611,10,0,3091,1900,1055,0,10,9,16,14,0,800,444,345,9,6.10,0,'2017-08-03','2017-08-03',0,1.00,'2017-08-03',1.00,1,10,1.80,17,0.00,3808.94,107475.72,40,1.35,3456,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,7,5,NULL,NULL,NULL,'admin',NULL,1),(159,10,1,10,0,3040,1900,1,0,10,9,16,14,0,800,1,340,9,5.38,0,'2017-08-03','2017-08-03',0,1.15,'2017-08-03',1.08,1,10,1.60,17,0.00,4551.90,21107.50,35,1.20,3400,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,3,NULL,NULL,NULL,2,NULL,2,NULL,NULL,NULL,1,5,NULL,NULL,NULL,'mtietgen',NULL,NULL),(160,10,1,10,0,4091,1900,1,0,10,9,16,14,0,800,1,456,9,5.70,0,'2017-08-03','2017-08-03',0,1.00,'2017-08-03',1.00,1,10,2.00,17,0.00,4764.50,272115.00,35,1.20,4567,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,3,NULL,NULL,NULL,2,NULL,2,NULL,NULL,NULL,5,5,NULL,NULL,NULL,'mtietgen',NULL,NULL),(161,10,1,10,0,1780,1900,1,0,10,9,16,14,0,800,1,200,9,17.50,0,'2017-08-03','2017-08-03',0,1.00,'2017-08-03',1.00,1,10,5.20,17,0.00,4764.50,127547.50,35,1.20,2000,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,3,NULL,NULL,NULL,2,NULL,2,NULL,NULL,NULL,3,5,NULL,NULL,NULL,'mtietgen',NULL,NULL),(162,10,1,10,0,2050,1900,1,0,10,9,16,14,0,800,1,230,9,5.38,0,'2017-08-03','2017-08-03',0,1.15,'2017-08-03',1.08,1,10,1.60,17,0.00,4764.50,144452.50,35,1.20,2300,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,3,NULL,NULL,NULL,2,NULL,2,NULL,NULL,NULL,1,5,NULL,NULL,NULL,'mtietgen',NULL,NULL),(163,10,1,10,0,2091,1900,1,0,10,9,16,14,0,800,1,234,9,26.90,0,'2017-08-03','2017-08-03',0,1.00,'2017-08-03',1.00,1,10,8.00,17,0.00,4764.50,146929.00,35,1.20,2345,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,3,NULL,NULL,NULL,2,NULL,2,NULL,NULL,NULL,3,5,NULL,NULL,NULL,'mtietgen',NULL,NULL),(164,10,1,10,0,2091,1900,1,0,10,9,16,14,0,800,1,234,9,5.38,0,'2017-08-03','2017-08-03',0,1.15,'2017-08-03',1.08,1,10,1.60,17,0.00,4764.50,146929.00,35,1.20,2345,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,3,NULL,NULL,NULL,2,NULL,2,NULL,NULL,NULL,1,5,NULL,NULL,NULL,'mtietgen',NULL,NULL),(165,1100,687,10,0,2901,1900,1187,0,10,9,16,14,0,800,456,324,9,5.38,0,'2017-08-04','2017-08-04',0,1.15,'2017-08-04',1.08,1,10,1.60,17,0.00,8568.75,438907.86,35,1.20,3245,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,2,5,NULL,NULL,NULL,'admin',NULL,1),(166,1100,687,10,0,2091,1900,1187,0,10,9,16,14,0,800,500,234,9,5.38,0,'2017-08-04','2017-08-04',0,1.15,'2017-08-04',1.08,1,10,1.60,17,0.00,8017.94,373961.03,45,1.35,2345,0,NULL,NULL,NULL,8,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1),(167,511,99,10,0,6091,567,109,0,10,9,16,14,0,56,10,678,9,17.50,0,'2017-08-04','2017-08-04',0,1.00,'2017-08-04',1.00,1,10,5.20,17,0.00,10562.25,540111.36,35,1.20,6789,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,3,5,NULL,NULL,NULL,'admin',NULL,1),(169,2600,500,10,0,4,3400,653,0,10,9,16,14,0,800,153,3,9,17.50,0,'2017-08-04','2017-08-04',0,1.00,'2017-08-04',1.00,2,10,5.20,17,0.00,692.00,211126.00,35,1.20,1028,0,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,5,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,'tenzmann',NULL,NULL),(170,10,1,10,0,4,1900,1,0,10,9,16,14,0,800,1,3,9,8.40,0,'2017-08-04','2017-08-04',0,1.00,'2017-08-04',1.00,1,10,2.50,17,0.00,5000.00,5000.00,35,1.20,1028,0,NULL,NULL,NULL,7,NULL,NULL,1,NULL,NULL,6,NULL,NULL,NULL,2,NULL,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,'mediait',NULL,NULL),(171,1778,234,10,0,3091,2345,308,0,10,9,16,14,0,567,74,345,9,10.00,0,'2017-08-04','2017-08-04',0,1.05,'2017-08-04',1.03,1,10,7.60,17,0.00,14265.44,410361.85,35,1.20,3456,0,NULL,NULL,NULL,7,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,1,2,2,NULL,NULL,1,5,NULL,NULL,NULL,'admin',NULL,1);
/*!40000 ALTER TABLE `demandcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandcategorycalculation`
--

DROP TABLE IF EXISTS `demandcategorycalculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demandcategorycalculation` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SUMME` decimal(10,2) DEFAULT NULL,
  `SUMMEGLOBAL` decimal(10,2) DEFAULT NULL,
  `VALIDE` tinyint(1) DEFAULT '0',
  `DEMANDCATEGORYDEPARTEMENTCALCULATION_ID` bigint(20) DEFAULT NULL,
  `DEPARTEMENTCRITERIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DMNDCTGRYCLCULATIONDMNDCTGRYDPRTEMENTCALCULATIONID` (`DEMANDCATEGORYDEPARTEMENTCALCULATION_ID`),
  KEY `DEMANDCATEGORYCALCULATION_DEPARTEMENTCRITERIA_ID` (`DEPARTEMENTCRITERIA_ID`),
  CONSTRAINT `DEMANDCATEGORYCALCULATION_DEPARTEMENTCRITERIA_ID` FOREIGN KEY (`DEPARTEMENTCRITERIA_ID`) REFERENCES `departementcriteria` (`ID`),
  CONSTRAINT `DMNDCTGRYCLCULATIONDMNDCTGRYDPRTEMENTCALCULATIONID` FOREIGN KEY (`DEMANDCATEGORYDEPARTEMENTCALCULATION_ID`) REFERENCES `demandcategorydepartementcalculation` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandcategorycalculation`
--

LOCK TABLES `demandcategorycalculation` WRITE;
/*!40000 ALTER TABLE `demandcategorycalculation` DISABLE KEYS */;
INSERT INTO `demandcategorycalculation` VALUES (1,225.00,1406.25,0,1,1),(2,653.07,8834.07,0,1,2),(3,56.53,1434.38,0,1,3),(4,25.00,10760.39,0,1,4),(5,59.08,32807.81,0,1,5),(6,142.51,4828.13,0,1,6),(7,115.74,4271.08,0,1,7),(8,45.00,427.50,0,1,8),(9,56.25,562.50,0,2,9),(10,28.64,654.61,0,2,10),(11,149.63,987.75,0,2,11),(12,0.28,534.38,0,2,12),(13,30.00,25800.00,0,2,13),(14,0.06,106.88,0,2,14),(15,0.00,0.00,0,3,15),(16,0.00,0.00,0,3,16),(17,0.00,0.00,0,3,17),(18,0.00,0.00,0,3,18),(19,0.00,0.00,0,3,19),(20,0.00,0.00,0,3,20),(21,784.72,7920.79,0,4,28),(22,0.00,0.00,0,5,21),(23,0.00,0.00,0,5,22),(24,0.00,0.00,0,5,23),(25,0.00,0.00,0,6,24),(26,0.00,0.00,0,6,25),(27,801.57,768.39,0,7,27),(28,225.00,1406.25,0,8,1),(29,653.07,9799.32,0,8,2),(30,56.53,1434.38,0,8,3),(31,25.00,11725.64,0,8,4),(32,60.35,34893.01,0,8,5),(33,142.51,4828.13,0,8,6),(34,115.74,4294.70,0,8,7),(35,45.00,427.50,0,8,8),(36,56.25,562.50,0,9,9),(37,28.64,663.05,0,9,10),(38,149.63,987.75,0,9,11),(39,0.28,534.38,0,9,12),(40,32.52,27816.00,0,9,13),(41,0.06,106.88,0,9,14),(42,0.00,0.00,0,10,15),(43,0.00,0.00,0,10,16),(44,0.00,0.00,0,10,17),(45,0.00,0.00,0,10,18),(46,0.00,0.00,0,10,19),(47,0.00,0.00,0,10,20),(48,632.84,7313.29,0,11,28),(49,0.00,0.00,0,12,21),(50,0.00,0.00,0,12,22),(51,0.00,0.00,0,12,23),(52,0.00,0.00,0,13,24),(53,0.00,0.00,0,13,25),(54,379.69,421.88,0,14,27),(82,225.00,1406.25,0,22,1),(83,1762.32,27088.31,0,22,2),(84,56.53,1434.38,0,22,3),(85,25.00,32817.77,0,22,4),(86,44.07,3956.25,0,22,5),(87,142.51,4828.13,0,22,6),(88,115.74,10340.42,0,22,7),(89,45.00,427.50,0,22,8),(90,56.25,562.50,0,23,9),(91,28.64,735.94,0,23,10),(92,149.63,987.75,0,23,11),(93,0.28,534.38,0,23,12),(94,6.00,6600.00,0,23,13),(95,0.06,106.88,0,23,14),(96,0.00,0.00,0,24,15),(97,0.00,0.00,0,24,16),(98,0.00,0.00,0,24,17),(99,0.00,0.00,0,24,18),(100,0.00,0.00,0,24,19),(101,0.00,0.00,0,24,20),(102,515.72,10732.50,0,25,28),(103,0.00,0.00,0,26,21),(104,0.00,0.00,0,26,22),(105,0.00,0.00,0,26,23),(106,0.00,0.00,0,27,24),(107,0.00,0.00,0,27,25),(108,379.69,421.88,0,28,27),(109,225.00,1406.25,0,29,1),(110,2324.82,28884.38,0,29,2),(111,56.53,1434.38,0,29,3),(112,25.00,36542.42,0,29,4),(113,44.07,3956.25,0,29,5),(114,142.51,4828.13,0,29,6),(115,115.74,13234.30,0,29,7),(116,45.00,427.50,0,29,8),(117,56.25,562.50,0,30,9),(118,28.64,712.50,0,30,10),(119,149.63,987.75,0,30,11),(120,0.28,534.38,0,30,12),(121,6.00,6600.00,0,30,13),(122,0.06,106.88,0,30,14),(123,0.00,0.00,0,31,15),(124,0.00,0.00,0,31,16),(125,0.00,0.00,0,31,17),(126,0.00,0.00,0,31,18),(127,0.00,0.00,0,31,19),(128,0.00,0.00,0,31,20),(129,515.72,13432.50,0,32,28),(130,0.00,0.00,0,33,21),(131,0.00,0.00,0,33,22),(132,0.00,0.00,0,33,23),(133,0.00,0.00,0,34,24),(134,0.00,0.00,0,34,25),(135,379.69,421.88,0,35,27),(136,225.00,1406.25,0,36,1),(137,1424.82,16313.63,0,36,2),(138,56.53,1743.75,0,36,3),(139,25.00,20885.95,0,36,4),(140,59.08,51370.31,0,36,5),(141,142.51,6890.63,0,36,6),(142,115.74,8392.26,0,36,7),(143,45.00,427.50,0,36,8),(144,56.25,562.50,0,37,9),(145,28.64,654.61,0,37,10),(146,93.38,762.75,0,37,11),(147,0.28,843.75,0,37,12),(148,30.00,32400.00,0,37,13),(149,0.06,168.75,0,37,14),(150,0.00,0.00,0,38,15),(151,0.00,0.00,0,38,16),(152,0.00,0.00,0,38,17),(153,0.00,0.00,0,38,18),(154,0.00,0.00,0,38,19),(155,0.00,0.00,0,38,20),(156,784.72,11625.19,0,39,28),(157,0.00,0.00,0,40,21),(158,0.00,0.00,0,40,22),(159,0.00,0.00,0,40,23),(160,0.00,0.00,0,41,24),(161,0.00,0.00,0,41,25),(162,801.57,768.39,0,42,27),(194,225.00,1406.25,0,54,1),(195,1199.82,14513.63,0,54,2),(196,56.53,1743.75,0,54,3),(197,25.00,18314.52,0,54,4),(198,59.08,51356.25,0,54,5),(199,142.51,6890.63,0,54,6),(200,115.74,7208.05,0,54,7),(201,45.00,427.50,0,54,8),(202,56.25,562.50,0,55,9),(203,28.64,654.61,0,55,10),(204,149.63,987.75,0,55,11),(205,0.28,843.75,0,55,12),(206,30.00,32400.00,0,55,13),(207,0.06,168.75,0,55,14),(208,0.00,0.00,0,56,15),(209,0.00,0.00,0,56,16),(210,0.00,0.00,0,56,17),(211,0.00,0.00,0,56,18),(212,0.00,0.00,0,56,19),(213,0.00,0.00,0,56,20),(214,784.72,10545.19,0,57,28),(215,0.00,0.00,0,58,21),(216,0.00,0.00,0,58,22),(217,0.00,0.00,0,58,23),(218,0.00,0.00,0,59,24),(219,0.00,0.00,0,59,25),(220,379.69,509.26,0,60,27),(221,759.40,10686.94,0,61,28),(226,647.47,18284.91,0,66,28),(229,638.65,4979.27,0,69,28),(231,461.84,13911.42,0,71,28),(259,168.75,1068.75,0,79,1),(260,0.00,0.00,0,79,2),(261,0.00,0.00,0,79,3),(262,0.00,0.00,0,79,4),(263,0.00,0.00,0,79,5),(264,0.00,0.00,0,79,6),(265,0.00,0.00,0,79,7),(266,45.00,427.50,0,79,8),(267,56.25,562.50,0,80,9),(268,28.64,722.81,0,80,10),(269,56.25,225.00,0,80,11),(270,0.28,534.38,0,80,12),(271,30.00,25800.00,0,80,13),(272,0.06,106.88,0,80,14),(273,0.00,0.00,0,81,15),(274,0.00,0.00,0,81,16),(275,0.00,0.00,0,81,17),(276,0.00,0.00,0,81,18),(277,0.00,0.00,0,81,19),(278,0.00,0.00,0,81,20),(279,647.47,14386.11,0,82,28),(280,0.00,0.00,0,83,21),(281,0.00,0.00,0,83,22),(282,0.00,0.00,0,83,23),(283,0.00,0.00,0,84,24),(284,0.00,0.00,0,84,25),(285,379.69,421.88,0,85,27),(292,3661.90,19797.50,0,87,15),(293,0.00,0.00,0,87,16),(294,0.00,0.00,0,87,17),(295,0.00,0.00,0,87,18),(296,0.00,0.00,0,87,19),(297,0.00,0.00,0,87,20),(298,4551.90,23324.80,0,88,15),(299,121.00,59267.00,0,88,16),(300,2.50,11417.50,0,88,17),(301,2.50,11417.50,0,88,18),(302,86.60,166688.20,0,88,19),(303,0.00,0.00,0,88,20),(304,4551.90,18447.50,0,89,15),(305,121.00,25980.00,0,89,16),(306,2.50,5000.00,0,89,17),(307,2.50,5000.00,0,89,18),(308,86.60,73120.00,0,89,19),(309,0.00,0.00,0,89,20),(310,4551.90,19017.50,0,90,15),(311,121.00,29880.00,0,90,16),(312,2.50,5750.00,0,90,17),(313,2.50,5750.00,0,90,18),(314,86.60,84055.00,0,90,19),(315,0.00,0.00,0,90,20),(316,4551.90,19103.00,0,91,15),(317,121.00,30405.00,0,91,16),(318,2.50,5862.50,0,91,17),(319,2.50,5862.50,0,91,18),(320,86.60,85696.00,0,91,19),(321,0.00,0.00,0,91,20),(322,4551.90,19103.00,0,92,15),(323,121.00,30405.00,0,92,16),(324,2.50,5862.50,0,92,17),(325,2.50,5862.50,0,92,18),(326,86.60,85696.00,0,92,19),(327,0.00,0.00,0,92,20),(328,225.00,1406.25,0,93,1),(329,1900.13,27646.31,0,93,2),(330,56.53,1434.38,0,93,3),(331,25.00,33848.27,0,93,4),(332,44.07,3956.25,0,93,5),(333,142.51,4828.13,0,93,6),(334,115.74,11065.75,0,93,7),(335,45.00,427.50,0,93,8),(336,56.25,562.50,0,94,9),(337,28.64,725.63,0,94,10),(338,149.63,987.75,0,94,11),(339,0.28,534.38,0,94,12),(340,6.00,6600.00,0,94,13),(341,0.06,106.88,0,94,14),(342,4551.90,20813.00,0,95,15),(343,121.00,42105.00,0,95,16),(344,2.50,8112.50,0,95,17),(345,2.50,8112.50,0,95,18),(346,86.60,118501.00,0,95,19),(347,0.00,0.00,0,95,20),(348,515.72,11394.00,0,96,28),(349,114.00,135318.00,0,97,21),(350,0.00,0.00,0,97,22),(351,0.00,0.00,0,97,23),(352,0.00,0.00,0,98,24),(353,0.00,0.00,0,98,25),(354,379.69,421.88,0,99,27),(355,225.00,1406.25,0,100,1),(356,1393.88,24140.81,0,100,2),(357,56.53,1434.38,0,100,3),(358,25.00,28607.06,0,100,4),(359,44.07,3956.25,0,100,5),(360,142.51,4828.13,0,100,6),(361,115.74,8401.27,0,100,7),(362,45.00,427.50,0,100,8),(363,56.25,562.50,0,101,9),(364,28.64,735.94,0,101,10),(365,149.63,987.75,0,101,11),(366,0.28,534.38,0,101,12),(367,6.00,6600.00,0,101,13),(368,0.06,106.88,0,101,14),(369,4551.90,19103.00,0,102,15),(370,121.00,30405.00,0,102,16),(371,2.50,5862.50,0,102,17),(372,2.50,5862.50,0,102,18),(373,86.60,85696.00,0,102,19),(374,0.00,0.00,0,102,20),(375,471.16,8563.05,0,103,28),(376,114.00,135318.00,0,104,21),(377,0.00,0.00,0,104,22),(378,0.00,0.00,0,104,23),(379,0.00,0.00,0,105,24),(380,0.00,0.00,0,105,25),(381,379.69,421.88,0,106,27),(382,225.00,1406.25,0,107,1),(383,0.00,0.00,0,107,2),(384,56.53,1059.47,0,107,3),(385,0.00,0.00,0,107,4),(386,0.00,0.00,0,107,5),(387,142.51,2328.76,0,107,6),(388,115.74,21254.67,0,107,7),(389,45.00,427.50,0,107,8),(390,56.25,562.50,0,108,9),(391,28.64,411.84,0,108,10),(392,149.63,987.75,0,108,11),(393,0.28,159.47,0,108,12),(394,30.00,4410.00,0,108,13),(395,0.06,31.89,0,108,14),(396,4551.90,27546.60,0,109,15),(397,121.00,88129.00,0,109,16),(398,2.50,16972.50,0,109,17),(399,2.50,16972.50,0,109,18),(400,86.60,247680.40,0,109,19),(401,0.00,0.00,0,109,20),(402,562.64,4233.94,0,110,28),(403,114.00,12426.00,0,111,21),(404,0.00,0.00,0,111,22),(405,0.00,0.00,0,111,23),(406,0.00,0.00,0,112,24),(407,0.00,0.00,0,112,25),(408,590.63,553.45,0,113,27),(409,114.00,1140.00,0,114,21),(410,350.00,2800.00,0,114,22),(411,0.00,0.00,0,114,23),(412,198.00,1980.00,0,114,29),(413,12.00,60.00,0,114,31),(414,0.00,0.00,0,115,24),(415,5000.00,5000.00,0,115,25),(416,225.00,1406.25,0,116,1),(417,2018.82,18429.75,0,116,2),(418,56.53,1559.53,0,116,3),(419,25.00,25038.64,0,116,4),(420,44.07,4790.63,0,116,5),(421,142.51,5662.51,0,116,6),(422,115.74,11443.21,0,116,7),(423,45.00,427.50,0,116,8),(424,56.25,562.50,0,117,9),(425,28.64,570.56,0,117,10),(426,149.63,987.75,0,117,11),(427,0.28,659.53,0,117,12),(428,6.00,10668.00,0,117,13),(429,0.06,131.91,0,117,14),(430,4551.90,21213.90,0,118,15),(431,121.00,44836.00,0,118,16),(432,2.50,8640.00,0,118,17),(433,2.50,8640.00,0,118,18),(434,86.60,126192.10,0,118,19),(435,0.00,0.00,0,118,20),(436,515.72,11963.70,0,119,28),(437,114.00,35112.00,0,120,21),(438,350.00,2800.00,0,120,22),(439,0.00,0.00,0,120,23),(440,198.00,60984.00,0,120,29),(441,30.00,2220.00,0,120,31),(442,0.00,0.00,0,121,24),(443,5000.00,5000.00,0,121,25),(444,379.69,421.88,0,122,27);
/*!40000 ALTER TABLE `demandcategorycalculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandcategorycalculationitem`
--

DROP TABLE IF EXISTS `demandcategorycalculationitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demandcategorycalculationitem` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CALCULTAED` tinyint(1) DEFAULT '0',
  `PRICE` decimal(10,2) DEFAULT NULL,
  `PRICEGLOBAL` decimal(10,2) DEFAULT NULL,
  `PRICEGLOBALUPDATE` decimal(10,2) DEFAULT NULL,
  `PRICEUPDATE` decimal(10,2) DEFAULT NULL,
  `DEMANDCATEGORYCALCULATION_ID` bigint(20) DEFAULT NULL,
  `DEPARTEMENTCRITERIAITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DMNDCATEGORYCALCULATIONITEMDPRTEMENTCRITERIAITEMID` (`DEPARTEMENTCRITERIAITEM_ID`),
  KEY `DMNDCTEGORYCALCULATIONITEMDMNDCTEGORYCALCULATIONID` (`DEMANDCATEGORYCALCULATION_ID`),
  CONSTRAINT `DMNDCATEGORYCALCULATIONITEMDPRTEMENTCRITERIAITEMID` FOREIGN KEY (`DEPARTEMENTCRITERIAITEM_ID`) REFERENCES `departementcriteriaitem` (`ID`),
  CONSTRAINT `DMNDCTEGORYCALCULATIONITEMDMNDCTEGORYCALCULATIONID` FOREIGN KEY (`DEMANDCATEGORYCALCULATION_ID`) REFERENCES `demandcategorycalculation` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1437 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandcategorycalculationitem`
--

LOCK TABLES `demandcategorycalculationitem` WRITE;
/*!40000 ALTER TABLE `demandcategorycalculationitem` DISABLE KEYS */;
INSERT INTO `demandcategorycalculationitem` VALUES (1,1,56.25,450.00,450.00,56.25,1,1),(2,1,56.25,337.50,337.50,56.25,1,2),(3,1,56.25,168.75,168.75,56.25,1,7),(4,1,56.25,450.00,450.00,56.25,1,8),(5,1,56.25,56.25,56.25,56.25,2,3),(6,1,578.25,4626.00,4626.00,578.25,2,4),(7,1,6.19,2258.44,2258.44,6.19,2,16),(8,1,12.38,1893.38,1893.38,12.38,2,17),(9,1,0.28,534.38,534.38,0.28,3,11),(10,1,56.25,900.00,900.00,56.25,3,12),(11,1,6.43,6608.57,6608.57,6.43,4,13),(12,1,12.38,1893.38,1893.38,12.38,4,19),(13,1,6.19,2258.44,2258.44,6.19,4,20),(14,1,28.13,393.75,393.75,28.13,5,14),(15,1,14.06,351.56,351.56,14.06,5,15),(16,1,5.63,10687.50,10687.50,5.63,5,21),(17,1,1.88,3562.50,3562.50,1.88,5,22),(18,1,5.63,10687.50,10687.50,5.63,5,23),(19,1,3.75,7125.00,7125.00,3.75,5,24),(20,1,1.88,3562.50,3562.50,1.88,6,25),(21,1,140.63,1265.63,1265.63,140.63,6,26),(22,1,0.28,102.66,102.66,0.28,7,27),(23,1,56.25,675.00,675.00,56.25,7,28),(24,1,56.25,450.00,450.00,56.25,7,29),(25,1,2.96,3043.42,3043.42,2.96,7,30),(26,1,22.50,202.50,202.50,22.50,8,31),(27,1,22.50,225.00,225.00,22.50,8,32),(28,1,56.25,562.50,562.50,56.25,9,5),(29,1,0.23,35.86,35.86,0.23,10,33),(30,1,0.28,225.00,225.00,0.28,10,34),(31,1,28.13,393.75,393.75,28.13,10,35),(32,1,56.25,225.00,225.00,56.25,11,36),(33,1,28.13,393.75,393.75,28.13,11,37),(34,1,9.00,144.00,144.00,9.00,11,38),(35,1,56.25,225.00,225.00,56.25,11,39),(36,1,0.28,534.38,534.38,0.28,12,40),(37,1,6.00,4800.00,4800.00,6.00,13,6),(38,1,18.00,14400.00,14400.00,18.00,13,65),(39,1,6.00,6600.00,6600.00,6.00,13,66),(40,1,0.06,106.88,106.88,0.06,14,41),(41,1,37.13,445.50,445.50,37.13,21,48),(42,1,37.13,222.75,222.75,37.13,21,49),(43,1,67.50,243.00,243.00,67.50,21,50),(44,1,61.88,495.00,495.00,61.88,21,51),(45,1,56.25,168.75,168.75,56.25,21,52),(46,1,61.88,247.50,247.50,61.88,21,53),(47,1,40.84,1429.31,1429.31,40.84,21,54),(48,1,151.88,607.50,607.50,151.88,21,55),(49,1,2.25,2313.00,2313.00,2.25,21,58),(50,1,0.45,462.60,462.60,0.45,21,59),(51,1,67.50,303.75,303.75,67.50,21,60),(52,1,67.50,337.50,337.50,67.50,21,61),(53,1,8.78,307.13,307.13,8.78,21,62),(54,1,56.25,168.75,168.75,56.25,21,63),(55,1,67.50,168.75,168.75,67.50,21,64),(56,1,253.13,3.00,3.00,253.13,27,42),(57,1,337.50,6.00,6.00,337.50,27,43),(58,1,84.38,253.13,253.13,84.38,27,44),(59,1,14.06,84.38,84.38,14.06,27,45),(60,1,56.25,337.50,337.50,56.25,27,46),(61,1,56.25,84.38,84.38,56.25,27,47),(62,1,56.25,450.00,450.00,56.25,28,1),(63,1,56.25,337.50,337.50,56.25,28,2),(64,1,56.25,168.75,168.75,56.25,28,7),(65,1,56.25,450.00,450.00,56.25,28,8),(66,1,56.25,56.25,56.25,56.25,29,3),(67,1,578.25,4626.00,4626.00,578.25,29,4),(68,1,6.19,2778.19,2778.19,6.19,29,16),(69,1,12.38,2338.88,2338.88,12.38,29,17),(70,1,0.28,534.38,534.38,0.28,30,11),(71,1,56.25,900.00,900.00,56.25,30,12),(72,1,6.43,6608.57,6608.57,6.43,31,13),(73,1,12.38,2338.88,2338.88,12.38,31,19),(74,1,6.19,2778.19,2778.19,6.19,31,20),(75,1,28.13,393.75,393.75,28.13,32,14),(76,1,14.06,0.00,0.00,14.06,32,15),(77,1,6.22,11809.69,11809.69,6.22,32,21),(78,1,1.88,3562.50,3562.50,1.88,32,22),(79,1,5.92,11253.94,11253.94,5.92,32,23),(80,1,4.14,7873.13,7873.13,4.14,32,24),(81,1,1.88,3562.50,3562.50,1.88,33,25),(82,1,140.63,1265.63,1265.63,140.63,33,26),(83,1,0.28,126.28,126.28,0.28,34,27),(84,1,56.25,675.00,675.00,56.25,34,28),(85,1,56.25,450.00,450.00,56.25,34,29),(86,1,2.96,3043.42,3043.42,2.96,34,30),(87,1,22.50,202.50,202.50,22.50,35,31),(88,1,22.50,225.00,225.00,22.50,35,32),(89,1,56.25,562.50,562.50,56.25,36,5),(90,1,0.23,44.30,44.30,0.23,37,33),(91,1,0.28,225.00,225.00,0.28,37,34),(92,1,28.13,393.75,393.75,28.13,37,35),(93,1,56.25,225.00,225.00,56.25,38,36),(94,1,28.13,393.75,393.75,28.13,38,37),(95,1,9.00,144.00,144.00,9.00,38,38),(96,1,56.25,225.00,225.00,56.25,38,39),(97,1,0.28,534.38,534.38,0.28,39,40),(98,1,6.63,5304.00,5304.00,6.63,40,6),(99,1,19.89,15912.00,15912.00,19.89,40,65),(100,1,6.00,6600.00,6600.00,6.00,40,66),(101,1,0.06,106.88,106.88,0.06,41,41),(102,1,37.13,445.50,445.50,37.13,48,48),(103,1,37.13,222.75,222.75,37.13,48,49),(104,1,67.50,243.00,243.00,67.50,48,50),(105,1,61.88,495.00,495.00,61.88,48,51),(106,1,56.25,168.75,168.75,56.25,48,52),(107,1,61.88,247.50,247.50,61.88,48,53),(108,1,40.84,1429.31,1429.31,40.84,48,54),(109,1,0.00,0.00,0.00,0.00,48,55),(110,1,2.25,2313.00,2313.00,2.25,48,58),(111,1,0.45,462.60,462.60,0.45,48,59),(112,1,67.50,303.75,303.75,67.50,48,60),(113,1,67.50,337.50,337.50,67.50,48,61),(114,1,8.78,307.13,307.13,8.78,48,62),(115,1,56.25,168.75,168.75,56.25,48,63),(116,1,67.50,168.75,168.75,67.50,48,64),(117,1,253.13,0.00,0.00,253.13,54,42),(118,1,0.00,0.00,0.00,0.00,54,43),(119,1,0.00,0.00,0.00,0.00,54,44),(120,1,14.06,0.00,0.00,14.06,54,45),(121,1,56.25,337.50,337.50,56.25,54,46),(122,1,56.25,84.38,84.38,56.25,54,47),(183,1,56.25,450.00,450.00,56.25,82,1),(184,1,56.25,337.50,337.50,56.25,82,2),(185,1,56.25,168.75,168.75,56.25,82,7),(186,1,56.25,450.00,450.00,56.25,82,8),(187,1,56.25,56.25,56.25,56.25,83,3),(188,1,1687.50,13500.00,13500.00,1687.50,83,4),(189,1,6.19,7344.56,7344.56,6.19,83,16),(190,1,12.38,6187.50,6187.50,12.38,83,17),(191,1,0.28,534.38,534.38,0.28,84,11),(192,1,56.25,900.00,900.00,56.25,84,12),(193,1,6.43,19285.71,19285.71,6.43,85,13),(194,1,12.38,6187.50,6187.50,12.38,85,19),(195,1,6.19,7344.56,7344.56,6.19,85,20),(196,1,28.13,393.75,393.75,28.13,86,14),(197,1,14.06,0.00,0.00,14.06,86,15),(198,1,0.00,0.00,0.00,0.00,86,21),(199,1,1.88,3562.50,3562.50,1.88,86,22),(200,1,0.00,0.00,0.00,0.00,86,23),(201,1,0.00,0.00,0.00,0.00,86,24),(202,1,1.88,3562.50,3562.50,1.88,87,25),(203,1,140.63,1265.63,1265.63,140.63,87,26),(204,1,0.28,333.84,333.84,0.28,88,27),(205,1,56.25,675.00,675.00,56.25,88,28),(206,1,56.25,450.00,450.00,56.25,88,29),(207,1,2.96,8881.58,8881.58,2.96,88,30),(208,1,22.50,202.50,202.50,22.50,89,31),(209,1,22.50,225.00,225.00,22.50,89,32),(210,1,56.25,562.50,562.50,56.25,90,5),(211,1,0.23,117.19,117.19,0.23,91,33),(212,1,0.28,225.00,225.00,0.28,91,34),(213,1,28.13,393.75,393.75,28.13,91,35),(214,1,56.25,225.00,225.00,56.25,92,36),(215,1,28.13,393.75,393.75,28.13,92,37),(216,1,9.00,144.00,144.00,9.00,92,38),(217,1,56.25,225.00,225.00,56.25,92,39),(218,1,0.28,534.38,534.38,0.28,93,40),(219,1,0.00,0.00,0.00,0.00,94,6),(220,1,0.00,0.00,0.00,0.00,94,65),(221,1,6.00,6600.00,6600.00,6.00,94,66),(222,1,0.06,106.88,106.88,0.06,95,41),(223,1,37.13,445.50,445.50,37.13,102,48),(224,1,37.13,222.75,222.75,37.13,102,49),(225,1,67.50,243.00,243.00,67.50,102,50),(226,1,61.88,495.00,495.00,61.88,102,51),(227,1,56.25,168.75,168.75,56.25,102,52),(228,1,61.88,247.50,247.50,61.88,102,53),(229,1,0.00,0.00,0.00,0.00,102,54),(230,1,0.00,0.00,0.00,0.00,102,55),(231,1,2.25,6750.00,6750.00,2.25,102,58),(232,1,0.45,1350.00,1350.00,0.45,102,59),(233,1,67.50,303.75,303.75,67.50,102,60),(234,1,67.50,337.50,337.50,67.50,102,61),(235,1,0.00,0.00,0.00,0.00,102,62),(236,1,56.25,168.75,168.75,56.25,102,63),(237,1,0.00,0.00,0.00,0.00,102,64),(238,1,253.13,0.00,0.00,253.13,108,42),(239,1,0.00,0.00,0.00,0.00,108,43),(240,1,0.00,0.00,0.00,0.00,108,44),(241,1,14.06,0.00,0.00,14.06,108,45),(242,1,56.25,337.50,337.50,56.25,108,46),(243,1,56.25,84.38,84.38,56.25,108,47),(244,1,56.25,450.00,450.00,56.25,109,1),(245,1,56.25,337.50,337.50,56.25,109,2),(246,1,56.25,168.75,168.75,56.25,109,7),(247,1,56.25,450.00,450.00,56.25,109,8),(248,1,56.25,56.25,56.25,56.25,110,3),(249,1,2250.00,18000.00,18000.00,2250.00,110,4),(250,1,6.19,5878.13,5878.13,6.19,110,16),(251,1,12.38,4950.00,4950.00,12.38,110,17),(252,1,0.28,534.38,534.38,0.28,111,11),(253,1,56.25,900.00,900.00,56.25,111,12),(254,1,6.43,25714.29,25714.29,6.43,112,13),(255,1,12.38,4950.00,4950.00,12.38,112,19),(256,1,6.19,5878.13,5878.13,6.19,112,20),(257,1,28.13,393.75,393.75,28.13,113,14),(258,1,14.06,0.00,0.00,14.06,113,15),(259,1,0.00,0.00,0.00,0.00,113,21),(260,1,1.88,3562.50,3562.50,1.88,113,22),(261,1,0.00,0.00,0.00,0.00,113,23),(262,1,0.00,0.00,0.00,0.00,113,24),(263,1,1.88,3562.50,3562.50,1.88,114,25),(264,1,140.63,1265.63,1265.63,140.63,114,26),(265,1,0.28,267.19,267.19,0.28,115,27),(266,1,56.25,675.00,675.00,56.25,115,28),(267,1,56.25,450.00,450.00,56.25,115,29),(268,1,2.96,11842.11,11842.11,2.96,115,30),(269,1,22.50,202.50,202.50,22.50,116,31),(270,1,22.50,225.00,225.00,22.50,116,32),(271,1,56.25,562.50,562.50,56.25,117,5),(272,1,0.23,93.75,93.75,0.23,118,33),(273,1,0.28,225.00,225.00,0.28,118,34),(274,1,28.13,393.75,393.75,28.13,118,35),(275,1,56.25,225.00,225.00,56.25,119,36),(276,1,28.13,393.75,393.75,28.13,119,37),(277,1,9.00,144.00,144.00,9.00,119,38),(278,1,56.25,225.00,225.00,56.25,119,39),(279,1,0.28,534.38,534.38,0.28,120,40),(280,1,0.00,0.00,0.00,0.00,121,6),(281,1,0.00,0.00,0.00,0.00,121,65),(282,1,6.00,6600.00,6600.00,6.00,121,66),(283,1,0.06,106.88,106.88,0.06,122,41),(284,1,37.13,445.50,445.50,37.13,129,48),(285,1,37.13,222.75,222.75,37.13,129,49),(286,1,67.50,243.00,243.00,67.50,129,50),(287,1,61.88,495.00,495.00,61.88,129,51),(288,1,56.25,168.75,168.75,56.25,129,52),(289,1,61.88,247.50,247.50,61.88,129,53),(290,1,0.00,0.00,0.00,0.00,129,54),(291,1,0.00,0.00,0.00,0.00,129,55),(292,1,2.25,9000.00,9000.00,2.25,129,58),(293,1,0.45,1800.00,1800.00,0.45,129,59),(294,1,67.50,303.75,303.75,67.50,129,60),(295,1,67.50,337.50,337.50,67.50,129,61),(296,1,0.00,0.00,0.00,0.00,129,62),(297,1,56.25,168.75,168.75,56.25,129,63),(298,1,0.00,0.00,0.00,0.00,129,64),(299,1,253.13,0.00,0.00,253.13,135,42),(300,1,0.00,0.00,0.00,0.00,135,43),(301,1,0.00,0.00,0.00,0.00,135,44),(302,1,14.06,0.00,0.00,14.06,135,45),(303,1,56.25,337.50,337.50,56.25,135,46),(304,1,56.25,84.38,84.38,56.25,135,47),(305,1,56.25,450.00,450.00,56.25,136,1),(306,1,56.25,337.50,337.50,56.25,136,2),(307,1,56.25,168.75,168.75,56.25,136,7),(308,1,56.25,450.00,450.00,56.25,136,8),(309,1,56.25,56.25,56.25,56.25,137,3),(310,1,1350.00,10800.00,10800.00,1350.00,137,4),(311,1,6.19,3564.00,3564.00,6.19,137,16),(312,1,12.38,1893.38,1893.38,12.38,137,17),(313,1,0.28,843.75,843.75,0.28,138,11),(314,1,56.25,900.00,900.00,56.25,138,12),(315,1,6.43,15428.57,15428.57,6.43,139,13),(316,1,12.38,1893.38,1893.38,12.38,139,19),(317,1,6.19,3564.00,3564.00,6.19,139,20),(318,1,28.13,393.75,393.75,28.13,140,14),(319,1,14.06,351.56,351.56,14.06,140,15),(320,1,5.63,16875.00,16875.00,5.63,140,21),(321,1,1.88,5625.00,5625.00,1.88,140,22),(322,1,5.63,16875.00,16875.00,5.63,140,23),(323,1,3.75,11250.00,11250.00,3.75,140,24),(324,1,1.88,5625.00,5625.00,1.88,141,25),(325,1,140.63,1265.63,1265.63,140.63,141,26),(326,1,0.28,162.00,162.00,0.28,142,27),(327,1,56.25,675.00,675.00,56.25,142,28),(328,1,56.25,450.00,450.00,56.25,142,29),(329,1,2.96,7105.26,7105.26,2.96,142,30),(330,1,22.50,202.50,202.50,22.50,143,31),(331,1,22.50,225.00,225.00,22.50,143,32),(332,1,56.25,562.50,562.50,56.25,144,5),(333,1,0.23,35.86,35.86,0.23,145,33),(334,1,0.28,225.00,225.00,0.28,145,34),(335,1,28.13,393.75,393.75,28.13,145,35),(336,1,56.25,225.00,225.00,56.25,146,36),(337,1,28.13,393.75,393.75,28.13,146,37),(338,1,9.00,144.00,144.00,9.00,146,38),(339,0,56.25,225.00,0.00,0.00,146,39),(340,1,0.28,843.75,843.75,0.28,147,40),(341,1,6.00,4800.00,4800.00,6.00,148,6),(342,1,18.00,14400.00,14400.00,18.00,148,65),(343,1,6.00,13200.00,13200.00,6.00,148,66),(344,1,0.06,168.75,168.75,0.06,149,41),(345,1,37.13,445.50,445.50,37.13,156,48),(346,1,37.13,222.75,222.75,37.13,156,49),(347,1,67.50,243.00,243.00,67.50,156,50),(348,1,61.88,495.00,495.00,61.88,156,51),(349,1,56.25,168.75,168.75,56.25,156,52),(350,1,61.88,247.50,247.50,61.88,156,53),(351,1,40.84,1429.31,1429.31,40.84,156,54),(352,1,151.88,607.50,607.50,151.88,156,55),(353,1,2.25,5400.00,5400.00,2.25,156,58),(354,1,0.45,1080.00,1080.00,0.45,156,59),(355,1,67.50,303.75,303.75,67.50,156,60),(356,1,67.50,337.50,337.50,67.50,156,61),(357,1,8.78,307.13,307.13,8.78,156,62),(358,1,56.25,168.75,168.75,56.25,156,63),(359,1,67.50,168.75,168.75,67.50,156,64),(360,1,253.13,3.00,3.00,253.13,162,42),(361,1,337.50,6.00,6.00,337.50,162,43),(362,1,84.38,253.13,253.13,84.38,162,44),(363,1,14.06,84.38,84.38,14.06,162,45),(364,1,56.25,337.50,337.50,56.25,162,46),(365,1,56.25,84.38,84.38,56.25,162,47),(426,1,56.25,450.00,450.00,56.25,194,1),(427,1,56.25,337.50,337.50,56.25,194,2),(428,1,56.25,168.75,168.75,56.25,194,7),(429,1,56.25,450.00,450.00,56.25,194,8),(430,1,56.25,56.25,56.25,56.25,195,3),(431,1,1125.00,9000.00,9000.00,1125.00,195,4),(432,1,6.19,3564.00,3564.00,6.19,195,16),(433,1,12.38,1893.38,1893.38,12.38,195,17),(434,1,0.28,843.75,843.75,0.28,196,11),(435,1,56.25,900.00,900.00,56.25,196,12),(436,1,6.43,12857.14,12857.14,6.43,197,13),(437,1,12.38,1893.38,1893.38,12.38,197,19),(438,1,6.19,3564.00,3564.00,6.19,197,20),(439,1,28.13,393.75,393.75,28.13,198,14),(440,1,14.06,337.50,337.50,14.06,198,15),(441,1,5.63,16875.00,16875.00,5.63,198,21),(442,1,1.88,5625.00,5625.00,1.88,198,22),(443,1,5.63,16875.00,16875.00,5.63,198,23),(444,1,3.75,11250.00,11250.00,3.75,198,24),(445,1,1.88,5625.00,5625.00,1.88,199,25),(446,1,140.63,1265.63,1265.63,140.63,199,26),(447,1,0.28,162.00,162.00,0.28,200,27),(448,1,56.25,675.00,675.00,56.25,200,28),(449,1,56.25,450.00,450.00,56.25,200,29),(450,1,2.96,5921.05,5921.05,2.96,200,30),(451,1,22.50,202.50,202.50,22.50,201,31),(452,1,22.50,225.00,225.00,22.50,201,32),(453,1,56.25,562.50,562.50,56.25,202,5),(454,1,0.23,35.86,35.86,0.23,203,33),(455,1,0.28,225.00,225.00,0.28,203,34),(456,1,28.13,393.75,393.75,28.13,203,35),(457,1,56.25,225.00,225.00,56.25,204,36),(458,1,28.13,393.75,393.75,28.13,204,37),(459,1,9.00,144.00,144.00,9.00,204,38),(460,1,56.25,225.00,225.00,56.25,204,39),(461,1,0.28,843.75,843.75,0.28,205,40),(462,1,6.00,4800.00,4800.00,6.00,206,6),(463,1,18.00,14400.00,14400.00,18.00,206,65),(464,1,6.00,13200.00,13200.00,6.00,206,66),(465,1,0.06,168.75,168.75,0.06,207,41),(466,1,37.13,445.50,445.50,37.13,214,48),(467,1,37.13,222.75,222.75,37.13,214,49),(468,1,67.50,243.00,243.00,67.50,214,50),(469,1,61.88,495.00,495.00,61.88,214,51),(470,1,56.25,168.75,168.75,56.25,214,52),(471,1,61.88,247.50,247.50,61.88,214,53),(472,1,40.84,1429.31,1429.31,40.84,214,54),(473,1,151.88,607.50,607.50,151.88,214,55),(474,1,2.25,4500.00,4500.00,2.25,214,58),(475,1,0.45,900.00,900.00,0.45,214,59),(476,1,67.50,303.75,303.75,67.50,214,60),(477,1,67.50,337.50,337.50,67.50,214,61),(478,1,8.78,307.13,307.13,8.78,214,62),(479,1,56.25,168.75,168.75,56.25,214,63),(480,1,67.50,168.75,168.75,67.50,214,64),(481,1,253.13,3.00,3.00,253.13,220,42),(482,0,337.50,6.00,0.00,0.00,220,43),(483,0,84.38,253.13,0.00,0.00,220,44),(484,1,14.06,84.38,84.38,14.06,220,45),(485,1,56.25,337.50,337.50,56.25,220,46),(486,1,56.25,84.38,84.38,56.25,220,47),(487,1,37.13,445.50,445.50,37.13,221,48),(488,1,37.13,222.75,222.75,37.13,221,49),(489,1,67.50,243.00,243.00,67.50,221,50),(490,1,61.88,495.00,495.00,61.88,221,51),(491,1,56.25,168.75,168.75,56.25,221,52),(492,1,61.88,247.50,247.50,61.88,221,53),(493,1,40.84,1429.31,1429.31,40.84,221,54),(494,1,126.56,506.25,506.25,126.56,221,55),(495,1,2.25,4702.50,4702.50,2.25,221,58),(496,1,0.45,940.50,940.50,0.45,221,59),(497,1,67.50,303.75,303.75,67.50,221,60),(498,1,67.50,337.50,337.50,67.50,221,61),(499,1,8.78,307.13,307.13,8.78,221,62),(500,1,56.25,168.75,168.75,56.25,221,63),(501,1,67.50,168.75,168.75,67.50,221,64),(558,1,37.13,445.50,445.50,37.13,226,48),(559,1,37.13,222.75,222.75,37.13,226,49),(560,1,67.50,243.00,243.00,67.50,226,50),(561,1,61.88,495.00,495.00,61.88,226,51),(562,1,56.25,168.75,168.75,56.25,226,52),(563,1,61.88,247.50,247.50,61.88,226,53),(564,1,45.94,1837.69,1837.69,45.94,226,54),(565,1,0.00,0.00,0.00,0.00,226,55),(566,1,2.25,11025.00,11025.00,2.25,226,58),(567,1,0.45,2205.00,2205.00,0.45,226,59),(568,1,67.50,303.75,303.75,67.50,226,60),(569,1,67.50,337.50,337.50,67.50,226,61),(570,1,9.87,394.88,394.88,9.87,226,62),(571,1,56.25,168.75,168.75,56.25,226,63),(572,1,75.94,189.84,189.84,75.94,226,64),(601,1,37.13,445.50,445.50,37.13,229,48),(602,1,37.13,222.75,222.75,37.13,229,49),(603,1,67.50,243.00,243.00,67.50,229,50),(604,1,61.88,495.00,495.00,61.88,229,51),(605,1,56.25,168.75,168.75,56.25,229,52),(606,0,61.88,247.50,0.00,0.00,229,53),(607,0,45.94,2067.40,0.00,0.00,229,54),(608,1,101.25,405.00,405.00,101.25,229,55),(609,0,2.25,7776.00,0.00,0.00,229,58),(610,1,0.45,1555.20,1555.20,0.45,229,59),(611,1,67.50,303.75,303.75,67.50,229,60),(612,1,67.50,337.50,337.50,67.50,229,61),(613,1,9.87,444.23,444.23,9.87,229,62),(614,1,56.25,168.75,168.75,56.25,229,63),(615,1,75.94,189.84,189.84,75.94,229,64),(630,1,37.13,445.50,445.50,37.13,231,48),(631,1,37.13,222.75,222.75,37.13,231,49),(632,1,67.50,243.00,243.00,67.50,231,50),(633,1,61.88,495.00,495.00,61.88,231,51),(634,0,56.25,168.75,0.00,0.00,231,52),(635,0,61.88,247.50,0.00,0.00,231,53),(636,1,45.94,2067.40,2067.40,45.94,231,54),(637,1,0.00,0.00,0.00,0.00,231,55),(638,1,2.25,7776.00,7776.00,2.25,231,58),(639,1,0.45,1555.20,1555.20,0.45,231,59),(640,1,67.50,303.75,303.75,67.50,231,60),(641,0,67.50,337.50,0.00,0.00,231,61),(642,1,9.87,444.23,444.23,9.87,231,62),(643,1,56.25,168.75,168.75,56.25,231,63),(644,1,75.94,189.84,189.84,75.94,231,64),(706,1,56.25,450.00,450.00,56.25,259,1),(707,0,56.25,337.50,0.00,0.00,259,2),(708,1,56.25,168.75,168.75,56.25,259,7),(709,1,56.25,450.00,450.00,56.25,259,8),(710,0,56.25,56.25,0.00,0.00,260,3),(711,0,1944.00,15552.00,0.00,0.00,260,4),(712,0,6.19,6527.81,0.00,0.00,260,16),(713,0,12.38,5494.50,0.00,0.00,260,17),(714,0,0.28,534.38,0.00,0.00,261,11),(715,0,56.25,900.00,0.00,0.00,261,12),(716,0,6.43,22217.14,0.00,0.00,262,13),(717,0,12.38,5494.50,0.00,0.00,262,19),(718,0,6.19,6527.81,0.00,0.00,262,20),(719,0,28.13,393.75,0.00,0.00,263,14),(720,0,14.06,0.00,0.00,0.00,263,15),(721,0,5.63,10687.50,0.00,0.00,263,21),(722,0,1.88,3562.50,0.00,0.00,263,22),(723,0,5.63,10687.50,0.00,0.00,263,23),(724,0,3.75,7125.00,0.00,0.00,263,24),(725,0,1.88,3562.50,0.00,0.00,264,25),(726,0,140.63,1265.63,0.00,0.00,264,26),(727,0,0.28,296.72,0.00,0.00,265,27),(728,0,56.25,675.00,0.00,0.00,265,28),(729,0,56.25,450.00,0.00,0.00,265,29),(730,0,2.96,10231.58,0.00,0.00,265,30),(731,1,22.50,202.50,202.50,22.50,266,31),(732,1,22.50,225.00,225.00,22.50,266,32),(733,1,56.25,562.50,562.50,56.25,267,5),(734,1,0.23,104.06,104.06,0.23,268,33),(735,1,0.28,225.00,225.00,0.28,268,34),(736,1,28.13,393.75,393.75,28.13,268,35),(737,0,56.25,225.00,0.00,0.00,269,36),(738,0,28.13,393.75,0.00,0.00,269,37),(739,0,9.00,144.00,0.00,0.00,269,38),(740,1,56.25,225.00,225.00,56.25,269,39),(741,1,0.28,534.38,534.38,0.28,270,40),(742,1,6.00,4800.00,4800.00,6.00,271,6),(743,1,18.00,14400.00,14400.00,18.00,271,65),(744,1,6.00,6600.00,6600.00,6.00,271,66),(745,1,0.06,106.88,106.88,0.06,272,41),(746,1,37.13,445.50,445.50,37.13,279,48),(747,1,37.13,222.75,222.75,37.13,279,49),(748,1,67.50,243.00,243.00,67.50,279,50),(749,1,61.88,495.00,495.00,61.88,279,51),(750,1,56.25,168.75,168.75,56.25,279,52),(751,1,61.88,247.50,247.50,61.88,279,53),(752,1,45.94,1837.69,1837.69,45.94,279,54),(753,1,0.00,0.00,0.00,0.00,279,55),(754,1,2.25,7776.00,7776.00,2.25,279,58),(755,1,0.45,1555.20,1555.20,0.45,279,59),(756,1,67.50,303.75,303.75,67.50,279,60),(757,1,67.50,337.50,337.50,67.50,279,61),(758,1,9.87,394.88,394.88,9.87,279,62),(759,1,56.25,168.75,168.75,56.25,279,63),(760,1,75.94,189.84,189.84,75.94,279,64),(761,1,253.13,0.00,0.00,253.13,285,42),(762,1,0.00,0.00,0.00,0.00,285,43),(763,1,0.00,0.00,0.00,0.00,285,44),(764,1,14.06,0.00,0.00,14.06,285,45),(765,1,56.25,337.50,337.50,56.25,285,46),(766,1,56.25,84.38,84.38,56.25,285,47),(768,1,70.00,140.00,140.00,70.00,292,67),(769,1,70.00,1680.00,1680.00,70.00,292,68),(770,1,70.00,560.00,560.00,70.00,292,69),(771,1,70.00,1120.00,1120.00,70.00,292,70),(772,1,70.00,280.00,280.00,70.00,292,71),(773,1,70.00,840.00,840.00,70.00,292,72),(774,1,70.00,17.50,17.50,70.00,292,73),(775,1,0.00,0.00,0.00,0.00,292,74),(776,1,0.00,0.00,0.00,0.00,292,75),(777,0,70.00,280.00,0.00,0.00,292,76),(778,0,70.00,280.00,0.00,0.00,292,77),(779,0,750.00,750.00,0.00,0.00,292,78),(780,1,70.00,5600.00,5600.00,70.00,292,79),(781,1,0.00,0.00,0.00,0.00,292,80),(782,1,1.90,6460.00,6460.00,1.90,292,81),(783,1,1500.00,1500.00,1500.00,1500.00,292,82),(784,1,1600.00,1600.00,1600.00,1600.00,292,83),(785,1,70.00,140.00,140.00,70.00,298,67),(786,1,70.00,1680.00,1680.00,70.00,298,68),(787,1,70.00,560.00,560.00,70.00,298,69),(788,1,70.00,1120.00,1120.00,70.00,298,70),(789,1,70.00,280.00,280.00,70.00,298,71),(790,1,70.00,840.00,840.00,70.00,298,72),(791,1,70.00,17.50,17.50,70.00,298,73),(792,1,0.00,0.00,0.00,0.00,298,74),(793,1,0.00,0.00,0.00,0.00,298,75),(794,1,70.00,280.00,280.00,70.00,298,76),(795,1,70.00,280.00,280.00,70.00,298,77),(796,1,750.00,750.00,750.00,750.00,298,78),(797,1,70.00,5600.00,5600.00,70.00,298,79),(798,1,0.00,0.00,0.00,0.00,298,80),(799,1,1.90,8677.30,8677.30,1.90,298,81),(800,1,1500.00,1500.00,1500.00,1500.00,298,82),(801,1,1600.00,1600.00,1600.00,1600.00,298,83),(802,1,0.00,0.00,0.00,0.00,299,84),(803,1,120.00,54720.00,54720.00,120.00,299,85),(804,1,0.00,0.00,0.00,0.00,299,86),(805,1,1.00,4547.00,4547.00,1.00,299,87),(806,1,0.00,0.00,0.00,0.00,299,88),(807,1,0.00,0.00,0.00,0.00,300,89),(808,1,0.00,0.00,0.00,0.00,300,90),(809,1,2.50,11417.50,11417.50,2.50,300,91),(810,1,0.00,0.00,0.00,0.00,301,92),(811,1,0.00,0.00,0.00,0.00,301,93),(812,1,2.50,11417.50,11417.50,2.50,301,94),(813,1,0.00,0.00,0.00,0.00,302,95),(814,1,3.50,15984.50,15984.50,3.50,302,96),(815,1,1.50,6136.50,6136.50,1.50,302,97),(816,1,25.00,250.00,250.00,25.00,302,98),(817,1,25.00,0.00,0.00,25.00,302,99),(818,1,5.60,25575.20,25575.20,5.60,302,100),(819,1,6.50,29685.50,29685.50,6.50,302,101),(820,1,6.50,29685.50,29685.50,6.50,302,102),(821,1,6.50,29685.50,29685.50,6.50,302,103),(822,1,6.50,29685.50,29685.50,6.50,302,104),(823,1,0.00,0.00,0.00,0.00,302,105),(824,1,0.00,0.00,0.00,0.00,303,106),(825,1,0.00,0.00,0.00,0.00,303,107),(826,1,70.00,140.00,140.00,70.00,304,67),(827,1,70.00,1680.00,1680.00,70.00,304,68),(828,1,70.00,560.00,560.00,70.00,304,69),(829,1,70.00,1120.00,1120.00,70.00,304,70),(830,1,70.00,280.00,280.00,70.00,304,71),(831,1,70.00,840.00,840.00,70.00,304,72),(832,1,70.00,17.50,17.50,70.00,304,73),(833,1,0.00,0.00,0.00,0.00,304,74),(834,1,0.00,0.00,0.00,0.00,304,75),(835,1,70.00,280.00,280.00,70.00,304,76),(836,1,70.00,280.00,280.00,70.00,304,77),(837,1,750.00,750.00,750.00,750.00,304,78),(838,1,70.00,5600.00,5600.00,70.00,304,79),(839,1,0.00,0.00,0.00,0.00,304,80),(840,1,1.90,3800.00,3800.00,1.90,304,81),(841,1,1500.00,1500.00,1500.00,1500.00,304,82),(842,1,1600.00,1600.00,1600.00,1600.00,304,83),(843,1,0.00,0.00,0.00,0.00,305,84),(844,1,120.00,24000.00,24000.00,120.00,305,85),(845,1,0.00,0.00,0.00,0.00,305,86),(846,1,1.00,1980.00,1980.00,1.00,305,87),(847,1,0.00,0.00,0.00,0.00,305,88),(848,1,0.00,0.00,0.00,0.00,306,89),(849,1,0.00,0.00,0.00,0.00,306,90),(850,1,2.50,5000.00,5000.00,2.50,306,91),(851,1,0.00,0.00,0.00,0.00,307,92),(852,1,0.00,0.00,0.00,0.00,307,93),(853,1,2.50,5000.00,5000.00,2.50,307,94),(854,1,0.00,0.00,0.00,0.00,308,95),(855,1,3.50,7000.00,7000.00,3.50,308,96),(856,1,1.50,2670.00,2670.00,1.50,308,97),(857,1,25.00,250.00,250.00,25.00,308,98),(858,1,25.00,0.00,0.00,25.00,308,99),(859,1,5.60,11200.00,11200.00,5.60,308,100),(860,1,6.50,13000.00,13000.00,6.50,308,101),(861,1,6.50,13000.00,13000.00,6.50,308,102),(862,1,6.50,13000.00,13000.00,6.50,308,103),(863,1,6.50,13000.00,13000.00,6.50,308,104),(864,1,0.00,0.00,0.00,0.00,308,105),(865,1,0.00,0.00,0.00,0.00,309,106),(866,1,0.00,0.00,0.00,0.00,309,107),(867,1,70.00,140.00,140.00,70.00,310,67),(868,1,70.00,1680.00,1680.00,70.00,310,68),(869,1,70.00,560.00,560.00,70.00,310,69),(870,1,70.00,1120.00,1120.00,70.00,310,70),(871,1,70.00,280.00,280.00,70.00,310,71),(872,1,70.00,840.00,840.00,70.00,310,72),(873,1,70.00,17.50,17.50,70.00,310,73),(874,1,0.00,0.00,0.00,0.00,310,74),(875,1,0.00,0.00,0.00,0.00,310,75),(876,1,70.00,280.00,280.00,70.00,310,76),(877,1,70.00,280.00,280.00,70.00,310,77),(878,1,750.00,750.00,750.00,750.00,310,78),(879,1,70.00,5600.00,5600.00,70.00,310,79),(880,1,0.00,0.00,0.00,0.00,310,80),(881,1,1.90,4370.00,4370.00,1.90,310,81),(882,1,1500.00,1500.00,1500.00,1500.00,310,82),(883,1,1600.00,1600.00,1600.00,1600.00,310,83),(884,1,0.00,0.00,0.00,0.00,311,84),(885,1,120.00,27600.00,27600.00,120.00,311,85),(886,1,0.00,0.00,0.00,0.00,311,86),(887,1,1.00,2280.00,2280.00,1.00,311,87),(888,1,0.00,0.00,0.00,0.00,311,88),(889,1,0.00,0.00,0.00,0.00,312,89),(890,1,0.00,0.00,0.00,0.00,312,90),(891,1,2.50,5750.00,5750.00,2.50,312,91),(892,1,0.00,0.00,0.00,0.00,313,92),(893,1,0.00,0.00,0.00,0.00,313,93),(894,1,2.50,5750.00,5750.00,2.50,313,94),(895,1,0.00,0.00,0.00,0.00,314,95),(896,1,3.50,8050.00,8050.00,3.50,314,96),(897,1,1.50,3075.00,3075.00,1.50,314,97),(898,1,25.00,250.00,250.00,25.00,314,98),(899,1,25.00,0.00,0.00,25.00,314,99),(900,1,5.60,12880.00,12880.00,5.60,314,100),(901,1,6.50,14950.00,14950.00,6.50,314,101),(902,1,6.50,14950.00,14950.00,6.50,314,102),(903,1,6.50,14950.00,14950.00,6.50,314,103),(904,1,6.50,14950.00,14950.00,6.50,314,104),(905,1,0.00,0.00,0.00,0.00,314,105),(906,1,0.00,0.00,0.00,0.00,315,106),(907,1,0.00,0.00,0.00,0.00,315,107),(908,1,70.00,140.00,140.00,70.00,316,67),(909,1,70.00,1680.00,1680.00,70.00,316,68),(910,1,70.00,560.00,560.00,70.00,316,69),(911,1,70.00,1120.00,1120.00,70.00,316,70),(912,1,70.00,280.00,280.00,70.00,316,71),(913,1,70.00,840.00,840.00,70.00,316,72),(914,1,70.00,17.50,17.50,70.00,316,73),(915,1,0.00,0.00,0.00,0.00,316,74),(916,1,0.00,0.00,0.00,0.00,316,75),(917,1,70.00,280.00,280.00,70.00,316,76),(918,1,70.00,280.00,280.00,70.00,316,77),(919,1,750.00,750.00,750.00,750.00,316,78),(920,1,70.00,5600.00,5600.00,70.00,316,79),(921,1,0.00,0.00,0.00,0.00,316,80),(922,1,1.90,4455.50,4455.50,1.90,316,81),(923,1,1500.00,1500.00,1500.00,1500.00,316,82),(924,1,1600.00,1600.00,1600.00,1600.00,316,83),(925,1,0.00,0.00,0.00,0.00,317,84),(926,1,120.00,28080.00,28080.00,120.00,317,85),(927,1,0.00,0.00,0.00,0.00,317,86),(928,1,1.00,2325.00,2325.00,1.00,317,87),(929,1,0.00,0.00,0.00,0.00,317,88),(930,1,0.00,0.00,0.00,0.00,318,89),(931,1,0.00,0.00,0.00,0.00,318,90),(932,1,2.50,5862.50,5862.50,2.50,318,91),(933,1,0.00,0.00,0.00,0.00,319,92),(934,1,0.00,0.00,0.00,0.00,319,93),(935,1,2.50,5862.50,5862.50,2.50,319,94),(936,1,0.00,0.00,0.00,0.00,320,95),(937,1,3.50,8207.50,8207.50,3.50,320,96),(938,1,1.50,3136.50,3136.50,1.50,320,97),(939,1,25.00,250.00,250.00,25.00,320,98),(940,1,25.00,0.00,0.00,25.00,320,99),(941,1,5.60,13132.00,13132.00,5.60,320,100),(942,1,6.50,15242.50,15242.50,6.50,320,101),(943,1,6.50,15242.50,15242.50,6.50,320,102),(944,1,6.50,15242.50,15242.50,6.50,320,103),(945,1,6.50,15242.50,15242.50,6.50,320,104),(946,1,0.00,0.00,0.00,0.00,320,105),(947,1,0.00,0.00,0.00,0.00,321,106),(948,1,0.00,0.00,0.00,0.00,321,107),(949,1,70.00,140.00,140.00,70.00,322,67),(950,1,70.00,1680.00,1680.00,70.00,322,68),(951,1,70.00,560.00,560.00,70.00,322,69),(952,1,70.00,1120.00,1120.00,70.00,322,70),(953,1,70.00,280.00,280.00,70.00,322,71),(954,1,70.00,840.00,840.00,70.00,322,72),(955,1,70.00,17.50,17.50,70.00,322,73),(956,1,0.00,0.00,0.00,0.00,322,74),(957,1,0.00,0.00,0.00,0.00,322,75),(958,1,70.00,280.00,280.00,70.00,322,76),(959,1,70.00,280.00,280.00,70.00,322,77),(960,1,750.00,750.00,750.00,750.00,322,78),(961,1,70.00,5600.00,5600.00,70.00,322,79),(962,1,0.00,0.00,0.00,0.00,322,80),(963,1,1.90,4455.50,4455.50,1.90,322,81),(964,1,1500.00,1500.00,1500.00,1500.00,322,82),(965,1,1600.00,1600.00,1600.00,1600.00,322,83),(966,1,0.00,0.00,0.00,0.00,323,84),(967,1,120.00,28080.00,28080.00,120.00,323,85),(968,1,0.00,0.00,0.00,0.00,323,86),(969,1,1.00,2325.00,2325.00,1.00,323,87),(970,1,0.00,0.00,0.00,0.00,323,88),(971,1,0.00,0.00,0.00,0.00,324,89),(972,1,0.00,0.00,0.00,0.00,324,90),(973,1,2.50,5862.50,5862.50,2.50,324,91),(974,1,0.00,0.00,0.00,0.00,325,92),(975,1,0.00,0.00,0.00,0.00,325,93),(976,1,2.50,5862.50,5862.50,2.50,325,94),(977,1,0.00,0.00,0.00,0.00,326,95),(978,1,3.50,8207.50,8207.50,3.50,326,96),(979,1,1.50,3136.50,3136.50,1.50,326,97),(980,1,25.00,250.00,250.00,25.00,326,98),(981,1,25.00,0.00,0.00,25.00,326,99),(982,1,5.60,13132.00,13132.00,5.60,326,100),(983,1,6.50,15242.50,15242.50,6.50,326,101),(984,1,6.50,15242.50,15242.50,6.50,326,102),(985,1,6.50,15242.50,15242.50,6.50,326,103),(986,1,6.50,15242.50,15242.50,6.50,326,104),(987,1,0.00,0.00,0.00,0.00,326,105),(988,1,0.00,0.00,0.00,0.00,327,106),(989,1,0.00,0.00,0.00,0.00,327,107),(990,1,56.25,450.00,450.00,56.25,328,1),(991,1,56.25,337.50,337.50,56.25,328,2),(992,1,56.25,168.75,168.75,56.25,328,7),(993,1,56.25,450.00,450.00,56.25,328,8),(994,1,56.25,56.25,56.25,56.25,329,3),(995,1,1825.31,14602.50,14602.50,1825.31,329,4),(996,1,6.19,7344.56,7344.56,6.19,329,16),(997,1,12.38,5643.00,5643.00,12.38,329,17),(998,1,0.28,534.38,534.38,0.28,330,11),(999,1,56.25,900.00,900.00,56.25,330,12),(1000,1,6.43,20860.71,20860.71,6.43,331,13),(1001,1,12.38,5643.00,5643.00,12.38,331,19),(1002,1,6.19,7344.56,7344.56,6.19,331,20),(1003,1,28.13,393.75,393.75,28.13,332,14),(1004,1,14.06,0.00,0.00,14.06,332,15),(1005,1,0.00,0.00,0.00,0.00,332,21),(1006,1,1.88,3562.50,3562.50,1.88,332,22),(1007,1,0.00,0.00,0.00,0.00,332,23),(1008,1,0.00,0.00,0.00,0.00,332,24),(1009,1,1.88,3562.50,3562.50,1.88,333,25),(1010,1,140.63,1265.63,1265.63,140.63,333,26),(1011,1,0.28,333.84,333.84,0.28,334,27),(1012,1,56.25,675.00,675.00,56.25,334,28),(1013,1,56.25,450.00,450.00,56.25,334,29),(1014,1,2.96,9606.91,9606.91,2.96,334,30),(1015,1,22.50,202.50,202.50,22.50,335,31),(1016,1,22.50,225.00,225.00,22.50,335,32),(1017,1,56.25,562.50,562.50,56.25,336,5),(1018,1,0.23,106.88,106.88,0.23,337,33),(1019,1,0.28,225.00,225.00,0.28,337,34),(1020,1,28.13,393.75,393.75,28.13,337,35),(1021,1,56.25,225.00,225.00,56.25,338,36),(1022,1,28.13,393.75,393.75,28.13,338,37),(1023,1,9.00,144.00,144.00,9.00,338,38),(1024,1,56.25,225.00,225.00,56.25,338,39),(1025,1,0.28,534.38,534.38,0.28,339,40),(1026,1,0.00,0.00,0.00,0.00,340,6),(1027,1,0.00,0.00,0.00,0.00,340,65),(1028,1,6.00,6600.00,6600.00,6.00,340,66),(1029,1,0.06,106.88,106.88,0.06,341,41),(1030,1,70.00,140.00,140.00,70.00,342,67),(1031,1,70.00,1680.00,1680.00,70.00,342,68),(1032,1,70.00,560.00,560.00,70.00,342,69),(1033,1,70.00,1120.00,1120.00,70.00,342,70),(1034,1,70.00,280.00,280.00,70.00,342,71),(1035,1,70.00,840.00,840.00,70.00,342,72),(1036,1,70.00,17.50,17.50,70.00,342,73),(1037,1,0.00,0.00,0.00,0.00,342,74),(1038,1,0.00,0.00,0.00,0.00,342,75),(1039,1,70.00,280.00,280.00,70.00,342,76),(1040,1,70.00,280.00,280.00,70.00,342,77),(1041,1,750.00,750.00,750.00,750.00,342,78),(1042,1,70.00,5600.00,5600.00,70.00,342,79),(1043,1,0.00,0.00,0.00,0.00,342,80),(1044,1,1.90,6165.50,6165.50,1.90,342,81),(1045,1,1500.00,1500.00,1500.00,1500.00,342,82),(1046,1,1600.00,1600.00,1600.00,1600.00,342,83),(1047,1,0.00,0.00,0.00,0.00,343,84),(1048,1,120.00,38880.00,38880.00,120.00,343,85),(1049,1,0.00,0.00,0.00,0.00,343,86),(1050,1,1.00,3225.00,3225.00,1.00,343,87),(1051,1,0.00,0.00,0.00,0.00,343,88),(1052,1,0.00,0.00,0.00,0.00,344,89),(1053,1,0.00,0.00,0.00,0.00,344,90),(1054,1,2.50,8112.50,8112.50,2.50,344,91),(1055,1,0.00,0.00,0.00,0.00,345,92),(1056,1,0.00,0.00,0.00,0.00,345,93),(1057,1,2.50,8112.50,8112.50,2.50,345,94),(1058,1,0.00,0.00,0.00,0.00,346,95),(1059,1,3.50,11357.50,11357.50,3.50,346,96),(1060,1,1.50,4351.50,4351.50,1.50,346,97),(1061,1,25.00,250.00,250.00,25.00,346,98),(1062,1,25.00,0.00,0.00,25.00,346,99),(1063,1,5.60,18172.00,18172.00,5.60,346,100),(1064,1,6.50,21092.50,21092.50,6.50,346,101),(1065,1,6.50,21092.50,21092.50,6.50,346,102),(1066,1,6.50,21092.50,21092.50,6.50,346,103),(1067,1,6.50,21092.50,21092.50,6.50,346,104),(1068,1,0.00,0.00,0.00,0.00,346,105),(1069,1,0.00,0.00,0.00,0.00,347,106),(1070,1,0.00,0.00,0.00,0.00,347,107),(1071,1,37.13,445.50,445.50,37.13,348,48),(1072,1,37.13,222.75,222.75,37.13,348,49),(1073,1,67.50,243.00,243.00,67.50,348,50),(1074,1,61.88,495.00,495.00,61.88,348,51),(1075,1,56.25,168.75,168.75,56.25,348,52),(1076,1,61.88,247.50,247.50,61.88,348,53),(1077,1,0.00,0.00,0.00,0.00,348,54),(1078,1,0.00,0.00,0.00,0.00,348,55),(1079,1,2.25,7301.25,7301.25,2.25,348,58),(1080,1,0.45,1460.25,1460.25,0.45,348,59),(1081,1,67.50,303.75,303.75,67.50,348,60),(1082,1,67.50,337.50,337.50,67.50,348,61),(1083,1,0.00,0.00,0.00,0.00,348,62),(1084,1,56.25,168.75,168.75,56.25,348,63),(1085,1,0.00,0.00,0.00,0.00,348,64),(1086,1,57.00,67659.00,67659.00,57.00,349,108),(1087,1,57.00,67659.00,67659.00,57.00,349,109),(1088,1,0.00,0.00,0.00,0.00,350,110),(1089,1,253.13,0.00,0.00,253.13,354,42),(1090,1,0.00,0.00,0.00,0.00,354,43),(1091,1,0.00,0.00,0.00,0.00,354,44),(1092,1,14.06,0.00,0.00,14.06,354,45),(1093,1,56.25,337.50,337.50,56.25,354,46),(1094,1,56.25,84.38,84.38,56.25,354,47),(1095,1,56.25,450.00,450.00,56.25,355,1),(1096,1,56.25,337.50,337.50,56.25,355,2),(1097,1,56.25,168.75,168.75,56.25,355,7),(1098,1,56.25,450.00,450.00,56.25,355,8),(1099,1,56.25,56.25,56.25,56.25,356,3),(1100,1,1319.06,10552.50,10552.50,1319.06,356,4),(1101,1,6.19,7344.56,7344.56,6.19,356,16),(1102,1,12.38,6187.50,6187.50,12.38,356,17),(1103,1,0.28,534.38,534.38,0.28,357,11),(1104,1,56.25,900.00,900.00,56.25,357,12),(1105,1,6.43,15075.00,15075.00,6.43,358,13),(1106,1,12.38,6187.50,6187.50,12.38,358,19),(1107,1,6.19,7344.56,7344.56,6.19,358,20),(1108,1,28.13,393.75,393.75,28.13,359,14),(1109,1,14.06,0.00,0.00,14.06,359,15),(1110,1,0.00,0.00,0.00,0.00,359,21),(1111,1,1.88,3562.50,3562.50,1.88,359,22),(1112,1,0.00,0.00,0.00,0.00,359,23),(1113,1,0.00,0.00,0.00,0.00,359,24),(1114,1,1.88,3562.50,3562.50,1.88,360,25),(1115,1,140.63,1265.63,1265.63,140.63,360,26),(1116,1,0.28,333.84,333.84,0.28,361,27),(1117,1,56.25,675.00,675.00,56.25,361,28),(1118,1,56.25,450.00,450.00,56.25,361,29),(1119,1,2.96,6942.43,6942.43,2.96,361,30),(1120,1,22.50,202.50,202.50,22.50,362,31),(1121,1,22.50,225.00,225.00,22.50,362,32),(1122,1,56.25,562.50,562.50,56.25,363,5),(1123,1,0.23,117.19,117.19,0.23,364,33),(1124,1,0.28,225.00,225.00,0.28,364,34),(1125,1,28.13,393.75,393.75,28.13,364,35),(1126,1,56.25,225.00,225.00,56.25,365,36),(1127,1,28.13,393.75,393.75,28.13,365,37),(1128,1,9.00,144.00,144.00,9.00,365,38),(1129,1,56.25,225.00,225.00,56.25,365,39),(1130,1,0.28,534.38,534.38,0.28,366,40),(1131,1,0.00,0.00,0.00,0.00,367,6),(1132,1,0.00,0.00,0.00,0.00,367,65),(1133,1,6.00,6600.00,6600.00,6.00,367,66),(1134,1,0.06,106.88,106.88,0.06,368,41),(1135,1,70.00,140.00,140.00,70.00,369,67),(1136,1,70.00,1680.00,1680.00,70.00,369,68),(1137,1,70.00,560.00,560.00,70.00,369,69),(1138,1,70.00,1120.00,1120.00,70.00,369,70),(1139,1,70.00,280.00,280.00,70.00,369,71),(1140,1,70.00,840.00,840.00,70.00,369,72),(1141,1,70.00,17.50,17.50,70.00,369,73),(1142,1,0.00,0.00,0.00,0.00,369,74),(1143,1,0.00,0.00,0.00,0.00,369,75),(1144,1,70.00,280.00,280.00,70.00,369,76),(1145,1,70.00,280.00,280.00,70.00,369,77),(1146,1,750.00,750.00,750.00,750.00,369,78),(1147,1,70.00,5600.00,5600.00,70.00,369,79),(1148,1,0.00,0.00,0.00,0.00,369,80),(1149,1,1.90,4455.50,4455.50,1.90,369,81),(1150,1,1500.00,1500.00,1500.00,1500.00,369,82),(1151,1,1600.00,1600.00,1600.00,1600.00,369,83),(1152,1,0.00,0.00,0.00,0.00,370,84),(1153,1,120.00,28080.00,28080.00,120.00,370,85),(1154,1,0.00,0.00,0.00,0.00,370,86),(1155,1,1.00,2325.00,2325.00,1.00,370,87),(1156,1,0.00,0.00,0.00,0.00,370,88),(1157,1,0.00,0.00,0.00,0.00,371,89),(1158,1,0.00,0.00,0.00,0.00,371,90),(1159,1,2.50,5862.50,5862.50,2.50,371,91),(1160,1,0.00,0.00,0.00,0.00,372,92),(1161,1,0.00,0.00,0.00,0.00,372,93),(1162,1,2.50,5862.50,5862.50,2.50,372,94),(1163,1,0.00,0.00,0.00,0.00,373,95),(1164,1,3.50,8207.50,8207.50,3.50,373,96),(1165,1,1.50,3136.50,3136.50,1.50,373,97),(1166,1,25.00,250.00,250.00,25.00,373,98),(1167,1,25.00,0.00,0.00,25.00,373,99),(1168,1,5.60,13132.00,13132.00,5.60,373,100),(1169,1,6.50,15242.50,15242.50,6.50,373,101),(1170,1,6.50,15242.50,15242.50,6.50,373,102),(1171,1,6.50,15242.50,15242.50,6.50,373,103),(1172,1,6.50,15242.50,15242.50,6.50,373,104),(1173,1,0.00,0.00,0.00,0.00,373,105),(1174,1,0.00,0.00,0.00,0.00,374,106),(1175,1,0.00,0.00,0.00,0.00,374,107),(1176,1,14.85,178.20,178.20,14.85,375,48),(1177,1,14.85,89.10,89.10,14.85,375,49),(1178,1,67.50,243.00,243.00,67.50,375,50),(1179,1,61.88,495.00,495.00,61.88,375,51),(1180,1,56.25,168.75,168.75,56.25,375,52),(1181,1,61.88,247.50,247.50,61.88,375,53),(1182,1,0.00,0.00,0.00,0.00,375,54),(1183,1,0.00,0.00,0.00,0.00,375,55),(1184,1,2.25,5276.25,5276.25,2.25,375,58),(1185,1,0.45,1055.25,1055.25,0.45,375,59),(1186,1,67.50,303.75,303.75,67.50,375,60),(1187,1,67.50,337.50,337.50,67.50,375,61),(1188,1,0.00,0.00,0.00,0.00,375,62),(1189,1,56.25,168.75,168.75,56.25,375,63),(1190,1,0.00,0.00,0.00,0.00,375,64),(1191,1,57.00,67659.00,67659.00,57.00,376,108),(1192,1,57.00,67659.00,67659.00,57.00,376,109),(1193,1,0.00,0.00,0.00,0.00,377,110),(1194,1,253.13,0.00,0.00,253.13,381,42),(1195,1,0.00,0.00,0.00,0.00,381,43),(1196,1,0.00,0.00,0.00,0.00,381,44),(1197,1,14.06,0.00,0.00,14.06,381,45),(1198,1,56.25,337.50,337.50,56.25,381,46),(1199,1,56.25,84.38,84.38,56.25,381,47),(1200,1,56.25,450.00,450.00,56.25,382,1),(1201,1,56.25,337.50,337.50,56.25,382,2),(1202,1,56.25,168.75,168.75,56.25,382,7),(1203,1,56.25,450.00,450.00,56.25,382,8),(1204,0,56.25,56.25,0.00,0.00,383,3),(1205,0,3818.81,30550.50,0.00,0.00,383,4),(1206,0,6.19,674.44,0.00,0.00,383,16),(1207,0,12.38,123.75,0.00,0.00,383,17),(1208,1,0.28,159.47,159.47,0.28,384,11),(1209,1,56.25,900.00,900.00,56.25,384,12),(1210,0,6.43,43643.57,0.00,0.00,385,13),(1211,0,12.38,123.75,0.00,0.00,385,19),(1212,0,6.19,674.44,0.00,0.00,385,20),(1213,0,28.13,393.75,0.00,0.00,386,14),(1214,0,14.06,351.56,0.00,0.00,386,15),(1215,0,5.63,3189.38,0.00,0.00,386,21),(1216,0,1.88,1063.13,0.00,0.00,386,22),(1217,0,5.63,3189.38,0.00,0.00,386,23),(1218,0,3.75,2126.25,0.00,0.00,386,24),(1219,1,1.88,1063.13,1063.13,1.88,387,25),(1220,1,140.63,1265.63,1265.63,140.63,387,26),(1221,1,0.28,30.66,30.66,0.28,388,27),(1222,1,56.25,675.00,675.00,56.25,388,28),(1223,1,56.25,450.00,450.00,56.25,388,29),(1224,1,2.96,20099.01,20099.01,2.96,388,30),(1225,1,22.50,202.50,202.50,22.50,389,31),(1226,1,22.50,225.00,225.00,22.50,389,32),(1227,1,56.25,562.50,562.50,56.25,390,5),(1228,1,0.23,2.34,2.34,0.23,391,33),(1229,1,0.28,15.75,15.75,0.28,391,34),(1230,1,28.13,393.75,393.75,28.13,391,35),(1231,1,56.25,225.00,225.00,56.25,392,36),(1232,1,28.13,393.75,393.75,28.13,392,37),(1233,1,9.00,144.00,144.00,9.00,392,38),(1234,1,56.25,225.00,225.00,56.25,392,39),(1235,1,0.28,159.47,159.47,0.28,393,40),(1236,1,6.00,336.00,336.00,6.00,394,6),(1237,1,18.00,1008.00,1008.00,18.00,394,65),(1238,1,6.00,3066.00,3066.00,6.00,394,66),(1239,1,0.06,31.89,31.89,0.06,395,41),(1240,1,70.00,140.00,140.00,70.00,396,67),(1241,1,70.00,1680.00,1680.00,70.00,396,68),(1242,1,70.00,560.00,560.00,70.00,396,69),(1243,1,70.00,1120.00,1120.00,70.00,396,70),(1244,1,70.00,280.00,280.00,70.00,396,71),(1245,1,70.00,840.00,840.00,70.00,396,72),(1246,1,70.00,17.50,17.50,70.00,396,73),(1247,1,0.00,0.00,0.00,0.00,396,74),(1248,1,0.00,0.00,0.00,0.00,396,75),(1249,1,70.00,280.00,280.00,70.00,396,76),(1250,1,70.00,280.00,280.00,70.00,396,77),(1251,1,750.00,750.00,750.00,750.00,396,78),(1252,1,70.00,5600.00,5600.00,70.00,396,79),(1253,1,0.00,0.00,0.00,0.00,396,80),(1254,1,1.90,12899.10,12899.10,1.90,396,81),(1255,1,1500.00,1500.00,1500.00,1500.00,396,82),(1256,1,1600.00,1600.00,1600.00,1600.00,396,83),(1257,1,0.00,0.00,0.00,0.00,397,84),(1258,1,120.00,81360.00,81360.00,120.00,397,85),(1259,1,0.00,0.00,0.00,0.00,397,86),(1260,1,1.00,6769.00,6769.00,1.00,397,87),(1261,1,0.00,0.00,0.00,0.00,397,88),(1262,1,0.00,0.00,0.00,0.00,398,89),(1263,1,0.00,0.00,0.00,0.00,398,90),(1264,1,2.50,16972.50,16972.50,2.50,398,91),(1265,1,0.00,0.00,0.00,0.00,399,92),(1266,1,0.00,0.00,0.00,0.00,399,93),(1267,1,2.50,16972.50,16972.50,2.50,399,94),(1268,1,0.00,0.00,0.00,0.00,400,95),(1269,1,3.50,23761.50,23761.50,3.50,400,96),(1270,1,1.50,9136.50,9136.50,1.50,400,97),(1271,1,25.00,250.00,250.00,25.00,400,98),(1272,1,25.00,0.00,0.00,25.00,400,99),(1273,1,5.60,38018.40,38018.40,5.60,400,100),(1274,1,6.50,44128.50,44128.50,6.50,400,101),(1275,1,6.50,44128.50,44128.50,6.50,400,102),(1276,1,6.50,44128.50,44128.50,6.50,400,103),(1277,1,6.50,44128.50,44128.50,6.50,400,104),(1278,1,0.00,0.00,0.00,0.00,400,105),(1279,1,0.00,0.00,0.00,0.00,401,106),(1280,1,0.00,0.00,0.00,0.00,401,107),(1281,1,37.13,445.50,445.50,37.13,402,48),(1282,1,37.13,222.75,222.75,37.13,402,49),(1283,1,67.50,243.00,243.00,67.50,402,50),(1284,1,61.88,495.00,495.00,61.88,402,51),(1285,1,56.25,168.75,168.75,56.25,402,52),(1286,1,61.88,247.50,247.50,61.88,402,53),(1287,1,40.84,1429.31,1429.31,40.84,402,54),(1288,0,75.94,303.75,0.00,0.00,402,55),(1289,0,2.25,15275.25,0.00,0.00,402,58),(1290,0,0.45,3055.05,0.00,0.00,402,59),(1291,0,67.50,303.75,0.00,0.00,402,60),(1292,1,67.50,337.50,337.50,67.50,402,61),(1293,1,8.78,307.13,307.13,8.78,402,62),(1294,1,56.25,168.75,168.75,56.25,402,63),(1295,1,67.50,168.75,168.75,67.50,402,64),(1296,1,57.00,6213.00,6213.00,57.00,403,108),(1297,1,57.00,6213.00,6213.00,57.00,403,109),(1298,1,0.00,0.00,0.00,0.00,404,110),(1299,1,253.13,2.00,2.00,253.13,408,42),(1300,1,168.75,3.00,3.00,168.75,408,43),(1301,1,42.19,84.38,84.38,42.19,408,44),(1302,1,14.06,42.19,42.19,14.06,408,45),(1303,1,56.25,337.50,337.50,56.25,408,46),(1304,1,56.25,84.38,84.38,56.25,408,47),(1305,1,57.00,570.00,570.00,57.00,409,108),(1306,1,57.00,570.00,570.00,57.00,409,109),(1307,1,162.50,1300.00,1300.00,162.50,410,110),(1308,1,75.00,600.00,600.00,75.00,410,111),(1309,1,112.50,900.00,900.00,112.50,410,112),(1310,1,0.00,0.00,0.00,0.00,411,113),(1311,1,125.00,1250.00,1250.00,125.00,412,114),(1312,1,50.00,500.00,500.00,50.00,412,115),(1313,1,23.00,230.00,230.00,23.00,412,116),(1314,1,10.00,50.00,50.00,10.00,413,117),(1315,0,9.00,45.00,0.00,0.00,413,118),(1316,0,9.00,45.00,0.00,0.00,413,119),(1317,1,2.00,10.00,10.00,2.00,413,120),(1318,0,0.00,0.00,0.00,0.00,413,121),(1319,1,5000.00,5000.00,5000.00,5000.00,415,122),(1320,1,56.25,450.00,450.00,56.25,416,1),(1321,1,56.25,337.50,337.50,56.25,416,2),(1322,1,56.25,168.75,168.75,56.25,416,7),(1323,1,56.25,450.00,450.00,56.25,416,8),(1324,1,56.25,56.25,56.25,56.25,417,3),(1325,1,1944.00,15552.00,15552.00,1944.00,417,4),(1326,1,6.19,1905.75,1905.75,6.19,417,16),(1327,1,12.38,915.75,915.75,12.38,417,17),(1328,1,0.28,659.53,659.53,0.28,418,11),(1329,1,56.25,900.00,900.00,56.25,418,12),(1330,1,6.43,22217.14,22217.14,6.43,419,13),(1331,1,12.38,915.75,915.75,12.38,419,19),(1332,1,6.19,1905.75,1905.75,6.19,419,20),(1333,1,28.13,393.75,393.75,28.13,420,14),(1334,1,14.06,0.00,0.00,14.06,420,15),(1335,1,0.00,0.00,0.00,0.00,420,21),(1336,1,1.88,4396.88,4396.88,1.88,420,22),(1337,1,0.00,0.00,0.00,0.00,420,23),(1338,1,0.00,0.00,0.00,0.00,420,24),(1339,1,1.88,4396.88,4396.88,1.88,421,25),(1340,1,140.63,1265.63,1265.63,140.63,421,26),(1341,1,0.28,86.63,86.63,0.28,422,27),(1342,1,56.25,675.00,675.00,56.25,422,28),(1343,1,56.25,450.00,450.00,56.25,422,29),(1344,1,2.96,10231.58,10231.58,2.96,422,30),(1345,1,22.50,202.50,202.50,22.50,423,31),(1346,1,22.50,225.00,225.00,22.50,423,32),(1347,1,56.25,562.50,562.50,56.25,424,5),(1348,1,0.23,17.34,17.34,0.23,425,33),(1349,1,0.28,159.47,159.47,0.28,425,34),(1350,1,28.13,393.75,393.75,28.13,425,35),(1351,1,56.25,225.00,225.00,56.25,426,36),(1352,1,28.13,393.75,393.75,28.13,426,37),(1353,1,9.00,144.00,144.00,9.00,426,38),(1354,1,56.25,225.00,225.00,56.25,426,39),(1355,1,0.28,659.53,659.53,0.28,427,40),(1356,1,0.00,0.00,0.00,0.00,428,6),(1357,1,0.00,0.00,0.00,0.00,428,65),(1358,1,6.00,10668.00,10668.00,6.00,428,66),(1359,1,0.06,131.91,131.91,0.06,429,41),(1360,1,70.00,140.00,140.00,70.00,430,67),(1361,1,70.00,1680.00,1680.00,70.00,430,68),(1362,1,70.00,560.00,560.00,70.00,430,69),(1363,1,70.00,1120.00,1120.00,70.00,430,70),(1364,1,70.00,280.00,280.00,70.00,430,71),(1365,1,70.00,840.00,840.00,70.00,430,72),(1366,1,70.00,17.50,17.50,70.00,430,73),(1367,1,0.00,0.00,0.00,0.00,430,74),(1368,1,0.00,0.00,0.00,0.00,430,75),(1369,1,70.00,280.00,280.00,70.00,430,76),(1370,1,70.00,280.00,280.00,70.00,430,77),(1371,1,750.00,750.00,750.00,750.00,430,78),(1372,1,70.00,5600.00,5600.00,70.00,430,79),(1373,1,0.00,0.00,0.00,0.00,430,80),(1374,1,1.90,6566.40,6566.40,1.90,430,81),(1375,1,1500.00,1500.00,1500.00,1500.00,430,82),(1376,1,1600.00,1600.00,1600.00,1600.00,430,83),(1377,1,0.00,0.00,0.00,0.00,431,84),(1378,1,120.00,41400.00,41400.00,120.00,431,85),(1379,1,0.00,0.00,0.00,0.00,431,86),(1380,1,1.00,3436.00,3436.00,1.00,431,87),(1381,1,0.00,0.00,0.00,0.00,431,88),(1382,1,0.00,0.00,0.00,0.00,432,89),(1383,1,0.00,0.00,0.00,0.00,432,90),(1384,1,2.50,8640.00,8640.00,2.50,432,91),(1385,1,0.00,0.00,0.00,0.00,433,92),(1386,1,0.00,0.00,0.00,0.00,433,93),(1387,1,2.50,8640.00,8640.00,2.50,433,94),(1388,1,0.00,0.00,0.00,0.00,434,95),(1389,1,3.50,12096.00,12096.00,3.50,434,96),(1390,1,1.50,4636.50,4636.50,1.50,434,97),(1391,1,25.00,250.00,250.00,25.00,434,98),(1392,1,25.00,0.00,0.00,25.00,434,99),(1393,1,5.60,19353.60,19353.60,5.60,434,100),(1394,1,6.50,22464.00,22464.00,6.50,434,101),(1395,1,6.50,22464.00,22464.00,6.50,434,102),(1396,1,6.50,22464.00,22464.00,6.50,434,103),(1397,1,6.50,22464.00,22464.00,6.50,434,104),(1398,1,0.00,0.00,0.00,0.00,434,105),(1399,1,0.00,0.00,0.00,0.00,435,106),(1400,1,0.00,0.00,0.00,0.00,435,107),(1401,1,37.13,445.50,445.50,37.13,436,48),(1402,1,37.13,222.75,222.75,37.13,436,49),(1403,1,67.50,243.00,243.00,67.50,436,50),(1404,1,61.88,495.00,495.00,61.88,436,51),(1405,1,56.25,168.75,168.75,56.25,436,52),(1406,1,61.88,247.50,247.50,61.88,436,53),(1407,1,0.00,0.00,0.00,0.00,436,54),(1408,1,0.00,0.00,0.00,0.00,436,55),(1409,1,2.25,7776.00,7776.00,2.25,436,58),(1410,1,0.45,1555.20,1555.20,0.45,436,59),(1411,1,67.50,303.75,303.75,67.50,436,60),(1412,1,67.50,337.50,337.50,67.50,436,61),(1413,1,0.00,0.00,0.00,0.00,436,62),(1414,1,56.25,168.75,168.75,56.25,436,63),(1415,1,0.00,0.00,0.00,0.00,436,64),(1416,1,57.00,17556.00,17556.00,57.00,437,108),(1417,1,57.00,17556.00,17556.00,57.00,437,109),(1418,1,162.50,1300.00,1300.00,162.50,438,110),(1419,1,75.00,600.00,600.00,75.00,438,111),(1420,1,112.50,900.00,900.00,112.50,438,112),(1421,1,0.00,0.00,0.00,0.00,439,113),(1422,1,125.00,38500.00,38500.00,125.00,440,114),(1423,1,50.00,15400.00,15400.00,50.00,440,115),(1424,1,23.00,7084.00,7084.00,23.00,440,116),(1425,1,10.00,740.00,740.00,10.00,441,117),(1426,1,9.00,666.00,666.00,9.00,441,118),(1427,1,9.00,666.00,666.00,9.00,441,119),(1428,1,2.00,148.00,148.00,2.00,441,120),(1429,1,0.00,0.00,0.00,0.00,441,121),(1430,1,5000.00,5000.00,5000.00,5000.00,443,122),(1431,1,253.13,0.00,0.00,253.13,444,42),(1432,1,0.00,0.00,0.00,0.00,444,43),(1433,1,0.00,0.00,0.00,0.00,444,44),(1434,1,14.06,0.00,0.00,14.06,444,45),(1435,1,56.25,337.50,337.50,56.25,444,46),(1436,1,56.25,84.38,84.38,56.25,444,47);
/*!40000 ALTER TABLE `demandcategorycalculationitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandcategorydepartementcalculation`
--

DROP TABLE IF EXISTS `demandcategorydepartementcalculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demandcategorydepartementcalculation` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SUMME` decimal(10,2) DEFAULT NULL,
  `SUMMEGLOBAL` decimal(10,2) DEFAULT NULL,
  `DEMANDCATEGORY_ID` bigint(20) DEFAULT NULL,
  `DEPARTEMENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DMANDCATEGORYDEPARTEMENTCALCULATIONDMANDCATEGORYID` (`DEMANDCATEGORY_ID`),
  KEY `DEMANDCATEGORYDEPARTEMENTCALCULATIONDEPARTEMENT_ID` (`DEPARTEMENT_ID`),
  CONSTRAINT `DEMANDCATEGORYDEPARTEMENTCALCULATIONDEPARTEMENT_ID` FOREIGN KEY (`DEPARTEMENT_ID`) REFERENCES `departement` (`ID`),
  CONSTRAINT `DMANDCATEGORYDEPARTEMENTCALCULATIONDMANDCATEGORYID` FOREIGN KEY (`DEMANDCATEGORY_ID`) REFERENCES `demandcategory` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandcategorydepartementcalculation`
--

LOCK TABLES `demandcategorydepartementcalculation` WRITE;
/*!40000 ALTER TABLE `demandcategorydepartementcalculation` DISABLE KEYS */;
INSERT INTO `demandcategorydepartementcalculation` VALUES (1,1321.93,64769.61,133,1),(2,264.86,28646.12,133,2),(3,0.00,0.00,133,3),(4,784.72,7920.79,133,4),(5,0.00,0.00,133,5),(6,0.00,0.00,133,6),(7,801.57,768.39,133,8),(8,1323.20,68808.93,134,1),(9,267.38,30670.56,134,2),(10,0.00,0.00,134,3),(11,632.84,7313.29,134,4),(12,0.00,0.00,134,5),(13,0.00,0.00,134,6),(14,379.69,421.88,134,8),(22,2416.17,82299.01,136,1),(23,240.86,9527.45,136,2),(24,0.00,0.00,136,3),(25,515.72,10732.50,136,4),(26,0.00,0.00,136,5),(27,0.00,0.00,136,6),(28,379.69,421.88,136,8),(29,2978.67,90713.61,137,1),(30,240.86,9504.01,137,2),(31,0.00,0.00,137,3),(32,515.72,13432.50,137,4),(33,0.00,0.00,137,5),(34,0.00,0.00,137,6),(35,379.69,421.88,137,8),(36,2093.68,107430.28,138,1),(37,208.61,35392.36,138,2),(38,0.00,0.00,138,3),(39,784.72,11625.19,138,4),(40,0.00,0.00,138,5),(41,0.00,0.00,138,6),(42,801.57,768.39,138,8),(54,1868.68,101860.58,144,1),(55,264.86,35617.36,144,2),(56,0.00,0.00,144,3),(57,784.72,10545.19,144,4),(58,0.00,0.00,144,5),(59,0.00,0.00,144,6),(60,379.69,509.26,144,8),(61,759.40,10686.94,145,4),(66,647.47,18284.91,150,4),(69,638.65,4979.27,153,4),(71,461.84,13911.42,155,4),(79,213.75,1496.25,157,1),(80,171.48,27951.57,157,2),(81,0.00,0.00,157,3),(82,647.47,14386.11,157,4),(83,0.00,0.00,157,5),(84,0.00,0.00,157,6),(85,379.69,421.88,157,8),(87,3661.90,19797.50,159,3),(88,4764.50,272115.00,160,3),(89,4764.50,127547.50,161,3),(90,4764.50,144452.50,162,3),(91,4764.50,146929.00,163,3),(92,4764.50,146929.00,164,3),(93,2553.98,84612.84,165,1),(94,240.86,9517.14,165,2),(95,4764.50,197644.00,165,3),(96,515.72,11394.00,165,4),(97,114.00,135318.00,165,5),(98,0.00,0.00,165,6),(99,379.69,421.88,165,8),(100,2047.73,73201.65,166,1),(101,240.86,9527.45,166,2),(102,4764.50,146929.00,166,3),(103,471.16,8563.05,166,4),(104,114.00,135318.00,166,5),(105,0.00,0.00,166,6),(106,379.69,421.88,166,8),(107,584.78,26476.65,167,1),(108,264.86,6563.45,167,2),(109,4764.50,397301.00,167,3),(110,562.64,4233.94,167,4),(111,114.00,12426.00,167,5),(112,0.00,0.00,167,6),(113,590.63,553.45,167,8),(114,674.00,5980.00,169,5),(115,5000.00,5000.00,170,6),(116,2672.67,68758.02,171,1),(117,240.86,13580.25,171,2),(118,4764.50,209522.00,171,3),(119,515.72,11963.70,171,4),(120,692.00,101116.00,171,5),(121,5000.00,5000.00,171,6),(122,379.69,421.88,171,8);
/*!40000 ALTER TABLE `demandcategorydepartementcalculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandcategoryvalidation`
--

DROP TABLE IF EXISTS `demandcategoryvalidation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demandcategoryvalidation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SYSDATE` time DEFAULT NULL,
  `DEMANDCATEGORY_ID` bigint(20) DEFAULT NULL,
  `DEPARTEMENT_ID` bigint(20) DEFAULT NULL,
  `USER_LOGIN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DEMANDCATEGORYVALIDATION_DEPARTEMENT_ID` (`DEPARTEMENT_ID`),
  KEY `FK_DEMANDCATEGORYVALIDATION_USER_LOGIN` (`USER_LOGIN`),
  KEY `FK_DEMANDCATEGORYVALIDATION_DEMANDCATEGORY_ID` (`DEMANDCATEGORY_ID`),
  CONSTRAINT `FK_DEMANDCATEGORYVALIDATION_DEMANDCATEGORY_ID` FOREIGN KEY (`DEMANDCATEGORY_ID`) REFERENCES `demandcategory` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORYVALIDATION_DEPARTEMENT_ID` FOREIGN KEY (`DEPARTEMENT_ID`) REFERENCES `departement` (`ID`),
  CONSTRAINT `FK_DEMANDCATEGORYVALIDATION_USER_LOGIN` FOREIGN KEY (`USER_LOGIN`) REFERENCES `user` (`LOGIN`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandcategoryvalidation`
--

LOCK TABLES `demandcategoryvalidation` WRITE;
/*!40000 ALTER TABLE `demandcategoryvalidation` DISABLE KEYS */;
INSERT INTO `demandcategoryvalidation` VALUES (2,'17:14:33',134,NULL,'admin'),(4,'17:25:08',137,NULL,'admin'),(5,'10:30:23',138,NULL,'admin'),(7,'12:39:26',144,NULL,'admin'),(12,'21:09:04',153,NULL,'admin'),(13,'09:26:15',155,4,'pm'),(15,'09:40:27',157,NULL,'admin'),(17,'12:22:21',159,3,'mtietgen'),(18,'13:12:30',160,3,'mtietgen'),(19,'13:43:48',161,3,'mtietgen'),(20,'13:59:41',162,3,'mtietgen'),(21,'14:04:45',163,3,'mtietgen'),(22,'14:10:27',164,3,'mtietgen'),(23,'08:06:24',165,NULL,'admin'),(24,'08:07:37',166,NULL,'admin'),(25,'08:13:33',167,NULL,'admin'),(26,'09:18:44',169,5,'tenzmann'),(27,'09:25:01',169,NULL,'admin'),(28,'10:14:55',170,6,'mediait'),(29,'10:31:43',171,NULL,'admin');
/*!40000 ALTER TABLE `demandcategoryvalidation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departement`
--

DROP TABLE IF EXISTS `departement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departement` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departement`
--

LOCK TABLES `departement` WRITE;
/*!40000 ALTER TABLE `departement` DISABLE KEYS */;
INSERT INTO `departement` VALUES (1,'contentManagement'),(2,'datenManagement'),(3,'databasePublishing'),(4,'projectManagement'),(5,'assetManagement'),(6,'mediaIT'),(8,'InitialCosts');
/*!40000 ALTER TABLE `departement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departementcriteria`
--

DROP TABLE IF EXISTS `departementcriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departementcriteria` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `DEPARTEMENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DEPARTEMENTCRITERIA_DEPARTEMENT_ID` (`DEPARTEMENT_ID`),
  CONSTRAINT `FK_DEPARTEMENTCRITERIA_DEPARTEMENT_ID` FOREIGN KEY (`DEPARTEMENT_ID`) REFERENCES `departement` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departementcriteria`
--

LOCK TABLES `departementcriteria` WRITE;
/*!40000 ALTER TABLE `departementcriteria` DISABLE KEYS */;
INSERT INTO `departementcriteria` VALUES (1,'Allgemein',1),(2,'Reda',1),(3,'Reda Online',1),(4,'Informatica',1),(5,'LK MG Korrektur',1),(6,'Pruefungen',1),(7,'Sonstiges',1),(8,'Fremdsprachen',1),(9,'Masterlist',2),(10,'Datenbeschaffung',2),(11,'Preisbeschaffung',2),(12,'ASD',2),(13,'Informatica',2),(14,'Sprache',2),(15,'Fixkosten',3),(16,'1.Datenimport',3),(17,'2. Datenimport',3),(18,'Druckdatenerstellung',3),(19,'Sonstiges',3),(20,'ECC',3),(21,'Produktaufnahme einer Produktgruppe',5),(22,'Fotoshootings',5),(23,'Lizenz',5),(24,'Konzeption',6),(25,'Programmierung',6),(27,'Initial Kosten, diesen fallen unabhängig vom Endprodukt immer an',8),(28,'Projektmanagement Leistungen:',4),(29,'Abbildung',5),(31,'Bildbearbeitung',5);
/*!40000 ALTER TABLE `departementcriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departementcriteriaitem`
--

DROP TABLE IF EXISTS `departementcriteriaitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departementcriteriaitem` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ARITHMITIQUEEXPRESIONFORGLOBALPRICE` varchar(255) DEFAULT NULL,
  `ARITHMITIQUEEXPRESIONFORUNITEPRICE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DESCRIPTIONGLOBAL` varchar(255) DEFAULT NULL,
  `DEPARTEMENTCRITERIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DEPARTEMENTCRITERIAITEM_DEPARTEMENTCRITERIA_ID` (`DEPARTEMENTCRITERIA_ID`),
  CONSTRAINT `FK_DEPARTEMENTCRITERIAITEM_DEPARTEMENTCRITERIA_ID` FOREIGN KEY (`DEPARTEMENTCRITERIA_ID`) REFERENCES `departementcriteria` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departementcriteriaitem`
--

LOCK TABLES `departementcriteriaitem` WRITE;
/*!40000 ALTER TABLE `departementcriteriaitem` DISABLE KEYS */;
INSERT INTO `departementcriteriaitem` VALUES (1,'8*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Erstellung Datenpflegeguide','8*Std_Satz',1),(2,'6*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Erstellung Redaktionsguide','6*Std_Satz',1),(3,'1*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','1*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Katalog Reda_Vorausgabe kopieren','1*Std_Satz',2),(4,'8*demandCategory.getUmfang()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/100','demandCategory.getUmfang()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/100','PDF-Generator Reda','8*AnzahlGesamtSeiten*Std_Satz/100 (100Seiten/Tag)',2),(5,'10*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Pauschale 8std Prüfung, 2 Std Redaktion Abstimmung','10*Std_Satz',9),(6,'8*demandCategory.getAnzahlNeueArtikel()*demandCategory.getlKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*demandCategory.getProzess().getValuee()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/90','8*demandCategory.getlKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*demandCategory.getProzess().getValuee()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/90','Klassifizierung Neuheiten Information ','8*Anzahl_Artikel_Neu* LK_Schlüssel*Korrekturschlüssel*Prozessschlüssel*std_satz/90',13),(7,'3*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Masterlisten Prüfung','3*Std_Satz',1),(8,'8*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Testdaten bereitstellen','8*Std_Satz',1),(11,'demandCategory.getAnzahlGesamtArtikel()*0.3*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/60','0.3*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/60','Preis Artikel Reda-Online Pflege','0.3*AnzahlGesamtArtikel*Std_Satz/60 (0.3Min/Art)',3),(12,'16*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Pauschale Online Pflege(2 Tage)','16*Std_Satz ',3),(13,'demandCategory.getUmfang()*8*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/70','8*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/70','PDF Generator Informatica ','8*AnzahlGesamtSeiten*Std_Satz/70 (70 Seiten/Tag)',4),(14,'0.5*demandCategory.getAnzahlLieferantNeu()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','0.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Lieferantenkorrektur Versand','0.5*AnzahlNeueLieferante*Std_Satz',5),(15,'0.25*(demandCategory.getAnzahlMitglieder())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue())','0.25*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Mitgliederkorrektur Versand','0.25*AnzahlMitglieder*Std_Satz',5),(16,'(demandCategory.getAnzahlGesamtProdukt())*(demandCategory.getKatalogart().getValuee())*(demandCategory.getCorrectionSchluessel().getValue())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/10)','(demandCategory.getKatalogart().getValuee())*(demandCategory.getCorrectionSchluessel().getValue())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/10)','Redaktionelle Text Veredlung der Basis Text für Gesamt Produkte','AnzahlGesamtProdukt*KatalogartSchluessel*CorrectionSchluessel*Std_Satz/10',2),(17,'(demandCategory.getAnzahlNeueProdukt())*(demandCategory.getKatalogart().getValuee())*(demandCategory.getCorrectionSchluessel().getValue())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/5)','(demandCategory.getKatalogart().getValuee())*(demandCategory.getCorrectionSchluessel().getValue())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/5)','Redaktionelle Textveredlung der Basistext für neue Produkte ','AnzahlNeueProdukte*KatalogartSchluessel*CorrectionSchluessel*Std_Satz/10',2),(19,'(demandCategory.getAnzahlNeueProdukt())*(demandCategory.getKatalogart().getValuee())*(demandCategory.getCorrectionSchluessel().getValue())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/5)','(demandCategory.getKatalogart().getValuee())*(demandCategory.getCorrectionSchluessel().getValue())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/5)','Redaktionelle Textveredlung der Basistext neue Produkte','AnzahlNeueProdukte*KatalogartSchluessel*CorrectionSchluessel*Std_Satz/5',4),(20,'(demandCategory.getAnzahlGesamtProdukt())*(demandCategory.getKatalogart().getValuee())*(demandCategory.getCorrectionSchluessel().getValue())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/10)','(demandCategory.getKatalogart().getValuee())*(demandCategory.getCorrectionSchluessel().getValue())*(configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/10)','Redaktionelle Textveredlung der Basistext Gesamtanzahl Produkte','AnzahlGesamtProdukt*KatalogartSchluessel*CorrectionSchluessel*Std_Satz/10',4),(21,'demandCategory.getAnzahlGesamtArtikel()*demandCategory.getlKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/10','demandCategory.getlKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/10','redaktionelle Korrektur inkl. Einarbeitung LK','(AnzahlGesamtArtikel*LK_Faktor*CorrectionSchluessel)/(10*AnzahlArtikelPerPageFaktor)',5),(22,'(demandCategory.getAnzahlGesamtArtikel()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue())/30','(configurationItemFacade.findByName(\'std_stz\').getDefaultValue())/30','Korrekturlesen mit Kunden','AnzahlGesamtArtikel*Std_Satz/AnzahlArtikelPerPageFaktor*30',5),(23,'(demandCategory.getAnzahlGesamtArtikel()*demandCategory.getmKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue())/10','(demandCategory.getmKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue())/10','Redaktionelle Korrekturlesen inkl. MK','AnzahlGesamtArtikel*MK_Faktor*CorrectionSchluesse*Std_Satzl/(AnzahlArtikelPerPageFaktor*10)',5),(24,'(demandCategory.getAnzahlGesamtArtikel()*demandCategory.getlKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue())/15','(demandCategory.getlKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue())/15','Redaktionelle Korrekturlesen Digiphase','AnzahlGesamtArtikel*LK_Faktor*CorrectionSchluesse*Std_Satzl/(AnzahlArtikelPerPageFaktor*15)',5),(25,'(demandCategory.getAnzahlGesamtArtikel()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue())/30','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/30','Großplott Prüfung','AnzahlGesamtArtikel*Std_Satz/(30*ArtikelperPageFaktor)',6),(26,'demandCategory.getAnzahlKapitetel ()*2.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','2.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Preisprüfung aus Satz, KG-Nummer, etc','2.5*AnzahlKapitel*Std_Satz',6),(27,'demandCategory.getAnzahlGesamtProdukt ()*0.005*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','0.005*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Erstellung IVZ/Synonympflege','0,005*AnzahlGesamtProdukt*Std_Satz',7),(28,'1.5*8*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Pauschale ECC Publikationskonfigurator bei LL','1.5*8*Std_Satz',7),(29,'8*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Pauschale Fotoshootings Teilnahme Redakteur (1 Tag)','8*Std_Satz',7),(30,'demandCategory.getUmfang()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/19','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/19','Korrektorat (P. Mensch extern)','(AnzahlGesamtseiten*Std_Satz)/19',7),(31,'demandCategory.getAnzahlKapitetel()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/2.5','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/2.5','Übersetzungsmanagement Marketingdaten','AnzahKapitel*STd_Satz/2,5',8),(32,'4*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/2.5','Pauschale Übersetzunsmanagement ','4*Std_Satz',8),(33,'0.25*demandCategory.getAnzahlNeueProdukt()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/60','0.25*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/60','Datenbeschaffung pro Produkt Neuheit','0.25*AnzahlGesamtProdukte*Std_Satz/60',10),(34,'demandCategory.getAnzahlNeueArtikel()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/200','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/200','Datenbeschaffung pro Artikel Neuheit','AnzahNeueArtikel*Std_Satz/200',10),(35,'0.5*demandCategory.getAnzahlLieferantNeu()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','0.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Datenbeschaffung pro Lieferanten Neuheit ','0.5*AnzahlNeueLieferanten*Std_Satz',10),(36,'4*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Pauschale Preisbeschaffung (1/2 Tag)','4*std_Satz',11),(37,'0.5*demandCategory.getAnzahlLieferantNeu()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','0.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Preisbechaffung pro Lieferanten Neuheit ','0.5*AnzahlNeueLieferante*Std_Satz',11),(38,'demandCategory.getAnzahlLieferantGesamt()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/6.25','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/6.25','Preisbeschaffung Lieferanten Gesamt (6,25 lf/std)','AnzahlLieferantGesamt*Std_Satz/6.25',11),(39,'4*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Pauschale Preisprüfung (1/2 Tag)','4*STd_Satz',11),(40,'demandCategory.getAnzahlGesamtArtikel()*demandCategory.getCorrectionSchluessel().getValue()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/200','demandCategory.getCorrectionSchluessel().getValue()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/200','Stammdatenpflege (ASD, Modul)','AnzahlGesamtArtikel*KorrekturSchlüessel*Std_Satz/200',12),(41,'demandCategory.getAnzahlGesamtArtikel()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/1000','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/1000','Übersetzungsmanagement Stammdaten (1000 Art/std)','AnzahlGesamtArtikel*std_Satz/1000',14),(42,'demandCategory.getAnzahlBeteiligten()','4.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Abstimmungsgespräche','4.5*AnzahlBeteiligten*Std_Satz',27),(43,'demandCategory.getBearbeitungszeit()','demandCategory.getBearbeitungszeit()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Termin Überwachung: Festsatz/Laufzeit in Monaten / Stunde pro Monat (1h)  ','Bearbeitungszeit*Anzahl_Beteiligten*Szd_Satz',27),(44,'demandCategory.getAnzahlBeteiligten()*demandCategory.getBearbeitungszeit()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/4','demandCategory.getBearbeitungszeit()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/4','Budget Überwachung: Festsatz/Laufzeit in Monaten / Stunde pro Monat (15min)  ','AnzahlBeteiligten*Bearbeitungszeit*Std_Satz/4',27),(45,'0.25*demandCategory.getBearbeitungszeit()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','0.25*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Berichtswesen: Festsatz/Laufzeit in Monaten / Stunde pro Monat (0,25 h)  ','0.25*Bearbeitungszeit*Std_Satz',27),(46,'6*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Pauschale Projektplanung = 6 std','6*Std_Satz',27),(47,'1.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Pauschale Projektvorbereitung = 1,5 std','1.5*Std_Satz',27),(48,'12*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()*demandCategory.getAusgabe().getValuee()*demandCategory.getWechselfassungVariantFaktor().getValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()*demandCategory.getAusgabe().getValuee()*demandCategory.getWechselfassungVariantFaktor().getValue()','Pauschale Kalkulation inkl. Prüfschleife und Abstimmung GF','12*std_Satz*KatalogartFakt*WechselfssungFaktor*AusgabeFaktor',28),(49,'6*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()*demandCategory.getAusgabe().getValuee()*demandCategory.getWechselfassungVariantFaktor().getValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()*demandCategory.getAusgabe().getValuee()*demandCategory.getWechselfassungVariantFaktor().getValue()','Nachkalkulation zur Druckvergabe','6*std_Satz*KatalogartFakt*WechselfssungFaktor*AusgabeFaktor',28),(50,'3.6*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getWechselfassungVariantFaktor().getValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getWechselfassungVariantFaktor().getValue()','Bestellformular inkl. Baukastenanhang erstellen und prüfen','3,6*Std_Satz*Wechselfassung_Faktor',28),(51,'8*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()','Planung inkl. Prüfschleifen und Freigaben',' 8*Std_Satz *KatalogartFaktor',28),(52,'3*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Händlerabwicklung',' 3*StdSatz',28),(53,'4*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()','Präsentationserstellung','4*Std_Satz*KatalogartFaktor',28),(54,'0.55*demandCategory.getTeilnehmerZahl()* demandCategory.getTeilnehmerZahlPricing()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()','0.55*demandCategory.getTeilnehmerZahlPricing()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getKatalogart().getValuee()','Händlerabwicklung','0.55*TeilnehmerAnzahl * KataloartFaktor* TeilnehmerzahlFaktor * PreisproTeilnehmer (da 0,55std/Teilnehmer)',28),(55,'4*0.45*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getBearbeitungszeit()','0.45*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getBearbeitungszeit()','Dokumentation',' 4* (0,45*Std_Satz * Produktionszeit)',28),(58,'0.04*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getUmfang()','0.04*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Digitales Archiv','0,04*Std_Satz* Anzahl_Seiten_Gesamt',28),(59,'0.008*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getUmfang()','0.008*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Druckformschreibung','0,008*Std_Satz*Anzahl_Seiten_Gesamt',28),(60,'4.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getWechselfassungVariantFaktor().getValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getWechselfassungVariantFaktor().getValue()','Druckabnahme','4,5*Std_Satz * Wechselfassung_Faktor',28),(61,'5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getWechselfassungVariantFaktor().getValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getWechselfassungVariantFaktor().getValue()','Verarbeitungsüberwachung','5*Std_Satz*WechselfassungVarianteaktor',28),(62,'0.13*demandCategory.getTeilnehmerZahl()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getTeilnehmerZahlPricing()','0.13*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getTeilnehmerZahlPricing()','Weiterberchnung (Vorbereitung und Durchführung)','Anzahl_Teilnehmer * PricePerTeilnehmer(ist 0.13*std_Satz)* Teilnhemerzahl_faktor',28),(63,'3*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()','Endabrechnung (Pauschal)','3*Std_Satz',28),(64,'2.5*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getTeilnehmerZahlPricing()','configurationItemFacade.findByName(\'std_stz\').getDefaultValue()*demandCategory.getTeilnehmerZahlPricing()','Erstellung und Auswertung von Befragungen (Pauschal)','2,5* Std_Satz*TeilnehmerFaktor',28),(65,'8*demandCategory.getAnzahlNeueArtikel()*demandCategory.getlKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*demandCategory.getProzess().getValuee()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/30','8*demandCategory.getlKSchluesselFaktor()*demandCategory.getCorrectionSchluessel().getValue()*demandCategory.getProzess().getValuee()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/30','Basisdatenpflege Neuheiten Information','8*Anzahl_Artikel_Neu* LK_Schlüssel*Korrekturschlüssel*Prozessschlüssel*std_satz/30',13),(66,'8*demandCategory.getAnzahlBestandArtikel()*demandCategory.getCorrectionSchluessel().getValue()*demandCategory.getProzess().getValuee()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/90','8*demandCategory.getCorrectionSchluessel().getValue()*demandCategory.getProzess().getValuee()*configurationItemFacade.findByName(\'std_stz\').getDefaultValue()/90','Basis Datenpflege Bestand Artikel','8*AzahlBestandArtikel*Korrektuschluessek*Prozessschluessel*Std_Satz/90',13),(67,'2*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Ermittlung des Seitenumfanges','2*Std_Stz_dtp',15),(68,'24*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Katalog-Check inkl. Expertise ','24*Std_Stz_dtp',15),(69,'8*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Interner Kick-Off','8*Std_Stz_dtp',15),(70,'16*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Statussitzungen','16*Std_Stz_dtp',15),(71,'4*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Bildpflege und Verwaltung Fotolia','4*Std_Stz_dtp',15),(72,'12*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Bildkonzeption und -shootbegleitung','12*Std_Stz_dtp',15),(73,'0.25*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','CD-Verwaltung/Datenrückführung','0.25*Std_Stz_dtp (15 min)',15),(74,'','','Styleguide','16*Std_Stz_dtp (Erstausgabe) // 8*Std_Stz_dtp (Folgeausgabe)',15),(75,'','','Vorstufenbriefing','8*Std_Stz_dtp (Erstausgabe) // 1.6*Std_Stz_dtp (Folgeausgabe)',15),(76,'4*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Vorstufenbetreuung','4*Std_Stz_dtp',15),(77,'4*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Vorspann- und Baukasten','4*Std_Stz_dtp',15),(78,'750','750','Umschlagerstellung (Grundumschlag)','Konstante = 750',15),(79,'80*configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','configurationItemFacade.findByName(\'std_stz_dtp\').getDefaultValue()','Programmierung','80*Std_Stz_dtp',15),(80,'','','Konzeptertellung','Auf Anfrage',15),(81,'1.90*demandCategory.getUmfang()','1.90','Konzeptpauschale',' Anzahl Gesamt Seiten * PreisPerSeite',15),(82,'1500','1500','Übernahme Layoutprogrammierung/Testarbeiten','Pauschale 1500.00',15),(83,'1600','1600','Layoutfreigabe','Pauschale 1600.00',15),(84,'','','Seitengenerierung',' Anzahl_Seiten_Genrierung * PreisPerSeite',16),(85,'120*demandCategory.getAnzahlSonderSeiten()','120','Sonderseitenerstellung (manueller Aufbau)','AnzahlSonderseiten * PreisPerSeite',16),(86,'','','Seitennachbearbeitung','Anzahl_Seiten_Genrierung * PricePerSeite',16),(87,'1*(demandCategory.getAnzahlSonderSeiten()+demandCategory.getAnzahlGenerierungUpdateSeiten())','1','Screen PDFs 150 dpi (bei Comet 4 automatisiert über Server','( Anzahl_SeitenGenerierung + Anzahl_Sonderseiten) * PricePerSeite',16),(88,'','','Korrekturlauf inkl. Korrektor','( Anzahl_SeitenGenerierung + Anzahl_Sonderseiten) * PricePerSeite',16),(89,'','','Aktualisierung per Datenübernahme (bei Comet 4 über Redaktion) ','Anzahl_SeitenGenerierung_Update * PricePerseite',17),(90,'','','Seitennachbearbeitung/ Korrekturen ausführen','Anzahl_GesamtSeiten * PricePerSeite',17),(91,'2.50*demandCategory.getUmfang()','2.50','Erstellen Print PDFs für Digitalandruck (bei Comet 4 automatisiert über Server) ','Anzahl_GesamtSeiten * PricePerSeite',17),(92,'','','Aktualisierung per Datenübernahme (Teilupdate auf Seitenbasis) (bei Comet 4 über Redaktion) ','(Anzahl_SeitenGenerierung_Update/2) * PricePerseite',18),(93,'','','Seitennachbearbeitung/ Korrekturen ausführen','(Anzahl_SeitenGenerierung_Update/2) * PricePerseite',18),(94,'2.50*demandCategory.getUmfang()','2.50','Datenbereitstellung für CTP (Print-PDF) (bei Comet 4 automatisiert über Server) ','(Anzahl_SeitenGesamt) * PricePerseite',18),(95,'','','Großplott-Korrekturen ','10%_Anzahl_Gesamtseiten * PricePerSeite',19),(96,'3.50*demandCategory.getUmfang()','3.50','Datenbereitstellung nach Projektende ','Anzahl_GesamtSeiten * PricePerSeite',19),(97,'1.50* demandCategory.getAnzahlGenerierungUpdateSeiten()','1.50','Bereitstellung einer Excel-Liste (ArtikelNr && Seitenzahl)','Anzahl_SeitenGenerierung * PricePerSeite',19),(98,'25*demandCategory.getAnzahlIHVZSeiten()','25.00','Erstellung/Generierung Inhaltsverzeichnis','Anzahl_IhV * PricePerSeite',19),(99,'','25.00','Erstellung/Generierung ArtikelNrverzeichnis','Anzahl_ArtikelNrVer (10???)* PricePerSeite',19),(100,'5.60*demandCategory.getUmfang()','5.60','Seitenrahmenlayout wechseln','Anzahl_GesamtSeiten * PricePerSeite',19),(101,'6.50*demandCategory.getUmfang()','6.50','Update von Preisen','Anzahl_GesamtSeiten * PricePerSeite',19),(102,'6.50*demandCategory.getUmfang()','6.50','Update von BestellNr','Anzahl_GesamtSeiten * PricePerSeite',19),(103,'6.50*demandCategory.getUmfang()','6.50','Update von KG-Nummer ','Anzahl_GesamtSeiten * PricePerSeite',19),(104,'6.50*demandCategory.getUmfang()','6.50','Update von Lieferkennzeichen','Anzahl_GesamtSeiten * PricePerSeite',19),(105,'','','Nachbearbeitung nach Fremdsprachenupdate ohne Sortimentsveränderungen ','Anzahl_GesamtSeiten * PricePerSeite',19),(106,'','','ECC Aufbereitung','',20),(107,'','','ECC Administration','',20),(108,'57*demandCategory.getAnzahlGesamtProdukt()','57.00','Bilder',' Preis/Bild * Anzahl Bilder(Produkte)',21),(109,'57*demandCategory.getAnzahlGesamtProdukt()','57.00','Animation',' Preis/Animation * Anzahl Bilder(Produkte)',21),(110,'8*configurationItemFacade.findByName(\'std_satz_fotograf\').getDefaultValue()','configurationItemFacade.findByName(\'std_satz_fotograf\').getDefaultValue()','Fotograf inkl. Assistenz (8Std)','Anzah_Std * Std_Satz_Fotograf',22),(111,'8*configurationItemFacade.findByName(\'std_satz_kind_model\').getDefaultValue()','configurationItemFacade.findByName(\'std_satz_kind_model\').getDefaultValue()','Mit Kind als Model(8Std)','Anzah_Std * Std_Satz_Kind_Model',22),(112,'8*configurationItemFacade.findByName(\'std_satz_erwachsene_model\').getDefaultValue()','configurationItemFacade.findByName(\'std_satz_erwachsene_model\').getDefaultValue()','Mit Erwachsene als Model(8Std)','Anzah_Std * Std_Satz_Erwachsene_Model',22),(113,'','','Cover','Auf Anfrage',23),(114,'125*demandCategory.getAnzahlGesamtProdukt()','125.00','Tif, Vollformat, 300 dpi','PreisPerBild * Anzahl_Bilder',29),(115,'50*demandCategory.getAnzahlGesamtProdukt()','50.00','jpg, lange Seite 10 cm, 300 dpi','PreisPerBild * Anzahl_Bilder',29),(116,'23*demandCategory.getAnzahlGesamtProdukt()','23.00','Abbildung_jpg, 72 dpi ','PreisPerBild * Anzahl_Bilder',29),(117,'10*demandCategory.getAnzahlNeueProdukt()','10.00','Freistellung','PreisPerBild * Anzahl_Bilder( Anzahl_Neue_Produkte)',31),(118,'9*demandCategory.getAnzahlNeueProdukt()','9.00','Leichte Retusche ','PreisPerBild * Anzahl_Bilder( Anzahl_Neue_Produkte)',31),(119,'9*demandCategory.getAnzahlNeueProdukt()','9.00','Sonstige Bearbeitung ','PreisPerBild * Anzahl_Bilder( Anzahl_Neue_Produkte)',31),(120,'2*demandCategory.getAnzahlNeueProdukt()','2.00','Eimspielung / Abspeichern nach E/D/E Norm','PreisPerBild * Anzahl_Bilder( Anzahl_Neue_Produkte)',31),(121,'','','Umfangreiche Retusche','Auf Anfrage',31),(122,'5000.00','5000.00','Anpassung und Support von bestehende Programmierung','Pauschale 10 Arbeitstage',25);
/*!40000 ALTER TABLE `departementcriteriaitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `ID` bigint(20) NOT NULL,
  `BROWSER` varchar(255) DEFAULT NULL,
  `DEVICECATEGORIE` varchar(255) DEFAULT NULL,
  `OPERATINGSYSTEM` varchar(255) DEFAULT NULL,
  `USER_LOGIN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'CHROME 59.0.3071.114','Personal computer','Windows','walo'),(51,'CHROME 59.0.3071.115','Personal computer','Windows','walo'),(101,'SAFARI 10.1.1','Personal computer','OS X','admin'),(153,'SAFARI 10.1.1','Personal computer','OS X','pm'),(312,'SAFARI 10.1.1','Personal computer','OS X','AM'),(653,'SAFARI 10.1.1','Personal computer','OS X','mtietgen'),(857,'SAFARI 10.1.1','Personal computer','OS X','tenzmann'),(1103,'SAFARI 10.1.1','Personal computer','OS X','mediait');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farbigkeit`
--

DROP TABLE IF EXISTS `farbigkeit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `farbigkeit` (
  `ID` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farbigkeit`
--

LOCK TABLES `farbigkeit` WRITE;
/*!40000 ALTER TABLE `farbigkeit` DISABLE KEYS */;
INSERT INTO `farbigkeit` VALUES ('1/1 -farbig',NULL,NULL),('2/2 -farbig',NULL,NULL),('3/3 -farbig',NULL,NULL),('4/4 c',NULL,NULL);
/*!40000 ALTER TABLE `farbigkeit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formatauswaehlen`
--

DROP TABLE IF EXISTS `formatauswaehlen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formatauswaehlen` (
  `ID` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formatauswaehlen`
--

LOCK TABLES `formatauswaehlen` WRITE;
/*!40000 ALTER TABLE `formatauswaehlen` DISABLE KEYS */;
INSERT INTO `formatauswaehlen` VALUES ('A4',NULL,NULL),('A5',NULL,NULL),('A6',NULL,NULL),('E5PLUS',NULL,NULL),('F1926',NULL,NULL);
/*!40000 ALTER TABLE `formatauswaehlen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historiqueconnexionuser`
--

DROP TABLE IF EXISTS `historiqueconnexionuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historiqueconnexionuser` (
  `ID` bigint(20) NOT NULL,
  `CONNEXION` tinyint(1) DEFAULT '0',
  `DATEACTION` datetime DEFAULT NULL,
  `USER_LOGIN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiqueconnexionuser`
--

LOCK TABLES `historiqueconnexionuser` WRITE;
/*!40000 ALTER TABLE `historiqueconnexionuser` DISABLE KEYS */;
INSERT INTO `historiqueconnexionuser` VALUES (2,1,'2017-08-01 00:41:42','walo'),(52,1,'2017-08-01 00:50:15','walo'),(102,1,'2017-08-01 13:42:45','admin'),(151,1,'2017-08-01 13:44:15','admin'),(152,0,'2017-08-01 13:50:02','admin'),(154,1,'2017-08-01 13:50:08','pm'),(201,1,'2017-08-01 17:10:22','admin'),(202,0,'2017-08-01 17:11:01','admin'),(203,1,'2017-08-01 17:11:05','pm'),(204,0,'2017-08-01 17:11:14','pm'),(205,1,'2017-08-01 17:11:18','admin'),(206,0,'2017-08-01 17:25:31','admin'),(207,1,'2017-08-01 17:25:36','pm'),(208,0,'2017-08-01 17:33:51','pm'),(209,1,'2017-08-01 17:34:38','admin'),(210,1,'2017-08-02 09:17:19','admin'),(251,1,'2017-08-02 10:21:19','admin'),(252,1,'2017-08-02 10:46:45','admin'),(253,0,'2017-08-02 11:03:46','admin'),(254,1,'2017-08-02 11:03:52','pm'),(255,1,'2017-08-02 12:13:04','admin'),(257,0,'2017-08-02 12:18:03','admin'),(258,1,'2017-08-02 12:18:09','admin'),(301,1,'2017-08-02 12:33:09','admin'),(302,0,'2017-08-02 12:34:06','admin'),(303,1,'2017-08-02 12:34:15','pm'),(304,0,'2017-08-02 12:37:16','pm'),(305,1,'2017-08-02 12:37:20','admin'),(306,0,'2017-08-02 12:41:07','admin'),(307,1,'2017-08-02 12:41:17','admin'),(308,0,'2017-08-02 12:41:36','admin'),(309,1,'2017-08-02 12:41:48','admin'),(310,1,'2017-08-02 13:05:28','admin'),(311,0,'2017-08-02 13:06:54','admin'),(313,1,'2017-08-02 13:06:59','AM'),(314,0,'2017-08-02 13:08:05','AM'),(315,1,'2017-08-02 13:09:13','admin'),(316,1,'2017-08-02 13:54:28','admin'),(351,1,'2017-08-02 20:34:08','admin'),(401,1,'2017-08-02 20:49:35','pm'),(451,1,'2017-08-02 21:00:30','pm'),(452,0,'2017-08-02 21:08:26','pm'),(453,1,'2017-08-02 21:08:30','admin'),(501,1,'2017-08-02 21:13:24','admin'),(551,1,'2017-08-02 21:14:21','admin'),(601,1,'2017-08-03 09:24:14','pm'),(602,0,'2017-08-03 09:31:51','pm'),(603,1,'2017-08-03 09:31:59','admin'),(604,0,'2017-08-03 09:58:14','admin'),(605,1,'2017-08-03 09:58:18','pm'),(606,0,'2017-08-03 09:58:22','pm'),(607,1,'2017-08-03 09:58:25','admin'),(608,1,'2017-08-03 10:40:32','admin'),(651,1,'2017-08-03 11:29:33','admin'),(652,0,'2017-08-03 11:37:18','admin'),(654,1,'2017-08-03 11:37:24','mtietgen'),(655,0,'2017-08-03 11:37:30','mtietgen'),(656,1,'2017-08-03 11:37:38','mtietgen'),(657,0,'2017-08-03 11:38:15','mtietgen'),(658,1,'2017-08-03 11:38:20','admin'),(659,0,'2017-08-03 11:41:40','admin'),(660,1,'2017-08-03 11:41:50','mtietgen'),(661,0,'2017-08-03 11:43:23','mtietgen'),(662,1,'2017-08-03 11:43:27','admin'),(663,1,'2017-08-03 12:18:20','admin'),(664,0,'2017-08-03 12:21:06','admin'),(665,1,'2017-08-03 12:21:18','mtietgen'),(666,0,'2017-08-03 12:28:10','mtietgen'),(667,1,'2017-08-03 12:28:14','admin'),(668,1,'2017-08-03 12:49:59','admin'),(669,1,'2017-08-03 13:10:04','admin'),(670,0,'2017-08-03 13:11:41','admin'),(671,1,'2017-08-03 13:11:47','mtietgen'),(672,0,'2017-08-03 13:17:45','mtietgen'),(673,1,'2017-08-03 13:17:49','admin'),(680,0,'2017-08-03 13:40:45','admin'),(681,1,'2017-08-03 13:41:23','mtietgen'),(682,0,'2017-08-03 13:42:01','mtietgen'),(683,1,'2017-08-03 13:42:08','admin'),(684,0,'2017-08-03 13:43:00','admin'),(685,1,'2017-08-03 13:43:09','mtietgen'),(701,1,'2017-08-03 13:56:38','mtietgen'),(702,0,'2017-08-03 14:03:39','mtietgen'),(703,1,'2017-08-03 14:03:43','admin'),(704,0,'2017-08-03 14:04:06','admin'),(705,1,'2017-08-03 14:04:13','mtietgen'),(706,0,'2017-08-03 14:09:22','mtietgen'),(707,1,'2017-08-03 14:09:26','admin'),(708,0,'2017-08-03 14:09:50','admin'),(709,1,'2017-08-03 14:09:59','mtietgen'),(710,0,'2017-08-03 14:15:29','mtietgen'),(711,1,'2017-08-03 14:15:35','admin'),(751,1,'2017-08-03 14:44:46','admin'),(752,1,'2017-08-03 15:04:52','admin'),(801,1,'2017-08-04 08:04:43','admin'),(802,0,'2017-08-04 08:08:04','admin'),(851,1,'2017-08-04 08:11:04','admin'),(852,0,'2017-08-04 08:40:27','admin'),(853,1,'2017-08-04 08:40:31','admin'),(854,0,'2017-08-04 08:42:31','admin'),(855,1,'2017-08-04 08:42:36','admin'),(856,0,'2017-08-04 08:46:40','admin'),(858,1,'2017-08-04 08:46:47','tenzmann'),(859,0,'2017-08-04 08:46:52','tenzmann'),(860,1,'2017-08-04 08:46:59','tenzmann'),(861,0,'2017-08-04 08:51:22','tenzmann'),(862,1,'2017-08-04 08:51:27','admin'),(901,1,'2017-08-04 09:14:35','tenzmann'),(902,0,'2017-08-04 09:14:46','tenzmann'),(903,1,'2017-08-04 09:14:51','admin'),(904,0,'2017-08-04 09:15:05','admin'),(905,1,'2017-08-04 09:15:11','tenzmann'),(951,1,'2017-08-04 09:17:36','tenzmann'),(1001,1,'2017-08-04 09:18:19','tenzmann'),(1051,1,'2017-08-04 09:20:02','tenzmann'),(1052,0,'2017-08-04 09:23:52','tenzmann'),(1053,1,'2017-08-04 09:23:56','admin'),(1101,1,'2017-08-04 09:47:40','admin'),(1102,0,'2017-08-04 09:48:48','admin'),(1104,1,'2017-08-04 09:48:54','mediait'),(1105,0,'2017-08-04 09:49:00','mediait'),(1106,1,'2017-08-04 09:49:07','mediait'),(1151,1,'2017-08-04 09:56:01','admin'),(1152,0,'2017-08-04 10:14:27','admin'),(1153,1,'2017-08-04 10:14:36','mediait'),(1201,1,'2017-08-04 10:24:22','admin'),(1251,1,'2017-08-04 10:25:43','admin'),(1264,0,'2017-08-04 11:21:11','admin'),(1301,1,'2017-08-04 11:21:35','admin'),(1351,1,'2017-08-06 18:56:24','admin'),(1401,1,'2017-08-06 18:58:27','admin'),(1451,1,'2017-08-06 19:07:54','admin'),(1501,1,'2017-08-06 19:11:23','admin'),(1503,0,'2017-08-06 19:13:19','admin'),(1504,1,'2017-08-06 19:13:23','admin'),(1551,1,'2017-08-06 19:15:20','admin'),(1552,0,'2017-08-06 19:17:49','admin'),(1553,1,'2017-08-06 19:17:53','admin'),(1554,0,'2017-08-06 19:18:30','admin'),(1555,1,'2017-08-06 19:18:35','admin'),(1601,1,'2017-08-06 19:38:39','admin'),(1651,1,'2017-08-06 19:49:18','admin'),(1701,1,'2017-08-06 19:53:27','admin'),(1751,1,'2017-08-06 19:55:48','admin'),(1801,1,'2017-08-06 20:09:37','admin'),(1851,1,'2017-08-06 20:15:38','admin'),(1901,1,'2017-08-06 20:20:05','admin'),(1915,0,'2017-08-06 20:37:01','admin'),(1916,1,'2017-08-06 20:37:05','admin'),(1951,1,'2017-08-06 20:53:46','admin'),(1955,0,'2017-08-06 21:00:15','admin'),(1956,1,'2017-08-06 21:01:23','admin'),(2001,1,'2017-08-06 22:48:22','admin'),(2002,1,'2017-08-06 22:53:55','admin'),(2051,1,'2017-08-06 23:04:38','admin'),(2101,1,'2017-08-06 23:08:58','admin'),(2151,1,'2017-08-06 23:10:05','admin'),(2201,1,'2017-08-07 08:09:52','admin'),(2251,1,'2017-08-07 08:19:57','admin'),(2252,1,'2017-08-07 08:50:44','admin'),(2301,1,'2017-08-07 09:57:13','admin');
/*!40000 ALTER TABLE `historiqueconnexionuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `katalogart`
--

DROP TABLE IF EXISTS `katalogart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `katalogart` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALUEE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `katalogart`
--

LOCK TABLES `katalogart` WRITE;
/*!40000 ALTER TABLE `katalogart` DISABLE KEYS */;
INSERT INTO `katalogart` VALUES (1,'Lagerliste',1.00),(2,'E/D/E Katalog',1.10),(3,'Individueller Katalog',1.15),(4,'Fremdsprachen Katalog',1.00),(51,'Preisliste',1.00);
/*!40000 ALTER TABLE `katalogart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konzeptbearbeitungfaktor`
--

DROP TABLE IF EXISTS `konzeptbearbeitungfaktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konzeptbearbeitungfaktor` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `WERT` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konzeptbearbeitungfaktor`
--

LOCK TABLES `konzeptbearbeitungfaktor` WRITE;
/*!40000 ALTER TABLE `konzeptbearbeitungfaktor` DISABLE KEYS */;
INSERT INTO `konzeptbearbeitungfaktor` VALUES (1,'Ja',1.35),(2,'Nein',1.00);
/*!40000 ALTER TABLE `konzeptbearbeitungfaktor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALUEE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,'Einfach',1.00),(2,'Standard',1.10),(3,'Komplex',1.15),(52,'individuelles',1.70);
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutpricing`
--

DROP TABLE IF EXISTS `layoutpricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutpricing` (
  `ID` bigint(20) NOT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `DEPARTEMENTCRITERIAITEM_ID` bigint(20) DEFAULT NULL,
  `LAYOUT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_LAYOUTPRICING_DEPARTEMENTCRITERIAITEM_ID` (`DEPARTEMENTCRITERIAITEM_ID`),
  KEY `FK_LAYOUTPRICING_LAYOUT_ID` (`LAYOUT_ID`),
  CONSTRAINT `FK_LAYOUTPRICING_DEPARTEMENTCRITERIAITEM_ID` FOREIGN KEY (`DEPARTEMENTCRITERIAITEM_ID`) REFERENCES `departementcriteriaitem` (`ID`),
  CONSTRAINT `FK_LAYOUTPRICING_LAYOUT_ID` FOREIGN KEY (`LAYOUT_ID`) REFERENCES `layout` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutpricing`
--

LOCK TABLES `layoutpricing` WRITE;
/*!40000 ALTER TABLE `layoutpricing` DISABLE KEYS */;
INSERT INTO `layoutpricing` VALUES (674,10.00,84,1),(675,12.00,84,2),(676,14.00,84,3),(677,20.00,86,1),(678,25.00,86,2),(679,35.00,86,3),(1252,11.50,88,1),(1253,11.50,88,2),(1254,14.00,88,3),(1255,10.00,89,1),(1256,12.00,89,2),(1257,14.00,89,3),(1258,15.00,90,1),(1259,17.00,90,2),(1260,25.00,90,3),(1264,20.00,86,1),(1265,25.00,86,2),(1266,35.00,86,3),(1267,15.00,95,1),(1268,15.00,95,2),(1269,16.00,95,3),(1270,10.00,105,1),(1271,12.50,105,2),(1272,12.50,105,3);
/*!40000 ALTER TABLE `layoutpricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitgliederkorrekturfaktor`
--

DROP TABLE IF EXISTS `mitgliederkorrekturfaktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mitgliederkorrekturfaktor` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `WERT` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitgliederkorrekturfaktor`
--

LOCK TABLES `mitgliederkorrekturfaktor` WRITE;
/*!40000 ALTER TABLE `mitgliederkorrekturfaktor` DISABLE KEYS */;
INSERT INTO `mitgliederkorrekturfaktor` VALUES (2,'Ja',1.05),(3,'Nein',1.00);
/*!40000 ALTER TABLE `mitgliederkorrekturfaktor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papiermaterialauswaehlen`
--

DROP TABLE IF EXISTS `papiermaterialauswaehlen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papiermaterialauswaehlen` (
  `ID` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papiermaterialauswaehlen`
--

LOCK TABLES `papiermaterialauswaehlen` WRITE;
/*!40000 ALTER TABLE `papiermaterialauswaehlen` DISABLE KEYS */;
INSERT INTO `papiermaterialauswaehlen` VALUES ('65 g/qm',NULL,NULL),('70 g/qm',NULL,NULL),('80 g/qm',NULL,NULL),('85 g/qm',NULL,NULL);
/*!40000 ALTER TABLE `papiermaterialauswaehlen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantfaktor`
--

DROP TABLE IF EXISTS `participantfaktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participantfaktor` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PERCENT` int(11) DEFAULT NULL,
  `WERT` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantfaktor`
--

LOCK TABLES `participantfaktor` WRITE;
/*!40000 ALTER TABLE `participantfaktor` DISABLE KEYS */;
INSERT INTO `participantfaktor` VALUES (1,20,1.00),(2,21,1.00),(3,36,1.00);
/*!40000 ALTER TABLE `participantfaktor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRODUCT_CATEGORY_ID` (`CATEGORY_ID`),
  CONSTRAINT `FK_PRODUCT_CATEGORY_ID` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,NULL,'Premium EWZ',1),(2,NULL,'Fortis WZ',1),(3,NULL,'Industrietechnik',1),(4,NULL,'Baugerät',1),(5,NULL,'LL Gartentechnik',1),(6,NULL,'Plus1 Nachdruck',1),(7,'','Haustechnik 2017',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prozess`
--

DROP TABLE IF EXISTS `prozess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prozess` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALUEE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prozess`
--

LOCK TABLES `prozess` WRITE;
/*!40000 ALTER TABLE `prozess` DISABLE KEYS */;
INSERT INTO `prozess` VALUES (5,'Proz.Neu / Tech.Alt',1.20),(6,'Prozess.Neu / Tech.Neu',1.00);
/*!40000 ALTER TABLE `prozess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `ID` bigint(20) NOT NULL,
  `QUESTION` varchar(255) DEFAULT NULL,
  `REPONSE` varchar(255) DEFAULT NULL,
  `USER_LOGIN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'your city','rabat','walo'),(2,'your city','rabat','walo'),(3,'your city','rabat','walo');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `ID` bigint(20) NOT NULL,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (51,'Ja',1.00),(2003,'Nein',0.00);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schluessel`
--

DROP TABLE IF EXISTS `schluessel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schluessel` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `WERT` decimal(10,2) DEFAULT NULL,
  `SCHLUESSELTYPE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SCHLUESSEL_SCHLUESSELTYPE_ID` (`SCHLUESSELTYPE_ID`),
  CONSTRAINT `FK_SCHLUESSEL_SCHLUESSELTYPE_ID` FOREIGN KEY (`SCHLUESSELTYPE_ID`) REFERENCES `schluesseltype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schluessel`
--

LOCK TABLES `schluessel` WRITE;
/*!40000 ALTER TABLE `schluessel` DISABLE KEYS */;
INSERT INTO `schluessel` VALUES (1,'Hier soll BIld oder Beschreibung','Einfach',1.00,2),(2,'Hier soll BIld oder Beschreibung','Standard',1.00,2),(3,'Hier soll BIld oder Beschreibung','Komplex',1.00,2),(4,'Hier soll BIld oder Beschreibung','Erstausgabe',1.00,1),(5,'Hier soll BIld oder Beschreibung','Folgeausgabe',0.00,1),(6,'Hier soll BIld oder Beschreibung','Lagerliste',1.00,3),(7,'Hier soll BIld oder Beschreibung','E/D/E Katalog',1.00,3),(8,'Hier soll BIld oder Beschreibung','Individueller Katalog',1.00,3),(9,'Hier soll BIld oder Beschreibung','Fremdsprachen-Katalog',1.00,3),(10,NULL,'Proz.neu / Tech. Alt',1.00,4),(11,NULL,'Proz.neu / Tech.Neu',1.00,4),(12,NULL,'Datenmanagemnt',56.00,5),(13,NULL,'Contentmanagement',56.00,5),(14,NULL,'Assetmanagement',56.00,5),(15,NULL,'Allgemein',56.00,5),(16,'rettest','',1.00,6);
/*!40000 ALTER TABLE `schluessel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schluesseltype`
--

DROP TABLE IF EXISTS `schluesseltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schluesseltype` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schluesseltype`
--

LOCK TABLES `schluesseltype` WRITE;
/*!40000 ALTER TABLE `schluesseltype` DISABLE KEYS */;
INSERT INTO `schluesseltype` VALUES (1,'Ausgabe'),(2,'Layout'),(3,'Katalogart'),(4,'Prozess/Technik'),(5,'Kostenschlüssel'),(6,'taoufik_key');
/*!40000 ALTER TABLE `schluesseltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seiten`
--

DROP TABLE IF EXISTS `seiten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seiten` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NBREPAGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seiten`
--

LOCK TABLES `seiten` WRITE;
/*!40000 ALTER TABLE `seiten` DISABLE KEYS */;
INSERT INTO `seiten` VALUES (78,1),(79,2),(80,4),(81,8),(82,16),(83,24),(84,32),(85,64),(86,80),(87,100),(88,148),(89,200),(90,244),(91,300),(92,324),(93,400),(94,452),(95,500),(96,548),(97,600),(98,644),(99,700),(100,752),(101,800),(102,852),(103,900),(104,964),(105,1000),(106,1056),(107,1104),(108,1152),(109,1200),(110,1264),(111,1312),(112,1360),(113,1408),(114,1472),(115,1504),(116,1568),(117,1600),(118,1680),(119,1760);
/*!40000 ALTER TABLE `seiten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('SEQ_GEN',2350);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sortiment`
--

DROP TABLE IF EXISTS `sortiment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sortiment` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ARTIKELPERPAGE` decimal(10,2) DEFAULT NULL,
  `LKSCHLUESSEL` decimal(10,2) DEFAULT NULL,
  `MKSCHLUESSEL` decimal(10,2) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PRODUCTSCHLUESSEL` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sortiment`
--

LOCK TABLES `sortiment` WRITE;
/*!40000 ALTER TABLE `sortiment` DISABLE KEYS */;
INSERT INTO `sortiment` VALUES (1,15.80,1.10,1.05,'Arbeitsschutz',4.70),(2,16.10,1.00,1.00,'Baubeschläge',4.80),(3,8.40,1.00,1.00,'Baugeräte',2.50),(4,26.90,1.00,1.00,'Befestigungstechnik',8.00),(5,12.10,1.10,1.05,'Betriebseinrichtungen',3.60),(6,5.38,1.15,1.08,'Elektrowerkzeuge',1.60),(7,5.70,1.00,1.00,'Gartentechnik',2.00),(8,11.10,1.00,1.01,'Handwerkzeuge',3.30),(9,6.10,1.00,1.00,'Haustechnik/Innendeko/Elektroinstallation',1.80),(10,17.50,1.00,1.00,'Industrietechnik',5.20),(11,9.10,1.00,1.00,'Möbelbeschläge',2.70),(12,10.00,1.05,1.03,'Präzisionswerkzeuge',7.60),(13,9.10,1.08,1.04,'Schweißtechnik',2.70),(14,12.40,1.00,1.00,'Verpackungen',3.70),(15,5.70,1.05,1.05,'Werkstattmaterial',1.70),(16,11.10,1.03,1.01,'Werkzeuge Holzbearbeitung',3.30),(17,11.10,1.03,1.01,'Werkzeuge Metallbearbeitung',3.30);
/*!40000 ALTER TABLE `sortiment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sotimentitem`
--

DROP TABLE IF EXISTS `sotimentitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sotimentitem` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `WERT` decimal(10,2) DEFAULT NULL,
  `DEMANDCATEGORY_ID` bigint(20) DEFAULT NULL,
  `SORTIMENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SOTIMENTITEM_SORTIMENT_ID` (`SORTIMENT_ID`),
  KEY `FK_SOTIMENTITEM_DEMANDCATEGORY_ID` (`DEMANDCATEGORY_ID`),
  CONSTRAINT `FK_SOTIMENTITEM_DEMANDCATEGORY_ID` FOREIGN KEY (`DEMANDCATEGORY_ID`) REFERENCES `demandcategory` (`ID`),
  CONSTRAINT `FK_SOTIMENTITEM_SORTIMENT_ID` FOREIGN KEY (`SORTIMENT_ID`) REFERENCES `sortiment` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sotimentitem`
--

LOCK TABLES `sotimentitem` WRITE;
/*!40000 ALTER TABLE `sotimentitem` DISABLE KEYS */;
INSERT INTO `sotimentitem` VALUES (57,100.00,34,1),(58,100.00,35,1),(62,100.00,39,4),(64,100.00,41,2),(65,100.00,42,7),(66,100.00,43,9),(67,100.00,44,9),(68,100.00,45,3),(71,100.00,48,6),(72,100.00,49,4),(73,100.00,50,4),(74,100.00,51,5),(75,10.00,52,6),(76,90.00,52,5),(77,100.00,53,3),(81,100.00,57,2),(82,100.00,58,4),(83,100.00,59,3),(93,100.00,69,6),(95,100.00,71,3),(96,100.00,72,3),(97,100.00,73,3),(100,100.00,76,5),(105,100.00,81,5),(117,90.00,93,5),(118,10.00,93,4),(119,100.00,94,5),(121,100.00,96,5),(122,40.00,97,5),(123,60.00,97,4),(124,100.00,98,6),(125,100.00,99,4),(129,100.00,103,9),(132,100.00,106,9),(133,100.00,107,9),(157,100.00,131,5),(165,100.00,136,6),(167,100.00,138,10),(174,100.00,145,5),(179,100.00,150,3),(182,100.00,153,7),(184,100.00,155,4),(186,100.00,157,9),(189,100.00,160,7),(190,100.00,161,10),(191,100.00,162,6),(192,100.00,163,4),(193,100.00,164,6),(194,100.00,165,6),(195,100.00,166,6),(196,100.00,167,10),(198,100.00,169,10),(199,100.00,170,3),(200,100.00,171,12);
/*!40000 ALTER TABLE `sotimentitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teilnehmerzahlpricing`
--

DROP TABLE IF EXISTS `teilnehmerzahlpricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teilnehmerzahlpricing` (
  `ID` bigint(20) NOT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `TEILNEHMERZAHLMAX` int(11) DEFAULT NULL,
  `TEILNEHMERZAHLMAXOPERATOR` varchar(255) DEFAULT NULL,
  `TEILNEHMERZAHLMIN` int(11) DEFAULT NULL,
  `TEILNEHMERZAHLMINOPERATOR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teilnehmerzahlpricing`
--

LOCK TABLES `teilnehmerzahlpricing` WRITE;
/*!40000 ALTER TABLE `teilnehmerzahlpricing` DISABLE KEYS */;
INSERT INTO `teilnehmerzahlpricing` VALUES (1,1.00,20,'<=',0,'>='),(2,1.20,35,'<=',20,'>'),(3,1.35,100000,'<=',35,'>');
/*!40000 ALTER TABLE `teilnehmerzahlpricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umschlagfarbigkeit`
--

DROP TABLE IF EXISTS `umschlagfarbigkeit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umschlagfarbigkeit` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umschlagfarbigkeit`
--

LOCK TABLES `umschlagfarbigkeit` WRITE;
/*!40000 ALTER TABLE `umschlagfarbigkeit` DISABLE KEYS */;
INSERT INTO `umschlagfarbigkeit` VALUES (1,NULL,'1/0-fbg. Skala',92.03),(2,NULL,'1/0-Sonderfarbe',92.03),(3,NULL,'2/0-fbg. Skala',168.72),(4,NULL,'2/0-fbg. Skala+1 Sonderfarbe',168.72),(5,NULL,'3/0-fbg. Skala',245.41),(6,NULL,'3/0-fbg. Skala+1 Sonderfarbe',245.41),(7,NULL,'4/0-fbg. Skala',322.10),(8,NULL,'4/1-fbg. Skala',414.13),(9,NULL,'4/2-fbg. Skala',490.82),(10,NULL,'5/0-fbg. Skala+1 Sonderfarbe',398.79),(11,NULL,'6/0-fbg. Skala+2 Sonderfarbe',475.48),(12,NULL,'7/0-fbg. Skala+3 Sonderfarbe',552.17),(13,NULL,'5/1-fbg. Skala+1 Sonderfarbe',490.82),(14,NULL,'5/2-fbg. Skala+1 Sonderfarbe',567.51),(15,NULL,'5/3-fbg. Skala+1 Sonderfarbe',644.20),(16,NULL,'5/4-fbg. Skala+1 Sonderfarbe',720.89),(17,NULL,'5/5-fbg. Skala+1 Sonderfarbe',797.58),(18,NULL,'4/3-fbg. Skala',567.51),(19,NULL,'4/4-fbg. Skala',644.20);
/*!40000 ALTER TABLE `umschlagfarbigkeit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umschlagpapierauswaehlen`
--

DROP TABLE IF EXISTS `umschlagpapierauswaehlen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umschlagpapierauswaehlen` (
  `ID` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umschlagpapierauswaehlen`
--

LOCK TABLES `umschlagpapierauswaehlen` WRITE;
/*!40000 ALTER TABLE `umschlagpapierauswaehlen` DISABLE KEYS */;
/*!40000 ALTER TABLE `umschlagpapierauswaehlen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umschlagtitel`
--

DROP TABLE IF EXISTS `umschlagtitel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umschlagtitel` (
  `ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umschlagtitel`
--

LOCK TABLES `umschlagtitel` WRITE;
/*!40000 ALTER TABLE `umschlagtitel` DISABLE KEYS */;
/*!40000 ALTER TABLE `umschlagtitel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `LOGIN` varchar(255) NOT NULL,
  `ADMIN` int(11) DEFAULT NULL,
  `BLOCKED` int(11) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MDPCHANGED` tinyint(1) DEFAULT '0',
  `NBRCNX` int(11) DEFAULT NULL,
  `NOM` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PRENOM` varchar(255) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `DEPARTEMENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`LOGIN`),
  KEY `FK_USER_DEPARTEMENT_ID` (`DEPARTEMENT_ID`),
  CONSTRAINT `FK_USER_DEPARTEMENT_ID` FOREIGN KEY (`DEPARTEMENT_ID`) REFERENCES `departement` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin',1,0,'admin@ede.de',1,0,'Admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','Admin','012345',NULL),('ana',0,0,'ana',1,0,'ana','b6d4a89ccde3fb8fc69865ac105801287867cf735adf0b8bbca86ee9186f7b64','ana','00000',1),('anas',0,0,'user@gmail.com',1,0,'anas','c157889e0fd5d7fc0d9a8d951fd64604ebeeb441de6519433dd8f931493dd5da','anas','06',1),('dmd',0,0,'',1,3,'dm','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','','',2),('kiki',1,0,'kiki',1,0,'kiki','888da5db853449fff82b07cbdbf7c755ece0783aa670bb36cc5c4cc9a68fb864','kiki','kiki',NULL),('kkk',0,0,'k',0,0,'kkkk','503afc4bd66d51aeda05cbcdbf07ad0d560d03fe0819f365629c48299e92b539','k','k',NULL),('mbrauer',0,0,'Mandy. Brauer@ede.de',0,0,'Brauer','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','Mandy','+49 202 6096-3079',2),('mediait',0,0,'',1,0,'mediait','7b136cfd7e928ddf278620c5c9d3450ef7a713340399440401134c9e36e316c6','','',6),('mediIT',0,0,'mediIT@ede.de',1,0,'','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','','',6),('mschwandt',1,0,'Michaela. Schwandt@ede.de',0,0,'Schwandt','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','Michaela','+49 202 6096-249',NULL),('mtietgen',0,0,'michael.tietgen@ede.de',1,0,'Tietgen','7b136cfd7e928ddf278620c5c9d3450ef7a713340399440401134c9e36e316c6','Michael','',3),('pm',0,0,'pm@ede.de',1,0,'pm','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','pm','123456',4),('SScheuerer',0,0,'Stefan. Scheuerer@ede.de',0,0,'Scheuerer ','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','Stefan','+49 202 6090-1218',1),('tenzmann',0,0,'',1,0,'Enzmann','7b136cfd7e928ddf278620c5c9d3450ef7a713340399440401134c9e36e316c6','Till','',5),('walo',1,0,'walo',1,0,'walo','41d119f6079d09b46a5c950a03b455c99ec6c9b6f1726401a52c85d0b17d4b54','walo','00000',NULL),('younes',1,0,'younes@gmail.com',1,0,'zouani','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','younes','06',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veredlung`
--

DROP TABLE IF EXISTS `veredlung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veredlung` (
  `ID` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veredlung`
--

LOCK TABLES `veredlung` WRITE;
/*!40000 ALTER TABLE `veredlung` DISABLE KEYS */;
/*!40000 ALTER TABLE `veredlung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wechselfassungvariantfaktor`
--

DROP TABLE IF EXISTS `wechselfassungvariantfaktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wechselfassungvariantfaktor` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EXPRESSION` varchar(255) DEFAULT NULL,
  `VALUE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wechselfassungvariantfaktor`
--

LOCK TABLES `wechselfassungvariantfaktor` WRITE;
/*!40000 ALTER TABLE `wechselfassungvariantfaktor` DISABLE KEYS */;
INSERT INTO `wechselfassungvariantfaktor` VALUES (1,'Ja',1.20),(2,'Nein',1.00);
/*!40000 ALTER TABLE `wechselfassungvariantfaktor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-07 10:01:21
