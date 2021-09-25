-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: recipes
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.20-MariaDB

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `user_recipes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `images_FK` (`user_recipes_id`),
  CONSTRAINT `images_FK` FOREIGN KEY (`user_recipes_id`) REFERENCES `userrecipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'default-image.png',1),(2,'default-image.png',1),(3,'default-image.png',1),(4,'default-image.png',2),(5,'default-image.png',2),(6,'default-image.png',2),(7,'default-image.png',3),(8,'default-image.png',3),(9,'default-image.png',3),(10,'default-image.png',4),(11,'default-image.png',4),(12,'default-image.png',4),(13,'default-image.png',5),(14,'default-image.png',5),(15,'default-image.png',5),(16,'default-image.png',6),(17,'default-image.png',6),(18,'default-image.png',6);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrecipes`
--

DROP TABLE IF EXISTS `userrecipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrecipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ingredients` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_recipes_FK` (`user_id`),
  CONSTRAINT `user_recipes_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrecipes`
--

LOCK TABLES `userrecipes` WRITE;
/*!40000 ALTER TABLE `userrecipes` DISABLE KEYS */;
INSERT INTO `userrecipes` VALUES (1,'prueba',' es una prueba',1,NULL),(2,'prueba',' es una prueba',1,NULL),(3,'prueba',' es una prueba',1,NULL),(4,'prueba',' es una prueba',2,NULL),(5,'prueba',' es una prueba',2,NULL),(6,'prueba',' es una prueba',2,NULL),(7,'prueba',' es una prueba',3,NULL),(8,'prueba',' es una prueba',3,NULL),(9,'prueba',' es una prueba',3,NULL),(10,'prueba',' es una prueba',4,NULL),(11,'prueba',' es una prueba',4,NULL),(12,'prueba',' es una prueba',4,NULL),(13,'prueba',' es una prueba',5,NULL),(14,'prueba',' es una prueba',5,NULL),(15,'prueba',' es una prueba',5,NULL),(16,'prueba',' es una prueba',6,NULL),(17,'prueba',' es una prueba',6,NULL),(18,'prueba',' es una prueba',6,NULL);
/*!40000 ALTER TABLE `userrecipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kevin','$2a$10$2TD7MIx.QoTBNPQFFtnV9uKBkOJfCUWK5qzNOl9S/Nf1GNs.6lS92'),(2,'joni','$2a$10$2TD7MIx.QoTBNPQFFtnV9uKBkOJfCUWK5qzNOl9S/Nf1GNs.6lS92'),(3,'aime','$2a$10$2TD7MIx.QoTBNPQFFtnV9uKBkOJfCUWK5qzNOl9S/Nf1GNs.6lS92'),(4,'tobi','$2a$10$2TD7MIx.QoTBNPQFFtnV9uKBkOJfCUWK5qzNOl9S/Nf1GNs.6lS92'),(5,'maca','$2a$10$2TD7MIx.QoTBNPQFFtnV9uKBkOJfCUWK5qzNOl9S/Nf1GNs.6lS92'),(6,'gonza','$2a$10$2TD7MIx.QoTBNPQFFtnV9uKBkOJfCUWK5qzNOl9S/Nf1GNs.6lS92');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'recipes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-24 22:51:37