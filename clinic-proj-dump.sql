-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: eitanproj
-- ------------------------------------------------------
-- Server version	8.0.44

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
  `appointmentID` int NOT NULL AUTO_INCREMENT,
  `patientID` int NOT NULL,
  `doctorID` int NOT NULL,
  `departmentID` int NOT NULL,
  `appointmentDate` date NOT NULL,
  `appointmentTime` time NOT NULL,
  `reason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`appointmentID`),
  KEY `patientID` (`patientID`),
  KEY `doctorID` (`doctorID`),
  KEY `departmentID` (`departmentID`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctorID`) REFERENCES `doctors` (`doctorID`),
  CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`departmentID`) REFERENCES `departments` (`departmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (2,27419583,47291836,3,'2024-01-11','10:30:00','Migraine follow-up'),(3,61938274,81624739,2,'2024-01-12','11:00:00','Knee pain assessment'),(5,72638491,81624739,2,'2024-01-14','14:00:00','Back pain consultation'),(7,58243917,52739481,1,'2024-01-16','13:00:00','Chest tightness evaluation'),(8,91472638,81624739,2,'2024-01-17','15:00:00','Joint pain assessment'),(9,64829173,47291836,3,'2024-01-18','10:00:00','Migraine diagnosis'),(12,74829163,52739481,1,'2024-03-01','10:00:00','General checkup');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_patients`
--

DROP TABLE IF EXISTS `deleted_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_patients` (
  `deletedID` int NOT NULL AUTO_INCREMENT,
  `patientID` int DEFAULT NULL,
  `patientFirstName` varchar(25) DEFAULT NULL,
  `patientLastName` varchar(15) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `age` int DEFAULT NULL,
  `patientAddress` varchar(40) DEFAULT NULL,
  `entryReason` varchar(50) DEFAULT NULL,
  `immediateFamily` varchar(60) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`deletedID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_patients`
--

LOCK TABLES `deleted_patients` WRITE;
/*!40000 ALTER TABLE `deleted_patients` DISABLE KEYS */;
INSERT INTO `deleted_patients` VALUES (1,38175926,'Hana','Azulay','female',48,'Rehov HaGalil 14, Netanya','Fatigue','Shimon Azulay','2026-05-20 13:28:26'),(2,49281736,'Rivka','Peretz','female',41,'Rehov Jabotinsky 33, Petah Tikva','Dizziness','Avi Peretz','2026-05-27 11:27:41');
/*!40000 ALTER TABLE `deleted_patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `departmentID` int NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(40) NOT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Cardiology'),(2,'Orthopedics'),(3,'Neurology'),(4,'Pediatrics'),(5,'General Practice');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `doctor_prescriptions`
--

DROP TABLE IF EXISTS `doctor_prescriptions`;
/*!50001 DROP VIEW IF EXISTS `doctor_prescriptions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `doctor_prescriptions` AS SELECT 
 1 AS `doctorID`,
 1 AS `doctorFirstName`,
 1 AS `doctorLastName`,
 1 AS `departmentName`,
 1 AS `patientFirstName`,
 1 AS `patientLastName`,
 1 AS `medicationName`,
 1 AS `dosage`,
 1 AS `frequency`,
 1 AS `startDate`,
 1 AS `endDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `doctor_workload`
--

DROP TABLE IF EXISTS `doctor_workload`;
/*!50001 DROP VIEW IF EXISTS `doctor_workload`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `doctor_workload` AS SELECT 
 1 AS `doctorID`,
 1 AS `doctorFirstName`,
 1 AS `doctorLastName`,
 1 AS `departmentName`,
 1 AS `totalAppointments`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctorID` int NOT NULL,
  `doctorFirstName` varchar(25) NOT NULL,
  `doctorLastName` varchar(15) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `age` int NOT NULL,
  `doctorAddress` varchar(40) DEFAULT NULL,
  `department` int NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`doctorID`),
  KEY `department` (`department`),
  CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`department`) REFERENCES `departments` (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (26483917,'Gal','Meiri','male',37,'Rehov HaHistadrut 19, Haifa',5,18000.00),(47291836,'Noam','Elharar','male',55,'Rehov HaTikva 6, Jerusalem',3,27000.00),(52739481,'Rafi','Amar','male',48,'Rehov HaMasger 3, Tel Aviv',1,25000.00),(63817294,'Amir','Levy','male',45,'Rehov Weizmann 3, Tel Aviv',1,24000.00),(81624739,'Tali','Dagan','female',39,'Rehov Arlozorov 11, Tel Aviv',2,22000.00),(93817264,'Shira','Biton','female',43,'Rehov Sderot Chen 8, Tel Aviv',4,20000.00);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `full_patient_appointment_history`
--

DROP TABLE IF EXISTS `full_patient_appointment_history`;
/*!50001 DROP VIEW IF EXISTS `full_patient_appointment_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `full_patient_appointment_history` AS SELECT 
 1 AS `patientID`,
 1 AS `patientFirstName`,
 1 AS `patientLastName`,
 1 AS `doctorFirstName`,
 1 AS `doctorLastName`,
 1 AS `departmentName`,
 1 AS `appointmentDate`,
 1 AS `appointmentTime`,
 1 AS `reason`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patientID` int NOT NULL,
  `patientFirstName` varchar(25) NOT NULL,
  `patientLastName` varchar(15) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `age` int NOT NULL,
  `patientAddress` varchar(40) DEFAULT NULL,
  `entryReason` varchar(50) DEFAULT NULL,
  `immediateFamily` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (27419583,'Yael','Levi','female',28,'Rehov Herzl 45, Jerusalem','Headache','Moshe Levi'),(58243917,'David','Friedman','male',45,'Rehov Dizengoff 77, Tel Aviv','Chest tightness','Miriam Friedman'),(61938274,'Moshe','Mizrahi','male',52,'Rehov Ben Gurion 7, Haifa','Knee pain','Rivka Mizrahi'),(64829173,'Yosef','Ben David','male',31,'Rehov Rothschild 55, Tel Aviv','Migraine','Hana Ben David'),(72638491,'Avi','Shapiro','male',67,'Rehov Weizmann 18, Beer Sheva','Back pain','Leah Shapiro'),(74829163,'Noa','Israeli','female',32,'Rehov Herzl 5, Tel Aviv','Stomach pain','Ilan Israeli'),(91472638,'Miriam','Goldberg','female',59,'Rehov HaNassi 22, Haifa','Joint pain','Yosef Goldberg');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patients_per_department`
--

DROP TABLE IF EXISTS `patients_per_department`;
/*!50001 DROP VIEW IF EXISTS `patients_per_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patients_per_department` AS SELECT 
 1 AS `departmentID`,
 1 AS `departmentName`,
 1 AS `totalPatients`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `payment_summary_per_patient`
--

DROP TABLE IF EXISTS `payment_summary_per_patient`;
/*!50001 DROP VIEW IF EXISTS `payment_summary_per_patient`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `payment_summary_per_patient` AS SELECT 
 1 AS `patientID`,
 1 AS `patientFirstName`,
 1 AS `patientLastName`,
 1 AS `totalPaid`,
 1 AS `totalPending`,
 1 AS `totalCancelled`,
 1 AS `grandTotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `paymentID` int NOT NULL AUTO_INCREMENT,
  `patientID` int NOT NULL,
  `appointmentID` int DEFAULT NULL,
  `treatmentID` int DEFAULT NULL,
  `prescriptionID` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paymentDate` date NOT NULL,
  `paymentMethod` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`paymentID`),
  KEY `patientID` (`patientID`),
  KEY `appointmentID` (`appointmentID`),
  KEY `treatmentID` (`treatmentID`),
  KEY `prescriptionID` (`prescriptionID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`appointmentID`) REFERENCES `appointments` (`appointmentID`),
  CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`treatmentID`) REFERENCES `treatments` (`treatmentID`),
  CONSTRAINT `payments_ibfk_4` FOREIGN KEY (`prescriptionID`) REFERENCES `prescriptions` (`prescriptionID`),
  CONSTRAINT `payments_chk_1` CHECK ((`paymentMethod` in (_utf8mb4'cash',_utf8mb4'credit',_utf8mb4'insurance',_utf8mb4'bank transfer'))),
  CONSTRAINT `payments_chk_2` CHECK ((`status` in (_utf8mb4'paid',_utf8mb4'pending',_utf8mb4'cancelled')))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,27419583,2,2,2,1250.00,'2024-01-11','insurance','paid','MRI + Sumatriptan'),(3,61938274,3,3,3,450.00,'2024-01-12','cash','paid','X-Ray + Ibuprofen'),(5,72638491,5,5,5,350.00,'2024-01-14','bank transfer','paid','Physio + Diclofenac'),(7,58243917,7,7,7,850.00,'2024-01-16','insurance','paid','Stress test + Nitro'),(8,91472638,8,8,8,500.00,'2024-01-17','credit','pending','Ultrasound + Celecoxib'),(9,64829173,9,9,9,1000.00,'2024-01-18','insurance','paid','CT Scan + Topiramate');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `prescriptionID` int NOT NULL AUTO_INCREMENT,
  `appointmentID` int NOT NULL,
  `patientID` int NOT NULL,
  `doctorID` int NOT NULL,
  `medicationName` varchar(50) NOT NULL,
  `dosage` varchar(30) NOT NULL,
  `frequency` varchar(30) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`prescriptionID`),
  KEY `appointmentID` (`appointmentID`),
  KEY `patientID` (`patientID`),
  KEY `doctorID` (`doctorID`),
  CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`appointmentID`) REFERENCES `appointments` (`appointmentID`),
  CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
  CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`doctorID`) REFERENCES `doctors` (`doctorID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (2,2,27419583,47291836,'Sumatriptan','50mg','As needed','2024-01-11','2024-03-11','Max 2 doses per day'),(3,3,61938274,81624739,'Ibuprofen','400mg','Twice daily','2024-01-12','2024-02-12','Take with food'),(5,5,72638491,81624739,'Diclofenac','75mg','Once daily','2024-01-14','2024-02-14','Apply gel to area'),(7,7,58243917,52739481,'Nitroglycerin','0.5mg','As needed','2024-01-16','2024-06-16','Under tongue'),(8,8,91472638,81624739,'Celecoxib','200mg','Once daily','2024-01-17','2024-03-17','For joint pain'),(9,9,64829173,47291836,'Topiramate','25mg','Once nightly','2024-01-18','2024-07-18','Migraine prevention');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `secretary_view`
--

DROP TABLE IF EXISTS `secretary_view`;
/*!50001 DROP VIEW IF EXISTS `secretary_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `secretary_view` AS SELECT 
 1 AS `patientFullName`,
 1 AS `doctorFullName`,
 1 AS `departmentName`,
 1 AS `appointmentDate`,
 1 AS `appointmentTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatments` (
  `treatmentID` int NOT NULL AUTO_INCREMENT,
  `appointmentID` int NOT NULL,
  `patientID` int NOT NULL,
  `doctorID` int NOT NULL,
  `departmentID` int NOT NULL,
  `treatmentType` varchar(50) NOT NULL,
  `treatmentDate` date NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`treatmentID`),
  KEY `appointmentID` (`appointmentID`),
  KEY `patientID` (`patientID`),
  KEY `doctorID` (`doctorID`),
  KEY `departmentID` (`departmentID`),
  CONSTRAINT `treatments_ibfk_1` FOREIGN KEY (`appointmentID`) REFERENCES `appointments` (`appointmentID`),
  CONSTRAINT `treatments_ibfk_2` FOREIGN KEY (`patientID`) REFERENCES `patients` (`patientID`),
  CONSTRAINT `treatments_ibfk_3` FOREIGN KEY (`doctorID`) REFERENCES `doctors` (`doctorID`),
  CONSTRAINT `treatments_ibfk_4` FOREIGN KEY (`departmentID`) REFERENCES `departments` (`departmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` VALUES (2,2,27419583,47291836,3,'MRI Brain','2024-01-11',1200.00,'No structural abnormalities'),(3,3,61938274,81624739,2,'X-Ray Knee','2024-01-12',400.00,'Mild cartilage wear'),(5,5,72638491,81624739,2,'Physiotherapy','2024-01-14',300.00,'Session 1 of 6'),(7,7,58243917,52739481,1,'Stress Test','2024-01-16',800.00,'Mild ST changes noted'),(8,8,91472638,81624739,2,'Ultrasound Joint','2024-01-17',450.00,'Inflammation detected'),(9,9,64829173,47291836,3,'CT Scan Head','2024-01-18',950.00,'No lesions found');
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `doctor_prescriptions`
--

/*!50001 DROP VIEW IF EXISTS `doctor_prescriptions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doctor_prescriptions` AS select `d`.`doctorID` AS `doctorID`,`d`.`doctorFirstName` AS `doctorFirstName`,`d`.`doctorLastName` AS `doctorLastName`,`dep`.`departmentName` AS `departmentName`,`p`.`patientFirstName` AS `patientFirstName`,`p`.`patientLastName` AS `patientLastName`,`pr`.`medicationName` AS `medicationName`,`pr`.`dosage` AS `dosage`,`pr`.`frequency` AS `frequency`,`pr`.`startDate` AS `startDate`,`pr`.`endDate` AS `endDate` from (((`doctors` `d` join `departments` `dep` on((`d`.`department` = `dep`.`departmentID`))) join `prescriptions` `pr` on((`d`.`doctorID` = `pr`.`doctorID`))) join `patients` `p` on((`pr`.`patientID` = `p`.`patientID`))) order by `d`.`doctorID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `doctor_workload`
--

/*!50001 DROP VIEW IF EXISTS `doctor_workload`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doctor_workload` AS select `d`.`doctorID` AS `doctorID`,`d`.`doctorFirstName` AS `doctorFirstName`,`d`.`doctorLastName` AS `doctorLastName`,`dep`.`departmentName` AS `departmentName`,count(`a`.`appointmentID`) AS `totalAppointments` from ((`doctors` `d` join `departments` `dep` on((`d`.`department` = `dep`.`departmentID`))) left join `appointments` `a` on((`d`.`doctorID` = `a`.`doctorID`))) group by `d`.`doctorID`,`d`.`doctorFirstName`,`d`.`doctorLastName`,`dep`.`departmentName` order by `totalAppointments` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `full_patient_appointment_history`
--

/*!50001 DROP VIEW IF EXISTS `full_patient_appointment_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `full_patient_appointment_history` AS select `p`.`patientID` AS `patientID`,`p`.`patientFirstName` AS `patientFirstName`,`p`.`patientLastName` AS `patientLastName`,`d`.`doctorFirstName` AS `doctorFirstName`,`d`.`doctorLastName` AS `doctorLastName`,`dep`.`departmentName` AS `departmentName`,`a`.`appointmentDate` AS `appointmentDate`,`a`.`appointmentTime` AS `appointmentTime`,`a`.`reason` AS `reason` from (((`appointments` `a` join `patients` `p` on((`a`.`patientID` = `p`.`patientID`))) join `doctors` `d` on((`a`.`doctorID` = `d`.`doctorID`))) join `departments` `dep` on((`a`.`departmentID` = `dep`.`departmentID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patients_per_department`
--

/*!50001 DROP VIEW IF EXISTS `patients_per_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patients_per_department` AS select `dep`.`departmentID` AS `departmentID`,`dep`.`departmentName` AS `departmentName`,count(distinct `a`.`patientID`) AS `totalPatients` from (`departments` `dep` left join `appointments` `a` on((`dep`.`departmentID` = `a`.`departmentID`))) group by `dep`.`departmentID`,`dep`.`departmentName` order by `totalPatients` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_summary_per_patient`
--

/*!50001 DROP VIEW IF EXISTS `payment_summary_per_patient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_summary_per_patient` AS select `p`.`patientID` AS `patientID`,`p`.`patientFirstName` AS `patientFirstName`,`p`.`patientLastName` AS `patientLastName`,sum((case when (`pay`.`status` = 'paid') then `pay`.`amount` else 0 end)) AS `totalPaid`,sum((case when (`pay`.`status` = 'pending') then `pay`.`amount` else 0 end)) AS `totalPending`,sum((case when (`pay`.`status` = 'cancelled') then `pay`.`amount` else 0 end)) AS `totalCancelled`,sum((case when (`pay`.`status` in ('paid','pending')) then `pay`.`amount` else 0 end)) AS `grandTotal` from (`patients` `p` join `payments` `pay` on((`p`.`patientID` = `pay`.`patientID`))) group by `p`.`patientID`,`p`.`patientFirstName`,`p`.`patientLastName` order by `grandTotal` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `secretary_view`
--

/*!50001 DROP VIEW IF EXISTS `secretary_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `secretary_view` AS select concat(`p`.`patientFirstName`,' ',`p`.`patientLastName`) AS `patientFullName`,concat(`d`.`doctorFirstName`,' ',`d`.`doctorLastName`) AS `doctorFullName`,`dep`.`departmentName` AS `departmentName`,`a`.`appointmentDate` AS `appointmentDate`,`a`.`appointmentTime` AS `appointmentTime` from (((`appointments` `a` join `patients` `p` on((`a`.`patientID` = `p`.`patientID`))) join `doctors` `d` on((`a`.`doctorID` = `d`.`doctorID`))) join `departments` `dep` on((`a`.`departmentID` = `dep`.`departmentID`))) order by `a`.`appointmentDate`,`a`.`appointmentTime` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-01 15:19:52
