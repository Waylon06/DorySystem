/*
 Navicat Premium Data Transfer

 Source Server         : Waylon
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : dorysystem

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 12/11/2022 17:51:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(0) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identfy` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (0, '潘仲辰', '0', 0);
INSERT INTO `account` VALUES (100001, '学生', '1', 1);
INSERT INTO `account` VALUES (100002, '赵五', '1', 1);
INSERT INTO `account` VALUES (100003, 'waylon', '1', 1);
INSERT INTO `account` VALUES (200001, '老师', '2', 2);
INSERT INTO `account` VALUES (300001, '管理', '3', 3);
INSERT INTO `account` VALUES (400001, '助理', '4', 4);

-- ----------------------------
-- Table structure for dorimitory
-- ----------------------------
DROP TABLE IF EXISTS `dorimitory`;
CREATE TABLE `dorimitory`  (
  `dname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dfloor` int(0) NULL DEFAULT NULL,
  `dnum` int(0) NULL DEFAULT NULL,
  `dstate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sinstructor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sstate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorimitory
-- ----------------------------
INSERT INTO `dorimitory` VALUES ('博慧一', 1, 101, '可使用', '张三', '辅导员', '正常', 1);
INSERT INTO `dorimitory` VALUES ('博慧一', 1, 102, '可使用', '李四', '辅导员', '缺勤', 3);
INSERT INTO `dorimitory` VALUES ('博慧一', 1, 103, '可使用', '往来你', '老师', '正常', 4);
INSERT INTO `dorimitory` VALUES ('博慧一', 2, 202, '可使用', '盘中餐', '老师', '正常', 1202);
INSERT INTO `dorimitory` VALUES ('博惠1', 4, 401, '可使用', '帅哥', '周婷', '缺勤', 1401);

SET FOREIGN_KEY_CHECKS = 1;
