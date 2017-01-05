-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `adres`
--

DROP TABLE IF EXISTS `adres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adres` (
  `IdAdres` int(11) NOT NULL AUTO_INCREMENT,
  `Dom` int(11) DEFAULT NULL,
  `Miasto` varchar(255) DEFAULT NULL,
  `Mieszkanie` int(11) DEFAULT NULL,
  `Ulica` varchar(255) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Zip2` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdAdres`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adres`
--

LOCK TABLES `adres` WRITE;
/*!40000 ALTER TABLE `adres` DISABLE KEYS */;
INSERT INTO `adres` VALUES (1,22,'Krakow',15,'Krakowska',30,698),(2,3,'Skawina',27,'Studencka',30,678);
/*!40000 ALTER TABLE `adres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (3);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kontakt`
--

DROP TABLE IF EXISTS `kontakt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kontakt` (
  `numer` varchar(255) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `Pesel` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`numer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontakt`
--

LOCK TABLES `kontakt` WRITE;
/*!40000 ALTER TABLE `kontakt` DISABLE KEYS */;
INSERT INTO `kontakt` VALUES ('6388584868410867264','Mateusz',12345678912),('7019580045779506884','Marcin',74185296312);
/*!40000 ALTER TABLE `kontakt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rachunek`
--

DROP TABLE IF EXISTS `rachunek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rachunek` (
  `IdRachunek` int(11) NOT NULL,
  `NrRachunku` varchar(255) DEFAULT NULL,
  `Pesel` bigint(20) DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `Waluta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdRachunek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rachunek`
--

LOCK TABLES `rachunek` WRITE;
/*!40000 ALTER TABLE `rachunek` DISABLE KEYS */;
INSERT INTO `rachunek` VALUES (1,'7019580045779506884',12345678912,2538.75,'PLN'),(2,'6388584868410867264',74185296312,0,'PLN');
/*!40000 ALTER TABLE `rachunek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer` (
  `IdTransfer` int(11) NOT NULL,
  `Nr1` varchar(255) DEFAULT NULL,
  `Nr2` varchar(255) DEFAULT NULL,
  `Wartosc` double DEFAULT NULL,
  PRIMARY KEY (`IdTransfer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES (1,'7019580045779506884','6388584868410867264',15.75),(2,'6388584868410867264','7019580045779506884',15.75);
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `IdAdres` int(11) NOT NULL AUTO_INCREMENT,
  `DataUrodzenia` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Haslo` varchar(255) DEFAULT NULL,
  `Imie` varchar(255) DEFAULT NULL,
  `Login` varchar(255) DEFAULT NULL,
  `Nazwisko` varchar(255) DEFAULT NULL,
  `NumerTel` varchar(255) DEFAULT NULL,
  `Pesel` bigint(20) DEFAULT NULL,
  `Rola` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdAdres`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'11/06/1994','marcin@poczta.pl','pass','Marcin','marcin','Migda','123456789',12345678912,NULL),(2,'04/25/1993','mateusz@poczta.pl','pass','Mateusz','mateusz','Skocz','258963147',74185296312,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-05  3:12:22
