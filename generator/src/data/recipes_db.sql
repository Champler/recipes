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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'default-image.png',1),(2,'default-image.png',1),(3,'default-image.png',1),(4,'default-image.png',2),(5,'default-image.png',2),(6,'default-image.png',2),(7,'default-image.png',3),(8,'default-image.png',3),(9,'default-image.png',3),(10,'default-image.png',4),(11,'default-image.png',4),(12,'default-image.png',4),(13,'default-image.png',5),(14,'default-image.png',5),(15,'default-image.png',5),(16,'default-image.png',6),(17,'default-image.png',6),(18,'default-image.png',6),(19,'default-image.png',7),(20,'default-image.png',7),(21,'default-image.png',7),(22,'default-image.png',8),(23,'default-image.png',8),(24,'default-image.png',8),(25,'default-image.png',9),(26,'default-image.png',9),(27,'default-image.png',9),(28,'default-image.png',10),(29,'default-image.png',10),(30,'default-image.png',10),(31,'default-image.png',11),(32,'default-image.png',11),(33,'default-image.png',11),(34,'default-image.png',12),(35,'default-image.png',12),(36,'default-image.png',12),(37,'default-image.png',13),(38,'default-image.png',13),(39,'default-image.png',13),(40,'default-image.png',14),(41,'default-image.png',14),(42,'default-image.png',14),(43,'default-image.png',15),(44,'default-image.png',15),(45,'default-image.png',15),(46,'default-image.png',16),(47,'default-image.png',16),(48,'default-image.png',16),(49,'default-image.png',17),(50,'default-image.png',17),(51,'default-image.png',17),(52,'default-image.png',18),(53,'default-image.png',18),(54,'default-image.png',18);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `user_recipes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingredients_FK` (`user_recipes_id`),
  CONSTRAINT `ingredients_FK` FOREIGN KEY (`user_recipes_id`) REFERENCES `userrecipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'ingrediente 1 receta 1 user 1',1),(2,'ingrediente 2 receta 1 user 1',1),(3,'ingrediente 3 receta 1 user 1',1),(4,'ingrediente 1 receta 2 user 1',2),(5,'ingrediente 2 receta 2 user 1',2),(6,'ingrediente 3 receta 2 user 1',2),(7,'ingrediente 1 receta 3 user 1',3),(8,'ingrediente 2 receta 3 user 1',3),(9,'ingrediente 3 receta 3 user 1',3),(10,'ingrediente 1 receta 1 user 2',4),(11,'ingrediente 2 receta 1 user 2',4),(12,'ingrediente 3 receta 1 user 2',4),(13,'ingrediente 1 receta 2 user 2',5),(14,'ingrediente 2 receta 2 user 2',5),(15,'ingrediente 3 receta 2 user 2',5),(16,'ingrediente 1 receta 3 user 2',6),(17,'ingrediente 2 receta 3 user 2',6),(18,'ingrediente 3 receta 3 user 2',6),(19,'ingrediente 1 receta 1 user 3',7),(20,'ingrediente 2 receta 1 user 3',7),(21,'ingrediente 3 receta 1 user 3',7),(22,'ingrediente 1 receta 2 user 3',8),(23,'ingrediente 2 receta 2 user 3',8),(24,'ingrediente 3 receta 2 user 3',8),(25,'ingrediente 1 receta 3 user 3',9),(26,'ingrediente 2 receta 3 user 3',9),(27,'ingrediente 3 receta 3 user 3',9),(28,'ingrediente 1 receta 1 user 4',10),(29,'ingrediente 2 receta 1 user 4',10),(30,'ingrediente 3 receta 1 user 4',10),(31,'ingrediente 1 receta 2 user 4',11),(32,'ingrediente 2 receta 2 user 4',11),(33,'ingrediente 3 receta 2 user 4',11),(34,'ingrediente 1 receta 3 user 4',12),(35,'ingrediente 2 receta 3 user 4',12),(36,'ingrediente 3 receta 3 user 4',12),(37,'ingrediente 1 receta 1 user 5',13),(38,'ingrediente 2 receta 1 user 5',13),(39,'ingrediente 3 receta 1 user 5',13),(40,'ingrediente 1 receta 2 user 5',14),(41,'ingrediente 2 receta 2 user 5',14),(42,'ingrediente 3 receta 2 user 5',14),(43,'ingrediente 1 receta 3 user 5',15),(44,'ingrediente 2 receta 3 user 5',15),(45,'ingrediente 3 receta 3 user 5',15),(46,'ingrediente 1 receta 1 user 6',16),(47,'ingrediente 2 receta 1 user 6',16),(48,'ingrediente 3 receta 1 user 6',16),(49,'ingrediente 1 receta 2 user 6',17),(50,'ingrediente 2 receta 2 user 6',17),(51,'ingrediente 3 receta 2 user 6',17),(52,'ingrediente 1 receta 3 user 6',18),(53,'ingrediente 2 receta 3 user 6',18),(54,'ingrediente 3 receta 3 user 6',18);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
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
INSERT INTO `userrecipes` VALUES (1,'prueba',' es una prueba',1),(2,'prueba',' es una prueba',1),(3,'prueba',' es una prueba',1),(4,'prueba',' es una prueba',2),(5,'prueba',' es una prueba',2),(6,'prueba',' es una prueba',2),(7,'prueba',' es una prueba',3),(8,'prueba',' es una prueba',3),(9,'prueba',' es una prueba',3),(10,'prueba',' es una prueba',4),(11,'prueba',' es una prueba',4),(12,'prueba',' es una prueba',4),(13,'prueba',' es una prueba',5),(14,'prueba',' es una prueba',5),(15,'prueba',' es una prueba',5),(16,'prueba',' es una prueba',6),(17,'prueba',' es una prueba',6),(18,'prueba',' es una prueba',6);
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

-- Dump completed on 2021-09-24 18:28:30
