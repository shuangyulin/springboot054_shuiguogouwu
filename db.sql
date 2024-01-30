/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot51rqt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot51rqt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot51rqt`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot51rqt/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot51rqt/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot51rqt/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshuiguo` */

DROP TABLE IF EXISTS `discussshuiguo`;

CREATE TABLE `discussshuiguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='水果评论表';

/*Data for the table `discussshuiguo` */

insert  into `discussshuiguo`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-04-11 23:50:35',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-04-11 23:50:35',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-04-11 23:50:35',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-04-11 23:50:35',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-04-11 23:50:35',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-04-11 23:50:35',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `goumaishuiguodingdan` */

DROP TABLE IF EXISTS `goumaishuiguodingdan`;

CREATE TABLE `goumaishuiguodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shuiguobianhao` varchar(200) DEFAULT NULL COMMENT '水果编号',
  `shuiguomingcheng` varchar(200) DEFAULT NULL COMMENT '水果名称',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  `shouhuoren` varchar(200) NOT NULL COMMENT '收货人',
  `shouhuorendianhua` varchar(200) NOT NULL COMMENT '收货人电话',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618157165101 DEFAULT CHARSET=utf8 COMMENT='购买水果订单';

/*Data for the table `goumaishuiguodingdan` */

insert  into `goumaishuiguodingdan`(`id`,`addtime`,`dingdanbianhao`,`shuiguobianhao`,`shuiguomingcheng`,`jiage`,`shuliang`,`zongjine`,`xiadanshijian`,`shouhuodizhi`,`shouhuoren`,`shouhuorendianhua`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (71,'2021-04-11 23:50:35','订单编号1','水果编号1','水果名称1',1,1,1,'2021-04-11 23:50:35','收货地址1','收货人1','收货人电话1','账号1','姓名1','是','','未支付'),(72,'2021-04-11 23:50:35','订单编号2','水果编号2','水果名称2',2,2,2,'2021-04-11 23:50:35','收货地址2','收货人2','收货人电话2','账号2','姓名2','是','','未支付'),(73,'2021-04-11 23:50:35','订单编号3','水果编号3','水果名称3',3,3,3,'2021-04-11 23:50:35','收货地址3','收货人3','收货人电话3','账号3','姓名3','是','','未支付'),(74,'2021-04-11 23:50:35','订单编号4','水果编号4','水果名称4',4,4,4,'2021-04-11 23:50:35','收货地址4','收货人4','收货人电话4','账号4','姓名4','是','','未支付'),(75,'2021-04-11 23:50:35','订单编号5','水果编号5','水果名称5',5,5,5,'2021-04-11 23:50:35','收货地址5','收货人5','收货人电话5','账号5','姓名5','是','','未支付'),(76,'2021-04-11 23:50:35','订单编号6','水果编号6','水果名称6',6,6,6,'2021-04-11 23:50:35','收货地址6','收货人6','收货人电话6','账号6','姓名6','是','','未支付'),(1618157165100,'2021-04-12 00:06:04','2021412053323730137','10086','香蕉',10,10,100,'2021-04-12 00:05:33','测试','测试','12345678912','11','11','是','以支付','已支付');

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) NOT NULL COMMENT '会员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) NOT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `zhekou` float DEFAULT NULL COMMENT '折扣',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanzhanghao` (`huiyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618157526180 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`addtime`,`huiyuanzhanghao`,`mima`,`huiyuanxingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`huiyuandengji`,`zhekou`,`zhaopian`,`sfsh`,`shhf`) values (21,'2021-04-11 23:50:35','会员1','123456','会员姓名1','男','13823888881','773890001@qq.com','440300199101010001','会员等级1',1,'http://localhost:8080/springboot51rqt/upload/huiyuan_zhaopian1.jpg','是',''),(22,'2021-04-11 23:50:35','会员2','123456','会员姓名2','男','13823888882','773890002@qq.com','440300199202020002','会员等级2',2,'http://localhost:8080/springboot51rqt/upload/huiyuan_zhaopian2.jpg','是',''),(23,'2021-04-11 23:50:35','会员3','123456','会员姓名3','男','13823888883','773890003@qq.com','440300199303030003','会员等级3',3,'http://localhost:8080/springboot51rqt/upload/huiyuan_zhaopian3.jpg','是',''),(24,'2021-04-11 23:50:35','会员4','123456','会员姓名4','男','13823888884','773890004@qq.com','440300199404040004','会员等级4',4,'http://localhost:8080/springboot51rqt/upload/huiyuan_zhaopian4.jpg','是',''),(25,'2021-04-11 23:50:35','会员5','123456','会员姓名5','男','13823888885','773890005@qq.com','440300199505050005','会员等级5',5,'http://localhost:8080/springboot51rqt/upload/huiyuan_zhaopian5.jpg','是',''),(26,'2021-04-11 23:50:35','会员6','123456','会员姓名6','男','13823888886','773890006@qq.com','440300199606060006','会员等级6',6,'http://localhost:8080/springboot51rqt/upload/huiyuan_zhaopian6.jpg','是',''),(1618157526179,'2021-04-12 00:12:06','11','11','11','男','12345678912',NULL,NULL,'黄金',0.8,'http://localhost:8080/springboot51rqt/upload/1618157043587.jpg','是','审核通过，会员才能登陆');

