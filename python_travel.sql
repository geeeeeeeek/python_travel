/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_travel

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 17/06/2023 10:11:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add order log', 17, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (66, 'Can change order log', 17, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete order log', 17, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (68, 'Can view order log', 17, 'view_orderlog');
INSERT INTO `auth_permission` VALUES (69, 'Can add order', 18, 'add_order');
INSERT INTO `auth_permission` VALUES (70, 'Can change order', 18, 'change_order');
INSERT INTO `auth_permission` VALUES (71, 'Can delete order', 18, 'delete_order');
INSERT INTO `auth_permission` VALUES (72, 'Can view order', 18, 'view_order');
INSERT INTO `auth_permission` VALUES (73, 'Can add comment', 19, 'add_comment');
INSERT INTO `auth_permission` VALUES (74, 'Can change comment', 19, 'change_comment');
INSERT INTO `auth_permission` VALUES (75, 'Can delete comment', 19, 'delete_comment');
INSERT INTO `auth_permission` VALUES (76, 'Can view comment', 19, 'view_comment');
INSERT INTO `auth_permission` VALUES (77, 'Can add banner', 20, 'add_banner');
INSERT INTO `auth_permission` VALUES (78, 'Can change banner', 20, 'change_banner');
INSERT INTO `auth_permission` VALUES (79, 'Can delete banner', 20, 'delete_banner');
INSERT INTO `auth_permission` VALUES (80, 'Can view banner', 20, 'view_banner');
INSERT INTO `auth_permission` VALUES (81, 'Can add address', 21, 'add_address');
INSERT INTO `auth_permission` VALUES (82, 'Can change address', 21, 'change_address');
INSERT INTO `auth_permission` VALUES (83, 'Can delete address', 21, 'delete_address');
INSERT INTO `auth_permission` VALUES (84, 'Can view address', 21, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '观光游览', '2023-06-15 18:50:14.804151');
INSERT INTO `b_classification` VALUES (2, '历史古迹', '2023-06-15 18:50:20.214187');
INSERT INTO `b_classification` VALUES (3, '民俗风情', '2023-06-15 18:50:28.669501');
INSERT INTO `b_classification` VALUES (4, '文学艺术', '2023-06-15 18:50:35.417186');
INSERT INTO `b_classification` VALUES (5, '科考探险', '2023-06-15 18:50:46.517521');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '11', '2023-06-16 17:42:16.344470', 0, 1, 2);
INSERT INTO `b_comment` VALUES (2, 'aaaa', '2023-06-17 10:05:31.231913', 0, 7, 4);
INSERT INTO `b_comment` VALUES (3, '哈哈哈', '2023-06-17 10:05:34.789063', 0, 7, 4);
INSERT INTO `b_comment` VALUES (4, '好好好', '2023-06-17 10:05:38.266917', 0, 7, 4);
INSERT INTO `b_comment` VALUES (5, 'hhhh', '2023-06-17 10:08:53.591323', 0, 5, 5);
INSERT INTO `b_comment` VALUES (6, 'hh', '2023-06-17 10:08:55.309756', 0, 5, 5);
INSERT INTO `b_comment` VALUES (7, 'eaddd', '2023-06-17 10:08:57.535405', 0, 5, 5);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-15 18:44:15.720003');
INSERT INTO `b_login_log` VALUES (2, 'ccc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-16 17:42:07.809731');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-16 18:30:50.963146');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-17 10:03:07.538703');
INSERT INTO `b_login_log` VALUES (5, 'dddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-17 10:04:13.494075');
INSERT INTO `b_login_log` VALUES (6, 'eeee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-17 10:08:37.952790');
INSERT INTO `b_login_log` VALUES (7, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-17 10:11:14.738026');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 497 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-06-15 18:41:48.909265', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-06-15 18:41:48.910263', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-06-15 18:41:48.911252', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-06-15 18:41:48.911252', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-06-15 18:42:31.419372', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-06-15 18:42:31.421501', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-06-15 18:42:31.421501', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-06-15 18:42:31.437194', '/myapp/index/notice/list_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-06-15 18:42:38.952425', '/myapp/admin/adminLogin', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-06-15 18:44:15.728009', '/myapp/admin/adminLogin', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-06-15 18:44:16.277566', '/myapp/admin/overview/count', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-06-15 18:44:18.571163', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-06-15 18:44:20.974657', '/myapp/admin/overview/count', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-06-15 18:44:25.581972', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-06-15 18:49:23.542394', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-06-15 18:49:23.545395', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-06-15 18:49:23.548398', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-06-15 18:49:38.349471', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-06-15 18:49:38.354462', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-06-15 18:49:38.374200', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-06-15 18:49:39.148808', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-06-15 18:49:39.652032', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-06-15 18:49:39.657261', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-06-15 18:49:39.661360', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-06-15 18:49:40.414450', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-06-15 18:50:14.810083', '/myapp/admin/classification/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-06-15 18:50:14.834740', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-06-15 18:50:20.219169', '/myapp/admin/classification/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-06-15 18:50:20.266536', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-06-15 18:50:28.674975', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-06-15 18:50:28.713594', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-06-15 18:50:35.422792', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-06-15 18:50:35.465842', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-06-15 18:50:46.523533', '/myapp/admin/classification/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-06-15 18:50:46.558065', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-06-15 18:50:50.253285', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-06-15 18:50:57.829911', '/myapp/admin/tag/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-06-15 18:50:57.877528', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-06-15 18:51:03.157190', '/myapp/admin/tag/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-06-15 18:51:03.197965', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-06-15 18:51:09.212640', '/myapp/admin/tag/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-06-15 18:51:09.250252', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-06-15 18:51:14.516740', '/myapp/admin/tag/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-06-15 18:51:14.577321', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-06-15 18:51:19.105559', '/myapp/admin/tag/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-06-15 18:51:19.160761', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-06-15 18:51:24.086515', '/myapp/admin/tag/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-06-15 18:51:24.133861', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-06-15 18:51:28.731243', '/myapp/admin/tag/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-06-15 18:51:28.784931', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-06-15 18:51:44.258178', '/myapp/admin/tag/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-06-15 18:51:44.324297', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-06-15 18:51:47.841834', '/myapp/admin/tag/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-06-15 18:51:47.875917', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-06-15 18:51:49.764734', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-06-15 18:51:49.765739', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-06-15 18:51:49.776749', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-06-15 18:51:49.783587', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-06-15 18:51:55.591883', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-06-15 18:51:55.593875', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-06-15 18:51:55.595879', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-06-15 18:52:55.429254', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-06-15 18:52:55.442485', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-06-15 18:52:55.446486', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-06-15 18:56:12.218766', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-06-15 18:56:12.235429', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-06-15 18:56:12.237463', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-06-15 18:56:16.075766', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-06-15 18:56:16.080100', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-06-15 18:56:16.083125', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-06-15 18:56:40.412337', '/myapp/admin/thing/create', 'POST', NULL, '368');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-06-15 18:56:40.470891', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-06-15 18:56:59.560541', '/upload/cover/1686826589475.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-06-15 18:57:05.661301', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-06-15 18:57:05.744075', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-06-15 18:57:09.846973', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-06-15 18:57:09.939444', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-06-15 18:57:22.735026', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-06-15 18:57:23.910989', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-06-15 18:57:23.914492', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-06-15 18:57:23.928190', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-06-15 18:58:26.010953', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-06-15 18:58:26.024492', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-06-15 18:58:26.033788', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-06-15 18:58:35.131452', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-06-15 18:58:35.221158', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-06-15 18:58:38.713181', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-06-15 18:58:39.496960', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-06-15 18:58:39.502406', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-06-15 18:58:39.516648', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-06-16 17:26:56.577097', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-06-16 17:26:56.578105', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-06-16 17:26:56.582273', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-06-16 17:26:56.593326', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-06-16 17:26:56.629119', '/upload/cover/1686826589475.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-06-16 17:27:20.760617', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-06-16 17:27:20.763622', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-06-16 17:27:20.779608', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-06-16 17:27:22.595089', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-06-16 17:27:23.852073', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-06-16 17:28:26.747162', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-06-16 17:28:32.995339', '/myapp/admin/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-06-16 17:28:34.171859', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-06-16 17:28:34.908871', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-06-16 17:28:34.914478', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-06-16 17:28:34.931295', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-06-16 17:28:36.894241', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-06-16 17:28:37.746776', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-06-16 17:28:37.748662', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-06-16 17:28:37.756246', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-06-16 17:28:39.629297', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-06-16 17:28:40.678304', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-06-16 17:28:40.680300', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-06-16 17:28:40.695510', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-06-16 17:28:58.956918', '/myapp/admin/thing/create', 'POST', NULL, '247');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-06-16 17:28:59.021164', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-06-16 17:29:01.385394', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-06-16 17:29:01.387671', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-06-16 17:29:01.388298', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-06-16 17:29:01.392412', '/myapp/index/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-06-16 17:29:01.432138', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-06-16 17:29:09.050304', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1066');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-06-16 17:29:10.413483', '/myapp/admin/overview/count', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-06-16 17:29:15.118584', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-06-16 17:29:16.116519', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-06-16 17:29:23.424194', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-06-16 17:29:27.494684', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-06-16 17:29:27.498675', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-06-16 17:29:27.501251', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-06-16 17:29:27.514372', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-06-16 17:29:27.561904', '/upload/cover/1686907729774.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-06-16 17:31:13.698297', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-06-16 17:31:13.702296', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-06-16 17:31:13.705296', '/myapp/index/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-06-16 17:31:13.730300', '/myapp/index/tag/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-06-16 17:31:13.740298', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-06-16 17:33:17.270771', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-06-16 17:34:00.796303', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-06-16 17:37:09.110077', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-06-16 17:37:09.117077', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-06-16 17:37:09.127092', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-06-16 17:37:09.131099', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-06-16 17:37:09.141202', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-06-16 17:37:15.784088', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-06-16 17:37:15.810756', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-06-16 17:38:05.369555', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-06-16 17:38:23.763401', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-06-16 17:38:23.770399', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-06-16 17:38:23.777399', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-06-16 17:38:23.780391', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-06-16 17:38:23.792392', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-06-16 17:38:26.779443', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-06-16 17:38:26.780447', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-06-16 17:38:26.782442', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-06-16 17:38:26.805061', '/myapp/index/thing/detail', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-06-16 17:39:39.113200', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-06-16 17:39:39.117285', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-06-16 17:39:39.126945', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-06-16 17:39:39.127956', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-06-16 17:41:54.875257', '/myapp/index/comment/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-06-16 17:41:57.806623', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-06-16 17:41:57.810499', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-06-16 17:41:57.815610', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-06-16 17:41:57.825739', '/myapp/index/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-06-16 17:42:05.347472', '/myapp/index/user/register', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-06-16 17:42:07.815739', '/myapp/index/user/login', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-06-16 17:42:07.853500', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-06-16 17:42:07.859507', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-06-16 17:42:07.862508', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-06-16 17:42:07.866499', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-06-16 17:42:12.396347', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-06-16 17:42:12.406815', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-06-16 17:42:12.415611', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-06-16 17:42:12.417660', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-06-16 17:42:12.444960', '/upload/cover/1686907729774.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-06-16 17:42:16.359709', '/myapp/index/comment/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-06-16 17:42:16.380708', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-06-16 17:42:18.071554', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-06-16 17:42:18.101566', '/myapp/index/address/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-06-16 17:42:20.163213', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-06-16 17:42:20.174290', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-06-16 17:42:20.185298', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-06-16 17:42:20.198509', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-06-16 17:43:34.591319', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-06-16 17:43:34.603969', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-06-16 17:43:34.608444', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-06-16 17:43:34.610587', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-06-16 17:43:51.734707', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-06-16 17:43:51.751835', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-06-16 17:43:51.756834', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-06-16 17:43:51.757838', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-06-16 17:44:46.806663', '/myapp/index/thing/addWishUser', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-06-16 17:44:46.870180', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-06-16 17:44:47.128298', '/myapp/index/thing/addCollectUser', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-06-16 17:44:47.170229', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-06-16 17:44:58.780129', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-06-16 17:44:58.796301', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-06-16 17:44:58.802099', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-06-16 17:44:58.803115', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-06-16 17:45:08.079042', '/myapp/index/comment/listMyComments', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-06-16 17:45:10.362772', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-06-16 17:45:10.366890', '/myapp/index/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-06-16 17:45:10.370779', '/myapp/index/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-06-16 17:45:10.387837', '/myapp/index/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-06-16 17:45:10.428839', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-06-16 17:45:11.707400', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-06-16 17:45:11.711399', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-06-16 17:45:11.726400', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-06-16 17:45:11.730392', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-06-16 17:45:13.125709', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-06-16 17:45:13.128708', '/myapp/index/address/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-06-16 17:46:52.360112', '/myapp/index/address/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-06-16 17:46:52.363120', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-06-16 17:46:55.517335', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-06-16 17:46:55.519351', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-06-16 17:46:55.537120', '/myapp/index/address/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-06-16 17:47:01.864584', '/myapp/index/order/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-06-16 17:48:41.074860', '/myapp/index/order/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-06-16 17:48:41.148376', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-06-16 17:48:45.605038', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-06-16 17:48:45.608039', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-06-16 17:48:45.609325', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-06-16 17:48:45.618078', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-06-16 17:48:47.404765', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-06-16 17:48:47.411549', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-06-16 17:48:47.414855', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-06-16 17:48:47.415888', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-06-16 17:48:51.046321', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-06-16 17:48:52.175874', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-06-16 17:48:53.513929', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-06-16 17:48:54.374862', '/myapp/index/address/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-06-16 17:48:55.042530', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-06-16 17:48:55.959024', '/myapp/index/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-06-16 17:49:02.547827', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-06-16 17:49:02.552638', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-06-16 17:49:02.560873', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-06-16 17:49:02.559883', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-06-16 17:49:02.583756', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-06-16 17:49:05.162953', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-06-16 17:49:07.228720', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-06-16 17:49:08.695998', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-06-16 17:49:09.361878', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-06-16 17:49:10.626113', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-06-16 17:49:11.707820', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-06-16 17:49:12.561583', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-06-16 17:49:13.377135', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-06-16 17:49:14.262723', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-06-16 17:49:14.959833', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-06-16 17:49:16.224061', '/myapp/index/thing/removeWishUser', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-06-16 17:49:16.256061', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-06-16 17:49:17.429844', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-06-16 17:49:18.000495', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-06-16 17:49:18.998097', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-06-16 17:49:19.003159', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-06-16 17:49:19.006162', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-06-16 17:49:19.012508', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-06-16 17:49:26.539896', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-06-16 17:49:26.544282', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-06-16 17:49:26.553085', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-06-16 17:49:26.556149', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-06-16 17:49:32.131725', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-06-16 17:49:32.142181', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-06-16 17:49:32.144546', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-06-16 17:49:32.152545', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-06-16 17:50:00.598753', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-06-16 17:50:00.600754', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-06-16 17:50:00.602754', '/myapp/index/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-06-16 17:50:00.611753', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-06-16 17:50:28.043788', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-06-16 17:50:28.084566', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-06-16 17:50:28.085557', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-06-16 17:50:28.088565', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-06-16 17:51:07.605117', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-06-16 17:51:07.607108', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-06-16 17:51:07.610326', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-06-16 17:51:07.618743', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-06-16 17:51:07.673743', '/upload/cover/1686907729774.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-06-16 17:51:10.549691', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-06-16 17:52:06.057017', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-06-16 17:52:06.061007', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-06-16 17:52:06.084037', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-06-16 17:53:21.673750', '/myapp/admin/thing/update', 'POST', NULL, '124');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-06-16 17:53:21.729590', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-06-16 17:53:24.950711', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-06-16 17:53:28.883019', '/myapp/admin/tag/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-06-16 17:53:28.925590', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-06-16 17:53:31.079223', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-06-16 17:53:33.307245', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-06-16 17:53:33.319804', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-06-16 17:53:33.328812', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-06-16 17:53:36.451566', '/upload/cover/1686907729774.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-06-16 17:55:06.064257', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-06-16 17:55:06.144910', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-06-16 17:55:37.209801', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-06-16 17:55:37.629128', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-06-16 18:30:22.390037', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-06-16 18:30:22.392037', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-06-16 18:30:22.393038', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-06-16 18:30:22.400711', '/myapp/index/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-06-16 18:30:22.417712', '/upload/cover/1686909170444.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-06-16 18:30:22.440465', '/upload/cover/1686909170444.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-06-16 18:30:25.128801', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-06-16 18:30:25.130802', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-06-16 18:30:25.132813', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-06-16 18:30:25.140802', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-06-16 18:30:25.937394', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-06-16 18:30:25.939393', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-06-16 18:30:25.941395', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-06-16 18:30:25.948393', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-06-16 18:30:27.524202', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-06-16 18:30:27.525708', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-06-16 18:30:27.527726', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-06-16 18:30:27.537733', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-06-16 18:30:29.899569', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-06-16 18:30:29.897397', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-06-16 18:30:29.900658', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-06-16 18:30:29.907301', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-06-16 18:30:50.966655', '/myapp/admin/adminLogin', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-06-16 18:30:51.162851', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-06-16 18:30:51.166849', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-06-16 18:30:51.179850', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-06-16 18:32:03.103077', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-06-16 18:32:03.171903', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-06-16 18:32:27.375677', '/myapp/admin/thing/create', 'POST', NULL, '81');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-06-16 18:32:27.500680', '/myapp/admin/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-06-16 18:33:05.869930', '/myapp/admin/thing/create', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-06-16 18:33:05.956596', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-06-16 18:33:33.760599', '/myapp/admin/thing/create', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-06-16 18:33:33.882381', '/myapp/admin/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-06-16 18:34:36.048467', '/myapp/admin/thing/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-06-16 18:34:36.164033', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-06-16 18:35:06.373058', '/myapp/admin/thing/create', 'POST', NULL, '84');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-06-16 18:35:06.452092', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-06-16 18:35:37.777349', '/myapp/admin/thing/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-06-16 18:35:37.915316', '/myapp/admin/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-06-16 18:35:39.123382', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-06-16 18:35:39.129433', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-06-16 18:35:39.130450', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-06-16 18:35:39.160583', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-06-16 18:35:39.191581', '/upload/cover/1686911634064.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-06-16 18:35:39.192609', '/upload/cover/1686911634064.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-06-16 18:35:39.214112', '/upload/cover/1686911553036.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-06-16 18:35:39.226480', '/upload/cover/1686911553036.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-06-16 18:35:39.235353', '/upload/cover/1686911528306.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-06-16 18:35:39.237372', '/upload/cover/1686909254559.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-06-16 18:35:39.237372', '/upload/cover/1686911553036.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-06-16 18:35:39.238381', '/upload/cover/1686911477890.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-06-16 18:35:39.255358', '/upload/cover/1686909170444.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-06-16 18:35:44.904134', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-06-16 18:35:45.720936', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-06-16 18:35:46.368746', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-06-16 18:35:46.985310', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-06-16 18:35:47.605758', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-06-16 18:35:48.443396', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-06-16 18:35:48.466037', '/upload/cover/1686911634064.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-06-16 18:35:48.485325', '/upload/cover/1686911681078.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-06-17 10:02:24.177406', '/', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-06-17 10:02:37.167414', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-06-17 10:02:38.554098', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-06-17 10:02:38.556310', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-06-17 10:02:38.595502', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-06-17 10:02:39.134054', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-06-17 10:02:48.487569', '/myapp/admin/adminLogin', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-06-17 10:03:00.240139', '/myapp/admin/adminLogin', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-06-17 10:03:02.087304', '/myapp/admin/adminLogin', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-06-17 10:03:07.545720', '/myapp/admin/adminLogin', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-06-17 10:03:07.698262', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-06-17 10:03:07.700241', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-06-17 10:03:07.753363', '/myapp/admin/tag/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-06-17 10:03:09.686368', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-06-17 10:03:23.415382', '/myapp/admin/user/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-06-17 10:03:23.481120', '/myapp/admin/user/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-06-17 10:03:33.041038', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-06-17 10:03:33.829802', '/myapp/admin/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-06-17 10:03:34.601628', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-06-17 10:03:35.252732', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-06-17 10:03:35.992559', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-06-17 10:03:35.996884', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-06-17 10:03:36.031382', '/myapp/admin/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-06-17 10:03:41.300569', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1070');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-06-17 10:03:42.175169', '/myapp/admin/overview/count', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-06-17 10:03:45.954972', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-06-17 10:03:45.957972', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-06-17 10:03:45.961974', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-06-17 10:03:45.979138', '/myapp/index/notice/list_api', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-06-17 10:03:46.034545', '/upload/cover/1686911681078.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-06-17 10:03:46.035545', '/upload/cover/1686911634064.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-06-17 10:03:46.035545', '/upload/cover/1686911634064.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-06-17 10:03:46.035545', '/upload/cover/1686911553036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-06-17 10:03:46.036951', '/upload/cover/1686911553036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-06-17 10:03:46.039148', '/upload/cover/1686911528306.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-06-17 10:03:46.045340', '/upload/cover/1686911477890.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-06-17 10:03:46.048350', '/upload/cover/1686909254559.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-06-17 10:03:46.052686', '/upload/cover/1686909170444.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-06-17 10:04:03.374686', '/myapp/index/user/register', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-06-17 10:04:13.502857', '/myapp/index/user/login', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-06-17 10:04:13.568160', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-06-17 10:04:13.585169', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-06-17 10:04:13.589180', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-06-17 10:04:13.592180', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-06-17 10:04:18.537629', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-06-17 10:04:18.560980', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-06-17 10:04:18.563980', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-06-17 10:04:18.581983', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-06-17 10:04:19.465526', '/myapp/index/address/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-06-17 10:04:19.467526', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-06-17 10:04:20.839959', '/myapp/index/order/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-06-17 10:04:20.929056', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-06-17 10:04:22.341097', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-06-17 10:04:22.342066', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-06-17 10:04:24.636455', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-06-17 10:04:24.637476', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-06-17 10:04:24.652036', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-06-17 10:04:24.662347', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-06-17 10:04:25.715421', '/myapp/index/thing/addWishUser', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-06-17 10:04:25.769391', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-06-17 10:04:26.100884', '/myapp/index/thing/addCollectUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-06-17 10:04:26.160154', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-06-17 10:05:18.774606', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-06-17 10:05:18.804035', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-06-17 10:05:18.806028', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-06-17 10:05:18.816447', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-06-17 10:05:21.325719', '/myapp/index/comment/listMyComments', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-06-17 10:05:23.639372', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-06-17 10:05:24.094240', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-06-17 10:05:25.047868', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-06-17 10:05:26.252711', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-06-17 10:05:26.260715', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-06-17 10:05:26.270828', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-06-17 10:05:26.288877', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-06-17 10:05:31.246079', '/myapp/index/comment/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-06-17 10:05:31.284781', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-06-17 10:05:34.796984', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-06-17 10:05:34.819099', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-06-17 10:05:38.272202', '/myapp/index/comment/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-06-17 10:05:38.316853', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-06-17 10:06:03.014422', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-06-17 10:06:03.016269', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-06-17 10:06:03.018281', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-06-17 10:06:03.053946', '/myapp/index/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-06-17 10:06:08.359543', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-06-17 10:06:08.360542', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-06-17 10:06:08.402546', '/myapp/admin/tag/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-06-17 10:08:06.530628', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-06-17 10:08:07.570174', '/myapp/admin/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-06-17 10:08:08.241789', '/myapp/admin/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-06-17 10:08:09.081007', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-06-17 10:08:10.295707', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-06-17 10:08:10.303433', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-06-17 10:08:10.332213', '/myapp/admin/tag/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-06-17 10:08:11.167550', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-06-17 10:08:11.877193', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-06-17 10:08:12.847513', '/myapp/admin/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-06-17 10:08:14.529185', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-06-17 10:08:15.600230', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-06-17 10:08:31.881297', '/myapp/index/user/register', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-06-17 10:08:37.961924', '/myapp/index/user/login', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-06-17 10:08:38.024307', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-06-17 10:08:38.043183', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-06-17 10:08:38.060916', '/myapp/index/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-06-17 10:08:38.061928', '/myapp/index/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-06-17 10:08:42.548470', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-06-17 10:08:42.557775', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-06-17 10:08:42.565082', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-06-17 10:08:42.572650', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-06-17 10:08:43.911075', '/myapp/index/address/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-06-17 10:08:43.914084', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-06-17 10:08:45.315359', '/myapp/index/order/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-06-17 10:08:45.372331', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-06-17 10:08:46.345449', '/myapp/index/address/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-06-17 10:08:46.347005', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-06-17 10:08:48.243860', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-06-17 10:08:48.261264', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-06-17 10:08:48.278111', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-06-17 10:08:48.297996', '/myapp/index/thing/detail', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-06-17 10:08:53.605938', '/myapp/index/comment/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-06-17 10:08:53.621935', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-06-17 10:08:55.324326', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-06-17 10:08:55.339571', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-06-17 10:08:57.549457', '/myapp/index/comment/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-06-17 10:08:57.605969', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-06-17 10:11:10.235777', '/myapp/admin/overview/count', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-06-17 10:11:14.747465', '/myapp/admin/adminLogin', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-06-17 10:11:14.873037', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-06-17 10:11:14.894964', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-06-17 10:11:14.916017', '/myapp/admin/classification/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-06-17 10:11:18.000030', '/myapp/admin/thing/update', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-06-17 10:11:20.488542', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-06-17 10:11:21.335770', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-06-17 10:11:22.161994', '/myapp/admin/order/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-06-17 10:11:25.224716', '/myapp/admin/order/cancel_order', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-06-17 10:11:26.482289', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-06-17 10:11:27.476455', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-06-17 10:11:28.648071', '/myapp/admin/overview/count', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-06-17 10:11:33.802396', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1058');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-06-17 10:11:35.577671', '/myapp/admin/classification/list', 'GET', NULL, '5');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1686908921067', 2, '1', '2023-06-16 17:48:41.069859', NULL, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO `b_order` VALUES (2, '1686967460818', 1, '1', '2023-06-17 10:04:20.823337', NULL, NULL, NULL, NULL, NULL, 7, 4);
INSERT INTO `b_order` VALUES (3, '1686967725295', 1, '1', '2023-06-17 10:08:45.301423', NULL, NULL, NULL, NULL, NULL, 5, 5);

