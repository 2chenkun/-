/*
 Navicat Premium Data Transfer

 Source Server         : chenkun
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : bumen

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 22/12/2023 16:40:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `deptno` int NOT NULL,
  `dname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `loc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`deptno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (112, '秘书部', '北京');
INSERT INTO `dept` VALUES (113, '研发部', '上海');
INSERT INTO `dept` VALUES (114, '销售部', '北京');
INSERT INTO `dept` VALUES (115, '市场部', '北京');
INSERT INTO `dept` VALUES (116, '设计部', '武汉');
INSERT INTO `dept` VALUES (117, '探测部', '武汉');
INSERT INTO `dept` VALUES (118, '人事部', '武汉');
INSERT INTO `dept` VALUES (119, '策划部', '武汉');
INSERT INTO `dept` VALUES (121, '娱乐部', '上海');
INSERT INTO `dept` VALUES (122, '演讲部', '上海');
INSERT INTO `dept` VALUES (123, '纪检部', '北京');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工名字',
  `dname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门名字',
  `time` date NULL DEFAULT NULL COMMENT '入职时间',
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '职位'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('阿Q', '秘书部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('牛蛋', '研发部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('电焊', '销售部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('土拨鼠', '市场部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('钢笔', '设计部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('同僚', '探测部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('套总', '人事部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('乾坤老祖', '策划部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('117', '娱乐部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('杨永信', '演讲部', '2023-12-22', '组长');
INSERT INTO `staff` VALUES ('祁同伟', '纪检部', '2023-12-22', '组长');

-- ----------------------------
-- Table structure for staff1
-- ----------------------------
DROP TABLE IF EXISTS `staff1`;
CREATE TABLE `staff1`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工名字',
  `dname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门名字',
  `time` date NULL DEFAULT NULL COMMENT '入职时间',
  `wages` decimal(10, 2) NOT NULL COMMENT '工资'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff1
-- ----------------------------
INSERT INTO `staff1` VALUES ('阿Q', '秘书部', '2023-12-22', 8780.00);
INSERT INTO `staff1` VALUES ('牛蛋', '研发部', '2023-12-22', 12000.00);
INSERT INTO `staff1` VALUES ('电焊', '销售部', '2023-12-22', 7000.00);
INSERT INTO `staff1` VALUES ('土拨鼠', '市场部', '2023-12-22', 7500.00);
INSERT INTO `staff1` VALUES ('钢笔', '设计部', '2023-12-22', 11000.00);
INSERT INTO `staff1` VALUES ('同僚', '探测部', '2023-12-22', 8500.00);
INSERT INTO `staff1` VALUES ('套总', '人事部', '2023-12-22', 8000.00);
INSERT INTO `staff1` VALUES ('乾坤老祖', '策划部', '2023-12-22', 12000.00);
INSERT INTO `staff1` VALUES ('117', '娱乐部', '2023-12-22', 7500.00);
INSERT INTO `staff1` VALUES ('杨永信', '演讲部', '2023-12-22', 9500.00);
INSERT INTO `staff1` VALUES ('祁', '纪检部', '2023-12-22', 13000.00);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin');
INSERT INTO `t_user` VALUES (2, 'name', 'password');
INSERT INTO `t_user` VALUES (3, 'liuchang', 'sbsb');
INSERT INTO `t_user` VALUES (4, 'qq', 'qq');

SET FOREIGN_KEY_CHECKS = 1;
