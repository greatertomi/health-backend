/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - health
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`health` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `health`;

/*Table structure for table `appointments` */

DROP TABLE IF EXISTS `appointments`;

CREATE TABLE `appointments` (
  `appointmentId` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(50) NOT NULL,
  `note` text DEFAULT NULL,
  PRIMARY KEY (`appointmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4;

/*Data for the table `appointments` */

insert  into `appointments`(`appointmentId`,`fullName`,`email`,`phoneNumber`,`date`,`reason`,`note`) values 
(1,'Oshalusi John','oshalusijohn@gmail.com','+2347031512655','2020-07-13','drugPrescription','too much'),
(2,'Jesutomi John','oluwalusijohn@gmail.com','0901173839','0000-00-00','diagnosis',NULL),
(3,'Helpper Kelep','oshalusijohn@gmail.com','09031780011','2020-07-21','scanning','People'),
(4,'John Oshalusi','oshalusijohn@gmail.com','+2347031512655','2020-07-10','diagnosis','aaaaa'),
(5,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(6,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(7,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(8,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(9,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(10,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(11,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(12,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(13,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(14,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(15,'Lep Klapp','lep@gmail.com','09099988123','2020-09-04','monthlyCheckup','too much'),
(16,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(17,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(18,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(19,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(20,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(21,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(22,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(23,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(24,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(25,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(26,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(27,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(28,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(29,'Bull Mall','mall@gmail.com','09099988123','2020-09-04','drugPrescription','nothing'),
(30,'Scanners','mall@gmail.com','09099988123','2020-09-04','scanning','nothing'),
(31,'Scanners','mall@gmail.com','09099988123','2020-09-04','scanning','nothing'),
(32,'Scanners','mall@gmail.com','09099988123','2020-09-04','scanning','nothing'),
(33,'Scanners','mall@gmail.com','09099988123','2020-09-04','scanning','nothing'),
(34,'Scanners','mall@gmail.com','09099988123','2020-09-04','scanning','nothing'),
(35,'Scanners','mall@gmail.com','09099988123','2020-09-04','scanning','nothing'),
(36,'Scanners','mall@gmail.com','09099988123','2020-09-04','scanning','nothing'),
(37,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(38,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(39,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(40,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(41,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(42,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(43,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(44,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(45,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(46,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(47,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(48,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(49,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(50,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(51,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(52,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(53,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(54,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(55,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(56,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(57,'Mrs Melody Mall','mall@gmail.com','09099988123','2020-09-04','preNatal','nothing'),
(58,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(59,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(60,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(61,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(62,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(63,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(64,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(65,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(66,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(67,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(68,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(69,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(70,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(71,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(72,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(73,'Mr Will Smith','mall@gmail.com','09099988123','2020-09-04','diagnosis','nothing'),
(74,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(75,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(76,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(77,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(78,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(79,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(80,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(81,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(82,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(83,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(84,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(85,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(86,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(87,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(88,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(89,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(90,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(91,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(92,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(93,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(94,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(95,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(96,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(97,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(98,'Mr K','mall@gmail.com','09099988123','2020-09-04','inquiry','nothing'),
(99,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(100,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(101,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(102,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(103,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(104,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(105,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(106,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(107,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(108,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(109,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(110,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(111,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(112,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(113,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(114,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(115,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(116,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(117,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(118,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(119,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(120,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(121,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(122,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(123,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(124,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(125,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(126,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(127,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(128,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(129,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(130,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(131,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(132,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(133,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(134,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(135,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(136,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(137,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(138,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(139,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(140,'Mr K','mall@gmail.com','09099988123','2020-09-04','medication','nothing'),
(141,'Michael Paul','mike@gmail.com','039393002','2020-07-23','monthlyCheckup','Just a brief visit');

/*Table structure for table `doctors` */

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
  `doctorId` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`doctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `doctors` */

insert  into `doctors`(`doctorId`,`doctorName`,`email`,`password`,`phoneNumber`) values 
(1,'Paul Mashek','paulmashek@gmail.com','','099049481'),
(2,'Crest Mabiba','crest@gmail.com','$2b$10$dGFOVnWD/rd845U3GPhS3.iNAe5Znb3cBqp7yVM87PKvQO6SRVXxu','1273839'),
(3,'paula paula','paula@gmail.com','$2b$10$5MWOzPjRL0JTcN5jd2rR3.w9Y2xiZgFsHp9iO.QTjWqXrajLtm.ly','07083931122'),
(4,'Mike Paul','mike@gmail.com','$2b$10$wLYtY4oXUktuJxXewtNpz.ZyPPtUgZJCKalKoLKlsbK4z6MKvJCqi','090112233445');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
