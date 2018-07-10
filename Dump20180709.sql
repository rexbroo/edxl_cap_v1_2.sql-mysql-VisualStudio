-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: edxl_cap_v1_2
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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20180418022502_CreateIdentitySchema','2.0.2-rtm-10011'),('20180529193534_AddAlert_Identifier','2.0.2-rtm-10011'),('20180529230712_AddAlert_Identifier','2.0.2-rtm-10011'),('20180625161116_RollbackAdjustments','2.0.2-rtm-10011');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert` (
  `AlertIndex` int(11) NOT NULL AUTO_INCREMENT,
  `Alert_Identifier` text NOT NULL,
  `Addresses` text,
  `Code` text,
  `DataCategory_Id` int(11) NOT NULL,
  `Incidents` text,
  `MsgType` int(11) NOT NULL,
  `Note` text,
  `References` text,
  `Restriction` text,
  `Scope` int(11) NOT NULL,
  `Sender` text,
  `Sent` datetime NOT NULL,
  `Source` text,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`AlertIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
INSERT INTO `alert` VALUES (1,'NOAA-NWS-ALERTS-CA125838fsecfc.WinterStormWarning.125838f803c0CA.EKAWSWEKA.d2e18d2b81b08f7bcd9e6fadde0ff6db','NULL','NULL',1,'NULL',0,'Alert for CAZ107; CAZ108 (California) Issued by the National Weather Service','NULL','NULL',0,'w-nws.webmaster@noaa.gov','2017-01-22 22:31:08','nws',0),(2,'NOAA-NWS-ALERTS-CA125A9F5E174C.WinterWeatherAdvisory.125AA39AAE60CA.REVWSWREV.58c9bead01ca6732bc88705059f76f46','NULL','NULL',1,'NULL',0,'Alert for Mono (California) Issued by the National Weather Service','NULL','NULL',0,'w-nws.webmaster@noaa.gov','2018-04-30 03:03:00','nws',0),(3,'NOAA-NWS-ALERTS-AK125AA3AA1EB8.FloodAdvisory.125AA3B95FCCAK.AFCFLSAFC.026e2b11e582dbb6bd863dfa37b89739','NULL','NULL',1,'NULL',0,'Alert for Lower Kuskokwim Valley (Alaska) Issued by the National Weather Service','NULL','NULL',0,'w-nws.webmaster@noaa.gov','2018-05-02 11:18:00','nws',1);
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
  `Alert_Identifier` text NOT NULL,
  PRIMARY KEY (`AreaIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'NULL','CAZ107; CAZ108','NULL','NULL',3,'FIPS6, , UGC, CAZ107, UGC, CAZ108','39.99, -122.90 39.99, -123.54 40.80, -123.56 40.92, -123.60 40.92, -123.49 41.05, -123.41 41.09, -123.47 41.17, -123.40 41.13, -123.29 40.99, -122.94 41.08, -122.74 40.57, -123.95 41.33, -122.53 41.10, -122.46 40.70, -122.74 40.57, -122.71 40.36, -123.02 39.99, -122.90',''),(2,'NULL','Mono','NULL','NULL',3,'FIPS6,006051,UGC,CAZ073 ','NULL',''),(3,'NULL','Lower Kuskokwim Valley','NULL','NULL',3,'FIPS6,002050,UGC,AKZ152','61.53,-159.4 61.5,-159.81 61.6,-159.81 61.62,-159.4 61.53,-159.4','');
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
  `RoleId` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_IdentityRole<string>_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `identityrole<string>` (`Id`) ON DELETE CASCADE
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
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimType` text,
  `ClaimValue` text,
  `UserId` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_IdentityUser<string>_UserId` FOREIGN KEY (`UserId`) REFERENCES `identityuser<string>` (`Id`) ON DELETE CASCADE
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
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(200) NOT NULL,
  `ProviderKey` varchar(200) NOT NULL,
  `ProviderDisplayName` text,
  `UserId` varchar(200) NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_IdentityUser<string>_UserId` FOREIGN KEY (`UserId`) REFERENCES `identityuser<string>` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(200) NOT NULL,
  `RoleId` varchar(200) NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_IdentityRole<string>_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `identityrole<string>` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_IdentityUser<string>_UserId` FOREIGN KEY (`UserId`) REFERENCES `identityuser<string>` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusertokens`
--

DROP TABLE IF EXISTS `aspnetusertokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(200) NOT NULL,
  `LoginProvider` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Value` text,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_IdentityUser<string>_UserId` FOREIGN KEY (`UserId`) REFERENCES `identityuser<string>` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusertokens`
--

LOCK TABLES `aspnetusertokens` WRITE;
/*!40000 ALTER TABLE `aspnetusertokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusertokens` ENABLE KEYS */;
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
-- Table structure for table `edxlcapmsg`
--

DROP TABLE IF EXISTS `edxlcapmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edxlcapmsg` (
  `AlertIndex` int(11) NOT NULL,
  `Alert_Identifier` varchar(150) NOT NULL,
  `AreaIndex` int(11) NOT NULL,
  `InfoIndex` int(11) NOT NULL,
  `ResourceIndex` int(11) NOT NULL,
  `EdxlCapMsg_AlertIndex` int(11) DEFAULT NULL,
  `AlertIndex1` int(11) DEFAULT NULL,
  `EdxlCapMsgAlertIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`AlertIndex`),
  KEY `IX_EdxlCapMsg_EdxlCapMsgAlertIndex` (`EdxlCapMsg_AlertIndex`),
  KEY `IX_EdxlCapMsg_AlertIndex` (`EdxlCapMsg_AlertIndex`),
  KEY `IX_EdxlCapMsg_EdxlCapMsg_AlertIndex` (`EdxlCapMsg_AlertIndex`),
  KEY `FK_EdxlCapMsg_AlertIndex1` (`AlertIndex1`),
  KEY `FK_EdxlCapMsg_AreaIndex` (`AreaIndex`),
  KEY `FK_EdxlCapMsg_InfoIndex` (`InfoIndex`),
  KEY `FK_EdxlCapMsg_ResourceIndex` (`ResourceIndex`),
  CONSTRAINT `FK_EdxlCapMsg_AlertIndex` FOREIGN KEY (`EdxlCapMsg_AlertIndex`) REFERENCES `edxlcapmsg` (`AlertIndex`),
  CONSTRAINT `FK_EdxlCapMsg_AlertIndex1` FOREIGN KEY (`AlertIndex1`) REFERENCES `alert` (`AlertIndex`),
  CONSTRAINT `FK_EdxlCapMsg_Alert_AlertIndex` FOREIGN KEY (`AlertIndex`) REFERENCES `alert` (`AlertIndex`),
  CONSTRAINT `FK_EdxlCapMsg_AreaIndex` FOREIGN KEY (`AreaIndex`) REFERENCES `area` (`AreaIndex`) ON DELETE CASCADE,
  CONSTRAINT `FK_EdxlCapMsg_Area_AreaIndex` FOREIGN KEY (`AreaIndex`) REFERENCES `area` (`AreaIndex`),
  CONSTRAINT `FK_EdxlCapMsg_EdxlCapMsg_AlertIndex` FOREIGN KEY (`EdxlCapMsg_AlertIndex`) REFERENCES `edxlcapmsg` (`AlertIndex`),
  CONSTRAINT `FK_EdxlCapMsg_EdxlCapMsg_EdxlCapMsgAlertIndex` FOREIGN KEY (`EdxlCapMsg_AlertIndex`) REFERENCES `edxlcapmsg` (`AlertIndex`),
  CONSTRAINT `FK_EdxlCapMsg_InfoIndex` FOREIGN KEY (`InfoIndex`) REFERENCES `info` (`InfoIndex`) ON DELETE CASCADE,
  CONSTRAINT `FK_EdxlCapMsg_Info_InfoIndex` FOREIGN KEY (`InfoIndex`) REFERENCES `info` (`InfoIndex`),
  CONSTRAINT `FK_EdxlCapMsg_ResourceIndex` FOREIGN KEY (`ResourceIndex`) REFERENCES `resource` (`ResourceIndex`) ON DELETE CASCADE,
  CONSTRAINT `FK_EdxlCapMsg_Resource_ResourceIndex` FOREIGN KEY (`ResourceIndex`) REFERENCES `resource` (`ResourceIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edxlcapmsg`
--

LOCK TABLES `edxlcapmsg` WRITE;
/*!40000 ALTER TABLE `edxlcapmsg` DISABLE KEYS */;
INSERT INTO `edxlcapmsg` VALUES (1,'\'NOAA-NWS-ALERTS-CA125838fsecfc.WinterStormWarning.125838f803c0CA.EKAWSWEKA.d2e18d2b81b08f7bcd9e6fadde0ff6db\'',1,1,1,1,1,1),(2,'\'NOAA-NWS-ALERTS-CA125A9F5E174C.WinterWeatherAdvisory.125AA39AAE60CA.REVWSWREV.58c9bead01ca6732bc88705059f76f46\'',2,2,2,2,2,2),(3,'\'NOAA-NWS-ALERTS-AK125AA3AA1EB8.FloodAdvisory.125AA3B95FCCAK.AFCFLSAFC.026e2b11e582dbb6bd863dfa37b89739\'',3,3,3,3,3,3);
/*!40000 ALTER TABLE `edxlcapmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `element`
--

DROP TABLE IF EXISTS `element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `element` (
  `ElementIndex` int(11) NOT NULL AUTO_INCREMENT,
  `ElementName` text,
  `Required` tinyint(1) DEFAULT NULL,
  `Conditional` tinyint(1) DEFAULT NULL,
  `Repeatable` tinyint(1) DEFAULT NULL,
  `DataCategory_Id` int(11) DEFAULT NULL,
  `Datatype` text,
  `Datatype_Size` int(11) DEFAULT NULL,
  PRIMARY KEY (`ElementIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `element`
--

LOCK TABLES `element` WRITE;
/*!40000 ALTER TABLE `element` DISABLE KEYS */;
INSERT INTO `element` VALUES (1,'alert',1,0,0,1,'VARCHAR',150),(2,'identifier',1,0,0,1,'VARCHAR',150),(3,'sender',1,0,0,1,'VARCHAR',100),(4,'sent',1,0,0,1,'DATETIME',NULL),(5,'status',1,0,0,1,'ENUM',NULL),(6,'msgType',1,0,0,1,'ENUM',NULL),(7,'source',0,0,0,1,'VARCHAR',200),(8,'scope',0,0,0,1,'ENUM',NULL),(9,'restriction',0,0,0,1,'VARCHAR',200),(10,'addresses',0,0,0,1,'VARCHAR',50),(11,'code',0,0,1,1,'VARCHAR',150),(12,'note',0,0,0,1,'VARCHAR',150),(13,'references',0,0,0,1,'VARCHAR',150),(14,'incidents',0,0,0,1,'VARCHAR',150),(15,'info',0,0,0,2,'VARCHAR',150),(16,'language',0,0,0,2,'VARCHAR',10),(17,'category',0,0,1,2,'ENUM',10),(18,'event',0,1,0,2,'VARCHAR',50),(19,'responseType',0,0,1,2,'VARCHAR',50),(20,'urgency',1,1,0,2,'ENUM',NULL),(21,'severity',1,1,0,2,'ENUM',NULL),(22,'certainty',1,1,0,2,'ENUM',NULL),(23,'audience',0,0,0,2,'VARCHAR',50),(24,'eventCode',0,0,1,2,'VARCHAR',50),(25,'effective',0,0,0,2,'DATETIME',NULL),(26,'onset',0,0,0,2,'DATETIME',NULL),(27,'expires',0,0,0,2,'DATETIME',NULL),(28,'senderName',0,0,0,2,'VARCHAR',50),(29,'headline',0,1,0,2,'VARCHAR',160),(30,'description',0,0,0,2,'VARCHAR',1500),(31,'instruction',0,0,0,2,'VARCHAR',1500),(32,'web',0,1,0,2,'VARCHAR',150),(33,'contact',0,0,0,2,'VARCHAR',250),(34,'parameter',0,0,1,2,'VARCHAR',150),(35,'resource',0,0,1,4,'VARCHAR',150),(36,'resourceDesc',1,0,0,4,'VARCHAR',300),(37,'mimeType',0,1,0,4,'VARCHAR',100),(38,'size',0,0,0,4,'INT',10),(39,'uri',0,0,0,4,'VARCHAR',150),(40,'derefUri',0,0,0,4,'VARCHAR',150),(41,'digest',0,0,0,4,'VARCHAR',50),(42,'area',0,1,1,3,'VARCHAR',150),(43,'areaDesc',0,1,0,3,'VARCHAR',350),(44,'polygon',0,0,1,3,'VARCHAR',350),(45,'circle',0,0,1,3,'VARCHAR',50),(46,'geocode',0,0,1,3,'VARCHAR',50),(47,'altitude',0,0,0,3,'VARCHAR',50),(48,'ceiling',0,0,0,3,'VARCHAR',50);
/*!40000 ALTER TABLE `element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identityrole<string>`
--

DROP TABLE IF EXISTS `identityrole<string>`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identityrole<string>` (
  `Id` varchar(200) NOT NULL,
  `ConcurrencyStamp` text,
  `Discriminator` text NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identityrole<string>`
--

LOCK TABLES `identityrole<string>` WRITE;
/*!40000 ALTER TABLE `identityrole<string>` DISABLE KEYS */;
/*!40000 ALTER TABLE `identityrole<string>` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identityuser<string>`
--

DROP TABLE IF EXISTS `identityuser<string>`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identityuser<string>` (
  `Id` varchar(200) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `ConcurrencyStamp` text,
  `Discriminator` text NOT NULL,
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
-- Dumping data for table `identityuser<string>`
--

LOCK TABLES `identityuser<string>` WRITE;
/*!40000 ALTER TABLE `identityuser<string>` DISABLE KEYS */;
INSERT INTO `identityuser<string>` VALUES ('16410cda-9e6c-4833-b5f7-fd0596e03b05',0,'4e601dce-3ec4-443d-9442-292b46c4746c','ApplicationUser','rexbroo@gmail.com','\0','',NULL,'REXBROO@GMAIL.COM','REXBROO@GMAIL.COM','AQAAAAEAACcQAAAAEAwkKXWTj/RCoWk2sD5OQl8AAtoFRjYlGF3OfH7yDEosBCwRTBmfRA6e5lggmJJXMw==',NULL,'\0','2984faec-6c59-436b-9971-d6d1d9d90c51','\0','rexbroo@gmail.com');
/*!40000 ALTER TABLE `identityuser<string>` ENABLE KEYS */;
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
  `Alert_Identifier` text NOT NULL,
  PRIMARY KEY (`InfoIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'NULL',1,1,'NULL',2,'SHOWER COVERAGE WILL CONTINUE DIMINISH THROUGH THE REMAINDER OF THE AFTERNOON...BUT BURSTS OF LIGHT SNOW CAN BE EXPECTED AT ELEVATIONS AT OR ABOVE 3500 FEET WITH LIGHT ACCUMULATIONS POSSIBLE... HEAVY SNOW WILL RETURN TO ELEVATIONS OF 3000 OR HIGHER OVERNIGHT SATURDAY THROUGH SUNDAY MORNING. SNOW SHOWERS WILL CONTINUE PERIODICALLY THROUGH MONDAY...WINTER STORM WARNING REMAINS IN EFFECT UNTIL NOON PST SUNDAY ABOVE 2500 FEET ... SNOW ACCUMULATIONS... 1 TO 4 NCHES BETWEEN 2500 AND 3000 FEET 4 TO 8 INCHES BETWEEN 3000 AND 4000 FEET, 8 TO 12 INCHES ABOVE 4000 FEET ...WITH LOCALLY HIGHER AMOUNT POSSIBLE. LOCATIONS IMPACTED...TRINITY CENTER...PEANUT...HETTENSHAW...RUTH...AND ELEVATED AREAS SURROUNDING WEAVERVILLE AND ... HAYFORK. HIGHWAYS IMPACTED...HIGHWAYS 36 AND3 WITH HIGH CERTAINTY. LIGHTER ACCUMULATIONS POSSIBLE AT BUCKHORN AND OREGON MOUNTAIN SUMMITS OF HIGHWAY 299. FOR A DETAILED VIEW OF THE HAZARD AREA ... VISIT HTTP://WWW.WEATHER.GOV/EUREKA/HAZARDS','2017-01-21 22:31:08','Winter Storm Warning','SAME,WSW','2017-01-22 12:00:00','Winter Storm Warning issued January 21 at 10:31PM PST until January 22 at 12:00PM PST by NWS Eureka','A WINTER STORM WARNING MEANS THERE IS HIGH CONFIDENCE THAT SIGNIFICANT SNOW, SLEET...OR ICE ACCUMULATIONS WILL IMPACT TRAVEL. CONTINUE TO MONITOR THE LATEST FORECASTS','2017-01-21 22:31:08','WMOHHEADER',0,'NWS Eureka (Northwest California Coast)',2,1,'NULL','en-US',''),(2,'NULL',1,2,'NULL',2,'...WINTER WEATHER ADVISORY IN EFFECT FROM 8 PM THIS EVENING TO','2018-04-30 20:00:00','Winter Weather Advisory','SAME','2018-05-01 11:00:00','Winter Weather Advisory issued April 30 at 3:03AM PDT until May 01 at 11:00AM PDT by NWS Reno','Be sure to allow extra time to reach your destination. Leave','2018-04-30 20:00:00','WMOHEADER, ,UGC, CAZ073',1,'NWS Reno (Western Nevada)',3,2,'NULL','en-US',''),(3,'NULL',1,2,'NULL',2,'The National Weather Service in Anchorage has issued a','2018-05-02 11:18:00','Flood Advisory','SAME','2018-05-03 11:15:00','Flood Advisory issued May 02 at 11:18AM AKDT  by NWS Anchorage','Stay away or be swept away. River banks and culverts can become','2018-05-02 11:18:00','WMOHEADER,002050,UGC,AKZ152,VTEC,/O.NEW.PAFC.FA.Y.0003.180502T1918Z-180503T1915Z/00000.N.IJ.000000T0000Z.000000T0000Z.000000T0000Z.OO//',1,'NWS Anchorage (Southern Alaska - Anchorage)',4,2,'NULL','en-US','');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `PersonId` int(11) NOT NULL AUTO_INCREMENT,
  `PersonName` text,
  PRIMARY KEY (`PersonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
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
  `Alert_Identifier` text NOT NULL,
  PRIMARY KEY (`ResourceIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,4,'NULL','NULL','NOAA-NWS-ALERTS-CA1258388FSECFC.WinterStormWarning.125838f803C0CA.EKAWSWEKA.d2e18d2b81b08f7bcd9e6fadde0ff6ddb','NULL','NULL',0,'NULL',''),(2,4,'NULL','NULL','NOAA-NWS-ALERTS-CA125A9F5E174C.WinterWeatherAdvisory.125AA39AAE60CA.REVWSWREV.58c9bead01ca6732bc88705059f76f46','NULL','NULL',0,'NULL',''),(3,4,'NULL','NULL','NOAA-NWS-ALERTS-AK125AA3AA1EB8.FloodAdvisory.125AA3B95FCCAK.AFCFLSAFC.026e2b11e582dbb6bd863dfa37b89739','NULL','NULL',0,'NULL','');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 18:46:31