/*Table structure for table `huiyuangoumaidingdan` */

DROP TABLE IF EXISTS `huiyuangoumaidingdan`;

CREATE TABLE `huiyuangoumaidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shuiguobianhao` varchar(200) DEFAULT NULL COMMENT '水果编号',
  `shuiguomingcheng` varchar(200) DEFAULT NULL COMMENT '水果名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `zhekou` float DEFAULT NULL COMMENT '折扣',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `shouhuoren` varchar(200) DEFAULT NULL COMMENT '收货人',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `shouhuorendianhua` varchar(200) DEFAULT NULL COMMENT '收货人电话',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618157664160 DEFAULT CHARSET=utf8 COMMENT='会员购买订单';

/*Data for the table `huiyuangoumaidingdan` */

insert  into `huiyuangoumaidingdan`(`id`,`addtime`,`dingdanbianhao`,`shuiguobianhao`,`shuiguomingcheng`,`shuliang`,`jiage`,`huiyuandengji`,`zhekou`,`zongjine`,`xiadanshijian`,`shouhuoren`,`shouhuodizhi`,`shouhuorendianhua`,`huiyuanzhanghao`,`huiyuanxingming`,`sfsh`,`shhf`,`ispay`) values (121,'2021-04-11 23:50:35','订单编号1','水果编号1','水果名称1',1,1,'会员等级1',1,'总金额1','2021-04-11 23:50:35','收货人1','收货地址1','收货人电话1','会员账号1','会员姓名1','是','','未支付'),(122,'2021-04-11 23:50:35','订单编号2','水果编号2','水果名称2',2,2,'会员等级2',2,'总金额2','2021-04-11 23:50:35','收货人2','收货地址2','收货人电话2','会员账号2','会员姓名2','是','','未支付'),(123,'2021-04-11 23:50:35','订单编号3','水果编号3','水果名称3',3,3,'会员等级3',3,'总金额3','2021-04-11 23:50:35','收货人3','收货地址3','收货人电话3','会员账号3','会员姓名3','是','','未支付'),(124,'2021-04-11 23:50:35','订单编号4','水果编号4','水果名称4',4,4,'会员等级4',4,'总金额4','2021-04-11 23:50:35','收货人4','收货地址4','收货人电话4','会员账号4','会员姓名4','是','','未支付'),(125,'2021-04-11 23:50:35','订单编号5','水果编号5','水果名称5',5,5,'会员等级5',5,'总金额5','2021-04-11 23:50:35','收货人5','收货地址5','收货人电话5','会员账号5','会员姓名5','是','','未支付'),(126,'2021-04-11 23:50:35','订单编号6','水果编号6','水果名称6',6,6,'会员等级6',6,'总金额6','2021-04-11 23:50:35','收货人6','收货地址6','收货人电话6','会员账号6','会员姓名6','是','','未支付'),(1618157664159,'2021-04-12 00:14:24','1618157646183','10086','香蕉',10,10,'黄金',0.8,'80','2021-04-12 00:14:06','测试','测试','12345678912','11','11','是',NULL,'已支付');

/*Table structure for table `huiyuanka` */

