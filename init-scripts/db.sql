-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: database_trial
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `S.No` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(5) NOT NULL,
  `name` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `place_of_posting` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joining` date NOT NULL,
  `cause_of_vacancy` varchar(45) NOT NULL,
  `caste` varchar(45) NOT NULL,
  `posted_against_reservation` varchar(45) NOT NULL,
  `pwd` tinyint NOT NULL,
  `ex_servicemen` tinyint NOT NULL,
  `date_of_retirement` date GENERATED ALWAYS AS (last_day((`date_of_birth` + interval 60 year))) STORED COMMENT 'DATE_ADD(date_of_birth, INTERVAL 60 YEAR)\n\nfor last day:\n\nLAST_DAY(DATE_ADD(date_of_birth, INTERVAL 60 YEAR))',
  `assembly_constituency` varchar(45) NOT NULL,
  `creation_no` int NOT NULL,
  `retention_no` int NOT NULL,
  `man_in_position` varchar(45) NOT NULL,
  `name_of_treasury` varchar(45) NOT NULL,
  `date_of_suspension` date DEFAULT NULL,
  `date_of_reinstatement` date DEFAULT NULL,
  `date_of_promotion` date DEFAULT NULL,
  `date_of_regularisation` date DEFAULT NULL,
  PRIMARY KEY (`S.No`,`employee_id`),
  UNIQUE KEY `Primary Key_UNIQUE` (`S.No`),
  UNIQUE KEY `Name_UNIQUE` (`name`),
  UNIQUE KEY `Employee ID_UNIQUE` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='add cluster constituency creation number and retention, no. of sanctioned post, man in position, name of treasury';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`S.No`, `employee_id`, `name`, `designation`, `gender`, `place_of_posting`, `date_of_birth`, `date_of_joining`, `cause_of_vacancy`, `caste`, `posted_against_reservation`, `pwd`, `ex_servicemen`, `assembly_constituency`, `creation_no`, `retention_no`, `man_in_position`, `name_of_treasury`, `date_of_suspension`, `date_of_reinstatement`, `date_of_promotion`, `date_of_regularisation`) VALUES (20,'2001','MAKIBUR RAHMAN','Research Officer','Male','Kamrup','1988-05-10','2008-06-10','Termination','UR','Yes',1,0,'Kamrup ',1,1,'Name 1','Name 1',NULL,NULL,NULL,NULL),(21,'2002','GITANJALI OJAH','Inspecting Auditor','Female','Tinsukia','1967-06-12','1986-12-18','Retirement','OBC/MOBC','No',0,0,'Tinsukia',2,2,'Name 1','Name 1',NULL,NULL,NULL,NULL),(22,'2003','BINOD ALI KHAN','Finance Officer','Male','DHUBRI','1954-01-23','1981-01-06','Retirement','UR','Yes',0,1,'Dhubri',3,3,'Name 1','Name 1',NULL,NULL,NULL,NULL),(23,'2004','SALEHA BEGUM BARBHUIYA','Research Assistant','Female','HAILAKANDI','1957-01-21','1991-02-21','Expiry','UR','Yes',0,0,'Hailakandi',4,4,'Name 1','Name 1',NULL,NULL,NULL,NULL),(24,'2005','KANCHA RAM PEGU','Computor','Male','JORHAT','1960-01-02','2004-09-21','Resignation','STP','No',0,1,'Jorhat',5,5,'Name 1','Name 1',NULL,NULL,NULL,NULL),(25,'2006','MUZAMMIL HOQUE','Registrar','Male','NAGAON','1967-02-22','2001-08-22','Expiry','OBC/MOBC','No',0,0,'Nagaon',6,6,'Name 1','Name 1','2025-01-09','2025-01-08',NULL,'2025-01-21'),(26,'2007','OWAZ UDDIN SK','Driver','Male','GOALPARA','1956-07-21','1996-01-21','Retirement','UR','Yes',0,1,'Goalpara',7,7,'Name 1','Name 1',NULL,NULL,NULL,NULL),(27,'2008','MONODHIR DAS','Jamadar','Male','KARIMGANJ','1984-03-21','2018-02-23','Expiry','SC','No',0,0,'Karimganj',8,8,'Name 1','Name 1',NULL,NULL,NULL,NULL),(28,'2009','SATRAM DEKA','Stenographer','Male','KAMRUP','1967-10-20','2004-01-01','Termination','UR','Yes',0,0,'Kamrup',9,9,'Name 1','Name 1',NULL,NULL,NULL,NULL),(29,'2010','CHITRA KT BANGTHAI','Superintendent','Male','MORIGAON','1980-11-12','2010-02-03','Resignation','STH','No',0,0,'Morigaon',10,10,'Name 1','Name 1',NULL,NULL,NULL,NULL),(30,'201','MAKIBUR OJAH','O.S.D.','Male','Hailakandi','1993-01-06','2023-02-18','Expiry','UR','No',0,1,'Baksa',8,8,'Name 1','Name 1',NULL,NULL,NULL,NULL),(39,'06002','bbb','Accounts Officer','Female','Chirang','2025-01-17','2025-01-31','Resignation','STP','Yes',1,0,'Baksa',11,11,'Name 1','Name 1',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_details`
