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
  `description` varchar(5000) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `roundedRating` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `dateAdded` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,4,'MOVIES','2015-12-10 21:00:00','Un mesaj enigmatic din trecutul lui James Bond îl arunca pe agentul 007 într-o investigatie ce-i dezvaluie actiunile unei organizatii sinistre. În timp ce M se confrunta cu adversari politici hotarâti sa închida serviciile secrete, Bond se chinuie sa dea la o parte valul de mister ce acopera teribilul secret din spatele SPECTRE.','AFI Cinema',4,'Spectre','spectre.jpg','2015-12-10 21:00:00'),(2,2,'SPORTS','2015-12-13 17:00:00','Sport','Stadionul National',2,'Footbal Game','football.jpg','2015-12-10 22:00:00'),(3,3,'CONCERTS','2016-06-21 00:00:00','Anul 2016 se anunta a fi un an al premierelor pentru publicul roman care va avea ocazia sa vada live, pentru prima data in Romania, unul dintre cele mai asteptate show-uri ale ultimilor ani: legendara trupa Queen + Adam Lambert! Concertul va avea loc pe 21 iunie, in Piata Constitutiei din Bucuresti, fiind un eveniment Emagic Classics, platforma care a mai gazduit in trecut show-urile unor artisti internationali celebri precum Bob Dylan sau Sting.','Piata Constitutiei, Bucuresti',3,'Emagic Classics: Queen & Adam Lambert','queen.gif','2015-12-10 23:00:00'),(4,3,'CONCERTS','2016-07-18 00:00:00','Festivalul Electric Castle se mută în luna iulie, urmând să se desfășoare în perioada 14-17 iulie 2016. Evenimentul, care a ajuns la cea de-a 4-a ediție, se va desfășura tot lângă Cluj Napoca, pe domeniul Castelului Banffy.','Castelul Banffy, Cluj Napoca',3,'ELECTRIC CASTLE FESTIVAL 2016','ec2016.jpg','2015-12-12 00:00:00'),(5,3,'THEATRE','2015-12-16 00:00:00','Cunoscuți publicului pentru rolurile din cel mai vizionat serial de comedie românesc,  ”Las Fierbinți”, cei 4 se vor întrece în replici surprinzătoare și glume fără limite, stârnind hohote de râs, așa cum numai ei știu să o facă. Cei 4 vor încinge atmosfera cu un show care va depăși orice așteptări! Dacă vă place să râdeți copios și să faceți haz de necaz, atunci asigurați-vă un loc la mega show-ul de stand-up comedy cu Mihai Bobonete, Adrian Văncică, Costi Diță și Mihai Rait. Vineri, 19 decembrie, ora 20.00, la Sala Palatului.','Sala Palatului, Bucuresti',3,'Stand-up comedy','lavremurinoi.jpg','2015-12-12 00:00:00'),(6,3,'SPORTS','2015-12-18 00:00:00','Gala ce îi va avea invitați pe cei mai renumiți campioni ai patinajului mondial, în frunte cu regele absolut al gheții Evgeni Plushenko și celebrul violonist Edvin Marton, promite publicului român reprezentații impresionante de acrobații și dans pe gheața, într-un show de patinaj absolut.\nDupă cinci ediții Kings On Ice desfășurate la București cu casa inchisă, unul dintre cele mai iubite sporturi din lume, patinajul artistic, vine în 2015 la Cluj, într-un recital de excepție. King On Ice va avea loc pe 18 decembrie, pe patinoarul amenajat în Sala Polivalentă din Cluj-Napoca, regelui necontestat al gheții, Evgeni Plushenko, alăturându-i-se în cadrul show-ului câțiva dintre cei mai renumiți patinatori ai lumii, nume ce vor fi dezvăluite în curând. ','Sala Polivalenta, Cluj-Napoca',3,'Kings on ice','kingsonice.jpg','2015-12-12 00:00:00'),(7,3,'SPORTS','2016-02-07 00:00:00','Biletele pentru partida România-Cehia, contând pentru Turul I din Grupa Mondială Fed Cup, sunt disponibile în rețeaua Eventim, începând de astăzi, 12.11.2015. Preţurile biletelor variază de la 50 de lei/zi (pentru preșcolari, elevi, studenți și pensionari) la 90 de lei/zi. Biletele vor include accesul la toate meciurile disputate în Sala Polivalentă din Cluj-Napoca, în ziua respectivă.','Sala Polivalenta, Cluj',3,'FedCup - Tennis & Basketball','fedcup.jpg','2015-12-12 00:00:00'),(8,3,'THEATRE','2015-12-12 00:00:00','Luna decembrie aduce un proiect teatral cu totul inedit în noua sală de spectacole din ARCUB Gabroveni (str. Lipscani nr. 84-90): Suflet vagabond, spectacol conceput și realizat de Simona Măicănescu și Alex Simu, care se va juca în premieră sâmbătă, 12 decembrie, de la ora 20:00.\nSuflet vagabond este o poveste neterminată despre viața celor mereu pe drum – imaginată de o actriță și un muzician: Simona Măicănescu și Alex Simu. Ideea acestui spectacol s-a născut în 2014 pe scena celei de-a 15 ediții a Festivalului Cultural European din Alger, când cei doi artiști s-au hotărât să construiască împreună o poveste, a lor și a altor mii de oameni: povestea celor care călătoresc, umblă, aleargă întruna pentru că nu știu altfel să asculte lumea de azi.','Arcub, Bucuresti',3,'Suflet vagabond','sufletvagabond.jpg','2015-12-12 00:00:00');
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
INSERT INTO `userconnection` VALUES ('livia.andreea.333@gmail.com','facebook','949557755077039',1,NULL,'http://facebook.com/profile.php?id=949557755077039','http://graph.facebook.com/v1.0/949557755077039/picture','CAAVjCLSnzq4BAFId24hgZBq7n1KdAwvkIm5j8uH1K78yvjTXXdxdmmWLePC5Laae5SGPSx1QBp6LYJ7sZAhO1F8c7xqeQ8Br2ENcThNLFO2ZBXpq1Ekr6ZCJHURdKzKjTdPkKn6Kj9ZBywKNpPlSbcQwVedNTLxoVs1a7mlyZAso5qFMlJz8PdhZAoN4ZBxj4twZD',NULL,NULL,1454955664926);
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

-- Dump completed on 2015-12-11  1:21:33
