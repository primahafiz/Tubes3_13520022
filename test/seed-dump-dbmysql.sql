-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dbmysql
-- ------------------------------------------------------
-- Server version	10.6.5-MariaDB

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
-- Table structure for table `dnadiseases`
--

DROP TABLE IF EXISTS `dnadiseases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnadiseases` (
  `DiseaseName` varchar(255) NOT NULL,
  `DNASequence` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`DiseaseName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnadiseases`
--

LOCK TABLES `dnadiseases` WRITE;
/*!40000 ALTER TABLE `dnadiseases` DISABLE KEYS */;
INSERT INTO `dnadiseases` VALUES ('anemia','CTGACGAGGGGCTCACACCGAGGGGGATCCCGGGTATGCGTTGGGGATAGTGCTAACTAATAAA','2022-04-29 20:34:28','2022-04-29 20:34:28'),('diabetes','GACTACATCGCCACTTTAGAGAATCCAAGGAGGATATCAGAATTACTTTGTGGATAGCT','2022-04-29 20:36:48','2022-04-29 20:36:48'),('down syndrome','CTTCGACATGGCAATATCCCCCCCTTTCAACTTCTAGAGGCTATACTCCATTTGGTTTTTTCGTGCATCACCG','2022-04-29 20:37:29','2022-04-29 20:37:29'),('hemofilia','TCCAAGAGATTGATCCGGTCGTAACATTATGGGATCCCGGGTATATGGTTATAAATCA','2022-04-29 20:37:55','2022-04-29 20:37:55'),('hiv','GGGCCAATAGAAAGGCTTCTCCCTCACTCGCTAGGAGGCAAATGCAGAACAATGGTTACTACATCGATAC','2022-04-29 20:38:13','2022-04-29 20:38:13');
/*!40000 ALTER TABLE `dnadiseases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historytests`
--

DROP TABLE IF EXISTS `historytests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historytests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `DiseaseName` varchar(255) DEFAULT NULL,
  `DNASequence` text DEFAULT NULL,
  `TestDate` datetime DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DiseaseName` (`DiseaseName`),
  CONSTRAINT `historytests_ibfk_1` FOREIGN KEY (`DiseaseName`) REFERENCES `dnadiseases` (`DiseaseName`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historytests`
--

LOCK TABLES `historytests` WRITE;
/*!40000 ALTER TABLE `historytests` DISABLE KEYS */;
INSERT INTO `historytests` VALUES (17,'eko','diabetes','GATGGAATTGATTCGAACGATGGTTATAAATCAAAAAAACGGAACGCTGTCTGAAGGATGAATCTAACGGTGTGTAACTCGATCACTTACTCACTATTCGAACTGCGCGAAAGTTCCCAGCGCTTATACACTTAATTCCGAGGCCTGTCCTGATATATGAACTTAAACTAGAGCGGGGCTGTTGACGTTTGGAGTTGAAAAAATCTAATATTCTAATCGGCTTCAACGTGCACCACCGCAGGCAGCTGACGAGGGGCTCACACCGAGAAAGTAAACTGTTATACGTTGGGGATAGTGCTAACTAATAAAGATGCTTGGTACAACAAAAGTATCAAACCCGTATAAAGACAACATCCTCACTTTAGTGAATCGAAGCGCGGCATCAGAATTACTTTTTGGATACCTGAAACAAAACCCATCGTAATTTTTAGATTTGGTACACTTACACTTGCAGCGCACGCATCTGGAAATAGAGGCCAAGTTCGATTCGTACTCCGATGTACGATACAACAATGTGGATGTGACGAGCTTCATTTATATCCTTCGCGCG','2022-04-29 21:24:29',0.79661,0,'2022-04-29 21:24:29','2022-04-29 21:24:29'),(18,'anton','diabetes','TGCCAACATCGTAATAGCCTCCAAGAGATTGATCATACCTATCGGCACAGAAGTGACACGACGCCGATGGGTAGCGGACTTTTGGTCAACCACAATTCCCCAGGGGACAGGTCCTGCGGTGCGCATCACTTTGTATGTGCAAGCAACCCAAGTGGGCCCAGCCTGGACTCAGCTGGTTCCTGTGTGAGCTCGAGGCTGGGGATGACAGCTCTTTAAACATAGGGCGGGGGCGTCGAACGGTCGAGAAACTCATAGTACCTCGGGTACCAACTTACTCAGGTTATTGCTTGAAGCTGTACTATTTCAGGGGGGGAGCGCTGAAGGTCTCTTCTTCTGATGACTGAACTCGCAAGGGTCGTGAAGTCGGTTCCTTCAATGGTTAAAAAACAAAGGCTTACTGTGCAGACTGGAACGCCCATCTAGCGGCTCGCGTCTTGAATGCTCGGTCCCCTTTGTCATTCCGGATAAATCCATTTCCCTCATTCACCAGCTTGCGAAGTCTACATTGGTATATGAATGCGACCTAGAAGAGGGCGCTTAAAATTGGGAG','2022-04-29 21:24:40',0.440678,0,'2022-04-29 21:24:40','2022-04-29 21:24:40'),(19,'chika','diabetes','TGGTTGATGCTCTATACTCCATTTGGTTTTTTCGTGCATCACCGCGATAGGCTGACAAGGGTTTAACATTGAATAGCAAGGCACTTCCGGTCTCAATGAAGGGCCGGGAAAGGTACGCGCGTGGTATGGGAGGATCAAGGGGCCAATAGAAAGGCTTCTCCCTCACTCGCTAGGAGGCAAATGCAGAACAATGGTTACTACATCGATACGTGAAACATGTCCAACGGTTGCCCAAAGTGTTAAGTGTCTATCACCCCTAGGGCCGTTTCCCGGATATAAACGCCAGGTTGAATCCGCATTTGAAGCTACCATGGATGAGTCTGGGTCGAGCGCGCCGCATTTATTGCGTGAGTAGGGTCGACCAAGAACCGCTAGATGCGTCGCTGTACAAATAGTTGTCGACAGACCGTCGAGTTTAGAAAATGGTACCAGCATTTTCGGGGGATCTCAATCAAGTATGGATTACGGTGTTTACACTGTCCTGCGGCTACCCATGGCCTGAAATCCAGCTCGTGTCAAGCCATTGCCTCTCCGGGACGCCGCATGAAGTAATACATATACCTTGCACGGGTTCACTGCGGTCCGTTCAGAGTCGACCAA','2022-04-29 21:24:54',0.474576,0,'2022-04-29 21:24:54','2022-04-29 21:24:54'),(20,'chika','hiv','TGGTTGATGCTCTATACTCCATTTGGTTTTTTCGTGCATCACCGCGATAGGCTGACAAGGGTTTAACATTGAATAGCAAGGCACTTCCGGTCTCAATGAAGGGCCGGGAAAGGTACGCGCGTGGTATGGGAGGATCAAGGGGCCAATAGAAAGGCTTCTCCCTCACTCGCTAGGAGGCAAATGCAGAACAATGGTTACTACATCGATACGTGAAACATGTCCAACGGTTGCCCAAAGTGTTAAGTGTCTATCACCCCTAGGGCCGTTTCCCGGATATAAACGCCAGGTTGAATCCGCATTTGAAGCTACCATGGATGAGTCTGGGTCGAGCGCGCCGCATTTATTGCGTGAGTAGGGTCGACCAAGAACCGCTAGATGCGTCGCTGTACAAATAGTTGTCGACAGACCGTCGAGTTTAGAAAATGGTACCAGCATTTTCGGGGGATCTCAATCAAGTATGGATTACGGTGTTTACACTGTCCTGCGGCTACCCATGGCCTGAAATCCAGCTCGTGTCAAGCCATTGCCTCTCCGGGACGCCGCATGAAGTAATACATATACCTTGCACGGGTTCACTGCGGTCCGTTCAGAGTCGACCAA','2022-04-29 21:25:16',1,1,'2022-04-29 21:25:16','2022-04-29 21:25:16'),(21,'eko','anemia','GATGGAATTGATTCGAACGATGGTTATAAATCAAAAAAACGGAACGCTGTCTGAAGGATGAATCTAACGGTGTGTAACTCGATCACTTACTCACTATTCGAACTGCGCGAAAGTTCCCAGCGCTTATACACTTAATTCCGAGGCCTGTCCTGATATATGAACTTAAACTAGAGCGGGGCTGTTGACGTTTGGAGTTGAAAAAATCTAATATTCTAATCGGCTTCAACGTGCACCACCGCAGGCAGCTGACGAGGGGCTCACACCGAGAAAGTAAACTGTTATACGTTGGGGATAGTGCTAACTAATAAAGATGCTTGGTACAACAAAAGTATCAAACCCGTATAAAGACAACATCCTCACTTTAGTGAATCGAAGCGCGGCATCAGAATTACTTTTTGGATACCTGAAACAAAACCCATCGTAATTTTTAGATTTGGTACACTTACACTTGCAGCGCACGCATCTGGAAATAGAGGCCAAGTTCGATTCGTACTCCGATGTACGATACAACAATGTGGATGTGACGAGCTTCATTTATATCCTTCGCGCG','2022-04-29 21:26:46',0.84375,1,'2022-04-29 21:26:46','2022-04-29 21:26:46'),(22,'doni','hemofilia','TCGGGATCCTGAGCCCTCGGATGGTGGGGATCCCGGGTATGGGCCTCTGTCTGCGGCCCAACTCAGGCGTAGACCTCCACGCCGCCCCGTCAGACCCACCCCGCGCGGGGTGAATATGGGACGCGTCCGACCTGGCTCCCGGCGCTCTACGCCGCCACGCGTTCGTCAACCGCTGACTGGCAGCACAAAAGTGACGCCACGGTCCTTGAAGCCCGGCTCAGTCAGTTCGAGCGCAACGCCGCAGACGGCGCAGGGCGGCGGTGGGTGCCCGACACTGGGTGGCGCCCAGTTCGGCAGCGGAGGGGCCGTGCGGCGCGCTTGACTGTGCATCTGGAACGCGCCCGAGTGGCGCCAGGCAGGTCAGAGCGGGTTCCCGCGTCGGCTCGAGGGTGGGCGCGCGGGCCGATCGGAGGTGGGCGGGGGGCCTCGACCCGTCCAGCACCCCACGGTACCCCCGGGGGCAAGTAGGGCGCCCTGTAGCCCGAAGCGGAACCGTTTCGCGGGGCGAGCCCACATCGTCTCCTCTGCGGATGACTCAACACGCCAGGGG','2022-04-29 21:27:14',0.396552,0,'2022-04-29 21:27:14','2022-04-29 21:27:14'),(23,'doni','down syndrome','TCGGGATCCTGAGCCCTCGGATGGTGGGGATCCCGGGTATGGGCCTCTGTCTGCGGCCCAACTCAGGCGTAGACCTCCACGCCGCCCCGTCAGACCCACCCCGCGCGGGGTGAATATGGGACGCGTCCGACCTGGCTCCCGGCGCTCTACGCCGCCACGCGTTCGTCAACCGCTGACTGGCAGCACAAAAGTGACGCCACGGTCCTTGAAGCCCGGCTCAGTCAGTTCGAGCGCAACGCCGCAGACGGCGCAGGGCGGCGGTGGGTGCCCGACACTGGGTGGCGCCCAGTTCGGCAGCGGAGGGGCCGTGCGGCGCGCTTGACTGTGCATCTGGAACGCGCCCGAGTGGCGCCAGGCAGGTCAGAGCGGGTTCCCGCGTCGGCTCGAGGGTGGGCGCGCGGGCCGATCGGAGGTGGGCGGGGGGCCTCGACCCGTCCAGCACCCCACGGTACCCCCGGGGGCAAGTAGGGCGCCCTGTAGCCCGAAGCGGAACCGTTTCGCGGGGCGAGCCCACATCGTCTCCTCTGCGGATGACTCAACACGCCAGGGG','2022-04-29 21:27:44',0.356164,0,'2022-04-29 21:27:44','2022-04-29 21:27:44'),(24,'chika','down syndrome','TGGTTGATGCTCTATACTCCATTTGGTTTTTTCGTGCATCACCGCGATAGGCTGACAAGGGTTTAACATTGAATAGCAAGGCACTTCCGGTCTCAATGAAGGGCCGGGAAAGGTACGCGCGTGGTATGGGAGGATCAAGGGGCCAATAGAAAGGCTTCTCCCTCACTCGCTAGGAGGCAAATGCAGAACAATGGTTACTACATCGATACGTGAAACATGTCCAACGGTTGCCCAAAGTGTTAAGTGTCTATCACCCCTAGGGCCGTTTCCCGGATATAAACGCCAGGTTGAATCCGCATTTGAAGCTACCATGGATGAGTCTGGGTCGAGCGCGCCGCATTTATTGCGTGAGTAGGGTCGACCAAGAACCGCTAGATGCGTCGCTGTACAAATAGTTGTCGACAGACCGTCGAGTTTAGAAAATGGTACCAGCATTTTCGGGGGATCTCAATCAAGTATGGATTACGGTGTTTACACTGTCCTGCGGCTACCCATGGCCTGAAATCCAGCTCGTGTCAAGCCATTGCCTCTCCGGGACGCCGCATGAAGTAATACATATACCTTGCACGGGTTCACTGCGGTCCGTTCAGAGTCGACCAA','2022-04-29 21:27:54',0.369863,0,'2022-04-29 21:27:54','2022-04-29 21:27:54'),(25,'anton','anemia','TGCCAACATCGTAATAGCCTCCAAGAGATTGATCATACCTATCGGCACAGAAGTGACACGACGCCGATGGGTAGCGGACTTTTGGTCAACCACAATTCCCCAGGGGACAGGTCCTGCGGTGCGCATCACTTTGTATGTGCAAGCAACCCAAGTGGGCCCAGCCTGGACTCAGCTGGTTCCTGTGTGAGCTCGAGGCTGGGGATGACAGCTCTTTAAACATAGGGCGGGGGCGTCGAACGGTCGAGAAACTCATAGTACCTCGGGTACCAACTTACTCAGGTTATTGCTTGAAGCTGTACTATTTCAGGGGGGGAGCGCTGAAGGTCTCTTCTTCTGATGACTGAACTCGCAAGGGTCGTGAAGTCGGTTCCTTCAATGGTTAAAAAACAAAGGCTTACTGTGCAGACTGGAACGCCCATCTAGCGGCTCGCGTCTTGAATGCTCGGTCCCCTTTGTCATTCCGGATAAATCCATTTCCCTCATTCACCAGCTTGCGAAGTCTACATTGGTATATGAATGCGACCTAGAAGAGGGCGCTTAAAATTGGGAG','2022-04-29 21:28:30',0.375,0,'2022-04-29 21:28:30','2022-04-29 21:28:30'),(26,'eko','down syndrome','GATGGAATTGATTCGAACGATGGTTATAAATCAAAAAAACGGAACGCTGTCTGAAGGATGAATCTAACGGTGTGTAACTCGATCACTTACTCACTATTCGAACTGCGCGAAAGTTCCCAGCGCTTATACACTTAATTCCGAGGCCTGTCCTGATATATGAACTTAAACTAGAGCGGGGCTGTTGACGTTTGGAGTTGAAAAAATCTAATATTCTAATCGGCTTCAACGTGCACCACCGCAGGCAGCTGACGAGGGGCTCACACCGAGAAAGTAAACTGTTATACGTTGGGGATAGTGCTAACTAATAAAGATGCTTGGTACAACAAAAGTATCAAACCCGTATAAAGACAACATCCTCACTTTAGTGAATCGAAGCGCGGCATCAGAATTACTTTTTGGATACCTGAAACAAAACCCATCGTAATTTTTAGATTTGGTACACTTACACTTGCAGCGCACGCATCTGGAAATAGAGGCCAAGTTCGATTCGTACTCCGATGTACGATACAACAATGTGGATGTGACGAGCTTCATTTATATCCTTCGCGCG','2022-04-29 21:29:18',0.438356,0,'2022-04-29 21:29:18','2022-04-29 21:29:18');
/*!40000 ALTER TABLE `historytests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29 21:52:13
