-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: flightcatch
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_first_name` varchar(45) DEFAULT NULL,
  `admin_last_name` varchar(45) DEFAULT NULL,
  `admin_username` varchar(45) DEFAULT NULL,
  `admin_password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Allan','Chen','allan','allan123'),(2,'Jasmit','Mahajan','jasmit','jasmit123'),(3,'Mike','Wu','mike','mike123'),(4,'Nick','Mendoza','nick','nick123');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `airport_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`airport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('Beijing','China',1),('Berlin','Germany',2),('Buenos Aires','Argentina',3),('Cairo','Egypt',4),('Delhi','India',5),('Jerusalem','Israel',6),('London','United Kingdom',7),('Los Angeles','United States of America',8),('Mexico City','Mexico',9),('Moscow','Russia',10),('Mumbal','India',11),('Osaka','Japan',12),('Paris ','France',13),('Pretoria','South Africa',14),('Rio De Janeiro','Brazil',15),('San Francisco','United States of America',16),('Sao Pualo','Brazil',17),('Seoul','South Korea',18),('Shanghai','China',19),('Tokyo','Japan',20);
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arrives`
--

DROP TABLE IF EXISTS `arrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arrives` (
  `city` varchar(45) NOT NULL,
  `time` time DEFAULT NULL,
  `flight_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrives`
--

LOCK TABLES `arrives` WRITE;
/*!40000 ALTER TABLE `arrives` DISABLE KEYS */;
INSERT INTO `arrives` VALUES ('Buenos Aires','14:30:00',1),('Cairo','17:15:00',2),('Delhi','21:40:00',3),('Istanbul','03:20:00',4),('London','13:45:00',5),('Mexico City','18:50:00',6),('Moscow','18:20:00',7),('Mumbai','09:30:00',8),('Osaka','07:50:00',9),('Paris','08:30:00',10),('San Francisco','11:45:00',11),('Sao Paulo','15:20:00',12),('Seoul','10:30:00',13),('Shanghai','22:30:00',14),('Tokyo','01:30:00',15),('Test1','12:00:00',16);
/*!40000 ALTER TABLE `arrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bought`
--

DROP TABLE IF EXISTS `bought`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bought` (
  `user_id` int NOT NULL,
  `ticket_number` varchar(45) DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  KEY `flight_id_idx` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bought`
--

LOCK TABLES `bought` WRITE;
/*!40000 ALTER TABLE `bought` DISABLE KEYS */;
INSERT INTO `bought` VALUES (1,'13',NULL),(2,'10',NULL),(3,'11',NULL),(4,'9',NULL),(5,'6',NULL),(6,'8',NULL),(7,'7',NULL),(8,'4',NULL),(9,'2',NULL),(10,'1',NULL),(11,'3',NULL),(12,'5',NULL),(13,'14',NULL),(14,'15',NULL),(15,'12',NULL),(1,'5',9),(1,'5',1),(1,'1',2);
/*!40000 ALTER TABLE `bought` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyers` (
  `user_id` int NOT NULL,
  `business_class` tinyint DEFAULT NULL,
  `economy_class` tinyint DEFAULT NULL,
  `first_class` tinyint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `User` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,0,0,1),(2,1,0,0),(3,0,0,0),(4,0,1,0),(5,1,0,0),(6,1,0,0),(7,0,0,1),(8,1,0,0),(9,0,1,0),(10,0,1,0),(11,1,0,0),(12,0,1,0),(13,0,1,0),(14,1,0,0),(15,0,0,1);
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `home_address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` int NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Andy','Dalton','andy@andy.com','54321 lombard street','San Francisco','CA',95431,'username','test'),(2,'Bill','Nye','bill@bill.com','21423 rocky road','Denver','CO',85721,'username1','hunter2'),(3,'Bob','Ross','bob@gmail.com','500 apartment road','Rochester','NY',2143,'username2','password2'),(4,'Carter','Williams','carter@carter.com','100 abby street','Chicago','IL',46328,'username3','test1'),(5,'Christopher','Columbus','christopher@christopher.com','1222 berry road','Akron','OH',48294,'username4','test2'),(6,'Hannah','Montana','hannah@hannah.com','1234 disney drive','Los Angeles','CA',29435,'username5','hunter3'),(7,'John','Cena','john@john.com','2314 disney resort drive','Orlando','FL',30541,'username6','name'),(8,'Katherine','Jennings','katherine@katherine.com','12415 palace place','Las Vegas','NV',4385,'username7','password5'),(9,'Phil','Jackson','phil@phil.com','12405 bulls ave','Springfield','WI',56214,'username8','username2'),(10,'Sarah','Jones','sarah@sarah.com','123 dock street','Fresno','CA',91832,'username9','password'),(11,'Victoria','Azerenka','victoria@victoria.com','1234 tennis ave','Pittsburgh','PN',83195,'username11','password5');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departs`
--

DROP TABLE IF EXISTS `departs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departs` (
  `city` varchar(45) NOT NULL,
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departs`
--

LOCK TABLES `departs` WRITE;
/*!40000 ALTER TABLE `departs` DISABLE KEYS */;
INSERT INTO `departs` VALUES ('Austin',1,'21:30:00'),('Beijing',2,'22:20:00'),('Berlin',3,'16:50:00'),('Delhi',4,'18:20:00'),('Jerusalem',5,'12:10:00'),('London',6,'01:20:00'),('Los Angeles',7,'03:20:00'),('Madrid',8,'22:45:00'),('New York',9,'05:20:00'),('Osaka',10,'13:00:00'),('Pretoria',11,'14:20:00'),('Rio De Janeiro',12,'16:20:00'),('Rome',13,'17:15:00'),('San Francisco',14,'08:50:00'),('Sao Paulo',15,'19:30:00'),('test',16,'12:00:00');
/*!40000 ALTER TABLE `departs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `comment` mediumtext,
  `rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'test',3.6),(2,'test',2.0);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `passenger_capacity` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `airline` varchar(45) DEFAULT NULL,
  `current_capacity` int DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (1,200,'CANCELED','EMIRATES',5),(2,500,'DELAYED','QATAR AIRLINES',1),(3,550,'ON TIME','UNITED AIRLINES',0),(4,750,'DEPARTING','UNITED AIRLINES',0),(5,1225,'ON TIME','ALLEGIANT AIR',0),(6,1400,'BOARDING','ALASKA AIRLINES',0),(7,1225,'ON TIME','GERMAN AIRLINE',0),(8,800,'LANDING','UNITED AIRLINES',0),(9,550,'BOARDING','SOUTWEST AIRLINES',5),(10,560,'DEPARTING','JETBLUE',0),(11,570,'ARRIVED','SPIRIT AIRLINES',0),(12,800,'DIVERTED','JETBLUE',0),(13,300,'ON TIME','JETBLUE',0),(14,860,'DELAYED','CATHAY PACIFIC',0),(15,930,'ON TIME','JETBLUE',0),(16,0,NULL,NULL,0),(17,0,'CANCELLED','JetBlue',0),(18,0,NULL,NULL,0);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `city` varchar(45) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES ('Beijing','China'),('Berlin','Germany'),('Buenos Aires',NULL),('Cairo','Egypt'),('Delhi','India'),('Jerusalem','Israel'),('London','United Kingdom'),('Los Angeles','United States of America'),('Mexico City','Mexico'),('Moscow','Russia'),('Mumbal','India'),('Osaka','Japan'),('Paris ','France'),('Pretoria','South Africa'),('Rio De Janeiro','Brazil'),('San Francisco','United States of America'),('Sao Pualo','Brazil'),('Seoul','South Korea'),('Shanghai','China'),('Tokyo','Japan');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `made up of`
--

DROP TABLE IF EXISTS `made up of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `made up of` (
  `admin_id` int NOT NULL,
  `flight_id` int NOT NULL,
  PRIMARY KEY (`admin_id`,`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `made up of`
--

LOCK TABLES `made up of` WRITE;
/*!40000 ALTER TABLE `made up of` DISABLE KEYS */;
INSERT INTO `made up of` VALUES (1,15),(2,14),(3,13),(4,12),(5,11),(6,10),(7,1),(8,2),(9,3),(10,4),(11,5),(12,9),(13,8),(14,7),(15,6);
/*!40000 ALTER TABLE `made up of` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderates`
--

DROP TABLE IF EXISTS `moderates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderates` (
  `admin_id` varchar(45) NOT NULL,
  `comment_id` int DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderates`
--

LOCK TABLES `moderates` WRITE;
/*!40000 ALTER TABLE `moderates` DISABLE KEYS */;
INSERT INTO `moderates` VALUES ('Allan',15),('Andy',14),('Bill',13),('Bob',12),('Carter',11),('Christopher',10),('Hannah',9),('Jasmit',8),('John',7),('Katherine',6),('Mike',5),('Nick',4),('Phil',3),('Sarah',2),('Victoria',1);
/*!40000 ALTER TABLE `moderates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertains`
--

DROP TABLE IF EXISTS `pertains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pertains` (
  `flight_id` int NOT NULL,
  `comment_id` int DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertains`
--

LOCK TABLES `pertains` WRITE;
/*!40000 ALTER TABLE `pertains` DISABLE KEYS */;
INSERT INTO `pertains` VALUES (1,15),(2,14),(3,13),(4,12),(5,11),(6,10),(7,9),(8,8),(9,7),(10,6),(11,5),(12,4),(13,3),(14,2),(15,1);
/*!40000 ALTER TABLE `pertains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `ticket_number` int NOT NULL AUTO_INCREMENT,
  `seat_number` int DEFAULT NULL,
  PRIMARY KEY (`ticket_number`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (0,0),(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'username','test'),(2,'username1','hunter2'),(3,'username2','password2'),(4,'username3','test1'),(5,'username4','test2'),(6,'username5','hunter3'),(7,'username6','name'),(8,'username7','password5'),(9,'username8','username2'),(10,'username9','password'),(11,'username11','password5'),(12,'username10','password3'),(13,'username12','password'),(14,'username13','password'),(15,'username14','password'),(16,'username15','password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 18:17:36