DROP TABLE IF EXISTS `huiyuanka`;

CREATE TABLE `huiyuanka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `zhekou` float DEFAULT NULL COMMENT '折扣',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618156624770 DEFAULT CHARSET=utf8 COMMENT='会员卡';

/*Data for the table `huiyuanka` */

insert  into `huiyuanka`(`id`,`addtime`,`huiyuandengji`,`zhekou`,`jiage`,`tupian`) values (31,'2021-04-11 23:50:35','会员等级1',1,1,'http://localhost:8080/springboot51rqt/upload/huiyuanka_tupian1.jpg'),(32,'2021-04-11 23:50:35','会员等级2',2,2,'http://localhost:8080/springboot51rqt/upload/huiyuanka_tupian2.jpg'),(33,'2021-04-11 23:50:35','会员等级3',3,3,'http://localhost:8080/springboot51rqt/upload/huiyuanka_tupian3.jpg'),(34,'2021-04-11 23:50:35','会员等级4',4,4,'http://localhost:8080/springboot51rqt/upload/huiyuanka_tupian4.jpg'),(35,'2021-04-11 23:50:35','会员等级5',5,5,'http://localhost:8080/springboot51rqt/upload/huiyuanka_tupian5.jpg'),(36,'2021-04-11 23:50:35','会员等级6',6,6,'http://localhost:8080/springboot51rqt/upload/huiyuanka_tupian6.jpg'),(1618156624769,'2021-04-11 23:57:03','黄金',0.8,5,'http://localhost:8080/springboot51rqt/upload/1618156622142.jpg');

/*Table structure for table `huiyuanshuiguo` */

DROP TABLE IF EXISTS `huiyuanshuiguo`;

CREATE TABLE `huiyuanshuiguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shuiguobianhao` varchar(200) DEFAULT NULL COMMENT '水果编号',
  `shuiguomingcheng` varchar(200) DEFAULT NULL COMMENT '水果名称',
  `shuiguozhonglei` varchar(200) DEFAULT NULL COMMENT '水果种类',
  `shuiguoxiangqing` longtext COMMENT '水果详情',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuiguozhaopian` varchar(200) DEFAULT NULL COMMENT '水果照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618156903211 DEFAULT CHARSET=utf8 COMMENT='会员水果';

/*Data for the table `huiyuanshuiguo` */

insert  into `huiyuanshuiguo`(`id`,`addtime`,`shuiguobianhao`,`shuiguomingcheng`,`shuiguozhonglei`,`shuiguoxiangqing`,`jiage`,`shuiguozhaopian`) values (111,'2021-04-11 23:50:35','水果编号1','水果名称1','水果种类1','水果详情1',1,'http://localhost:8080/springboot51rqt/upload/huiyuanshuiguo_shuiguozhaopian1.jpg'),(112,'2021-04-11 23:50:35','水果编号2','水果名称2','水果种类2','水果详情2',2,'http://localhost:8080/springboot51rqt/upload/huiyuanshuiguo_shuiguozhaopian2.jpg'),(113,'2021-04-11 23:50:35','水果编号3','水果名称3','水果种类3','水果详情3',3,'http://localhost:8080/springboot51rqt/upload/huiyuanshuiguo_shuiguozhaopian3.jpg'),(114,'2021-04-11 23:50:35','水果编号4','水果名称4','水果种类4','水果详情4',4,'http://localhost:8080/springboot51rqt/upload/huiyuanshuiguo_shuiguozhaopian4.jpg'),(115,'2021-04-11 23:50:35','水果编号5','水果名称5','水果种类5','水果详情5',5,'http://localhost:8080/springboot51rqt/upload/huiyuanshuiguo_shuiguozhaopian5.jpg'),(116,'2021-04-11 23:50:35','水果编号6','水果名称6','水果种类6','水果详情6',6,'http://localhost:8080/springboot51rqt/upload/huiyuanshuiguo_shuiguozhaopian6.jpg'),(1618156903210,'2021-04-12 00:01:42','10086','香蕉','甜','<p>这里是会员购买专区</p>',10,'http://localhost:8080/springboot51rqt/upload/1618156885240.jpg');

/*Table structure for table `jiajifenjilu` */

DROP TABLE IF EXISTS `jiajifenjilu`;

