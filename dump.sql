-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: baza_okienka_lab4
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `grupy`
--

DROP TABLE IF EXISTS `grupy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) DEFAULT NULL,
  `pojemnść` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupy`
--

LOCK TABLES `grupy` WRITE;
/*!40000 ALTER TABLE `grupy` DISABLE KEYS */;
INSERT INTO `grupy` VALUES (1,'grupa1',5),(2,'test',1),(3,'t',5),(4,'tt',5);
/*!40000 ALTER TABLE `grupy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocena` int(11) DEFAULT NULL,
  `grupy` int(11) DEFAULT NULL,
  `data_wystawienia_oceny` date DEFAULT NULL,
  `komentarz` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rate_grupy_id_fk` (`grupy`),
  CONSTRAINT `rate_grupy_id_fk` FOREIGN KEY (`grupy`) REFERENCES `grupy` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` VALUES (1,6,1,'2023-12-10',''),(2,6,1,'2023-12-10',''),(3,6,2,'2023-12-10',''),(4,2,2,'2023-12-10',''),(5,1,2,'2023-12-10',''),(6,1,2,'2023-12-10','');
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(100) DEFAULT NULL,
  `nazwisko` varchar(100) DEFAULT NULL,
  `stan` varchar(100) DEFAULT NULL,
  `rok_urodzenia` int(11) DEFAULT NULL,
  `wynagrodzenie` double DEFAULT NULL,
  `grupa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_grupy_id_fk` (`grupa`),
  CONSTRAINT `teacher_grupy_id_fk` FOREIGN KEY (`grupa`) REFERENCES `grupy` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'test','test','obecny',2000,4000.23,1),(6,'test','test','obecny',1888,5000,1),(7,'test','test','obecny',1888,1000,1),(8,'test','atest','obecny',1888,1000,1),(9,'Maciej','Stec','chory',2000,2000,1);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-13 22:07:15
