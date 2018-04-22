DROP DATABASE IF EXISTS 'Wunschstern';
DROP USER IF EXISTS 'wunschstern-admin';

CREATE DATABASE Wunschstern SET utf8;
CREATE USER 'wunschstern-admin'@'localhost' IDENTIFIED BY 'wunschstern';
GRANT ALL ON Wunschstern.* TO 'wunschstern-admin'@'localhost' IDENTIFIED BY 'wunschstern';
USE Wunschstern;

-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: Wunschstern
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Current Database: `Wunschstern`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Wunschstern` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `Wunschstern`;

--
-- Table structure for table `Persons`
--

DROP TABLE IF EXISTS `Persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Persons` (
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Person_Id` int(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persons`
--

LOCK TABLES `Persons` WRITE;
/*!40000 ALTER TABLE `Persons` DISABLE KEYS */;
INSERT INTO `Persons` VALUES ('Dzenis','Sessa','dzenis.sessa@t-online.com','Dortmund',0,25,'N/A'),('Orel','Zieler','orel.zieler@mailbox.de','Freistatt',1,40,'MÃ¤nnlich'),('Jacob','Mane','jacob.mane@hotmail.de','Bielefeld',2,89,'N/A'),('Orel','Burnic','orel.burnic@mailbox.de','Bielefeld',3,83,'Weiblich'),('Orel','Bruun Larsen','orel.bruun larsen@posteo.com','Bielefeld',4,60,'Weiblich'),('Erik','Kaminski','erik.kaminski@gmx.com','Bielefeld',5,68,'N/A'),('Dennis','Bruun Larsen','dennis.bruun larsen@hotmail.com','Berlin',6,23,'N/A'),('Andreas','Akolo','andreas.akolo@web.com','Dortmund',7,44,'MÃ¤nnlich'),('Emiliano','Insua','emiliano.insua@mail.com','Hannover',8,85,'MÃ¤nnlich'),('Matthias','Baumgartl','matthias.baumgartl@aol.de','Freistatt',9,68,'Weiblich'),('Erik','Sessa','erik.sessa@hotmail.com','Berlin',10,46,'N/A'),('Carlos','Beck','carlos.beck@googlemail.de','Hannover',11,36,'N/A'),('Timo','Ascacibar','timo.ascacibar@web.de','Eckardtsheim',12,78,'Weiblich'),('Ron-Robert','Ozcan','ron-robert.ozcan@gmail.de','Bielefeld',13,83,'MÃ¤nnlich'),('Ron-Robert','Gentner','ron-robert.gentner@googlemail.de','Dortmund',14,77,'Weiblich'),('Carlos','Zieler','carlos.zieler@web.com','Bielefeld',15,98,'MÃ¤nnlich'),('Carlos','Aogo','carlos.aogo@hotmail.de','Hannover',16,40,'N/A'),('Anastasios','Aogo','anastasios.aogo@aol.de','Hannover',17,89,'MÃ¤nnlich'),('Ron-Robert','Mangala','ron-robert.mangala@mail.de','Freistatt',18,93,'MÃ¤nnlich'),('Takuma','Gentner','takuma.gentner@gmx.com','Bielefeld',19,28,'N/A'),('Orel','Mangala','orel.mangala@gmx.com','Berlin',20,89,'MÃ¤nnlich'),('Ron-Robert','Mane','ron-robert.mane@freenet.com','Eckardtsheim',21,92,'N/A'),('Alexander','Burnic','alexander.burnic@posteo.com','Freistatt',22,62,'N/A'),('Takuma','Mangala','takuma.mangala@aol.com','Berlin',23,29,'N/A'),('Erik','Kaminski','erik.kaminski@mailbox.de','Eckardtsheim',24,56,'MÃ¤nnlich'),('Holger','Kaminski','holger.kaminski@gmx.com','Eckardtsheim',25,99,'MÃ¤nnlich'),('Takuma','Aogo','takuma.aogo@web.com','Berlin',26,68,'MÃ¤nnlich'),('Takuma','Thommy','takuma.thommy@googlemail.com','Eckardtsheim',27,63,'Weiblich'),('Orel','Sessa','orel.sessa@aol.com','Dortmund',28,21,'Weiblich'),('Anastasios','Aogo','anastasios.aogo@web.de','Dortmund',29,77,'N/A'),('Jens','Akolo','jens.akolo@mail.de','Bielefeld',30,84,'N/A'),('Mario','Mane','mario.mane@gmail.de','Bielefeld',31,29,'MÃ¤nnlich'),('Dennis','Burnic','dennis.burnic@mailbox.com','Hannover',32,31,'MÃ¤nnlich'),('Takuma','Ozcan','takuma.ozcan@gmx.com','Eckardtsheim',33,32,'MÃ¤nnlich'),('Carlos','Zieler','carlos.zieler@googlemail.com','Dortmund',34,31,'MÃ¤nnlich'),('Emiliano','Zieler','emiliano.zieler@mail.de','Hannover',35,35,'Weiblich'),('Santiago','Grahl','santiago.grahl@posteo.com','Hannover',36,34,'MÃ¤nnlich'),('Jacob','Bruun Larsen','jacob.bruun larsen@aol.de','Bielefeld',37,32,'MÃ¤nnlich'),('Christian','Ascacibar','christian.ascacibar@mailbox.com','Freistatt',38,80,'Weiblich'),('Christian','Mangala','christian.mangala@freenet.com','Dortmund',39,70,'MÃ¤nnlich'),('Carlos','Mangala','carlos.mangala@gmail.com','Freistatt',40,76,'MÃ¤nnlich'),('Jens','Pavard','jens.pavard@mailbox.com','Hannover',41,69,'Weiblich'),('Emiliano','Ascacibar','emiliano.ascacibar@gmail.com','Freistatt',42,83,'N/A'),('Santiago','Ozcan','santiago.ozcan@freenet.com','Eckardtsheim',43,44,'Weiblich'),('Ron-Robert','Kaminski','ron-robert.kaminski@gmail.com','Eckardtsheim',44,43,'MÃ¤nnlich'),('Berkay','Sessa','berkay.sessa@posteo.de','Bielefeld',45,39,'MÃ¤nnlich'),('Marcin','Thommy','marcin.thommy@posteo.de','Hannover',46,66,'MÃ¤nnlich'),('Takuma','Asano','takuma.asano@posteo.de','Dortmund',47,37,'N/A'),('Benjamin','Mane','benjamin.mane@mailbox.com','Freistatt',48,34,'MÃ¤nnlich'),('Alexander','Mangala','alexander.mangala@t-online.de','Dortmund',49,87,'Weiblich'),('Jacob','Zimmermann','jacob.zimmermann@mailbox.com','Dortmund',50,35,'Weiblich'),('Holger','Ginczek','holger.ginczek@t-online.com','Bielefeld',51,43,'N/A'),('Mario','Meyer','mario.meyer@mailbox.de','Freistatt',52,85,'MÃ¤nnlich'),('Holger','Mane','holger.mane@posteo.com','Eckardtsheim',53,60,'N/A'),('Berkay','Burnic','berkay.burnic@mail.com','Hannover',54,64,'N/A'),('Orel','Burnic','orel.burnic@googlemail.de','Dortmund',55,59,'MÃ¤nnlich'),('Mario','Donis','mario.donis@gmail.de','Berlin',56,50,'N/A'),('Daniel','Beck','daniel.beck@web.de','Berlin',57,62,'N/A'),('Jacob','Kaminski','jacob.kaminski@mailbox.de','Berlin',58,68,'N/A'),('Santiago','Mane','santiago.mane@mailbox.de','Freistatt',59,71,'Weiblich'),('Nicolas','Ascacibar','nicolas.ascacibar@freenet.com','Bielefeld',60,47,'Weiblich'),('Takuma','Ginczek','takuma.ginczek@freenet.de','Berlin',61,35,'Weiblich'),('Holger','Burnic','holger.burnic@t-online.de','Eckardtsheim',62,51,'Weiblich'),('Carlos','Gomez','carlos.gomez@mailbox.de','Hannover',63,87,'Weiblich'),('Timo','Insua','timo.insua@aol.com','Eckardtsheim',64,76,'MÃ¤nnlich'),('Takuma','Sessa','takuma.sessa@gmx.de','Hannover',65,64,'MÃ¤nnlich'),('Emiliano','Mangala','emiliano.mangala@web.com','Bielefeld',66,20,'Weiblich'),('Erik','Akolo','erik.akolo@freenet.de','Dortmund',67,93,'N/A'),('Berkay','Sessa','berkay.sessa@posteo.de','Freistatt',68,87,'Weiblich'),('Holger','Insua','holger.insua@mail.de','Berlin',69,77,'MÃ¤nnlich'),('Dzenis','Badstuber','dzenis.badstuber@gmx.de','Bielefeld',70,22,'N/A'),('Christian','Sessa','christian.sessa@mail.com','Hannover',71,59,'Weiblich'),('Ron-Robert','Pavard','ron-robert.pavard@aol.com','Freistatt',72,35,'Weiblich'),('Nicolas','Insua','nicolas.insua@posteo.de','Dortmund',73,39,'Weiblich'),('Dennis','Sessa','dennis.sessa@aol.de','Hannover',74,27,'MÃ¤nnlich'),('Nicolas','Thommy','nicolas.thommy@hotmail.com','Dortmund',75,78,'Weiblich'),('Santiago','Burnic','santiago.burnic@posteo.de','Dortmund',76,27,'N/A'),('Mario','Pavard','mario.pavard@gmx.de','Berlin',77,91,'N/A'),('Santiago','Bruun Larsen','santiago.bruun larsen@aol.de','Eckardtsheim',78,84,'Weiblich'),('Daniel','Ozcan','daniel.ozcan@hotmail.de','Hannover',79,92,'MÃ¤nnlich'),('Andreas','Ascacibar','andreas.ascacibar@hotmail.de','Dortmund',80,67,'MÃ¤nnlich'),('Santiago','Ozcan','santiago.ozcan@t-online.de','Berlin',81,72,'MÃ¤nnlich'),('Jens','Ozcan','jens.ozcan@mailbox.com','Dortmund',82,54,'Weiblich'),('Erik','Pavard','erik.pavard@t-online.com','Freistatt',83,77,'Weiblich'),('Timo','Badstuber','timo.badstuber@freenet.com','Dortmund',84,23,'Weiblich'),('Orel','Pavard','orel.pavard@t-online.de','Hannover',85,68,'Weiblich'),('Ron-Robert','Gentner','ron-robert.gentner@gmx.de','Hannover',86,85,'N/A'),('Timo','Ascacibar','timo.ascacibar@gmail.com','Hannover',87,42,'MÃ¤nnlich'),('Christian','Asano','christian.asano@hotmail.de','Eckardtsheim',88,31,'Weiblich'),('Matthias','Akolo','matthias.akolo@freenet.de','Hannover',89,52,'MÃ¤nnlich'),('Nicolas','Ascacibar','nicolas.ascacibar@mail.com','Bielefeld',90,49,'N/A'),('Takuma','Mane','takuma.mane@posteo.com','Freistatt',91,60,'MÃ¤nnlich'),('Jens','Aogo','jens.aogo@mailbox.de','Berlin',92,48,'N/A'),('Marcin','Akolo','marcin.akolo@googlemail.com','Berlin',93,18,'Weiblich'),('Takuma','Donis','takuma.donis@t-online.de','Bielefeld',94,41,'Weiblich'),('Alexander','Mangala','alexander.mangala@mailbox.de','Hannover',95,94,'MÃ¤nnlich'),('Holger','Gentner','holger.gentner@gmx.com','Freistatt',96,93,'Weiblich'),('Christian','Gomez','christian.gomez@mailbox.com','Eckardtsheim',97,25,'MÃ¤nnlich'),('Ron-Robert','Thommy','ron-robert.thommy@posteo.com','Eckardtsheim',98,27,'Weiblich'),('Andreas','Grahl','andreas.grahl@googlemail.de','Eckardtsheim',99,77,'N/A');
/*!40000 ALTER TABLE `Persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('admin','admin');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wuensche`
--

DROP TABLE IF EXISTS `Wuensche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Wuensche` (
  `Wunsch_Id` int(11) NOT NULL,
  `Wunsch_Text` tinytext,
  `Category` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Person_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wuensche`
--

LOCK TABLES `Wuensche` WRITE;
/*!40000 ALTER TABLE `Wuensche` DISABLE KEYS */;
INSERT INTO `Wuensche` VALUES (0,'Eine Flasche Pommes','AktivitÃ¤t','offen',0),(1,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','materiell','offen',1),(2,'Eine Tasse Tee','Sonstiges','offen',2),(3,'Das neue Album von Scooter','AktivitÃ¤t','offen',3),(4,'Einen Kinobesuch','Sonstiges','offen',4),(5,'Chromfelgen fÃ¼r meinen VW Polo','Sonstiges','offen',5),(6,'Einen Kosmos-Experimentierkasten','AktivitÃ¤t','offen',6),(7,'Das neue Album von Scooter','Sonstiges','offen',7),(8,'Einen Kinobesuch','AktivitÃ¤t','offen',8),(9,'Chromfelgen fÃ¼r meinen VW Polo','materiell','offen',9),(10,'Eine Flasche Pommes','Sonstiges','offen',10),(11,'Einen Kinobesuch','Sonstiges','offen',11),(12,'Einen Kinobesuch','materiell','offen',12),(13,'Einen Kosmos-Experimentierkasten','AktivitÃ¤t','offen',13),(14,'Eine Tasse Tee','Sonstiges','offen',14),(15,'Das neue Album von Scooter','materiell','offen',15),(16,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','materiell','offen',16),(17,'Eine Flasche Pommes','materiell','offen',17),(18,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','materiell','offen',18),(19,'Eine Tasse Tee','Sonstiges','offen',19),(20,'Chromfelgen fÃ¼r meinen VW Polo','materiell','offen',20),(21,'Chromfelgen fÃ¼r meinen VW Polo','AktivitÃ¤t','offen',21),(22,'Einen Kinobesuch','Sonstiges','offen',22),(23,'Das neue Album von Scooter','Sonstiges','offen',23),(24,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','materiell','offen',24),(25,'Einen Kinobesuch','Sonstiges','offen',25),(26,'Eine Tasse Tee','materiell','offen',26),(27,'Eine Flasche Pommes','Sonstiges','offen',27),(28,'Einen Kosmos-Experimentierkasten','AktivitÃ¤t','offen',28),(29,'Eine Flasche Pommes','materiell','offen',29),(30,'Das neue Album von Scooter','AktivitÃ¤t','offen',30),(31,'Das neue Album von Scooter','AktivitÃ¤t','offen',31),(32,'Eine Tasse Tee','AktivitÃ¤t','offen',32),(33,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','AktivitÃ¤t','offen',33),(34,'Karten fÃ¼r ein Helene-Fischer-Konzert','materiell','offen',34),(35,'Eine Flasche Pommes','materiell','offen',35),(36,'Das neue Album von Scooter','Sonstiges','offen',36),(37,'Chromfelgen fÃ¼r meinen VW Polo','AktivitÃ¤t','offen',37),(38,'Einen Kinobesuch','AktivitÃ¤t','offen',38),(39,'Das neue Album von Scooter','materiell','offen',39),(40,'Karten fÃ¼r ein Helene-Fischer-Konzert','Sonstiges','offen',40),(41,'Eine Tasse Tee','AktivitÃ¤t','offen',41),(42,'Einen Kinobesuch','Sonstiges','offen',42),(43,'Das neue Album von Scooter','materiell','offen',43),(44,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','materiell','offen',44),(45,'Chromfelgen fÃ¼r meinen VW Polo','Sonstiges','offen',45),(46,'Eine Tasse Tee','materiell','offen',46),(47,'Chromfelgen fÃ¼r meinen VW Polo','Sonstiges','offen',47),(48,'Karten fÃ¼r ein Helene-Fischer-Konzert','AktivitÃ¤t','offen',48),(49,'Das neue Album von Scooter','AktivitÃ¤t','offen',49),(50,'Einen Kinobesuch','materiell','offen',50),(51,'Einen Kosmos-Experimentierkasten','Sonstiges','offen',51),(52,'Chromfelgen fÃ¼r meinen VW Polo','Sonstiges','offen',52),(53,'Einen Kinobesuch','materiell','offen',53),(54,'Karten fÃ¼r ein Helene-Fischer-Konzert','AktivitÃ¤t','offen',54),(55,'Einen Kosmos-Experimentierkasten','materiell','offen',55),(56,'Karten fÃ¼r ein Helene-Fischer-Konzert','Sonstiges','offen',56),(57,'Das neue Album von Scooter','AktivitÃ¤t','offen',57),(58,'Einen Kinobesuch','materiell','offen',58),(59,'Chromfelgen fÃ¼r meinen VW Polo','AktivitÃ¤t','offen',59),(60,'Das neue Album von Scooter','AktivitÃ¤t','offen',60),(61,'Das neue Album von Scooter','materiell','offen',61),(62,'Karten fÃ¼r ein Helene-Fischer-Konzert','Sonstiges','offen',62),(63,'Das neue Album von Scooter','materiell','offen',63),(64,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','Sonstiges','offen',64),(65,'Eine Flasche Pommes','Sonstiges','offen',65),(66,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','Sonstiges','offen',66),(67,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','AktivitÃ¤t','offen',67),(68,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','materiell','offen',68),(69,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','AktivitÃ¤t','offen',69),(70,'Chromfelgen fÃ¼r meinen VW Polo','AktivitÃ¤t','offen',70),(71,'Einen Kinobesuch','Sonstiges','offen',71),(72,'Einen Kosmos-Experimentierkasten','materiell','offen',72),(73,'Karten fÃ¼r ein Helene-Fischer-Konzert','Sonstiges','offen',73),(74,'Eine Flasche Pommes','materiell','offen',74),(75,'Einen Kosmos-Experimentierkasten','AktivitÃ¤t','offen',75),(76,'Eine Tasse Tee','AktivitÃ¤t','offen',76),(77,'Einen Kinobesuch','materiell','offen',77),(78,'Chromfelgen fÃ¼r meinen VW Polo','AktivitÃ¤t','offen',78),(79,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','Sonstiges','offen',79),(80,'Eine Flasche Pommes','materiell','offen',80),(81,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','materiell','offen',81),(82,'Einen Kosmos-Experimentierkasten','Sonstiges','offen',82),(83,'Eine Flasche Pommes','AktivitÃ¤t','offen',83),(84,'Einen Kosmos-Experimentierkasten','Sonstiges','offen',84),(85,'Chromfelgen fÃ¼r meinen VW Polo','Sonstiges','offen',85),(86,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','materiell','offen',86),(87,'Chromfelgen fÃ¼r meinen VW Polo','AktivitÃ¤t','offen',87),(88,'Das neue Album von Scooter','Sonstiges','offen',88),(89,'Eine Flasche Pommes','Sonstiges','offen',89),(90,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','AktivitÃ¤t','offen',90),(91,'Eine Jahreskarte fÃ¼r das Stadion von Erzgebirge Aue','AktivitÃ¤t','offen',91),(92,'Karten fÃ¼r ein Helene-Fischer-Konzert','materiell','offen',92),(93,'Karten fÃ¼r ein Helene-Fischer-Konzert','AktivitÃ¤t','offen',93),(94,'Eine Tasse Tee','Sonstiges','offen',94),(95,'Eine Flasche Pommes','Sonstiges','offen',95),(96,'Chromfelgen fÃ¼r meinen VW Polo','AktivitÃ¤t','offen',96),(97,'Karten fÃ¼r ein Helene-Fischer-Konzert','materiell','offen',97),(98,'Karten fÃ¼r ein Helene-Fischer-Konzert','materiell','offen',98),(99,'Chromfelgen fÃ¼r meinen VW Polo','AktivitÃ¤t','offen',99);
/*!40000 ALTER TABLE `Wuensche` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-22 21:00:14
