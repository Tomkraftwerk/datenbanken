-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: ABSCHLUSSPROJEKT
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
INSERT INTO `Persons` VALUES ('Berkay','Aogo','berkay.aogo@mailbox.de','Freistatt',0,NULL,NULL),('Christian','Grahl','christian.grahl@mailbox.com','Hannover',1,NULL,NULL),('Christian','Mangala','christian.mangala@posteo.de','Bielefeld',2,NULL,NULL),('Christian','Mangala','christian.mangala@mail.com','Dortmund',3,NULL,NULL),('Takuma','Asano','takuma.asano@posteo.com','Eckardtsheim',4,NULL,NULL),('Carlos','Kaminski','carlos.kaminski@gmx.de','Berlin',5,NULL,NULL),('Jens','Mangala','jens.mangala@t-online.de','Freistatt',6,NULL,NULL),('Christian','Donis','christian.donis@web.com','Bielefeld',7,NULL,NULL),('Nicolas','Thommy','nicolas.thommy@mail.com','Dortmund',8,NULL,NULL),('Dzenis','Akolo','dzenis.akolo@web.de','Berlin',9,NULL,NULL),('Berkay','Ozcan','berkay.ozcan@googlemail.com','Bielefeld',10,NULL,NULL),('Daniel','Akolo','daniel.akolo@hotmail.com','Freistatt',11,NULL,NULL),('Jens','Grahl','jens.grahl@t-online.de','Hannover',12,NULL,NULL),('Marcin','Zimmermann','marcin.zimmermann@aol.de','Eckardtsheim',13,NULL,NULL),('Orel','Bruun Larsen','orel.bruun larsen@posteo.de','Freistatt',14,NULL,NULL),('Nicolas','Ascacibar','nicolas.ascacibar@web.de','Dortmund',15,NULL,NULL),('Erik','Donis','erik.donis@mail.de','Dortmund',16,NULL,NULL),('Alexander','Gentner','alexander.gentner@t-online.com','Bielefeld',17,NULL,NULL),('Santiago','Ginczek','santiago.ginczek@web.de','Eckardtsheim',18,NULL,NULL),('Anastasios','Beck','anastasios.beck@freenet.de','Freistatt',19,NULL,NULL),('Dennis','Grahl','dennis.grahl@web.com','Berlin',20,NULL,NULL),('Erik','Beck','erik.beck@googlemail.com','Dortmund',21,NULL,NULL),('Ron-Robert','Badstuber','ron-robert.badstuber@t-online.de','Berlin',22,NULL,NULL),('Berkay','Ginczek','berkay.ginczek@gmail.com','Dortmund',23,NULL,NULL),('Dennis','Sessa','dennis.sessa@freenet.com','Hannover',24,NULL,NULL),('Anastasios','Akolo','anastasios.akolo@mailbox.de','Bielefeld',25,NULL,NULL),('Benjamin','Burnic','benjamin.burnic@hotmail.com','Dortmund',26,NULL,NULL),('Holger','Badstuber','holger.badstuber@t-online.de','Bielefeld',27,NULL,NULL),('Mario','Pavard','mario.pavard@gmx.com','Dortmund',28,NULL,NULL),('Jens','Zimmermann','jens.zimmermann@mail.com','Eckardtsheim',29,NULL,NULL),('Daniel','Thommy','daniel.thommy@mailbox.com','Dortmund',30,NULL,NULL),('Emiliano','Insua','emiliano.insua@freenet.de','Dortmund',31,NULL,NULL),('Erik','Zieler','erik.zieler@t-online.com','Hannover',32,NULL,NULL),('Orel','Bruun Larsen','orel.bruun larsen@mailbox.com','Dortmund',33,NULL,NULL),('Andreas','Thommy','andreas.thommy@mailbox.com','Bielefeld',34,NULL,NULL),('Benjamin','Beck','benjamin.beck@posteo.de','Hannover',35,NULL,NULL),('Nicolas','Akolo','nicolas.akolo@mail.com','Dortmund',36,NULL,NULL),('Orel','Aogo','orel.aogo@t-online.com','Berlin',37,NULL,NULL),('Timo','Beck','timo.beck@freenet.de','Berlin',38,NULL,NULL),('Andreas','Zieler','andreas.zieler@posteo.com','Bielefeld',39,NULL,NULL),('Jacob','Bruun Larsen','jacob.bruun larsen@gmail.de','Berlin',40,NULL,NULL),('Dzenis','Insua','dzenis.insua@aol.com','Freistatt',41,NULL,NULL),('Daniel','Burnic','daniel.burnic@gmx.com','Bielefeld',42,NULL,NULL),('Christian','Gomez','christian.gomez@mail.com','Dortmund',43,NULL,NULL),('Benjamin','Aogo','benjamin.aogo@posteo.com','Dortmund',44,NULL,NULL),('Carlos','Kaminski','carlos.kaminski@mailbox.de','Eckardtsheim',45,NULL,NULL),('Santiago','Sessa','santiago.sessa@aol.com','Berlin',46,NULL,NULL),('Dennis','Zieler','dennis.zieler@googlemail.com','Freistatt',47,NULL,NULL),('Anastasios','Grahl','anastasios.grahl@googlemail.com','Hannover',48,NULL,NULL),('Ron-Robert','Donis','ron-robert.donis@gmail.de','Eckardtsheim',49,NULL,NULL),('Dzenis','Baumgartl','dzenis.baumgartl@gmx.de','Freistatt',50,NULL,NULL),('Takuma','Insua','takuma.insua@posteo.com','Bielefeld',51,NULL,NULL),('Holger','Gomez','holger.gomez@t-online.com','Berlin',52,NULL,NULL),('Benjamin','Sessa','benjamin.sessa@freenet.com','Hannover',53,NULL,NULL),('Dennis','Sessa','dennis.sessa@gmail.de','Freistatt',54,NULL,NULL),('Matthias','Akolo','matthias.akolo@googlemail.com','Freistatt',55,NULL,NULL),('Jacob','Kaminski','jacob.kaminski@mail.de','Hannover',56,NULL,NULL),('Benjamin','Mane','benjamin.mane@mail.de','Berlin',57,NULL,NULL),('Holger','Mane','holger.mane@mailbox.de','Dortmund',58,NULL,NULL),('Santiago','Meyer','santiago.meyer@googlemail.de','Dortmund',59,NULL,NULL),('Orel','Zieler','orel.zieler@mailbox.de','Bielefeld',60,NULL,NULL),('Christian','Kaminski','christian.kaminski@googlemail.com','Berlin',61,NULL,NULL),('Holger','Ozcan','holger.ozcan@mail.com','Hannover',62,NULL,NULL),('Christian','Gomez','christian.gomez@googlemail.com','Eckardtsheim',63,NULL,NULL),('Emiliano','Zieler','emiliano.zieler@googlemail.de','Berlin',64,NULL,NULL),('Jacob','Insua','jacob.insua@aol.com','Freistatt',65,NULL,NULL),('Jens','Aogo','jens.aogo@hotmail.com','Berlin',66,NULL,NULL),('Alexander','Thommy','alexander.thommy@googlemail.com','Eckardtsheim',67,NULL,NULL),('Carlos','Grahl','carlos.grahl@t-online.com','Freistatt',68,NULL,NULL),('Christian','Gentner','christian.gentner@gmx.com','Bielefeld',69,NULL,NULL),('Marcin','Zieler','marcin.zieler@gmx.de','Bielefeld',70,NULL,NULL),('Jacob','Akolo','jacob.akolo@posteo.com','Dortmund',71,NULL,NULL),('Anastasios','Aogo','anastasios.aogo@freenet.de','Hannover',72,NULL,NULL),('Christian','Donis','christian.donis@posteo.de','Berlin',73,NULL,NULL),('Takuma','Baumgartl','takuma.baumgartl@googlemail.com','Berlin',74,NULL,NULL),('Jacob','Gentner','jacob.gentner@mailbox.com','Eckardtsheim',75,NULL,NULL),('Marcin','Zimmermann','marcin.zimmermann@freenet.de','Eckardtsheim',76,NULL,NULL),('Matthias','Meyer','matthias.meyer@t-online.de','Bielefeld',77,NULL,NULL),('Dennis','Mane','dennis.mane@mailbox.com','Bielefeld',78,NULL,NULL),('Dennis','Gentner','dennis.gentner@hotmail.com','Bielefeld',79,NULL,NULL),('Timo','Ginczek','timo.ginczek@t-online.com','Hannover',80,NULL,NULL),('Berkay','Mangala','berkay.mangala@freenet.de','Bielefeld',81,NULL,NULL),('Jacob','Pavard','jacob.pavard@mailbox.de','Eckardtsheim',82,NULL,NULL),('Chadrac','Zimmermann','chadrac.zimmermann@hotmail.com','Freistatt',83,NULL,NULL),('Santiago','Zieler','santiago.zieler@gmail.de','Berlin',84,NULL,NULL),('Holger','Gentner','holger.gentner@posteo.com','Dortmund',85,NULL,NULL),('Orel','Burnic','orel.burnic@mail.com','Bielefeld',86,NULL,NULL),('Timo','Kaminski','timo.kaminski@googlemail.com','Freistatt',87,NULL,NULL),('Berkay','Ozcan','berkay.ozcan@freenet.de','Eckardtsheim',88,NULL,NULL),('Matthias','Insua','matthias.insua@googlemail.de','Freistatt',89,NULL,NULL),('Orel','Ginczek','orel.ginczek@mailbox.de','Eckardtsheim',90,NULL,NULL),('Benjamin','Gentner','benjamin.gentner@mail.com','Dortmund',91,NULL,NULL),('Dzenis','Ozcan','dzenis.ozcan@googlemail.de','Bielefeld',92,NULL,NULL),('Alexander','Bruun Larsen','alexander.bruun larsen@aol.com','Eckardtsheim',93,NULL,NULL),('Takuma','Beck','takuma.beck@freenet.de','Freistatt',94,NULL,NULL),('Jacob','Donis','jacob.donis@t-online.de','Dortmund',95,NULL,NULL),('Emiliano','Gomez','emiliano.gomez@googlemail.com','Eckardtsheim',96,NULL,NULL),('Christian','Pavard','christian.pavard@mail.de','Bielefeld',97,NULL,NULL),('Jacob','Mangala','jacob.mangala@freenet.de','Hannover',98,NULL,NULL),('Ron-Robert','Baumgartl','ron-robert.baumgartl@web.de','Bielefeld',99,NULL,NULL),('Simeon','SchÃ¼z','simeon@mail.de','Bielefeld',100,27,'m'),('EINSSimeon','SchÃ¼','asdi@vfew.de','Bielefeld',101,3,'N/A');
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
INSERT INTO `Wuensche` VALUES (0,'asd','AktivitÃ¤t','offen',100),(1,'weaivhj','sonstiges','offen',100),(2,'asd','AktivitÃ¤t','offen',101);
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

-- Dump completed on 2018-04-19 23:07:15
