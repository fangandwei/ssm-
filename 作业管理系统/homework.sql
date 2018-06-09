/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.0.45-community-nt : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `homework` */

DROP TABLE IF EXISTS `homework`;

CREATE TABLE `homework` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `hname` varchar(100) default '' COMMENT '作业名',
  `text` text COMMENT '作业内容',
  `tid` int(11) default NULL COMMENT '外键，对应老师',
  `sid` int(11) default NULL COMMENT '外键，对应学生',
  `state` int(11) default NULL COMMENT '完成状态',
  PRIMARY KEY  (`id`),
  KEY `h_t_forein` (`tid`),
  KEY `h_s_forein` (`sid`),
  CONSTRAINT `h_s_forein` FOREIGN KEY (`sid`) REFERENCES `stu` (`id`),
  CONSTRAINT `h_t_forein` FOREIGN KEY (`tid`) REFERENCES `tea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `homework` */

insert  into `homework`(`id`,`hname`,`text`,`tid`,`sid`,`state`) values 
(1,'                  离散数学\r\n       \r\n       ','                                                                                                                                                                                                                                                          \r\n       \r\n\r\n               1，你觉得学习离散数学有什么用？\r\n\r\n\r\n     \r\n               2.你觉得矩阵有啥用\r\n               3.。。。。。。。。。。。。。。。。。。。。。。。。。。。\r\n               4nnnnnnnnnnnnnnnnnnn\r\n               \r\n            \r\n                      \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       ',1,1,NULL),
(2,'操作系统','1 什么是操作系统？',2,2,NULL),
(3,'计算机网络','什么是计算机网络',NULL,NULL,NULL),
(7,'计算机网络',NULL,NULL,NULL,NULL),
(8,'项目管理',NULL,NULL,NULL,NULL),
(9,'fjiasifjsai','fsafjivsnitresvth,nrvhtuerstvu',NULL,NULL,NULL),
(11,'fffff','fffffffffffffffffffffffffffffffffffffffffffffff',16,NULL,NULL),
(12,'软件系统分析与设计','1，你知道uml图怎么画吗？',7,NULL,NULL),
(13,'软件开发项目实战','1，hibernate多对多怎么实现？？',11,NULL,NULL);

/*Table structure for table `stu` */

DROP TABLE IF EXISTS `stu`;

CREATE TABLE `stu` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '名字',
  `studentId` varchar(20) NOT NULL COMMENT '学号',
  `classId` varchar(20) NOT NULL COMMENT '班级',
  `course` varchar(20) NOT NULL COMMENT '课程',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `stu` */

insert  into `stu`(`id`,`password`,`name`,`studentId`,`classId`,`course`) values 
(1,'123','zs','20151612201','1501','计算机组成原理'),
(2,'456','ls','20151612202','1502','计算机组成原理'),
(3,'789','ww','20151612203','1503','操作系统'),
(4,'897','zl','20151612204','1503','离散数学'),
(5,'666','ds','20151612205','1501','离散数学'),
(6,'666','jk','20151612206','1501','离散数学'),
(7,'666','lo','20151612207','1501','离散数学'),
(8,'666','fb','20151612208','1501','离散数学'),
(9,'666','dd','20151612209','1501','离散数学'),
(10,'666','ee','20151612210','1501','离散数学'),
(11,'666','yui','20151612211','1501','离散数学'),
(12,'666','jhk','20151612212','1501','离散数学'),
(13,'666','fnsafn','20151612213','1501','离散数学'),
(14,'666','nsad','20151612214','1501','离散数学'),
(15,'123','zzzzz','1234567','123','ysjs'),
(16,'5','11','666','88','36'),
(17,'','','','',''),
(18,'dd','dddd','ddd','ddd','ddd'),
(19,'ffff','ffff','fffff','fff','ffffff'),
(21,'fsafsa','fassssssss','fasssss','fasf','fsafsa');

/*Table structure for table `stu_hom` */

DROP TABLE IF EXISTS `stu_hom`;

CREATE TABLE `stu_hom` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `sid` int(11) default NULL COMMENT '外键  学生id',
  `hid` int(11) default NULL COMMENT '外键  作业id',
  `state` int(11) unsigned zerofill default NULL COMMENT '该作业的状态',
  `mytext` text COMMENT '该学生的作业',
  PRIMARY KEY  (`id`),
  KEY `z_h_forein` (`hid`),
  KEY `z_s_forein` (`sid`),
  CONSTRAINT `z_h_forein` FOREIGN KEY (`hid`) REFERENCES `homework` (`id`),
  CONSTRAINT `z_s_forein` FOREIGN KEY (`sid`) REFERENCES `stu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `stu_hom` */

insert  into `stu_hom`(`id`,`sid`,`hid`,`state`,`mytext`) values 
(1,1,1,00000000001,'        \r\n       [                                                                                                                                                                                                                                        \r\n       \r\n\r\n               1，你觉得学习离散数学有什么用？\r\n大厦的哈杀苏会断杀都撒\r\n\r\n     \r\n               2.你觉得矩阵有啥用\r\n               3.。。。。。。。。。。。。。。。。。。。。。。。。。。。\r\n               4nnnnnnnnnnnnnnnnnnn\r\n               顶顶顶顶顶顶顶顶顶顶顶顶\r\n            \r\n                      \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       \r\n       ]\r\n      \r\n       '),
(2,2,1,00000000001,''),
(3,3,1,00000000000,''),
(4,4,1,00000000000,''),
(5,5,1,00000000001,''),
(25,1,12,00000000001,'        \r\n       [1，你知道uml图怎么画吗？]\r\n      \r\n       不知道'),
(26,NULL,NULL,NULL,NULL);

/*Table structure for table `stu_tea` */

DROP TABLE IF EXISTS `stu_tea`;

CREATE TABLE `stu_tea` (
  `id` int(11) NOT NULL auto_increment COMMENT '中间表主键',
  `sid` int(11) default NULL COMMENT '外键 学生',
  `tid` int(11) default NULL COMMENT '外键 老师',
  PRIMARY KEY  (`id`),
  KEY `z_s_f` (`sid`),
  KEY `z_t_f` (`tid`),
  CONSTRAINT `z_s_f` FOREIGN KEY (`sid`) REFERENCES `stu` (`id`),
  CONSTRAINT `z_t_f` FOREIGN KEY (`tid`) REFERENCES `tea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `stu_tea` */

insert  into `stu_tea`(`id`,`sid`,`tid`) values 
(1,1,1),
(2,1,2),
(3,2,1),
(4,3,1),
(5,4,1);

/*Table structure for table `tea` */

DROP TABLE IF EXISTS `tea`;

CREATE TABLE `tea` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键',
  `name` varchar(20) default '' COMMENT '名字',
  `password` varchar(20) default '' COMMENT '密码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `tea` */

insert  into `tea`(`id`,`name`,`password`) values 
(1,'zls','123'),
(2,'李老师','456'),
(3,'王老师','789'),
(4,'赵老师','444'),
(5,'钱老师','555'),
(6,'孙老师','666'),
(7,'lll','123456'),
(11,'jjjj','1111'),
(12,'gg','gggg'),
(13,'gg','hhhh'),
(16,'ddd','dddd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