--

DROP TABLE IF EXISTS `id_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_details` (
  `id` int NOT NULL,
  `district_name` varchar(45) NOT NULL,
  `district_no` int NOT NULL,
  `role` enum('superadmin','admin','viewer','district_admin','district_viewer') NOT NULL,
  `emp_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_details`
--

LOCK TABLES `id_details` WRITE;
/*!40000 ALTER TABLE `id_details` DISABLE KEYS */;
INSERT INTO `id_details` VALUES (1,'Baksa',1,'superadmin',0),(2,'Barpeta',2,'superadmin',0),(3,'Bongaigaon',3,'superadmin',0),(4,'Cachar',4,'superadmin',0),(5,'Chairadeo',5,'superadmin',0),(6,'Chirang',6,'superadmin',0),(7,'Darrang',7,'superadmin',0),(8,'Dhemaji',8,'superadmin',0),(9,'Dhubri',9,'superadmin',0),(10,'Dibrugarh',10,'superadmin',0),(11,'Dima Hasao',11,'superadmin',0),(12,'Goalpara',12,'superadmin',0),(13,'Golaghat',13,'superadmin',0),(14,'Hailakandi',14,'superadmin',0),(15,'Jorhat',15,'superadmin',0),(16,'Kamrup Metro',16,'superadmin',0),(17,'Kamrup',17,'superadmin',0),(18,'Karbi Anglong',18,'superadmin',0),(19,'Karimganj',19,'superadmin',0),(20,'Kokrajhar',20,'superadmin',0),(21,'Lakhimpur',21,'superadmin',0),(22,'Majuli',22,'superadmin',0),(23,'Morigaon',23,'superadmin',0),(24,'Nagaon',24,'superadmin',0),(25,'Nalbari',25,'superadmin',0),(26,'Sivasagar',26,'superadmin',0),(27,'Sonitpur',27,'superadmin',0),(28,'South Salmara-Mankachar',28,'superadmin',0),(29,'Tinsukia',29,'superadmin',0),(30,'Udalguri',30,'superadmin',0),(31,'	West Karbi Anglong',31,'superadmin',0),(32,'Biswanath',32,'superadmin',0),(33,'	Hojai',33,'superadmin',0),(34,'	Bajali',34,'superadmin',0),(35,'	Tamulpur',35,'superadmin',0);
/*!40000 ALTER TABLE `id_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_tracker`
--

DROP TABLE IF EXISTS `id_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_tracker` (
  `s.no` int NOT NULL,
  `district` varchar(10) NOT NULL,
  `role` enum('superadmin','admin','viewer','district_admin','district_viewer') NOT NULL,
  `last_assigned` int unsigned NOT NULL,
  PRIMARY KEY (`s.no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_tracker`
--

LOCK TABLES `id_tracker` WRITE;
/*!40000 ALTER TABLE `id_tracker` DISABLE KEYS */;
INSERT INTO `id_tracker` VALUES (1,'00','superadmin',0);
/*!40000 ALTER TABLE `id_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_changes`
--

DROP TABLE IF EXISTS `pending_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_changes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `updated_data` json NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `requested_by` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_changes`
--

LOCK TABLES `pending_changes` WRITE;
/*!40000 ALTER TABLE `pending_changes` DISABLE KEYS */;
INSERT INTO `pending_changes` VALUES (1,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director General \", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 1\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','rejected','2024-12-31 17:54:24','2024-12-31 17:54:24','bvg'),(2,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director General\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 1\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','rejected','2024-12-31 17:58:34','2024-12-31 17:58:34','bvg'),(3,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"None\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 1\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','rejected','2024-12-31 17:58:54','2024-12-31 17:58:54','bvg'),(4,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 6\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','rejected','2024-12-31 18:00:31','2024-12-31 18:00:31','bvg'),(5,2,'{\"pwd\": false, \"S.No\": 2, \"name\": \"Name 4\", \"caste\": \"SC\", \"gender\": \"Male\", \"designation\": \"Director\", \"employee_id\": 2, \"date_of_birth\": \"1980-01-31\", \"ex_servicemen\": true, \"date_of_joining\": \"2004-12-31\", \"cause_of_vacancy\": \"Transfer\", \"place_of_posting\": \"District 2\", \"date_of_retirement\": \"2040-02-28T18:30:00.000Z\", \"posted_against_reservation\": \"SC\"}','rejected','2024-12-31 18:14:28','2024-12-31 18:14:28','asd'),(6,4,'{\"pwd\": true, \"S.No\": 4, \"name\": \"Name 4\", \"caste\": \"STH\", \"gender\": \"Male\", \"designation\": \"Deputy Director\", \"employee_id\": 4, \"date_of_birth\": \"1972-01-02\", \"ex_servicemen\": true, \"date_of_joining\": \"2004-05-06\", \"cause_of_vacancy\": \"Expiry\", \"place_of_posting\": \"District 9\", \"date_of_retirement\": \"2032-01-30T18:30:00.000Z\", \"posted_against_reservation\": \"STH\"}','approved','2024-12-31 18:23:41','2024-12-31 18:23:41','bvg'),(7,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director General\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 1\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','rejected','2025-01-01 02:47:28','2025-01-01 02:47:28','bvg'),(8,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 76\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-01 02:59:55','2025-01-01 02:59:55','asd'),(9,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 90\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-01 03:01:44','2025-01-01 03:01:44','asd'),(10,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 54\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-01 03:02:29','2025-01-01 03:02:29','asd'),(11,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-30\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-30\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 54\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-01 03:03:13','2025-01-01 03:03:13','asd'),(12,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-29\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-29\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 54\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','rejected','2025-01-01 03:22:34','2025-01-01 03:22:34','asd'),(13,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-29\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-29\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 1\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','rejected','2025-01-01 03:25:23','2025-01-01 03:25:23','asd'),(14,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-29\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-29\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 1\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-01 03:35:58','2025-01-01 03:35:58','asd'),(15,6,'{\"pwd\": true, \"S.No\": 6, \"name\": \"Name 6\", \"caste\": \"EWS\", \"gender\": \"Female\", \"designation\": \"Finance & Accounts Officer \", \"employee_id\": 6, \"date_of_birth\": \"1967-12-20\", \"ex_servicemen\": false, \"date_of_joining\": \"2007-02-20\", \"cause_of_vacancy\": \"Transfer\", \"place_of_posting\": \"District 9\", \"date_of_retirement\": \"2027-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"EWS\"}','approved','2025-01-01 03:42:47','2025-01-01 03:42:47','bvg'),(16,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-28\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-28\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 4\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-01 03:46:06','2025-01-01 03:46:06','asd'),(17,1,'{\"pwd\": false, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \\n\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-27\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-27\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 5\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-01 03:46:43','2025-01-01 03:46:43','asd'),(18,3,'{\"pwd\": true, \"S.No\": 3, \"name\": \"Name 3\", \"caste\": \"STP\", \"gender\": \"Female\", \"designation\": \"Joint Director\", \"employee_id\": 3, \"date_of_birth\": \"1980-01-02\", \"ex_servicemen\": false, \"date_of_joining\": \"2002-12-31\", \"cause_of_vacancy\": \"Termination\", \"place_of_posting\": \"District 7\", \"date_of_retirement\": \"2040-01-30T18:30:00.000Z\", \"posted_against_reservation\": \"STP\"}','rejected','2025-01-01 04:03:58','2025-01-01 04:03:58','bvg'),(19,1,'{\"pwd\": true, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director General\", \"employee_id\": 1, \"date_of_birth\": \"1969-12-26\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-26\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 5\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-02 11:23:51','2025-01-02 11:23:51','asd'),(20,3,'{\"pwd\": true, \"S.No\": 3, \"name\": \"Name 3\", \"caste\": \"STP\", \"gender\": \"Female\", \"designation\": \"Director\", \"employee_id\": 3, \"date_of_birth\": \"1980-01-02\", \"ex_servicemen\": false, \"date_of_joining\": \"2002-12-31\", \"cause_of_vacancy\": \"Termination\", \"place_of_posting\": \"District 3\", \"date_of_retirement\": \"2040-01-30T18:30:00.000Z\", \"posted_against_reservation\": \"STP\"}','rejected','2025-01-02 12:17:20','2025-01-02 12:17:20','bvg'),(21,1,'{\"pwd\": true, \"S.No\": 1, \"name\": \"Name 1\", \"caste\": \"UR\", \"gender\": \"Female\", \"designation\": \"Director \", \"employee_id\": 1, \"date_of_birth\": \"1969-12-25\", \"ex_servicemen\": false, \"date_of_joining\": \"1999-12-25\", \"cause_of_vacancy\": \"Retirement\", \"place_of_posting\": \"District 5\", \"date_of_retirement\": \"2029-12-30T18:30:00.000Z\", \"posted_against_reservation\": \"UR\"}','approved','2025-01-02 12:45:27','2025-01-02 12:45:27','bvg'),(22,1001,'{\"pwd\": true, \"S.No\": 17, \"name\": \"ahaan\", \"caste\": \"OBC/MOBC\", \"gender\": \"Male\", \"creation_no\": 1, \"designation\": \"Research Officer\", \"employee_id\": 1001, \"retention_no\": 1, \"date_of_birth\": \"2024-12-31\", \"ex_servicemen\": true, \"date_of_joining\": \"2025-01-02\", \"man_in_position\": \"Name 1\", \"cause_of_vacancy\": \"Termination\", \"name_of_treasury\": \"Name 1\", \"place_of_posting\": \"Kamrup \", \"date_of_retirement\": \"2085-01-30T18:30:00.000Z\", \"assembly_constituency\": \"Kamrup \", \"posted_against_reservation\": \"Yes\"}','approved','2025-01-09 17:21:11','2025-01-09 17:21:11','mls'),(23,2006,'{\"pwd\": false, \"S.No\": 25, \"name\": \"MUZAMMIL HOQUE\", \"caste\": \"OBC/MOBC\", \"gender\": \"Male\", \"creation_no\": 6, \"designation\": \"Registrar\", \"employee_id\": \"2006\", \"retention_no\": 6, \"date_of_birth\": \"1967-02-22\", \"ex_servicemen\": false, \"date_of_joining\": \"2001-08-22\", \"man_in_position\": \"Name 1\", \"cause_of_vacancy\": \"Expiry\", \"name_of_treasury\": \"Name 1\", \"place_of_posting\": \"NAGAON\", \"date_of_promotion\": \"2025-01-15\", \"date_of_retirement\": \"2027-02-27T18:30:00.000Z\", \"date_of_suspension\": \"2025-01-09\", \"assembly_constituency\": \"Nagaon\", \"date_of_reinstatement\": \"2025-01-08\", \"date_of_regularisation\": \"2025-01-21\", \"posted_against_reservation\": \"No\"}','approved','2025-01-18 08:21:39','2025-01-18 08:21:39','00100');
/*!40000 ALTER TABLE `pending_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` enum('superadmin','admin','viewer','district_admin','district_viewer') NOT NULL,
  `district` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'00100','123','superadmin',NULL),(2,'00200','234','admin',NULL),(3,'00000','567','viewer',NULL),(4,'01100','EVHDimebag66#','district_admin','Kamrup'),(5,'01000','345','district_viewer','Kamrup'),(6,'00203',NULL,'admin',NULL),(7,'01002',NULL,'district_viewer',NULL),(10,'05001','Asd133667#','district_viewer','Charaideo'),(11,'06002','zAJcAdZVApG9Eih#','district_viewer','Chirang');
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

-- Dump completed on 2025-01-20 18:43:06
