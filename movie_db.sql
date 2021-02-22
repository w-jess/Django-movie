/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : movie_db

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 22/02/2021 21:43:06
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
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (25, 'Can add collect', 7, 'add_collect');
INSERT INTO `auth_permission` VALUES (26, 'Can change collect', 7, 'change_collect');
INSERT INTO `auth_permission` VALUES (27, 'Can delete collect', 7, 'delete_collect');
INSERT INTO `auth_permission` VALUES (28, 'Can view collect', 7, 'view_collect');
INSERT INTO `auth_permission` VALUES (29, 'Can add comment', 8, 'add_comment');
INSERT INTO `auth_permission` VALUES (30, 'Can change comment', 8, 'change_comment');
INSERT INTO `auth_permission` VALUES (31, 'Can delete comment', 8, 'delete_comment');
INSERT INTO `auth_permission` VALUES (32, 'Can view comment', 8, 'view_comment');
INSERT INTO `auth_permission` VALUES (33, 'Can add history', 9, 'add_history');
INSERT INTO `auth_permission` VALUES (34, 'Can change history', 9, 'change_history');
INSERT INTO `auth_permission` VALUES (35, 'Can delete history', 9, 'delete_history');
INSERT INTO `auth_permission` VALUES (36, 'Can view history', 9, 'view_history');
INSERT INTO `auth_permission` VALUES (37, 'Can add movie', 10, 'add_movie');
INSERT INTO `auth_permission` VALUES (38, 'Can change movie', 10, 'change_movie');
INSERT INTO `auth_permission` VALUES (39, 'Can delete movie', 10, 'delete_movie');
INSERT INTO `auth_permission` VALUES (40, 'Can view movie', 10, 'view_movie');
INSERT INTO `auth_permission` VALUES (41, 'Can add user', 11, 'add_user');
INSERT INTO `auth_permission` VALUES (42, 'Can change user', 11, 'change_user');
INSERT INTO `auth_permission` VALUES (43, 'Can delete user', 11, 'delete_user');
INSERT INTO `auth_permission` VALUES (44, 'Can view user', 11, 'view_user');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$216000$4I8JdryXeuYw$XgilpdlBsG5kfO/8USD8RyUaNofeSxLaskJYFjpxCe4=', '2021-02-10 17:45:22.243757', 1, 'wu', '', '', '', 1, 1, '2021-02-03 14:48:09.420381');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `col_id` int(11) NOT NULL AUTO_INCREMENT,
  `col_m_id` int(11) NOT NULL,
  `col_u_id` int(11) NOT NULL,
  `col_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`col_id`) USING BTREE,
  INDEX `col_m_id`(`col_m_id`) USING BTREE,
  INDEX `col_u_id`(`col_u_id`) USING BTREE,
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`col_m_id`) REFERENCES `movie` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `collect_ibfk_2` FOREIGN KEY (`col_u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_m_id` int(11) NOT NULL,
  `c_u_id` int(11) NOT NULL,
  `c_ctime` datetime(0) NULL DEFAULT NULL,
  `c_playtime` int(11) NOT NULL,
  `c_content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`c_id`) USING BTREE,
  INDEX `c_m_id`(`c_m_id`) USING BTREE,
  INDEX `c_u_id`(`c_u_id`) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`c_m_id`) REFERENCES `movie` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`c_u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (78, 3, 11, NULL, 19, '666');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2021-02-10 17:45:51.494822', '4', 'Movie object (4)', 2, '[{\"changed\": {\"fields\": [\"M type\"]}}]', 10, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'movie_app', 'collect');
INSERT INTO `django_content_type` VALUES (8, 'movie_app', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'movie_app', 'history');
INSERT INTO `django_content_type` VALUES (10, 'movie_app', 'movie');
INSERT INTO `django_content_type` VALUES (11, 'movie_app', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-01-28 08:44:29.610645');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-01-28 08:44:31.951315');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-01-28 08:44:39.098536');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-01-28 08:44:40.667027');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-28 08:44:40.706099');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-01-28 08:44:41.810081');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-01-28 08:44:43.406006');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-01-28 08:44:44.229229');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-01-28 08:44:44.264136');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-01-28 08:44:44.875920');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-01-28 08:44:44.927931');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-28 08:44:44.982785');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-01-28 08:44:45.715449');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-28 08:44:46.424553');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-01-28 08:44:47.364562');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-01-28 08:44:47.397474');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-28 08:44:48.167613');
INSERT INTO `django_migrations` VALUES (18, 'movie_app', '0001_initial', '2021-01-28 08:44:48.198531');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2021-01-28 08:44:48.520278');

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
INSERT INTO `django_session` VALUES ('0ceg4w6s37xey04d7fcuzui2gnarn3uy', '.eJxVjDsOwjAQBe_iGlmYxZ-lpM8ZorV3jQPIluKkQtwdIqWA9s3Me6mR1qWMa5d5nFhdlFGH3y1SekjdAN-p3ppOrS7zFPWm6J12PTSW53V3_w4K9fKtnc0-ArogNiWIxpEQhvOJPTJBppDZGZYk4q1YRM8ZslgyHhKgOar3BwM8OLU:1l7JSD:t6oqgUzL_f6EhoNq3F67wfsTrVFRjYrE9035sFYbjIM', '2021-02-17 14:48:25.126490');
INSERT INTO `django_session` VALUES ('qr9ngdn8y5xp3aw8fnigtk1avl97iehq', '.eJxVjDsOwjAQBe_iGlmYxZ-lpM8ZorV3jQPIluKkQtwdIqWA9s3Me6mR1qWMa5d5nFhdlFGH3y1SekjdAN-p3ppOrS7zFPWm6J12PTSW53V3_w4K9fKtnc0-ArogNiWIxpEQhvOJPTJBppDZGZYk4q1YRM8ZslgyHhKgOar3BwM8OLU:1l9tYI:DUcGAXY7__LraYW9QOJZcxKgZ0shGHi54uMrQ9-xWwY', '2021-02-24 17:45:22.289354');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_m_id` int(11) NOT NULL,
  `h_u_id` int(11) NOT NULL,
  `h_viewingtime` datetime(0) NOT NULL,
  `h_duration` int(11) NOT NULL,
  PRIMARY KEY (`h_id`) USING BTREE,
  INDEX `h_m_id`(`h_m_id`) USING BTREE,
  INDEX `h_u_id`(`h_u_id`) USING BTREE,
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`h_m_id`) REFERENCES `movie` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `history_ibfk_2` FOREIGN KEY (`h_u_id`) REFERENCES `user` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_actors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_directors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_nation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_releaseDate` date NULL DEFAULT NULL,
  `m_duration` int(10) NULL DEFAULT NULL,
  `m_introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_scenario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_poster` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_score` double(11, 0) NULL DEFAULT NULL,
  `m_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '复仇者联盟', ' 克里斯·埃文斯、小罗伯特·唐尼', '乔斯·韦登', '美国', NULL, 142, NULL, '美国队长在被冰封数年后，终于苏醒过来。这个世界已经不再是他过去所熟悉的样子，各类型的邪恶对手层出不穷，整个社会动荡不安，单靠一个人的力量已无法拯救世界。于是美国队长、钢铁侠、雷神、绿巨人等超级英雄聚集在一起，组成史上最强大的“复仇者”团队，共同惩恶扬善，为和平而战。', 'img/复仇者联盟.webp', NULL, 'https://www.iqiyi.com/v_19rrk4egc4.html', '科幻 巨制');
INSERT INTO `movie` VALUES (2, '复仇者联盟2：奥创纪元', ' 克里斯·埃文斯、小罗伯特·唐尼', '乔斯·韦登', '美国', NULL, 150, NULL, '托尼·斯塔克试图重启一个已经废弃的维和项目，不料该项目却成为危机导火索。世上最强大的超级英雄——钢铁侠、美国队长、雷神、绿巨人、黑寡妇和鹰眼，不得不接受终极考验，拯救危在旦夕的地球。神秘反派奥创逐渐崛起，超级英雄们必须重新集结，竭力阻止奥创实施人类灭绝计划。', 'img/复仇者联盟2.webp', NULL, 'https://www.iqiyi.com/v_19rrodq1gc.html', '科幻 巨制');
INSERT INTO `movie` VALUES (3, '复仇者联盟3：无限战争', ' 克里斯·埃文斯、小罗伯特·唐尼', '安东尼·卢素', '美国', NULL, 150, NULL, '《复仇者联盟3：无限战争》是漫威电影宇宙10周年的历史性集结，将为影迷们带来史诗版的终极对决。面对灭霸突然发起的闪电袭击，复仇者联盟及其所有超级英雄盟友必须全力以赴，才能阻止他对全宇宙造成毁灭性的打击。', 'img/复仇者联盟3.webp', NULL, 'https://www.iqiyi.com/v_19rr7q1fyc.html', '科幻 巨制');
INSERT INTO `movie` VALUES (4, '复仇者联盟4：终局之战', ' 小罗伯特·唐尼、乔什·布洛林、马克·鲁弗洛', '安东尼·卢素', '美国', NULL, 181, NULL, '《复仇者联盟4》（Untitled Avengers film）是未上映的美国超级英雄电影，改编自漫威漫画，也是漫威电影宇宙第22部影片。由安东尼·罗素和乔·罗素执导，小罗伯特·唐尼、乔什·布洛林、马克·鲁法洛、汤姆·希德勒斯顿、克里斯·埃文斯、汤姆·赫兰德等主演。最终定档于2019年5月3日在美国上映。', 'img/复仇者联盟4.webp', NULL, 'https://www.iqiyi.com/v_19rr7q1fy0.html', '科幻 巨制');
INSERT INTO `movie` VALUES (5, '夏洛特烦恼', '沈腾、马丽、尹正、艾伦、王智', '闫非、彭大魔', '中国', NULL, 104, NULL, '在学生时代的初恋秋雅的婚礼上，毕业后吃软饭靠老婆养的夏洛假充大款，出尽其丑，中间还被老婆马冬梅戳穿暴捶。混乱之中，夏洛意外穿越时空，回到了1997年的学生时代的课堂里。他懵懵懂懂，以为是场真实感极强的梦，于是痛揍王老师，强吻秋雅，还尝试跳楼让自己醒来。当受伤的他从病床上苏醒时，他意识到自己真的穿越了时空。既然有机会重新来过，那不如好好折腾一回。他勇敢追求秋雅、奚落优等生袁华、拒绝马冬梅的死缠烂打。后来夏洛凭借“创作”朴树、窦唯等人的成名曲而进入娱乐圈。', 'img/夏洛特烦恼.webp', NULL, 'https://www.iqiyi.com/v_19rrkbqj9o.html', '喜剧 爱情');
INSERT INTO `movie` VALUES (6, '西虹市首富', '沈腾、宋芸桦、张一鸣、张晨光、常远', '闫非、彭大魔', '中国', NULL, 118, NULL, '西虹市丙级球队大翔队的守门员王多鱼因比赛失利被教练开除，一筹莫展之际王多鱼突然收到神秘人士金老板的邀请，被告知自己竟然是保险大亨王老太爷的唯一继承人，遗产高达百亿！但是王老太爷给出了一个非常奇葩的条件，那就是要求王多鱼在一个月内花光十亿，还不能告诉身边人，否则失去继承权。王多鱼毫不犹豫签下了“军令状”，与好友庄强以及财务夏竹一起开启了“挥金之旅”，即将成为西虹市首富的王多鱼，第一次感受到了做富人的快乐，同时也发现想要挥金如土实在没有那么简单!', 'img/西虹市首富.webp', NULL, 'https://www.iqiyi.com/v_19rrf2nw1g.html', '喜剧');
INSERT INTO `movie` VALUES (7, '哈尔的移动城堡\r\n', '倍赏千惠子、木村拓哉、美轮明宏', '宫崎骏', '日本', NULL, 119, NULL, '\r\n该片改编自英国的儿童小说家黛安娜·W·琼斯的《魔法师哈威尔与火之恶魔》。该片以战争前夜为背景，描述住在小镇的三姐妹，其中的大姐苏菲是位制作帽子的专家，但她却因此得罪了女巫，从18岁的美少女变成了90岁的老太婆。她惊恐地逃出家里，但又进入了一座移动的城堡，她和不能与人相恋但懂魔法的哈尔，谱出了一段战地恋曲，并且和城堡里的其他人一起想办法解开身上的魔咒。其中的城堡部分带有19世纪末钢铁工厂的特殊风格。', 'img/哈尔.webp', NULL, 'https://www.iqiyi.com/v_19rsf9ksis.html', '动漫 冒险\r\n');
INSERT INTO `movie` VALUES (8, '中国机长', '张涵予、欧豪、杜江、袁泉', ' 刘伟强', '中国', NULL, 111, '', '根据2018年5月14日四川航空3U8633航班机组成功处置特情真实事件改编。机组执行航班任务时，在万米高空突遇驾驶舱风挡玻璃爆裂脱落、座舱释压的极端罕见险情，生死关头，他们临危不乱、果断应对、正确处置，确保了机上全部人员的生命安全，创造了世界民航史上的奇迹。', 'img/中国机长.webp', NULL, 'https://www.iqiyi.com/v_19rsho7kz8.html', '巨制 冒险');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_age` int(11) NULL DEFAULT NULL,
  `u_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_head_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE INDEX `u_username`(`u_username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (10, '123', '123', '', '', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (11, '666', '666', '21223358', '', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
