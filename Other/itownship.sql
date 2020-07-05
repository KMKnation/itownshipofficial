/*
SQLyog Community v12.13 (64 bit)
MySQL - 5.6.26-log : Database - itownship
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`itownship` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `itownship`;

/*Table structure for table `agenda` */

DROP TABLE IF EXISTS `agenda`;

CREATE TABLE `agenda` (
  `meeting_id` int(10) DEFAULT NULL,
  `a_id` int(10) NOT NULL AUTO_INCREMENT,
  `a_title` varchar(100) NOT NULL,
  `a_discussion` varchar(500) DEFAULT NULL,
  `a_conclusion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `agenda_ibfk_1` (`meeting_id`),
  CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `agenda` */

insert  into `agenda`(`meeting_id`,`a_id`,`a_title`,`a_discussion`,`a_conclusion`) values (73,6,'Do not use Fire Crackers','Discuss about cause of Fireworks','Bann Fire Works'),(26,7,'Travelling','THink to travel all our the places in ahmedabad','GO GO GO'),(70,8,'Kill All Terrorist','No discussion just kill them','KILL :p'),(83,9,'Crack Android','What is the disadvantages of this tool ?','Never use this tool'),(4045,10,'To enable image in report','discussed prefix and postfix','Testing'),(1903,11,'KMKKXSK','mklmamaskmk','kmkmdskmvk'),(5855,12,'KLCKWMLMWL','kls kalmckv kwskv ','Bann Fire Works'),(1913,13,'erwdwefwe','qvebre','rbebnrebbre'),(4463,14,'Abki bar 8 par','No discussion go and study','bhad ma gayu'),(6494,15,'Free Holiday','NKDNKJ SD NDAKINDKS DKSNDK','Bhda ma gayu');

/*Table structure for table `all` */

DROP TABLE IF EXISTS `all`;

CREATE TABLE `all` (
  `all_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `age` int(100) DEFAULT NULL,
  `occupation` varchar(200) DEFAULT NULL,
  `bloodgroup` int(100) DEFAULT NULL,
  PRIMARY KEY (`all_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `all` */

/*Table structure for table `bloodgroup` */

DROP TABLE IF EXISTS `bloodgroup`;

CREATE TABLE `bloodgroup` (
  `b_id` int(100) NOT NULL AUTO_INCREMENT,
  `b_group` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bloodgroup` */

/*Table structure for table `chairman` */

DROP TABLE IF EXISTS `chairman`;

CREATE TABLE `chairman` (
  `ch_id` int(100) NOT NULL AUTO_INCREMENT,
  `ch_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `last_visited` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  PRIMARY KEY (`ch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chairman` */

/*Table structure for table `cheque` */

DROP TABLE IF EXISTS `cheque`;

CREATE TABLE `cheque` (
  `Chequeid` int(11) NOT NULL AUTO_INCREMENT,
  `Emailid` varchar(50) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `BankName` varchar(50) NOT NULL,
  `ChequeAmount` float NOT NULL,
  `ChequeDate` date NOT NULL,
  PRIMARY KEY (`Chequeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cheque` */

/*Table structure for table `expense` */

DROP TABLE IF EXISTS `expense`;

CREATE TABLE `expense` (
  `member_id` int(10) DEFAULT '1',
  `e_id` int(10) NOT NULL AUTO_INCREMENT,
  `e_amount` int(20) NOT NULL,
  `e_type` varchar(20) DEFAULT 'spend',
  `e_receiver` varchar(20) DEFAULT NULL,
  `e_category` varchar(20) DEFAULT NULL,
  `e_date` varchar(40) DEFAULT NULL,
  `e_receipt` varchar(100) DEFAULT NULL,
  `e_notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=816 DEFAULT CHARSET=utf8;

/*Data for the table `expense` */

insert  into `expense`(`member_id`,`e_id`,`e_amount`,`e_type`,`e_receiver`,`e_category`,`e_date`,`e_receipt`,`e_notes`) values (1,808,25000,'spend','Mayur Kanojiya','Bike','2015-11-30',NULL,'NAN'),(1,809,10000,'spend','Datt Patel','Dining','2013-10-30',NULL,'NONE'),(1,811,1000,'spend','Kashish Patel','Dining','2014-10-30','/Resources/expenses/','svavsa'),(1,812,2999,'spend','Rajan Bhatt','Medical','2014-11-29','/Resources/expenses/','NONE'),(1,813,10000,'spend','Datt Shah','Bike','2013-09-29','','KASKSA'),(1,814,10000,'spend','Datt Shah','Bike','2013-09-29','','KASKSA'),(1,815,5000,'spend','Mayur Kanojiya','Dining','2015-11-30','','He will give me back after two months :p');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(20) NOT NULL,
  `post_desc` varchar(500) DEFAULT NULL,
  `lastpost` varchar(15) DEFAULT NULL,
  `block_name` varchar(10) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `post_views` int(10) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `forum` */

insert  into `forum`(`post_id`,`post_title`,`post_desc`,`lastpost`,`block_name`,`member_id`,`post_views`) values (1,'India vs Pak','Victory: India kick off campaign with thumping win India landed in Australia in November 2014 but had to wait till today to taste their first real success on the long tour. The defending champions could not have asked for a better start to their 2015 campaign. Pakistan was going to be a high pressure game and they came out in flying colours. A 76-run victory meant that Pakistan are yet to taste World Cup success against India.','28-09-2015','A',1,1000),(2,'Parking','Parking needed urgently because it required','29-09-2015','B',NULL,25000),(3,'Testing','Testing Desc','30-09-2015','C',NULL,8081),(4,'Something title','Something Desc test','01-11-2015','D',NULL,515),(5,'Equality Test','Test','02-11-2015','A',2,45511);

/*Table structure for table `guest` */

DROP TABLE IF EXISTS `guest`;

CREATE TABLE `guest` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_username` varchar(50) NOT NULL,
  `g_pass` varchar(50) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `guest` */

/*Table structure for table `meetings` */

DROP TABLE IF EXISTS `meetings`;

CREATE TABLE `meetings` (
  `m_id` int(10) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(20) NOT NULL,
  `m_about` varchar(100) NOT NULL,
  `m_place` varchar(30) NOT NULL,
  `m_presentid` int(10) DEFAULT NULL,
  `m_agendaid` int(10) DEFAULT NULL,
  `m_sign` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `meetings_ibfk_1` (`m_presentid`),
  KEY `meetings_ibfk_2` (`m_agendaid`),
  CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`m_presentid`) REFERENCES `present_members` (`meeting_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `meetings_ibfk_2` FOREIGN KEY (`m_agendaid`) REFERENCES `agenda` (`meeting_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8099 DEFAULT CHARSET=utf8;

/*Data for the table `meetings` */

insert  into `meetings`(`m_id`,`m_name`,`m_about`,`m_place`,`m_presentid`,`m_agendaid`,`m_sign`) values (26,'BhaiBij','Bhai bij is event comes before diwali','Ahmedabad',26,26,'E:/i-Township/signatures/bhaibijsign.png'),(70,'CS','GOing to rock this november in cs','Bhattya nu ghar',70,70,'E:/i-Township/signatures/cssign.png'),(73,'Diwali','It is an event which is widely celebrated in India.','Ahmedabad, INDIA',73,73,'E:/i-Township/signatures/kmksign.png'),(83,'DroidJack','Pentesting tool to crack any android','Nava Vadaj',83,83,'E:/i-Township/signatures/droidjackign.png'),(1903,'Dev Diwali','This event comes after diwali','India :p',1903,1903,'/Resources/signatures/vrmap.JPG'),(1913,'lvdsdlacqcwq','sddvsdv','ssvbszcs',1913,1913,NULL),(3510,'sdvbsdb','sbdwsbwebweb we','bsbwesbwevsvgs',NULL,NULL,NULL),(4045,'Signature  Test','Moved directory to resources','WorkPlace of Eclipse',4045,4045,'/Resources/css/act_guest.JPG'),(4463,'Exam','Exam dates are declared as it will start from december','India',4463,4463,'/Resources/signatures/vrmap.JPG'),(5855,'ArrayList Test','It is an event which is widely celebrated in India.','India',5855,5855,'/Resources/signatures/act_user.JPG'),(6494,'XMAS','25 december','Ahmedabad',6494,6494,'/Resources/signatures/'),(7284,'Diwfewgw','MKCSMCS','India',7284,NULL,NULL),(8098,'5554s454vs','It is an event which is widely celebrated in India.','India',8098,NULL,NULL);

/*Table structure for table `members` */

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `mem_id` int(200) NOT NULL AUTO_INCREMENT,
  `mem_name` varchar(200) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` bigint(10) DEFAULT NULL,
  `block` varchar(100) DEFAULT NULL,
  `last_visited` varchar(200) DEFAULT NULL,
  `status` int(100) DEFAULT NULL,
  `social_id` int(100) DEFAULT NULL,
  `icard` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `members` */

insert  into `members`(`mem_id`,`mem_name`,`email`,`password`,`phone`,`block`,`last_visited`,`status`,`social_id`,`icard`) values (1,'Mayur Kanojiya','kanojiyamayur@gmail.com','kmk@itownship',7600006753,'10-B','today',1,1,'E://township'),(2,'Datt Patel','Datt@itownship','datt',7600006754,'20-B','yesterday',0,2,'E://innovate');

/*Table structure for table `phone` */

DROP TABLE IF EXISTS `phone`;

CREATE TABLE `phone` (
  `phone_id` int(100) NOT NULL AUTO_INCREMENT,
  `mem_id` int(100) NOT NULL,
  `whatsapp` int(100) NOT NULL,
  `landline` int(100) NOT NULL,
  `other` int(100) NOT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `phone` */

/*Table structure for table `present_members` */

DROP TABLE IF EXISTS `present_members`;

CREATE TABLE `present_members` (
  `meeting_id` int(20) NOT NULL,
  `p_presentid` int(10) NOT NULL AUTO_INCREMENT,
  `p_presenticard` varchar(20) NOT NULL,
  PRIMARY KEY (`p_presentid`),
  KEY `meeting_id` (`meeting_id`),
  CONSTRAINT `present_members_ibfk_1` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `present_members` */

insert  into `present_members`(`meeting_id`,`p_presentid`,`p_presenticard`) values (73,22,'Mayur Kanojiya'),(73,23,'Datt Patel'),(26,24,'Mayur Kanojiya'),(70,25,'Mayur Kanojiya'),(83,26,'Mayur Kanojiya'),(4045,27,'Mayur Kanojiya'),(1903,28,'Mayur Kanojiya'),(5855,29,'Mayur Kanojiya'),(5855,30,'Datt Patel'),(5855,31,'Datt Patel'),(7284,32,'Mayur Kanojiya'),(7284,33,'Datt Patel'),(8098,34,'Mayur Kanojiya'),(1913,35,'Mayur Kanojiya'),(1913,36,'Datt Patel'),(1913,37,'Mayur Kanojiya'),(4463,38,'Datt Patel'),(4463,39,'Mayur Kanojiya'),(6494,40,'Datt Patel');

/*Table structure for table `social` */

DROP TABLE IF EXISTS `social`;

CREATE TABLE `social` (
  `social_id` int(100) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(200) NOT NULL DEFAULT '#',
  `google` varchar(200) NOT NULL DEFAULT '#',
  `twitter` varchar(200) NOT NULL DEFAULT '#',
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `social` */

/*Table structure for table `town_member` */

DROP TABLE IF EXISTS `town_member`;

CREATE TABLE `town_member` (
  `t_id` int(100) NOT NULL AUTO_INCREMENT,
  `all_id` int(100) NOT NULL,
  `block` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `town_member` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
