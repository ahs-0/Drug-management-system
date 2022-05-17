/*
 Navicat Premium Data Transfer

 Source Server         : ysx
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : drog

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 17/05/2022 10:31:45
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
INSERT INTO `auth_permission` VALUES (25, 'Can add medicine', 7, 'add_medicine');
INSERT INTO `auth_permission` VALUES (26, 'Can change medicine', 7, 'change_medicine');
INSERT INTO `auth_permission` VALUES (27, 'Can delete medicine', 7, 'delete_medicine');
INSERT INTO `auth_permission` VALUES (28, 'Can view medicine', 7, 'view_medicine');
INSERT INTO `auth_permission` VALUES (29, 'Can add msg', 8, 'add_msg');
INSERT INTO `auth_permission` VALUES (30, 'Can change msg', 8, 'change_msg');
INSERT INTO `auth_permission` VALUES (31, 'Can delete msg', 8, 'delete_msg');
INSERT INTO `auth_permission` VALUES (32, 'Can view msg', 8, 'view_msg');
INSERT INTO `auth_permission` VALUES (33, 'Can add drug evaluate', 9, 'add_drugevaluate');
INSERT INTO `auth_permission` VALUES (34, 'Can change drug evaluate', 9, 'change_drugevaluate');
INSERT INTO `auth_permission` VALUES (35, 'Can delete drug evaluate', 9, 'delete_drugevaluate');
INSERT INTO `auth_permission` VALUES (36, 'Can view drug evaluate', 9, 'view_drugevaluate');
INSERT INTO `auth_permission` VALUES (37, 'Can add user evaluate', 10, 'add_userevaluate');
INSERT INTO `auth_permission` VALUES (38, 'Can change user evaluate', 10, 'change_userevaluate');
INSERT INTO `auth_permission` VALUES (39, 'Can delete user evaluate', 10, 'delete_userevaluate');
INSERT INTO `auth_permission` VALUES (40, 'Can view user evaluate', 10, 'view_userevaluate');
INSERT INTO `auth_permission` VALUES (41, 'Can add doctor evaluate', 11, 'add_doctorevaluate');
INSERT INTO `auth_permission` VALUES (42, 'Can change doctor evaluate', 11, 'change_doctorevaluate');
INSERT INTO `auth_permission` VALUES (43, 'Can delete doctor evaluate', 11, 'delete_doctorevaluate');
INSERT INTO `auth_permission` VALUES (44, 'Can view doctor evaluate', 11, 'view_doctorevaluate');

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (11, 'doctorEvaluate', 'doctorevaluate');
INSERT INTO `django_content_type` VALUES (9, 'drugEvaluate', 'drugevaluate');
INSERT INTO `django_content_type` VALUES (7, 'medicine', 'medicine');
INSERT INTO `django_content_type` VALUES (8, 'Msg', 'msg');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'userEvaluate', 'userevaluate');

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
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'Msg', '0001_initial', '2022-05-15 01:43:45.617066');
INSERT INTO `django_migrations` VALUES (2, 'Msg', '0002_alter_msg_adverse_reaction_alter_msg_component_and_more', '2022-05-15 01:43:45.628295');
INSERT INTO `django_migrations` VALUES (3, 'contenttypes', '0001_initial', '2022-05-15 01:43:45.652050');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0001_initial', '2022-05-15 01:43:45.892165');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0001_initial', '2022-05-15 01:43:45.957988');
INSERT INTO `django_migrations` VALUES (6, 'admin', '0002_logentry_remove_auto_add', '2022-05-15 01:43:45.966964');
INSERT INTO `django_migrations` VALUES (7, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-15 01:43:45.975940');
INSERT INTO `django_migrations` VALUES (8, 'contenttypes', '0002_remove_content_type_name', '2022-05-15 01:43:46.026871');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0002_alter_permission_name_max_length', '2022-05-15 01:43:46.056724');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0003_alter_user_email_max_length', '2022-05-15 01:43:46.089682');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0004_alter_user_username_opts', '2022-05-15 01:43:46.100606');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0005_alter_user_last_login_null', '2022-05-15 01:43:46.130526');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0006_require_contenttypes_0002', '2022-05-15 01:43:46.133520');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0007_alter_validators_add_error_messages', '2022-05-15 01:43:46.142494');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0008_alter_user_username_max_length', '2022-05-15 01:43:46.174261');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0009_alter_user_last_name_max_length', '2022-05-15 01:43:46.205531');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0010_alter_group_name_max_length', '2022-05-15 01:43:46.239663');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0011_update_proxy_permissions', '2022-05-15 01:43:46.249636');
INSERT INTO `django_migrations` VALUES (19, 'auth', '0012_alter_user_first_name_max_length', '2022-05-15 01:43:46.280555');
INSERT INTO `django_migrations` VALUES (20, 'doctorEvaluate', '0001_initial', '2022-05-15 01:43:46.293519');
INSERT INTO `django_migrations` VALUES (21, 'doctorEvaluate', '0002_alter_doctorevaluate_doctor_evaluation', '2022-05-15 01:43:46.298507');
INSERT INTO `django_migrations` VALUES (22, 'drugEvaluate', '0001_initial', '2022-05-15 01:43:46.311473');
INSERT INTO `django_migrations` VALUES (23, 'drugEvaluate', '0002_alter_drugevaluate_drug_evaluation', '2022-05-15 01:43:46.316457');
INSERT INTO `django_migrations` VALUES (24, 'medicine', '0001_initial', '2022-05-15 01:43:46.329423');
INSERT INTO `django_migrations` VALUES (25, 'medicine', '0002_medicine_factory_and_more', '2022-05-15 01:43:46.361337');
INSERT INTO `django_migrations` VALUES (26, 'sessions', '0001_initial', '2022-05-15 01:43:46.384277');
INSERT INTO `django_migrations` VALUES (27, 'userEvaluate', '0001_initial', '2022-05-15 01:43:46.397110');
INSERT INTO `django_migrations` VALUES (28, 'userEvaluate', '0002_alter_userevaluate_user_evaluation', '2022-05-15 01:43:46.401842');

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

-- ----------------------------
-- Table structure for doctorevaluate_doctorevaluate
-- ----------------------------
DROP TABLE IF EXISTS `doctorevaluate_doctorevaluate`;
CREATE TABLE `doctorevaluate_doctorevaluate`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doctor_evaluation` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctorevaluate_doctorevaluate
-- ----------------------------

-- ----------------------------
-- Table structure for drugevaluate_drugevaluate
-- ----------------------------
DROP TABLE IF EXISTS `drugevaluate_drugevaluate`;
CREATE TABLE `drugevaluate_drugevaluate`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `drug_evaluation` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drugevaluate_drugevaluate
-- ----------------------------

-- ----------------------------
-- Table structure for medicine_medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine_medicine`;
CREATE TABLE `medicine_medicine`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `english_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pinyin` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `medicine_type` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prescription_type` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Type_of_medical_insurance` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `factory` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medicine_medicine
-- ----------------------------
INSERT INTO `medicine_medicine` VALUES (1, '维生素B片', '/static/img/8a2c91bf5673265201567374d9020512.jpg', 'Compound Vitamin B Tablets', 'Fuhe Weishengsu B Pian', '维生素类药', '处方药/OTC乙类', '非医保/医保乙类', 3, '天津亚宝药业科技有限公司');
INSERT INTO `medicine_medicine` VALUES (2, '阿莫西林胶囊', '/static/img/1.png', 'amoxicillin capsules', 'AMoXiLin Jiaonang', '消炎类药', '处方药', '非医保', 14, '哈药集团三精明水药业有限公司');
INSERT INTO `medicine_medicine` VALUES (3, '复方感冒灵颗粒', '/static/img/201696155040275!320x320.jpg', '\r\n复方感冒灵颗粒\r\nCompound Ganmaoling granule', 'Fufang ganmaolingkeli', '感冒类药', '处方药', '非医保', 14, '华润三九(郴州)制药有限公司');

-- ----------------------------
-- Table structure for msg_msg
-- ----------------------------
DROP TABLE IF EXISTS `msg_msg`;
CREATE TABLE `msg_msg`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `component` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `effect` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dosage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adverse_reaction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg_msg
-- ----------------------------
INSERT INTO `msg_msg` VALUES (1, '维生素B片', '本品为复方制剂，每片含主要成份：维生素 B13 毫克，维生素 B21.5 毫克，维生素 B60.2 毫克，烟酰胺 10 毫克，泛酸钙 1 毫克。辅料为淀粉、蔗糖、糊精、硬脂酸镁。', '预防和治疗 B 族维生素缺乏所致的营养不良、厌食、脚气病、糙皮病等。', '口服。成人一次 1~3 片，儿童一次 1~2 片；一日 3 次。', '大剂量服用可出现烦躁、疲倦、食欲减退等。。', '大剂量服用可出现烦躁、疲倦、食欲减退等。');
INSERT INTO `msg_msg` VALUES (2, '阿莫西林胶囊', '本品主要成份为阿莫西林。', '阿莫西林适用于敏感菌（不产-内酰胺酶菌株）所致的成人与儿童的感染', '口服，不能打开胶囊，用水送服。食物不影响本品的吸收。', '口服，不能打开胶囊，用水送服。食物不影响本品的吸收。', '过敏反应，非敏感微生物，抽搐,肾功能损害等症状需就医');
INSERT INTO `msg_msg` VALUES (3, '复方感冒灵颗粒', '金银花、五指柑、野菊花、三叉苦、南板蓝根、岗梅、对乙酰氨基酚、马来酸氯苯那敏、咖啡因。辅料为蔗糖。', '辛凉解表，清热解毒。用于风热感冒之发热，微恶风寒，头身痛，口干而渴，鼻塞涕浊，咽喉红肿疼痛，咳嗽，痰黄粘稠。', '用开水冲服，一次 14 克，一日 3 次；二天为一疗程。', '可见困倦、嗜睡、口渴、虚弱感；偶见皮疹、荨麻疹、药热及粒细胞减少；长期大量用药会导致肝肾功能异常。', '严重肝肾功能不全者禁用。忌烟，酒及辛辣，生冷，油腻食物。不宜在服药期间同时服用滋补性中药。');

-- ----------------------------
-- Table structure for userevaluate_userevaluate
-- ----------------------------
DROP TABLE IF EXISTS `userevaluate_userevaluate`;
CREATE TABLE `userevaluate_userevaluate`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_evaluation` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userevaluate_userevaluate
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
