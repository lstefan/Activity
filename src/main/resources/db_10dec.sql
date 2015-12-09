CREATE DATABASE  IF NOT EXISTS `activity` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `activity`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: activity
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avgRating` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `dateHappening` datetime DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `roundedRating` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `dateAdded` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,4,'MOVIES','2015-12-10 21:00:00','Un mesaj enigmatic din trecutul lui James Bond îl arunca pe agentul 007 într-o investigatie ce-i dezvaluie actiunile unei organizatii sinistre. În timp ce M se confrunta cu adversari politici hotarâti sa închida serviciile secrete, Bond se chinuie sa dea la o parte valul de mister ce acopera teribilul secret din spatele SPECTRE.','AFI Cinema',4,'Spectre','spectre.jpg','2015-12-10 21:00:00'),(2,2,'SPORTS','2015-12-13 17:00:00','Sport','Stadionul National',2,'Footbal Game','football.jpg','2015-12-10 22:00:00'),(3,3,'CONCERTS','2015-06-21 00:00:00','Anul 2016 se anunta a fi un an al premierelor pentru publicul roman care va avea ocazia sa vada live, pentru prima data in Romania, unul dintre cele mai asteptate show-uri ale ultimilor ani: legendara trupa Queen + Adam Lambert! Concertul va avea loc pe 21 iunie, in Piata Constitutiei din Bucuresti, fiind un eveniment Emagic Classics, platforma care a mai gazduit in trecut show-urile unor artisti internationali celebri precum Bob Dylan sau Sting.','Piata Constitutiei, Bucuresti',3,'Emagic Classics: Queen & Adam Lambert','queen.gif','2015-12-10 23:00:00');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `sign_in_provider` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_kiqfjabx9puw3p1eg7kily8kg` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'livia.andreea.333@gmail.com','Livia','Ştefan',NULL,'USER','FACEBOOK');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rating`
--

DROP TABLE IF EXISTS `user_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_rating` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` tinyblob,
  `rating` int(11) DEFAULT NULL,
  `user_id` tinyblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rating`
--

LOCK TABLES `user_rating` WRITE;
/*!40000 ALTER TABLE `user_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userconnection`
--

DROP TABLE IF EXISTS `userconnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userconnection` (
  `userId` varchar(255) NOT NULL,
  `providerId` varchar(255) NOT NULL,
  `providerUserId` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `profileUrl` varchar(512) DEFAULT NULL,
  `imageUrl` varchar(512) DEFAULT NULL,
  `accessToken` varchar(255) NOT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `expireTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userId`,`providerId`,`providerUserId`),
  UNIQUE KEY `UserConnectionRank` (`userId`,`providerId`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userconnection`
--

LOCK TABLES `userconnection` WRITE;
/*!40000 ALTER TABLE `userconnection` DISABLE KEYS */;
INSERT INTO `userconnection` VALUES ('livia.andreea.333@gmail.com','facebook','949557755077039',1,NULL,'http://facebook.com/profile.php?id=949557755077039','http://graph.facebook.com/v1.0/949557755077039/picture','CAAVjCLSnzq4BAJPdBzzfdoHEmC5dfQzn7hZAGCbzUNRq74SZCFpVjZAFZBaEgtou8W9aMluv3apoMmn9xbzJChmKN4yrnPHOOu1HaCe2r3ZBEKHnP2czyW4OI8ZA6UfrZBP1WDZCm5ZCzNWsMLL5jTeYxQgKDOiCxWIgMvUL21BfFG50Cs2twclKmv1cKZCX0i5IUZD',NULL,NULL,1454869079903);
/*!40000 ALTER TABLE `userconnection` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-10  1:08:06
