/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - royalguides
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`royalguides` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `royalguides`;

/*Table structure for table `guide` */

DROP TABLE IF EXISTS `guide`;

CREATE TABLE `guide` (
  `username` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guide` */

insert  into `guide`(`username`,`name`,`email`,`phone`,`city`) values ('hari','kkk','kkkk@haha.com','78787878787','kota'),('rahul','rahul prasad','prasad@gmail.com','7879447949','jaipur'),('shankar','kumar','baa@gamil.com','956564','jaipur');

/*Table structure for table `guide_date` */

DROP TABLE IF EXISTS `guide_date`;

CREATE TABLE `guide_date` (
  `username` varchar(25) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `is_avail` tinyint(1) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guide_date` */

insert  into `guide_date`(`username`,`from_date`,`to_date`,`is_avail`) values ('hari','2017-03-20','2017-03-25',1),('rahul','2017-03-18','2017-03-21',1),('shankar','2017-03-20','2017-03-23',1);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `type` char(2) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`type`) values ('akatare9','1','t'),('anmol','123','t');

/*Table structure for table `tourist` */

DROP TABLE IF EXISTS `tourist`;

CREATE TABLE `tourist` (
  `username` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tourist` */

insert  into `tourist`(`username`,`name`,`email`,`phone`) values ('akatare0','Akshay Katare','akatare9@gmail.com','9571277662'),('anmol','Anmol','abc@abc.com','777777777');

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `PRN` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  `username` varchar(25) NOT NULL,
  `from` date NOT NULL,
  `days` int(11) NOT NULL,
  `guideuser` varchar(25) NOT NULL,
  `amount` varchar(7) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`PRN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`PRN`,`time`,`username`,`from`,`days`,`guideuser`,`amount`,`status`) values ('14005619','2017-03-21 07:43:54','amak','2017-03-20',1,'rahul','300','SUCCESS'),('235510304','2017-03-21 09:36:12','null','2017-03-20',1,'shankar','300','Pending'),('279851626','2017-03-21 04:34:44','amak','2017-03-20',1,'shankar','300','SUCCESS'),('392206932','2017-03-21 09:38:34','a','2017-03-20',1,'rahul','300','Pending'),('404669990','2017-03-21 06:46:29','amak','2017-03-20',1,'shankar','300','SUCCESS'),('605887222','2017-03-21 09:46:02','akatare9','2017-03-20',1,'rahul','300','SUCCESS'),('812698156','2017-03-21 07:30:38','amak','2017-03-20',1,'rahul','300','Pending'),('816182720','2017-03-21 04:33:27','amak','2017-03-20',1,'rahul','300','SUCCESS'),('835693274','2017-03-21 07:37:19','amak','2017-03-20',1,'shankar','300','Pending'),('87841655','2017-03-21 09:37:20','akatare9','2017-03-20',1,'rahul','300','Pending'),('985639123','2017-03-21 09:41:17','akatare9','2017-03-20',1,'rahul','300','Pending'),('985789999','2017-03-21 09:51:26','anmol','2017-03-20',1,'rahul','300','Pending');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
