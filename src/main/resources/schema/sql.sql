/*
Navicat MySQL Data Transfer

Source Server         : change
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : toutiao

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-02-11 22:43:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`user_id`  int(11) NOT NULL ,
`entity_id`  int(11) NOT NULL ,
`entity_type`  int(11) NOT NULL ,
`created_date`  datetime NOT NULL ,
`status`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
INDEX `entity_index` (`entity_id`, `entity_type`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=35

;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES ('1', '这里是一个评论啊！0', '1', '1', '1', '2018-12-12 22:43:23', '0'), ('2', '这里是一个评论啊！1', '1', '1', '1', '2018-12-12 22:43:23', '0'), ('3', '这里是一个评论啊！2', '1', '1', '1', '2018-12-12 22:43:23', '0'), ('4', '这里是一个评论啊！0', '2', '2', '1', '2018-12-12 22:43:23', '0'), ('5', '这里是一个评论啊！1', '2', '2', '1', '2018-12-12 22:43:23', '0'), ('6', '这里是一个评论啊！2', '2', '2', '1', '2018-12-12 22:43:23', '0'), ('7', '这里是一个评论啊！0', '3', '3', '1', '2018-12-12 22:43:23', '0'), ('8', '这里是一个评论啊！1', '3', '3', '1', '2018-12-12 22:43:23', '0'), ('9', '这里是一个评论啊！2', '3', '3', '1', '2018-12-12 22:43:23', '0'), ('10', '这里是一个评论啊！0', '4', '4', '1', '2018-12-12 22:43:23', '0'), ('11', '这里是一个评论啊！1', '4', '4', '1', '2018-12-12 22:43:23', '0'), ('12', '这里是一个评论啊！2', '4', '4', '1', '2018-12-12 22:43:23', '0'), ('13', '这里是一个评论啊！0', '5', '5', '1', '2018-12-12 22:43:23', '0'), ('14', '这里是一个评论啊！1', '5', '5', '1', '2018-12-12 22:43:23', '0'), ('15', '这里是一个评论啊！2', '5', '5', '1', '2018-12-12 22:43:23', '0'), ('16', '这里是一个评论啊！0', '6', '6', '1', '2018-12-12 22:43:23', '0'), ('17', '这里是一个评论啊！1', '6', '6', '1', '2018-12-12 22:43:23', '0'), ('18', '这里是一个评论啊！2', '6', '6', '1', '2018-12-12 22:43:23', '0'), ('19', '这里是一个评论啊！0', '7', '7', '1', '2018-12-12 22:43:23', '0'), ('20', '这里是一个评论啊！1', '7', '7', '1', '2018-12-12 22:43:23', '0'), ('21', '这里是一个评论啊！2', '7', '7', '1', '2018-12-12 22:43:23', '0'), ('22', '这里是一个评论啊！0', '8', '8', '1', '2018-12-12 22:43:23', '0'), ('23', '这里是一个评论啊！1', '8', '8', '1', '2018-12-12 22:43:23', '0'), ('24', '这里是一个评论啊！2', '8', '8', '1', '2018-12-12 22:43:23', '0'), ('25', '这里是一个评论啊！0', '9', '9', '1', '2018-12-12 22:43:23', '0'), ('26', '这里是一个评论啊！1', '9', '9', '1', '2018-12-12 22:43:23', '0'), ('27', '这里是一个评论啊！2', '9', '9', '1', '2018-12-12 22:43:23', '0'), ('28', '这里是一个评论啊！0', '10', '10', '1', '2018-12-12 22:43:23', '0'), ('29', '这里是一个评论啊！1', '10', '10', '1', '2018-12-12 22:43:23', '0'), ('30', '这里是一个评论啊！2', '10', '10', '1', '2018-12-12 22:43:23', '0'), ('31', '这里是一个评论啊！0', '11', '11', '1', '2018-12-12 22:43:23', '0'), ('32', '这里是一个评论啊！1', '11', '11', '1', '2018-12-12 22:43:23', '0'), ('33', '这里是一个评论啊！2', '11', '11', '1', '2018-12-12 22:43:23', '0'), ('34', '幅度萨芬', '14', '15', '1', '2019-02-11 21:11:31', '0');
COMMIT;

-- ----------------------------
-- Table structure for login_ticket
-- ----------------------------
DROP TABLE IF EXISTS `login_ticket`;
CREATE TABLE `login_ticket` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`user_id`  int(11) NOT NULL ,
`ticket`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`expired`  datetime NOT NULL ,
`status`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`id`),
UNIQUE INDEX `ticket_UNIQUE` (`ticket`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=15

;

-- ----------------------------
-- Records of login_ticket
-- ----------------------------
BEGIN;
INSERT INTO `login_ticket` VALUES ('1', '1', 'TICKET1', '2018-12-12 22:43:23', '2'), ('2', '2', 'TICKET2', '2018-12-13 03:43:23', '2'), ('3', '3', 'TICKET3', '2018-12-13 08:43:23', '2'), ('4', '4', 'TICKET4', '2018-12-13 13:43:23', '2'), ('5', '5', 'TICKET5', '2018-12-13 18:43:23', '2'), ('6', '6', 'TICKET6', '2018-12-13 23:43:23', '2'), ('7', '7', 'TICKET7', '2018-12-14 04:43:23', '2'), ('8', '8', 'TICKET8', '2018-12-14 09:43:23', '2'), ('9', '9', 'TICKET9', '2018-12-14 14:43:23', '2'), ('10', '10', 'TICKET10', '2018-12-14 19:43:23', '2'), ('11', '11', 'TICKET11', '2018-12-15 00:43:23', '2'), ('12', '12', 'e0007c8fecc64902b2ebddb3d19e0b1d', '2018-12-17 20:46:07', '0'), ('13', '13', 'e8df21cafacb4eefa9d26139c11ffa04', '2019-01-22 21:02:36', '0'), ('14', '14', '94c883f45a29499797ebae1c93e5034f', '2019-02-12 21:09:15', '0');
COMMIT;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`from_id`  int(11) NULL DEFAULT NULL ,
`to_id`  int(11) NULL DEFAULT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`created_date`  datetime NULL DEFAULT NULL ,
`has_read`  int(11) NULL DEFAULT NULL ,
`conversation_id`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
INDEX `conversation_index` (`conversation_id`) USING BTREE ,
INDEX `created_date` (`created_date`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of message
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`title`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`link`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`image`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`like_count`  int(11) NOT NULL ,
`comment_count`  int(11) NOT NULL ,
`created_date`  datetime NOT NULL ,
`user_id`  int(11) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=16

;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES ('1', 'TITLE{0}', 'http://www.nowcoder.com/0.html', 'http://images.nowcoder.com/head/670m.png', '1', '0', '2018-12-12 22:43:23', '1'), ('2', 'TITLE{1}', 'http://www.nowcoder.com/1.html', 'http://images.nowcoder.com/head/487m.png', '2', '1', '2018-12-13 03:43:23', '2'), ('3', 'TITLE{2}', 'http://www.nowcoder.com/2.html', 'http://images.nowcoder.com/head/962m.png', '3', '2', '2018-12-13 08:43:23', '3'), ('4', 'TITLE{3}', 'http://www.nowcoder.com/3.html', 'http://images.nowcoder.com/head/18m.png', '4', '3', '2018-12-13 13:43:23', '4'), ('5', 'TITLE{4}', 'http://www.nowcoder.com/4.html', 'http://images.nowcoder.com/head/723m.png', '5', '4', '2018-12-13 18:43:23', '5'), ('6', 'TITLE{5}', 'http://www.nowcoder.com/5.html', 'http://images.nowcoder.com/head/982m.png', '6', '5', '2018-12-13 23:43:23', '6'), ('7', 'TITLE{6}', 'http://www.nowcoder.com/6.html', 'http://images.nowcoder.com/head/353m.png', '7', '6', '2018-12-14 04:43:23', '7'), ('8', 'TITLE{7}', 'http://www.nowcoder.com/7.html', 'http://images.nowcoder.com/head/76m.png', '8', '7', '2018-12-14 09:43:23', '8'), ('9', 'TITLE{8}', 'http://www.nowcoder.com/8.html', 'http://images.nowcoder.com/head/490m.png', '9', '8', '2018-12-14 14:43:23', '9'), ('10', 'TITLE{9}', 'http://www.nowcoder.com/9.html', 'http://images.nowcoder.com/head/835m.png', '10', '9', '2018-12-14 19:43:23', '10'), ('11', 'TITLE{10}', 'http://www.nowcoder.com/10.html', 'http://images.nowcoder.com/head/930m.png', '11', '10', '2018-12-15 00:43:23', '11'), ('12', '看好这个演员', 'http://image.baidu.com', 'http://pjkx5jay.bkt.clouddn.com/810ac8aaccbc4afb83430a644d3de2a1.png', '0', '0', '2018-12-16 20:55:01', '12'), ('13', '小姑娘演的不错，看好你', 'https://movie.douban.com/subject/27102569/', 'http://pjkx5jjay.bkt.clouddn.com/119bde3a8fa042948ac05ef235784e43.png', '0', '0', '2018-12-16 21:06:13', '12'), ('14', '794', '44621', 'http://www.zhouzhongping.cn/9ff2c8fc0cd74b34966fd06156059267.jpg', '0', '0', '2019-01-21 21:25:39', '13'), ('15', '我老婆张天爱', 'https://baike.baidu.com/item/%E5%BC%A0%E5%A4%A9%E7%88%B1/14081783?fr=aladdin', 'http://zhouzhongping.cn/2febaad78c0c4eee823666cd3d093c05.jpg', '0', '1', '2019-02-11 21:11:23', '14');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`password`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`salt`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`head_url`  varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `name` (`name`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=15

;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('2', 'USER1', 'newpassword', '', 'http://images.nowcoder.com/head/792t.png'), ('3', 'USER2', 'newpassword', '', 'http://images.nowcoder.com/head/243t.png'), ('4', 'USER3', 'newpassword', '', 'http://images.nowcoder.com/head/708t.png'), ('5', 'USER4', 'newpassword', '', 'http://images.nowcoder.com/head/133t.png'), ('6', 'USER5', 'newpassword', '', 'http://images.nowcoder.com/head/435t.png'), ('7', 'USER6', 'newpassword', '', 'http://images.nowcoder.com/head/386t.png'), ('8', 'USER7', 'newpassword', '', 'http://images.nowcoder.com/head/442t.png'), ('9', 'USER8', 'newpassword', '', 'http://images.nowcoder.com/head/721t.png'), ('10', 'USER9', 'newpassword', '', 'http://images.nowcoder.com/head/915t.png'), ('11', 'USER10', 'newpassword', '', 'http://images.nowcoder.com/head/219t.png'), ('12', 'zzp', '64A2AA0A4BE017A14D555BF80C5D304C', '2bb30', 'http://images.nowcoder.com/head/830t.png'), ('13', 'sa', 'B5A91148E6FC7144D79226176B7E5639', 'b4127', 'http://images.nowcoder.com/head/292t.png'), ('14', 'zhouzhongpingme', '39A0CA5D9DDA96ED44A0E07F9E53DF59', '84797', 'http://images.nowcoder.com/head/200t.png');
COMMIT;

-- ----------------------------
-- Auto increment value for comment
-- ----------------------------
ALTER TABLE `comment` AUTO_INCREMENT=35;

-- ----------------------------
-- Auto increment value for login_ticket
-- ----------------------------
ALTER TABLE `login_ticket` AUTO_INCREMENT=15;

-- ----------------------------
-- Auto increment value for message
-- ----------------------------
ALTER TABLE `message` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for news
-- ----------------------------
ALTER TABLE `news` AUTO_INCREMENT=16;

-- ----------------------------
-- Auto increment value for user
-- ----------------------------
ALTER TABLE `user` AUTO_INCREMENT=15;
