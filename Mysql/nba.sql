/*
 Navicat MySQL Data Transfer

 Source Server         : JavaWeb
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : nba

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 26/09/2020 10:42:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin` int(10) NOT NULL DEFAULT 0 COMMENT '权限，0为用户，1为管理员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, '施耐庵', '666', 1);
INSERT INTO `login` VALUES (3, '高子怡', 'gao', 0);
INSERT INTO `login` VALUES (4, '高子', '1', 0);
INSERT INTO `login` VALUES (5, 'kong', '1', 0);
INSERT INTO `login` VALUES (16, 'xiang', '1', 0);
INSERT INTO `login` VALUES (17, 'xiang', 'xiang', 0);
INSERT INTO `login` VALUES (18, 'qq', 'qq', 0);
INSERT INTO `login` VALUES (19, '0000', '0000', 0);
INSERT INTO `login` VALUES (20, '00000', '00000', 0);
INSERT INTO `login` VALUES (21, '111', '111', 0);
INSERT INTO `login` VALUES (22, '1111', '1111', 0);
INSERT INTO `login` VALUES (23, '222', '222', 0);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `xing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓',
  `ming` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名',
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '位置',
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身高',
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '体重',
  `id` int(10) DEFAULT NULL COMMENT '球号',
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生日',
  `exe` int(10) DEFAULT NULL COMMENT '经验',
  `before` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '进入NBA之前',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '国籍',
  `num` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('img/01.png', 'P.J.', '塔克', '前锋', '1米96', '111,1公斤', 17, '1985-05-05', 8, 'Texas/United States', '美国', 1);
INSERT INTO `message` VALUES ('img/01.png', '克里斯', '克莱蒙斯', '后卫', '1米75', '81,6公斤', 3, '1997-07-23', 0, 'Campbell University/United States', '美国', 2);
INSERT INTO `message` VALUES ('img/01.png', '大卫', '努瓦巴', '后卫-前锋', '1米96', '99,3公斤', 0, '1993-01-14', 3, 'Cal Poly-Obispo/United States', '美国', 3);
INSERT INTO `message` VALUES ('img/01.png', '布鲁诺', '卡波克洛', '前锋', '2米06', '98,9公斤', 5, '1995-09-21', 5, 'Brazil', '巴西', 4);
INSERT INTO `message` VALUES ('img/01.png', '德玛雷', '卡罗尔', '前锋', '1米98', '97,5公斤', 9, '1986-07-27', 10, 'Missouri/United States', '美国', 5);
INSERT INTO `message` VALUES ('img/01.png', '拉塞尔', '威斯布鲁克', '后卫', '1米90', '90,7公斤', 0, '1988-11-12', 11, 'UCLA/United States', '美国', 6);
INSERT INTO `message` VALUES ('img/01.png', '萨波', '塞弗罗萨', '前锋-后卫', '1米98', '97,5公斤', 18, '1984-05-02', 13, 'Switzerland', '瑞士', 7);
INSERT INTO `message` VALUES ('img/01.png', '詹姆斯', '哈登', '后卫', '1米96', '99,8公斤', 13, '1989-08-26', 10, 'Arizona State/United States', '美国', 8);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 9);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 10);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 11);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 12);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 13);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 14);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 15);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 16);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 17);
INSERT INTO `message` VALUES ('img/01.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kansas/United States', NULL, 18);

-- ----------------------------
-- Table structure for process
-- ----------------------------
DROP TABLE IF EXISTS `process`;
CREATE TABLE `process`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日期',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '时间',
  `opponent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对手',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '结果',
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '比分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of process
-- ----------------------------
INSERT INTO `process` VALUES (1, '08月23日', '06:00', '雷霆', '负', '107-119');
INSERT INTO `process` VALUES (2, '08月25日', '04:00', '雷霆', '负', '114-117');
INSERT INTO `process` VALUES (3, '08月30日', '06:30', '雷霆', '胜', '114-80');
INSERT INTO `process` VALUES (4, '09月01日', '09:00', '雷霆', '负', '100-104');
INSERT INTO `process` VALUES (5, '09月03日', '09:00', '雷霆', '胜', '104-102');
INSERT INTO `process` VALUES (6, '09月05日', '09:00', '湖人', '胜', '112-97');
INSERT INTO `process` VALUES (7, '09月07日', '08:30', '湖人', '负', '109-117');
INSERT INTO `process` VALUES (8, '09月09日', '09:00', '湖人', '负', '102-112');
INSERT INTO `process` VALUES (9, '09月11日', '07:00', '湖人', '负', '100-110');
INSERT INTO `process` VALUES (10, '09月13日', '08:00', '湖人', '负', '96-119');
INSERT INTO `process` VALUES (11, '11月2日', '7:00', '篮网', '负', '116-123');
INSERT INTO `process` VALUES (12, '11月4日', '7:00', '热火', '负', '100-129');
INSERT INTO `process` VALUES (13, '11月5日', '9:00', '灰熊', '胜', '107-100');
INSERT INTO `process` VALUES (14, '11月6日', '9:00', '灰熊', '负', '000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '称昵',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真名',
  `sex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '及时雨', '宋江', '男', '10086', '山东省');
INSERT INTO `user` VALUES (2, '玉麒麟', '卢俊义', '男', '10010', '山东省');
INSERT INTO `user` VALUES (3, '智多星', '吴用', '男', '12315', '山东省');
INSERT INTO `user` VALUES (5, '大刀', '关胜', '男', '123456', '山东省');
INSERT INTO `user` VALUES (6, '小李广', '关胜', '女', '12', '山东省');

SET FOREIGN_KEY_CHECKS = 1;
