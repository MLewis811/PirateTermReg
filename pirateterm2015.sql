-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: PIRATE_TERM
-- ------------------------------------------------------
-- Server version	5.5.41-0+wheezy1

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `classID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`classID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Pirate Scuba Experience','You like to swim?'),(2,'Aquaponics',NULL),(3,'Crafters: On a Mission','Scrapbooking with heart'),(4,'Art Camp',NULL),(5,'Google Sketchup','Get a mouse. So much easier with a mouse.'),(6,'Healthy Lifestyles','I\'m healthy, cuz I drink Diet Coke with my double cheeseburgers.'),(7,'Military Exploration','Ten-HUT!'),(8,'Musical Mania',NULL),(9,'Pirate Pickers','Your junk is our... well, OK, not *that*. That\'s just junk.'),(10,'TV Show-Time!',NULL),(11,'Vet Science','Animals'),(12,'Meet the Masters','Makin\' pictures and whatnot.'),(13,'Drama 101','Thespian is a funny word.'),(14,'Dance Team Experience','Put your right foot in, take your right foot out...'),(15,'Mini Monster Garage','VROOM!!!'),(16,'Artripeneur',NULL),(17,'Customs Culture and Cuisine of France',NULL),(18,'Industrial Technology Careers',NULL),(19,'Landscape and Turf Industry',NULL),(20,'Matter of Fat',NULL),(21,'Tabletop Gaming',NULL);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollchoices`
--

DROP TABLE IF EXISTS `enrollchoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollchoices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `personID` int(11) DEFAULT NULL,
  `first` int(11) DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  `third` int(11) DEFAULT NULL,
  `filled` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollchoices`
--

LOCK TABLES `enrollchoices` WRITE;
/*!40000 ALTER TABLE `enrollchoices` DISABLE KEYS */;
INSERT INTO `enrollchoices` VALUES (26,21643,6,14,9,6),(27,21533,9,7,15,9),(28,21693,15,1,14,15),(29,21615,15,9,7,15),(30,21632,14,11,5,14),(31,21645,7,9,12,7),(33,21699,1,9,15,1),(34,21609,13,12,6,13),(37,21627,6,1,14,6),(41,21655,6,1,14,6),(42,21636,9,11,13,9),(44,21686,13,12,9,13),(47,21664,13,12,9,13),(48,21604,13,14,12,13),(49,21679,13,14,9,13),(51,21603,1,9,6,1),(52,21626,1,9,6,1),(53,21613,6,1,9,6),(54,21648,6,1,9,6),(55,21605,6,9,15,6),(56,21624,6,14,1,6),(57,21602,6,13,3,6),(58,21610,1,13,11,13),(59,21688,1,13,15,1),(60,21657,6,14,1,6),(61,21625,13,14,12,13),(62,21654,5,7,11,5),(63,21870,9,11,14,11),(64,21697,15,9,5,15),(66,21650,6,1,14,6),(67,21681,15,6,9,15),(68,21660,7,14,6,7),(69,21687,7,9,6,7),(70,21689,11,14,1,11),(71,21647,6,14,1,6),(72,21666,13,3,5,13),(73,21682,9,15,11,9),(74,21672,11,1,12,11),(75,21606,1,9,7,1),(76,21612,7,9,3,7),(77,21614,7,9,12,7),(78,21659,7,9,12,7),(79,21753,7,12,9,7),(80,21630,7,9,3,7),(82,21691,7,9,12,7),(83,21651,15,9,11,15),(84,21623,6,7,14,6),(85,21642,14,6,1,14),(86,21782,7,12,3,7),(87,21631,7,14,6,7),(88,21617,12,1,5,12),(89,21607,13,14,9,13),(90,21622,14,6,15,14),(91,21670,6,9,5,6),(92,21618,9,11,7,9),(93,21694,6,7,15,6),(94,21608,6,14,5,6),(95,21677,15,6,5,15),(96,21601,11,5,9,11),(98,21663,7,15,5,7),(99,21690,9,13,5,9),(100,21820,14,5,13,14),(101,21823,1,9,5,5),(102,21757,1,15,7,1),(103,21724,9,11,12,9),(104,21843,13,7,11,13),(105,21750,11,5,1,11),(106,21876,5,15,9,5),(107,21857,11,14,3,14),(108,21829,11,14,3,14),(109,21826,11,14,1,14),(110,21885,1,9,15,15),(111,21710,1,9,7,1),(112,21821,9,7,15,15),(113,21838,1,7,9,7),(114,21837,1,14,11,1),(115,21847,11,14,3,14),(116,21842,14,11,3,14),(117,21763,1,9,11,1),(118,21806,11,1,14,1),(119,21741,11,13,15,11),(120,21705,5,9,1,5),(121,21706,12,9,11,12),(122,21862,7,1,9,7),(123,21811,11,9,14,11),(125,21805,9,1,7,7),(126,21865,11,9,14,11),(129,21735,11,9,5,11),(130,21709,11,9,5,11),(131,21736,1,14,7,1),(132,21836,13,7,14,14),(133,21845,1,14,3,1),(134,21773,9,11,3,9),(135,21767,12,9,11,12),(136,21739,5,9,7,5),(137,21863,9,12,3,12),(138,21734,5,9,7,5),(139,21728,1,12,9,1),(140,21747,1,12,9,1),(141,21807,9,1,7,7),(142,21760,9,1,7,9),(143,21719,15,9,11,15),(144,21849,14,11,13,14),(145,21678,5,9,1,5),(146,21769,14,13,15,14),(147,21749,1,11,5,11),(148,21869,9,1,15,15),(149,21818,11,9,1,11),(150,21856,9,3,5,5),(151,21858,11,9,5,11),(152,21652,15,3,13,15),(154,21732,9,11,15,9),(155,21855,13,9,15,13),(156,21839,7,1,9,7),(157,21831,7,5,1,5),(158,21740,14,13,1,14),(159,21801,13,5,14,14),(160,21726,1,9,15,1),(161,21727,9,14,12,9),(162,21887,5,9,7,5),(163,21703,9,1,7,9),(164,21761,9,1,5,9),(165,21868,9,1,7,7),(166,21833,7,1,9,7),(167,21704,1,15,7,15),(168,21844,7,13,14,14),(169,21880,9,1,7,7),(170,21804,9,7,15,15),(171,21742,9,15,3,9),(172,21765,1,15,11,15),(173,21852,11,15,5,11),(174,21872,5,7,13,5),(175,21722,13,12,9,12),(176,21712,13,12,9,12),(177,21714,13,12,9,12),(178,21854,5,7,13,5),(179,21779,9,13,5,9),(180,21832,5,7,15,5),(181,21815,12,13,11,12),(182,21717,9,11,12,12),(183,21711,9,15,1,15),(184,21835,9,15,11,11),(185,21816,9,5,14,5),(186,21883,9,5,7,5);
/*!40000 ALTER TABLE `enrollchoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollments` (
  `enrollID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `personID` int(11) DEFAULT NULL,
  `role` varchar(8) DEFAULT NULL,
  `classID` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`enrollID`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,99109,'teacher',1,2014),(3,99625,'teacher',2,2014),(5,21551,'student',2,2014),(6,21580,'student',2,2014),(7,21615,'student',2,2014),(8,21618,'student',2,2014),(9,21651,'student',2,2014),(10,21672,'student',2,2014),(11,21677,'student',2,2014),(12,21689,'student',2,2014),(13,21690,'student',2,2014),(14,21709,'student',2,2014),(15,21719,'student',2,2014),(16,21724,'student',2,2014),(17,21739,'student',2,2014),(18,21502,'student',4,2014),(19,21508,'student',4,2014),(20,21528,'student',4,2014),(21,21532,'student',4,2014),(22,21537,'student',4,2014),(23,21546,'student',4,2014),(24,21612,'student',4,2014),(25,21613,'student',4,2014),(26,21617,'student',4,2014),(27,21630,'student',4,2014),(28,21643,'student',4,2014),(29,21655,'student',4,2014),(30,21686,'student',4,2014),(31,21706,'student',4,2014),(32,21714,'student',4,2014),(33,21736,'student',4,2014),(34,21757,'student',4,2014),(35,21767,'student',4,2014),(36,21515,'student',3,2014),(37,21558,'student',3,2014),(38,21601,'student',3,2014),(39,21610,'student',3,2014),(40,21623,'student',3,2014),(41,21636,'student',3,2014),(42,21717,'student',3,2014),(43,21753,'student',3,2014),(44,21501,'student',5,2014),(45,21550,'student',5,2014),(46,21581,'student',5,2014),(47,21605,'student',5,2014),(48,21624,'student',5,2014),(49,21626,'student',5,2014),(50,21647,'student',5,2014),(51,21648,'student',5,2014),(52,21687,'student',5,2014),(53,21688,'student',5,2014),(54,21732,'student',5,2014),(55,21657,'student',5,2014),(56,21570,'student',6,2014),(57,21571,'student',6,2014),(58,21582,'student',6,2014),(59,21586,'student',6,2014),(60,21606,'student',6,2014),(61,21710,'student',6,2014),(62,21553,'student',6,2014),(63,21728,'student',6,2014),(64,21747,'student',6,2014),(65,21726,'student',6,2014),(66,21463,'student',7,2014),(67,21608,'student',7,2014),(68,21642,'student',7,2014),(69,21681,'student',7,2014),(70,21682,'student',7,2014),(71,21705,'student',7,2014),(72,21711,'student',7,2014),(73,21742,'student',7,2014),(74,21749,'student',7,2014),(75,21750,'student',7,2014),(76,21761,'student',7,2014),(77,21763,'student',7,2014),(78,21765,'student',7,2014),(79,21685,'student',7,2014),(80,21521,'student',8,2014),(81,21552,'student',8,2014),(82,21549,'student',8,2014),(83,21592,'student',8,2014),(84,21607,'student',8,2014),(85,21609,'student',8,2014),(86,21625,'student',8,2014),(87,21654,'student',8,2014),(88,21666,'student',8,2014),(89,21679,'student',8,2014),(90,21703,'student',8,2014),(91,21704,'student',8,2014),(92,21712,'student',8,2014),(93,21722,'student',8,2014),(94,21735,'student',8,2014),(95,21740,'student',8,2014),(96,21741,'student',8,2014),(97,21769,'student',8,2014),(98,21464,'student',9,2014),(99,21512,'student',9,2014),(100,21513,'student',9,2014),(101,21517,'student',9,2014),(102,21520,'student',9,2014),(103,21524,'student',9,2014),(104,21531,'student',9,2014),(105,21535,'student',9,2014),(106,21536,'student',9,2014),(107,21541,'student',9,2014),(108,21544,'student',9,2014),(109,21547,'student',9,2014),(110,21561,'student',9,2014),(111,21575,'student',9,2014),(112,21588,'student',9,2014),(113,21589,'student',9,2014),(114,21596,'student',9,2014),(115,21663,'student',9,2014),(116,21693,'student',9,2014),(117,21503,'student',1,2014),(118,21504,'student',1,2014),(119,21509,'student',1,2014),(120,21510,'student',1,2014),(121,21727,'student',1,2014),(122,21538,'student',1,2014),(123,21660,'student',1,2014),(124,21590,'student',1,2014),(125,21604,'student',1,2014),(126,21622,'student',1,2014),(127,21632,'student',1,2014),(128,21659,'student',1,2014),(129,21664,'student',1,2014),(130,21697,'student',1,2014),(131,21507,'student',10,2014),(132,21511,'student',10,2014),(133,21519,'student',10,2014),(134,21523,'student',10,2014),(135,21525,'student',10,2014),(136,21526,'student',10,2014),(137,21545,'student',10,2014),(138,21578,'student',10,2014),(139,21583,'student',10,2014),(140,21587,'student',10,2014),(141,21627,'student',10,2014),(142,21631,'student',10,2014),(143,21645,'student',10,2014),(144,21650,'student',10,2014),(145,21670,'student',10,2014),(146,21678,'student',10,2014),(147,21691,'student',10,2014),(148,21694,'student',10,2014),(149,21734,'student',10,2014),(150,21760,'student',10,2014),(151,21614,'student',10,2014),(152,99113,'teacher',4,2014),(153,99117,'teacher',4,2014),(154,99106,'teacher',3,2014),(155,99104,'teacher',3,2014),(156,99114,'teacher',5,2014),(157,99103,'teacher',6,2014),(158,99101,'teacher',7,2014),(159,99102,'teacher',7,2014),(160,99212,'teacher',7,2014),(161,99231,'teacher',8,2014),(162,99235,'teacher',8,2014),(163,99120,'teacher',9,2014),(164,99119,'teacher',9,2014),(165,99115,'teacher',10,2014),(166,99108,'teacher',10,2014),(167,21650,'student',16,2013),(168,21464,'student',16,2013),(169,21528,'student',16,2013),(170,21632,'student',16,2013),(171,21627,'student',16,2013),(172,21601,'student',16,2013),(173,21512,'student',16,2013),(174,21504,'student',16,2013),(175,21636,'student',16,2013),(176,21511,'student',16,2013),(177,21578,'student',16,2013),(178,21691,'student',16,2013),(179,21631,'student',16,2013),(180,21753,'student',16,2013),(181,21645,'student',3,2013),(182,21687,'student',3,2013),(183,21660,'student',3,2013),(184,21688,'student',3,2013),(185,21625,'student',3,2013),(186,21679,'student',3,2013),(187,21659,'student',3,2013),(188,21537,'student',17,2013),(189,21515,'student',17,2013),(190,21502,'student',17,2013),(191,21536,'student',17,2013),(192,21508,'student',17,2013),(193,21596,'student',17,2013),(194,21558,'student',17,2013),(195,21655,'student',5,2013),(196,21642,'student',5,2013),(197,21507,'student',5,2013),(198,21694,'student',5,2013),(199,21606,'student',5,2013),(200,21613,'student',5,2013),(201,21643,'student',5,2013),(202,21610,'student',5,2013),(203,21525,'student',5,2013),(204,21587,'student',5,2013),(205,21609,'student',5,2013),(206,21615,'student',5,2013),(207,21520,'student',5,2013),(208,21551,'student',5,2013),(209,21682,'student',18,2013),(210,21647,'student',18,2013),(211,21589,'student',18,2013),(212,21618,'student',18,2013),(213,21685,'student',18,2013),(214,21535,'student',18,2013),(215,21648,'student',18,2013),(216,21523,'student',18,2013),(217,21510,'student',19,2013),(218,21689,'student',19,2013),(219,21607,'student',19,2013),(220,21575,'student',19,2013),(221,21672,'student',19,2013),(222,21651,'student',19,2013),(223,21681,'student',19,2013),(224,21686,'student',20,2013),(225,21626,'student',20,2013),(226,21657,'student',20,2013),(227,21509,'student',20,2013),(228,21546,'student',20,2013),(229,21612,'student',20,2013),(230,21630,'student',20,2013),(231,21538,'student',20,2013),(232,21663,'student',20,2013),(233,21517,'student',20,2013),(234,21622,'student',20,2013),(235,21617,'student',20,2013),(236,21513,'student',20,2013),(237,21624,'student',7,2013),(238,21677,'student',7,2013),(239,21693,'student',7,2013),(240,21670,'student',7,2013),(241,21690,'student',7,2013),(242,21604,'student',8,2013),(243,21664,'student',8,2013),(244,21654,'student',8,2013),(245,21666,'student',8,2013),(246,21526,'student',8,2013),(247,21545,'student',8,2013),(248,21549,'student',8,2013),(249,21552,'student',8,2013),(250,21531,'student',1,2013),(251,21583,'student',1,2013),(252,21544,'student',1,2013),(253,21561,'student',1,2013),(254,21570,'student',1,2013),(255,21605,'student',1,2013),(256,21582,'student',1,2013),(257,21519,'student',1,2013),(258,21524,'student',1,2013),(259,21614,'student',1,2013),(260,21623,'student',1,2013),(261,21501,'student',1,2013),(262,21586,'student',1,2013),(263,21580,'student',21,2013),(264,21463,'student',21,2013),(265,21608,'student',21,2013),(266,21553,'student',10,2013),(267,21581,'student',10,2013),(268,21532,'student',10,2013),(269,21503,'student',10,2013),(270,21547,'student',10,2013),(271,21541,'student',10,2013),(272,99101,'teacher',7,2015),(273,99102,'teacher',7,2015),(274,99103,'teacher',6,2015),(275,99104,'teacher',3,2015),(276,99106,'teacher',3,2015),(277,99108,'teacher',14,2015),(278,99109,'teacher',1,2015),(279,99111,'teacher',15,2015),(280,99113,'teacher',12,2015),(281,99114,'teacher',5,2015),(282,99115,'teacher',14,2015),(283,99117,'teacher',12,2015),(284,99119,'teacher',9,2015),(285,99120,'teacher',9,2015),(286,99212,'teacher',7,2015),(287,99231,'teacher',13,2015),(288,99235,'teacher',13,2015),(289,99625,'teacher',11,2015),(290,21643,'student',6,2015),(291,21627,'student',6,2015),(292,21655,'student',6,2015),(293,21613,'student',6,2015),(294,21648,'student',6,2015),(295,21605,'student',6,2015),(296,21624,'student',6,2015),(297,21602,'student',6,2015),(298,21657,'student',6,2015),(299,21650,'student',6,2015),(300,21647,'student',6,2015),(301,21623,'student',6,2015),(302,21670,'student',6,2015),(303,21694,'student',6,2015),(304,21608,'student',6,2015),(305,21632,'student',14,2015),(306,21642,'student',14,2015),(307,21622,'student',14,2015),(308,21609,'student',13,2015),(309,21686,'student',13,2015),(310,21664,'student',13,2015),(311,21604,'student',13,2015),(312,21679,'student',13,2015),(313,21625,'student',13,2015),(314,21666,'student',13,2015),(315,21607,'student',13,2015),(323,21654,'student',5,2015),(324,21617,'student',12,2015),(325,21660,'student',7,2015),(326,21687,'student',7,2015),(327,21612,'student',7,2015),(328,21614,'student',7,2015),(329,21659,'student',7,2015),(330,21753,'student',7,2015),(331,21630,'student',7,2015),(332,21691,'student',7,2015),(333,21782,'student',7,2015),(334,21631,'student',7,2015),(335,21663,'student',7,2015),(340,21693,'student',15,2015),(341,21697,'student',15,2015),(342,21681,'student',15,2015),(343,21651,'student',15,2015),(344,21677,'student',15,2015),(347,21533,'student',9,2015),(348,21615,'student',15,2015),(349,21645,'student',7,2015),(350,21636,'student',9,2015),(351,21682,'student',9,2015),(352,21618,'student',9,2015),(353,21690,'student',9,2015),(354,21699,'student',1,2015),(355,21603,'student',1,2015),(356,21626,'student',1,2015),(357,21610,'student',13,2015),(358,21688,'student',1,2015),(359,21606,'student',1,2015),(361,21689,'student',11,2015),(362,21672,'student',11,2015),(363,21601,'student',11,2015),(364,21757,'student',1,2015),(365,21724,'student',9,2015),(366,21750,'student',11,2015),(367,21710,'student',1,2015),(368,21763,'student',1,2015),(369,21741,'student',11,2015),(370,21705,'student',5,2015),(371,21706,'student',12,2015),(372,21735,'student',11,2015),(373,21709,'student',11,2015),(374,21736,'student',1,2015),(375,21773,'student',9,2015),(376,21767,'student',12,2015),(377,21739,'student',5,2015),(378,21734,'student',5,2015),(379,21728,'student',1,2015),(380,21747,'student',1,2015),(381,21760,'student',9,2015),(382,21719,'student',15,2015),(383,21678,'student',5,2015),(384,21769,'student',14,2015),(385,21749,'student',11,2015),(386,21652,'student',15,2015),(387,21732,'student',9,2015),(388,21740,'student',14,2015),(389,21726,'student',1,2015),(390,21727,'student',9,2015),(391,21703,'student',9,2015),(392,21761,'student',9,2015),(393,21742,'student',9,2015),(394,21722,'student',12,2015),(395,21712,'student',12,2015),(396,21714,'student',12,2015),(397,21779,'student',9,2015),(427,21765,'student',15,2015),(428,21704,'student',15,2015),(429,21849,'student',14,2015),(430,21820,'student',14,2015),(431,21842,'student',14,2015),(432,21843,'student',13,2015),(433,21836,'student',14,2015),(434,21801,'student',14,2015),(435,21855,'student',13,2015),(436,21854,'student',5,2015),(437,21876,'student',5,2015),(438,21832,'student',5,2015),(439,21872,'student',5,2015),(440,21887,'student',5,2015),(441,21815,'student',12,2015),(442,21833,'student',7,2015),(443,21844,'student',14,2015),(444,21862,'student',7,2015),(445,21839,'student',7,2015),(446,21831,'student',5,2015),(447,21863,'student',12,2015),(448,21804,'student',15,2015),(449,21856,'student',5,2015),(450,21816,'student',5,2015),(451,21868,'student',7,2015),(452,21870,'student',11,2015),(453,21821,'student',15,2015),(454,21805,'student',7,2015),(455,21883,'student',5,2015),(456,21807,'student',7,2015),(457,21869,'student',15,2015),(458,21880,'student',7,2015),(459,21845,'student',1,2015),(460,21838,'student',7,2015),(461,21823,'student',5,2015),(462,21837,'student',1,2015),(463,21885,'student',15,2015),(464,21806,'student',1,2015),(465,21858,'student',11,2015),(466,21865,'student',11,2015),(467,21857,'student',14,2015),(468,21852,'student',11,2015),(469,21829,'student',14,2015),(470,21847,'student',14,2015),(471,21826,'student',14,2015),(472,21818,'student',11,2015),(473,21811,'student',11,2015),(474,21711,'student',15,2015),(475,21717,'student',12,2015),(476,21835,'student',11,2015);
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offerings`
--

DROP TABLE IF EXISTS `offerings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offerings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classID` int(11) DEFAULT NULL,
  `cap` int(11) DEFAULT NULL,
  `closed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offerings`
--

LOCK TABLES `offerings` WRITE;
/*!40000 ALTER TABLE `offerings` DISABLE KEYS */;
INSERT INTO `offerings` VALUES (1,1,15,1),(2,11,15,0),(3,3,15,0),(4,12,15,0),(5,5,15,0),(6,6,15,1),(7,7,15,0),(8,13,15,0),(9,14,15,0),(10,15,15,1),(11,9,15,0);
/*!40000 ALTER TABLE `offerings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `last` varchar(20) DEFAULT NULL,
  `first` varchar(20) DEFAULT NULL,
  `gradyr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99812 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (21463,'Lubben','Matthew',2015),(21464,'Stedman','Hailey',2015),(21501,'Allen','Stone',2015),(21502,'Klenk','Emily',2015),(21503,'Anderson','Ross',2015),(21504,'Trotter','Jessica',2015),(21507,'Cartney','Amanda',2015),(21508,'Christopher','Katarina',2015),(21509,'Clark','Kaitlin',2015),(21510,'Colson','Alexander',2015),(21511,'Craig','Kortney',2015),(21512,'Cullen','Jasmin',2015),(21513,'Denson','Shaniya',2015),(21515,'Drinovsky','Ashley',2015),(21517,'Graves','Natalie',2015),(21519,'Haack','Andrew',2015),(21520,'Ham','Sean',2015),(21521,'Brown','Jeffrey',2015),(21523,'Karkosh','Shane',2015),(21524,'Karr','Ellie',2015),(21525,'Koch','Lindsey',2015),(21526,'Kolterman','Lexi',2015),(21528,'Lentfer','Hannah',2015),(21531,'Mayer','Kassidy',2015),(21532,'Miles','Corey',2015),(21533,'Moore','Brandon',2016),(21535,'Murray','Jesse',2015),(21536,'Nunemaker','Kara',2015),(21537,'Pint','Alexis',2015),(21538,'Rousselow','Madison',2015),(21541,'Shock','Taylor',2015),(21544,'Swangel','Austin',2015),(21545,'Swanson','Megan',2015),(21546,'Tjaden','Madison',2015),(21547,'Wendling','Tanner',2015),(21549,'Williams','Meredith',2015),(21550,'Wooden','Bradley',2015),(21551,'Wulf','Taylor',2015),(21552,'Griffith','Olivia',2015),(21553,'Jackson','Austin',2015),(21558,'Bair','Elizabeth',2015),(21561,'Campos','Brandon',2015),(21570,'Owens','Brendan',2015),(21571,'Welch','Jeremy',2015),(21575,'Hassman','Dylan',2015),(21578,'Schwenneker','Megan',2015),(21580,'Buljubasic','Endi',2015),(21581,'Ellison','Colton',2015),(21582,'Lashbrook','Collin',2015),(21583,'Mosley','Alexis',2015),(21585,'Knudsen','Alexis',2015),(21586,'Goodale','Victoria',2015),(21587,'Bell','Madison',2015),(21588,'Myers','Daniel',2015),(21589,'Faiferlick','Brittin',2015),(21590,'Huey','Justin',2015),(21592,'Jones','Victoria',2015),(21596,'Gardner','Kiley',2015),(21598,'Worthington','John',2015),(21601,'Appleton','Holly',2016),(21602,'Reicherts','Danielle',2016),(21603,'Hottle','Blake',2016),(21604,'Bailey','Abigail',2016),(21605,'Baker','Caelan',2016),(21606,'Baker','Cody',2016),(21607,'Brinker','Brody',2016),(21608,'Brown','Nicholas',2016),(21609,'Bullerman','Matthew',2016),(21610,'Noel','Haille',2016),(21612,'Cooper','Madison',2016),(21613,'Croskrey','Cody',2016),(21614,'Davis','Madison',2016),(21615,'Engel','Nicholas',2016),(21617,'Gallery','Sarah',2016),(21618,'Geisler','Bryce',2016),(21622,'Huber','Noah',2016),(21623,'Ingamells','Morgan',2016),(21624,'Ellingson','Carson',2016),(21625,'Kahler','Lauren',2016),(21626,'King','Cody',2016),(21627,'Krogh','Hayley',2016),(21630,'Masters','Madison',2016),(21631,'Masters','Paige',2016),(21632,'Mchone','Harley',2016),(21636,'Mettlin','Kara',2016),(21642,'Oleson','Alexander',2016),(21643,'Petry','Gabi',2016),(21645,'Reeves','Alexis',2016),(21647,'Roth','Austin',2016),(21648,'Roth','John',2016),(21650,'Schaefer','Allie',2016),(21651,'Schilling','Ryan',2016),(21652,'Winkelpleck','Kaitlyn',2017),(21654,'Snyder','Davon',2016),(21655,'Staebell','Abigail',2016),(21657,'Twait','Jackson',2016),(21659,'Widner','Megan',2016),(21660,'Witt','Jacilyn',2016),(21663,'Schilling','Matthew',2016),(21664,'Weaver','Alli',2016),(21666,'Klingfus','Katherine',2016),(21670,'Dehart','Madison',2016),(21672,'Herring','Madeline',2016),(21677,'Heinzerling','Carter',2016),(21678,'Dixon','Amber',2017),(21679,'Ross','Megan',2016),(21681,'Delagardelle','Tyler',2016),(21682,'Howard','Austin',2016),(21685,'Slager','Samuel',2016),(21686,'Finn','Carmen',2016),(21687,'Webb','Hailey',2016),(21688,'Noel','Kelsey',2016),(21689,'Fouts','Alex',2016),(21690,'Roe','Thomas',2016),(21691,'Jordan','Olivia',2016),(21693,'Schares','Jacob',2016),(21694,'Fecht','Charles',2016),(21697,'Gardner','Jacob',2016),(21699,'Krizek','Kain',2016),(21703,'Caloud','Holden',2017),(21704,'Colsch','Jonathan',2017),(21705,'Craig','Logan',2017),(21706,'Demuth','Nina',2017),(21709,'Geisler','Maria',2017),(21710,'Graves','Nathan',2017),(21711,'Griffith','Ethan',2017),(21712,'Hartleip','Madeleine',2017),(21713,'Higdon','Kyler',2017),(21714,'Kaus','Emily',2017),(21717,'Kuyava-Deberg','Kylie',2017),(21719,'Mchone','Dalton',2017),(21722,'Murray','Lauren',2017),(21724,'Nunemaker','Kayla',2017),(21726,'Randall','Nathan',2017),(21727,'Rhoades','Takoda',2017),(21728,'Sallee','Madison',2017),(21732,'Shock','Johnathan',2017),(21734,'Strayer','Samuel',2017),(21735,'Taplin','Alexis',2017),(21736,'Tjepkes','Abby',2017),(21739,'Wright','Carson',2017),(21740,'Higgins','Reese',2017),(21741,'Zuck','Alicia',2017),(21742,'Moore','Justin',2017),(21747,'Klenk','Annelise',2017),(21749,'Waters','Austin',2017),(21750,'Haack','Noah',2017),(21753,'Jochumsen','Taylor',2016),(21757,'Entriken','Taylan',2017),(21760,'Petersen','Dylan',2017),(21761,'Nunemaker','Tracy',2017),(21763,'Schares','Chace',2017),(21765,'O\'Connor','Brett',2017),(21767,'Schaffer','Emma',2017),(21769,'Jeffries','Kylie',2017),(21773,'Skornia','Lacey',2017),(21779,'Worthington','Elizabeth',2017),(21782,'Cicero','Sheila',2016),(21801,'Barker','Kameron',2018),(21804,'Beaumont','Dylan',2018),(21805,'Buzynski','Zachary',2018),(21806,'Carolan','Kayla',2018),(21807,'Christopher','Cameron',2018),(21811,'Elder','Hailey',2018),(21815,'Fread','Hannah',2018),(21816,'Fulcher','Cameron',2018),(21818,'Geisler','Wes',2018),(21820,'Gronoski','Aubrey',2018),(21821,'Hageman','Alex',2018),(21823,'Ingamells','Parker',2018),(21826,'Jorgensen','Grace',2018),(21829,'Kolterman','Olivia',2018),(21831,'Larson','Reese',2018),(21832,'Lauterbach','Cole',2018),(21833,'Marlow','Lane',2018),(21835,'Masters','Tyler',2018),(21836,'Mccullough','Caleb',2018),(21837,'Mckenna','Mikayla',2018),(21838,'Meyer','Luke',2018),(21839,'Mohr','Andrew',2018),(21842,'O\'Malley','Erin',2018),(21843,'Oleson','Andrew',2018),(21844,'Owens','Austin',2018),(21845,'Pint','Katelyn',2018),(21847,'Polendo','Ashley',2018),(21849,'Reichert','Matthew',2018),(21852,'Seres','Matthew',2018),(21854,'Staker','Tyler',2018),(21855,'Steiner','Taylor',2018),(21856,'Swanson','Kimberly',2018),(21857,'Widner','Madison',2018),(21858,'Williams','Morgan',2018),(21862,'Wulf','Tannor',2018),(21863,'Yoder','Emma',2018),(21865,'Lashbrook','Abigail',2018),(21868,'Gilles','Tristin',2018),(21869,'Kelly','Wyatt',2018),(21870,'Webb','Corby',2018),(21872,'Noel','Drake',2018),(21876,'Klingfus','Alexander',2018),(21880,'Ellingson','Dawson',2018),(21883,'Thompson','Garrison',2018),(21885,'Richards','David',2018),(21887,'Reisner','Jackson',2018),(99101,'Simmer','Paul',NULL),(99102,'Culham','Kim',NULL),(99103,'Wurzer','Kevin',NULL),(99104,'Frye','Dawn',NULL),(99105,'Van Roekel','Taylor',NULL),(99106,'Dvorak','Chris',NULL),(99108,'Yoder','Joletta',NULL),(99109,'Paulson','John',NULL),(99110,'Humston','Jill',NULL),(99111,'Kimball','Derek',NULL),(99113,'Maves','Erin',NULL),(99114,'Uden','Nancy',NULL),(99115,'Puls','Alison',NULL),(99117,'Angove','Laura',NULL),(99119,'Stanek','Deb',NULL),(99120,'Liekweg','Jake',NULL),(99212,'Harms','Keith',NULL),(99225,'Murray','Kevin',NULL),(99231,'Anderson','Julie',NULL),(99235,'Jensen','Brad',NULL),(99625,'Deppe','Dennis',NULL),(99811,'Lewis','Mike',NULL);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-14 13:10:29
