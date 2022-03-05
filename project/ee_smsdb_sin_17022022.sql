/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.5.8-MariaDB : Database - ee_smsdb_sin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ee_smsdb_sin` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ee_smsdb_sin`;

/*Table structure for table `tbl_message` */

DROP TABLE IF EXISTS `tbl_message`;

CREATE TABLE `tbl_message` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `msg` text DEFAULT NULL,
  `status_code` varchar(20) DEFAULT NULL,
  `created_datedtime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_user` varchar(12) DEFAULT NULL,
  `updated_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_user` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_message` */

/*Table structure for table `tbl_student` */

DROP TABLE IF EXISTS `tbl_student`;

CREATE TABLE `tbl_student` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `subject_id` int(5) DEFAULT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_user` varchar(10) DEFAULT NULL,
  `updated_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_user` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tbl_student` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_student` */

/*Table structure for table `tbl_subject` */

DROP TABLE IF EXISTS `tbl_subject`;

CREATE TABLE `tbl_subject` (
  `subject_id` int(5) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`subject_id`),
  UNIQUE KEY `NewIndex1` (`subject_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_subject` */

/*Table structure for table `tbl_teacher` */

DROP TABLE IF EXISTS `tbl_teacher`;

CREATE TABLE `tbl_teacher` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `tp` int(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `subject_id` int(5) DEFAULT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_user` varchar(20) DEFAULT NULL,
  `updated_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tbl_teacher` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_teacher` */

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nic` varchar(12) DEFAULT NULL,
  `pword` text DEFAULT NULL,
  `role_code` varchar(10) DEFAULT NULL,
  `status_code` varchar(10) DEFAULT 'ACTIVE',
  `created_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_user` varchar(12) DEFAULT NULL,
  `updated_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_user` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`nic`,`pword`,`role_code`,`status_code`,`created_datetime`,`created_user`,`updated_datetime`,`updated_user`) values (1,'1111','123','ADMIN','ACTIVE','2022-02-17 19:42:49',NULL,'0000-00-00 00:00:00',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
