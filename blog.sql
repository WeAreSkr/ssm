/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-09-28 14:59:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');
INSERT INTO `admin` VALUES ('2', '11111', '1111');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sys_category_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `summary` mediumtext NOT NULL,
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_top` bit(1) NOT NULL DEFAULT b'0',
  `is_delete` bit(1) NOT NULL DEFAULT b'0',
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_artical` (`user_id`),
  KEY `fk_scategory` (`sys_category_id`),
  KEY `fc_category` (`category_id`),
  CONSTRAINT `fc_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_artical` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_scategory` FOREIGN KEY (`sys_category_id`) REFERENCES `sys_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '第一篇文章', '1', '1', '1', '这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用', '这是第一篇文章。。。XXX', '2013-10-23 15:57:07', '\0', '\0', '52');
INSERT INTO `article` VALUES ('2', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。', '2013-10-23 15:57:34', '\0', '\0', '6');
INSERT INTO `article` VALUES ('3', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。', '2013-10-23 15:57:47', '\0', '\0', '3');
INSERT INTO `article` VALUES ('4', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第3篇文章。。。', '2013-10-23 15:57:48', '\0', '\0', '1');
INSERT INTO `article` VALUES ('5', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第4篇文章。。。', '2013-10-23 15:57:49', '\0', '\0', '4');
INSERT INTO `article` VALUES ('6', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第5篇文章。。。', '2013-10-23 15:57:50', '\0', '\0', '2');
INSERT INTO `article` VALUES ('7', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第6篇文章。。。', '2013-10-23 15:57:51', '\0', '\0', '15');
INSERT INTO `article` VALUES ('8', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第7篇文章。。。', '2013-10-23 15:57:52', '\0', '\0', '57');
INSERT INTO `article` VALUES ('9', '2013年10月26日晚', '2', '2', '6', '2013年10月26日晚', '2013年10月26日晚', '2013-10-26 23:37:54', '\0', '\0', '8');
INSERT INTO `article` VALUES ('10', '2013年10月27日早', '2', '1', '12', '2013年10月27日早 - 继续写Jsp blog', '2013年10月27日早', '2013-10-28 20:00:04', '\0', '', '1');
INSERT INTO `article` VALUES ('11', '2013年10月27日早 - 2', '2', '1', '5', '2013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 2', '2013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 2', '2013-10-27 12:45:41', '\0', '', '24');
INSERT INTO `article` VALUES ('12', '2013年10月27日早 - 20', '1', '1', '2', '2013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 3', '2013年10月27日早 - 32013年10月27日早 - 3', '2013-10-28 15:21:19', '\0', '', '28');
INSERT INTO `article` VALUES ('13', 'ra叔', '2', '1', '4', 'ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔', 'ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔', '2013-10-28 09:28:37', '\0', '', '4');
INSERT INTO `article` VALUES ('14', '管理写的好烦', '1', '1', '3', '管理写的好烦管理写的好烦', '管理写的好烦管理写的好烦', '2013-10-28 16:03:17', '\0', '', '9');
INSERT INTO `article` VALUES ('15', '23', '2', '2', '12', '段落1\r\n段落2\r\n  段落3\r\n段落4', '123', '2013-10-28 21:00:09', '\0', '', '9');
INSERT INTO `article` VALUES ('16', '博客做的差不多了，还有几个功能点需要实现', '2', '2', '12', '今天29号了，还有几天就走了。项目也快做好了，又要工作了。SB学校不解释，WC', '今天29号了，还有几天就走了。项目也快做好了，又要工作了。', '2013-10-29 15:10:52', '\0', '', '5');
INSERT INTO `article` VALUES ('17', '这是chuan的文章', '5', '2', '14', '这是chuan的文章的摘要内容', '这是chuan的文章的摘要', '2013-10-30 12:20:16', '\0', '', '1');
INSERT INTO `article` VALUES ('18', '嵌入式实时OS', '1', '1', '8', '实时线程操作系统内部采用面向对象的方式设计，内建内核对象管理系统，能够访问/管理所有内核对象。内核对象包含了内核中绝大部分设施，而这些内核对象可 以是静态分配的静态对象，也可以是从系统内存堆中分配的动态对象。通过内核对象系统，RT-Thread可以做到不依赖于具体的内存分配方式，伸缩性得到 极大的加强。', '实时线程操作系统内部采用面向对象的方式设计，内建内核对象管理系统，能够访问/管理所有内核对象。内核对象包含了内核中绝大部分设施，而这些内核对象可 以是静态分配的静态对象，也可以是从系统内存堆中分配的动态对象。', '2013-11-02 14:57:35', '\0', '\0', '4');
INSERT INTO `article` VALUES ('19', 'Openresty', '9', '4', '16', '昨天学习了Yichun Zhang的Openresty，很nice的华人工程师。很优秀的开源项目\r\nOpenresty is a fast web server', '昨天学习了Yichun Zhang的Openresty，很nice的华人工程师。很优秀的开源项目', '2013-11-06 14:53:59', '\0', '\0', '4');
INSERT INTO `article` VALUES ('20', 'Spring第一讲', '1', '2', '8', '测试Spring技术', '测试Spring技术', '2014-05-17 15:21:05', '\0', '', '8');
INSERT INTO `article` VALUES ('21', 'Spring第2讲', '1', '4', '10', '测试第二讲', '测试第二讲', '2014-05-17 15:21:39', '\0', '\0', '8');
INSERT INTO `article` VALUES ('22', 'Spring第2讲', '1', '4', '10', '测试第二讲,再次测试', '测试第二讲', '2014-05-17 15:28:39', '\0', '', '6');
INSERT INTO `article` VALUES ('23', '第一篇文章', '1', '1', '3', '这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用，++++', '这是第一篇文章。。。', '2014-05-18 21:38:05', '\0', '', '5');
INSERT INTO `article` VALUES ('24', '第一篇文章', '1', '1', '3', '这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用，nonoo', '这是第一篇文章。。。', '2014-05-20 14:55:59', '\0', '\0', '6');
INSERT INTO `article` VALUES ('25', 'Spring第3讲', '1', '4', '21', '是否是舒服舒服是否是发输电佛挡杀佛随碟附送的发生的发三点', '今天测试一下如何', '2014-09-15 22:23:42', '\0', '\0', '16');
INSERT INTO `article` VALUES ('26', '是否是 ', '1', '4', '21', '随碟附送', '豕分蛇断发', '2014-05-21 19:55:04', '\0', '\0', '8');
INSERT INTO `article` VALUES ('27', 'ssh2测试', '1', '1', '2', '123456', '测试', '2014-09-20 22:00:50', '\0', '\0', '2');
INSERT INTO `article` VALUES ('28', 'xxxx1', '1', '2', '3', 'xxx1', 'xxx1', '2014-09-20 22:06:29', '\0', '\0', '2');
INSERT INTO `article` VALUES ('29', 'xxxx', '1', '6', '26', 'xxxxxxxxxxxxxxxxxxxxxxxx', 'xxxx', '2015-11-16 11:26:32', '\0', '\0', '14');

-- ----------------------------
-- Table structure for article_copy
-- ----------------------------
DROP TABLE IF EXISTS `article_copy`;
CREATE TABLE `article_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `sys_category_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `summary` mediumtext NOT NULL,
  `publish_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_top` bit(1) NOT NULL DEFAULT b'0',
  `is_delete` bit(1) NOT NULL DEFAULT b'0',
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_artical` (`user_id`),
  KEY `fk_scategory` (`sys_category_id`),
  KEY `fc_category` (`category_id`),
  CONSTRAINT `article_copy_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `article_copy_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `article_copy_ibfk_3` FOREIGN KEY (`sys_category_id`) REFERENCES `sys_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_copy
-- ----------------------------
INSERT INTO `article_copy` VALUES ('1', '第一篇文章', '1', '1', '1', '这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用', '这是第一篇文章。。。XXX', '2013-10-23 15:57:07', '\0', '\0', '52');
INSERT INTO `article_copy` VALUES ('2', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。这是第1篇文章。。。', '2013-10-23 15:57:34', '\0', '\0', '6');
INSERT INTO `article_copy` VALUES ('3', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。这是第2篇文章。。。', '2013-10-23 15:57:47', '\0', '\0', '3');
INSERT INTO `article_copy` VALUES ('4', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第3篇文章。。。', '2013-10-23 15:57:48', '\0', '\0', '1');
INSERT INTO `article_copy` VALUES ('5', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第4篇文章。。。', '2013-10-23 15:57:49', '\0', '\0', '4');
INSERT INTO `article_copy` VALUES ('6', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第5篇文章。。。', '2013-10-23 15:57:50', '\0', '\0', '2');
INSERT INTO `article_copy` VALUES ('7', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第6篇文章。。。', '2013-10-23 15:57:51', '\0', '\0', '15');
INSERT INTO `article_copy` VALUES ('8', '第一篇文章', '2', '1', '1', '这是第一篇文章的内容，测试使用', '这是第7篇文章。。。', '2013-10-23 15:57:52', '\0', '\0', '57');
INSERT INTO `article_copy` VALUES ('9', '2013年10月26日晚', '2', '2', '6', '2013年10月26日晚', '2013年10月26日晚', '2013-10-26 23:37:54', '\0', '\0', '8');
INSERT INTO `article_copy` VALUES ('10', '2013年10月27日早', '2', '1', '12', '2013年10月27日早 - 继续写Jsp blog', '2013年10月27日早', '2013-10-28 20:00:04', '\0', '', '1');
INSERT INTO `article_copy` VALUES ('11', '2013年10月27日早 - 2', '2', '1', '5', '2013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 2', '2013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 22013年10月27日早 - 2', '2013-10-27 12:45:41', '\0', '', '24');
INSERT INTO `article_copy` VALUES ('12', '2013年10月27日早 - 20', '1', '1', '2', '2013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 32013年10月27日早 - 3', '2013年10月27日早 - 32013年10月27日早 - 3', '2013-10-28 15:21:19', '\0', '', '28');
INSERT INTO `article_copy` VALUES ('13', 'ra叔', '2', '1', '4', 'ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔', 'ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔ra叔', '2013-10-28 09:28:37', '\0', '', '4');
INSERT INTO `article_copy` VALUES ('14', '管理写的好烦', '1', '1', '3', '管理写的好烦管理写的好烦', '管理写的好烦管理写的好烦', '2013-10-28 16:03:17', '\0', '', '9');
INSERT INTO `article_copy` VALUES ('15', '23', '2', '2', '12', '段落1\r\n段落2\r\n  段落3\r\n段落4', '123', '2013-10-28 21:00:09', '\0', '', '9');
INSERT INTO `article_copy` VALUES ('16', '博客做的差不多了，还有几个功能点需要实现', '2', '2', '12', '今天29号了，还有几天就走了。项目也快做好了，又要工作了。SB学校不解释，WC', '今天29号了，还有几天就走了。项目也快做好了，又要工作了。', '2013-10-29 15:10:52', '\0', '', '5');
INSERT INTO `article_copy` VALUES ('17', '这是chuan的文章', '5', '2', '14', '这是chuan的文章的摘要内容', '这是chuan的文章的摘要', '2013-10-30 12:20:16', '\0', '', '1');
INSERT INTO `article_copy` VALUES ('18', '嵌入式实时OS', '1', '1', '8', '实时线程操作系统内部采用面向对象的方式设计，内建内核对象管理系统，能够访问/管理所有内核对象。内核对象包含了内核中绝大部分设施，而这些内核对象可 以是静态分配的静态对象，也可以是从系统内存堆中分配的动态对象。通过内核对象系统，RT-Thread可以做到不依赖于具体的内存分配方式，伸缩性得到 极大的加强。', '实时线程操作系统内部采用面向对象的方式设计，内建内核对象管理系统，能够访问/管理所有内核对象。内核对象包含了内核中绝大部分设施，而这些内核对象可 以是静态分配的静态对象，也可以是从系统内存堆中分配的动态对象。', '2013-11-02 14:57:35', '\0', '\0', '4');
INSERT INTO `article_copy` VALUES ('19', 'Openresty', '9', '4', '16', '昨天学习了Yichun Zhang的Openresty，很nice的华人工程师。很优秀的开源项目\r\nOpenresty is a fast web server', '昨天学习了Yichun Zhang的Openresty，很nice的华人工程师。很优秀的开源项目', '2013-11-06 14:53:59', '\0', '\0', '4');
INSERT INTO `article_copy` VALUES ('20', 'Spring第一讲', '1', '2', '8', '测试Spring技术', '测试Spring技术', '2014-05-17 15:21:05', '\0', '', '8');
INSERT INTO `article_copy` VALUES ('21', 'Spring第2讲', '1', '4', '10', '测试第二讲', '测试第二讲', '2014-05-17 15:21:39', '\0', '\0', '8');
INSERT INTO `article_copy` VALUES ('22', 'Spring第2讲', '1', '4', '10', '测试第二讲,再次测试', '测试第二讲', '2014-05-17 15:28:39', '\0', '', '6');
INSERT INTO `article_copy` VALUES ('23', '第一篇文章', '1', '1', '3', '这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用，++++', '这是第一篇文章。。。', '2014-05-18 21:38:05', '\0', '', '5');
INSERT INTO `article_copy` VALUES ('24', '第一篇文章', '1', '1', '3', '这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用这是第一篇文章的内容，测试使用，nonoo', '这是第一篇文章。。。', '2014-05-20 14:55:59', '\0', '\0', '6');
INSERT INTO `article_copy` VALUES ('25', 'Spring第3讲', '1', '4', '21', '是否是舒服舒服是否是发输电佛挡杀佛随碟附送的发生的发三点', '今天测试一下如何', '2014-09-15 22:23:42', '\0', '\0', '16');
INSERT INTO `article_copy` VALUES ('26', '是否是 ', '1', '4', '21', '随碟附送', '豕分蛇断发', '2014-05-21 19:55:04', '\0', '\0', '8');
INSERT INTO `article_copy` VALUES ('27', 'ssh2测试', '1', '1', '2', '123456', '测试', '2014-09-20 22:00:50', '\0', '\0', '2');
INSERT INTO `article_copy` VALUES ('28', 'xxxx1', '1', '2', '3', 'xxx1', 'xxx1', '2014-09-20 22:06:29', '\0', '\0', '2');
INSERT INTO `article_copy` VALUES ('29', 'xxxx', '1', '6', '26', 'xxxxxxxxxxxxxxxxxxxxxxxx', 'xxxx', '2015-11-16 11:26:32', '\0', '\0', '14');

-- ----------------------------
-- Table structure for blog_info
-- ----------------------------
DROP TABLE IF EXISTS `blog_info`;
CREATE TABLE `blog_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_name` varchar(128) NOT NULL DEFAULT '0',
  `description` text,
  `annoucement` mediumtext,
  PRIMARY KEY (`id`),
  KEY `fk_bloginfo` (`user_id`),
  CONSTRAINT `fk_bloginfo` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_info
-- ----------------------------
INSERT INTO `blog_info` VALUES ('7', '1', '博客名称', '博客描述', '这是我的个人技术博客。欢迎光临！xxx');
INSERT INTO `blog_info` VALUES ('8', '2', '宦传建', '这是我的个人技术博客', '这是我的个人技术博客');
INSERT INTO `blog_info` VALUES ('9', '3', '云风的Blog', '—— 思绪来的快，走的也快。偶尔在这里停留', '近期由于事务繁忙，博客不能及时更新。希望各位读者不要见谅哈');
INSERT INTO `blog_info` VALUES ('12', '4', '专注于Linux x86_64平台的高性能web服务器', '—— 思绪来的快，走的也快。偶尔在这里停留', '专注于Linux x86_64平台的高性能web服务器');
INSERT INTO `blog_info` VALUES ('13', '5', 'chuan的个人博客', '这是我的技术博客', '最近要休假了');
INSERT INTO `blog_info` VALUES ('14', '9', 'test的博客', 'test的博客描述', 'test今天注册了该博客');
INSERT INTO `blog_info` VALUES ('15', '10', 'starlee2008', 'Servlet技术博客', '欢迎来到我的博客，请多多捧场');
INSERT INTO `blog_info` VALUES ('16', '11', 'starlee2008', 'JSP技术博客', '欢迎大家光临');
INSERT INTO `blog_info` VALUES ('17', '15', '博客名称', '博客描述', '这是我的个人技术博客。欢迎光临！xxx');
INSERT INTO `blog_info` VALUES ('18', '15', '博客名称', '博客描述', '这是我的个人技术博客。欢迎光临！xxx');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(64) NOT NULL DEFAULT '0',
  `articals` int(11) NOT NULL DEFAULT '0',
  `is_delete` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fk_category` (`user_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '1', '网络', '123', '');
INSERT INTO `category` VALUES ('2', '1', '嵌入式技术', '123', '');
INSERT INTO `category` VALUES ('3', '1', 'Nodejs', '213', '\0');
INSERT INTO `category` VALUES ('4', '2', '数据库原理', '213', '');
INSERT INTO `category` VALUES ('5', '2', '大数据', '213', '');
INSERT INTO `category` VALUES ('6', '2', '微内核', '213', '');
INSERT INTO `category` VALUES ('8', '1', '数据库技术', '0', '\0');
INSERT INTO `category` VALUES ('9', '2', '嵌入式', '0', '\0');
INSERT INTO `category` VALUES ('10', '1', 'web socket', '0', '');
INSERT INTO `category` VALUES ('11', '2', 'Nginx', '0', '\0');
INSERT INTO `category` VALUES ('12', '2', 'MySQL', '0', '\0');
INSERT INTO `category` VALUES ('13', '5', '无分类', '0', '\0');
INSERT INTO `category` VALUES ('14', '5', 'Nodejs', '0', '\0');
INSERT INTO `category` VALUES ('15', '5', '网络', '0', '\0');
INSERT INTO `category` VALUES ('16', '9', '无分类', '0', '\0');
INSERT INTO `category` VALUES ('17', '10', '无分类', '0', '\0');
INSERT INTO `category` VALUES ('18', '10', 'JSP博客', '0', '\0');
INSERT INTO `category` VALUES ('19', '1', 'JSPServlet技术+', '0', '\0');
INSERT INTO `category` VALUES ('20', '1', 'Springmvc技术', '0', '');
INSERT INTO `category` VALUES ('21', '1', 'nodejs技术', '0', '\0');
INSERT INTO `category` VALUES ('22', '1', 'test', '0', '');
INSERT INTO `category` VALUES ('23', '11', '无分类', '0', '\0');
INSERT INTO `category` VALUES ('24', '1', 'test', '0', '\0');
INSERT INTO `category` VALUES ('26', '1', '网络技术2', '0', '\0');
INSERT INTO `category` VALUES ('27', '15', '无分类', '1', '\0');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `artical_id` int(11) NOT NULL DEFAULT '0',
  `content` varchar(128) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fk_comment1` (`user_id`),
  KEY `fk_comment2` (`artical_id`),
  CONSTRAINT `fk_comment1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_comment2` FOREIGN KEY (`artical_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2', '2', '自己评论自己', '2013-10-25 16:19:51', '\0');
INSERT INTO `comment` VALUES ('2', '2', '3', '我又自己评论自己', '2013-10-25 16:25:22', '\0');
INSERT INTO `comment` VALUES ('3', '1', '1', '我是谁', '2013-10-25 16:27:44', '');
INSERT INTO `comment` VALUES ('4', '1', '1', '再评论一次', '2013-10-25 16:28:34', '');
INSERT INTO `comment` VALUES ('5', '1', '1', '评论来了，test', '2013-10-25 21:36:32', '\0');
INSERT INTO `comment` VALUES ('6', '1', '1', '继续评论之', '2013-10-25 21:44:26', '\0');
INSERT INTO `comment` VALUES ('7', '1', '1', '继续评论之', '2013-10-25 21:44:30', '\0');
INSERT INTO `comment` VALUES ('8', '2', '4', 'comment test', '2013-10-25 21:50:27', '');
INSERT INTO `comment` VALUES ('9', '2', '6', 'comment test', '2013-10-25 21:51:41', '\0');
INSERT INTO `comment` VALUES ('10', '2', '6', 'hello world', '2013-10-25 21:51:59', '\0');
INSERT INTO `comment` VALUES ('11', '1', '7', '这是huanzh的评论', '2013-10-25 22:49:08', '\0');
INSERT INTO `comment` VALUES ('12', '2', '1', '我和青哥打LOL', '2013-10-26 15:58:16', '\0');
INSERT INTO `comment` VALUES ('13', '2', '6', '西至西', '2013-10-26 16:46:19', '\0');
INSERT INTO `comment` VALUES ('14', '2', '11', '评论一发', '2013-10-27 11:05:45', '');
INSERT INTO `comment` VALUES ('15', '2', '10', '10月28日评论', '2013-10-28 09:30:14', '');
INSERT INTO `comment` VALUES ('16', '1', '12', '歪子来了', '2013-10-28 15:21:04', '');
INSERT INTO `comment` VALUES ('17', '2', '10', 'comment  test', '2013-10-28 19:45:19', '');
INSERT INTO `comment` VALUES ('18', '1', '10', '评论一发', '2013-10-28 20:46:47', '\0');
INSERT INTO `comment` VALUES ('19', '1', '14', 'etst', '2013-10-29 19:24:29', '');
INSERT INTO `comment` VALUES ('20', '5', '17', '司副队长', '2013-10-30 12:25:13', '');
INSERT INTO `comment` VALUES ('21', '1', '8', '测试一下', '2014-05-14 21:51:53', '\0');
INSERT INTO `comment` VALUES ('22', '1', '8', '再次测试', '2014-05-14 21:52:05', '\0');
INSERT INTO `comment` VALUES ('23', '1', '18', '测试一下', '2014-05-15 11:52:15', '');
INSERT INTO `comment` VALUES ('24', '1', '9', '评论测试', '2014-05-15 19:32:19', '\0');
INSERT INTO `comment` VALUES ('25', '1', '19', '测试一下', '2014-05-18 21:28:22', '\0');
INSERT INTO `comment` VALUES ('26', '1', '18', '测试', '2014-05-21 19:50:55', '\0');
INSERT INTO `comment` VALUES ('27', '1', '26', '测试', '2014-05-21 20:14:25', '\0');
INSERT INTO `comment` VALUES ('28', '1', '25', '测试', '2014-09-16 00:24:00', '\0');
INSERT INTO `comment` VALUES ('29', '1', '29', 'xxxhhhh', '2015-11-17 09:57:25', '\0');
INSERT INTO `comment` VALUES ('30', '1', '19', 'xxx', '2017-11-27 14:18:26', '\0');

-- ----------------------------
-- Table structure for counter
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO `counter` VALUES ('1', '115');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(64) NOT NULL DEFAULT '0',
  `last_name` varchar(64) NOT NULL DEFAULT '0',
  `gender` bit(1) NOT NULL DEFAULT b'0',
  `telephone` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_profile` (`id`) USING BTREE,
  KEY `fk_profile` (`user_id`),
  CONSTRAINT `fk_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('8', '1', '王', '123', '\0', '18551702658');
INSERT INTO `profile` VALUES ('9', '2', '吴', '成', '\0', '12345678');
INSERT INTO `profile` VALUES ('10', '3', '王', '成', '', '12345678');
INSERT INTO `profile` VALUES ('11', '19', 'test_name', 'test_last_name', '', '12345');
INSERT INTO `profile` VALUES ('12', '19', 'test_name', 'test_last_name', '', '123456');
INSERT INTO `profile` VALUES ('13', '19', 'test_name', 'test_last_name', '', '123456');
INSERT INTO `profile` VALUES ('14', '19', 'test_name', 'test_last_name', '', '123456');
INSERT INTO `profile` VALUES ('15', '19', 'test_name', 'test_last_name', '', '1234567');
INSERT INTO `profile` VALUES ('16', '19', 'test_name1', 'test_last_name', '', '1234567');
INSERT INTO `profile` VALUES ('17', '26', '111', '111', '', '111');
INSERT INTO `profile` VALUES ('18', '19', 'test_name1', 'test_last_name', '', '12345671');
INSERT INTO `profile` VALUES ('19', '19', '刘', '柏麟', '', '12345671');
INSERT INTO `profile` VALUES ('20', '19', '刘', '柏麟', '', '12345671');
INSERT INTO `profile` VALUES ('21', '19', '刘', '柏麟', '', '12345671');

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) NOT NULL DEFAULT '0',
  `articals` int(11) DEFAULT '0',
  `is_delete` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('1', 'struts2', '120', '\0');
INSERT INTO `sys_category` VALUES ('2', 'Spring框架', '345', '\0');
INSERT INTO `sys_category` VALUES ('3', '无分类', '0', '\0');
INSERT INTO `sys_category` VALUES ('4', 'lua', '0', '\0');
INSERT INTO `sys_category` VALUES ('5', 'hibernate', '1', '\0');
INSERT INTO `sys_category` VALUES ('6', 'jquery', '1', '\0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL DEFAULT '0',
  `email` varchar(32) NOT NULL DEFAULT '0',
  `is_applied` bit(1) NOT NULL DEFAULT b'0',
  `is_delete` bit(1) NOT NULL DEFAULT b'0',
  `is_profile` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `index_user` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1303996779@qq.com', '', '\0', '');
INSERT INTO `user` VALUES ('2', 'uname1', '123', 'admin@chinadota2.com', '', '\0', '');
INSERT INTO `user` VALUES ('3', 'huanchuanjian', '123', 'chuanjian.huan@wbkit.com', '', '\0', '');
INSERT INTO `user` VALUES ('4', 'huan', '123', 'xunhua.zhang@wbkit.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('5', 'chuan', '123', 'chuan@chuan.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('6', 'liulu', '123', 'liulu@qq.com', '\0', '\0', '\0');
INSERT INTO `user` VALUES ('7', 'hello', '123', 'hello@qq.com', '\0', '\0', '\0');
INSERT INTO `user` VALUES ('8', 'world', '123', 'world1@qq.com', '\0', '\0', '\0');
INSERT INTO `user` VALUES ('9', 'test', 'test', 'test@test.com', '', '\0', '');
INSERT INTO `user` VALUES ('10', 'starlee2008', 'starlee', 'starlee2008@163.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('11', 'starlee1999', 'l12345678', 'starlee2008@126.com', '', '', '\0');
INSERT INTO `user` VALUES ('15', 'admin2008', '123456', 'starlee2008@yeah.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('18', 'helloxxx', '123456', 'admin@yeah.net', '\0', '\0', '\0');
INSERT INTO `user` VALUES ('19', '111', '111', '111', '', '\0', '\0');
INSERT INTO `user` VALUES ('23', 'admin', '111', '111', '', '\0', '\0');
INSERT INTO `user` VALUES ('24', '111222', '111', '111', '', '\0', '\0');
INSERT INTO `user` VALUES ('25', 'penguin', '123', 'liubailnprivate@163.com', '', '\0', '\0');
INSERT INTO `user` VALUES ('26', 'liubailin', '123', 'liubailnprivate@163.com', '', '\0', '\0');

-- ----------------------------
-- View structure for ucomment
-- ----------------------------
DROP VIEW IF EXISTS `ucomment`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ucomment` AS select `c`.`id` AS `cid`,`c`.`user_id` AS `cuid`,`c`.`artical_id` AS `artical_id`,`c`.`content` AS `ccontent`,`c`.`time` AS `ctime`,`c`.`is_delete` AS `cdelete`,`u`.`id` AS `uid`,`u`.`username` AS `username`,`u`.`password` AS `password`,`u`.`email` AS `email`,`u`.`is_applied` AS `is_applied`,`u`.`is_delete` AS `udelete`,`u`.`is_profile` AS `is_profile`,`a`.`id` AS `aid`,`a`.`title` AS `title`,`a`.`user_id` AS `user_id`,`a`.`sys_category_id` AS `sys_category_id`,`a`.`category_id` AS `category_id`,`a`.`content` AS `acontent`,`a`.`summary` AS `summary`,`a`.`publish_time` AS `atime`,`a`.`is_top` AS `is_top`,`a`.`is_delete` AS `is_delete` from ((`comment` `c` join `user` `u`) join `article` `a`) where ((`c`.`is_delete` = 0) and (`u`.`id` = `c`.`user_id`) and (`a`.`id` = `c`.`artical_id`)) ;
