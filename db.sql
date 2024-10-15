/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jianshenfangguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jianshenfangguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jianshenfangguanli`;

/*Table structure for table `changdi` */

DROP TABLE IF EXISTS `changdi`;

CREATE TABLE `changdi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `changdi_name` varchar(200) DEFAULT NULL COMMENT '场地名称  Search111 ',
  `changdi_photo` varchar(200) DEFAULT NULL COMMENT '场地照片',
  `changdi_types` int(11) DEFAULT NULL COMMENT '场地类型 Search111',
  `changdi_kucun_number` int(11) DEFAULT NULL COMMENT '场地容量',
  `changdi_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格/分钟',
  `changdi_clicknum` int(11) DEFAULT NULL COMMENT '场地热度',
  `changdi_content` longtext COMMENT '场地介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='场地信息';

/*Data for the table `changdi` */

insert  into `changdi`(`id`,`changdi_name`,`changdi_photo`,`changdi_types`,`changdi_kucun_number`,`changdi_new_money`,`changdi_clicknum`,`changdi_content`,`shangxia_types`,`data_delete`,`insert_time`,`create_time`) values (1,'场地名称1','upload/changdi1.jpg',1,101,'89.24',247,'场地介绍1',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'场地名称2','upload/changdi2.jpg',1,102,'170.09',413,'场地介绍2',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'场地名称3','upload/changdi3.jpg',2,103,'334.47',180,'场地介绍3',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,'场地名称4','upload/changdi4.jpg',2,104,'313.35',492,'场地介绍4',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,'场地名称5','upload/changdi5.jpg',1,105,'353.52',18,'场地介绍5',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,'场地名称6','upload/changdi6.jpg',2,106,'472.41',428,'场地介绍6',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,'场地名称7','upload/changdi7.jpg',2,107,'56.23',58,'场地介绍7',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,'场地名称8','upload/changdi8.jpg',3,108,'43.46',65,'场地介绍8',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,'场地名称9','upload/changdi9.jpg',2,109,'309.52',187,'场地介绍9',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,'场地名称10','upload/changdi10.jpg',3,1010,'355.10',306,'场地介绍10',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,'场地名称11','upload/changdi11.jpg',2,1011,'364.02',413,'场地介绍11',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,'场地名称12','upload/changdi12.jpg',2,1012,'479.16',14,'场地介绍12',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,'场地名称13','upload/changdi13.jpg',1,1013,'204.21',429,'场地介绍13',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,'场地名称14','upload/changdi14.jpg',1,1014,'433.55',436,'场地介绍14',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `changdi_collection` */

DROP TABLE IF EXISTS `changdi_collection`;

CREATE TABLE `changdi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_id` int(11) DEFAULT NULL COMMENT '场地',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `changdi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='场地收藏';

/*Data for the table `changdi_collection` */

