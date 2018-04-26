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
-- Table structure for table `Info`
--

DROP TABLE IF EXISTS `Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Info` (
  `InfoIndex` int(11) NOT NULL AUTO_INCREMENT,
  `Audience` text,
  `Category` int(11) NOT NULL,
  `Certainty` int(11) NOT NULL,
  `Contact` text,
  `DataCategory_Id` int(11) NOT NULL,
  `Description` text,
  `Effective` datetime NOT NULL,
  `Event` text,
  `EventCode` text,
  `Expires` datetime NOT NULL,
  `Headline` text,
  `Instruction` text,
  `Onset` datetime NOT NULL,
  `Parameter` text,
  `ResponseType` int(11) NOT NULL,
  `SenderName` text,
  `Severity` int(11) NOT NULL,
  `Urgency` int(11) NOT NULL,
  `Web` text,
  `language` text,
  PRIMARY KEY (`InfoIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Info`
--

LOCK TABLES `Info` WRITE;
/*!40000 ALTER TABLE `Info` DISABLE KEYS */;
INSERT INTO `Info` VALUES (1,'NULL',1,1,'NULL',2,'SHOWER COVERAGE WILL CONTINUE DIMINISH THROUGH THE REMAINDER OF THE AFTERNOON...BUT BURSTS OF LIGHT SNOW CAN BE EXPECTED AT ELEVATIONS AT OR ABOVE 3500 FEET WITH LIGHT ACCUMULATIONS POSSIBLE... HEAVY SNOW WILL RETURN TO ELEVATIONS OF 3000 OR HIGHER OVERNIGHT SATURDAY THROUGH SUNDAY MORNING. SNOW SHOWERS WILL CONTINUE PERIODICALLY THROUGH MONDAY...WINTER STORM WARNING REMAINS IN EFFECT UNTIL NOON PST SUNDAY ABOVE 2500 FEET ... SNOW ACCUMULATIONS... 1 TO 4 NCHES BETWEEN 2500 AND 3000 FEET 4 TO 8 INCHES BETWEEN 3000 AND 4000 FEET, 8 TO 12 INCHES ABOVE 4000 FEET ...WITH LOCALLY HIGHER AMOUNT POSSIBLE. LOCATIONS IMPACTED...TRINITY CENTER...PEANUT...HETTENSHAW...RUTH...AND ELEVATED AREAS SURROUNDING WEAVERVILLE AND ... HAYFORK. HIGHWAYS IMPACTED...HIGHWAYS 36 AND3 WITH HIGH CERTAINTY. LIGHTER ACCUMULATIONS POSSIBLE AT BUCKHORN AND OREGON MOUNTAIN SUMMITS OF HIGHWAY 299. FOR A DETAILED VIEW OF THE HAZARD AREA ... VISIT HTTP://WWW.WEATHER.GOV/EUREKA/HAZARDS','2017-01-21 22:31:08','Winter Storm Warning','SAME,WSW','2017-01-22 12:00:00','Winter Storm Warning issued January 21 at 10:31PM PST until January 22 at 12:00PM PST by NWS Eureka','A WINTER STORM WARNING MEANS THERE IS HIGH CONFIDENCE THAT SIGNIFICANT SNOW, SLEET...OR ICE ACCUMULATIONS WILL IMPACT TRAVEL. CONTINUE TO MONITOR THE LATEST FORECASTS','2017-01-21 22:31:08','WMOHHEADER',0,'NWS Eureka (Northwest California Coast)',2,1,'NULL',NULL);
/*!40000 ALTER TABLE `Info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-26  9:27:55
