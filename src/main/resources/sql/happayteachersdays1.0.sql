/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云数据库
Source Server Version : 50626
Source Host           : 115.159.48.96:3306
Source Database       : fhadmin

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-09-11 23:31:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `happayteachersdays`
-- ----------------------------
DROP TABLE IF EXISTS `happayteachersdays`;
CREATE TABLE `happayteachersdays` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Content` varchar(500) DEFAULT '祝全国的老师，老师节快乐，老师您辛苦了！敬礼...',
  `Teachers` varchar(100) DEFAULT '全天下的老师',
  `Students` varchar(50) DEFAULT '学霸',
  `GoodPoints` bigint(20) DEFAULT '10',
  `IpAddress` varchar(50) DEFAULT NULL,
  `UserAgent` varchar(500) DEFAULT NULL COMMENT '127.0.0.1',
  `Schools` varchar(100) DEFAULT '社会大学',
  `DayType` int(11) DEFAULT NULL,
  `IsShow` int(11) DEFAULT '0',
  `ImagesPath` varchar(200) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `CreateUser` varchar(50) DEFAULT '学霸',
  `UpdateUser` varchar(50) DEFAULT '祝福老师',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of happayteachersdays
-- ----------------------------
INSERT INTO `happayteachersdays` VALUES ('1', '祝全国的老师，老师节快乐，老师您辛苦了！敬礼...', '全天下的老师', '学霸', '28', '127.0.0.1', 'xxx', '社会大学', null, '1', 'images/green1.jpg', '2016-09-11 14:13:43', '2016-09-11 14:13:43', '学霸', '祝福老师');
INSERT INTO `happayteachersdays` VALUES ('2', '祝全国的老师，老师节快乐，老师您辛苦了！敬礼...', '全天下的老师', '学霸', '31', null, null, '社会大学', null, '0', 'images/green1.jpg', '2016-09-10 18:27:41', '2016-09-11 20:18:51', '学霸', '祝福老师');
INSERT INTO `happayteachersdays` VALUES ('12', '开心.快乐.实现.梦想', '大家', '谱绿.暖心', '40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', null, null, '1', 'images/green1.jpg', '2016-09-11 14:16:28', '2016-09-11 14:16:28', null, null);
INSERT INTO `happayteachersdays` VALUES ('17', '开心一天，为：开心.快乐.实现.梦想，向前冲', '大家', '谱绿.暖心', '24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', null, null, '1', 'images/green1.jpg', '2016-09-11 14:12:53', '2016-09-11 14:12:53', null, null);
INSERT INTO `happayteachersdays` VALUES ('21', '开心.快乐.实现.梦想', '大家', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', null, null, '0', 'images/green1.jpg', '2016-09-11 18:06:19', '2016-09-11 18:06:19', null, null);
INSERT INTO `happayteachersdays` VALUES ('25', '祝全国的老师，老师节快乐，老师您辛苦了！敬礼...', '大家', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, '0', 'images/green1.jpg', '2016-09-11 20:17:26', '2016-09-11 20:17:26', null, null);
INSERT INTO `happayteachersdays` VALUES ('26', '开心.快乐.实现.梦想', '大家', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, null, 'images/green1.jpg', '2016-09-11 18:17:22', null, null, null);
INSERT INTO `happayteachersdays` VALUES ('27', '祝全国的老师，老师节快乐，老师您辛苦了！敬礼...', '大家', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, '0', 'images/green1.jpg', '2016-09-11 20:17:35', '2016-09-11 20:17:35', null, null);
INSERT INTO `happayteachersdays` VALUES ('28', '开心.快乐.实现.梦想', 'gj', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, null, 'images/green1.jpg', '2016-09-11 18:18:40', null, null, null);
INSERT INTO `happayteachersdays` VALUES ('29', '祝全国的老师，老师节快乐，老师您辛苦了！敬礼...', '大家', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, null, 'images/green1.jpg', '2016-09-11 20:16:53', '2016-09-11 20:16:53', null, null);
INSERT INTO `happayteachersdays` VALUES ('30', '开心.快乐.实现.梦想', '大家', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, null, 'images/green1.jpg', '2016-09-11 18:25:48', null, null, null);
INSERT INTO `happayteachersdays` VALUES ('31', '祝全国的老师，老师节快乐，老师您辛苦了！敬礼...', '大家', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, null, 'images/green1.jpg', '2016-09-11 20:16:49', '2016-09-11 20:16:49', null, null);
INSERT INTO `happayteachersdays` VALUES ('32', '开心.快乐.实现.梦想', '大家', '谱绿.暖心', '57', '116.226.67.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', null, null, '0', 'images/green1.jpg', '2016-09-11 18:40:17', '2016-09-11 18:40:43', null, null);
INSERT INTO `happayteachersdays` VALUES ('36', '旅途愉快。', '陈国娟', '谱绿.暖心', '8', '116.226.67.224', 'Mozilla/5.0 (Linux; Android 5.0.2; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.2 TBS/036558 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, '0', 'images/green1.jpg', '2016-09-11 20:13:43', '2016-09-11 20:18:06', null, null);
INSERT INTO `happayteachersdays` VALUES ('38', '开心.快乐.实现.梦想', '熊', '陈', '188', '36.63.89.250', 'Mozilla/5.0 (Linux; Android 5.1; OPPO R9tm Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile MQQBrowser/6.8 TBS/036814 Safari/537.36 MicroMessenger/6.3.25.861 NetType/WIFI Language/zh_CN', null, null, '0', 'images/green1.jpg', '2016-09-11 21:07:37', '2016-09-11 21:07:37', null, null);
INSERT INTO `happayteachersdays` VALUES ('39', '开心.快乐.实现.梦想.....', '大家', '谱绿.暖心', '1', '116.226.67.224', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-cn; vivo Y35A Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 Chrome/37.0.0.0 MQQBrowser/6.9 Mobile Safari/537.36', null, null, '0', 'images/green1.jpg', '2016-09-11 22:09:20', null, null, null);
