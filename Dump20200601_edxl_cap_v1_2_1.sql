-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: edxl_capv1_2
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Addresses` text,
  `Code` text,
  `DataCategory_Id` int(11) NOT NULL,
  `Identifier` text,
  `Incidents` text,
  `Language` text,
  `MsgType` enum('Alert','Update','Cancel','Ack','Error') NOT NULL,
  `Note` text,
  `References` text,
  `Restriction` text,
  `Scope` enum('Public','Restricted','Private') NOT NULL,
  `Sender` text,
  `Sent` datetime NOT NULL,
  `Source` text,
  `Status` enum('Actual','Exercise','System','Test','Draft') NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
INSERT INTO `alert` VALUES (1,'NULL','NULL',1,'NOAA-NWS-ALERTS-CA125838fsecfc.WinterStormWarning.-125838f803c0CA.EKAWSWEKA.d2e18d2b81b08f7bcd9e6fadde0ff6db','NULL','en-US','','Alert for CAZ107; CAZ108 (California) Issued by the National Weather Service','NULL','NULL','','w-nws.webmaster@noaa.gov','2017-01-22 22:31:08','nws','');
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `AreaIndex` int(11) NOT NULL AUTO_INCREMENT,
  `Altitude` text,
  `AreaDesc` text,
  `Ceiling` text,
  `Circle` text,
  `DataCategory_Id` int(11) NOT NULL,
  `Geocode` text,
  `Polygon` text,
  PRIMARY KEY (`AreaIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'NULL','CAZ107; CAZ108','NULL','NULL',3,'FIPS6, , UGC, CAZ107, UGC, CAZ108','39.99, -122.90 39.99, -123.54 40.80, -123.56 40.92, -123.60 40.92, -123.49 41.05, -123.41 41.09, -123.47 41.17, -123.40 41.13, -123.29 40.99, -122.94 41.08, -122.74 40.57, -123.95 41.33, -122.53 41.10, -122.46 40.70, -122.74 40.57, -122.71 40.36, -123.02 39.99, -122.90');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroleclaims`
--

DROP TABLE IF EXISTS `aspnetroleclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimType` text,
  `ClaimValue` text,
  `RoleId` varchar(767) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_AspNetRoleClaims_AspNetRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroleclaims`
--