-- ----------------------------
-- Table structure for b_order_log
-- ----------------------------
DROP TABLE IF EXISTS `b_order_log`;
CREATE TABLE `b_order_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_log_thing_id_7306f624_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_log_user_id_1003e839_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_log_thing_id_7306f624_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_log_user_id_1003e839_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (1, '西安', '2023-06-15 18:50:57.821930');
INSERT INTO `b_tag` VALUES (2, '广州', '2023-06-15 18:51:03.152166');
INSERT INTO `b_tag` VALUES (3, '洛阳', '2023-06-15 18:51:09.206755');
INSERT INTO `b_tag` VALUES (4, '青岛', '2023-06-15 18:51:14.512740');
INSERT INTO `b_tag` VALUES (5, '厦门', '2023-06-15 18:51:19.101560');
INSERT INTO `b_tag` VALUES (6, '乌鲁木齐', '2023-06-15 18:51:24.081364');
INSERT INTO `b_tag` VALUES (7, '拉萨', '2023-06-15 18:51:28.724275');
INSERT INTO `b_tag` VALUES (8, '上海', '2023-06-15 18:51:44.253045');
INSERT INTO `b_tag` VALUES (9, '苏州', '2023-06-15 18:51:47.836827');
INSERT INTO `b_tag` VALUES (10, '北京', '2023-06-16 17:53:28.879021');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repertory` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '北京故宫', 'cover/1686909170444.jpeg', '故宫又称紫禁城，是明、清两代的皇宫，也是古老中国的标志和象征。当你置身于气派规整的高墙深院，能真真切切地感受到它曾经的荣耀。悠久的历史给这里留下了大规模的珍贵建筑和无数文物，也成为今天游玩故宫的主要看点。2023年11月1日-次年2023年3月31日 周二-周日 08:30-16:30,（15:40停止入园）；2023年4月1日-2023年10月31日 周二-周日 08:30-17:00,（16:10停止入园）；全年 周一；清明节,劳动节,端午节,中秋节,国庆节 07:30-17:00开放（16:10停止入园），元旦节,春节 08:30-16:30开放（15:40停止入园）；法定节假日周一不闭馆；停止入园时间含钟表馆、珍宝馆', '120', '北京市西城区', '5A', '0', 0, 0, '2023-06-15 18:56:40.338290', 0, 0, 0, 1, 4);
INSERT INTO `b_thing` VALUES (2, '上海外滩', 'cover/1686909254559.jpeg', '2023年11月1日-次年2023年3月31日 周二-周日 08:30-16:30,（15:40停止入园）；2023年4月1日-2023年10月31日 周二-周日 08:30-17:00,（16:10停止入园）；全年 周一；清明节,劳动节,端午节,中秋节,国庆节 07:30-17:00开放（16:10停止入园），元旦节,春节 08:30-16:30开放（15:40停止入园）；法定节假日周一不闭馆；停止入园时间含钟表馆、珍宝馆', '330', '上海市浦东新区东方明珠广播电视塔', '5A', '0', 0, 0, '2023-06-16 17:28:58.922989', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (3, '苏州园林', 'cover/1686911477890.jpeg', '我国第一条越江行人隧道。游客可以乘坐全透明观光车在色彩变换不断的隧道中穿越黄浦江，犹如时空穿梭一般。隧道内壁有各种奇异的色彩变换不停，音响效果与眼前的景观变幻相结合，营造出一种身临其境的震撼。\r\n\r\n隧道包括“时光隧道区”，“穿梭区” 和“岩浆喷射区”等主题，绚丽的光影效果让人感觉仿佛进入另一般天地。此外，隧道里新增了“音幻世界”、“深海珍奇展”等休闲游乐项目，适合游客带上孩子一起在假日里好好玩上一把。\r\n\r\n隧道的周边还有环球猎奇馆以及3D魔幻趣味馆，适合游客拍照取景。之后，游客们也可以在南京路步行街体验小吃和购物，有时间的游客可以一并游玩周边的东方明珠，外滩等上海地标型景点。', '100', '苏州xxx路', '5A', '0', 0, 0, '2023-06-16 18:32:03.085061', 0, 0, 0, 0, 3);
INSERT INTO `b_thing` VALUES (4, '布达拉宫', 'cover/1686911528306.jpeg', '我国第一条越江行人隧道。游客可以乘坐全透明观光车在色彩变换不断的隧道中穿越黄浦江，犹如时空穿梭一般。隧道内壁有各种奇异的色彩变换不停，音响效果与眼前的景观变幻相结合，营造出一种身临其境的震撼。\r\n\r\n隧道包括“时光隧道区”，“穿梭区” 和“岩浆喷射区”等主题，绚丽的光影效果让人感觉仿佛进入另一般天地。此外，隧道里新增了“音幻世界”、“深海珍奇展”等休闲游乐项目，适合游客带上孩子一起在假日里好好玩上一把。\r\n\r\n隧道的周边还有环球猎奇馆以及3D魔幻趣味馆，适合游客拍照取景。之后，游客们也可以在南京路步行街体验小吃和购物，有时间的游客可以一并游玩周边的东方明珠，外滩等上海地标型景点。', '200', '拉萨', '4A', '0', 0, 0, '2023-06-16 18:32:27.344175', 0, 0, 0, 0, 2);
INSERT INTO `b_thing` VALUES (5, '新疆玉龙雪山', 'cover/1686911553036.jpeg', '我国第一条越江行人隧道。游客可以乘坐全透明观光车在色彩变换不断的隧道中穿越黄浦江，犹如时空穿梭一般。隧道内壁有各种奇异的色彩变换不停，音响效果与眼前的景观变幻相结合，营造出一种身临其境的震撼。\r\n\r\n隧道包括“时光隧道区”，“穿梭区” 和“岩浆喷射区”等主题，绚丽的光影效果让人感觉仿佛进入另一般天地。此外，隧道里新增了“音幻世界”、“深海珍奇展”等休闲游乐项目，适合游客带上孩子一起在假日里好好玩上一把。\r\n\r\n隧道的周边还有环球猎奇馆以及3D魔幻趣味馆，适合游客拍照取景。之后，游客们也可以在南京路步行街体验小吃和购物，有时间的游客可以一并游玩周边的东方明珠，外滩等上海地标型景点。', '200', '新疆哈哈哈路', '5A', '0', 0, 0, '2023-06-16 18:33:05.841939', 0, 0, 0, 0, 1);
INSERT INTO `b_thing` VALUES (6, '厦门鼓浪屿', 'cover/1686911594754.jpeg', '我国第一条越江行人隧道。游客可以乘坐全透明观光车在色彩变换不断的隧道中穿越黄浦江，犹如时空穿梭一般。隧道内壁有各种奇异的色彩变换不停，音响效果与眼前的景观变幻相结合，营造出一种身临其境的震撼。\r\n\r\n隧道包括“时光隧道区”，“穿梭区” 和“岩浆喷射区”等主题，绚丽的光影效果让人感觉仿佛进入另一般天地。此外，隧道里新增了“音幻世界”、“深海珍奇展”等休闲游乐项目，适合游客带上孩子一起在假日里好好玩上一把。\r\n\r\n隧道的周边还有环球猎奇馆以及3D魔幻趣味馆，适合游客拍照取景。之后，游客们也可以在南京路步行街体验小吃和购物，有时间的游客可以一并游玩周边的东方明珠，外滩等上海地标型景点。', '300', '厦门', '5A', '0', 0, 0, '2023-06-16 18:33:33.732915', 0, 0, 0, 0, 5);
INSERT INTO `b_thing` VALUES (7, '青岛海水浴场', 'cover/1686911634064.jpeg', '我国第一条越江行人隧道。游客可以乘坐全透明观光车在色彩变换不断的隧道中穿越黄浦江，犹如时空穿梭一般。隧道内壁有各种奇异的色彩变换不停，音响效果与眼前的景观变幻相结合，营造出一种身临其境的震撼。\r\n\r\n隧道包括“时光隧道区”，“穿梭区” 和“岩浆喷射区”等主题，绚丽的光影效果让人感觉仿佛进入另一般天地。此外，隧道里新增了“音幻世界”、“深海珍奇展”等休闲游乐项目，适合游客带上孩子一起在假日里好好玩上一把。\r\n\r\n隧道的周边还有环球猎奇馆以及3D魔幻趣味馆，适合游客拍照取景。之后，游客们也可以在南京路步行街体验小吃和购物，有时间的游客可以一并游玩周边的东方明珠，外滩等上海地标型景点。', '200', '青岛', '4A', '0', 0, 0, '2023-06-16 18:34:36.023469', 0, 0, 1, 1, 5);
INSERT INTO `b_thing` VALUES (8, '洛阳故城', 'cover/1686911681078.jpeg', '我国第一条越江行人隧道。游客可以乘坐全透明观光车在色彩变换不断的隧道中穿越黄浦江，犹如时空穿梭一般。隧道内壁有各种奇异的色彩变换不停，音响效果与眼前的景观变幻相结合，营造出一种身临其境的震撼。\r\n\r\n隧道包括“时光隧道区”，“穿梭区” 和“岩浆喷射区”等主题，绚丽的光影效果让人感觉仿佛进入另一般天地。此外，隧道里新增了“音幻世界”、“深海珍奇展”等休闲游乐项目，适合游客带上孩子一起在假日里好好玩上一把。\r\n\r\n隧道的周边还有环球猎奇馆以及3D魔幻趣味馆，适合游客拍照取景。之后，游客们也可以在南京路步行街体验小吃和购物，有时间的游客可以一并游玩周边的东方明珠，外滩等上海地标型景点。', '200', '洛阳', '3A', '0', 0, 0, '2023-06-16 18:35:06.341064', 0, 0, 0, 0, 4);
INSERT INTO `b_thing` VALUES (9, '西安网红打卡地', 'cover/1686911710858.jpeg', '我国第一条越江行人隧道。游客可以乘坐全透明观光车在色彩变换不断的隧道中穿越黄浦江，犹如时空穿梭一般。隧道内壁有各种奇异的色彩变换不停，音响效果与眼前的景观变幻相结合，营造出一种身临其境的震撼。\r\n\r\n隧道包括“时光隧道区”，“穿梭区” 和“岩浆喷射区”等主题，绚丽的光影效果让人感觉仿佛进入另一般天地。此外，隧道里新增了“音幻世界”、“深海珍奇展”等休闲游乐项目，适合游客带上孩子一起在假日里好好玩上一把。\r\n\r\n隧道的周边还有环球猎奇馆以及3D魔幻趣味馆，适合游客拍照取景。之后，游客们也可以在南京路步行街体验小吃和购物，有时间的游客可以一并游玩周边的东方明珠，外滩等上海地标型景点。', '200', '西安', '4A', '0', 0, 0, '2023-06-16 18:35:37.748915', 0, 0, 0, 0, 2);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 1, 2);
INSERT INTO `b_thing_collect` VALUES (2, 7, 4);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` VALUES (1, 1, 9);
INSERT INTO `b_thing_tag` VALUES (2, 2, 8);
INSERT INTO `b_thing_tag` VALUES (3, 3, 9);
INSERT INTO `b_thing_tag` VALUES (4, 4, 7);
INSERT INTO `b_thing_tag` VALUES (5, 5, 6);
INSERT INTO `b_thing_tag` VALUES (6, 6, 5);
INSERT INTO `b_thing_tag` VALUES (7, 7, 5);
INSERT INTO `b_thing_tag` VALUES (8, 8, 3);
INSERT INTO `b_thing_tag` VALUES (9, 9, 1);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 7, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ccc', '9df62e693988eb4e1e1444ece0578579', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-16 17:42:05.342430', 0, NULL, 0, NULL, '9df62e693988eb4e1e1444ece0578579');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-17 10:03:23.407860', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'dddd', '11ddbaf3386aea1f2974eee984542152', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-17 10:04:03.371144', 0, NULL, 0, NULL, '11ddbaf3386aea1f2974eee984542152');
INSERT INTO `b_user` VALUES (5, 'eeee', '670da91be64127c92faac35c8300e814', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-17 10:08:31.866861', 0, NULL, 0, NULL, '670da91be64127c92faac35c8300e814');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-06-15 18:04:57.455031');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-06-15 18:04:57.762650');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-06-15 18:04:57.833305');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-15 18:04:57.840889');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-15 18:04:57.847228');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-15 18:04:57.929365');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-06-15 18:04:57.994944');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-06-15 18:04:58.045049');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-06-15 18:04:58.055892');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-06-15 18:04:58.105034');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-06-15 18:04:58.109018');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-15 18:04:58.117203');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-06-15 18:04:58.169959');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-15 18:04:58.225769');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-06-15 18:04:58.288091');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-06-15 18:04:58.297984');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-15 18:04:58.351531');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-06-15 18:04:59.088869');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2023-06-15 18:04:59.134527');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
