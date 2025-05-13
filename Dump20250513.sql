-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: techcompany
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customersID` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `phone_Number` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `account_manager` int DEFAULT NULL,
  PRIMARY KEY (`customersID`),
  KEY `account_manager` (`account_manager`),
  CONSTRAINT `account_manager` FOREIGN KEY (`account_manager`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `departmentID` int NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(20) DEFAULT NULL,
  `created_date` varchar(20) DEFAULT NULL,
  `managerID` int DEFAULT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `github` char(30) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `departmentID` int DEFAULT NULL,
  `positionID` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `positionID` (`positionID`),
  KEY `departmentID` (`departmentID`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`positionID`) REFERENCES `positions` (`positionsID`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_skill`
--

DROP TABLE IF EXISTS `employees_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_skill` (
  `Employees_skillID` int NOT NULL AUTO_INCREMENT,
  `employeeID` int DEFAULT NULL,
  `skillsID` int DEFAULT NULL,
  PRIMARY KEY (`Employees_skillID`),
  KEY `employeeID` (`employeeID`),
  KEY `skillsID` (`skillsID`),
  CONSTRAINT `employees_skill_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `employees_skill_ibfk_2` FOREIGN KEY (`skillsID`) REFERENCES `skills` (`skillsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_skill`
--

LOCK TABLES `employees_skill` WRITE;
/*!40000 ALTER TABLE `employees_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `positionsID` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `min_salary` double(7,2) DEFAULT NULL,
  `max_salary` double(7,2) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`positionsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_technology`
--

DROP TABLE IF EXISTS `product_technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_technology` (
  `product_technologyID` int NOT NULL,
  `productID` int DEFAULT NULL,
  `technologyID` int DEFAULT NULL,
  PRIMARY KEY (`product_technologyID`),
  KEY `productID` (`productID`),
  KEY `technologyID` (`technologyID`),
  CONSTRAINT `product_technology_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  CONSTRAINT `product_technology_ibfk_2` FOREIGN KEY (`technologyID`) REFERENCES `technology` (`technologyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_technology`
--

LOCK TABLES `product_technology` WRITE;
/*!40000 ALTER TABLE `product_technology` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `projectID` int DEFAULT NULL,
  `launch_date` date DEFAULT NULL,
  `status_of_product` varchar(20) DEFAULT NULL,
  `repository_url` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `projectID` (`projectID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `projects` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `projectID` int NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status_of_project` varchar(20) DEFAULT NULL,
  `repository_url` char(100) DEFAULT NULL,
  `managerID` int DEFAULT NULL,
  PRIMARY KEY (`projectID`),
  KEY `managerID` (`managerID`),
  CONSTRAINT `managerID` FOREIGN KEY (`managerID`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skillsID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Skill_name` varchar(20) DEFAULT NULL,
  `is_certified` tinyint(1) DEFAULT NULL,
  `proficiency_level` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`skillsID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprint`
--

DROP TABLE IF EXISTS `sprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprint` (
  `sprintID` int NOT NULL AUTO_INCREMENT,
  `projectID` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `Story_points_planned` char(20) DEFAULT NULL,
  `story_points_completed` char(20) DEFAULT NULL,
  PRIMARY KEY (`sprintID`),
  KEY `projectID` (`projectID`),
  CONSTRAINT `sprint_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `projects` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprint`
--

LOCK TABLES `sprint` WRITE;
/*!40000 ALTER TABLE `sprint` DISABLE KEYS */;
/*!40000 ALTER TABLE `sprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `tasksID` int NOT NULL AUTO_INCREMENT,
  `sprintID` int DEFAULT NULL,
  `assigned_employee` int DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `status_of_task` varchar(20) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `story_points` varchar(20) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  PRIMARY KEY (`tasksID`),
  KEY `sprintID` (`sprintID`),
  KEY `assigned_employee` (`assigned_employee`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`sprintID`) REFERENCES `sprint` (`sprintID`),
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`assigned_employee`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology` (
  `technologyID` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `version` char(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`technologyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-13 16:18:25
