/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : api_lesson

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-07 08:06:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for master_customer
-- ----------------------------
DROP TABLE IF EXISTS `master_customer`;
CREATE TABLE `master_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `phone1` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `phone2` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `active_hash` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `recover_hash` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `statusMobile` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of master_customer
-- ----------------------------
INSERT INTO `master_customer` VALUES ('1', 'Franz Kafka', 'Jl. Imogiri Barat No. 12 Yogyakarta', '087754321190', '', 'franz@yahoo.com', null, null, null, '1', '0', null, '2017-08-04 04:28:33');
INSERT INTO `master_customer` VALUES ('2', 'Dewi Sandrax', 'Jl. Kalimantan Raya No. 20 A Jakarta Barat 11530. INDONESIA', '0811987756', '0274555666', 'abc@abc.com', null, null, null, '1', '0', null, '2017-08-06 15:38:43');

-- ----------------------------
-- Table structure for master_merk
-- ----------------------------
DROP TABLE IF EXISTS `master_merk`;
CREATE TABLE `master_merk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of master_merk
-- ----------------------------
INSERT INTO `master_merk` VALUES ('1', 'JB', '1', null, null);
INSERT INTO `master_merk` VALUES ('2', 'GS', '1', null, null);
INSERT INTO `master_merk` VALUES ('3', 'GSY', '1', null, null);
INSERT INTO `master_merk` VALUES ('4', 'INCOE', '1', '2017-07-30 00:00:00', '2017-07-30 00:00:00');
INSERT INTO `master_merk` VALUES ('5', 'YUASA', '1', '2017-07-30 00:00:00', '2017-07-30 00:00:00');
INSERT INTO `master_merk` VALUES ('6', 'ROCKET', '1', '2017-07-31 00:00:00', '2017-07-31 00:00:00');
INSERT INTO `master_merk` VALUES ('7', 'X123', '1', '2017-07-31 00:00:00', '2017-07-31 00:00:00');
INSERT INTO `master_merk` VALUES ('8', '1234', '1', '2017-07-31 00:00:00', '2017-07-31 00:00:00');
INSERT INTO `master_merk` VALUES ('9', '112233', '1', '2017-07-31 00:00:00', '2017-07-31 00:00:00');
INSERT INTO `master_merk` VALUES ('10', 'as', '0', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('11', 'ac', '0', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('12', 'as', '0', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('13', 'abc', '0', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('14', 'Rocket', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('15', 'xfiles', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('16', 'afsfsa', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('17', 'sdfsdf', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('18', 'asskk', '0', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('19', 'asdasd', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('20', 'qweqwe', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('21', 'qwedsf', '0', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('22', 'zxc', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('23', 'asdasd', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('24', 'qweq', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('25', 'qaqa', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('26', 'adasdasd', '0', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('27', 'asdasdxzc', '0', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('28', 'hahaha', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('29', 'cvxcv', '1', '2017-08-01 00:00:00', '2017-08-02 00:00:00');
INSERT INTO `master_merk` VALUES ('30', 'zxczx', '1', '2017-08-01 00:00:00', '2017-08-01 00:00:00');
INSERT INTO `master_merk` VALUES ('31', 'merk', '1', '2017-08-01 00:00:00', '2017-08-02 00:00:00');
INSERT INTO `master_merk` VALUES ('32', 'tambahan', '1', '2017-08-02 00:00:00', '2017-08-02 04:03:21');
INSERT INTO `master_merk` VALUES ('33', 'aiox', '1', '2017-08-02 00:00:00', '2017-08-04 04:22:54');

-- ----------------------------
-- Table structure for master_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `master_pembayaran`;
CREATE TABLE `master_pembayaran` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` date DEFAULT NULL,
  `udpated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_pembayaran
-- ----------------------------
INSERT INTO `master_pembayaran` VALUES ('1', 'Cash On Delivery', null, null);
INSERT INTO `master_pembayaran` VALUES ('2', 'Transfer Bank', null, null);
INSERT INTO `master_pembayaran` VALUES ('3', 'Kartu Debit', null, null);
INSERT INTO `master_pembayaran` VALUES ('4', 'Kartu Kredit', null, null);
INSERT INTO `master_pembayaran` VALUES ('5', 'Cash', null, null);

-- ----------------------------
-- Table structure for master_type
-- ----------------------------
DROP TABLE IF EXISTS `master_type`;
CREATE TABLE `master_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of master_type
-- ----------------------------
INSERT INTO `master_type` VALUES ('1', 'Gel', '1', null, null);
INSERT INTO `master_type` VALUES ('2', 'Basah', '1', null, null);
INSERT INTO `master_type` VALUES ('3', 'Kering', '1', null, null);

-- ----------------------------
-- Table structure for master_unit
-- ----------------------------
DROP TABLE IF EXISTS `master_unit`;
CREATE TABLE `master_unit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merk_id` tinyint(1) DEFAULT NULL,
  `kode` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `type_id` tinyint(1) DEFAULT NULL,
  `harga` decimal(15,2) NOT NULL,
  `deskripsi` longtext COLLATE latin1_general_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of master_unit
-- ----------------------------
INSERT INTO `master_unit` VALUES ('1', '1', 'JB40AN1Z', '1', '450000.00', 'akui basah jb', '1', null, null);
INSERT INTO `master_unit` VALUES ('2', '2', 'X123', '2', '675000.00', null, '0', null, null);
INSERT INTO `master_unit` VALUES ('3', '4', '1234', '3', '1000000.00', 'asdasdas', '1', '2017-08-06 05:55:39', '2017-08-06 05:55:39');
INSERT INTO `master_unit` VALUES ('4', '5', 'X112233', '2', '120000.00', 'Aki Motor', '1', '2017-08-06 05:56:14', '2017-08-06 05:56:14');
INSERT INTO `master_unit` VALUES ('5', '5', 'X11', '3', '122000.00', 'abc', '1', '2017-08-06 05:56:56', '2017-08-06 05:56:56');
INSERT INTO `master_unit` VALUES ('6', '2', '123', '2', '90000.00', 'motor', '1', '2017-08-06 05:57:39', '2017-08-06 05:57:39');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2017_07_20_152703_create_users_table', '1');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'delete users', '2017-02-19 23:37:37', '2017-02-19 23:37:56');
INSERT INTO `permissions` VALUES ('2', 'manage roles', '2017-02-19 23:37:50', '2017-02-20 00:11:25');
INSERT INTO `permissions` VALUES ('3', 'edit users', '2017-02-19 23:38:42', '2017-02-19 23:38:42');
INSERT INTO `permissions` VALUES ('4', 'edit admins', '2017-02-19 23:39:39', '2017-02-19 23:39:39');
INSERT INTO `permissions` VALUES ('5', 'view admin pages', '2017-02-20 00:20:18', '2017-02-20 00:20:18');
INSERT INTO `permissions` VALUES ('6', 'make admin', '2017-02-20 00:31:23', '2017-02-20 00:31:23');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', '2017-02-19 23:37:00', '2017-02-19 23:37:02');
INSERT INTO `roles` VALUES ('2', 'superadmin', '2017-02-19 23:37:09', '2017-02-19 23:37:14');

-- ----------------------------
-- Table structure for roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `roles_permissions_permission_foreign_key` (`permission_id`),
  CONSTRAINT `roles_permissions_permission_foreign_key` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `roles_permissions_role_foreign_key` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles_permissions
-- ----------------------------
INSERT INTO `roles_permissions` VALUES ('1', '1', '2017-02-20 00:34:50', '2017-02-20 00:34:50');
INSERT INTO `roles_permissions` VALUES ('1', '3', '2017-02-19 23:38:49', '2017-02-19 23:38:49');
INSERT INTO `roles_permissions` VALUES ('1', '5', '2017-02-20 00:20:36', '2017-02-20 00:20:36');
INSERT INTO `roles_permissions` VALUES ('2', '1', '2017-02-19 23:38:20', '2017-02-19 23:38:20');
INSERT INTO `roles_permissions` VALUES ('2', '2', '2017-02-19 23:38:25', '2017-02-19 23:38:25');
INSERT INTO `roles_permissions` VALUES ('2', '3', '2017-02-20 00:13:12', '2017-02-20 00:13:12');
INSERT INTO `roles_permissions` VALUES ('2', '4', '2017-02-19 23:39:58', '2017-02-19 23:39:58');
INSERT INTO `roles_permissions` VALUES ('2', '5', '2017-02-20 00:20:44', '2017-02-20 00:20:44');
INSERT INTO `roles_permissions` VALUES ('2', '6', '2017-02-20 00:31:32', '2017-02-20 00:31:32');

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `no_order` varchar(11) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'master_accounting_bankbook',
  `merk_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `alamat_kirim` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `pembayaran_id` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `latitude` varchar(11) COLLATE latin1_general_ci DEFAULT '-7.7876785',
  `longitude` varchar(11) COLLATE latin1_general_ci DEFAULT '110.4295726',
  `void_status` tinyint(4) DEFAULT NULL,
  `void_user_id` int(11) DEFAULT NULL,
  `void_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO `transaction` VALUES ('1', '1', '2017-07-28', '11H5NUPP612', '1', '1', '1', '50000000.00', 'Jl. Raya Solo-Jogja KM. 3, Depan Bandara Adisucipto Yogyakarta', null, 'GS 40NZA Hybrid', '1', '-7.7876785', '110.4295726', null, null, '2017-07-30 17:55:50', '2016-08-22 13:14:43', '4', '2016-08-22 13:14:43', null, null, null);
INSERT INTO `transaction` VALUES ('2', '1', '2017-07-28', '2', null, null, null, '10000.00', null, null, '', '0', null, '1', null, null, '2017-07-28 16:40:18', '2016-09-02 13:33:28', '48', '2016-09-02 13:33:28', null, null, null);
INSERT INTO `transaction` VALUES ('3', '1', '2017-07-28', '3', null, null, null, '200000.00', null, null, 'ssaldo', '1', null, '5', null, null, '2017-07-28 16:41:05', '2016-09-20 17:10:31', '51', '2016-09-20 17:10:31', null, null, null);
INSERT INTO `transaction` VALUES ('4', '1', '2017-07-28', '2', null, null, null, '5000.00', null, null, 'kopi', '1', null, '5', null, null, '2017-07-28 16:40:19', '2016-09-20 17:10:58', '51', '2016-09-20 17:10:58', null, null, null);
INSERT INTO `transaction` VALUES ('7', '1', '2017-07-28', '2', null, null, null, '200000.00', null, null, 'tes', '1', null, '9', null, null, '2017-07-28 16:40:42', '2016-09-21 10:51:20', '51', '2016-09-21 10:51:20', null, null, null);
INSERT INTO `transaction` VALUES ('8', '1', '2017-07-28', '2', null, null, null, '20000.00', null, null, 'tes', '0', null, '9', null, null, '2017-07-28 16:40:20', '2016-09-21 10:51:21', '51', '2016-09-21 10:51:21', null, null, null);
INSERT INTO `transaction` VALUES ('9', '1', '2017-07-27', '2', null, null, null, '3000000.00', null, null, 'tes', '1', null, '9', null, null, '2017-07-28 16:41:24', '2016-09-21 10:54:02', '51', '2016-09-21 10:54:02', null, null, null);
INSERT INTO `transaction` VALUES ('10', '1', '2016-09-19', '4', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 11:04:22', '2016-09-21 11:09:51', '51', '2016-09-21 11:09:51', null, null, null);
INSERT INTO `transaction` VALUES ('11', '1', '2016-09-19', '4', null, null, null, '20000.00', null, null, 'tes', '0', null, '9', null, null, '2016-09-21 11:04:23', '2016-09-21 11:09:52', '51', '2016-09-21 11:09:52', null, null, null);
INSERT INTO `transaction` VALUES ('12', '1', '2016-09-19', '4', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 11:05:48', '2016-09-21 11:11:17', '51', '2016-09-21 11:11:17', null, null, null);
INSERT INTO `transaction` VALUES ('13', '1', '2016-09-19', '4', null, null, null, '20000.00', null, null, 'tes', '0', null, '9', null, null, '2016-09-21 11:05:50', '2016-09-21 11:11:18', '51', '2016-09-21 11:11:18', null, null, null);
INSERT INTO `transaction` VALUES ('14', '1', '2016-09-19', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 11:06:53', '2016-09-21 11:12:22', '51', '2016-09-21 11:12:22', null, null, null);
INSERT INTO `transaction` VALUES ('15', '1', '2016-09-19', '1', null, null, null, '20000.00', null, null, 'tes', '0', null, '9', null, null, '2016-09-21 11:06:54', '2016-09-21 11:12:23', '51', '2016-09-21 11:12:23', null, null, null);
INSERT INTO `transaction` VALUES ('16', '1', '2016-09-19', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 11:08:03', '2016-09-21 11:13:32', '51', '2016-09-21 11:13:32', null, null, null);
INSERT INTO `transaction` VALUES ('17', '1', '2016-09-19', '2', null, null, null, '20000.00', null, null, 'tes', '0', null, '9', null, null, '2016-09-21 11:08:05', '2016-09-21 11:13:34', '51', '2016-09-21 11:13:34', null, null, null);
INSERT INTO `transaction` VALUES ('18', '1', '2016-09-21', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 11:08:31', '2016-09-21 11:14:00', '51', '2016-09-21 11:14:00', null, null, null);
INSERT INTO `transaction` VALUES ('19', '1', '2016-09-21', '2', null, null, null, '20000.00', null, null, 'tes', '0', null, '9', null, null, '2016-09-21 11:08:32', '2016-09-21 11:14:00', '51', '2016-09-21 11:14:00', null, null, null);
INSERT INTO `transaction` VALUES ('20', '1', '2016-09-21', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:52:39', '2016-09-21 12:58:07', '51', '2016-09-21 12:58:07', null, null, null);
INSERT INTO `transaction` VALUES ('21', '1', '2016-09-21', '2', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:52:41', '2016-09-21 12:58:10', '51', '2016-09-21 12:58:10', null, null, null);
INSERT INTO `transaction` VALUES ('22', '1', '2016-09-21', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:54:37', '2016-09-21 13:00:06', '51', '2016-09-21 13:00:06', null, null, null);
INSERT INTO `transaction` VALUES ('23', '1', '2016-09-21', '2', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:54:40', '2016-09-21 13:00:08', '51', '2016-09-21 13:00:08', null, null, null);
INSERT INTO `transaction` VALUES ('24', '1', '2016-09-21', '3', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:54:42', '2016-09-21 13:00:11', '51', '2016-09-21 13:00:11', null, null, null);
INSERT INTO `transaction` VALUES ('25', '1', '2016-09-21', '1', null, null, null, '20000.00', null, null, 'tes', '0', null, '9', null, null, '2017-07-30 15:22:43', '2016-09-21 13:00:29', '51', '2016-09-21 13:00:29', null, null, null);
INSERT INTO `transaction` VALUES ('26', '1', '2016-09-21', '2', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:55:03', '2016-09-21 13:00:32', '51', '2016-09-21 13:00:32', null, null, null);
INSERT INTO `transaction` VALUES ('27', '1', '2016-09-21', '3', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:55:05', '2016-09-21 13:00:34', '51', '2016-09-21 13:00:34', null, null, null);
INSERT INTO `transaction` VALUES ('28', '1', '2016-09-21', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:55:49', '2016-09-21 13:01:18', '51', '2016-09-21 13:01:18', null, null, null);
INSERT INTO `transaction` VALUES ('29', '1', '2016-09-21', '2', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:55:49', '2016-09-21 13:01:18', '51', '2016-09-21 13:01:18', null, null, null);
INSERT INTO `transaction` VALUES ('30', '1', '2016-09-21', '3', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-21 12:55:49', '2016-09-21 13:01:18', '51', '2016-09-21 13:01:18', null, null, null);
INSERT INTO `transaction` VALUES ('31', '1', '2016-09-21', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 10:06:04', '2016-09-22 10:11:33', '51', '2016-09-22 10:11:33', null, null, null);
INSERT INTO `transaction` VALUES ('32', '1', '2016-09-21', '2', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 10:06:05', '2016-09-22 10:11:34', '51', '2016-09-22 10:11:34', null, null, null);
INSERT INTO `transaction` VALUES ('33', '1', '2016-09-21', '3', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 10:06:05', '2016-09-22 10:11:34', '51', '2016-09-22 10:11:34', null, null, null);
INSERT INTO `transaction` VALUES ('34', '1', '2016-09-21', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '5', null, null, '2016-09-22 10:13:43', '2016-09-22 10:19:12', '51', '2016-09-22 10:19:12', null, null, null);
INSERT INTO `transaction` VALUES ('35', '1', '2016-09-21', '2', null, null, null, '20000.00', null, null, 'tes', '1', null, '5', null, null, '2016-09-22 10:13:43', '2016-09-22 10:19:12', '51', '2016-09-22 10:19:12', null, null, null);
INSERT INTO `transaction` VALUES ('36', '1', '2016-09-21', '3', null, null, null, '20000.00', null, null, 'tes', '1', null, '5', null, null, '2016-09-22 10:13:44', '2016-09-22 10:19:12', '51', '2016-09-22 10:19:13', null, null, null);
INSERT INTO `transaction` VALUES ('37', '1', '2016-09-22', '1', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 11:12:08', '2016-09-22 11:17:37', '51', '2016-09-22 11:17:37', null, null, null);
INSERT INTO `transaction` VALUES ('38', '1', '2016-09-23', '2', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 11:12:08', '2016-09-22 11:17:37', '51', '2016-09-22 11:17:37', null, null, null);
INSERT INTO `transaction` VALUES ('39', '1', '2016-09-24', '3', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 11:12:08', '2016-09-22 11:17:37', '51', '2016-09-22 11:17:37', null, null, null);
INSERT INTO `transaction` VALUES ('40', '1', '2016-09-22', '1', null, null, null, '20000.00', null, null, 'tes', '1', '-7.7876785', '110.4295726', null, null, '2017-07-30 11:18:02', '2016-09-22 11:20:25', '51', '2016-09-22 11:20:25', null, null, null);
INSERT INTO `transaction` VALUES ('41', '1', '2016-09-23', '2', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 11:14:56', '2016-09-22 11:20:25', '51', '2016-09-22 11:20:25', null, null, null);
INSERT INTO `transaction` VALUES ('42', '1', '2016-09-24', '3', null, null, null, '20000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 11:14:57', '2016-09-22 11:20:26', '51', '2016-09-22 11:20:26', null, null, null);
INSERT INTO `transaction` VALUES ('43', '1', '1900-01-22', '2', null, null, null, '300000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 13:17:14', '2016-09-22 13:22:43', '51', '2016-09-22 13:22:43', null, null, null);
INSERT INTO `transaction` VALUES ('44', '1', '1905-07-08', '2', null, null, null, '350000.00', null, null, null, '1', null, '9', null, null, '2016-09-22 13:21:43', '2016-09-22 13:27:12', '51', '2016-09-22 13:27:12', null, null, null);
INSERT INTO `transaction` VALUES ('45', '1', '1900-01-22', '2', null, null, null, '350000.00', null, null, 'tes', '1', null, '9', null, null, '2016-09-22 13:47:05', '2016-09-22 13:52:34', '51', '2016-09-22 13:52:34', null, null, null);
INSERT INTO `transaction` VALUES ('46', '2', '2017-08-01', 'P0OOH761MM', '1', '1', '1', '675000.00', 'Depan Hotel Jentra Dagen Malioboro', '1', 'Kirim cepet ya mass', '1', '-7.7937601', '110.3629656', null, null, '2017-08-01 10:25:21', '2016-09-22 13:53:34', '51', '2017-08-01 05:25:21', null, null, null);
INSERT INTO `transaction` VALUES ('47', '1', '1900-01-29', 'X12AA8P0KL', '1', '1', '1', '400000.00', 'Kirim no 47', '1', 'Ini Catatan Saja', '1', '7.11', '110.4295726', null, null, '2017-08-01 10:25:33', '2016-09-22 14:18:09', '51', '2017-08-01 05:25:33', null, null, null);
INSERT INTO `transaction` VALUES ('48', '2', '2016-09-22', '11H5NUPP61', '2', '1', '2', '500000.00', 'Kirim no 48', '2', 'Ini catatannya dewi sandra', '1', '-7.7876785', '110.4295726', null, null, '2017-08-01 10:25:05', '2016-09-22 14:19:23', '51', '2017-08-01 05:25:05', null, null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_pic` longblob,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `active_hash` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `remember_identifier` varchar(255) DEFAULT NULL,
  `recover_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'masmike', 'ddtika@gmail.com', '$2y$10$XpsoQpuiMcC4weLadjyFbu1/NiNMCoStOrr.j9wm/W.TWQur49Ija', null, '1', 'RbpofNx0dDt0gAowgAlhrLYhxfbLKom0bM8JaUp1h8Am9c0Vw6i3JI1bdWsNcyeSvLOc5InnD46PkwQ8jH2Eu5XaY0x6rvJwU0X4Ao0rUfBLGhMjd6LjP8gZENKJiFqI', null, null, null, '2017-07-28 04:16:06', '2017-07-28 09:16:27');

-- ----------------------------
-- Table structure for users_
-- ----------------------------
DROP TABLE IF EXISTS `users_`;
CREATE TABLE `users_` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users_
-- ----------------------------
INSERT INTO `users_` VALUES ('1', 'masmike', 'masmike@gmail.com', '$2y$10$7vkTpUDdRPY9J.VSbNBEleYa3cBgZ29zNS7RSJaSymiuCy0/1RvRm', '97ac7380407fbb0ae8cfa0b57fc15859f7304685', null, '2017-07-20 22:53:01', '2017-07-20 22:54:02', null);

-- ----------------------------
-- Table structure for users_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_permissions`;
CREATE TABLE `users_permissions` (
  `user_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `users_permissions_user_foreign_key` (`user_id`),
  KEY `users_permissions_permission_foreign_key` (`permission_id`),
  CONSTRAINT `users_permissions_permission_foreign_key` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `users_permissions_user_foreign_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_roles_users_foreign_key` (`user_id`),
  KEY `users_roles_roles_foreign_key` (`role_id`),
  CONSTRAINT `users_roles_roles_foreign_key` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `users_roles_users_foreign_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_roles
-- ----------------------------