CREATE TABLE `jiajifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  `jiajifenbeizhu` varchar(200) DEFAULT NULL COMMENT '加积分备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='加积分记录';

/*Data for the table `jiajifenjilu` */

insert  into `jiajifenjilu`(`id`,`addtime`,`zhanghao`,`xingming`,`jifen`,`jiajifenbeizhu`) values (91,'2021-04-11 23:50:35','账号1','姓名1','10000','加积分备注1'),(92,'2021-04-11 23:50:35','账号2','姓名2','10000','加积分备注2'),(93,'2021-04-11 23:50:35','账号3','姓名3','10000','加积分备注3'),(94,'2021-04-11 23:50:35','账号4','姓名4','10000','加积分备注4'),(95,'2021-04-11 23:50:35','账号5','姓名5','10000','加积分备注5'),(96,'2021-04-11 23:50:35','账号6','姓名6','10000','加积分备注6');

/*Table structure for table `jianjifenjilu` */

DROP TABLE IF EXISTS `jianjifenjilu`;

CREATE TABLE `jianjifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shuiguobianhao` varchar(200) DEFAULT NULL COMMENT '水果编号',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618157358581 DEFAULT CHARSET=utf8 COMMENT='减积分记录';

/*Data for the table `jianjifenjilu` */

insert  into `jianjifenjilu`(`id`,`addtime`,`zhanghao`,`xingming`,`shuiguobianhao`,`jifen`) values (101,'2021-04-11 23:50:35','账号1','姓名1','水果编号1','10000'),(102,'2021-04-11 23:50:35','账号2','姓名2','水果编号2','10000'),(103,'2021-04-11 23:50:35','账号3','姓名3','水果编号3','10000'),(104,'2021-04-11 23:50:35','账号4','姓名4','水果编号4','10000'),(105,'2021-04-11 23:50:35','账号5','姓名5','水果编号5','10000'),(106,'2021-04-11 23:50:35','账号6','姓名6','水果编号6','10000'),(1618157358580,'2021-04-12 00:09:18','11','11','10086','10');

/*Table structure for table `jifen` */

DROP TABLE IF EXISTS `jifen`;

CREATE TABLE `jifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifen` varchar(200) DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618157098917 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifen` */

insert  into `jifen`(`id`,`addtime`,`zhanghao`,`xingming`,`jifen`) values (51,'2021-04-11 23:50:35','账号1','姓名1','10000'),(52,'2021-04-11 23:50:35','账号2','姓名2','10000'),(53,'2021-04-11 23:50:35','账号3','姓名3','10000'),(54,'2021-04-11 23:50:35','账号4','姓名4','10000'),(55,'2021-04-11 23:50:35','账号5','姓名5','10000'),(56,'2021-04-11 23:50:35','账号6','姓名6','10000'),(1618157098916,'2021-04-12 00:04:58','11','11','9990');

/*Table structure for table `jifenduihuanjilu` */

DROP TABLE IF EXISTS `jifenduihuanjilu`;

CREATE TABLE `jifenduihuanjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shuiguobianhao` varchar(200) DEFAULT NULL COMMENT '水果编号',
  `shuiguomingcheng` varchar(200) DEFAULT NULL COMMENT '水果名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `zongjifen` varchar(200) DEFAULT NULL COMMENT '总积分',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  `shouhuoren` varchar(200) NOT NULL COMMENT '收货人',
  `shouhuorendianhua` varchar(200) NOT NULL COMMENT '收货人电话',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618157191354 DEFAULT CHARSET=utf8 COMMENT='积分兑换记录';

/*Data for the table `jifenduihuanjilu` */

