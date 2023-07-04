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

 Date: 04/07/2023 13:36:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_sso_system
-- ----------------------------
DROP TABLE IF EXISTS `tb_sso_system`;
CREATE TABLE `tb_sso_system`  (
  `ID` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `CODE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编号',
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `DES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '介绍',
  `URL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '链接',
  `ICON` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `ENABLEFLAG` decimal(1, 0) NULL DEFAULT NULL COMMENT '状态；0-启用；1-停用；',
  `DELETEFLAG` decimal(1, 0) NULL DEFAULT NULL COMMENT '状态；0-可用；1--删除；',
  `CREATE_ORG_ID` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '创建部门',
  `CREATE_USER_ID` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '创建人',
  `CREATE_DTM` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `LAST_UPDATE_USER_ID` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '修改人',
  `LAST_UPDATE_DTM` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '修改时间',
  `VERSION` decimal(5, 0) NULL DEFAULT NULL COMMENT '版本号',
  `SORT` decimal(3, 0) NULL DEFAULT NULL COMMENT '顺序',
  `DEFAULT_ROUTER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '默认路由',
  `REDIRECT_ROUTER` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '重定向路由',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '单点登录_应用管理' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