LOCK TABLES `aspnetroleclaims` WRITE;
/*!40000 ALTER TABLE `aspnetroleclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroleclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(767) NOT NULL,
  `ConcurrencyStamp` text,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimType` text,
  `ClaimValue` text,
  `UserId` varchar(767) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_AspNetUserClaims_AspNetUsers_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(767) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `ConcurrencyStamp` text,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `LockoutEnd` timestamp NULL DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `PasswordHash` text,
  `PhoneNumber` text,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `SecurityStamp` text,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'alert'),(2,'info'),(3,'area'),(4,'resource');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datacategory`
--

DROP TABLE IF EXISTS `datacategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacategory` (
  `DataCategory_Id` int(11) NOT NULL AUTO_INCREMENT,
  `DataCategoryName` text,
  PRIMARY KEY (`DataCategory_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacategory`
--

LOCK TABLES `datacategory` WRITE;
/*!40000 ALTER TABLE `datacategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `datacategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `element`
--

DROP TABLE IF EXISTS `element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `element` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ElementName` text,
  `Required` tinyint(1) DEFAULT NULL,
  `Conditional` tinyint(1) DEFAULT NULL,
  `Repeatable` tinyint(1) DEFAULT NULL,
  `DataCategory_Id` int(11) DEFAULT NULL,
  `Datatype` text,
  `Datatype_Size` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `element`
--

LOCK TABLES `element` WRITE;
/*!40000 ALTER TABLE `element` DISABLE KEYS */;
/*!40000 ALTER TABLE `element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `InfoIndex` int(11) NOT NULL AUTO_INCREMENT,
  `Audience` text,
  `Category` enum('Geo','Met','Safety','Security','Rescue','Fire','Health','Transport','Infra','CBRNE','Other') NOT NULL,
  `Certainty` enum('Observed','Likely','Possible','Unlikely','Unknown') NOT NULL,
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
  `ResponseType` enum('Shelter','Evacuate','Prepare','Execute','Avoid','Monitor','Assess','AllClear','None') NOT NULL,
  `SenderName` text,
  `Severity` enum('Extreme','Severe','Moderate','Minor','Unknown') NOT NULL,
  `Urgency` enum('Immediate','Expected','Fuure','Past','Unknown') NOT NULL,
  `Web` text,
  `language` text,
  PRIMARY KEY (`InfoIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'NULL','Geo','Observed','NULL',2,'SHOWER COVERAGE WILL CONTINUE DIMINISH THROUGH THE REMAINDER OF THE AFTERNOON...BUT BURSTS OF LIGHT SNOW CAN BE EXPECTED AT ELEVATIONS AT OR ABOVE 3500 FEET WITH LIGHT ACCUMULATIONS POSSIBLE... HEAVY SNOW WILL RETURN TO ELEVATIONS OF 3000 OR HIGHER OVERNIGHT SATURDAY THROUGH SUNDAY MORNING. SNOW SHOWERS WILL CONTINUE PERIODICALLY THROUGH MONDAY...WINTER STORM WARNING REMAINS IN EFFECT UNTIL NOON PST SUNDAY ABOVE 2500 FEET ... SNOW ACCUMULATIONS... 1 TO 4 NCHES BETWEEN 2500 AND 3000 FEET 4 TO 8 INCHES BETWEEN 3000 AND 4000 FEET, 8 TO 12 INCHES ABOVE 4000 FEET ...WITH LOCALLY HIGHER AMOUNT POSSIBLE. LOCATIONS IMPACTED...TRINITY CENTER...PEANUT...HETTENSHAW...RUTH...AND ELEVATED AREAS SURROUNDING WEAVERVILLE AND ... HAYFORK. HIGHWAYS IMPACTED...HIGHWAYS 36 AND3 WITH HIGH CERTAINTY. LIGHTER ACCUMULATIONS POSSIBLE AT BUCKHORN AND OREGON MOUNTAIN SUMMITS OF HIGHWAY 299. FOR A DETAILED VIEW OF THE HAZARD AREA ... VISIT HTTP://WWW.WEATHER.GOV/EUREKA/HAZARDS','2017-01-21 22:31:08','Winter Storm Warning','SAME,WSW','2017-01-22 12:00:00','Winter Storm Warning issued January 21 at 10:31PM PST until January 22 at 12:00PM PST by NWS Eureka','A WINTER STORM WARNING MEANS THERE IS HIGH CONFIDENCE THAT SIGNIFICANT SNOW, SLEET...OR ICE ACCUMULATIONS WILL IMPACT TRAVEL. CONTINUE TO MONITOR THE LATEST FORECASTS','2017-01-21 22:31:08','WMOHHEADER','','NWS Eureka (Northwest California Coast)','Severe','Immediate','NULL',NULL);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `PersonId` int(11) NOT NULL AUTO_INCREMENT,
  `PersonName` text,
  PRIMARY KEY (`PersonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `ResourceIndex` int(11) NOT NULL AUTO_INCREMENT,
  `DataCategory_Id` int(11) NOT NULL,
  `DerefUri` text,
  `Digest` text,
  `Info_Alert_Identifier` text,
  `MimeType` text,
  `ResourceDesc` text,
  `Size` int(11) NOT NULL,
  `Uri` text,
  PRIMARY KEY (`ResourceIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,4,'NULL','NULL','NOAA-NWS-ALERTS-CA1258388FSECFC.WinterStormWarning.125838f803C0CA.EKAWSWEKA.d2e18d2b81b08f7bcd9e6fadde0ff6ddb','NULL','NULL',0,'NULL');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewcategory`
--

DROP TABLE IF EXISTS `reviewcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewcategory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DataCategoryName` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewcategory`
--

LOCK TABLES `reviewcategory` WRITE;
/*!40000 ALTER TABLE `reviewcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviewcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01  6:17:50