insert  into `jifenduihuanjilu`(`id`,`addtime`,`dingdanbianhao`,`shuiguobianhao`,`shuiguomingcheng`,`shuliang`,`jifen`,`zongjifen`,`xiadanshijian`,`shouhuodizhi`,`shouhuoren`,`shouhuorendianhua`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (81,'2021-04-11 23:50:35','订单编号1','水果编号1','水果名称1',1,10000,'总积分1','2021-04-11 23:50:35','收货地址1','收货人1','收货人电话1','账号1','姓名1','是',''),(82,'2021-04-11 23:50:35','订单编号2','水果编号2','水果名称2',2,10000,'总积分2','2021-04-11 23:50:35','收货地址2','收货人2','收货人电话2','账号2','姓名2','是',''),(83,'2021-04-11 23:50:35','订单编号3','水果编号3','水果名称3',3,10000,'总积分3','2021-04-11 23:50:35','收货地址3','收货人3','收货人电话3','账号3','姓名3','是',''),(84,'2021-04-11 23:50:35','订单编号4','水果编号4','水果名称4',4,10000,'总积分4','2021-04-11 23:50:35','收货地址4','收货人4','收货人电话4','账号4','姓名4','是',''),(85,'2021-04-11 23:50:35','订单编号5','水果编号5','水果名称5',5,10000,'总积分5','2021-04-11 23:50:35','收货地址5','收货人5','收货人电话5','账号5','姓名5','是',''),(86,'2021-04-11 23:50:35','订单编号6','水果编号6','水果名称6',6,10000,'总积分6','2021-04-11 23:50:35','收货地址6','收货人6','收货人电话6','账号6','姓名6','是',''),(1618157191353,'2021-04-12 00:06:31','2021412061082295532','10086','香蕉',10,10,'100','2021-04-12 00:06:11','测试','测试','12345678912','11','11','是','看到订单，去把用户的积分减掉');

/*Table structure for table `kaitonghuiyuanjilu` */

DROP TABLE IF EXISTS `kaitonghuiyuanjilu`;

CREATE TABLE `kaitonghuiyuanjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `zhekou` varchar(200) DEFAULT NULL COMMENT '折扣',
  `kaitongshijian` datetime DEFAULT NULL COMMENT '开通时间',
  `goumaitianshu` int(11) DEFAULT NULL COMMENT '购买天数',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `kaitongfeiyong` varchar(200) DEFAULT NULL COMMENT '开通费用',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618157428300 DEFAULT CHARSET=utf8 COMMENT='开通会员记录';

/*Data for the table `kaitonghuiyuanjilu` */

insert  into `kaitonghuiyuanjilu`(`id`,`addtime`,`huiyuandengji`,`zhekou`,`kaitongshijian`,`goumaitianshu`,`jiage`,`kaitongfeiyong`,`zhanghao`,`xingming`,`sfsh`,`shhf`,`ispay`) values (41,'2021-04-11 23:50:35','会员等级1','折扣1','2021-04-11 23:50:35',1,1,'开通费用1','账号1','姓名1','是','','未支付'),(42,'2021-04-11 23:50:35','会员等级2','折扣2','2021-04-11 23:50:35',2,2,'开通费用2','账号2','姓名2','是','','未支付'),(43,'2021-04-11 23:50:35','会员等级3','折扣3','2021-04-11 23:50:35',3,3,'开通费用3','账号3','姓名3','是','','未支付'),(44,'2021-04-11 23:50:35','会员等级4','折扣4','2021-04-11 23:50:35',4,4,'开通费用4','账号4','姓名4','是','','未支付'),(45,'2021-04-11 23:50:35','会员等级5','折扣5','2021-04-11 23:50:35',5,5,'开通费用5','账号5','姓名5','是','','未支付'),(46,'2021-04-11 23:50:35','会员等级6','折扣6','2021-04-11 23:50:35',6,6,'开通费用6','账号6','姓名6','是','','未支付'),(1618157428299,'2021-04-12 00:10:27','黄金','0.8','2021-04-29 00:03:00',10,5,'50','11','11','是','给该用户开会员账号','未支付');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618156963785 DEFAULT CHARSET=utf8 COMMENT='水果新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (141,'2021-04-11 23:50:35','标题1','简介1','http://localhost:8080/springboot51rqt/upload/news_picture1.jpg','内容1'),(142,'2021-04-11 23:50:35','标题2','简介2','http://localhost:8080/springboot51rqt/upload/news_picture2.jpg','内容2'),(143,'2021-04-11 23:50:35','标题3','简介3','http://localhost:8080/springboot51rqt/upload/news_picture3.jpg','内容3'),(144,'2021-04-11 23:50:35','标题4','简介4','http://localhost:8080/springboot51rqt/upload/news_picture4.jpg','内容4'),(145,'2021-04-11 23:50:35','标题5','简介5','http://localhost:8080/springboot51rqt/upload/news_picture5.jpg','内容5'),(146,'2021-04-11 23:50:35','标题6','简介6','http://localhost:8080/springboot51rqt/upload/news_picture6.jpg','内容6'),(1618156963784,'2021-04-12 00:02:43','水果优惠新闻','编辑新闻','http://localhost:8080/springboot51rqt/upload/1618156931661.jpg','<p>可以添加照片  视频 等内容</p>');

/*Table structure for table `shuiguo` */

DROP TABLE IF EXISTS `shuiguo`;

CREATE TABLE `shuiguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shuiguobianhao` varchar(200) DEFAULT NULL COMMENT '水果编号',
  `shuiguomingcheng` varchar(200) DEFAULT NULL COMMENT '水果名称',
  `shuiguozhonglei` varchar(200) DEFAULT NULL COMMENT '水果种类',
  `shuiguoxiangqing` longtext COMMENT '水果详情',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `shuiguozhaopian` varchar(200) DEFAULT NULL COMMENT '水果照片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618156825050 DEFAULT CHARSET=utf8 COMMENT='水果';

/*Data for the table `shuiguo` */

insert  into `shuiguo`(`id`,`addtime`,`shuiguobianhao`,`shuiguomingcheng`,`shuiguozhonglei`,`shuiguoxiangqing`,`jiage`,`jifen`,`shuiguozhaopian`,`thumbsupnum`,`crazilynum`) values (61,'2021-04-11 23:50:35','水果编号1','水果名称1','水果种类1','水果详情1',1,10000,'http://localhost:8080/springboot51rqt/upload/shuiguo_shuiguozhaopian1.jpg',1,1),(62,'2021-04-11 23:50:35','水果编号2','水果名称2','水果种类2','水果详情2',2,10000,'http://localhost:8080/springboot51rqt/upload/shuiguo_shuiguozhaopian2.jpg',2,2),(63,'2021-04-11 23:50:35','水果编号3','水果名称3','水果种类3','水果详情3',3,10000,'http://localhost:8080/springboot51rqt/upload/shuiguo_shuiguozhaopian3.jpg',3,3),(64,'2021-04-11 23:50:35','水果编号4','水果名称4','水果种类4','水果详情4',4,10000,'http://localhost:8080/springboot51rqt/upload/shuiguo_shuiguozhaopian4.jpg',4,4),(65,'2021-04-11 23:50:35','水果编号5','水果名称5','水果种类5','水果详情5',5,10000,'http://localhost:8080/springboot51rqt/upload/shuiguo_shuiguozhaopian5.jpg',5,5),(66,'2021-04-11 23:50:35','水果编号6','水果名称6','水果种类6','水果详情6',6,10000,'http://localhost:8080/springboot51rqt/upload/shuiguo_shuiguozhaopian6.jpg',6,6),(1618156825049,'2021-04-12 00:00:24','10086','香蕉','甜的','<p>上面可以插入香蕉的照片，演示录像照片一般是随便找的图片，客户可以自己在后天添加相关的照片。</p>',10,10,'http://localhost:8080/springboot51rqt/upload/1618156728287.png',0,0);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','rlx2ltandh4ztijipnxtsyq2oi58tce3','2021-04-11 23:55:30','2021-04-12 01:14:55'),(2,1618156981509,'11','yonghu','用户','2vxkmmt7xdeajcfns9uixhrenqyebzbx','2021-04-12 00:03:07','2021-04-12 01:09:38'),(3,1618157526179,'11','huiyuan','会员','o8mj36734wtsoyfppbo5vyyg9ip872pa','2021-04-12 00:13:15','2021-04-12 01:13:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-11 23:50:36');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618156981510 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-11 23:50:35','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/springboot51rqt/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-11 23:50:35','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/springboot51rqt/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-11 23:50:35','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/springboot51rqt/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-11 23:50:35','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/springboot51rqt/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-11 23:50:35','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/springboot51rqt/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-11 23:50:35','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/springboot51rqt/upload/yonghu_zhaopian6.jpg'),(1618156981509,'2021-04-12 00:03:01','11','11','11','男','12345678912',NULL,NULL,'http://localhost:8080/springboot51rqt/upload/1618157043587.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
