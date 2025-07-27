-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django47nia
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `django47nia`
--

/*!40000 DROP DATABASE IF EXISTS `django47nia`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django47nia` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django47nia`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `gongsimingcheng` varchar(200) NOT NULL COMMENT '公司名称',
  `gongsidizhi` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (31,'2023-03-05 02:35:46','负责人1','联系电话1','公司名称1','公司地址1','2023-03-05','备注1'),(32,'2023-03-05 02:35:46','负责人2','联系电话2','公司名称2','公司地址2','2023-03-05','备注2'),(33,'2023-03-05 02:35:46','负责人3','联系电话3','公司名称3','公司地址3','2023-03-05','备注3'),(34,'2023-03-05 02:35:46','负责人4','联系电话4','公司名称4','公司地址4','2023-03-05','备注4'),(35,'2023-03-05 02:35:46','负责人5','联系电话5','公司名称5','公司地址5','2023-03-05','备注5'),(36,'2023-03-05 02:35:46','负责人6','联系电话6','公司名称6','公司地址6','2023-03-05','备注6'),(37,'2023-03-05 02:35:46','负责人7','联系电话7','公司名称7','公司地址7','2023-03-05','备注7'),(38,'2023-03-05 02:35:46','负责人8','联系电话8','公司名称8','公司地址8','2023-03-05','备注8');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaocaileixing`
--

DROP TABLE IF EXISTS `jiaocaileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaocaileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaocaileixing` varchar(200) NOT NULL COMMENT '教材类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='教材类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaocaileixing`
--

LOCK TABLES `jiaocaileixing` WRITE;
/*!40000 ALTER TABLE `jiaocaileixing` DISABLE KEYS */;
INSERT INTO `jiaocaileixing` VALUES (41,'2023-03-05 02:35:46','教材类型1'),(42,'2023-03-05 02:35:46','教材类型2'),(43,'2023-03-05 02:35:46','教材类型3'),(44,'2023-03-05 02:35:46','教材类型4'),(45,'2023-03-05 02:35:46','教材类型5'),(46,'2023-03-05 02:35:46','教材类型6'),(47,'2023-03-05 02:35:46','教材类型7'),(48,'2023-03-05 02:35:46','教材类型8');
/*!40000 ALTER TABLE `jiaocaileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaocairuku`
--

DROP TABLE IF EXISTS `jiaocairuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaocairuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `jiaocaibianhao` varchar(200) DEFAULT NULL COMMENT '教材编号',
  `jiaocaimingcheng` varchar(200) NOT NULL COMMENT '教材名称',
  `jiaocaileixing` varchar(200) NOT NULL COMMENT '教材类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danjia` float NOT NULL COMMENT '单价',
  `heji` float NOT NULL COMMENT '合计',
  `rukuriqi` date DEFAULT NULL COMMENT '入库日期',
  `gongyingshang` varchar(200) NOT NULL COMMENT '供应商',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='教材入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaocairuku`
--

LOCK TABLES `jiaocairuku` WRITE;
/*!40000 ALTER TABLE `jiaocairuku` DISABLE KEYS */;
INSERT INTO `jiaocairuku` VALUES (61,'2023-03-05 02:35:46','1111111111','教材编号1','教材名称1','教材类型1',1,1,1,'2023-03-05','供应商1','备注1'),(62,'2023-03-05 02:35:46','2222222222','教材编号2','教材名称2','教材类型2',2,2,2,'2023-03-05','供应商2','备注2'),(63,'2023-03-05 02:35:46','3333333333','教材编号3','教材名称3','教材类型3',3,3,3,'2023-03-05','供应商3','备注3'),(64,'2023-03-05 02:35:46','4444444444','教材编号4','教材名称4','教材类型4',4,4,4,'2023-03-05','供应商4','备注4'),(65,'2023-03-05 02:35:46','5555555555','教材编号5','教材名称5','教材类型5',5,5,5,'2023-03-05','供应商5','备注5'),(66,'2023-03-05 02:35:46','6666666666','教材编号6','教材名称6','教材类型6',6,6,6,'2023-03-05','供应商6','备注6'),(67,'2023-03-05 02:35:46','7777777777','教材编号7','教材名称7','教材类型7',7,7,7,'2023-03-05','供应商7','备注7'),(68,'2023-03-05 02:35:46','8888888888','教材编号8','教材名称8','教材类型8',8,8,8,'2023-03-05','供应商8','备注8');
/*!40000 ALTER TABLE `jiaocairuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaocaixinxi`
--

DROP TABLE IF EXISTS `jiaocaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaocaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaocaibianhao` varchar(200) DEFAULT NULL COMMENT '教材编号',
  `jiaocaimingcheng` varchar(200) NOT NULL COMMENT '教材名称',
  `fengmian` longtext COMMENT '封面',
  `jiaocaileixing` varchar(200) NOT NULL COMMENT '教材类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danjia` float NOT NULL COMMENT '单价',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  `jiaocaixiangqing` longtext COMMENT '教材详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaocaibianhao` (`jiaocaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='教材信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaocaixinxi`
--

LOCK TABLES `jiaocaixinxi` WRITE;
/*!40000 ALTER TABLE `jiaocaixinxi` DISABLE KEYS */;
INSERT INTO `jiaocaixinxi` VALUES (51,'2023-03-05 02:35:46','1111111111','教材名称1','upload/jiaocaixinxi_fengmian1.jpg,upload/jiaocaixinxi_fengmian2.jpg,upload/jiaocaixinxi_fengmian3.jpg','教材类型1',1,1,'供应商1','2023-03-05','教材详情1'),(52,'2023-03-05 02:35:46','2222222222','教材名称2','upload/jiaocaixinxi_fengmian2.jpg,upload/jiaocaixinxi_fengmian3.jpg,upload/jiaocaixinxi_fengmian4.jpg','教材类型2',2,2,'供应商2','2023-03-05','教材详情2'),(53,'2023-03-05 02:35:46','3333333333','教材名称3','upload/jiaocaixinxi_fengmian3.jpg,upload/jiaocaixinxi_fengmian4.jpg,upload/jiaocaixinxi_fengmian5.jpg','教材类型3',3,3,'供应商3','2023-03-05','教材详情3'),(54,'2023-03-05 02:35:46','4444444444','教材名称4','upload/jiaocaixinxi_fengmian4.jpg,upload/jiaocaixinxi_fengmian5.jpg,upload/jiaocaixinxi_fengmian6.jpg','教材类型4',4,4,'供应商4','2023-03-05','教材详情4'),(55,'2023-03-05 02:35:46','5555555555','教材名称5','upload/jiaocaixinxi_fengmian5.jpg,upload/jiaocaixinxi_fengmian6.jpg,upload/jiaocaixinxi_fengmian7.jpg','教材类型5',5,5,'供应商5','2023-03-05','教材详情5'),(56,'2023-03-05 02:35:46','6666666666','教材名称6','upload/jiaocaixinxi_fengmian6.jpg,upload/jiaocaixinxi_fengmian7.jpg,upload/jiaocaixinxi_fengmian8.jpg','教材类型6',6,6,'供应商6','2023-03-05','教材详情6'),(57,'2023-03-05 02:35:46','7777777777','教材名称7','upload/jiaocaixinxi_fengmian7.jpg,upload/jiaocaixinxi_fengmian8.jpg,upload/jiaocaixinxi_fengmian9.jpg','教材类型7',7,7,'供应商7','2023-03-05','教材详情7'),(58,'2023-03-05 02:35:46','8888888888','教材名称8','upload/jiaocaixinxi_fengmian8.jpg,upload/jiaocaixinxi_fengmian9.jpg,upload/jiaocaixinxi_fengmian10.jpg','教材类型8',8,8,'供应商8','2023-03-05','教材详情8');
/*!40000 ALTER TABLE `jiaocaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2023-03-05 02:35:46','教师工号1','123456','教师姓名1','upload/jiaoshi_touxiang1.jpg','男','13823888881','773890001@qq.com'),(22,'2023-03-05 02:35:46','教师工号2','123456','教师姓名2','upload/jiaoshi_touxiang2.jpg','男','13823888882','773890002@qq.com'),(23,'2023-03-05 02:35:46','教师工号3','123456','教师姓名3','upload/jiaoshi_touxiang3.jpg','男','13823888883','773890003@qq.com'),(24,'2023-03-05 02:35:46','教师工号4','123456','教师姓名4','upload/jiaoshi_touxiang4.jpg','男','13823888884','773890004@qq.com'),(25,'2023-03-05 02:35:46','教师工号5','123456','教师姓名5','upload/jiaoshi_touxiang5.jpg','男','13823888885','773890005@qq.com'),(26,'2023-03-05 02:35:46','教师工号6','123456','教师姓名6','upload/jiaoshi_touxiang6.jpg','男','13823888886','773890006@qq.com'),(27,'2023-03-05 02:35:46','教师工号7','123456','教师姓名7','upload/jiaoshi_touxiang7.jpg','男','13823888887','773890007@qq.com'),(28,'2023-03-05 02:35:46','教师工号8','123456','教师姓名8','upload/jiaoshi_touxiang8.jpg','男','13823888888','773890008@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshilingshu`
--

DROP TABLE IF EXISTS `jiaoshilingshu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshilingshu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jiaocaibianhao` varchar(200) DEFAULT NULL COMMENT '教材编号',
  `jiaocaimingcheng` varchar(200) NOT NULL COMMENT '教材名称',
  `jiaocaileixing` varchar(200) NOT NULL COMMENT '教材类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danjia` float NOT NULL COMMENT '单价',
  `heji` float DEFAULT NULL COMMENT '合计',
  `dingdanriqi` date DEFAULT NULL COMMENT '订单日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='教师领书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshilingshu`
--

LOCK TABLES `jiaoshilingshu` WRITE;
/*!40000 ALTER TABLE `jiaoshilingshu` DISABLE KEYS */;
INSERT INTO `jiaoshilingshu` VALUES (71,'2023-03-05 02:35:46','1111111111','教材编号1','教材名称1','教材类型1',1,1,1,'2023-03-05','教师工号1','教师姓名1','未支付'),(72,'2023-03-05 02:35:46','2222222222','教材编号2','教材名称2','教材类型2',2,2,2,'2023-03-05','教师工号2','教师姓名2','未支付'),(73,'2023-03-05 02:35:46','3333333333','教材编号3','教材名称3','教材类型3',3,3,3,'2023-03-05','教师工号3','教师姓名3','未支付'),(74,'2023-03-05 02:35:46','4444444444','教材编号4','教材名称4','教材类型4',4,4,4,'2023-03-05','教师工号4','教师姓名4','未支付'),(75,'2023-03-05 02:35:46','5555555555','教材编号5','教材名称5','教材类型5',5,5,5,'2023-03-05','教师工号5','教师姓名5','未支付'),(76,'2023-03-05 02:35:46','6666666666','教材编号6','教材名称6','教材类型6',6,6,6,'2023-03-05','教师工号6','教师姓名6','未支付'),(77,'2023-03-05 02:35:46','7777777777','教材编号7','教材名称7','教材类型7',7,7,7,'2023-03-05','教师工号7','教师姓名7','未支付'),(78,'2023-03-05 02:35:46','8888888888','教材编号8','教材名称8','教材类型8',8,8,8,'2023-03-05','教师工号8','教师姓名8','未支付');
/*!40000 ALTER TABLE `jiaoshilingshu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshituishu`
--

DROP TABLE IF EXISTS `jiaoshituishu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshituishu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jiaocaibianhao` varchar(200) DEFAULT NULL COMMENT '教材编号',
  `jiaocaimingcheng` varchar(200) NOT NULL COMMENT '教材名称',
  `jiaocaileixing` varchar(200) NOT NULL COMMENT '教材类型',
  `tuishushuliang` int(11) NOT NULL COMMENT '退书数量',
  `tuishuyuanyin` varchar(200) DEFAULT NULL COMMENT '退书原因',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='教师退书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshituishu`
--

LOCK TABLES `jiaoshituishu` WRITE;
/*!40000 ALTER TABLE `jiaoshituishu` DISABLE KEYS */;
INSERT INTO `jiaoshituishu` VALUES (91,'2023-03-05 02:35:46','1111111111','教材编号1','教材名称1','教材类型1',1,'退书原因1','2023-03-05 10:35:46','教师工号1','教师姓名1','是',''),(92,'2023-03-05 02:35:46','2222222222','教材编号2','教材名称2','教材类型2',2,'退书原因2','2023-03-05 10:35:46','教师工号2','教师姓名2','是',''),(93,'2023-03-05 02:35:46','3333333333','教材编号3','教材名称3','教材类型3',3,'退书原因3','2023-03-05 10:35:46','教师工号3','教师姓名3','是',''),(94,'2023-03-05 02:35:46','4444444444','教材编号4','教材名称4','教材类型4',4,'退书原因4','2023-03-05 10:35:46','教师工号4','教师姓名4','是',''),(95,'2023-03-05 02:35:46','5555555555','教材编号5','教材名称5','教材类型5',5,'退书原因5','2023-03-05 10:35:46','教师工号5','教师姓名5','是',''),(96,'2023-03-05 02:35:46','6666666666','教材编号6','教材名称6','教材类型6',6,'退书原因6','2023-03-05 10:35:46','教师工号6','教师姓名6','是',''),(97,'2023-03-05 02:35:46','7777777777','教材编号7','教材名称7','教材类型7',7,'退书原因7','2023-03-05 10:35:46','教师工号7','教师姓名7','是',''),(98,'2023-03-05 02:35:46','8888888888','教材编号8','教材名称8','教材类型8',8,'退书原因8','2023-03-05 10:35:46','教师工号8','教师姓名8','是','');
/*!40000 ALTER TABLE `jiaoshituishu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-05 02:35:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-03-05 02:35:46','学号1','123456','学生姓名1','upload/xuesheng_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2023-03-05 02:35:46','学号2','123456','学生姓名2','upload/xuesheng_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2023-03-05 02:35:46','学号3','123456','学生姓名3','upload/xuesheng_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2023-03-05 02:35:46','学号4','123456','学生姓名4','upload/xuesheng_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2023-03-05 02:35:46','学号5','123456','学生姓名5','upload/xuesheng_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2023-03-05 02:35:46','学号6','123456','学生姓名6','upload/xuesheng_touxiang6.jpg','男','13823888886','773890006@qq.com'),(17,'2023-03-05 02:35:46','学号7','123456','学生姓名7','upload/xuesheng_touxiang7.jpg','男','13823888887','773890007@qq.com'),(18,'2023-03-05 02:35:46','学号8','123456','学生姓名8','upload/xuesheng_touxiang8.jpg','男','13823888888','773890008@qq.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshenglingshu`
--

DROP TABLE IF EXISTS `xueshenglingshu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshenglingshu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jiaocaibianhao` varchar(200) DEFAULT NULL COMMENT '教材编号',
  `jiaocaimingcheng` varchar(200) NOT NULL COMMENT '教材名称',
  `jiaocaileixing` varchar(200) NOT NULL COMMENT '教材类型',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danjia` float NOT NULL COMMENT '单价',
  `heji` float DEFAULT NULL COMMENT '合计',
  `dingdanriqi` date DEFAULT NULL COMMENT '订单日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='学生领书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshenglingshu`
--

LOCK TABLES `xueshenglingshu` WRITE;
/*!40000 ALTER TABLE `xueshenglingshu` DISABLE KEYS */;
INSERT INTO `xueshenglingshu` VALUES (81,'2023-03-05 02:35:46','1111111111','教材编号1','教材名称1','教材类型1',1,1,1,'2023-03-05','学号1','学生姓名1','未支付'),(82,'2023-03-05 02:35:46','2222222222','教材编号2','教材名称2','教材类型2',2,2,2,'2023-03-05','学号2','学生姓名2','未支付'),(83,'2023-03-05 02:35:46','3333333333','教材编号3','教材名称3','教材类型3',3,3,3,'2023-03-05','学号3','学生姓名3','未支付'),(84,'2023-03-05 02:35:46','4444444444','教材编号4','教材名称4','教材类型4',4,4,4,'2023-03-05','学号4','学生姓名4','未支付'),(85,'2023-03-05 02:35:46','5555555555','教材编号5','教材名称5','教材类型5',5,5,5,'2023-03-05','学号5','学生姓名5','未支付'),(86,'2023-03-05 02:35:46','6666666666','教材编号6','教材名称6','教材类型6',6,6,6,'2023-03-05','学号6','学生姓名6','未支付'),(87,'2023-03-05 02:35:46','7777777777','教材编号7','教材名称7','教材类型7',7,7,7,'2023-03-05','学号7','学生姓名7','未支付'),(88,'2023-03-05 02:35:46','8888888888','教材编号8','教材名称8','教材类型8',8,8,8,'2023-03-05','学号8','学生姓名8','未支付');
/*!40000 ALTER TABLE `xueshenglingshu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengtuishu`
--

DROP TABLE IF EXISTS `xueshengtuishu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengtuishu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jiaocaibianhao` varchar(200) DEFAULT NULL COMMENT '教材编号',
  `jiaocaimingcheng` varchar(200) NOT NULL COMMENT '教材名称',
  `jiaocaileixing` varchar(200) NOT NULL COMMENT '教材类型',
  `tuishushuliang` int(11) NOT NULL COMMENT '退书数量',
  `tuishuyuanyin` varchar(200) DEFAULT NULL COMMENT '退书原因',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='学生退书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengtuishu`
--

LOCK TABLES `xueshengtuishu` WRITE;
/*!40000 ALTER TABLE `xueshengtuishu` DISABLE KEYS */;
INSERT INTO `xueshengtuishu` VALUES (101,'2023-03-05 02:35:46','1111111111','教材编号1','教材名称1','教材类型1',1,'退书原因1','2023-03-05 10:35:46','学号1','学生姓名1','是',''),(102,'2023-03-05 02:35:46','2222222222','教材编号2','教材名称2','教材类型2',2,'退书原因2','2023-03-05 10:35:46','学号2','学生姓名2','是',''),(103,'2023-03-05 02:35:46','3333333333','教材编号3','教材名称3','教材类型3',3,'退书原因3','2023-03-05 10:35:46','学号3','学生姓名3','是',''),(104,'2023-03-05 02:35:46','4444444444','教材编号4','教材名称4','教材类型4',4,'退书原因4','2023-03-05 10:35:46','学号4','学生姓名4','是',''),(105,'2023-03-05 02:35:46','5555555555','教材编号5','教材名称5','教材类型5',5,'退书原因5','2023-03-05 10:35:46','学号5','学生姓名5','是',''),(106,'2023-03-05 02:35:46','6666666666','教材编号6','教材名称6','教材类型6',6,'退书原因6','2023-03-05 10:35:46','学号6','学生姓名6','是',''),(107,'2023-03-05 02:35:46','7777777777','教材编号7','教材名称7','教材类型7',7,'退书原因7','2023-03-05 10:35:46','学号7','学生姓名7','是',''),(108,'2023-03-05 02:35:46','8888888888','教材编号8','教材名称8','教材类型8',8,'退书原因8','2023-03-05 10:35:46','学号8','学生姓名8','是','');
/*!40000 ALTER TABLE `xueshengtuishu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-06 10:21:27
