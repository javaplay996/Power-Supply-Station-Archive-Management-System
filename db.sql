/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - danganguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`danganguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `danganguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dangan` */

DROP TABLE IF EXISTS `dangan`;

CREATE TABLE `dangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dangan_bianhao` varchar(200) DEFAULT NULL COMMENT '档案编号 Search111 ',
  `dangan_name` varchar(200) DEFAULT NULL COMMENT '档案名称 Search111 ',
  `dangan_types` int(11) DEFAULT NULL COMMENT '档案类型 Search111 ',
  `dangan_photo` varchar(200) DEFAULT NULL COMMENT '档案图片',
  `dangan_content` text COMMENT '档案详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='档案';

/*Data for the table `dangan` */

insert  into `dangan`(`id`,`dangan_bianhao`,`dangan_name`,`dangan_types`,`dangan_photo`,`dangan_content`,`insert_time`,`create_time`) values (25,'111','档案1',1,'http://localhost:8080/danganguanlixitong/file/download?fileName=1620193610039.jpg','档案的详情\r\n','2021-05-05 13:46:55','2021-05-05 13:46:55'),(26,'222','档案2',3,'http://localhost:8080/danganguanlixitong/file/download?fileName=1620193636774.jpg','档案2的详情\r\n','2021-05-05 13:47:27','2021-05-05 13:47:27'),(27,'333','档案3',2,'http://localhost:8080/danganguanlixitong/file/download?fileName=1620263319679.jpg','档案3的档案详情\r\n','2021-05-06 09:08:51','2021-05-06 09:08:51');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-05 09:37:25'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-05 09:37:25'),(3,'dangan_types','档案类型名称',1,'文书档案',NULL,'2021-05-05 09:37:25'),(4,'dangan_types','档案类型名称',2,'科技档案',NULL,'2021-05-05 09:37:25'),(5,'dangan_types','档案类型名称',3,'财务档案',NULL,'2021-05-05 09:37:25'),(6,'bumen_types','部门类型名称',1,'人力资源部门',NULL,'2021-05-05 09:37:25'),(7,'bumen_types','部门类型名称',2,'技术部门',NULL,'2021-05-05 09:37:26'),(8,'bumen_types','部门类型名称',3,'财务部门',NULL,'2021-05-05 09:37:26'),(9,'jieyuebu_types','借阅部领导审批类型',1,'待审批',NULL,'2021-05-05 09:37:26'),(10,'jieyuebu_types','借阅部领导审批类型',2,'通过',NULL,'2021-05-05 09:37:26'),(11,'jieyuebu_types','借阅部领导审批类型',3,'不通过',NULL,'2021-05-05 09:37:26'),(12,'zhuguan_types','主管领导审批类型',1,'待审批',NULL,'2021-05-05 09:37:26'),(13,'zhuguan_types','主管领导审批类型',2,'通过',NULL,'2021-05-05 09:37:26'),(14,'zhuguan_types','主管领导审批类型',3,'不通过',NULL,'2021-05-05 09:37:26'),(15,'zhuren_types','综合部主任审批类型',1,'待审批',NULL,'2021-05-05 09:37:26'),(16,'zhuren_types','综合部主任审批类型',2,'通过',NULL,'2021-05-05 09:37:26'),(17,'zhuren_types','综合部主任审批类型',3,'不通过',NULL,'2021-05-05 09:37:26'),(18,'wenshudangan_types','文书档案专责人员审批类型',1,'待审批',NULL,'2021-05-05 09:37:26'),(19,'wenshudangan_types','文书档案专责人员审批类型',2,'通过',NULL,'2021-05-05 09:37:26'),(20,'wenshudangan_types','文书档案专责人员审批类型',3,'不通过',NULL,'2021-05-05 09:37:26'),(21,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-05 09:37:26'),(22,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-05 09:37:26'),(23,'gonggao_types','公告类型名称',3,'公告类型3',NULL,'2021-05-06 09:11:07');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'2021-05-05 13:52:44','公告1的详情\r\n','2021-05-05 13:52:44'),(4,'公告2',2,'2021-05-05 13:52:56','公告2的详情\r\n','2021-05-05 13:52:56'),(5,'公告3',1,'2021-05-06 09:10:31','公告3的详情\r\n','2021-05-06 09:10:31');

/*Table structure for table `jieyuebu` */

DROP TABLE IF EXISTS `jieyuebu`;

CREATE TABLE `jieyuebu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jieyuebu_name` varchar(200) DEFAULT NULL COMMENT '借阅部领导姓名 Search111 ',
  `jieyuebu_phone` varchar(200) DEFAULT NULL COMMENT '借阅部领导手机号 Search111 ',
  `jieyuebu_id_number` varchar(200) DEFAULT NULL COMMENT '借阅部领导身份证号 Search111 ',
  `jieyuebu_photo` varchar(200) DEFAULT NULL COMMENT '借阅部领导照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='借阅部领导';

/*Data for the table `jieyuebu` */

insert  into `jieyuebu`(`id`,`username`,`password`,`jieyuebu_name`,`jieyuebu_phone`,`jieyuebu_id_number`,`jieyuebu_photo`,`sex_types`,`create_time`) values (25,'a11','123456','张11','17703786911','410224199610232011','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192668791.jpg',1,'2021-05-05 13:31:12'),(26,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192695462.jpg',2,'2021-05-05 13:31:36'),(27,'a33','123456','张33','17703786933','410224199610232033','http://localhost:8080/danganguanlixitong/file/download?fileName=1620263183161.jpg',2,'2021-05-06 09:06:35');

/*Table structure for table `jieyueshenqing` */

DROP TABLE IF EXISTS `jieyueshenqing`;

CREATE TABLE `jieyueshenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申请人',
  `dangan_id` int(11) DEFAULT NULL COMMENT '档案',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '借阅用途 Search111 ',
  `bumen_types` int(11) DEFAULT NULL COMMENT '借阅部门 Search111 ',
  `jieyue_time` timestamp NULL DEFAULT NULL COMMENT '借阅时间 Search111 ',
  `guihuan_time` timestamp NULL DEFAULT NULL COMMENT '归还时间 Search111 ',
  `gongdiangongsi` varchar(200) DEFAULT NULL COMMENT '供电公司 Search111 ',
  `jieyuebu_id` int(11) DEFAULT NULL COMMENT '借阅部领导',
  `jieyuebu_types` int(11) DEFAULT NULL COMMENT '借阅部领导审批类型 Search111 ',
  `jieyuebu_content` text COMMENT '借阅部领导审批意见',
  `jieyuebu_time` timestamp NULL DEFAULT NULL COMMENT '借阅部领导审批时间',
  `zhuguan_id` int(11) DEFAULT NULL COMMENT '主管领导',
  `zhuguan_types` int(11) DEFAULT NULL COMMENT '主管领导审批类型 Search111 ',
  `zhuguan_content` text COMMENT '主管领导审批意见',
  `zhuguan_time` timestamp NULL DEFAULT NULL COMMENT '主管领导审批时间',
  `zhuren_id` int(11) DEFAULT NULL COMMENT '综合部主任',
  `zhuren_types` int(11) DEFAULT NULL COMMENT '综合部主任审批类型 Search111 ',
  `zhuren_content` text COMMENT '综合部主任审批意见',
  `zhuren_time` timestamp NULL DEFAULT NULL COMMENT '综合部主任审批时间',
  `wenshudangan_id` int(11) DEFAULT NULL COMMENT '文书档案专责人员',
  `wenshudangan_types` int(11) DEFAULT NULL COMMENT '文书档案专责人员审批类型 Search111 ',
  `wenshudangan_content` text COMMENT '文书档案专责人员审批意见',
  `wenshudangan_time` timestamp NULL DEFAULT NULL COMMENT '文书档案专责人员审批时间',
  `jingbanren` varchar(200) DEFAULT NULL COMMENT '经办人 Search111 ',
  `jingbanren_time` timestamp NULL DEFAULT NULL COMMENT '经办时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='借阅申请';

