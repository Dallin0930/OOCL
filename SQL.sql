/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.7.21-log : Database - oocl_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oocl_database` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oocl_database`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `teacherId` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`id`,`name`,`teacherId`) values 
(1,'语文',2),
(2,'数学',1),
(3,'英语',3);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `age` datetime DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`age`,`sex`) values 
(1,'赵雷','1990-01-01 00:00:00','男'),
(2,'钱电','1990-12-21 00:00:00','男'),
(3,'孙风','1990-05-20 00:00:00','男'),
(4,'李云','1990-08-06 00:00:00','男'),
(5,'周梅','1991-12-01 00:00:00','女'),
(6,'吴兰','1992-03-01 00:00:00','女'),
(7,'郑竹','1989-07-01 00:00:00','女'),
(8,'王菊','1990-01-20 00:00:00','女');

/*Table structure for table `student_course` */

DROP TABLE IF EXISTS `student_course`;

CREATE TABLE `student_course` (
  `studentId` int(10) DEFAULT NULL,
  `courseId` varchar(10) DEFAULT NULL,
  `score` decimal(18,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student_course` */

insert  into `student_course`(`studentId`,`courseId`,`score`) values 
(1,'1',80.0),
(1,'2',90.0),
(1,'3',99.0),
(2,'1',70.0),
(2,'2',60.0),
(2,'3',80.0),
(3,'1',80.0),
(3,'2',80.0),
(3,'3',80.0),
(4,'1',50.0),
(4,'2',30.0),
(4,'3',20.0),
(5,'1',76.0),
(5,'2',87.0),
(6,'1',31.0),
(6,'3',34.0),
(7,'2',89.0),
(7,'3',98.0);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`name`) values 
(1,'张三'),
(2,'李四'),
(3,'王五');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
