/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : api_lesson

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-28 07:30:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner_position
-- ----------------------------
DROP TABLE IF EXISTS `banner_position`;
CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of banner_position
-- ----------------------------
INSERT INTO `banner_position` VALUES ('1', 'Header', null, null);

-- ----------------------------
-- Table structure for banner_promo
-- ----------------------------
DROP TABLE IF EXISTS `banner_promo`;
CREATE TABLE `banner_promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `position_id` tinyint(1) DEFAULT NULL,
  `path` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `title` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `subtitle` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of banner_promo
-- ----------------------------
INSERT INTO `banner_promo` VALUES ('1', 'banner JB 01', '1', 'iklan01.jpg', null, null, '1', null, '2017-08-20 07:40:15');
INSERT INTO `banner_promo` VALUES ('2', 'banner GS 01', '1', 'iklan02.jpg', null, null, '0', null, '2017-08-20 07:40:16');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `phone1` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `phone2` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `lat` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of company
-- ----------------------------

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
  `kodepos` varchar(7) COLLATE latin1_general_ci NOT NULL,
  `propinsi_id` int(11) NOT NULL,
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
INSERT INTO `master_customer` VALUES ('1', 'Franz Kafka', 'Jl. Imogiri Barat No. 12 Yogyakarta', '087754321190', '', '', '0', '', 'a', null, null, '1', '0', null, '2017-08-11 13:18:23');
INSERT INTO `master_customer` VALUES ('2', 'Dewi Sandrax', 'Jl. Kalimantan Raya No. 20 A Jakarta Barat 11530. INDONESIA', '087738553857', '0274555666', '', '0', 'abc@abc.com', '$2y$10$2X6e/KitRtLdvscJ7TMQG.X7CKgwq4Pd7Hxajx6zg7GTunabE5H52', null, null, '1', '1', null, '2017-08-25 07:45:09');

-- ----------------------------
-- Table structure for master_kota
-- ----------------------------
DROP TABLE IF EXISTS `master_kota`;
CREATE TABLE `master_kota` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL,
  `propinsi_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_kota