/*Data for the table `jieyueshenqing` */

insert  into `jieyueshenqing`(`id`,`yonghu_id`,`dangan_id`,`insert_time`,`yongtu`,`bumen_types`,`jieyue_time`,`guihuan_time`,`gongdiangongsi`,`jieyuebu_id`,`jieyuebu_types`,`jieyuebu_content`,`jieyuebu_time`,`zhuguan_id`,`zhuguan_types`,`zhuguan_content`,`zhuguan_time`,`zhuren_id`,`zhuren_types`,`zhuren_content`,`zhuren_time`,`wenshudangan_id`,`wenshudangan_types`,`wenshudangan_content`,`wenshudangan_time`,`jingbanren`,`jingbanren_time`,`create_time`) values (25,25,26,'2021-05-05 14:03:50','用图1',2,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司1',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(26,25,26,'2021-05-05 14:03:50','用图2',1,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司2',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(27,25,26,'2021-05-05 14:03:50','用图3',3,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司3',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(28,25,26,'2021-05-05 14:03:50','用图4',1,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司4',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(29,25,25,'2021-05-05 14:03:50','用图5',3,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司5',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(30,25,26,'2021-05-05 14:03:50','用图6',2,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司6',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(31,25,25,'2021-05-05 14:03:50','用图7',1,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司7',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(32,25,26,'2021-05-05 14:03:50','用图8',1,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司8',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(33,25,25,'2021-05-05 14:03:50','用图9',2,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司9',25,3,'不通过1的\r\n','2021-05-05 14:03:50',NULL,NULL,NULL,'2021-05-05 14:19:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-05 14:03:50'),(34,25,26,'2021-05-05 14:03:50','用图10',3,'2021-05-05 00:00:00','2021-05-29 00:00:00','公司10',25,2,'通过了 啊\r\n','2021-05-05 14:03:50',25,2,'通过了\r\n','2021-05-05 14:03:50',25,2,'综合部审批通过\r\n','2021-05-05 16:23:14',25,2,'通过了\r\n','2021-05-05 17:32:58','经办人1','2021-05-07 00:00:00','2021-05-05 14:03:50'),(35,26,27,'2021-05-06 09:21:30','看看',3,'2021-05-06 09:23:00','2021-05-19 00:00:00','供电公司1112131',26,2,'借阅部领导审批通过了\r\n','2021-05-06 09:23:00',26,2,'主管领导审批通过了\r\n','2021-05-06 09:25:09',26,2,'主任审核通过了\r\n','2021-05-06 09:26:19',26,2,'专责人员审批通过\r\n','2021-05-06 09:27:11','经办人2','2021-05-05 00:00:00','2021-05-06 09:21:30'),(36,27,27,'2021-05-06 09:30:17','用他111',2,'2021-05-19 00:00:00','2021-05-26 00:00:00','公司111',26,3,'不通过的理由<img src=\"http://localhost:8080/danganguanlixitong/upload/1620264678141.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/danganguanlixitong/upload/1620264678141.jpg\">\r\n','2021-05-06 09:31:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-05-06 09:30:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','46ktvah5azlh7azkwvb6tv7kf6wwq4kd','2021-05-05 13:29:09','2021-05-06 10:27:21'),(2,25,'a1','yonghu','用户','fp2sftk3eorlh1c8gjwoa4r94fd09e53','2021-05-05 13:51:01','2021-05-06 10:29:37'),(3,25,'a11','jieyuebu','借阅部领导','ei4wam30a19qakjkgyysqf096jrr71x0','2021-05-05 14:11:08','2021-05-05 15:23:02'),(4,25,'a111','zhuguan','主管领导','t1yxgkdm2vm533wvsaufyhsvbr3c2g5j','2021-05-05 14:23:12','2021-05-05 17:24:47'),(5,25,'a1111','zhuren','综合部主任','y4g41cyx12b2fvdn8dfv4xe1cf6n4nnw','2021-05-05 16:19:54','2021-05-05 17:25:55'),(6,25,'a11111','wenshudangan','文书档案专责人员','atkdeokxx2k806kkd70r7i1y3965l4b1','2021-05-05 16:26:06','2021-05-05 18:32:29'),(7,26,'a2','yonghu','用户','ihxci2gexf6bs9xoa8uamtqztz6e10hl','2021-05-06 09:11:31','2021-05-06 10:29:08'),(8,26,'a22','jieyuebu','借阅部领导','fdre7f33g2f8bz6dd08v1n3pikzbls3t','2021-05-06 09:21:48','2021-05-06 10:31:00'),(9,26,'a222','zhuguan','主管领导','x0o6a4gw1ign85k97phakj87r52jas4j','2021-05-06 09:23:28','2021-05-06 10:31:46'),(10,26,'a22222','wenshudangan','文书档案专责人员','0a0pmhhugj98g90m7ng63ua837yv5y1u','2021-05-06 09:25:40','2021-05-06 10:27:56'),(11,26,'a2222','zhuren','综合部主任','buu0vq5tkahnynd4c3o92wd8gb5gkmuv','2021-05-06 09:25:55','2021-05-06 10:25:56'),(12,27,'a3','yonghu','用户','v612dmznctjmepjo3gh5ztp6a13x5cfa','2021-05-06 09:29:55','2021-05-06 10:29:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `wenshudangan` */

DROP TABLE IF EXISTS `wenshudangan`;

CREATE TABLE `wenshudangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `wenshudangan_name` varchar(200) DEFAULT NULL COMMENT '专责人员姓名 Search111 ',
  `wenshudangan_phone` varchar(200) DEFAULT NULL COMMENT '专责人员手机号 Search111 ',
  `wenshudangan_id_number` varchar(200) DEFAULT NULL COMMENT '专责人员身份证号 Search111 ',
  `wenshudangan_photo` varchar(200) DEFAULT NULL COMMENT '专责人员照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='文书档案专责人员';

/*Data for the table `wenshudangan` */

insert  into `wenshudangan`(`id`,`username`,`password`,`wenshudangan_name`,`wenshudangan_phone`,`wenshudangan_id_number`,`wenshudangan_photo`,`sex_types`,`create_time`) values (25,'a11111','123456','张11111','17703711111','410224199610211111','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192902142.jpg',2,'2021-05-05 13:35:03'),(26,'a22222','123456','张22222','17703722222','410224199610222222','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192944652.jpg',2,'2021-05-05 13:35:46');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_danwei` varchar(200) DEFAULT NULL COMMENT '单位 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_danwei`,`yonghu_photo`,`sex_types`,`create_time`) values (25,'a1','123456','张1','17703786901','410224199610232001','北京天痕科技公司','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192598157.jpg',2,'2021-05-05 13:30:00'),(26,'a2','123456','张2','17703786902','410224199610232002','北京天瑞科技有限公司','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192627169.jpg',1,'2021-05-05 13:30:35'),(27,'a3','123456','张三','17703786903','410224199610232003','北京天瑞科技公司','http://localhost:8080/danganguanlixitong/file/download?fileName=1620263148374.jpg',1,'2021-05-06 09:06:01');

/*Table structure for table `zhuguan` */

DROP TABLE IF EXISTS `zhuguan`;

CREATE TABLE `zhuguan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuguan_name` varchar(200) DEFAULT NULL COMMENT '主管领导姓名 Search111 ',
  `zhuguan_phone` varchar(200) DEFAULT NULL COMMENT '主管领导手机号 Search111 ',
  `zhuguan_id_number` varchar(200) DEFAULT NULL COMMENT '主管领导身份证号 Search111 ',
  `zhuguan_photo` varchar(200) DEFAULT NULL COMMENT '主管领导照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='主管领导';

/*Data for the table `zhuguan` */

insert  into `zhuguan`(`id`,`username`,`password`,`zhuguan_name`,`zhuguan_phone`,`zhuguan_id_number`,`zhuguan_photo`,`sex_types`,`create_time`) values (25,'a111','123456','张111','17703786111','410224199610232111','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192720650.jpg',2,'2021-05-05 13:32:02'),(26,'a222','123456','张222','17703786222','410224199610232222','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192756805.jpg',1,'2021-05-05 13:32:39');

/*Table structure for table `zhuren` */

DROP TABLE IF EXISTS `zhuren`;

CREATE TABLE `zhuren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuren_name` varchar(200) DEFAULT NULL COMMENT '综合部主任姓名 Search111 ',
  `zhuren_phone` varchar(200) DEFAULT NULL COMMENT '综合部主任手机号 Search111 ',
  `zhuren_id_number` varchar(200) DEFAULT NULL COMMENT '综合部主任身份证号 Search111 ',
  `zhuren_photo` varchar(200) DEFAULT NULL COMMENT '综合部主任照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='综合部主任';

/*Data for the table `zhuren` */

insert  into `zhuren`(`id`,`username`,`password`,`zhuren_name`,`zhuren_phone`,`zhuren_id_number`,`zhuren_photo`,`sex_types`,`create_time`) values (25,'a1111','123456','张1111','17703781111','410224199610231111','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192820625.jpg',2,'2021-05-05 13:33:42'),(26,'a2222','123456','张2222','17703782222','410224199610232222','http://localhost:8080/danganguanlixitong/file/download?fileName=1620192867332.jpg',2,'2021-05-05 13:34:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