insert  into `changdi_collection`(`id`,`changdi_id`,`yonghu_id`,`changdi_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,2,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,3,2,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,4,2,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,5,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,6,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,7,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,8,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,9,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,10,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,11,2,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,12,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,13,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,14,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `changdi_liuyan` */

DROP TABLE IF EXISTS `changdi_liuyan`;

CREATE TABLE `changdi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_id` int(11) DEFAULT NULL COMMENT '场地',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `changdi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='场地留言';

/*Data for the table `changdi_liuyan` */

insert  into `changdi_liuyan`(`id`,`changdi_id`,`yonghu_id`,`changdi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-05-16 10:37:36','回复信息1','2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,2,2,'留言内容2','2023-05-16 10:37:36','回复信息2','2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,3,3,'留言内容3','2023-05-16 10:37:36','回复信息3','2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,4,3,'留言内容4','2023-05-16 10:37:36','回复信息4','2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,5,3,'留言内容5','2023-05-16 10:37:36','回复信息5','2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,6,3,'留言内容6','2023-05-16 10:37:36','回复信息6','2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,7,3,'留言内容7','2023-05-16 10:37:36','回复信息7','2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,8,2,'留言内容8','2023-05-16 10:37:36','回复信息8','2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,9,3,'留言内容9','2023-05-16 10:37:36','回复信息9','2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,10,3,'留言内容10','2023-05-16 10:37:36','回复信息10','2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,11,1,'留言内容11','2023-05-16 10:37:36','回复信息11','2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,12,2,'留言内容12','2023-05-16 10:37:36','回复信息12','2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,13,1,'留言内容13','2023-05-16 10:37:36','回复信息13','2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,14,2,'留言内容14','2023-05-16 10:37:36','回复信息14','2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `changdi_yuyue` */

DROP TABLE IF EXISTS `changdi_yuyue`;

CREATE TABLE `changdi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `changdi_id` int(11) DEFAULT NULL COMMENT '场地',
  `sheshiyuyue_text` longtext COMMENT '备注',
  `changdi_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `changdi_jieshu_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `changdi_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `changdi_yuyue_yesno_text` longtext COMMENT '审核回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='场地预约申请';

/*Data for the table `changdi_yuyue` */

insert  into `changdi_yuyue`(`id`,`changdi_yuyue_uuid_number`,`yonghu_id`,`changdi_id`,`sheshiyuyue_text`,`changdi_yuyue_time`,`changdi_jieshu_time`,`changdi_yuyue_yesno_types`,`changdi_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,'1684204656950',1,1,'备注1','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'1684204656954',2,2,'备注2','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'1684204656946',1,3,'备注3','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,'1684204657039',1,4,'备注4','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,'1684204656985',2,5,'备注5','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,'1684204657004',3,6,'备注6','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,'1684204656994',2,7,'备注7','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,'1684204656968',1,8,'备注8','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,'1684204656985',1,9,'备注9','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,'1684204657033',2,10,'备注10','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,'1684204656965',3,11,'备注11','2023-05-16 10:37:36','2023-05-16 10:37:36',1,NULL,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,'1684204657037',3,12,'备注12','2023-05-16 10:37:36','2023-05-16 10:37:36',2,'1','2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,'1684204656971',2,14,'备注14','2023-05-16 10:37:36','2023-05-16 10:37:36',3,'1','2023-05-16 10:37:36','2023-05-16 10:37:36'),(15,'1684215501941',1,4,NULL,'2023-05-16 13:38:00','2023-05-16 15:38:00',2,'1','2023-05-16 13:38:22','2023-05-16 13:38:22');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dianzhang` */

DROP TABLE IF EXISTS `dianzhang`;

CREATE TABLE `dianzhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `dianzhang_name` varchar(200) DEFAULT NULL COMMENT '店长名称 Search111 ',
  `dianzhang_phone` varchar(200) DEFAULT NULL COMMENT '店长手机号',
  `dianzhang_photo` varchar(200) DEFAULT NULL COMMENT '店长头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `dianzhang_email` varchar(200) DEFAULT NULL COMMENT '店长邮箱',
  `dianzhang_content` longtext COMMENT '店长简介 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='店长';

/*Data for the table `dianzhang` */

insert  into `dianzhang`(`id`,`username`,`password`,`dianzhang_name`,`dianzhang_phone`,`dianzhang_photo`,`sex_types`,`dianzhang_email`,`dianzhang_content`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','店长名称1','17703786901','upload/dianzhang1.jpg',1,'1@qq.com','店长简介1',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'a2','123456','店长名称2','17703786902','upload/dianzhang2.jpg',1,'2@qq.com','店长简介2',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'a3','123456','店长名称3','17703786903','upload/dianzhang3.jpg',2,'3@qq.com','店长简介3',1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-05-16 10:37:15'),(2,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-05-16 10:37:15'),(3,'jianshenkecheng_types','健身课程类型',1,'健身课程类型1',NULL,NULL,'2023-05-16 10:37:15'),(4,'jianshenkecheng_types','健身课程类型',2,'健身课程类型2',NULL,NULL,'2023-05-16 10:37:15'),(5,'jianshenkecheng_types','健身课程类型',3,'健身课程类型3',NULL,NULL,'2023-05-16 10:37:15'),(6,'jianshenkecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-16 10:37:15'),(7,'jianshenkecheng_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-16 10:37:15'),(8,'jianshenkecheng_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-16 10:37:15'),(9,'jianshenkecheng_order_types','订单类型',101,'已支付',NULL,NULL,'2023-05-16 10:37:15'),(10,'jianshenkecheng_order_types','订单类型',102,'已退款',NULL,NULL,'2023-05-16 10:37:15'),(11,'jianshenkecheng_order_types','订单类型',103,'已完成',NULL,NULL,'2023-05-16 10:37:15'),(12,'jianshenkecheng_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-05-16 10:37:15'),(13,'changdi_types','场地类型',1,'场地类型1',NULL,NULL,'2023-05-16 10:37:15'),(14,'changdi_types','场地类型',2,'场地类型2',NULL,NULL,'2023-05-16 10:37:15'),(15,'changdi_types','场地类型',3,'场地类型3',NULL,NULL,'2023-05-16 10:37:15'),(16,'changdi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-16 10:37:15'),(17,'changdi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-05-16 10:37:15'),(18,'changdi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-05-16 10:37:15'),(19,'changdi_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-05-16 10:37:15'),(20,'changdi_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-05-16 10:37:15'),(21,'changdi_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-05-16 10:37:15'),(22,'zifei_types','资费类型',1,'资费类型1',NULL,NULL,'2023-05-16 10:37:15'),(23,'zifei_types','资费类型',2,'资费类型2',NULL,NULL,'2023-05-16 10:37:15'),(24,'zifei_types','资费类型',3,'资费类型3',NULL,NULL,'2023-05-16 10:37:16'),(25,'jianshenqichai_types','健身器材类型',1,'健身器材类型1',NULL,NULL,'2023-05-16 10:37:16'),(26,'jianshenqichai_types','健身器材类型',2,'健身器材类型2',NULL,NULL,'2023-05-16 10:37:16'),(27,'jianshenqichai_types','健身器材类型',3,'健身器材类型3',NULL,NULL,'2023-05-16 10:37:16'),(28,'jianshenqichai_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2023-05-16 10:37:16'),(29,'jianshenqichai_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2023-05-16 10:37:16'),(30,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-16 10:37:16'),(31,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-16 10:37:16'),(32,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-05-16 10:37:16'),(33,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-16 10:37:16'),(34,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-16 10:37:16'),(35,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-16 10:37:16'),(36,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-16 10:37:16');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `dianzhang_id` int(11) DEFAULT NULL COMMENT '店长',
  `qiantai_id` int(11) DEFAULT NULL COMMENT '前台',
  `zhuchang_id` int(11) DEFAULT NULL COMMENT '驻场人员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`dianzhang_id`,`qiantai_id`,`zhuchang_id`,`yonghu_id`,`jiaolian_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,NULL,NULL,2,NULL,NULL,'发布内容1',478,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'帖子标题2',NULL,NULL,NULL,3,NULL,NULL,'发布内容2',238,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'帖子标题3',NULL,NULL,NULL,1,NULL,NULL,'发布内容3',13,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,'帖子标题4',NULL,NULL,NULL,2,NULL,NULL,'发布内容4',363,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,'帖子标题5',NULL,NULL,NULL,3,NULL,NULL,'发布内容5',89,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,'帖子标题6',NULL,NULL,NULL,3,NULL,NULL,'发布内容6',32,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,'帖子标题7',NULL,NULL,NULL,2,NULL,NULL,'发布内容7',123,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,'帖子标题8',NULL,NULL,NULL,3,NULL,NULL,'发布内容8',115,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,'帖子标题9',NULL,NULL,NULL,1,NULL,NULL,'发布内容9',255,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,'帖子标题10',NULL,NULL,NULL,3,NULL,NULL,'发布内容10',28,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,'帖子标题11',NULL,NULL,NULL,3,NULL,NULL,'发布内容11',378,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,'帖子标题12',NULL,NULL,NULL,1,NULL,NULL,'发布内容12',164,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,'帖子标题13',NULL,NULL,NULL,1,NULL,NULL,'发布内容13',368,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,'帖子标题14',NULL,NULL,NULL,1,NULL,NULL,'发布内容14',379,1,'2023-05-16 10:37:36','2023-05-16 10:37:36','2023-05-16 10:37:36'),(15,NULL,NULL,NULL,NULL,1,NULL,NULL,'111111111111111111111111',14,2,'2023-05-16 13:37:42',NULL,'2023-05-16 13:37:42'),(18,NULL,NULL,NULL,NULL,NULL,1,NULL,'2222222222',14,2,'2023-05-16 13:40:28',NULL,'2023-05-16 13:40:28'),(19,NULL,NULL,NULL,1,NULL,NULL,NULL,'3333333333333',14,2,'2023-05-16 13:41:27',NULL,'2023-05-16 13:41:27'),(20,NULL,NULL,1,NULL,NULL,NULL,NULL,'4444444444444',14,2,'2023-05-16 13:41:48',NULL,'2023-05-16 13:41:48'),(21,NULL,1,NULL,NULL,NULL,NULL,NULL,'555555555555',14,2,'2023-05-16 13:43:58',NULL,'2023-05-16 13:43:58'),(22,NULL,NULL,NULL,NULL,NULL,NULL,1,'66666666666666',14,2,'2023-05-16 13:44:52',NULL,'2023-05-16 13:44:52');

/*Table structure for table `jianshenkecheng` */

DROP TABLE IF EXISTS `jianshenkecheng`;

CREATE TABLE `jianshenkecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `jianshenkecheng_name` varchar(200) DEFAULT NULL COMMENT '健身课程名称  Search111 ',
  `jianshenkecheng_photo` varchar(200) DEFAULT NULL COMMENT '健身课程照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jianshenkecheng_types` int(11) DEFAULT NULL COMMENT '健身课程类型 Search111',
  `jianshenkecheng_clicknum` int(11) DEFAULT NULL COMMENT '健身课程热度',
  `jianshenkecheng_new_money` decimal(10,2) DEFAULT NULL COMMENT '课程价格',
  `jianshenkecheng_content` longtext COMMENT '健身课程介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健身课程';

/*Data for the table `jianshenkecheng` */

insert  into `jianshenkecheng`(`id`,`jiaolian_id`,`jianshenkecheng_name`,`jianshenkecheng_photo`,`zan_number`,`cai_number`,`jianshenkecheng_types`,`jianshenkecheng_clicknum`,`jianshenkecheng_new_money`,`jianshenkecheng_content`,`shangxia_types`,`data_delete`,`insert_time`,`create_time`) values (1,3,'健身课程名称1','upload/jianshenkecheng1.jpg',140,18,3,181,'476.73','健身课程介绍1',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,2,'健身课程名称2','upload/jianshenkecheng2.jpg',460,76,3,201,'91.99','健身课程介绍2',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,2,'健身课程名称3','upload/jianshenkecheng3.jpg',82,325,2,464,'371.72','健身课程介绍3',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,2,'健身课程名称4','upload/jianshenkecheng4.jpg',211,106,2,396,'122.21','健身课程介绍4',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,2,'健身课程名称5','upload/jianshenkecheng5.jpg',357,212,2,141,'203.33','健身课程介绍5',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,3,'健身课程名称6','upload/jianshenkecheng6.jpg',145,173,2,408,'216.53','健身课程介绍6',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,1,'健身课程名称7','upload/jianshenkecheng7.jpg',295,247,2,498,'469.31','健身课程介绍7',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,2,'健身课程名称8','upload/jianshenkecheng8.jpg',422,164,3,360,'422.79','健身课程介绍8',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,3,'健身课程名称9','upload/jianshenkecheng9.jpg',62,75,2,192,'446.52','健身课程介绍9',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,1,'健身课程名称10','upload/jianshenkecheng10.jpg',268,386,3,141,'378.72','健身课程介绍10',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,2,'健身课程名称11','upload/jianshenkecheng11.jpg',396,300,1,218,'494.19','健身课程介绍11',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,3,'健身课程名称12','upload/jianshenkecheng12.jpg',199,429,3,112,'185.18','健身课程介绍12',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,3,'健身课程名称13','upload/jianshenkecheng13.jpg',133,258,3,218,'179.01','健身课程介绍13',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,2,'健身课程名称14','upload/jianshenkecheng14.jpg',313,49,1,263,'287.61','健身课程介绍14',1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `jianshenkecheng_collection` */

DROP TABLE IF EXISTS `jianshenkecheng_collection`;

CREATE TABLE `jianshenkecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenkecheng_id` int(11) DEFAULT NULL COMMENT '健身课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianshenkecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `jianshenkecheng_collection` */

insert  into `jianshenkecheng_collection`(`id`,`jianshenkecheng_id`,`yonghu_id`,`jianshenkecheng_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,2,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,3,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,4,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,5,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,6,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,7,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,8,2,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,9,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,10,2,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,11,2,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,12,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,13,3,1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,14,1,1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `jianshenkecheng_liuyan` */

DROP TABLE IF EXISTS `jianshenkecheng_liuyan`;

CREATE TABLE `jianshenkecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenkecheng_id` int(11) DEFAULT NULL COMMENT '健身课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianshenkecheng_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `jianshenkecheng_liuyan` */

insert  into `jianshenkecheng_liuyan`(`id`,`jianshenkecheng_id`,`yonghu_id`,`jianshenkecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-05-16 10:37:36','回复信息1','2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,2,3,'留言内容2','2023-05-16 10:37:36','回复信息2','2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,3,2,'留言内容3','2023-05-16 10:37:36','回复信息3','2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,4,3,'留言内容4','2023-05-16 10:37:36','回复信息4','2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,5,1,'留言内容5','2023-05-16 10:37:36','回复信息5','2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,6,3,'留言内容6','2023-05-16 10:37:36','回复信息6','2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,7,2,'留言内容7','2023-05-16 10:37:36','回复信息7','2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,8,1,'留言内容8','2023-05-16 10:37:36','回复信息8','2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,9,3,'留言内容9','2023-05-16 10:37:36','回复信息9','2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,10,3,'留言内容10','2023-05-16 10:37:36','回复信息10','2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,11,1,'留言内容11','2023-05-16 10:37:36','回复信息11','2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,12,3,'留言内容12','2023-05-16 10:37:36','回复信息12','2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,13,1,'留言内容13','2023-05-16 10:37:36','回复信息13','2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,14,1,'留言内容14','2023-05-16 10:37:36','回复信息14','2023-05-16 10:37:36','2023-05-16 10:37:36'),(15,3,1,'111111111111','2023-05-16 13:37:25',NULL,NULL,'2023-05-16 13:37:25');

/*Table structure for table `jianshenkecheng_order` */

DROP TABLE IF EXISTS `jianshenkecheng_order`;

CREATE TABLE `jianshenkecheng_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenkecheng_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `jianshenkecheng_id` int(11) DEFAULT NULL COMMENT '健身课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianshenkecheng_order_time` timestamp NULL DEFAULT NULL COMMENT '预约日期',
  `jianshenkecheng_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `jianshenkecheng_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `jianshenkecheng_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='课程订单';

/*Data for the table `jianshenkecheng_order` */

insert  into `jianshenkecheng_order`(`id`,`jianshenkecheng_order_uuid_number`,`jianshenkecheng_id`,`yonghu_id`,`jianshenkecheng_order_time`,`jianshenkecheng_order_true_price`,`jianshenkecheng_order_types`,`jianshenkecheng_order_payment_types`,`insert_time`,`create_time`) values (1,'1684215432013',6,1,'2023-05-17 13:37:08','216.53',103,1,'2023-05-16 13:37:12','2023-05-16 13:37:12');

/*Table structure for table `jianshenqichai` */

DROP TABLE IF EXISTS `jianshenqichai`;

CREATE TABLE `jianshenqichai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianshenqichai_uuid_number` varchar(200) DEFAULT NULL COMMENT '健身器材编号',
  `jianshenqichai_name` varchar(200) DEFAULT NULL COMMENT '健身器材名称  Search111 ',
  `jianshenqichai_types` int(11) DEFAULT NULL COMMENT '健身器材类型 Search111',
  `jianshenqichai_kucun_number` int(11) DEFAULT NULL COMMENT '健身器材库存',
  `jianshenqichai_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `jianshenqichai_content` longtext COMMENT '健身器材介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健身器材';

/*Data for the table `jianshenqichai` */

insert  into `jianshenqichai`(`id`,`jianshenqichai_uuid_number`,`jianshenqichai_name`,`jianshenqichai_types`,`jianshenqichai_kucun_number`,`jianshenqichai_new_money`,`jianshenqichai_content`,`insert_time`,`create_time`) values (1,'1684204657061','健身器材名称1',1,101,'466.79','健身器材介绍1','2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'1684204656992','健身器材名称2',1,102,'65.75','健身器材介绍2','2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'1684204656995','健身器材名称3',2,103,'347.72','健身器材介绍3','2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,'1684204657057','健身器材名称4',3,104,'69.42','健身器材介绍4','2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,'1684204656990','健身器材名称5',1,105,'76.20','健身器材介绍5','2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,'1684204656987','健身器材名称6',3,106,'138.07','健身器材介绍6','2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,'1684204656970','健身器材名称7',2,107,'488.46','健身器材介绍7','2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,'1684204657056','健身器材名称8',3,108,'499.44','健身器材介绍8','2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,'1684204656972','健身器材名称9',1,109,'267.62','健身器材介绍9','2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,'1684204656974','健身器材名称10',1,1010,'64.09','健身器材介绍10','2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,'1684204657000','健身器材名称11',1,1011,'59.61','健身器材介绍11','2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,'1684204657025','健身器材名称12',1,1012,'364.52','健身器材介绍12','2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,'1684204657011','健身器材名称13',1,1011,'202.14','健身器材介绍13','2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,'1684204656986','健身器材名称14',2,1014,'394.17','<p>健身器材介绍14</p>','2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `jianshenqichai_churu_inout` */

DROP TABLE IF EXISTS `jianshenqichai_churu_inout`;

CREATE TABLE `jianshenqichai_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenqichai_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `jianshenqichai_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `jianshenqichai_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型  Search111 ',
  `jianshenqichai_churu_inout_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `jianshenqichai_churu_inout` */

insert  into `jianshenqichai_churu_inout`(`id`,`jianshenqichai_churu_inout_uuid_number`,`jianshenqichai_churu_inout_name`,`jianshenqichai_churu_inout_types`,`jianshenqichai_churu_inout_content`,`insert_time`,`create_time`) values (1,'1684204657008','出入库名称1',1,'备注1','2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'1684204657019','出入库名称2',2,'备注2','2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'1684204657010','出入库名称3',2,'备注3','2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,'1684204657008','出入库名称4',2,'备注4','2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,'1684204657048','出入库名称5',1,'备注5','2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,'1684204657059','出入库名称6',2,'备注6','2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,'1684204657051','出入库名称7',2,'备注7','2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,'1684204657052','出入库名称8',2,'备注8','2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,'1684204656990','出入库名称9',2,'备注9','2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,'1684204656996','出入库名称10',2,'备注10','2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,'1684204657027','出入库名称11',2,'备注11','2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,'1684204656987','出入库名称12',1,'备注12','2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,'1684204657028','出入库名称13',2,'备注13','2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,'1684204657023','出入库名称14',1,'备注14','2023-05-16 10:37:36','2023-05-16 10:37:36'),(15,'1684215657220','123',2,'','2023-05-16 13:40:57','2023-05-16 13:40:57'),(16,'1684215679358','3333',1,'','2023-05-16 13:41:19','2023-05-16 13:41:19');

/*Table structure for table `jianshenqichai_churu_inout_list` */

DROP TABLE IF EXISTS `jianshenqichai_churu_inout_list`;

CREATE TABLE `jianshenqichai_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jianshenqichai_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `jianshenqichai_id` int(11) DEFAULT NULL COMMENT '健身器材',
  `jianshenqichai_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `jianshenqichai_churu_inout_list` */

insert  into `jianshenqichai_churu_inout_list`(`id`,`jianshenqichai_churu_inout_id`,`jianshenqichai_id`,`jianshenqichai_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,269,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,2,2,320,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,3,3,123,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,4,4,190,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,5,5,364,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,6,6,17,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,7,7,208,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,8,8,8,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,9,9,52,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,10,10,453,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,11,11,9,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,12,12,183,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,13,13,498,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,14,14,265,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(15,15,13,1,'2023-05-16 13:40:57','2023-05-16 13:40:57'),(16,15,14,2,'2023-05-16 13:40:57','2023-05-16 13:40:57'),(17,16,13,3,'2023-05-16 13:41:19','2023-05-16 13:41:19'),(18,16,14,2,'2023-05-16 13:41:19','2023-05-16 13:41:19');

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练名称 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '教练手机号',
  `jiaolian_photo` varchar(200) DEFAULT NULL COMMENT '教练头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '教练邮箱',
  `jiaolian_new_money` decimal(10,2) DEFAULT NULL COMMENT '工薪',
  `jiaolian_content` longtext COMMENT '教练简介 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`username`,`password`,`jiaolian_name`,`jiaolian_phone`,`jiaolian_photo`,`sex_types`,`jiaolian_email`,`jiaolian_new_money`,`jiaolian_content`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','教练名称1','17703786901','upload/jiaolian1.jpg',2,'1@qq.com','48.93','教练简介1',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'a2','123456','教练名称2','17703786902','upload/jiaolian2.jpg',2,'2@qq.com','227.34','教练简介2',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'a3','123456','教练名称3','17703786903','upload/jiaolian3.jpg',1,'3@qq.com','400.03','教练简介3',1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-05-16 10:37:36','公告详情1','2023-05-16 10:37:36'),(2,'公告标题2',3,'upload/news2.jpg','2023-05-16 10:37:36','公告详情2','2023-05-16 10:37:36'),(3,'公告标题3',2,'upload/news3.jpg','2023-05-16 10:37:36','公告详情3','2023-05-16 10:37:36'),(4,'公告标题4',3,'upload/news4.jpg','2023-05-16 10:37:36','公告详情4','2023-05-16 10:37:36'),(5,'公告标题5',2,'upload/news5.jpg','2023-05-16 10:37:36','公告详情5','2023-05-16 10:37:36'),(6,'公告标题6',3,'upload/news6.jpg','2023-05-16 10:37:36','公告详情6','2023-05-16 10:37:36'),(7,'公告标题7',2,'upload/news7.jpg','2023-05-16 10:37:36','公告详情7','2023-05-16 10:37:36'),(8,'公告标题8',3,'upload/news8.jpg','2023-05-16 10:37:36','公告详情8','2023-05-16 10:37:36'),(9,'公告标题9',1,'upload/news9.jpg','2023-05-16 10:37:36','公告详情9','2023-05-16 10:37:36'),(10,'公告标题10',2,'upload/news10.jpg','2023-05-16 10:37:36','公告详情10','2023-05-16 10:37:36'),(11,'公告标题11',1,'upload/news11.jpg','2023-05-16 10:37:36','公告详情11','2023-05-16 10:37:36'),(12,'公告标题12',2,'upload/news12.jpg','2023-05-16 10:37:36','公告详情12','2023-05-16 10:37:36'),(13,'公告标题13',2,'upload/news13.jpg','2023-05-16 10:37:36','公告详情13','2023-05-16 10:37:36'),(14,'公告标题14',3,'upload/news14.jpg','2023-05-16 10:37:36','公告详情14','2023-05-16 10:37:36');

/*Table structure for table `qiantai` */

DROP TABLE IF EXISTS `qiantai`;

CREATE TABLE `qiantai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `qiantai_name` varchar(200) DEFAULT NULL COMMENT '前台名称 Search111 ',
  `qiantai_phone` varchar(200) DEFAULT NULL COMMENT '前台手机号',
  `qiantai_photo` varchar(200) DEFAULT NULL COMMENT '前台头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `qiantai_email` varchar(200) DEFAULT NULL COMMENT '前台邮箱',
  `qiantai_new_money` decimal(10,2) DEFAULT NULL COMMENT '工薪',
  `qiantai_content` longtext COMMENT '前台简介 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='前台';

/*Data for the table `qiantai` */

insert  into `qiantai`(`id`,`username`,`password`,`qiantai_name`,`qiantai_phone`,`qiantai_photo`,`sex_types`,`qiantai_email`,`qiantai_new_money`,`qiantai_content`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','前台名称1','17703786901','upload/qiantai1.jpg',2,'1@qq.com','390.40','前台简介1',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'a2','123456','前台名称2','17703786902','upload/qiantai2.jpg',2,'2@qq.com','358.32','前台简介2',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'a3','123456','前台名称3','17703786903','upload/qiantai3.jpg',1,'3@qq.com','390.49','前台简介3',1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','8zv11aegu9kdye864dg3hz7u47140x3l','2023-05-16 11:53:49','2023-05-16 15:00:46'),(2,1,'a1','yonghu','用户','7h4r0bgqair6g0c4kih74gsp50jd1zeq','2023-05-16 11:53:52','2023-05-16 14:37:03'),(3,1,'a1','jiaolian','教练','5mafrdg4htwg214wh4nhr20n6o8j97ud','2023-05-16 13:31:17','2023-05-16 14:40:09'),(4,1,'a1','zhuchang','驻场人员','vhofc62c273rs642kh6ti9z2okq501el','2023-05-16 13:40:35','2023-05-16 14:40:36'),(5,1,'a1','qiantai','前台','y3vbdl5y9e5e073iu1ijqpo0dz9s2d9y','2023-05-16 13:41:35','2023-05-16 14:41:35'),(6,1,'a1','dianzhang','店长','xq5h8kojns2g5df2tj0ov220yncmc071','2023-05-16 13:42:12','2023-05-16 14:42:12'),(7,3,'a3','jiaolian','教练','9aj96c9vhaukd98mq0aqp5qcp4ojcdbd','2023-05-16 13:45:05','2023-05-16 14:45:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-16 10:37:15');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','78.96',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','791.74',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','835.62',1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `zhuchang` */

DROP TABLE IF EXISTS `zhuchang`;

CREATE TABLE `zhuchang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuchang_name` varchar(200) DEFAULT NULL COMMENT '驻场人员名称 Search111 ',
  `zhuchang_phone` varchar(200) DEFAULT NULL COMMENT '驻场人员手机号',
  `zhuchang_photo` varchar(200) DEFAULT NULL COMMENT '驻场人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `zhuchang_email` varchar(200) DEFAULT NULL COMMENT '驻场人员邮箱',
  `zhuchang_new_money` decimal(10,2) DEFAULT NULL COMMENT '工薪',
  `zhuchang_content` longtext COMMENT '驻场人员简介 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='驻场人员';

/*Data for the table `zhuchang` */

insert  into `zhuchang`(`id`,`username`,`password`,`zhuchang_name`,`zhuchang_phone`,`zhuchang_photo`,`sex_types`,`zhuchang_email`,`zhuchang_new_money`,`zhuchang_content`,`data_delete`,`insert_time`,`create_time`) values (1,'a1','123456','驻场人员名称1','17703786901','upload/zhuchang1.jpg',2,'1@qq.com','226.31','驻场人员简介1',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'a2','123456','驻场人员名称2','17703786902','upload/zhuchang2.jpg',1,'2@qq.com','416.46','驻场人员简介2',1,'2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'a3','123456','驻场人员名称3','17703786903','upload/zhuchang3.jpg',1,'3@qq.com','202.75','驻场人员简介3',1,'2023-05-16 10:37:36','2023-05-16 10:37:36');

/*Table structure for table `zifei` */

DROP TABLE IF EXISTS `zifei`;

CREATE TABLE `zifei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zifei_uuid_number` varchar(200) DEFAULT NULL COMMENT '资费编号',
  `zifei_name` varchar(200) DEFAULT NULL COMMENT '资费名称  Search111 ',
  `zifei_types` int(11) DEFAULT NULL COMMENT '资费类型 Search111',
  `zifei_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `qiantai_id` int(11) DEFAULT NULL COMMENT '前台',
  `zifei_content` longtext COMMENT '资费详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='资费';

/*Data for the table `zifei` */

insert  into `zifei`(`id`,`zifei_uuid_number`,`zifei_name`,`zifei_types`,`zifei_new_money`,`qiantai_id`,`zifei_content`,`insert_time`,`create_time`) values (1,'1684204657062','资费名称1',1,'350.76',2,'资费详情1','2023-05-16 10:37:36','2023-05-16 10:37:36'),(2,'1684204657052','资费名称2',2,'86.18',1,'资费详情2','2023-05-16 10:37:36','2023-05-16 10:37:36'),(3,'1684204657018','资费名称3',3,'479.50',2,'资费详情3','2023-05-16 10:37:36','2023-05-16 10:37:36'),(4,'1684204657014','资费名称4',1,'185.70',1,'资费详情4','2023-05-16 10:37:36','2023-05-16 10:37:36'),(5,'1684204657049','资费名称5',1,'337.86',2,'资费详情5','2023-05-16 10:37:36','2023-05-16 10:37:36'),(6,'1684204657073','资费名称6',1,'302.20',1,'资费详情6','2023-05-16 10:37:36','2023-05-16 10:37:36'),(7,'1684204656996','资费名称7',2,'339.86',1,'资费详情7','2023-05-16 10:37:36','2023-05-16 10:37:36'),(8,'1684204657016','资费名称8',1,'287.68',1,'资费详情8','2023-05-16 10:37:36','2023-05-16 10:37:36'),(9,'1684204657044','资费名称9',3,'114.71',3,'资费详情9','2023-05-16 10:37:36','2023-05-16 10:37:36'),(10,'1684204657074','资费名称10',1,'307.08',1,'资费详情10','2023-05-16 10:37:36','2023-05-16 10:37:36'),(11,'1684204657076','资费名称11',3,'319.96',3,'资费详情11','2023-05-16 10:37:36','2023-05-16 10:37:36'),(12,'1684204657052','资费名称12',3,'438.96',2,'资费详情12','2023-05-16 10:37:36','2023-05-16 10:37:36'),(13,'1684204657080','资费名称13',1,'356.18',3,'资费详情13','2023-05-16 10:37:36','2023-05-16 10:37:36'),(14,'1684204657078','资费名称14',2,'168.25',3,'资费详情14','2023-05-16 10:37:36','2023-05-16 10:37:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
