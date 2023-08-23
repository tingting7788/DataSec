/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : 127.0.0.1:3306
 Source Schema         : data

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 23/08/2023 23:32:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db
-- ----------------------------
DROP TABLE IF EXISTS `db`;
CREATE TABLE `db`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `abnormal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '异常',
  `biaoqian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签',
  `raw` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '原生数据',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db
-- ----------------------------
INSERT INTO `db` VALUES (7, '192.168.23.34', 'user', 'log', '110101200007286907', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":null,\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (8, '192.168.23.34', 'user', 'log', '11010120000728790X', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":null,\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (9, '192.168.23.34', 'user', 'log', '110101200007286405', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":null,\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (10, '192.168.23.34', 'user', 'log', '110101200007288101', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":null,\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (11, '192.168.23.34', 'user', 'log', '150303198007281613', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":null,\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (12, '192.168.23.34', 'user', 'log', '150303198007287417', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":null,\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (13, '192.168.23.34', 'user', 'log', '150303198007289914', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":\"{\\\"db_address\\\":\\\"192.168.23.34\\\",\\\"db_name\\\":\\\"daxiong\\\",\\\"db_table\\\":\\\"duola\\\",\\\"abnormal\\\":\\\"42118120000121318X\\\",\\\"biaoqian\\\":\\\"\\\\u8eab\\\\u4efd\\\\u8bc1\\\",\\\"raw\\\":null,\\\"create_time\\\":\\\"2023-07-13 23:38:58\\\"}\",\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (14, '192.168.23.34', 'user', 'log', '150303198007281517', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":\"{\\\"db_address\\\":\\\"192.168.23.34\\\",\\\"db_name\\\":\\\"daxiong\\\",\\\"db_table\\\":\\\"duola\\\",\\\"abnormal\\\":\\\"42118120000121318X\\\",\\\"biaoqian\\\":\\\"\\\\u8eab\\\\u4efd\\\\u8bc1\\\",\\\"raw\\\":null,\\\"create_time\\\":\\\"2023-07-13 23:38:58\\\"}\",\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (15, '192.168.23.34', 'user', 'log', '150303198007280813', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":\"{\\\"db_address\\\":\\\"192.168.23.34\\\",\\\"db_name\\\":\\\"daxiong\\\",\\\"db_table\\\":\\\"duola\\\",\\\"abnormal\\\":\\\"42118120000121318X\\\",\\\"biaoqian\\\":\\\"\\\\u8eab\\\\u4efd\\\\u8bc1\\\",\\\"raw\\\":null,\\\"create_time\\\":\\\"2023-07-13 23:38:58\\\"}\",\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');
INSERT INTO `db` VALUES (16, '192.168.23.34', 'user', 'log', '150303198007286617', '身份证', '{\"db_address\":\"192.168.23.34\",\"db_name\":\"daxiong\",\"db_table\":\"duola\",\"abnormal\":\"42118120000121318X\",\"biaoqian\":\"\\u8eab\\u4efd\\u8bc1\",\"raw\":\"{\\\"db_address\\\":\\\"192.168.23.34\\\",\\\"db_name\\\":\\\"daxiong\\\",\\\"db_table\\\":\\\"duola\\\",\\\"abnormal\\\":\\\"42118120000121318X\\\",\\\"biaoqian\\\":\\\"\\\\u8eab\\\\u4efd\\\\u8bc1\\\",\\\"raw\\\":null,\\\"create_time\\\":\\\"2023-07-13 23:38:58\\\"}\",\"create_time\":\"2023-07-13 23:38:58\"}', '2023-07-13 23:38:58');

-- ----------------------------
-- Table structure for db_conf
-- ----------------------------
DROP TABLE IF EXISTS `db_conf`;
CREATE TABLE `db_conf`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_conf
-- ----------------------------
INSERT INTO `db_conf` VALUES (1, '192.168.0.109', '3306', 'data', 'root', 'root');
INSERT INTO `db_conf` VALUES (2, '192.168.33.32', '3306', 'data', 'user', '123456');
INSERT INTO `db_conf` VALUES (3, '176.87.234.53', '3006', 'data', 'user', '123123');
INSERT INTO `db_conf` VALUES (4, '176.87.234.54', '3006', 'data', 'user', '123123');
INSERT INTO `db_conf` VALUES (5, '192.168.54.65', '3307', 'data', 'chenting', '123321');

-- ----------------------------
-- Table structure for guize
-- ----------------------------
DROP TABLE IF EXISTS `guize`;
CREATE TABLE `guize`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `biaoqian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '正则标签',
  `creation` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guize
-- ----------------------------
INSERT INTO `guize` VALUES (1, '/\\b\\d{17}[\\dXx]\\b/', '身份证', '2023-07-23 16:08:53');
INSERT INTO `guize` VALUES (2, '/^(?:(?:\\+|00)86)?1[3-9]\\d{9}$/\r\n', '手机号', '2023-07-23 21:56:46');
INSERT INTO `guize` VALUES (3, '/(^|[^0-9])(62\\d{14}(\\d{3})?)([^0-9]|$)/\r\n', '招商银行', '2023-07-23 21:58:09');

-- ----------------------------
-- Table structure for http
-- ----------------------------
DROP TABLE IF EXISTS `http`;
CREATE TABLE `http`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `abnormal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '异常',
  `creation` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of http
-- ----------------------------
INSERT INTO `http` VALUES (1, 'www.baidu.com', '2123123', '2023-07-13 22:58:20');
INSERT INTO `http` VALUES (2, 'www.taobao.com', '2123123', '2023-07-13 22:58:20');
INSERT INTO `http` VALUES (3, 'www.jd.com', '2123123', '2023-07-13 22:58:20');

SET FOREIGN_KEY_CHECKS = 1;
