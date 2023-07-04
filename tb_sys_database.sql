/*
 Navicat Premium Data Transfer

 Source Server         : mysql sso
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : 10.57.9.204:3306
 Source Schema         : db_sso_01

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 04/07/2023 13:14:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_sys_database
-- ----------------------------
DROP TABLE IF EXISTS `tb_sys_database`;
CREATE TABLE `tb_sys_database`  (
  `CODE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '数据源标识符',
  `SID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '实例ID',
  `IP` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP',
  `PORT` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '端口号',
  `USERNAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统管理_数据源管理' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
