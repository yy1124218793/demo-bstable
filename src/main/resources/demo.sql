/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 02/08/2020 20:52:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `useable` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否可用(0禁用,1可用)',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `logintime` datetime NULL DEFAULT NULL COMMENT '登陆时间',
  `loginip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登陆IP',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (38, 'admin', 'admin', '112421@qq.com', 1, '2020-08-02 20:17:22', NULL, NULL);
INSERT INTO `t_user` VALUES (39, '1111111', 'admin', '112421@qq.com', 1, '2020-08-02 20:17:42', NULL, NULL);
INSERT INTO `t_user` VALUES (40, '22222222', 'admin', '112421@qq.com', 1, '2020-08-02 20:17:48', NULL, NULL);
INSERT INTO `t_user` VALUES (41, '33333333333', 'admin', '112421@qq.com', 1, '2020-08-02 20:17:51', NULL, NULL);
INSERT INTO `t_user` VALUES (42, '444444', 'admin', '112421@qq.com', 1, '2020-08-02 20:17:54', NULL, NULL);
INSERT INTO `t_user` VALUES (43, '55555', 'admin', '112421@qq.com', 1, '2020-08-02 20:17:56', NULL, NULL);
INSERT INTO `t_user` VALUES (44, '6666', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:00', NULL, NULL);
INSERT INTO `t_user` VALUES (45, '888', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:03', NULL, NULL);
INSERT INTO `t_user` VALUES (46, '0000', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:06', NULL, NULL);
INSERT INTO `t_user` VALUES (47, '000011111', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:09', NULL, NULL);
INSERT INTO `t_user` VALUES (48, '0000111111111', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:11', NULL, NULL);
INSERT INTO `t_user` VALUES (49, 'as', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:15', NULL, NULL);
INSERT INTO `t_user` VALUES (50, 'asassa', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:18', NULL, NULL);
INSERT INTO `t_user` VALUES (51, 'asassaassa', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:21', NULL, NULL);
INSERT INTO `t_user` VALUES (52, 'aas', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:23', NULL, NULL);
INSERT INTO `t_user` VALUES (53, 'as', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:26', NULL, NULL);
INSERT INTO `t_user` VALUES (54, '2qwasd', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:31', NULL, NULL);
INSERT INTO `t_user` VALUES (55, 'asdasd', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:34', NULL, NULL);
INSERT INTO `t_user` VALUES (56, 'asdad', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:36', NULL, NULL);
INSERT INTO `t_user` VALUES (57, 'asdaddasd', 'admin', '112421@qq.com', 1, '2020-08-02 20:18:39', NULL, NULL);
INSERT INTO `t_user` VALUES (58, '54232', 'admin', '112421@qq.com', 0, '2020-08-02 20:18:44', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
