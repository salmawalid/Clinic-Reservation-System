-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `doctor_username` varchar(255) DEFAULT NULL,
  `patient_username` varchar(255) DEFAULT NULL,
  `day_of_week` varchar(255) DEFAULT NULL,
  `time_slot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'yousef','','as12','as12'),(6,'esraa','YOUR_PATIENT_USERNAME','Monday','09:00 AM'),(7,'esraa','YOUR_PATIENT_USERNAME','Monday','09:00 AM'),(8,'esraa','YOUR_PATIENT_USERNAME','Monday','09:00 AM'),(9,'esraa','YOUR_PATIENT_USERNAME','Monday','09:00 AM'),(10,'yousef','YOUR_PATIENT_USERNAME','Monday','09:00 AM'),(11,'yousef','YOUR_PATIENT_USERNAME','Monday','09:00 AM'),(12,'esraa','dsds','asas','assa'),(13,'esraa','esraa','asas','asas'),(14,'esraa','esraa','asas','asas'),(16,'yousef','dsds','الاحد','10 بليل'),(19,'esraa','ismail','Monday','9:00 AM - 10:00 AM	'),(20,'esraa','alii','monday1','10:00 AP'),(21,'esraa10','ahmed1','satrday','10:00 pm	'),(23,'esraa10','ahmed1','satrday','11:00 pm	');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_slots`
--

DROP TABLE IF EXISTS `doctor_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_slots` (
  `doctor_username` varchar(255) NOT NULL,
  `day_of_week` varchar(255) NOT NULL,
  `time_slot` varchar(255) NOT NULL,
  `status` enum('booked','not booked') DEFAULT 'not booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_slots`
--

LOCK TABLES `doctor_slots` WRITE;
/*!40000 ALTER TABLE `doctor_slots` DISABLE KEYS */;
INSERT INTO `doctor_slots` VALUES ('esraa','Monday','10:00 AM - 11:00 AM','booked'),('esraa','Monday','11:00 AM - 12:00 AM',NULL),('esraa','Monday','9:00 AM - 10:00 AM',NULL),('esraa','Monday','9:00 AM - 10:00 AM',NULL),('esraa','Monday','1:00 AM - 2:00 AM','booked'),('esraa','Monday','09:00 AM','booked'),('yousef','Monday','09:00 AM','booked'),('esraa','friday','10:00 AM','booked'),('esraa','asas','assa','booked'),('esraa','asas','assa1','booked'),('esraa','monday','10:00 AP',NULL),('esraa','monday1','10:00 AP',NULL),('yousef','as','as','booked'),('yousef','as12','as12','booked'),('yousef','monday','10:00 AM','not booked'),('yousef','monday','11:00 AM','not booked'),('yousef','monday','12:00 AM','not booked'),('yousef','monday','1:00 AM','not booked'),('esraa','10 march','2003/20/2',NULL),('yousef','الاحد ','10 بليل',NULL),('esraa10','satrday','10:00 pm',NULL),('esraa10','satrday','11:00 pm',NULL);
/*!40000 ALTER TABLE `doctor_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('doctor','patient') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'esraa','esraa','doctor'),(2,'yousef','yousef','doctor'),(3,'yousef1','yousef1','doctor'),(4,'yousef11','yousef1','doctor'),(5,'omar','omar','doctor'),(6,'fooo','yousef1','patient'),(7,'ahmed','ahmed','doctor'),(8,'alii','ahmed1','patient'),(9,'alii','ahmed1','patient'),(10,'wafaa','Monday','patient'),(11,'yousefessam44034@gmail.com','sdsddsdds','patient'),(12,'gfdgdgdfg','dfsdfsdfds','patient'),(13,'dsds','sassfdfd','patient'),(14,'johndoe','mypassword','patient'),(15,'gdfgfg','fdgdffgf','doctor'),(16,'dsdf','dsfds','patient'),(17,'dsdfd','dsfds','patient'),(18,'deahmd','dsfds','doctor'),(19,'123123123','23131233','patient'),(20,'qw','qwqw','patient'),(21,'adsd','asdasd','patient'),(22,'','','patient'),(23,'esraa1','esraa','patient'),(24,'salma','salma','doctor'),(25,'qw1','salma','patient'),(26,'awe','awe','doctor'),(27,'yousefessam@gmail','1212','patient'),(28,'ismail','omar','patient'),(29,'ismail1','omar1','doctor'),(30,'esraa10','esraa10','doctor'),(31,'ahmed1','ahmed1','patient');
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

-- Dump completed on 2023-11-28 17:59:08
