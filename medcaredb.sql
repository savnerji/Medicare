/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - medicare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`medicare` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `medicare`;

/*Table structure for table `bloodavailability` */

DROP TABLE IF EXISTS `bloodavailability`;

CREATE TABLE `bloodavailability` (
  `avid` int(11) NOT NULL AUTO_INCREMENT,
  `A_positive` varchar(20) NOT NULL,
  `A_negative` varchar(20) NOT NULL,
  `B_positive` varchar(20) NOT NULL,
  `B_negative` varchar(20) NOT NULL,
  `O_positive` varchar(20) NOT NULL,
  `O_negative` varchar(20) NOT NULL,
  `AB_positive` varchar(20) NOT NULL,
  `AB_negative` varchar(20) NOT NULL,
  PRIMARY KEY (`avid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `bloodbanks` */

DROP TABLE IF EXISTS `bloodbanks`;

CREATE TABLE `bloodbanks` (
  `bid` int(12) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(30) NOT NULL,
  `bank_opening` varchar(20) NOT NULL,
  `nomberofstaff` varchar(20) NOT NULL,
  `bank_type` varchar(30) NOT NULL,
  `bank_licence` varchar(60) NOT NULL,
  `licence_nomber` varchar(30) NOT NULL,
  `bank_contact` varchar(30) NOT NULL,
  `bank_email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `bank_address` varchar(50) NOT NULL,
  `bank_city` varchar(20) NOT NULL,
  `bank_state` varchar(20) NOT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `licence_nomber` (`licence_nomber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `did` int(12) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(25) NOT NULL,
  `doc_degree` varchar(100) NOT NULL,
  `doc_dob` varchar(20) NOT NULL,
  `doc_specialist` varchar(100) NOT NULL,
  `doc_category` varchar(50) NOT NULL,
  `doc_clinicname` varchar(50) NOT NULL,
  `clinic_address` varchar(100) NOT NULL,
  `clinic_city` varchar(50) NOT NULL,
  `clinic_state` varchar(50) NOT NULL,
  `experience_year` varchar(50) NOT NULL,
  `average_patient` varchar(50) NOT NULL,
  `doc_email` varchar(50) NOT NULL,
  `doc_contact` varchar(50) NOT NULL,
  `doc_password` varchar(10) NOT NULL,
  `doc_aadhar` varchar(20) NOT NULL,
  `doc_pic` varchar(50) NOT NULL,
  PRIMARY KEY (`did`),
  UNIQUE KEY `doc_password` (`doc_password`),
  UNIQUE KEY `doc_aadhar` (`doc_aadhar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `organizebloodcamp` */

DROP TABLE IF EXISTS `organizebloodcamp`;

CREATE TABLE `organizebloodcamp` (
  `oid` int(12) NOT NULL AUTO_INCREMENT,
  `blood_camp_name` varchar(100) NOT NULL,
  `organizer` varchar(100) NOT NULL,
  `camp_address` varchar(100) NOT NULL,
  `camp_city` varchar(50) NOT NULL,
  `camp_state` varchar(50) NOT NULL,
  `camp_date` varchar(20) NOT NULL,
  `camp_contact` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `surveydata` */

DROP TABLE IF EXISTS `surveydata`;

CREATE TABLE `surveydata` (
  `sid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  `aadharnomber` varchar(20) NOT NULL,
  `disease1` varchar(50) NOT NULL,
  `disease2` varchar(50) NOT NULL,
  `disease3` varchar(50) NOT NULL,
  `disease4` varchar(50) NOT NULL,
  `reportfile` varchar(30) NOT NULL,
  `medicine1` varchar(30) NOT NULL,
  `medicine2` varchar(30) NOT NULL,
  `medicine3` varchar(30) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `aadharnomber` (`aadharnomber`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_age` varchar(50) NOT NULL,
  `user_gender` varchar(20) NOT NULL,
  `user_dob` varchar(20) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_city` varchar(100) NOT NULL,
  `user_state` varchar(100) NOT NULL,
  `user_aadharcard` varbinary(50) NOT NULL,
  `user_contact` varchar(12) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pic` varchar(50) NOT NULL,
  `user_password` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_aadharcard` (`user_aadharcard`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