-- ----------------------------
INSERT INTO `master_kota` VALUES ('1', '1101', '11', 'KABUPATEN SIMEULUE', null, null);
INSERT INTO `master_kota` VALUES ('2', '1102', '11', 'KABUPATEN ACEH SINGKIL', null, null);
INSERT INTO `master_kota` VALUES ('3', '1103', '11', 'KABUPATEN ACEH SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('4', '1104', '11', 'KABUPATEN ACEH TENGGARA', null, null);
INSERT INTO `master_kota` VALUES ('5', '1105', '11', 'KABUPATEN ACEH TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('6', '1106', '11', 'KABUPATEN ACEH TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('7', '1107', '11', 'KABUPATEN ACEH BARAT', null, null);
INSERT INTO `master_kota` VALUES ('8', '1108', '11', 'KABUPATEN ACEH BESAR', null, null);
INSERT INTO `master_kota` VALUES ('9', '1109', '11', 'KABUPATEN PIDIE', null, null);
INSERT INTO `master_kota` VALUES ('10', '1110', '11', 'KABUPATEN BIREUEN', null, null);
INSERT INTO `master_kota` VALUES ('11', '1111', '11', 'KABUPATEN ACEH UTARA', null, null);
INSERT INTO `master_kota` VALUES ('12', '1112', '11', 'KABUPATEN ACEH BARAT DAYA', null, null);
INSERT INTO `master_kota` VALUES ('13', '1113', '11', 'KABUPATEN GAYO LUES', null, null);
INSERT INTO `master_kota` VALUES ('14', '1114', '11', 'KABUPATEN ACEH TAMIANG', null, null);
INSERT INTO `master_kota` VALUES ('15', '1115', '11', 'KABUPATEN NAGAN RAYA', null, null);
INSERT INTO `master_kota` VALUES ('16', '1116', '11', 'KABUPATEN ACEH JAYA', null, null);
INSERT INTO `master_kota` VALUES ('17', '1117', '11', 'KABUPATEN BENER MERIAH', null, null);
INSERT INTO `master_kota` VALUES ('18', '1118', '11', 'KABUPATEN PIDIE JAYA', null, null);
INSERT INTO `master_kota` VALUES ('19', '1171', '11', 'KOTA BANDA ACEH', null, null);
INSERT INTO `master_kota` VALUES ('20', '1172', '11', 'KOTA SABANG', null, null);
INSERT INTO `master_kota` VALUES ('21', '1173', '11', 'KOTA LANGSA', null, null);
INSERT INTO `master_kota` VALUES ('22', '1174', '11', 'KOTA LHOKSEUMAWE', null, null);
INSERT INTO `master_kota` VALUES ('23', '1175', '11', 'KOTA SUBULUSSALAM', null, null);
INSERT INTO `master_kota` VALUES ('24', '1201', '12', 'KABUPATEN NIAS', null, null);
INSERT INTO `master_kota` VALUES ('25', '1202', '12', 'KABUPATEN MANDAILING NATAL', null, null);
INSERT INTO `master_kota` VALUES ('26', '1203', '12', 'KABUPATEN TAPANULI SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('27', '1204', '12', 'KABUPATEN TAPANULI TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('28', '1205', '12', 'KABUPATEN TAPANULI UTARA', null, null);
INSERT INTO `master_kota` VALUES ('29', '1206', '12', 'KABUPATEN TOBA SAMOSIR', null, null);
INSERT INTO `master_kota` VALUES ('30', '1207', '12', 'KABUPATEN LABUHAN BATU', null, null);
INSERT INTO `master_kota` VALUES ('31', '1208', '12', 'KABUPATEN ASAHAN', null, null);
INSERT INTO `master_kota` VALUES ('32', '1209', '12', 'KABUPATEN SIMALUNGUN', null, null);
INSERT INTO `master_kota` VALUES ('33', '1210', '12', 'KABUPATEN DAIRI', null, null);
INSERT INTO `master_kota` VALUES ('34', '1211', '12', 'KABUPATEN KARO', null, null);
INSERT INTO `master_kota` VALUES ('35', '1212', '12', 'KABUPATEN DELI SERDANG', null, null);
INSERT INTO `master_kota` VALUES ('36', '1213', '12', 'KABUPATEN LANGKAT', null, null);
INSERT INTO `master_kota` VALUES ('37', '1214', '12', 'KABUPATEN NIAS SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('38', '1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN', null, null);
INSERT INTO `master_kota` VALUES ('39', '1216', '12', 'KABUPATEN PAKPAK BHARAT', null, null);
INSERT INTO `master_kota` VALUES ('40', '1217', '12', 'KABUPATEN SAMOSIR', null, null);
INSERT INTO `master_kota` VALUES ('41', '1218', '12', 'KABUPATEN SERDANG BEDAGAI', null, null);
INSERT INTO `master_kota` VALUES ('42', '1219', '12', 'KABUPATEN BATU BARA', null, null);
INSERT INTO `master_kota` VALUES ('43', '1220', '12', 'KABUPATEN PADANG LAWAS UTARA', null, null);
INSERT INTO `master_kota` VALUES ('44', '1221', '12', 'KABUPATEN PADANG LAWAS', null, null);
INSERT INTO `master_kota` VALUES ('45', '1222', '12', 'KABUPATEN LABUHAN BATU SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('46', '1223', '12', 'KABUPATEN LABUHAN BATU UTARA', null, null);
INSERT INTO `master_kota` VALUES ('47', '1224', '12', 'KABUPATEN NIAS UTARA', null, null);
INSERT INTO `master_kota` VALUES ('48', '1225', '12', 'KABUPATEN NIAS BARAT', null, null);
INSERT INTO `master_kota` VALUES ('49', '1271', '12', 'KOTA SIBOLGA', null, null);
INSERT INTO `master_kota` VALUES ('50', '1272', '12', 'KOTA TANJUNG BALAI', null, null);
INSERT INTO `master_kota` VALUES ('51', '1273', '12', 'KOTA PEMATANG SIANTAR', null, null);
INSERT INTO `master_kota` VALUES ('52', '1274', '12', 'KOTA TEBING TINGGI', null, null);
INSERT INTO `master_kota` VALUES ('53', '1275', '12', 'KOTA MEDAN', null, null);
INSERT INTO `master_kota` VALUES ('54', '1276', '12', 'KOTA BINJAI', null, null);
INSERT INTO `master_kota` VALUES ('55', '1277', '12', 'KOTA PADANGSIDIMPUAN', null, null);
INSERT INTO `master_kota` VALUES ('56', '1278', '12', 'KOTA GUNUNGSITOLI', null, null);
INSERT INTO `master_kota` VALUES ('57', '1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI', null, null);
INSERT INTO `master_kota` VALUES ('58', '1302', '13', 'KABUPATEN PESISIR SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('59', '1303', '13', 'KABUPATEN SOLOK', null, null);
INSERT INTO `master_kota` VALUES ('60', '1304', '13', 'KABUPATEN SIJUNJUNG', null, null);
INSERT INTO `master_kota` VALUES ('61', '1305', '13', 'KABUPATEN TANAH DATAR', null, null);
INSERT INTO `master_kota` VALUES ('62', '1306', '13', 'KABUPATEN PADANG PARIAMAN', null, null);
INSERT INTO `master_kota` VALUES ('63', '1307', '13', 'KABUPATEN AGAM', null, null);
INSERT INTO `master_kota` VALUES ('64', '1308', '13', 'KABUPATEN LIMA PULUH KOTA', null, null);
INSERT INTO `master_kota` VALUES ('65', '1309', '13', 'KABUPATEN PASAMAN', null, null);
INSERT INTO `master_kota` VALUES ('66', '1310', '13', 'KABUPATEN SOLOK SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('67', '1311', '13', 'KABUPATEN DHARMASRAYA', null, null);
INSERT INTO `master_kota` VALUES ('68', '1312', '13', 'KABUPATEN PASAMAN BARAT', null, null);
INSERT INTO `master_kota` VALUES ('69', '1371', '13', 'KOTA PADANG', null, null);
INSERT INTO `master_kota` VALUES ('70', '1372', '13', 'KOTA SOLOK', null, null);
INSERT INTO `master_kota` VALUES ('71', '1373', '13', 'KOTA SAWAH LUNTO', null, null);
INSERT INTO `master_kota` VALUES ('72', '1374', '13', 'KOTA PADANG PANJANG', null, null);
INSERT INTO `master_kota` VALUES ('73', '1375', '13', 'KOTA BUKITTINGGI', null, null);
INSERT INTO `master_kota` VALUES ('74', '1376', '13', 'KOTA PAYAKUMBUH', null, null);
INSERT INTO `master_kota` VALUES ('75', '1377', '13', 'KOTA PARIAMAN', null, null);
INSERT INTO `master_kota` VALUES ('76', '1401', '14', 'KABUPATEN KUANTAN SINGINGI', null, null);
INSERT INTO `master_kota` VALUES ('77', '1402', '14', 'KABUPATEN INDRAGIRI HULU', null, null);
INSERT INTO `master_kota` VALUES ('78', '1403', '14', 'KABUPATEN INDRAGIRI HILIR', null, null);
INSERT INTO `master_kota` VALUES ('79', '1404', '14', 'KABUPATEN PELALAWAN', null, null);
INSERT INTO `master_kota` VALUES ('80', '1405', '14', 'KABUPATEN S I A K', null, null);
INSERT INTO `master_kota` VALUES ('81', '1406', '14', 'KABUPATEN KAMPAR', null, null);
INSERT INTO `master_kota` VALUES ('82', '1407', '14', 'KABUPATEN ROKAN HULU', null, null);
INSERT INTO `master_kota` VALUES ('83', '1408', '14', 'KABUPATEN BENGKALIS', null, null);
INSERT INTO `master_kota` VALUES ('84', '1409', '14', 'KABUPATEN ROKAN HILIR', null, null);
INSERT INTO `master_kota` VALUES ('85', '1410', '14', 'KABUPATEN KEPULAUAN MERANTI', null, null);
INSERT INTO `master_kota` VALUES ('86', '1471', '14', 'KOTA PEKANBARU', null, null);
INSERT INTO `master_kota` VALUES ('87', '1473', '14', 'KOTA D U M A I', null, null);
INSERT INTO `master_kota` VALUES ('88', '1501', '15', 'KABUPATEN KERINCI', null, null);
INSERT INTO `master_kota` VALUES ('89', '1502', '15', 'KABUPATEN MERANGIN', null, null);
INSERT INTO `master_kota` VALUES ('90', '1503', '15', 'KABUPATEN SAROLANGUN', null, null);
INSERT INTO `master_kota` VALUES ('91', '1504', '15', 'KABUPATEN BATANG HARI', null, null);
INSERT INTO `master_kota` VALUES ('92', '1505', '15', 'KABUPATEN MUARO JAMBI', null, null);
INSERT INTO `master_kota` VALUES ('93', '1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('94', '1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT', null, null);
INSERT INTO `master_kota` VALUES ('95', '1508', '15', 'KABUPATEN TEBO', null, null);
INSERT INTO `master_kota` VALUES ('96', '1509', '15', 'KABUPATEN BUNGO', null, null);
INSERT INTO `master_kota` VALUES ('97', '1571', '15', 'KOTA JAMBI', null, null);
INSERT INTO `master_kota` VALUES ('98', '1572', '15', 'KOTA SUNGAI PENUH', null, null);
INSERT INTO `master_kota` VALUES ('99', '1601', '16', 'KABUPATEN OGAN KOMERING ULU', null, null);
INSERT INTO `master_kota` VALUES ('100', '1602', '16', 'KABUPATEN OGAN KOMERING ILIR', null, null);
INSERT INTO `master_kota` VALUES ('101', '1603', '16', 'KABUPATEN MUARA ENIM', null, null);
INSERT INTO `master_kota` VALUES ('102', '1604', '16', 'KABUPATEN LAHAT', null, null);
INSERT INTO `master_kota` VALUES ('103', '1605', '16', 'KABUPATEN MUSI RAWAS', null, null);
INSERT INTO `master_kota` VALUES ('104', '1606', '16', 'KABUPATEN MUSI BANYUASIN', null, null);
INSERT INTO `master_kota` VALUES ('105', '1607', '16', 'KABUPATEN BANYU ASIN', null, null);
INSERT INTO `master_kota` VALUES ('106', '1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('107', '1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('108', '1610', '16', 'KABUPATEN OGAN ILIR', null, null);
INSERT INTO `master_kota` VALUES ('109', '1611', '16', 'KABUPATEN EMPAT LAWANG', null, null);
INSERT INTO `master_kota` VALUES ('110', '1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR', null, null);
INSERT INTO `master_kota` VALUES ('111', '1613', '16', 'KABUPATEN MUSI RAWAS UTARA', null, null);
INSERT INTO `master_kota` VALUES ('112', '1671', '16', 'KOTA PALEMBANG', null, null);
INSERT INTO `master_kota` VALUES ('113', '1672', '16', 'KOTA PRABUMULIH', null, null);
INSERT INTO `master_kota` VALUES ('114', '1673', '16', 'KOTA PAGAR ALAM', null, null);
INSERT INTO `master_kota` VALUES ('115', '1674', '16', 'KOTA LUBUKLINGGAU', null, null);
INSERT INTO `master_kota` VALUES ('116', '1701', '17', 'KABUPATEN BENGKULU SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('117', '1702', '17', 'KABUPATEN REJANG LEBONG', null, null);
INSERT INTO `master_kota` VALUES ('118', '1703', '17', 'KABUPATEN BENGKULU UTARA', null, null);
INSERT INTO `master_kota` VALUES ('119', '1704', '17', 'KABUPATEN KAUR', null, null);
INSERT INTO `master_kota` VALUES ('120', '1705', '17', 'KABUPATEN SELUMA', null, null);
INSERT INTO `master_kota` VALUES ('121', '1706', '17', 'KABUPATEN MUKOMUKO', null, null);
INSERT INTO `master_kota` VALUES ('122', '1707', '17', 'KABUPATEN LEBONG', null, null);
INSERT INTO `master_kota` VALUES ('123', '1708', '17', 'KABUPATEN KEPAHIANG', null, null);
INSERT INTO `master_kota` VALUES ('124', '1709', '17', 'KABUPATEN BENGKULU TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('125', '1771', '17', 'KOTA BENGKULU', null, null);
INSERT INTO `master_kota` VALUES ('126', '1801', '18', 'KABUPATEN LAMPUNG BARAT', null, null);
INSERT INTO `master_kota` VALUES ('127', '1802', '18', 'KABUPATEN TANGGAMUS', null, null);
INSERT INTO `master_kota` VALUES ('128', '1803', '18', 'KABUPATEN LAMPUNG SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('129', '1804', '18', 'KABUPATEN LAMPUNG TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('130', '1805', '18', 'KABUPATEN LAMPUNG TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('131', '1806', '18', 'KABUPATEN LAMPUNG UTARA', null, null);
INSERT INTO `master_kota` VALUES ('132', '1807', '18', 'KABUPATEN WAY KANAN', null, null);
INSERT INTO `master_kota` VALUES ('133', '1808', '18', 'KABUPATEN TULANGBAWANG', null, null);
INSERT INTO `master_kota` VALUES ('134', '1809', '18', 'KABUPATEN PESAWARAN', null, null);
INSERT INTO `master_kota` VALUES ('135', '1810', '18', 'KABUPATEN PRINGSEWU', null, null);
INSERT INTO `master_kota` VALUES ('136', '1811', '18', 'KABUPATEN MESUJI', null, null);
INSERT INTO `master_kota` VALUES ('137', '1812', '18', 'KABUPATEN TULANG BAWANG BARAT', null, null);
INSERT INTO `master_kota` VALUES ('138', '1813', '18', 'KABUPATEN PESISIR BARAT', null, null);
INSERT INTO `master_kota` VALUES ('139', '1871', '18', 'KOTA BANDAR LAMPUNG', null, null);
INSERT INTO `master_kota` VALUES ('140', '1872', '18', 'KOTA METRO', null, null);
INSERT INTO `master_kota` VALUES ('141', '1901', '19', 'KABUPATEN BANGKA', null, null);
INSERT INTO `master_kota` VALUES ('142', '1902', '19', 'KABUPATEN BELITUNG', null, null);
INSERT INTO `master_kota` VALUES ('143', '1903', '19', 'KABUPATEN BANGKA BARAT', null, null);
INSERT INTO `master_kota` VALUES ('144', '1904', '19', 'KABUPATEN BANGKA TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('145', '1905', '19', 'KABUPATEN BANGKA SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('146', '1906', '19', 'KABUPATEN BELITUNG TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('147', '1971', '19', 'KOTA PANGKAL PINANG', null, null);
INSERT INTO `master_kota` VALUES ('148', '2101', '21', 'KABUPATEN KARIMUN', null, null);
INSERT INTO `master_kota` VALUES ('149', '2102', '21', 'KABUPATEN BINTAN', null, null);
INSERT INTO `master_kota` VALUES ('150', '2103', '21', 'KABUPATEN NATUNA', null, null);
INSERT INTO `master_kota` VALUES ('151', '2104', '21', 'KABUPATEN LINGGA', null, null);
INSERT INTO `master_kota` VALUES ('152', '2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS', null, null);
INSERT INTO `master_kota` VALUES ('153', '2171', '21', 'KOTA B A T A M', null, null);
INSERT INTO `master_kota` VALUES ('154', '2172', '21', 'KOTA TANJUNG PINANG', null, null);
INSERT INTO `master_kota` VALUES ('155', '3101', '31', 'KABUPATEN KEPULAUAN SERIBU', null, null);
INSERT INTO `master_kota` VALUES ('156', '3171', '31', 'KOTA JAKARTA SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('157', '3172', '31', 'KOTA JAKARTA TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('158', '3173', '31', 'KOTA JAKARTA PUSAT', null, null);
INSERT INTO `master_kota` VALUES ('159', '3174', '31', 'KOTA JAKARTA BARAT', null, null);
INSERT INTO `master_kota` VALUES ('160', '3175', '31', 'KOTA JAKARTA UTARA', null, null);
INSERT INTO `master_kota` VALUES ('161', '3201', '32', 'KABUPATEN BOGOR', null, null);
INSERT INTO `master_kota` VALUES ('162', '3202', '32', 'KABUPATEN SUKABUMI', null, null);
INSERT INTO `master_kota` VALUES ('163', '3203', '32', 'KABUPATEN CIANJUR', null, null);
INSERT INTO `master_kota` VALUES ('164', '3204', '32', 'KABUPATEN BANDUNG', null, null);
INSERT INTO `master_kota` VALUES ('165', '3205', '32', 'KABUPATEN GARUT', null, null);
INSERT INTO `master_kota` VALUES ('166', '3206', '32', 'KABUPATEN TASIKMALAYA', null, null);
INSERT INTO `master_kota` VALUES ('167', '3207', '32', 'KABUPATEN CIAMIS', null, null);
INSERT INTO `master_kota` VALUES ('168', '3208', '32', 'KABUPATEN KUNINGAN', null, null);
INSERT INTO `master_kota` VALUES ('169', '3209', '32', 'KABUPATEN CIREBON', null, null);
INSERT INTO `master_kota` VALUES ('170', '3210', '32', 'KABUPATEN MAJALENGKA', null, null);
INSERT INTO `master_kota` VALUES ('171', '3211', '32', 'KABUPATEN SUMEDANG', null, null);
INSERT INTO `master_kota` VALUES ('172', '3212', '32', 'KABUPATEN INDRAMAYU', null, null);
INSERT INTO `master_kota` VALUES ('173', '3213', '32', 'KABUPATEN SUBANG', null, null);
INSERT INTO `master_kota` VALUES ('174', '3214', '32', 'KABUPATEN PURWAKARTA', null, null);
INSERT INTO `master_kota` VALUES ('175', '3215', '32', 'KABUPATEN KARAWANG', null, null);
INSERT INTO `master_kota` VALUES ('176', '3216', '32', 'KABUPATEN BEKASI', null, null);
INSERT INTO `master_kota` VALUES ('177', '3217', '32', 'KABUPATEN BANDUNG BARAT', null, null);
INSERT INTO `master_kota` VALUES ('178', '3218', '32', 'KABUPATEN PANGANDARAN', null, null);
INSERT INTO `master_kota` VALUES ('179', '3271', '32', 'KOTA BOGOR', null, null);
INSERT INTO `master_kota` VALUES ('180', '3272', '32', 'KOTA SUKABUMI', null, null);
INSERT INTO `master_kota` VALUES ('181', '3273', '32', 'KOTA BANDUNG', null, null);
INSERT INTO `master_kota` VALUES ('182', '3274', '32', 'KOTA CIREBON', null, null);
INSERT INTO `master_kota` VALUES ('183', '3275', '32', 'KOTA BEKASI', null, null);
INSERT INTO `master_kota` VALUES ('184', '3276', '32', 'KOTA DEPOK', null, null);
INSERT INTO `master_kota` VALUES ('185', '3277', '32', 'KOTA CIMAHI', null, null);
INSERT INTO `master_kota` VALUES ('186', '3278', '32', 'KOTA TASIKMALAYA', null, null);
INSERT INTO `master_kota` VALUES ('187', '3279', '32', 'KOTA BANJAR', null, null);
INSERT INTO `master_kota` VALUES ('188', '3301', '33', 'KABUPATEN CILACAP', null, null);
INSERT INTO `master_kota` VALUES ('189', '3302', '33', 'KABUPATEN BANYUMAS', null, null);
INSERT INTO `master_kota` VALUES ('190', '3303', '33', 'KABUPATEN PURBALINGGA', null, null);
INSERT INTO `master_kota` VALUES ('191', '3304', '33', 'KABUPATEN BANJARNEGARA', null, null);
INSERT INTO `master_kota` VALUES ('192', '3305', '33', 'KABUPATEN KEBUMEN', null, null);
INSERT INTO `master_kota` VALUES ('193', '3306', '33', 'KABUPATEN PURWOREJO', null, null);
INSERT INTO `master_kota` VALUES ('194', '3307', '33', 'KABUPATEN WONOSOBO', null, null);
INSERT INTO `master_kota` VALUES ('195', '3308', '33', 'KABUPATEN MAGELANG', null, null);
INSERT INTO `master_kota` VALUES ('196', '3309', '33', 'KABUPATEN BOYOLALI', null, null);
INSERT INTO `master_kota` VALUES ('197', '3310', '33', 'KABUPATEN KLATEN', null, null);
INSERT INTO `master_kota` VALUES ('198', '3311', '33', 'KABUPATEN SUKOHARJO', null, null);
INSERT INTO `master_kota` VALUES ('199', '3312', '33', 'KABUPATEN WONOGIRI', null, null);
INSERT INTO `master_kota` VALUES ('200', '3313', '33', 'KABUPATEN KARANGANYAR', null, null);
INSERT INTO `master_kota` VALUES ('201', '3314', '33', 'KABUPATEN SRAGEN', null, null);
INSERT INTO `master_kota` VALUES ('202', '3315', '33', 'KABUPATEN GROBOGAN', null, null);
INSERT INTO `master_kota` VALUES ('203', '3316', '33', 'KABUPATEN BLORA', null, null);
INSERT INTO `master_kota` VALUES ('204', '3317', '33', 'KABUPATEN REMBANG', null, null);
INSERT INTO `master_kota` VALUES ('205', '3318', '33', 'KABUPATEN PATI', null, null);
INSERT INTO `master_kota` VALUES ('206', '3319', '33', 'KABUPATEN KUDUS', null, null);
INSERT INTO `master_kota` VALUES ('207', '3320', '33', 'KABUPATEN JEPARA', null, null);
INSERT INTO `master_kota` VALUES ('208', '3321', '33', 'KABUPATEN DEMAK', null, null);
INSERT INTO `master_kota` VALUES ('209', '3322', '33', 'KABUPATEN SEMARANG', null, null);
INSERT INTO `master_kota` VALUES ('210', '3323', '33', 'KABUPATEN TEMANGGUNG', null, null);
INSERT INTO `master_kota` VALUES ('211', '3324', '33', 'KABUPATEN KENDAL', null, null);
INSERT INTO `master_kota` VALUES ('212', '3325', '33', 'KABUPATEN BATANG', null, null);
INSERT INTO `master_kota` VALUES ('213', '3326', '33', 'KABUPATEN PEKALONGAN', null, null);
INSERT INTO `master_kota` VALUES ('214', '3327', '33', 'KABUPATEN PEMALANG', null, null);
INSERT INTO `master_kota` VALUES ('215', '3328', '33', 'KABUPATEN TEGAL', null, null);
INSERT INTO `master_kota` VALUES ('216', '3329', '33', 'KABUPATEN BREBES', null, null);
INSERT INTO `master_kota` VALUES ('217', '3371', '33', 'KOTA MAGELANG', null, null);
INSERT INTO `master_kota` VALUES ('218', '3372', '33', 'KOTA SURAKARTA', null, null);
INSERT INTO `master_kota` VALUES ('219', '3373', '33', 'KOTA SALATIGA', null, null);
INSERT INTO `master_kota` VALUES ('220', '3374', '33', 'KOTA SEMARANG', null, null);
INSERT INTO `master_kota` VALUES ('221', '3375', '33', 'KOTA PEKALONGAN', null, null);
INSERT INTO `master_kota` VALUES ('222', '3376', '33', 'KOTA TEGAL', null, null);
INSERT INTO `master_kota` VALUES ('223', '3401', '34', 'KABUPATEN KULON PROGO', null, null);
INSERT INTO `master_kota` VALUES ('224', '3402', '34', 'KABUPATEN BANTUL', null, null);
INSERT INTO `master_kota` VALUES ('225', '3403', '34', 'KABUPATEN GUNUNG KIDUL', null, null);
INSERT INTO `master_kota` VALUES ('226', '3404', '34', 'KABUPATEN SLEMAN', null, null);
INSERT INTO `master_kota` VALUES ('227', '3471', '34', 'KOTA YOGYAKARTA', null, null);
INSERT INTO `master_kota` VALUES ('228', '3501', '35', 'KABUPATEN PACITAN', null, null);
INSERT INTO `master_kota` VALUES ('229', '3502', '35', 'KABUPATEN PONOROGO', null, null);
INSERT INTO `master_kota` VALUES ('230', '3503', '35', 'KABUPATEN TRENGGALEK', null, null);
INSERT INTO `master_kota` VALUES ('231', '3504', '35', 'KABUPATEN TULUNGAGUNG', null, null);
INSERT INTO `master_kota` VALUES ('232', '3505', '35', 'KABUPATEN BLITAR', null, null);
INSERT INTO `master_kota` VALUES ('233', '3506', '35', 'KABUPATEN KEDIRI', null, null);
INSERT INTO `master_kota` VALUES ('234', '3507', '35', 'KABUPATEN MALANG', null, null);
INSERT INTO `master_kota` VALUES ('235', '3508', '35', 'KABUPATEN LUMAJANG', null, null);
INSERT INTO `master_kota` VALUES ('236', '3509', '35', 'KABUPATEN JEMBER', null, null);
INSERT INTO `master_kota` VALUES ('237', '3510', '35', 'KABUPATEN BANYUWANGI', null, null);
INSERT INTO `master_kota` VALUES ('238', '3511', '35', 'KABUPATEN BONDOWOSO', null, null);
INSERT INTO `master_kota` VALUES ('239', '3512', '35', 'KABUPATEN SITUBONDO', null, null);
INSERT INTO `master_kota` VALUES ('240', '3513', '35', 'KABUPATEN PROBOLINGGO', null, null);
INSERT INTO `master_kota` VALUES ('241', '3514', '35', 'KABUPATEN PASURUAN', null, null);
INSERT INTO `master_kota` VALUES ('242', '3515', '35', 'KABUPATEN SIDOARJO', null, null);
INSERT INTO `master_kota` VALUES ('243', '3516', '35', 'KABUPATEN MOJOKERTO', null, null);
INSERT INTO `master_kota` VALUES ('244', '3517', '35', 'KABUPATEN JOMBANG', null, null);
INSERT INTO `master_kota` VALUES ('245', '3518', '35', 'KABUPATEN NGANJUK', null, null);
INSERT INTO `master_kota` VALUES ('246', '3519', '35', 'KABUPATEN MADIUN', null, null);
INSERT INTO `master_kota` VALUES ('247', '3520', '35', 'KABUPATEN MAGETAN', null, null);
INSERT INTO `master_kota` VALUES ('248', '3521', '35', 'KABUPATEN NGAWI', null, null);
INSERT INTO `master_kota` VALUES ('249', '3522', '35', 'KABUPATEN BOJONEGORO', null, null);
INSERT INTO `master_kota` VALUES ('250', '3523', '35', 'KABUPATEN TUBAN', null, null);
INSERT INTO `master_kota` VALUES ('251', '3524', '35', 'KABUPATEN LAMONGAN', null, null);
INSERT INTO `master_kota` VALUES ('252', '3525', '35', 'KABUPATEN GRESIK', null, null);
INSERT INTO `master_kota` VALUES ('253', '3526', '35', 'KABUPATEN BANGKALAN', null, null);
INSERT INTO `master_kota` VALUES ('254', '3527', '35', 'KABUPATEN SAMPANG', null, null);
INSERT INTO `master_kota` VALUES ('255', '3528', '35', 'KABUPATEN PAMEKASAN', null, null);
INSERT INTO `master_kota` VALUES ('256', '3529', '35', 'KABUPATEN SUMENEP', null, null);
INSERT INTO `master_kota` VALUES ('257', '3571', '35', 'KOTA KEDIRI', null, null);
INSERT INTO `master_kota` VALUES ('258', '3572', '35', 'KOTA BLITAR', null, null);
INSERT INTO `master_kota` VALUES ('259', '3573', '35', 'KOTA MALANG', null, null);
INSERT INTO `master_kota` VALUES ('260', '3574', '35', 'KOTA PROBOLINGGO', null, null);
INSERT INTO `master_kota` VALUES ('261', '3575', '35', 'KOTA PASURUAN', null, null);
INSERT INTO `master_kota` VALUES ('262', '3576', '35', 'KOTA MOJOKERTO', null, null);
INSERT INTO `master_kota` VALUES ('263', '3577', '35', 'KOTA MADIUN', null, null);
INSERT INTO `master_kota` VALUES ('264', '3578', '35', 'KOTA SURABAYA', null, null);
INSERT INTO `master_kota` VALUES ('265', '3579', '35', 'KOTA BATU', null, null);
INSERT INTO `master_kota` VALUES ('266', '3601', '36', 'KABUPATEN PANDEGLANG', null, null);
INSERT INTO `master_kota` VALUES ('267', '3602', '36', 'KABUPATEN LEBAK', null, null);
INSERT INTO `master_kota` VALUES ('268', '3603', '36', 'KABUPATEN TANGERANG', null, null);
INSERT INTO `master_kota` VALUES ('269', '3604', '36', 'KABUPATEN SERANG', null, null);
INSERT INTO `master_kota` VALUES ('270', '3671', '36', 'KOTA TANGERANG', null, null);
INSERT INTO `master_kota` VALUES ('271', '3672', '36', 'KOTA CILEGON', null, null);
INSERT INTO `master_kota` VALUES ('272', '3673', '36', 'KOTA SERANG', null, null);
INSERT INTO `master_kota` VALUES ('273', '3674', '36', 'KOTA TANGERANG SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('274', '5101', '51', 'KABUPATEN JEMBRANA', null, null);
INSERT INTO `master_kota` VALUES ('275', '5102', '51', 'KABUPATEN TABANAN', null, null);
INSERT INTO `master_kota` VALUES ('276', '5103', '51', 'KABUPATEN BADUNG', null, null);
INSERT INTO `master_kota` VALUES ('277', '5104', '51', 'KABUPATEN GIANYAR', null, null);
INSERT INTO `master_kota` VALUES ('278', '5105', '51', 'KABUPATEN KLUNGKUNG', null, null);
INSERT INTO `master_kota` VALUES ('279', '5106', '51', 'KABUPATEN BANGLI', null, null);
INSERT INTO `master_kota` VALUES ('280', '5107', '51', 'KABUPATEN KARANG ASEM', null, null);
INSERT INTO `master_kota` VALUES ('281', '5108', '51', 'KABUPATEN BULELENG', null, null);
INSERT INTO `master_kota` VALUES ('282', '5171', '51', 'KOTA DENPASAR', null, null);
INSERT INTO `master_kota` VALUES ('283', '5201', '52', 'KABUPATEN LOMBOK BARAT', null, null);
INSERT INTO `master_kota` VALUES ('284', '5202', '52', 'KABUPATEN LOMBOK TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('285', '5203', '52', 'KABUPATEN LOMBOK TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('286', '5204', '52', 'KABUPATEN SUMBAWA', null, null);
INSERT INTO `master_kota` VALUES ('287', '5205', '52', 'KABUPATEN DOMPU', null, null);
INSERT INTO `master_kota` VALUES ('288', '5206', '52', 'KABUPATEN BIMA', null, null);
INSERT INTO `master_kota` VALUES ('289', '5207', '52', 'KABUPATEN SUMBAWA BARAT', null, null);
INSERT INTO `master_kota` VALUES ('290', '5208', '52', 'KABUPATEN LOMBOK UTARA', null, null);
INSERT INTO `master_kota` VALUES ('291', '5271', '52', 'KOTA MATARAM', null, null);
INSERT INTO `master_kota` VALUES ('292', '5272', '52', 'KOTA BIMA', null, null);
INSERT INTO `master_kota` VALUES ('293', '5301', '53', 'KABUPATEN SUMBA BARAT', null, null);
INSERT INTO `master_kota` VALUES ('294', '5302', '53', 'KABUPATEN SUMBA TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('295', '5303', '53', 'KABUPATEN KUPANG', null, null);
INSERT INTO `master_kota` VALUES ('296', '5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('297', '5305', '53', 'KABUPATEN TIMOR TENGAH UTARA', null, null);
INSERT INTO `master_kota` VALUES ('298', '5306', '53', 'KABUPATEN BELU', null, null);
INSERT INTO `master_kota` VALUES ('299', '5307', '53', 'KABUPATEN ALOR', null, null);
INSERT INTO `master_kota` VALUES ('300', '5308', '53', 'KABUPATEN LEMBATA', null, null);
INSERT INTO `master_kota` VALUES ('301', '5309', '53', 'KABUPATEN FLORES TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('302', '5310', '53', 'KABUPATEN SIKKA', null, null);
INSERT INTO `master_kota` VALUES ('303', '5311', '53', 'KABUPATEN ENDE', null, null);
INSERT INTO `master_kota` VALUES ('304', '5312', '53', 'KABUPATEN NGADA', null, null);
INSERT INTO `master_kota` VALUES ('305', '5313', '53', 'KABUPATEN MANGGARAI', null, null);
INSERT INTO `master_kota` VALUES ('306', '5314', '53', 'KABUPATEN ROTE NDAO', null, null);
INSERT INTO `master_kota` VALUES ('307', '5315', '53', 'KABUPATEN MANGGARAI BARAT', null, null);
INSERT INTO `master_kota` VALUES ('308', '5316', '53', 'KABUPATEN SUMBA TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('309', '5317', '53', 'KABUPATEN SUMBA BARAT DAYA', null, null);
INSERT INTO `master_kota` VALUES ('310', '5318', '53', 'KABUPATEN NAGEKEO', null, null);
INSERT INTO `master_kota` VALUES ('311', '5319', '53', 'KABUPATEN MANGGARAI TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('312', '5320', '53', 'KABUPATEN SABU RAIJUA', null, null);
INSERT INTO `master_kota` VALUES ('313', '5321', '53', 'KABUPATEN MALAKA', null, null);
INSERT INTO `master_kota` VALUES ('314', '5371', '53', 'KOTA KUPANG', null, null);
INSERT INTO `master_kota` VALUES ('315', '6101', '61', 'KABUPATEN SAMBAS', null, null);
INSERT INTO `master_kota` VALUES ('316', '6102', '61', 'KABUPATEN BENGKAYANG', null, null);
INSERT INTO `master_kota` VALUES ('317', '6103', '61', 'KABUPATEN LANDAK', null, null);
INSERT INTO `master_kota` VALUES ('318', '6104', '61', 'KABUPATEN MEMPAWAH', null, null);
INSERT INTO `master_kota` VALUES ('319', '6105', '61', 'KABUPATEN SANGGAU', null, null);
INSERT INTO `master_kota` VALUES ('320', '6106', '61', 'KABUPATEN KETAPANG', null, null);
INSERT INTO `master_kota` VALUES ('321', '6107', '61', 'KABUPATEN SINTANG', null, null);
INSERT INTO `master_kota` VALUES ('322', '6108', '61', 'KABUPATEN KAPUAS HULU', null, null);
INSERT INTO `master_kota` VALUES ('323', '6109', '61', 'KABUPATEN SEKADAU', null, null);
INSERT INTO `master_kota` VALUES ('324', '6110', '61', 'KABUPATEN MELAWI', null, null);
INSERT INTO `master_kota` VALUES ('325', '6111', '61', 'KABUPATEN KAYONG UTARA', null, null);
INSERT INTO `master_kota` VALUES ('326', '6112', '61', 'KABUPATEN KUBU RAYA', null, null);
INSERT INTO `master_kota` VALUES ('327', '6171', '61', 'KOTA PONTIANAK', null, null);
INSERT INTO `master_kota` VALUES ('328', '6172', '61', 'KOTA SINGKAWANG', null, null);
INSERT INTO `master_kota` VALUES ('329', '6201', '62', 'KABUPATEN KOTAWARINGIN BARAT', null, null);
INSERT INTO `master_kota` VALUES ('330', '6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('331', '6203', '62', 'KABUPATEN KAPUAS', null, null);
INSERT INTO `master_kota` VALUES ('332', '6204', '62', 'KABUPATEN BARITO SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('333', '6205', '62', 'KABUPATEN BARITO UTARA', null, null);
INSERT INTO `master_kota` VALUES ('334', '6206', '62', 'KABUPATEN SUKAMARA', null, null);
INSERT INTO `master_kota` VALUES ('335', '6207', '62', 'KABUPATEN LAMANDAU', null, null);
INSERT INTO `master_kota` VALUES ('336', '6208', '62', 'KABUPATEN SERUYAN', null, null);
INSERT INTO `master_kota` VALUES ('337', '6209', '62', 'KABUPATEN KATINGAN', null, null);
INSERT INTO `master_kota` VALUES ('338', '6210', '62', 'KABUPATEN PULANG PISAU', null, null);
INSERT INTO `master_kota` VALUES ('339', '6211', '62', 'KABUPATEN GUNUNG MAS', null, null);
INSERT INTO `master_kota` VALUES ('340', '6212', '62', 'KABUPATEN BARITO TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('341', '6213', '62', 'KABUPATEN MURUNG RAYA', null, null);
INSERT INTO `master_kota` VALUES ('342', '6271', '62', 'KOTA PALANGKA RAYA', null, null);
INSERT INTO `master_kota` VALUES ('343', '6301', '63', 'KABUPATEN TANAH LAUT', null, null);
INSERT INTO `master_kota` VALUES ('344', '6302', '63', 'KABUPATEN KOTA BARU', null, null);
INSERT INTO `master_kota` VALUES ('345', '6303', '63', 'KABUPATEN BANJAR', null, null);
INSERT INTO `master_kota` VALUES ('346', '6304', '63', 'KABUPATEN BARITO KUALA', null, null);
INSERT INTO `master_kota` VALUES ('347', '6305', '63', 'KABUPATEN TAPIN', null, null);
INSERT INTO `master_kota` VALUES ('348', '6306', '63', 'KABUPATEN HULU SUNGAI SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('349', '6307', '63', 'KABUPATEN HULU SUNGAI TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('350', '6308', '63', 'KABUPATEN HULU SUNGAI UTARA', null, null);
INSERT INTO `master_kota` VALUES ('351', '6309', '63', 'KABUPATEN TABALONG', null, null);
INSERT INTO `master_kota` VALUES ('352', '6310', '63', 'KABUPATEN TANAH BUMBU', null, null);
INSERT INTO `master_kota` VALUES ('353', '6311', '63', 'KABUPATEN BALANGAN', null, null);
INSERT INTO `master_kota` VALUES ('354', '6371', '63', 'KOTA BANJARMASIN', null, null);
INSERT INTO `master_kota` VALUES ('355', '6372', '63', 'KOTA BANJAR BARU', null, null);
INSERT INTO `master_kota` VALUES ('356', '6401', '64', 'KABUPATEN PASER', null, null);
INSERT INTO `master_kota` VALUES ('357', '6402', '64', 'KABUPATEN KUTAI BARAT', null, null);
INSERT INTO `master_kota` VALUES ('358', '6403', '64', 'KABUPATEN KUTAI KARTANEGARA', null, null);
INSERT INTO `master_kota` VALUES ('359', '6404', '64', 'KABUPATEN KUTAI TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('360', '6405', '64', 'KABUPATEN BERAU', null, null);
INSERT INTO `master_kota` VALUES ('361', '6409', '64', 'KABUPATEN PENAJAM PASER UTARA', null, null);
INSERT INTO `master_kota` VALUES ('362', '6411', '64', 'KABUPATEN MAHAKAM HULU', null, null);
INSERT INTO `master_kota` VALUES ('363', '6471', '64', 'KOTA BALIKPAPAN', null, null);
INSERT INTO `master_kota` VALUES ('364', '6472', '64', 'KOTA SAMARINDA', null, null);
INSERT INTO `master_kota` VALUES ('365', '6474', '64', 'KOTA BONTANG', null, null);
INSERT INTO `master_kota` VALUES ('366', '6501', '65', 'KABUPATEN MALINAU', null, null);
INSERT INTO `master_kota` VALUES ('367', '6502', '65', 'KABUPATEN BULUNGAN', null, null);
INSERT INTO `master_kota` VALUES ('368', '6503', '65', 'KABUPATEN TANA TIDUNG', null, null);
INSERT INTO `master_kota` VALUES ('369', '6504', '65', 'KABUPATEN NUNUKAN', null, null);
INSERT INTO `master_kota` VALUES ('370', '6571', '65', 'KOTA TARAKAN', null, null);
INSERT INTO `master_kota` VALUES ('371', '7101', '71', 'KABUPATEN BOLAANG MONGONDOW', null, null);
INSERT INTO `master_kota` VALUES ('372', '7102', '71', 'KABUPATEN MINAHASA', null, null);
INSERT INTO `master_kota` VALUES ('373', '7103', '71', 'KABUPATEN KEPULAUAN SANGIHE', null, null);
INSERT INTO `master_kota` VALUES ('374', '7104', '71', 'KABUPATEN KEPULAUAN TALAUD', null, null);
INSERT INTO `master_kota` VALUES ('375', '7105', '71', 'KABUPATEN MINAHASA SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('376', '7106', '71', 'KABUPATEN MINAHASA UTARA', null, null);
INSERT INTO `master_kota` VALUES ('377', '7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA', null, null);
INSERT INTO `master_kota` VALUES ('378', '7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO', null, null);
INSERT INTO `master_kota` VALUES ('379', '7109', '71', 'KABUPATEN MINAHASA TENGGARA', null, null);
INSERT INTO `master_kota` VALUES ('380', '7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('381', '7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('382', '7171', '71', 'KOTA MANADO', null, null);
INSERT INTO `master_kota` VALUES ('383', '7172', '71', 'KOTA BITUNG', null, null);
INSERT INTO `master_kota` VALUES ('384', '7173', '71', 'KOTA TOMOHON', null, null);
INSERT INTO `master_kota` VALUES ('385', '7174', '71', 'KOTA KOTAMOBAGU', null, null);
INSERT INTO `master_kota` VALUES ('386', '7201', '72', 'KABUPATEN BANGGAI KEPULAUAN', null, null);
INSERT INTO `master_kota` VALUES ('387', '7202', '72', 'KABUPATEN BANGGAI', null, null);
INSERT INTO `master_kota` VALUES ('388', '7203', '72', 'KABUPATEN MOROWALI', null, null);
INSERT INTO `master_kota` VALUES ('389', '7204', '72', 'KABUPATEN POSO', null, null);
INSERT INTO `master_kota` VALUES ('390', '7205', '72', 'KABUPATEN DONGGALA', null, null);
INSERT INTO `master_kota` VALUES ('391', '7206', '72', 'KABUPATEN TOLI-TOLI', null, null);
INSERT INTO `master_kota` VALUES ('392', '7207', '72', 'KABUPATEN BUOL', null, null);
INSERT INTO `master_kota` VALUES ('393', '7208', '72', 'KABUPATEN PARIGI MOUTONG', null, null);
INSERT INTO `master_kota` VALUES ('394', '7209', '72', 'KABUPATEN TOJO UNA-UNA', null, null);
INSERT INTO `master_kota` VALUES ('395', '7210', '72', 'KABUPATEN SIGI', null, null);
INSERT INTO `master_kota` VALUES ('396', '7211', '72', 'KABUPATEN BANGGAI LAUT', null, null);
INSERT INTO `master_kota` VALUES ('397', '7212', '72', 'KABUPATEN MOROWALI UTARA', null, null);
INSERT INTO `master_kota` VALUES ('398', '7271', '72', 'KOTA PALU', null, null);
INSERT INTO `master_kota` VALUES ('399', '7301', '73', 'KABUPATEN KEPULAUAN SELAYAR', null, null);
INSERT INTO `master_kota` VALUES ('400', '7302', '73', 'KABUPATEN BULUKUMBA', null, null);
INSERT INTO `master_kota` VALUES ('401', '7303', '73', 'KABUPATEN BANTAENG', null, null);
INSERT INTO `master_kota` VALUES ('402', '7304', '73', 'KABUPATEN JENEPONTO', null, null);
INSERT INTO `master_kota` VALUES ('403', '7305', '73', 'KABUPATEN TAKALAR', null, null);
INSERT INTO `master_kota` VALUES ('404', '7306', '73', 'KABUPATEN GOWA', null, null);
INSERT INTO `master_kota` VALUES ('405', '7307', '73', 'KABUPATEN SINJAI', null, null);
INSERT INTO `master_kota` VALUES ('406', '7308', '73', 'KABUPATEN MAROS', null, null);
INSERT INTO `master_kota` VALUES ('407', '7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN', null, null);
INSERT INTO `master_kota` VALUES ('408', '7310', '73', 'KABUPATEN BARRU', null, null);
INSERT INTO `master_kota` VALUES ('409', '7311', '73', 'KABUPATEN BONE', null, null);
INSERT INTO `master_kota` VALUES ('410', '7312', '73', 'KABUPATEN SOPPENG', null, null);
INSERT INTO `master_kota` VALUES ('411', '7313', '73', 'KABUPATEN WAJO', null, null);
INSERT INTO `master_kota` VALUES ('412', '7314', '73', 'KABUPATEN SIDENRENG RAPPANG', null, null);
INSERT INTO `master_kota` VALUES ('413', '7315', '73', 'KABUPATEN PINRANG', null, null);
INSERT INTO `master_kota` VALUES ('414', '7316', '73', 'KABUPATEN ENREKANG', null, null);
INSERT INTO `master_kota` VALUES ('415', '7317', '73', 'KABUPATEN LUWU', null, null);
INSERT INTO `master_kota` VALUES ('416', '7318', '73', 'KABUPATEN TANA TORAJA', null, null);
INSERT INTO `master_kota` VALUES ('417', '7322', '73', 'KABUPATEN LUWU UTARA', null, null);
INSERT INTO `master_kota` VALUES ('418', '7325', '73', 'KABUPATEN LUWU TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('419', '7326', '73', 'KABUPATEN TORAJA UTARA', null, null);
INSERT INTO `master_kota` VALUES ('420', '7371', '73', 'KOTA MAKASSAR', null, null);
INSERT INTO `master_kota` VALUES ('421', '7372', '73', 'KOTA PAREPARE', null, null);
INSERT INTO `master_kota` VALUES ('422', '7373', '73', 'KOTA PALOPO', null, null);
INSERT INTO `master_kota` VALUES ('423', '7401', '74', 'KABUPATEN BUTON', null, null);
INSERT INTO `master_kota` VALUES ('424', '7402', '74', 'KABUPATEN MUNA', null, null);
INSERT INTO `master_kota` VALUES ('425', '7403', '74', 'KABUPATEN KONAWE', null, null);
INSERT INTO `master_kota` VALUES ('426', '7404', '74', 'KABUPATEN KOLAKA', null, null);
INSERT INTO `master_kota` VALUES ('427', '7405', '74', 'KABUPATEN KONAWE SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('428', '7406', '74', 'KABUPATEN BOMBANA', null, null);
INSERT INTO `master_kota` VALUES ('429', '7407', '74', 'KABUPATEN WAKATOBI', null, null);
INSERT INTO `master_kota` VALUES ('430', '7408', '74', 'KABUPATEN KOLAKA UTARA', null, null);
INSERT INTO `master_kota` VALUES ('431', '7409', '74', 'KABUPATEN BUTON UTARA', null, null);
INSERT INTO `master_kota` VALUES ('432', '7410', '74', 'KABUPATEN KONAWE UTARA', null, null);
INSERT INTO `master_kota` VALUES ('433', '7411', '74', 'KABUPATEN KOLAKA TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('434', '7412', '74', 'KABUPATEN KONAWE KEPULAUAN', null, null);
INSERT INTO `master_kota` VALUES ('435', '7413', '74', 'KABUPATEN MUNA BARAT', null, null);
INSERT INTO `master_kota` VALUES ('436', '7414', '74', 'KABUPATEN BUTON TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('437', '7415', '74', 'KABUPATEN BUTON SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('438', '7471', '74', 'KOTA KENDARI', null, null);
INSERT INTO `master_kota` VALUES ('439', '7472', '74', 'KOTA BAUBAU', null, null);
INSERT INTO `master_kota` VALUES ('440', '7501', '75', 'KABUPATEN BOALEMO', null, null);
INSERT INTO `master_kota` VALUES ('441', '7502', '75', 'KABUPATEN GORONTALO', null, null);
INSERT INTO `master_kota` VALUES ('442', '7503', '75', 'KABUPATEN POHUWATO', null, null);
INSERT INTO `master_kota` VALUES ('443', '7504', '75', 'KABUPATEN BONE BOLANGO', null, null);
INSERT INTO `master_kota` VALUES ('444', '7505', '75', 'KABUPATEN GORONTALO UTARA', null, null);
INSERT INTO `master_kota` VALUES ('445', '7571', '75', 'KOTA GORONTALO', null, null);
INSERT INTO `master_kota` VALUES ('446', '7601', '76', 'KABUPATEN MAJENE', null, null);
INSERT INTO `master_kota` VALUES ('447', '7602', '76', 'KABUPATEN POLEWALI MANDAR', null, null);
INSERT INTO `master_kota` VALUES ('448', '7603', '76', 'KABUPATEN MAMASA', null, null);
INSERT INTO `master_kota` VALUES ('449', '7604', '76', 'KABUPATEN MAMUJU', null, null);
INSERT INTO `master_kota` VALUES ('450', '7605', '76', 'KABUPATEN MAMUJU UTARA', null, null);
INSERT INTO `master_kota` VALUES ('451', '7606', '76', 'KABUPATEN MAMUJU TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('452', '8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT', null, null);
INSERT INTO `master_kota` VALUES ('453', '8102', '81', 'KABUPATEN MALUKU TENGGARA', null, null);
INSERT INTO `master_kota` VALUES ('454', '8103', '81', 'KABUPATEN MALUKU TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('455', '8104', '81', 'KABUPATEN BURU', null, null);
INSERT INTO `master_kota` VALUES ('456', '8105', '81', 'KABUPATEN KEPULAUAN ARU', null, null);
INSERT INTO `master_kota` VALUES ('457', '8106', '81', 'KABUPATEN SERAM BAGIAN BARAT', null, null);
INSERT INTO `master_kota` VALUES ('458', '8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('459', '8108', '81', 'KABUPATEN MALUKU BARAT DAYA', null, null);
INSERT INTO `master_kota` VALUES ('460', '8109', '81', 'KABUPATEN BURU SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('461', '8171', '81', 'KOTA AMBON', null, null);
INSERT INTO `master_kota` VALUES ('462', '8172', '81', 'KOTA TUAL', null, null);
INSERT INTO `master_kota` VALUES ('463', '8201', '82', 'KABUPATEN HALMAHERA BARAT', null, null);
INSERT INTO `master_kota` VALUES ('464', '8202', '82', 'KABUPATEN HALMAHERA TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('465', '8203', '82', 'KABUPATEN KEPULAUAN SULA', null, null);
INSERT INTO `master_kota` VALUES ('466', '8204', '82', 'KABUPATEN HALMAHERA SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('467', '8205', '82', 'KABUPATEN HALMAHERA UTARA', null, null);
INSERT INTO `master_kota` VALUES ('468', '8206', '82', 'KABUPATEN HALMAHERA TIMUR', null, null);
INSERT INTO `master_kota` VALUES ('469', '8207', '82', 'KABUPATEN PULAU MOROTAI', null, null);
INSERT INTO `master_kota` VALUES ('470', '8208', '82', 'KABUPATEN PULAU TALIABU', null, null);
INSERT INTO `master_kota` VALUES ('471', '8271', '82', 'KOTA TERNATE', null, null);
INSERT INTO `master_kota` VALUES ('472', '8272', '82', 'KOTA TIDORE KEPULAUAN', null, null);
INSERT INTO `master_kota` VALUES ('473', '9101', '91', 'KABUPATEN FAKFAK', null, null);
INSERT INTO `master_kota` VALUES ('474', '9102', '91', 'KABUPATEN KAIMANA', null, null);
INSERT INTO `master_kota` VALUES ('475', '9103', '91', 'KABUPATEN TELUK WONDAMA', null, null);
INSERT INTO `master_kota` VALUES ('476', '9104', '91', 'KABUPATEN TELUK BINTUNI', null, null);
INSERT INTO `master_kota` VALUES ('477', '9105', '91', 'KABUPATEN MANOKWARI', null, null);
INSERT INTO `master_kota` VALUES ('478', '9106', '91', 'KABUPATEN SORONG SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('479', '9107', '91', 'KABUPATEN SORONG', null, null);
INSERT INTO `master_kota` VALUES ('480', '9108', '91', 'KABUPATEN RAJA AMPAT', null, null);
INSERT INTO `master_kota` VALUES ('481', '9109', '91', 'KABUPATEN TAMBRAUW', null, null);
INSERT INTO `master_kota` VALUES ('482', '9110', '91', 'KABUPATEN MAYBRAT', null, null);
INSERT INTO `master_kota` VALUES ('483', '9111', '91', 'KABUPATEN MANOKWARI SELATAN', null, null);
INSERT INTO `master_kota` VALUES ('484', '9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK', null, null);
INSERT INTO `master_kota` VALUES ('485', '9171', '91', 'KOTA SORONG', null, null);
INSERT INTO `master_kota` VALUES ('486', '9401', '94', 'KABUPATEN MERAUKE', null, null);
INSERT INTO `master_kota` VALUES ('487', '9402', '94', 'KABUPATEN JAYAWIJAYA', null, null);
INSERT INTO `master_kota` VALUES ('488', '9403', '94', 'KABUPATEN JAYAPURA', null, null);
INSERT INTO `master_kota` VALUES ('489', '9404', '94', 'KABUPATEN NABIRE', null, null);
INSERT INTO `master_kota` VALUES ('490', '9408', '94', 'KABUPATEN KEPULAUAN YAPEN', null, null);
INSERT INTO `master_kota` VALUES ('491', '9409', '94', 'KABUPATEN BIAK NUMFOR', null, null);
INSERT INTO `master_kota` VALUES ('492', '9410', '94', 'KABUPATEN PANIAI', null, null);
INSERT INTO `master_kota` VALUES ('493', '9411', '94', 'KABUPATEN PUNCAK JAYA', null, null);
INSERT INTO `master_kota` VALUES ('494', '9412', '94', 'KABUPATEN MIMIKA', null, null);
INSERT INTO `master_kota` VALUES ('495', '9413', '94', 'KABUPATEN BOVEN DIGOEL', null, null);
INSERT INTO `master_kota` VALUES ('496', '9414', '94', 'KABUPATEN MAPPI', null, null);
INSERT INTO `master_kota` VALUES ('497', '9415', '94', 'KABUPATEN ASMAT', null, null);
INSERT INTO `master_kota` VALUES ('498', '9416', '94', 'KABUPATEN YAHUKIMO', null, null);
INSERT INTO `master_kota` VALUES ('499', '9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG', null, null);
INSERT INTO `master_kota` VALUES ('500', '9418', '94', 'KABUPATEN TOLIKARA', null, null);
INSERT INTO `master_kota` VALUES ('501', '9419', '94', 'KABUPATEN SARMI', null, null);
INSERT INTO `master_kota` VALUES ('502', '9420', '94', 'KABUPATEN KEEROM', null, null);
INSERT INTO `master_kota` VALUES ('503', '9426', '94', 'KABUPATEN WAROPEN', null, null);
INSERT INTO `master_kota` VALUES ('504', '9427', '94', 'KABUPATEN SUPIORI', null, null);
INSERT INTO `master_kota` VALUES ('505', '9428', '94', 'KABUPATEN MAMBERAMO RAYA', null, null);
INSERT INTO `master_kota` VALUES ('506', '9429', '94', 'KABUPATEN NDUGA', null, null);
INSERT INTO `master_kota` VALUES ('507', '9430', '94', 'KABUPATEN LANNY JAYA', null, null);
INSERT INTO `master_kota` VALUES ('508', '9431', '94', 'KABUPATEN MAMBERAMO TENGAH', null, null);
INSERT INTO `master_kota` VALUES ('509', '9432', '94', 'KABUPATEN YALIMO', null, null);
INSERT INTO `master_kota` VALUES ('510', '9433', '94', 'KABUPATEN PUNCAK', null, null);
INSERT INTO `master_kota` VALUES ('511', '9434', '94', 'KABUPATEN DOGIYAI', null, null);
INSERT INTO `master_kota` VALUES ('512', '9435', '94', 'KABUPATEN INTAN JAYA', null, null);
INSERT INTO `master_kota` VALUES ('513', '9436', '94', 'KABUPATEN DEIYAI', null, null);
INSERT INTO `master_kota` VALUES ('514', '9471', '94', 'KOTA JAYAPURA', null, null);

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
-- Table structure for master_propinsi
-- ----------------------------
DROP TABLE IF EXISTS `master_propinsi`;
CREATE TABLE `master_propinsi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_propinsi
-- ----------------------------
INSERT INTO `master_propinsi` VALUES ('1', '11', 'ACEH', null, null);
INSERT INTO `master_propinsi` VALUES ('2', '12', 'SUMATERA UTARA', null, null);
INSERT INTO `master_propinsi` VALUES ('3', '13', 'SUMATERA BARAT', null, null);
INSERT INTO `master_propinsi` VALUES ('4', '14', 'RIAU', null, null);
INSERT INTO `master_propinsi` VALUES ('5', '15', 'JAMBI', null, null);
INSERT INTO `master_propinsi` VALUES ('6', '16', 'SUMATERA SELATAN', null, null);
INSERT INTO `master_propinsi` VALUES ('7', '17', 'BENGKULU', null, null);
INSERT INTO `master_propinsi` VALUES ('8', '18', 'LAMPUNG', null, null);
INSERT INTO `master_propinsi` VALUES ('9', '19', 'KEPULAUAN BANGKA BELITUNG', null, null);
INSERT INTO `master_propinsi` VALUES ('10', '21', 'KEPULAUAN RIAU', null, null);
INSERT INTO `master_propinsi` VALUES ('11', '31', 'DKI JAKARTA', null, null);
INSERT INTO `master_propinsi` VALUES ('12', '32', 'JAWA BARAT', null, null);
INSERT INTO `master_propinsi` VALUES ('13', '33', 'JAWA TENGAH', null, null);
INSERT INTO `master_propinsi` VALUES ('14', '34', 'DI YOGYAKARTA', null, null);
INSERT INTO `master_propinsi` VALUES ('15', '35', 'JAWA TIMUR', null, null);
INSERT INTO `master_propinsi` VALUES ('16', '36', 'BANTEN', null, null);
INSERT INTO `master_propinsi` VALUES ('17', '51', 'BALI', null, null);
INSERT INTO `master_propinsi` VALUES ('18', '52', 'NUSA TENGGARA BARAT', null, null);
INSERT INTO `master_propinsi` VALUES ('19', '53', 'NUSA TENGGARA TIMUR', null, null);
INSERT INTO `master_propinsi` VALUES ('20', '61', 'KALIMANTAN BARAT', null, null);
INSERT INTO `master_propinsi` VALUES ('21', '62', 'KALIMANTAN TENGAH', null, null);
INSERT INTO `master_propinsi` VALUES ('22', '63', 'KALIMANTAN SELATAN', null, null);
INSERT INTO `master_propinsi` VALUES ('23', '64', 'KALIMANTAN TIMUR', null, null);
INSERT INTO `master_propinsi` VALUES ('24', '65', 'KALIMANTAN UTARA', null, null);
INSERT INTO `master_propinsi` VALUES ('25', '71', 'SULAWESI UTARA', null, null);
INSERT INTO `master_propinsi` VALUES ('26', '72', 'SULAWESI TENGAH', null, null);
INSERT INTO `master_propinsi` VALUES ('27', '73', 'SULAWESI SELATAN', null, null);
INSERT INTO `master_propinsi` VALUES ('28', '74', 'SULAWESI TENGGARA', null, null);
INSERT INTO `master_propinsi` VALUES ('29', '75', 'GORONTALO', null, null);
INSERT INTO `master_propinsi` VALUES ('30', '76', 'SULAWESI BARAT', null, null);
INSERT INTO `master_propinsi` VALUES ('31', '81', 'MALUKU', null, null);
INSERT INTO `master_propinsi` VALUES ('32', '82', 'MALUKU UTARA', null, null);
INSERT INTO `master_propinsi` VALUES ('33', '91', 'PAPUA BARAT', null, null);
INSERT INTO `master_propinsi` VALUES ('34', '94', 'PAPUA', null, null);

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
  `merk_id` tinyint(1) NOT NULL,
  `kode` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `type_id` tinyint(1) NOT NULL,
  `slug` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `harga` float NOT NULL DEFAULT '0',
  `harga_diskon` float DEFAULT '0',
  `deskripsi` longtext COLLATE latin1_general_ci,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'no_image.jpg',
  `gambar_alt` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of master_unit
-- ----------------------------
INSERT INTO `master_unit` VALUES ('1', '1', 'N50Z', '1', 'jb-n50z', '450000', '0', 'Our most popular bottle, available in a variety of colors to help brighten up anybody’s gear. The large opening on our wide-mouth bottles easily accommodates ice cubes, fits most water purifiers and filters, and makes hand washing a breeze. The attached loop-top never gets lost and screws on and off easily. Printed graduations let keep track of your hydration. Dishwasher safe (Please make sure the top does not touch the heating element, or it will melt).\r\n\r\nWhy we love it: It’s clear this is a product that customers love. The description clearly articulates the water bottles special perks and practicality. Nalgene is also very smart to include that its product is dishwasher safe; touching on what could be a pain point for its customers. Finally, the company makes an important disclaimer with the text “Please make sure the top does not touch the heating element” to provide valuable product care information that will help the company proactively reduce returns.', 'jb_n50z.jpg', 'jb_n50z_1.jpg', '0', '1', '1', null, '2017-08-26 09:51:02');
INSERT INTO `master_unit` VALUES ('2', '2', 'XYZ', '2', 'xyz', '1200000', '0', 'a', 'no_image.jpg', null, '0', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('3', '4', '1234', '3', '1234', '1000000', '0', 'asdasdas', 'no_image.jpg', null, '0', '0', '1', '2017-08-06 05:55:39', '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('4', '5', 'YBX5335', '2', 'yuasa-ybx5335', '1200000', '1100000', 'Aki Motor', 'yuasa_ybx5335.jpg', null, '0', '1', '1', '2017-08-06 05:56:14', '2017-08-22 16:46:50');
INSERT INTO `master_unit` VALUES ('5', '5', 'X11', '3', 'x11', '298000', '259000', 'abc', 'no_image.jpg', null, '0', '0', '1', '2017-08-06 05:56:56', '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('6', '2', 'X123', '2', 'gs-x123', '250000', '235000', 'motor', 'gs_x123.jpg', null, '0', '1', '1', '2017-08-06 05:57:39', '2017-08-26 09:05:38');
INSERT INTO `master_unit` VALUES ('7', '0', '17089-296', '0', 'Zaam-Dox', '2527610', '0', 'Occlusion of Left Atrial Appendage, Open Approach', 'no_image.jpg', null, '22', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('8', '0', '21130-950', '0', 'Regrant', '803249', '0', 'Supplement of Left Upper Leg Subcutaneous Tissue and Fascia with Autologous Tissue Substitute, Percutaneous Approach', 'no_image.jpg', null, '17', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('9', '0', '62802-103', '0', 'Viva', '1776530', '0', 'Drainage of Left Common Carotid Artery, Open Approach, Diagnostic', 'no_image.jpg', null, '6', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('10', '0', '53489-146', '0', 'Quo Lux', '1866780', '0', 'Fusion of Cervicothoracic Vertebral Joint with Synthetic Substitute, Anterior Approach, Anterior Column, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '13', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('11', '0', '0409-3390', '0', 'Asoka', '2713400', '0', 'Supplement Right Lower Extremity with Synthetic Substitute, Open Approach', 'no_image.jpg', null, '23', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('12', '2', '49349-144', '2', 'Fix San', '961661', '0', 'Revision of Synthetic Substitute in Tracheobronchial Tree, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '6', '1', '1', null, '2017-08-26 09:31:01');
INSERT INTO `master_unit` VALUES ('13', '0', '27293-014', '0', 'Zontrax', '2332430', '0', 'Supplement Left Lower Leg with Synthetic Substitute, Open Approach', 'no_image.jpg', null, '8', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('14', '0', '52125-924', '0', 'Konklux', '646253', '0', 'Replacement of Superior Vena Cava with Synthetic Substitute, Open Approach', 'no_image.jpg', null, '7', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('15', '0', '21695-453', '0', 'Zontrax', '1967210', '0', 'Insertion of Internal Fixation Device into Right Acetabulum, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '10', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('16', '0', '55926-0020', '0', 'Viva', '1117340', '0', 'Occlusion of Right Vertebral Vein with Extraluminal Device, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '20', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('17', '0', '24236-609', '0', 'Greenlam', '1322880', '0', 'Repair Left Upper Leg Tendon, Open Approach', 'no_image.jpg', null, '23', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('18', '0', '68428-028', '0', 'Quo Lux', '2858680', '0', 'Introduction of Monoclonal Antibody into Lower GI, Percutaneous Approach', 'no_image.jpg', null, '10', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('19', '0', '68382-035', '0', 'Daltfresh', '2096020', '0', 'Reposition Right Innominate Vein, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '9', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('20', '1', '63354-125', '1', 'Overhold', '1883800', '0', 'Inspection of Larynx, Open Approach', 'no_image.jpg', null, '12', '1', '1', null, '2017-08-26 09:31:17');
INSERT INTO `master_unit` VALUES ('21', '0', '0472-5242', '0', 'Zontrax', '2082810', '0', 'Extirpation of Matter from Left Lower Arm and Wrist Muscle, Open Approach', 'no_image.jpg', null, '17', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('22', '0', '51523-025', '0', 'Stronghold', '1558440', '0', 'Supplement Left Sternoclavicular Joint with Nonautologous Tissue Substitute, Open Approach', 'no_image.jpg', null, '8', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('23', '3', '0093-7154', '1', 'Gembucket', '2766340', '0', 'Extirpation of Matter from Left Main Bronchus, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '4', '1', '1', null, '2017-08-26 09:31:19');
INSERT INTO `master_unit` VALUES ('24', '0', '14222-2050', '0', 'Hatity', '290867', '0', 'Control Bleeding in Right Hand, Open Approach', 'no_image.jpg', null, '7', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('25', '0', '68084-305', '0', 'Alphazap', '1176400', '0', 'Destruction of Left Carpal Joint, Percutaneous Approach', 'no_image.jpg', null, '21', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('26', '0', '0295-1183', '0', 'Fixflex', '147067', '0', 'Restriction of Hepatic Artery with Intraluminal Device, Open Approach', 'no_image.jpg', null, '9', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('27', '0', '0168-0014', '0', 'Voyatouch', '2487450', '0', 'Drainage of Urethra, Percutaneous Approach', 'no_image.jpg', null, '9', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('28', '5', '68745-1095', '2', 'Span', '1288630', '0', 'Introduction of Other Therapeutic Substance into Nose, Via Natural or Artificial Opening', 'no_image.jpg', null, '10', '1', '1', null, '2017-08-26 09:31:21');
INSERT INTO `master_unit` VALUES ('29', '0', '10356-553', '0', 'Pannier', '2101980', '0', 'Bypass Right Internal Iliac Artery to Lower Extremity Artery with Autologous Venous Tissue, Open Approach', 'no_image.jpg', null, '13', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('30', '0', '55289-012', '0', 'Home Ing', '2643160', '0', 'Excision of Right Zygomatic Bone, Percutaneous Endoscopic Approach, Diagnostic', 'no_image.jpg', null, '20', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('31', '5', '36987-2599', '1', 'Toughjoyfax', '2077910', '0', 'Extirpation of Matter from Inferior Mesenteric Artery, Bifurcation, Percutaneous Approach', 'no_image.jpg', null, '15', '1', '1', null, '2017-08-26 09:31:23');
INSERT INTO `master_unit` VALUES ('32', '0', '55154-5499', '0', 'Fix San', '1140220', '0', 'Destruction of Left Greater Saphenous Vein, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '18', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('33', '0', '0338-0553', '0', 'Keylex', '737636', '0', 'Repair Right Upper Lung Lobe, Via Natural or Artificial Opening Endoscopic', 'no_image.jpg', null, '14', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('34', '0', '76466-500', '11', 'Mat Lam Tam', '782440', '0', 'Restriction of Left External Carotid Artery with Extraluminal Device, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '20', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('35', '3', '61957-0601', '2', 'Lotstring', '103632', '0', 'Resection of Nasal Turbinate, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '21', '1', '1', null, '2017-08-26 09:31:24');
INSERT INTO `master_unit` VALUES ('36', '3', '54868-6014', '2', 'Asoka', '1080570', '0', 'Low Dose Rate (LDR) Brachytherapy of Soft Palate using Palladium 103 (Pd-103)', 'no_image.jpg', null, '22', '1', '1', null, '2017-08-26 09:31:25');
INSERT INTO `master_unit` VALUES ('37', '4', '64141-113', '2', 'Hatity', '1992500', '0', 'Bypass Bilateral Ureters to Ileum with Synthetic Substitute, Open Approach', 'no_image.jpg', null, '21', '1', '1', null, '2017-08-26 09:31:36');
INSERT INTO `master_unit` VALUES ('38', '0', '36987-2847', '0', 'Sonsing', '528467', '0', 'Excision of Left Colic Artery, Percutaneous Endoscopic Approach, Diagnostic', 'no_image.jpg', null, '12', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('39', '0', '54868-5819', '0', 'Zontrax', '874155', '0', 'Fluoroscopy of Left Upper Extremity Veins using Other Contrast, Guidance', 'no_image.jpg', null, '4', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('40', '0', '0067-6024', '0', 'Pannier', '599062', '0', 'Replacement of Left Common Carotid Artery with Autologous Tissue Substitute, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '10', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('41', '0', '67544-479', '0', 'Vagram', '956893', '0', 'Ear, Nose, Sinus, Bypass', 'no_image.jpg', null, '4', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('42', '0', '54569-0084', '0', 'Asoka', '1257070', '0', 'Fluoroscopy of Bilateral Upper Extremity Veins using Other Contrast, Guidance', 'no_image.jpg', null, '16', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('43', '0', '62756-827', '0', 'Biodex', '2495220', '0', 'Computerized Tomography (CT Scan) of Right Foot/Toe Joint', 'no_image.jpg', null, '4', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('44', '0', '13733-014', '0', 'Fintone', '375960', '0', 'Dilation of Left Popliteal Artery with Drug-eluting Intraluminal Device, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '15', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('45', '0', '57520-1043', '0', 'Zoolab', '173401', '0', 'Insertion of Infusion Device into Thoracolumbar Vertebral Disc, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '7', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('46', '0', '50804-370', '0', 'Y-find', '2581110', '0', 'Bypass Left Common Iliac Artery to Right External Iliac Artery with Synthetic Substitute, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '17', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('47', '0', '50198-2826', '0', 'Lotstring', '2008610', '0', 'Restriction of Right Vertebral Vein with Extraluminal Device, Percutaneous Approach', 'no_image.jpg', null, '20', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('48', '0', '49967-611', '0', 'Wrapsafe', '1412040', '0', 'Removal of Extraluminal Device from Pancreatic Duct, Percutaneous Approach', 'no_image.jpg', null, '9', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('49', '0', '0904-6237', '0', 'Y-Solowarm', '1716140', '0', 'Supplement Clitoris with Nonautologous Tissue Substitute, Open Approach', 'no_image.jpg', null, '22', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('50', '0', '36987-1919', '0', 'Tresom', '534890', '0', 'Drainage of Left Common Iliac Vein, Percutaneous Endoscopic Approach, Diagnostic', 'no_image.jpg', null, '16', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('51', '0', '49288-0418', '0', 'Mat Lam Tam', '2295580', '0', 'Release Sigmoid Colon, Open Approach', 'no_image.jpg', null, '6', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('52', '2', '63304-459', '0', 'Bitwolf', '1017880', '0', 'Compression of Right Lower Leg using Pressure Dressing', 'no_image.jpg', null, '12', '1', '1', null, '2017-08-26 09:31:43');
INSERT INTO `master_unit` VALUES ('53', '0', '54973-3124', '0', 'Ronstring', '1545980', '0', 'Dilation of Left External Carotid Artery, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '8', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('54', '0', '43251-3340', '0', 'Sub-Ex', '254954', '0', 'Supplement Right Common Carotid Artery with Nonautologous Tissue Substitute, Open Approach', 'no_image.jpg', null, '11', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('55', '0', '50991-399', '0', 'Zaam-Dox', '1471790', '0', 'Division of Right Hip Tendon, Percutaneous Approach', 'no_image.jpg', null, '25', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('56', '0', '49738-206', '0', 'Flexidy', '1142480', '0', 'Drainage of Left Temporomandibular Joint with Drainage Device, Open Approach', 'no_image.jpg', null, '21', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('57', '0', '55111-355', '0', 'Zoolab', '2097880', '0', 'Removal of Synthetic Substitute from Left Metacarpophalangeal Joint, Open Approach', 'no_image.jpg', null, '5', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('58', '0', '64942-1223', '0', 'Viva', '1641150', '0', 'Removal of External Fixation Device from Right Wrist Joint, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '8', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('59', '0', '60429-046', '0', 'Keylex', '1111580', '0', 'Change Drainage Device in Bone Marrow, External Approach', 'no_image.jpg', null, '22', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('60', '0', '66116-352', '0', 'Keylex', '953779', '0', 'Dilation of Right Basilic Vein with Intraluminal Device, Percutaneous Approach', 'no_image.jpg', null, '15', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('61', '0', '31720-201', '0', 'Asoka', '2666000', '0', 'Bypass Abdominal Aorta to Left Internal Iliac Artery with Nonautologous Tissue Substitute, Open Approach', 'no_image.jpg', null, '16', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('62', '0', '53808-0972', '0', 'Temp', '1796710', '0', 'Bypass Transverse Colon to Sigmoid Colon, Via Natural or Artificial Opening Endoscopic', 'no_image.jpg', null, '7', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('63', '0', '55648-716', '0', 'Stim', '774347', '0', 'Bypass Left Subclavian Artery to Right Lower Leg Artery with Autologous Arterial Tissue, Open Approach', 'no_image.jpg', null, '15', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('64', '0', '24846-0001', '0', 'Redhold', '2905800', '0', 'Drainage of Left Hip Bursa and Ligament with Drainage Device, Percutaneous Approach', 'no_image.jpg', null, '10', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('65', '0', '42291-232', '0', 'Temp', '486675', '0', 'Insertion of Infusion Pump into Right Upper Arm Subcutaneous Tissue and Fascia, Percutaneous Approach', 'no_image.jpg', null, '18', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('66', '0', '17156-613', '0', 'Sub-Ex', '1440090', '0', 'Revision of Synthetic Substitute in Vagina and Cul-de-sac, Open Approach', 'no_image.jpg', null, '23', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('67', '0', '57520-0521', '0', 'Bytecard', '2093300', '0', 'Change Other Device in Lymphatic, External Approach', 'no_image.jpg', null, '19', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('68', '0', '0904-6254', '0', 'Lotlux', '1065690', '0', 'Excision of Right Vas Deferens, Percutaneous Approach', 'no_image.jpg', null, '25', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('69', '0', '51824-012', '0', 'Overhold', '2659050', '0', 'Alteration of Left External Ear, Percutaneous Approach', 'no_image.jpg', null, '23', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('70', '0', '24338-611', '0', 'Tresom', '2018700', '0', 'Excision of Occipital-cervical Joint, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '22', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('71', '0', '13811-676', '0', 'Holdlamis', '1868480', '0', 'Plain Radiography of Right Hand', 'no_image.jpg', null, '14', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('72', '0', '42884-442', '0', 'Regrant', '1573560', '0', 'Revision of Drainage Device in Upper Vein, Open Approach', 'no_image.jpg', null, '21', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('73', '0', '21695-234', '0', 'Solarbreeze', '1532970', '0', 'Supplement Thoracic Nerve with Autologous Tissue Substitute, Percutaneous Approach', 'no_image.jpg', null, '19', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('74', '0', '36987-1272', '0', 'Stronghold', '440889', '0', 'Replacement of Right Ankle Joint with Synthetic Substitute, Open Approach', 'no_image.jpg', null, '14', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('75', '0', '76237-250', '0', 'Flexidy', '1029500', '0', 'Excision of Left Pulmonary Artery, Open Approach, Diagnostic', 'no_image.jpg', null, '6', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('76', '0', '10202-751', '0', 'Otcom', '1852770', '0', 'Dilation of Right Femoral Artery with Four or More Intraluminal Devices, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '18', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('77', '0', '68180-194', '0', 'Prodder', '1458780', '0', 'Replacement of Epiglottis with Nonautologous Tissue Substitute, Via Natural or Artificial Opening', 'no_image.jpg', null, '6', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('78', '0', '50685-001', '0', 'Gembucket', '1200190', '0', 'Repair Right Vocal Cord, Open Approach', 'no_image.jpg', null, '20', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('79', '0', '57237-102', '0', 'Konklux', '846549', '0', 'Division of Right Parietal Bone, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '16', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('80', '0', '76049-008', '0', 'Regrant', '2376880', '0', 'Computerized Tomography (CT Scan) of Pelvic Arteries using Low Osmolar Contrast', 'no_image.jpg', null, '14', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('81', '0', '36987-1875', '0', 'Trippledex', '2777400', '0', 'Occlusion of Right External Iliac Artery with Extraluminal Device, Open Approach', 'no_image.jpg', null, '16', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('82', '0', '0781-5149', '0', 'Zoolab', '650037', '0', 'Dilation of Right Posterior Tibial Artery with Three Intraluminal Devices, Percutaneous Approach', 'no_image.jpg', null, '11', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('83', '0', '58892-126', '0', 'Quo Lux', '2297470', '0', 'Repair Lumbar Plexus, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '4', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('84', '0', '62670-4245', '0', 'Holdlamis', '1950460', '0', 'Drainage of Nasal Bone, Percutaneous Approach, Diagnostic', 'no_image.jpg', null, '16', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('85', '0', '52567-124', '0', 'Voyatouch', '2274060', '0', 'Destruction of Buttock Skin, External Approach', 'no_image.jpg', null, '6', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('86', '0', '53808-0914', '0', 'Cookley', '324288', '0', 'Insertion of Infusion Device into Left Thyroid Artery, Percutaneous Approach', 'no_image.jpg', null, '6', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('87', '0', '76214-047', '0', 'Sub-Ex', '644246', '0', 'Dilation of Esophagus, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '7', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('88', '0', '61442-122', '0', 'Otcom', '248248', '0', 'Division of Left Humeral Head, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '19', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('89', '0', '64406-011', '0', 'Otcom', '1755970', '0', 'Supplement of Left Foot Subcutaneous Tissue and Fascia with Nonautologous Tissue Substitute, Open Approach', 'no_image.jpg', null, '24', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('90', '0', '51523-105', '0', 'Trippledex', '2124730', '0', 'Revision of Spacer in Right Metacarpophalangeal Joint, External Approach', 'no_image.jpg', null, '9', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('91', '0', '0268-1373', '0', 'Fixflex', '793721', '0', 'Occlusion of Abdominal Aorta, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '24', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('92', '0', '49035-915', '0', 'Temp', '2863490', '0', 'Removal of Traction Apparatus on Right Lower Arm', 'no_image.jpg', null, '12', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('93', '0', '0395-0119', '0', 'Cardify', '491858', '0', 'Revision of Autologous Tissue Substitute in Thoracolumbar Vertebral Joint, Open Approach', 'no_image.jpg', null, '6', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('94', '0', '60512-8015', '0', 'Stronghold', '1229430', '0', 'Drainage of Right Wrist Joint, Open Approach, Diagnostic', 'no_image.jpg', null, '22', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('95', '0', '63717-877', '0', 'Trippledex', '1407510', '0', 'Drainage of Left Shoulder Bursa and Ligament, Open Approach', 'no_image.jpg', null, '5', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('96', '0', '30142-224', '0', 'Stim', '2845190', '0', 'Contact Radiation of Kidney', 'no_image.jpg', null, '23', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('97', '0', '41167-3002', '0', 'Wrapsafe', '2006410', '0', 'Alteration of Right Lower Leg with Nonautologous Tissue Substitute, Percutaneous Approach', 'no_image.jpg', null, '15', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('98', '0', '64720-137', '0', 'Quo Lux', '1928790', '0', 'Revision of Extraluminal Device in Trachea, External Approach', 'no_image.jpg', null, '7', '0', '1', null, '2017-08-26 09:30:41');
INSERT INTO `master_unit` VALUES ('99', '2', '50458-563', '0', 'Flowdesk', '1014410', '0', 'Bypass Left Axillary Artery to Lower Arm Vein with Synthetic Substitute, Open Approach', 'no_image.jpg', null, '11', '0', '1', '2017-08-22 09:30:41', '2017-08-26 09:40:39');
INSERT INTO `master_unit` VALUES ('100', '3', '60429-116', '0', 'Quo Lux', '744346', '0', 'Excision of Right Sternoclavicular Joint, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '4', '0', '1', '2017-08-23 09:30:41', '2017-08-26 09:40:39');
INSERT INTO `master_unit` VALUES ('101', '4', '10812-958', '0', 'Viva', '2326900', '0', 'Insertion of Intraluminal Device into Left Brachial Vein, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '23', '0', '1', '2017-08-23 09:30:41', '2017-08-26 09:40:38');
INSERT INTO `master_unit` VALUES ('102', '3', '0185-0063', '0', 'Bigtax', '763916', '0', 'Supplement Left Nipple with Autologous Tissue Substitute, Percutaneous Approach', 'no_image.jpg', null, '18', '0', '1', '2017-08-23 09:30:41', '2017-08-26 09:40:37');
INSERT INTO `master_unit` VALUES ('103', '2', '41268-175', '0', 'Tin', '1301340', '1290000', 'Extirpation of Matter from Innominate Artery, Bifurcation, Open Approach', 'no_image.jpg', null, '10', '0', '1', '2017-08-24 09:30:41', '2017-08-26 09:42:56');
INSERT INTO `master_unit` VALUES ('104', '1', '37205-738', '0', 'Zoolab', '1869530', '0', 'Reposition Left Renal Artery, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '8', '0', '1', '2017-08-25 09:30:41', '2017-08-26 09:40:36');
INSERT INTO `master_unit` VALUES ('105', '5', '0019-1324', '0', 'Tin', '270999', '0', 'Restriction of Left Ureter, Via Natural or Artificial Opening', 'no_image.jpg', null, '11', '0', '1', '2017-08-25 09:30:41', '2017-08-26 09:40:35');
INSERT INTO `master_unit` VALUES ('106', '5', '43353-324', '0', 'Tresom', '2815830', '0', 'Release Right Upper Lung Lobe, Percutaneous Endoscopic Approach', 'no_image.jpg', null, '16', '0', '1', '2017-08-26 09:30:41', '2017-08-26 09:40:34');

-- ----------------------------
-- Table structure for master_unit_picture
-- ----------------------------
DROP TABLE IF EXISTS `master_unit_picture`;
CREATE TABLE `master_unit_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_unit_picture
-- ----------------------------
INSERT INTO `master_unit_picture` VALUES ('1', '4', 'jb_n50z.jpg', null, '2017-08-26 08:42:43');
INSERT INTO `master_unit_picture` VALUES ('2', '1', 'img11.jpg', null, '2017-08-23 12:55:09');
INSERT INTO `master_unit_picture` VALUES ('3', '1', 'img10.jpg', null, null);
INSERT INTO `master_unit_picture` VALUES ('4', '1', 'img11.jpg', null, null);

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
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `total` float NOT NULL,
  `address_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for orders_payments
-- ----------------------------
DROP TABLE IF EXISTS `orders_payments`;
CREATE TABLE `orders_payments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `failed` tinyint(4) NOT NULL,
  `transaction_id` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of orders_payments
-- ----------------------------

-- ----------------------------
-- Table structure for orders_products
-- ----------------------------
DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of orders_products
-- ----------------------------

-- ----------------------------
-- Table structure for orders_shippings
-- ----------------------------
DROP TABLE IF EXISTS `orders_shippings`;
CREATE TABLE `orders_shippings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alamat1` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `alamat2` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `kota` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `kodepos` int(7) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of orders_shippings
-- ----------------------------

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
