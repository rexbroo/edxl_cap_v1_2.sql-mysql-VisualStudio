-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: edxl_cap_v1_2
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `Element`
--

DROP TABLE IF EXISTS `Element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Element` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AlertId` int(11) DEFAULT NULL,
  `AreaIndex` int(11) DEFAULT NULL,
  `DataCategory_Id1` int(11) DEFAULT NULL,
  `ElementName` text,
  `InfoIndex` int(11) DEFAULT NULL,
  `ResourceIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Element_AlertId` (`AlertId`),
  KEY `IX_Element_AreaIndex` (`AreaIndex`),
  KEY `IX_Element_DataCategory_Id1` (`DataCategory_Id1`),
  KEY `IX_Element_InfoIndex` (`InfoIndex`),
  KEY `IX_Element_ResourceIndex` (`ResourceIndex`),
  CONSTRAINT `FK_Element_Alert_AlertId` FOREIGN KEY (`AlertId`) REFERENCES `Alert` (`Id`),
  CONSTRAINT `FK_Element_Area_AreaIndex` FOREIGN KEY (`AreaIndex`) REFERENCES `Area` (`AreaIndex`),
  CONSTRAINT `FK_Element_DataCategory_DataCategory_Id1` FOREIGN KEY (`DataCategory_Id1`) REFERENCES `DataCategory` (`DataCategory_Id`),
  CONSTRAINT `FK_Element_Info_InfoIndex` FOREIGN KEY (`InfoIndex`) REFERENCES `Info` (`InfoIndex`),
  CONSTRAINT `FK_Element_Resource_ResourceIndex` FOREIGN KEY (`ResourceIndex`) REFERENCES `Resource` (`ResourceIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Element`
--

LOCK TABLES `Element` WRITE;
/*!40000 ALTER TABLE `Element` DISABLE KEYS */;
/*!40000 ALTER TABLE `Element` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-26  9:27:57
