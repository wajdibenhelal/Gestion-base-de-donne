CREATE DATABASE  IF NOT EXISTS `stage` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `stage`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: stage
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb8u1

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
-- Table structure for table `SousD`
--

DROP TABLE IF EXISTS `SousD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SousD` (
  `ncinDG` int(11) NOT NULL,
  `ncinDT` int(11) NOT NULL,
  `ncinDA` int(11) NOT NULL,
  PRIMARY KEY (`ncinDG`,`ncinDT`,`ncinDA`),
  KEY `fk_SousDT_idx` (`ncinDT`),
  KEY `fk_SousDA_idx` (`ncinDA`),
  CONSTRAINT `fk_SousDG` FOREIGN KEY (`ncinDG`) REFERENCES `directeurG` (`ncin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SousDT` FOREIGN KEY (`ncinDT`) REFERENCES `directeurT` (`ncinDT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SousDA` FOREIGN KEY (`ncinDA`) REFERENCES `directeurA` (`ncinDA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SousD`
--

LOCK TABLES `SousD` WRITE;
/*!40000 ALTER TABLE `SousD` DISABLE KEYS */;
/*!40000 ALTER TABLE `SousD` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-22 19:32:31
