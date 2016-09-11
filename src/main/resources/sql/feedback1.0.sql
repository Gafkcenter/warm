/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云数据库
Source Server Version : 50626
Source Host           : 115.159.48.96:3306
Source Database       : fhadmin

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-09-11 23:31:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Category` varchar(20) DEFAULT NULL COMMENT '目录分类',
  `Content` varchar(500) DEFAULT NULL,
  `ResponseContent` varchar(200) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `WeChat` varchar(50) DEFAULT NULL,
  `WeQQ` varchar(20) DEFAULT NULL,
  `Taobao` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `IpAddress` varchar(50) DEFAULT NULL,
  `UserAgent` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ResponseTime` datetime DEFAULT NULL,
  `UpdateUser` varchar(20) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `FeedBackUser` varchar(20) DEFAULT NULL,
  `IsShow` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '', '开心.快乐.实现.梦想', null, '', '', '', '', '', '', null, null, '2016-09-11 15:53:41', null, null, null, '', '1');
INSERT INTO `feedback` VALUES ('2', '版面', '开心.快乐.实现.梦想', null, '不顺眼', 'pu619CC', '42760305', '8133064619', '18859986191', '安徽安庆宿松县', null, null, '2016-09-11 15:56:44', null, null, null, '熊先生', '1');
INSERT INTO `feedback` VALUES ('3', '版面', '幽幽xxxx 开心.快乐.实现.梦想', null, '不顺眼', '圧', '对方答复', '有志者事竟成地', '对方答复', '对方答复', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 16:05:09', null, null, null, '陈先生', '1');
INSERT INTO `feedback` VALUES ('4', '版面', '梦想', null, '不顺眼', 'pu619CC', '42760305', '18133064619', '18859986191', '对方答复', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 16:17:06', null, null, null, '陈先生', '1');
INSERT INTO `feedback` VALUES ('5', '版面', '梦想', null, '不顺眼', 'pu619CC', '42760305', '18133064619', '18859986191', '对方答复', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 16:20:51', null, null, null, '陈先生', '1');
INSERT INTO `feedback` VALUES ('6', '版面', '梦想', null, '不顺眼', 'pu619CC', '42760305', '18133064619', '18859986191', '对方答复', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 16:21:46', null, null, null, '陈先生', '1');
INSERT INTO `feedback` VALUES ('7', '版面', '开心.快乐.实现.梦想', null, '', '震', '圧', '对方答复', '圧', '对方答复', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 16:30:26', null, null, null, '对方答复', '1');
INSERT INTO `feedback` VALUES ('8', '版面', '开心.快乐.实现.梦想', null, '不顺眼', '震', '圧', '对方答复', '圧', '对方答复', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 16:36:53', null, null, null, '对方答复', '1');
INSERT INTO `feedback` VALUES ('9', 'dfd ', '开心.快乐.实现.梦想', null, 'dfdf', 'dfdf', 'dfdf', 'fdf', 'dfd', 'dfdf', '116.226.67.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 17:09:29', null, null, null, 'dfd', '1');
INSERT INTO `feedback` VALUES ('10', '版面上线第二条', '开心.快乐.实现.梦想', null, '版面上线第二条', 'pu619CC', '42760305', '18133064619', '18859986191', '安徽安庆宿松县', '116.226.67.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 17:10:42', null, null, null, '陈先生', '1');
INSERT INTO `feedback` VALUES ('11', '版面上线第二条', '开心.快乐.实现.梦想', null, '版面上线第二条', 'pu619CC', '42760305', '18133064619', '18859986191', '安徽安庆宿松县', '116.226.67.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', '2016-09-11 17:13:47', null, null, null, '陈先生', '1');
INSERT INTO `feedback` VALUES ('12', '', '开心.快乐.实现.梦想', null, '', '', '', '', '', '', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', '2016-09-11 18:19:04', null, null, null, '', '1');
