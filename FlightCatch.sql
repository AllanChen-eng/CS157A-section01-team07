-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: FlightCatch
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
-- Table structure for table `Airport`
--

DROP TABLE IF EXISTS `Airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Airport` (
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `airport_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`airport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Airport`
--

LOCK TABLES `Airport` WRITE;
/*!40000 ALTER TABLE `Airport` DISABLE KEYS */;
INSERT INTO `Airport` VALUES ('Beijing','China',1),('Berlin','Germany',2),('Buenos Aires','Argentina',3),('Cairo','Egypt',4),('Delhi','India',5),('Jerusalem','Israel',6),('London','United Kingdom',7),('Los Angeles','United States of America',8),('Mexico City','Mexico',9),('Moscow','Russia',10),('Mumbal','India',11),('Osaka','Japan',12),('Paris ','France',13),('Pretoria','South Africa',14),('Rio De Janeiro','Brazil',15),('San Francisco','United States of America',16),('Sao Pualo','Brazil',17),('Seoul','South Korea',18),('Shanghai','China',19),('Tokyo','Japan',20);
/*!40000 ALTER TABLE `Airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Arrives`
--

DROP TABLE IF EXISTS `Arrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arrives` (
  `city` varchar(45) NOT NULL,
  `time` time DEFAULT NULL,
  `flight_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arrives`
--

LOCK TABLES `Arrives` WRITE;
/*!40000 ALTER TABLE `Arrives` DISABLE KEYS */;
INSERT INTO `Arrives` VALUES ('Buenos Aires','14:30:00','2'),('Cairo','17:15:00','15'),('Delhi','21:40:00','17'),('Istanbul','03:20:00','10'),('London','13:45:00','5'),('Mexico City','18:50:00','9'),('Moscow','18:20:00','1'),('Mumbal','09:30:00','18'),('Osaka','07:50:00','8'),('Paris','08:30:00','3'),('San Francisco','11:45:00','7'),('Sao Paulo','15:20:00','11'),('Seoul','10:30:00','6'),('Shanghai','22:30:00','14'),('Tokyo','01:30:00','4');
/*!40000 ALTER TABLE `Arrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bought`
--

DROP TABLE IF EXISTS `Bought`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bought` (
  `user_id` int NOT NULL,
  `price` int DEFAULT NULL,
  `ticket_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bought`
--

LOCK TABLES `Bought` WRITE;
/*!40000 ALTER TABLE `Bought` DISABLE KEYS */;
INSERT INTO `Bought` VALUES (1,500,'13'),(2,500,'10'),(3,1250,'11'),(4,300,'9'),(5,1250,'6'),(6,700,'8'),(7,3000,'7'),(8,2000,'4'),(9,1250,'2'),(10,900,'1'),(11,1000,'3'),(12,250,'5'),(13,800,'14'),(14,700,'15'),(15,750,'12');
/*!40000 ALTER TABLE `Bought` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Buyers`
--

DROP TABLE IF EXISTS `Buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Buyers` (
  `user_id` int NOT NULL,
  `business_class` tinyint DEFAULT NULL,
  `economy_class` tinyint DEFAULT NULL,
  `first_class` tinyint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `User` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Buyers`
--

LOCK TABLES `Buyers` WRITE;
/*!40000 ALTER TABLE `Buyers` DISABLE KEYS */;
INSERT INTO `Buyers` VALUES (1,0,0,1),(2,1,0,0),(3,0,0,0),(4,0,1,0),(5,1,0,0),(6,1,0,0),(7,0,0,1),(8,1,0,0),(9,0,1,0),(10,0,1,0),(11,1,0,0),(12,0,1,0),(13,0,1,0),(14,1,0,0),(15,0,0,1);
/*!40000 ALTER TABLE `Buyers` ENABLE KEYS */;
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
-- Table structure for table `Departs`
--

DROP TABLE IF EXISTS `Departs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departs` (
  `city` varchar(45) NOT NULL,
  `flight_id` int NOT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`city`,`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departs`
--

LOCK TABLES `Departs` WRITE;
/*!40000 ALTER TABLE `Departs` DISABLE KEYS */;
INSERT INTO `Departs` VALUES ('Austin',4,'21:30:00'),('Beijing',14,'22:20:00'),('Berlin',7,'16:50:00'),('Delhi',13,'18:20:00'),('Jerusalem',9,'12:10:00'),('London',1,'01:20:00'),('Los Angeles',2,'03:20:00'),('Madrid',5,'22:45:00'),('New York',3,'05:20:00'),('Osaka',16,'13:00:00'),('Pretoria',8,'14:20:00'),('Rio De Janeiro',12,'16:20:00'),('Rome',6,'17:15:00'),('San Francisco',10,'08:50:00'),('Sao Paulo',15,'19:30:00'),('Topeka',11,'06:50:00');
/*!40000 ALTER TABLE `Departs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Feedback`
--

DROP TABLE IF EXISTS `Feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Feedback` (
  `comment_id` int NOT NULL,
  `comment` text,
  `rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feedback`
--

LOCK TABLES `Feedback` WRITE;
/*!40000 ALTER TABLE `Feedback` DISABLE KEYS */;
INSERT INTO `Feedback` VALUES (1,'Great service',5.0),(2,'Airline lost my luggage!',1.0),(3,'average',3.0),(4,'below average',2.5),(5,'the worse',1.0),(6,'great',5.0),(7,'average',3.5),(8,'good',4.0),(9,'Excellent service',5.0),(10,'comfy chairs',4.5),(11,'Plenty of legroom',5.0),(12,'cramped plane',2.0),(13,'bad food',1.0),(14,'seat was terrible',1.0),(15,'great view and excellent flight',5.0);
/*!40000 ALTER TABLE `Feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flight`
--

DROP TABLE IF EXISTS `Flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Flight` (
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `passenger_capacity` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `airline` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flight`
--

LOCK TABLES `Flight` WRITE;
/*!40000 ALTER TABLE `Flight` DISABLE KEYS */;
INSERT INTO `Flight` VALUES (1,200,'CANCELED','EMIRATES'),(2,500,'DELAYED','QATAR AIRLINES'),(3,550,'ON TIME','UNITED AIRLINES'),(4,750,'DEPARTING','UNITED AIRLINES'),(5,1225,'ON TIME','ALLEGIANT AIR'),(6,1400,'BOARDING','ALASKA AIRLINES'),(7,1225,'ON TIME','GERMAN AIRLINE'),(8,800,'LANDING','UNITED AIRLINES'),(9,550,'BOARDING','SOUTWEST AIRLINES'),(10,560,'DEPARTING','JETBLUE'),(11,570,'ARRIVED','SPIRIT AIRLINES'),(12,800,'DIVERTED','JETBLUE'),(13,300,'ON TIME','JETBLUE'),(14,860,'DELAYED','CATHAY PACIFIC'),(15,930,'ON TIME','JETBLUE');
/*!40000 ALTER TABLE `Flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Have a`
--

DROP TABLE IF EXISTS `Have a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Have a` (
  `access_privilege` int NOT NULL,
  `admin_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Have a`
--

LOCK TABLES `Have a` WRITE;
/*!40000 ALTER TABLE `Have a` DISABLE KEYS */;
INSERT INTO `Have a` VALUES (1,'Allan'),(2,'Nick'),(3,'Jasmit'),(4,'Andy'),(5,'Bill'),(1,'Bob'),(2,'Sarah'),(3,'Victoria'),(4,'Carter'),(5,'Christopher'),(1,'Hannah'),(2,'John'),(3,'Katherine'),(4,'Mike'),(5,'Phil');
/*!40000 ALTER TABLE `Have a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Made up of`
--

DROP TABLE IF EXISTS `Made up of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Made up of` (
  `admin_id` int NOT NULL,
  `flight_id` int NOT NULL,
  PRIMARY KEY (`admin_id`,`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Made up of`
--

LOCK TABLES `Made up of` WRITE;
/*!40000 ALTER TABLE `Made up of` DISABLE KEYS */;
INSERT INTO `Made up of` VALUES (1,15),(2,14),(3,13),(4,12),(5,11),(6,10),(7,1),(8,2),(9,3),(10,4),(11,5),(12,9),(13,8),(14,7),(15,6);
/*!40000 ALTER TABLE `Made up of` ENABLE KEYS */;
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
-- Table structure for table `Pertains`
--

DROP TABLE IF EXISTS `Pertains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pertains` (
  `flight_id` int NOT NULL,
  `comment_id` int DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pertains`
--

LOCK TABLES `Pertains` WRITE;
/*!40000 ALTER TABLE `Pertains` DISABLE KEYS */;
INSERT INTO `Pertains` VALUES (1,15),(2,14),(3,13),(4,12),(5,11),(6,10),(7,9),(8,8),(9,7),(10,6),(11,5),(12,4),(13,3),(14,2),(15,1);
/*!40000 ALTER TABLE `Pertains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Role` (
  `access_privileges` int NOT NULL,
  `comment moderator` tinyint DEFAULT NULL,
  `update website` tinyint DEFAULT NULL,
  PRIMARY KEY (`access_privileges`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
INSERT INTO `Role` VALUES (1,0,0),(2,1,0),(3,1,0),(4,1,1),(5,1,1);
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tickets` (
  `ticket_number` int NOT NULL AUTO_INCREMENT,
  `flight_id` int NOT NULL,
  PRIMARY KEY (`ticket_number`,`flight_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
INSERT INTO `Tickets` VALUES (1,15),(2,14),(3,13),(4,12),(5,11),(6,10),(7,9),(8,8),(9,7),(10,6),(11,5),(12,4),(13,3),(14,2),(15,1);
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
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

-- Dump completed on 2020-11-28 20:33:45
