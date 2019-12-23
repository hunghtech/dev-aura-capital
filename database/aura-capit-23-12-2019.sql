/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : aura-capit-2019

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-12-23 21:41:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `arcp_commentmeta`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_commentmeta`;
CREATE TABLE `arcp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_comments`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_comments`;
CREATE TABLE `arcp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_comments
-- ----------------------------
INSERT INTO arcp_comments VALUES ('1', '1', 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-15 08:54:57', '2019-12-15 08:54:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', '0', '1', '', '', '0', '0');

-- ----------------------------
-- Table structure for `arcp_icl_content_status`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_content_status`;
CREATE TABLE `arcp_icl_content_status` (
  `rid` bigint(20) NOT NULL,
  `nid` bigint(20) NOT NULL,
  `timestamp` datetime NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_content_status
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_core_status`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_core_status`;
CREATE TABLE `arcp_icl_core_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL,
  `module` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_core_status
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_flags`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_flags`;
CREATE TABLE `arcp_icl_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_template` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_code` (`lang_code`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_flags
-- ----------------------------
INSERT INTO arcp_icl_flags VALUES ('1', 'ar', 'ar.png', '0');
INSERT INTO arcp_icl_flags VALUES ('2', 'bg', 'bg.png', '0');
INSERT INTO arcp_icl_flags VALUES ('3', 'bs', 'bs.png', '0');
INSERT INTO arcp_icl_flags VALUES ('4', 'ca', 'ca.png', '0');
INSERT INTO arcp_icl_flags VALUES ('5', 'cs', 'cs.png', '0');
INSERT INTO arcp_icl_flags VALUES ('6', 'cy', 'cy.png', '0');
INSERT INTO arcp_icl_flags VALUES ('7', 'da', 'da.png', '0');
INSERT INTO arcp_icl_flags VALUES ('8', 'de', 'de.png', '0');
INSERT INTO arcp_icl_flags VALUES ('9', 'el', 'el.png', '0');
INSERT INTO arcp_icl_flags VALUES ('10', 'en', 'en.png', '0');
INSERT INTO arcp_icl_flags VALUES ('11', 'eo', 'eo.png', '0');
INSERT INTO arcp_icl_flags VALUES ('12', 'es', 'es.png', '0');
INSERT INTO arcp_icl_flags VALUES ('13', 'et', 'et.png', '0');
INSERT INTO arcp_icl_flags VALUES ('14', 'eu', 'eu.png', '0');
INSERT INTO arcp_icl_flags VALUES ('15', 'fa', 'fa.png', '0');
INSERT INTO arcp_icl_flags VALUES ('16', 'fi', 'fi.png', '0');
INSERT INTO arcp_icl_flags VALUES ('17', 'fr', 'fr.png', '0');
INSERT INTO arcp_icl_flags VALUES ('18', 'ga', 'ga.png', '0');
INSERT INTO arcp_icl_flags VALUES ('19', 'he', 'he.png', '0');
INSERT INTO arcp_icl_flags VALUES ('20', 'hi', 'hi.png', '0');
INSERT INTO arcp_icl_flags VALUES ('21', 'hr', 'hr.png', '0');
INSERT INTO arcp_icl_flags VALUES ('22', 'hu', 'hu.png', '0');
INSERT INTO arcp_icl_flags VALUES ('23', 'hy', 'hy.png', '0');
INSERT INTO arcp_icl_flags VALUES ('24', 'id', 'id.png', '0');
INSERT INTO arcp_icl_flags VALUES ('25', 'is', 'is.png', '0');
INSERT INTO arcp_icl_flags VALUES ('26', 'it', 'it.png', '0');
INSERT INTO arcp_icl_flags VALUES ('27', 'ja', 'ja.png', '0');
INSERT INTO arcp_icl_flags VALUES ('28', 'ko', 'ko.png', '0');
INSERT INTO arcp_icl_flags VALUES ('29', 'ku', 'ku.png', '0');
INSERT INTO arcp_icl_flags VALUES ('30', 'la', 'la.png', '0');
INSERT INTO arcp_icl_flags VALUES ('31', 'lt', 'lt.png', '0');
INSERT INTO arcp_icl_flags VALUES ('32', 'lv', 'lv.png', '0');
INSERT INTO arcp_icl_flags VALUES ('33', 'mk', 'mk.png', '0');
INSERT INTO arcp_icl_flags VALUES ('34', 'mn', 'mn.png', '0');
INSERT INTO arcp_icl_flags VALUES ('35', 'ms', 'ms.png', '0');
INSERT INTO arcp_icl_flags VALUES ('36', 'mt', 'mt.png', '0');
INSERT INTO arcp_icl_flags VALUES ('37', 'nb', 'nb.png', '0');
INSERT INTO arcp_icl_flags VALUES ('38', 'ne', 'ne.png', '0');
INSERT INTO arcp_icl_flags VALUES ('39', 'nl', 'nl.png', '0');
INSERT INTO arcp_icl_flags VALUES ('40', 'pa', 'pa.png', '0');
INSERT INTO arcp_icl_flags VALUES ('41', 'pl', 'pl.png', '0');
INSERT INTO arcp_icl_flags VALUES ('42', 'pt-br', 'pt-br.png', '0');
INSERT INTO arcp_icl_flags VALUES ('43', 'pt-pt', 'pt-pt.png', '0');
INSERT INTO arcp_icl_flags VALUES ('44', 'qu', 'qu.png', '0');
INSERT INTO arcp_icl_flags VALUES ('45', 'ro', 'ro.png', '0');
INSERT INTO arcp_icl_flags VALUES ('46', 'ru', 'ru.png', '0');
INSERT INTO arcp_icl_flags VALUES ('47', 'sk', 'sk.png', '0');
INSERT INTO arcp_icl_flags VALUES ('48', 'sl', 'sl.png', '0');
INSERT INTO arcp_icl_flags VALUES ('49', 'so', 'so.png', '0');
INSERT INTO arcp_icl_flags VALUES ('50', 'sq', 'sq.png', '0');
INSERT INTO arcp_icl_flags VALUES ('51', 'sr', 'sr.png', '0');
INSERT INTO arcp_icl_flags VALUES ('52', 'sv', 'sv.png', '0');
INSERT INTO arcp_icl_flags VALUES ('53', 'ta', 'ta.png', '0');
INSERT INTO arcp_icl_flags VALUES ('54', 'th', 'th.png', '0');
INSERT INTO arcp_icl_flags VALUES ('55', 'tr', 'tr.png', '0');
INSERT INTO arcp_icl_flags VALUES ('56', 'uk', 'uk.png', '0');
INSERT INTO arcp_icl_flags VALUES ('57', 'ur', 'ur.png', '0');
INSERT INTO arcp_icl_flags VALUES ('58', 'uz', 'uz.png', '0');
INSERT INTO arcp_icl_flags VALUES ('59', 'vi', 'vi.png', '0');
INSERT INTO arcp_icl_flags VALUES ('60', 'yi', 'yi.png', '0');
INSERT INTO arcp_icl_flags VALUES ('61', 'zh-hans', 'zh-hans.png', '0');
INSERT INTO arcp_icl_flags VALUES ('62', 'zh-hant', 'zh-hant.png', '0');
INSERT INTO arcp_icl_flags VALUES ('63', 'zu', 'zu.png', '0');

-- ----------------------------
-- Table structure for `arcp_icl_languages`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_languages`;
CREATE TABLE `arcp_icl_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL,
  `default_locale` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encode_url` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `english_name` (`english_name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_languages
-- ----------------------------
INSERT INTO arcp_icl_languages VALUES ('1', 'en', 'English', '1', '1', 'en_US', 'en', '0');
INSERT INTO arcp_icl_languages VALUES ('2', 'es', 'Spanish', '1', '0', 'es_ES', 'es', '0');
INSERT INTO arcp_icl_languages VALUES ('3', 'de', 'German', '1', '0', 'de_DE', 'de', '0');
INSERT INTO arcp_icl_languages VALUES ('4', 'fr', 'French', '1', '0', 'fr_FR', 'fr', '0');
INSERT INTO arcp_icl_languages VALUES ('5', 'ar', 'Arabic', '0', '0', 'ar', 'ar', '0');
INSERT INTO arcp_icl_languages VALUES ('6', 'bs', 'Bosnian', '0', '0', '', 'bs', '0');
INSERT INTO arcp_icl_languages VALUES ('7', 'bg', 'Bulgarian', '0', '0', 'bg_BG', 'bg', '0');
INSERT INTO arcp_icl_languages VALUES ('8', 'ca', 'Catalan', '0', '0', 'ca_ES', 'ca', '0');
INSERT INTO arcp_icl_languages VALUES ('9', 'cs', 'Czech', '0', '0', 'cs_CZ', 'cs', '0');
INSERT INTO arcp_icl_languages VALUES ('10', 'sk', 'Slovak', '0', '0', 'sk_SK', 'sk', '0');
INSERT INTO arcp_icl_languages VALUES ('11', 'cy', 'Welsh', '0', '0', 'cy_GB', 'cy', '0');
INSERT INTO arcp_icl_languages VALUES ('12', 'da', 'Danish', '1', '0', 'da_DK', 'da', '0');
INSERT INTO arcp_icl_languages VALUES ('13', 'el', 'Greek', '0', '0', 'el_GR', 'el', '0');
INSERT INTO arcp_icl_languages VALUES ('14', 'eo', 'Esperanto', '0', '0', 'eo_UY', 'eo', '0');
INSERT INTO arcp_icl_languages VALUES ('15', 'et', 'Estonian', '0', '0', 'et_EE', 'et', '0');
INSERT INTO arcp_icl_languages VALUES ('16', 'eu', 'Basque', '0', '0', 'eu_ES', 'eu', '0');
INSERT INTO arcp_icl_languages VALUES ('17', 'fa', 'Persian', '0', '0', 'fa_IR', 'fa', '0');
INSERT INTO arcp_icl_languages VALUES ('18', 'fi', 'Finnish', '0', '0', 'fi_FI', 'fi', '0');
INSERT INTO arcp_icl_languages VALUES ('19', 'ga', 'Irish', '0', '0', '', 'ga', '0');
INSERT INTO arcp_icl_languages VALUES ('20', 'he', 'Hebrew', '0', '0', 'he_IL', 'he', '0');
INSERT INTO arcp_icl_languages VALUES ('21', 'hi', 'Hindi', '0', '0', '', 'hi', '0');
INSERT INTO arcp_icl_languages VALUES ('22', 'hr', 'Croatian', '0', '0', 'hr_HR', 'hr', '0');
INSERT INTO arcp_icl_languages VALUES ('23', 'hu', 'Hungarian', '0', '0', 'hu_HU', 'hu', '0');
INSERT INTO arcp_icl_languages VALUES ('24', 'hy', 'Armenian', '0', '0', '', 'hy', '0');
INSERT INTO arcp_icl_languages VALUES ('25', 'id', 'Indonesian', '0', '0', 'id_ID', 'id', '0');
INSERT INTO arcp_icl_languages VALUES ('26', 'is', 'Icelandic', '0', '0', 'is_IS', 'is', '0');
INSERT INTO arcp_icl_languages VALUES ('27', 'it', 'Italian', '1', '0', 'it_IT', 'it', '0');
INSERT INTO arcp_icl_languages VALUES ('28', 'ja', 'Japanese', '1', '0', 'ja', 'ja', '0');
INSERT INTO arcp_icl_languages VALUES ('29', 'ko', 'Korean', '0', '0', 'ko_KR', 'ko', '0');
INSERT INTO arcp_icl_languages VALUES ('30', 'ku', 'Kurdish', '0', '0', 'ku', 'ku', '0');
INSERT INTO arcp_icl_languages VALUES ('31', 'la', 'Latin', '0', '0', '', 'la', '0');
INSERT INTO arcp_icl_languages VALUES ('32', 'lv', 'Latvian', '0', '0', 'lv_LV', 'lv', '0');
INSERT INTO arcp_icl_languages VALUES ('33', 'lt', 'Lithuanian', '0', '0', 'lt_LT', 'lt', '0');
INSERT INTO arcp_icl_languages VALUES ('34', 'mk', 'Macedonian', '0', '0', 'mk_MK', 'mk', '0');
INSERT INTO arcp_icl_languages VALUES ('35', 'mt', 'Maltese', '0', '0', '', 'mt', '0');
INSERT INTO arcp_icl_languages VALUES ('36', 'mn', 'Mongolian', '0', '0', '', 'mn', '0');
INSERT INTO arcp_icl_languages VALUES ('37', 'ne', 'Nepali', '0', '0', '', 'ne', '0');
INSERT INTO arcp_icl_languages VALUES ('38', 'nl', 'Dutch', '1', '0', 'nl_NL', 'nl', '0');
INSERT INTO arcp_icl_languages VALUES ('39', 'nb', 'Norwegian Bokmål', '0', '0', 'nb_NO', 'nb', '0');
INSERT INTO arcp_icl_languages VALUES ('40', 'pa', 'Punjabi', '0', '0', '', 'pa', '0');
INSERT INTO arcp_icl_languages VALUES ('41', 'pl', 'Polish', '0', '0', 'pl_PL', 'pl', '0');
INSERT INTO arcp_icl_languages VALUES ('42', 'pt-pt', 'Portuguese, Portugal', '0', '0', 'pt_PT', 'pt-pt', '0');
INSERT INTO arcp_icl_languages VALUES ('43', 'pt-br', 'Portuguese, Brazil', '0', '0', 'pt_BR', 'pt-br', '0');
INSERT INTO arcp_icl_languages VALUES ('44', 'qu', 'Quechua', '0', '0', '', 'qu', '0');
INSERT INTO arcp_icl_languages VALUES ('45', 'ro', 'Romanian', '0', '0', 'ro_RO', 'ro', '0');
INSERT INTO arcp_icl_languages VALUES ('46', 'ru', 'Russian', '1', '0', 'ru_RU', 'ru', '0');
INSERT INTO arcp_icl_languages VALUES ('47', 'sl', 'Slovenian', '0', '0', 'sl_SI', 'sl', '0');
INSERT INTO arcp_icl_languages VALUES ('48', 'so', 'Somali', '0', '0', '', 'so', '0');
INSERT INTO arcp_icl_languages VALUES ('49', 'sq', 'Albanian', '0', '0', '', 'sq', '0');
INSERT INTO arcp_icl_languages VALUES ('50', 'sr', 'Serbian', '0', '0', 'sr_RS', 'sr', '0');
INSERT INTO arcp_icl_languages VALUES ('51', 'sv', 'Swedish', '0', '0', 'sv_SE', 'sv', '0');
INSERT INTO arcp_icl_languages VALUES ('52', 'ta', 'Tamil', '0', '0', '', 'ta', '0');
INSERT INTO arcp_icl_languages VALUES ('53', 'th', 'Thai', '0', '0', 'th_TH', 'th', '0');
INSERT INTO arcp_icl_languages VALUES ('54', 'tr', 'Turkish', '0', '0', 'tr_TR', 'tr', '0');
INSERT INTO arcp_icl_languages VALUES ('55', 'uk', 'Ukrainian', '0', '0', 'uk_UA', 'uk', '0');
INSERT INTO arcp_icl_languages VALUES ('56', 'ur', 'Urdu', '0', '0', '', 'ur', '0');
INSERT INTO arcp_icl_languages VALUES ('57', 'uz', 'Uzbek', '0', '0', 'uz_UZ', 'uz', '0');
INSERT INTO arcp_icl_languages VALUES ('58', 'vi', 'Vietnamese', '0', '1', 'vi_VN', 'vi', '0');
INSERT INTO arcp_icl_languages VALUES ('59', 'yi', 'Yiddish', '0', '0', '', 'yi', '0');
INSERT INTO arcp_icl_languages VALUES ('60', 'zh-hans', 'Chinese (Simplified)', '1', '0', 'zh_CN', 'zh-hans', '0');
INSERT INTO arcp_icl_languages VALUES ('61', 'zu', 'Zulu', '0', '0', '', 'zu', '0');
INSERT INTO arcp_icl_languages VALUES ('62', 'zh-hant', 'Chinese (Traditional)', '1', '0', 'zh_TW', 'zh-hant', '0');
INSERT INTO arcp_icl_languages VALUES ('63', 'ms', 'Malay', '0', '0', 'ms_MY', 'ms', '0');

-- ----------------------------
-- Table structure for `arcp_icl_languages_translations`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_languages_translations`;
CREATE TABLE `arcp_icl_languages_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_language_code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_code` (`language_code`,`display_language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3970 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_languages_translations
-- ----------------------------
INSERT INTO arcp_icl_languages_translations VALUES ('1', 'en', 'en', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('2', 'en', 'es', 'Inglés');
INSERT INTO arcp_icl_languages_translations VALUES ('3', 'en', 'de', 'Englisch');
INSERT INTO arcp_icl_languages_translations VALUES ('4', 'en', 'fr', 'Anglais');
INSERT INTO arcp_icl_languages_translations VALUES ('5', 'en', 'ar', 'الإنجليزية');
INSERT INTO arcp_icl_languages_translations VALUES ('6', 'en', 'bs', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('7', 'en', 'bg', 'Английски');
INSERT INTO arcp_icl_languages_translations VALUES ('8', 'en', 'ca', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('9', 'en', 'cs', 'Angličtina');
INSERT INTO arcp_icl_languages_translations VALUES ('10', 'en', 'sk', 'Angličtina');
INSERT INTO arcp_icl_languages_translations VALUES ('11', 'en', 'cy', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('12', 'en', 'da', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('13', 'en', 'el', 'Αγγλικα');
INSERT INTO arcp_icl_languages_translations VALUES ('14', 'en', 'eo', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('15', 'en', 'et', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('16', 'en', 'eu', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('17', 'en', 'fa', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('18', 'en', 'fi', 'englanti');
INSERT INTO arcp_icl_languages_translations VALUES ('19', 'en', 'ga', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('20', 'en', 'he', 'אנגלית');
INSERT INTO arcp_icl_languages_translations VALUES ('21', 'en', 'hi', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('22', 'en', 'hr', 'Engleski');
INSERT INTO arcp_icl_languages_translations VALUES ('23', 'en', 'hu', 'angol');
INSERT INTO arcp_icl_languages_translations VALUES ('24', 'en', 'hy', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('25', 'en', 'id', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('26', 'en', 'is', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('27', 'en', 'it', 'Inglese');
INSERT INTO arcp_icl_languages_translations VALUES ('28', 'en', 'ja', '英語');
INSERT INTO arcp_icl_languages_translations VALUES ('29', 'en', 'ko', '영어');
INSERT INTO arcp_icl_languages_translations VALUES ('30', 'en', 'ku', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('31', 'en', 'la', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('32', 'en', 'lv', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('33', 'en', 'lt', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('34', 'en', 'mk', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('35', 'en', 'mt', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('36', 'en', 'mn', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('37', 'en', 'ne', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('38', 'en', 'nl', 'Engels');
INSERT INTO arcp_icl_languages_translations VALUES ('39', 'en', 'nb', 'Engelsk');
INSERT INTO arcp_icl_languages_translations VALUES ('40', 'en', 'pa', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('41', 'en', 'pl', 'angielski');
INSERT INTO arcp_icl_languages_translations VALUES ('42', 'en', 'pt-pt', 'Inglês');
INSERT INTO arcp_icl_languages_translations VALUES ('43', 'en', 'pt-br', 'Inglês');
INSERT INTO arcp_icl_languages_translations VALUES ('44', 'en', 'qu', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('45', 'en', 'ro', 'Engleză');
INSERT INTO arcp_icl_languages_translations VALUES ('46', 'en', 'ru', 'Английский');
INSERT INTO arcp_icl_languages_translations VALUES ('47', 'en', 'sl', 'Angleščina');
INSERT INTO arcp_icl_languages_translations VALUES ('48', 'en', 'so', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('49', 'en', 'sq', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('50', 'en', 'sr', 'енглески');
INSERT INTO arcp_icl_languages_translations VALUES ('51', 'en', 'sv', 'Engelska');
INSERT INTO arcp_icl_languages_translations VALUES ('52', 'en', 'ta', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('53', 'en', 'th', 'อังกฤษ');
INSERT INTO arcp_icl_languages_translations VALUES ('54', 'en', 'tr', 'İngilizce');
INSERT INTO arcp_icl_languages_translations VALUES ('55', 'en', 'uk', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('56', 'en', 'ur', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('57', 'en', 'uz', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('58', 'en', 'vi', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('59', 'en', 'yi', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('60', 'en', 'zh-hans', '英语');
INSERT INTO arcp_icl_languages_translations VALUES ('61', 'en', 'zu', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('62', 'en', 'zh-hant', '英語');
INSERT INTO arcp_icl_languages_translations VALUES ('63', 'en', 'ms', 'English');
INSERT INTO arcp_icl_languages_translations VALUES ('64', 'es', 'en', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('65', 'es', 'es', 'Español');
INSERT INTO arcp_icl_languages_translations VALUES ('66', 'es', 'de', 'Spanisch');
INSERT INTO arcp_icl_languages_translations VALUES ('67', 'es', 'fr', 'Espagnol');
INSERT INTO arcp_icl_languages_translations VALUES ('68', 'es', 'ar', 'الأسبانية');
INSERT INTO arcp_icl_languages_translations VALUES ('69', 'es', 'bs', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('70', 'es', 'bg', 'Испански');
INSERT INTO arcp_icl_languages_translations VALUES ('71', 'es', 'ca', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('72', 'es', 'cs', 'Španělský');
INSERT INTO arcp_icl_languages_translations VALUES ('73', 'es', 'sk', 'Španielčina');
INSERT INTO arcp_icl_languages_translations VALUES ('74', 'es', 'cy', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('75', 'es', 'da', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('76', 'es', 'el', 'Ισπανικα');
INSERT INTO arcp_icl_languages_translations VALUES ('77', 'es', 'eo', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('78', 'es', 'et', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('79', 'es', 'eu', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('80', 'es', 'fa', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('81', 'es', 'fi', 'espanja');
INSERT INTO arcp_icl_languages_translations VALUES ('82', 'es', 'ga', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('83', 'es', 'he', 'ספרדית');
INSERT INTO arcp_icl_languages_translations VALUES ('84', 'es', 'hi', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('85', 'es', 'hr', 'španjolski');
INSERT INTO arcp_icl_languages_translations VALUES ('86', 'es', 'hu', 'spanyol');
INSERT INTO arcp_icl_languages_translations VALUES ('87', 'es', 'hy', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('88', 'es', 'id', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('89', 'es', 'is', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('90', 'es', 'it', 'Spagnolo');
INSERT INTO arcp_icl_languages_translations VALUES ('91', 'es', 'ja', 'スペイン語');
INSERT INTO arcp_icl_languages_translations VALUES ('92', 'es', 'ko', '스페인어');
INSERT INTO arcp_icl_languages_translations VALUES ('93', 'es', 'ku', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('94', 'es', 'la', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('95', 'es', 'lv', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('96', 'es', 'lt', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('97', 'es', 'mk', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('98', 'es', 'mt', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('99', 'es', 'mn', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('100', 'es', 'ne', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('101', 'es', 'nl', 'Spaans');
INSERT INTO arcp_icl_languages_translations VALUES ('102', 'es', 'nb', 'Spansk');
INSERT INTO arcp_icl_languages_translations VALUES ('103', 'es', 'pa', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('104', 'es', 'pl', 'hiszpański');
INSERT INTO arcp_icl_languages_translations VALUES ('105', 'es', 'pt-pt', 'Espanhol');
INSERT INTO arcp_icl_languages_translations VALUES ('106', 'es', 'pt-br', 'Espanhol');
INSERT INTO arcp_icl_languages_translations VALUES ('107', 'es', 'qu', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('108', 'es', 'ro', 'Spaniolă');
INSERT INTO arcp_icl_languages_translations VALUES ('109', 'es', 'ru', 'Испанский');
INSERT INTO arcp_icl_languages_translations VALUES ('110', 'es', 'sl', 'Španščina');
INSERT INTO arcp_icl_languages_translations VALUES ('111', 'es', 'so', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('112', 'es', 'sq', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('113', 'es', 'sr', 'шпански');
INSERT INTO arcp_icl_languages_translations VALUES ('114', 'es', 'sv', 'Spanska');
INSERT INTO arcp_icl_languages_translations VALUES ('115', 'es', 'ta', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('116', 'es', 'th', 'สเปน');
INSERT INTO arcp_icl_languages_translations VALUES ('117', 'es', 'tr', 'İspanyolca');
INSERT INTO arcp_icl_languages_translations VALUES ('118', 'es', 'uk', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('119', 'es', 'ur', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('120', 'es', 'uz', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('121', 'es', 'vi', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('122', 'es', 'yi', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('123', 'es', 'zh-hans', '西班牙语');
INSERT INTO arcp_icl_languages_translations VALUES ('124', 'es', 'zu', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('125', 'es', 'zh-hant', '西班牙語');
INSERT INTO arcp_icl_languages_translations VALUES ('126', 'es', 'ms', 'Spanish');
INSERT INTO arcp_icl_languages_translations VALUES ('127', 'de', 'en', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('128', 'de', 'es', 'Alemán');
INSERT INTO arcp_icl_languages_translations VALUES ('129', 'de', 'de', 'Deutsch');
INSERT INTO arcp_icl_languages_translations VALUES ('130', 'de', 'fr', 'Allemand');
INSERT INTO arcp_icl_languages_translations VALUES ('131', 'de', 'ar', 'الألمانية');
INSERT INTO arcp_icl_languages_translations VALUES ('132', 'de', 'bs', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('133', 'de', 'bg', 'Немски');
INSERT INTO arcp_icl_languages_translations VALUES ('134', 'de', 'ca', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('135', 'de', 'cs', 'Němec');
INSERT INTO arcp_icl_languages_translations VALUES ('136', 'de', 'sk', 'Nemčina');
INSERT INTO arcp_icl_languages_translations VALUES ('137', 'de', 'cy', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('138', 'de', 'da', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('139', 'de', 'el', 'Γερμανικα');
INSERT INTO arcp_icl_languages_translations VALUES ('140', 'de', 'eo', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('141', 'de', 'et', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('142', 'de', 'eu', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('143', 'de', 'fa', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('144', 'de', 'fi', 'saksa');
INSERT INTO arcp_icl_languages_translations VALUES ('145', 'de', 'ga', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('146', 'de', 'he', 'גרמנית');
INSERT INTO arcp_icl_languages_translations VALUES ('147', 'de', 'hi', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('148', 'de', 'hr', 'Njemački');
INSERT INTO arcp_icl_languages_translations VALUES ('149', 'de', 'hu', 'német');
INSERT INTO arcp_icl_languages_translations VALUES ('150', 'de', 'hy', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('151', 'de', 'id', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('152', 'de', 'is', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('153', 'de', 'it', 'Tedesco');
INSERT INTO arcp_icl_languages_translations VALUES ('154', 'de', 'ja', 'ドイツ語');
INSERT INTO arcp_icl_languages_translations VALUES ('155', 'de', 'ko', '독어');
INSERT INTO arcp_icl_languages_translations VALUES ('156', 'de', 'ku', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('157', 'de', 'la', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('158', 'de', 'lv', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('159', 'de', 'lt', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('160', 'de', 'mk', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('161', 'de', 'mt', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('162', 'de', 'mn', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('163', 'de', 'ne', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('164', 'de', 'nl', 'Duits');
INSERT INTO arcp_icl_languages_translations VALUES ('165', 'de', 'nb', 'Tysk');
INSERT INTO arcp_icl_languages_translations VALUES ('166', 'de', 'pa', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('167', 'de', 'pl', 'niemiecki');
INSERT INTO arcp_icl_languages_translations VALUES ('168', 'de', 'pt-pt', 'Alemão');
INSERT INTO arcp_icl_languages_translations VALUES ('169', 'de', 'pt-br', 'Alemão');
INSERT INTO arcp_icl_languages_translations VALUES ('170', 'de', 'qu', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('171', 'de', 'ro', 'Germană');
INSERT INTO arcp_icl_languages_translations VALUES ('172', 'de', 'ru', 'Немецкий');
INSERT INTO arcp_icl_languages_translations VALUES ('173', 'de', 'sl', 'Nemščina');
INSERT INTO arcp_icl_languages_translations VALUES ('174', 'de', 'so', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('175', 'de', 'sq', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('176', 'de', 'sr', 'немачки');
INSERT INTO arcp_icl_languages_translations VALUES ('177', 'de', 'sv', 'Tyska');
INSERT INTO arcp_icl_languages_translations VALUES ('178', 'de', 'ta', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('179', 'de', 'th', 'เยอรมัน');
INSERT INTO arcp_icl_languages_translations VALUES ('180', 'de', 'tr', 'Almanca');
INSERT INTO arcp_icl_languages_translations VALUES ('181', 'de', 'uk', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('182', 'de', 'ur', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('183', 'de', 'uz', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('184', 'de', 'vi', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('185', 'de', 'yi', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('186', 'de', 'zh-hans', '德语');
INSERT INTO arcp_icl_languages_translations VALUES ('187', 'de', 'zu', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('188', 'de', 'zh-hant', '德語');
INSERT INTO arcp_icl_languages_translations VALUES ('189', 'de', 'ms', 'German');
INSERT INTO arcp_icl_languages_translations VALUES ('190', 'fr', 'en', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('191', 'fr', 'es', 'Francés');
INSERT INTO arcp_icl_languages_translations VALUES ('192', 'fr', 'de', 'Französisch');
INSERT INTO arcp_icl_languages_translations VALUES ('193', 'fr', 'fr', 'Français');
INSERT INTO arcp_icl_languages_translations VALUES ('194', 'fr', 'ar', 'الفرنسية');
INSERT INTO arcp_icl_languages_translations VALUES ('195', 'fr', 'bs', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('196', 'fr', 'bg', 'Френски');
INSERT INTO arcp_icl_languages_translations VALUES ('197', 'fr', 'ca', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('198', 'fr', 'cs', 'Francouzština');
INSERT INTO arcp_icl_languages_translations VALUES ('199', 'fr', 'sk', 'Francúzština');
INSERT INTO arcp_icl_languages_translations VALUES ('200', 'fr', 'cy', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('201', 'fr', 'da', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('202', 'fr', 'el', 'Γαλλικα');
INSERT INTO arcp_icl_languages_translations VALUES ('203', 'fr', 'eo', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('204', 'fr', 'et', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('205', 'fr', 'eu', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('206', 'fr', 'fa', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('207', 'fr', 'fi', 'ranska');
INSERT INTO arcp_icl_languages_translations VALUES ('208', 'fr', 'ga', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('209', 'fr', 'he', 'צרפתית');
INSERT INTO arcp_icl_languages_translations VALUES ('210', 'fr', 'hi', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('211', 'fr', 'hr', 'Francuzi');
INSERT INTO arcp_icl_languages_translations VALUES ('212', 'fr', 'hu', 'francia');
INSERT INTO arcp_icl_languages_translations VALUES ('213', 'fr', 'hy', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('214', 'fr', 'id', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('215', 'fr', 'is', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('216', 'fr', 'it', 'Francese');
INSERT INTO arcp_icl_languages_translations VALUES ('217', 'fr', 'ja', 'フランス語');
INSERT INTO arcp_icl_languages_translations VALUES ('218', 'fr', 'ko', '불어');
INSERT INTO arcp_icl_languages_translations VALUES ('219', 'fr', 'ku', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('220', 'fr', 'la', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('221', 'fr', 'lv', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('222', 'fr', 'lt', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('223', 'fr', 'mk', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('224', 'fr', 'mt', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('225', 'fr', 'mn', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('226', 'fr', 'ne', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('227', 'fr', 'nl', 'Frans');
INSERT INTO arcp_icl_languages_translations VALUES ('228', 'fr', 'nb', 'Fransk');
INSERT INTO arcp_icl_languages_translations VALUES ('229', 'fr', 'pa', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('230', 'fr', 'pl', 'francuski');
INSERT INTO arcp_icl_languages_translations VALUES ('231', 'fr', 'pt-pt', 'Francês');
INSERT INTO arcp_icl_languages_translations VALUES ('232', 'fr', 'pt-br', 'Francês');
INSERT INTO arcp_icl_languages_translations VALUES ('233', 'fr', 'qu', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('234', 'fr', 'ro', 'Franceză');
INSERT INTO arcp_icl_languages_translations VALUES ('235', 'fr', 'ru', 'Французский');
INSERT INTO arcp_icl_languages_translations VALUES ('236', 'fr', 'sl', 'Francoščina');
INSERT INTO arcp_icl_languages_translations VALUES ('237', 'fr', 'so', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('238', 'fr', 'sq', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('239', 'fr', 'sr', 'француски');
INSERT INTO arcp_icl_languages_translations VALUES ('240', 'fr', 'sv', 'Franska');
INSERT INTO arcp_icl_languages_translations VALUES ('241', 'fr', 'ta', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('242', 'fr', 'th', 'ฝรั่งเศส');
INSERT INTO arcp_icl_languages_translations VALUES ('243', 'fr', 'tr', 'Fransızca');
INSERT INTO arcp_icl_languages_translations VALUES ('244', 'fr', 'uk', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('245', 'fr', 'ur', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('246', 'fr', 'uz', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('247', 'fr', 'vi', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('248', 'fr', 'yi', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('249', 'fr', 'zh-hans', '法语');
INSERT INTO arcp_icl_languages_translations VALUES ('250', 'fr', 'zu', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('251', 'fr', 'zh-hant', '法語');
INSERT INTO arcp_icl_languages_translations VALUES ('252', 'fr', 'ms', 'French');
INSERT INTO arcp_icl_languages_translations VALUES ('253', 'ar', 'en', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('254', 'ar', 'es', 'Árabe');
INSERT INTO arcp_icl_languages_translations VALUES ('255', 'ar', 'de', 'Arabisch');
INSERT INTO arcp_icl_languages_translations VALUES ('256', 'ar', 'fr', 'Arabe');
INSERT INTO arcp_icl_languages_translations VALUES ('257', 'ar', 'ar', 'العربية');
INSERT INTO arcp_icl_languages_translations VALUES ('258', 'ar', 'bs', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('259', 'ar', 'bg', 'Арабски');
INSERT INTO arcp_icl_languages_translations VALUES ('260', 'ar', 'ca', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('261', 'ar', 'cs', 'Arabština');
INSERT INTO arcp_icl_languages_translations VALUES ('262', 'ar', 'sk', 'Arabčina');
INSERT INTO arcp_icl_languages_translations VALUES ('263', 'ar', 'cy', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('264', 'ar', 'da', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('265', 'ar', 'el', 'Αραβικα');
INSERT INTO arcp_icl_languages_translations VALUES ('266', 'ar', 'eo', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('267', 'ar', 'et', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('268', 'ar', 'eu', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('269', 'ar', 'fa', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('270', 'ar', 'fi', 'arabia');
INSERT INTO arcp_icl_languages_translations VALUES ('271', 'ar', 'ga', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('272', 'ar', 'he', 'ערבית');
INSERT INTO arcp_icl_languages_translations VALUES ('273', 'ar', 'hi', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('274', 'ar', 'hr', 'Arapski');
INSERT INTO arcp_icl_languages_translations VALUES ('275', 'ar', 'hu', 'arab');
INSERT INTO arcp_icl_languages_translations VALUES ('276', 'ar', 'hy', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('277', 'ar', 'id', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('278', 'ar', 'is', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('279', 'ar', 'it', 'Arabo');
INSERT INTO arcp_icl_languages_translations VALUES ('280', 'ar', 'ja', 'アラビア語');
INSERT INTO arcp_icl_languages_translations VALUES ('281', 'ar', 'ko', '아랍어');
INSERT INTO arcp_icl_languages_translations VALUES ('282', 'ar', 'ku', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('283', 'ar', 'la', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('284', 'ar', 'lv', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('285', 'ar', 'lt', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('286', 'ar', 'mk', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('287', 'ar', 'mt', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('288', 'ar', 'mn', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('289', 'ar', 'ne', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('290', 'ar', 'nl', 'Arabisch');
INSERT INTO arcp_icl_languages_translations VALUES ('291', 'ar', 'nb', 'Arabisk');
INSERT INTO arcp_icl_languages_translations VALUES ('292', 'ar', 'pa', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('293', 'ar', 'pl', 'arabski');
INSERT INTO arcp_icl_languages_translations VALUES ('294', 'ar', 'pt-pt', 'Árabe');
INSERT INTO arcp_icl_languages_translations VALUES ('295', 'ar', 'pt-br', 'Árabe');
INSERT INTO arcp_icl_languages_translations VALUES ('296', 'ar', 'qu', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('297', 'ar', 'ro', 'Arabică');
INSERT INTO arcp_icl_languages_translations VALUES ('298', 'ar', 'ru', 'Арабский');
INSERT INTO arcp_icl_languages_translations VALUES ('299', 'ar', 'sl', 'Arabščina');
INSERT INTO arcp_icl_languages_translations VALUES ('300', 'ar', 'so', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('301', 'ar', 'sq', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('302', 'ar', 'sr', 'арапски');
INSERT INTO arcp_icl_languages_translations VALUES ('303', 'ar', 'sv', 'Arabiska');
INSERT INTO arcp_icl_languages_translations VALUES ('304', 'ar', 'ta', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('305', 'ar', 'th', 'อารบิก');
INSERT INTO arcp_icl_languages_translations VALUES ('306', 'ar', 'tr', 'Arapça');
INSERT INTO arcp_icl_languages_translations VALUES ('307', 'ar', 'uk', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('308', 'ar', 'ur', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('309', 'ar', 'uz', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('310', 'ar', 'vi', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('311', 'ar', 'yi', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('312', 'ar', 'zh-hans', '阿拉伯语');
INSERT INTO arcp_icl_languages_translations VALUES ('313', 'ar', 'zu', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('314', 'ar', 'zh-hant', '阿拉伯語');
INSERT INTO arcp_icl_languages_translations VALUES ('315', 'ar', 'ms', 'Arabic');
INSERT INTO arcp_icl_languages_translations VALUES ('316', 'bs', 'en', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('317', 'bs', 'es', 'Bosnio');
INSERT INTO arcp_icl_languages_translations VALUES ('318', 'bs', 'de', 'Bosnisch');
INSERT INTO arcp_icl_languages_translations VALUES ('319', 'bs', 'fr', 'Bosnien');
INSERT INTO arcp_icl_languages_translations VALUES ('320', 'bs', 'ar', 'البوسنية');
INSERT INTO arcp_icl_languages_translations VALUES ('321', 'bs', 'bs', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('322', 'bs', 'bg', 'Босненски');
INSERT INTO arcp_icl_languages_translations VALUES ('323', 'bs', 'ca', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('324', 'bs', 'cs', 'Bosenština');
INSERT INTO arcp_icl_languages_translations VALUES ('325', 'bs', 'sk', 'Bosniačtina');
INSERT INTO arcp_icl_languages_translations VALUES ('326', 'bs', 'cy', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('327', 'bs', 'da', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('328', 'bs', 'el', 'Βοσνιακα');
INSERT INTO arcp_icl_languages_translations VALUES ('329', 'bs', 'eo', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('330', 'bs', 'et', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('331', 'bs', 'eu', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('332', 'bs', 'fa', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('333', 'bs', 'fi', 'bosnia');
INSERT INTO arcp_icl_languages_translations VALUES ('334', 'bs', 'ga', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('335', 'bs', 'he', 'בוסנית');
INSERT INTO arcp_icl_languages_translations VALUES ('336', 'bs', 'hi', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('337', 'bs', 'hr', 'Bosanski');
INSERT INTO arcp_icl_languages_translations VALUES ('338', 'bs', 'hu', 'bosnyák');
INSERT INTO arcp_icl_languages_translations VALUES ('339', 'bs', 'hy', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('340', 'bs', 'id', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('341', 'bs', 'is', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('342', 'bs', 'it', 'Bosniaco');
INSERT INTO arcp_icl_languages_translations VALUES ('343', 'bs', 'ja', 'ボスニア語');
INSERT INTO arcp_icl_languages_translations VALUES ('344', 'bs', 'ko', '보즈니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('345', 'bs', 'ku', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('346', 'bs', 'la', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('347', 'bs', 'lv', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('348', 'bs', 'lt', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('349', 'bs', 'mk', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('350', 'bs', 'mt', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('351', 'bs', 'mn', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('352', 'bs', 'ne', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('353', 'bs', 'nl', 'Bosnisch');
INSERT INTO arcp_icl_languages_translations VALUES ('354', 'bs', 'nb', 'Bosnisk');
INSERT INTO arcp_icl_languages_translations VALUES ('355', 'bs', 'pa', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('356', 'bs', 'pl', 'bośniacki');
INSERT INTO arcp_icl_languages_translations VALUES ('357', 'bs', 'pt-pt', 'Bósnio');
INSERT INTO arcp_icl_languages_translations VALUES ('358', 'bs', 'pt-br', 'Bósnio');
INSERT INTO arcp_icl_languages_translations VALUES ('359', 'bs', 'qu', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('360', 'bs', 'ro', 'Bosniacă');
INSERT INTO arcp_icl_languages_translations VALUES ('361', 'bs', 'ru', 'Боснийский');
INSERT INTO arcp_icl_languages_translations VALUES ('362', 'bs', 'sl', 'Bosanski');
INSERT INTO arcp_icl_languages_translations VALUES ('363', 'bs', 'so', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('364', 'bs', 'sq', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('365', 'bs', 'sr', 'босански');
INSERT INTO arcp_icl_languages_translations VALUES ('366', 'bs', 'sv', 'Bosniska');
INSERT INTO arcp_icl_languages_translations VALUES ('367', 'bs', 'ta', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('368', 'bs', 'th', 'บอสเนียน');
INSERT INTO arcp_icl_languages_translations VALUES ('369', 'bs', 'tr', 'Boşnakça');
INSERT INTO arcp_icl_languages_translations VALUES ('370', 'bs', 'uk', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('371', 'bs', 'ur', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('372', 'bs', 'uz', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('373', 'bs', 'vi', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('374', 'bs', 'yi', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('375', 'bs', 'zh-hans', '波斯尼亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('376', 'bs', 'zu', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('377', 'bs', 'zh-hant', '波士尼亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('378', 'bs', 'ms', 'Bosnian');
INSERT INTO arcp_icl_languages_translations VALUES ('379', 'bg', 'en', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('380', 'bg', 'es', 'Búlgaro');
INSERT INTO arcp_icl_languages_translations VALUES ('381', 'bg', 'de', 'Bulgarisch');
INSERT INTO arcp_icl_languages_translations VALUES ('382', 'bg', 'fr', 'Bulgare');
INSERT INTO arcp_icl_languages_translations VALUES ('383', 'bg', 'ar', 'البلغارية');
INSERT INTO arcp_icl_languages_translations VALUES ('384', 'bg', 'bs', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('385', 'bg', 'bg', 'Български');
INSERT INTO arcp_icl_languages_translations VALUES ('386', 'bg', 'ca', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('387', 'bg', 'cs', 'Bulharština');
INSERT INTO arcp_icl_languages_translations VALUES ('388', 'bg', 'sk', 'Bulharčina');
INSERT INTO arcp_icl_languages_translations VALUES ('389', 'bg', 'cy', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('390', 'bg', 'da', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('391', 'bg', 'el', 'Βουλγαρικα');
INSERT INTO arcp_icl_languages_translations VALUES ('392', 'bg', 'eo', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('393', 'bg', 'et', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('394', 'bg', 'eu', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('395', 'bg', 'fa', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('396', 'bg', 'fi', 'bulgaria');
INSERT INTO arcp_icl_languages_translations VALUES ('397', 'bg', 'ga', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('398', 'bg', 'he', 'בולגרית');
INSERT INTO arcp_icl_languages_translations VALUES ('399', 'bg', 'hi', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('400', 'bg', 'hr', 'Bugarski');
INSERT INTO arcp_icl_languages_translations VALUES ('401', 'bg', 'hu', 'bolgár');
INSERT INTO arcp_icl_languages_translations VALUES ('402', 'bg', 'hy', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('403', 'bg', 'id', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('404', 'bg', 'is', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('405', 'bg', 'it', 'Bulgaro');
INSERT INTO arcp_icl_languages_translations VALUES ('406', 'bg', 'ja', 'ブルガリア語');
INSERT INTO arcp_icl_languages_translations VALUES ('407', 'bg', 'ko', '불가리아어');
INSERT INTO arcp_icl_languages_translations VALUES ('408', 'bg', 'ku', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('409', 'bg', 'la', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('410', 'bg', 'lv', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('411', 'bg', 'lt', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('412', 'bg', 'mk', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('413', 'bg', 'mt', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('414', 'bg', 'mn', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('415', 'bg', 'ne', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('416', 'bg', 'nl', 'Bulgaars');
INSERT INTO arcp_icl_languages_translations VALUES ('417', 'bg', 'nb', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('418', 'bg', 'pa', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('419', 'bg', 'pl', 'bułgarski');
INSERT INTO arcp_icl_languages_translations VALUES ('420', 'bg', 'pt-pt', 'Búlgaro');
INSERT INTO arcp_icl_languages_translations VALUES ('421', 'bg', 'pt-br', 'Búlgaro');
INSERT INTO arcp_icl_languages_translations VALUES ('422', 'bg', 'qu', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('423', 'bg', 'ro', 'Bulgară');
INSERT INTO arcp_icl_languages_translations VALUES ('424', 'bg', 'ru', 'Болгарский');
INSERT INTO arcp_icl_languages_translations VALUES ('425', 'bg', 'sl', 'Bolgarščina');
INSERT INTO arcp_icl_languages_translations VALUES ('426', 'bg', 'so', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('427', 'bg', 'sq', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('428', 'bg', 'sr', 'бугарски');
INSERT INTO arcp_icl_languages_translations VALUES ('429', 'bg', 'sv', 'Bulgariska');
INSERT INTO arcp_icl_languages_translations VALUES ('430', 'bg', 'ta', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('431', 'bg', 'th', 'บัลแกเรียน');
INSERT INTO arcp_icl_languages_translations VALUES ('432', 'bg', 'tr', 'Bulgarca');
INSERT INTO arcp_icl_languages_translations VALUES ('433', 'bg', 'uk', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('434', 'bg', 'ur', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('435', 'bg', 'uz', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('436', 'bg', 'vi', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('437', 'bg', 'yi', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('438', 'bg', 'zh-hans', '保加利亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('439', 'bg', 'zu', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('440', 'bg', 'zh-hant', '保加利亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('441', 'bg', 'ms', 'Bulgarian');
INSERT INTO arcp_icl_languages_translations VALUES ('442', 'ca', 'en', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('443', 'ca', 'es', 'Catalán');
INSERT INTO arcp_icl_languages_translations VALUES ('444', 'ca', 'de', 'Katalanisch');
INSERT INTO arcp_icl_languages_translations VALUES ('445', 'ca', 'fr', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('446', 'ca', 'ar', 'الكاتالوينية');
INSERT INTO arcp_icl_languages_translations VALUES ('447', 'ca', 'bs', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('448', 'ca', 'bg', 'Каталонски');
INSERT INTO arcp_icl_languages_translations VALUES ('449', 'ca', 'ca', 'Català');
INSERT INTO arcp_icl_languages_translations VALUES ('450', 'ca', 'cs', 'Katalánština');
INSERT INTO arcp_icl_languages_translations VALUES ('451', 'ca', 'sk', 'Katalánčina');
INSERT INTO arcp_icl_languages_translations VALUES ('452', 'ca', 'cy', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('453', 'ca', 'da', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('454', 'ca', 'el', 'Καταλανικα');
INSERT INTO arcp_icl_languages_translations VALUES ('455', 'ca', 'eo', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('456', 'ca', 'et', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('457', 'ca', 'eu', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('458', 'ca', 'fa', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('459', 'ca', 'fi', 'katalaani');
INSERT INTO arcp_icl_languages_translations VALUES ('460', 'ca', 'ga', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('461', 'ca', 'he', 'קטלאנית');
INSERT INTO arcp_icl_languages_translations VALUES ('462', 'ca', 'hi', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('463', 'ca', 'hr', 'Katalonski');
INSERT INTO arcp_icl_languages_translations VALUES ('464', 'ca', 'hu', 'katalán');
INSERT INTO arcp_icl_languages_translations VALUES ('465', 'ca', 'hy', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('466', 'ca', 'id', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('467', 'ca', 'is', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('468', 'ca', 'it', 'Catalano');
INSERT INTO arcp_icl_languages_translations VALUES ('469', 'ca', 'ja', 'カタルーニャ語');
INSERT INTO arcp_icl_languages_translations VALUES ('470', 'ca', 'ko', '카탈로니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('471', 'ca', 'ku', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('472', 'ca', 'la', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('473', 'ca', 'lv', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('474', 'ca', 'lt', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('475', 'ca', 'mk', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('476', 'ca', 'mt', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('477', 'ca', 'mn', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('478', 'ca', 'ne', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('479', 'ca', 'nl', 'Catalaans');
INSERT INTO arcp_icl_languages_translations VALUES ('480', 'ca', 'nb', 'catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('481', 'ca', 'pa', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('482', 'ca', 'pl', 'kataloński');
INSERT INTO arcp_icl_languages_translations VALUES ('483', 'ca', 'pt-pt', 'Catalão');
INSERT INTO arcp_icl_languages_translations VALUES ('484', 'ca', 'pt-br', 'Catalão');
INSERT INTO arcp_icl_languages_translations VALUES ('485', 'ca', 'qu', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('486', 'ca', 'ro', 'Catalană');
INSERT INTO arcp_icl_languages_translations VALUES ('487', 'ca', 'ru', 'Каталанский');
INSERT INTO arcp_icl_languages_translations VALUES ('488', 'ca', 'sl', 'Katalonščina');
INSERT INTO arcp_icl_languages_translations VALUES ('489', 'ca', 'so', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('490', 'ca', 'sq', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('491', 'ca', 'sr', 'каталонски');
INSERT INTO arcp_icl_languages_translations VALUES ('492', 'ca', 'sv', 'Katalanska');
INSERT INTO arcp_icl_languages_translations VALUES ('493', 'ca', 'ta', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('494', 'ca', 'th', 'คะตะลาน');
INSERT INTO arcp_icl_languages_translations VALUES ('495', 'ca', 'tr', 'Katalan dili');
INSERT INTO arcp_icl_languages_translations VALUES ('496', 'ca', 'uk', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('497', 'ca', 'ur', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('498', 'ca', 'uz', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('499', 'ca', 'vi', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('500', 'ca', 'yi', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('501', 'ca', 'zh-hans', '加泰罗尼亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('502', 'ca', 'zu', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('503', 'ca', 'zh-hant', '加泰羅尼亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('504', 'ca', 'ms', 'Catalan');
INSERT INTO arcp_icl_languages_translations VALUES ('505', 'cs', 'en', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('506', 'cs', 'es', 'Checo');
INSERT INTO arcp_icl_languages_translations VALUES ('507', 'cs', 'de', 'Tschechisch');
INSERT INTO arcp_icl_languages_translations VALUES ('508', 'cs', 'fr', 'Tchèque');
INSERT INTO arcp_icl_languages_translations VALUES ('509', 'cs', 'ar', 'التشيكية');
INSERT INTO arcp_icl_languages_translations VALUES ('510', 'cs', 'bs', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('511', 'cs', 'bg', 'Чешки');
INSERT INTO arcp_icl_languages_translations VALUES ('512', 'cs', 'ca', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('513', 'cs', 'cs', 'Čeština');
INSERT INTO arcp_icl_languages_translations VALUES ('514', 'cs', 'sk', 'Čeština');
INSERT INTO arcp_icl_languages_translations VALUES ('515', 'cs', 'cy', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('516', 'cs', 'da', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('517', 'cs', 'el', 'Τσεχικη');
INSERT INTO arcp_icl_languages_translations VALUES ('518', 'cs', 'eo', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('519', 'cs', 'et', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('520', 'cs', 'eu', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('521', 'cs', 'fa', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('522', 'cs', 'fi', 'tsekki');
INSERT INTO arcp_icl_languages_translations VALUES ('523', 'cs', 'ga', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('524', 'cs', 'he', 'צ\'כית');
INSERT INTO arcp_icl_languages_translations VALUES ('525', 'cs', 'hi', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('526', 'cs', 'hr', 'češki');
INSERT INTO arcp_icl_languages_translations VALUES ('527', 'cs', 'hu', 'cseh');
INSERT INTO arcp_icl_languages_translations VALUES ('528', 'cs', 'hy', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('529', 'cs', 'id', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('530', 'cs', 'is', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('531', 'cs', 'it', 'Ceco');
INSERT INTO arcp_icl_languages_translations VALUES ('532', 'cs', 'ja', 'チェコ語');
INSERT INTO arcp_icl_languages_translations VALUES ('533', 'cs', 'ko', '체코슬로바키아어');
INSERT INTO arcp_icl_languages_translations VALUES ('534', 'cs', 'ku', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('535', 'cs', 'la', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('536', 'cs', 'lv', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('537', 'cs', 'lt', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('538', 'cs', 'mk', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('539', 'cs', 'mt', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('540', 'cs', 'mn', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('541', 'cs', 'ne', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('542', 'cs', 'nl', 'Tsjechisch');
INSERT INTO arcp_icl_languages_translations VALUES ('543', 'cs', 'nb', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('544', 'cs', 'pa', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('545', 'cs', 'pl', 'czeski');
INSERT INTO arcp_icl_languages_translations VALUES ('546', 'cs', 'pt-pt', 'Tcheco');
INSERT INTO arcp_icl_languages_translations VALUES ('547', 'cs', 'pt-br', 'Tcheco');
INSERT INTO arcp_icl_languages_translations VALUES ('548', 'cs', 'qu', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('549', 'cs', 'ro', 'Cehă');
INSERT INTO arcp_icl_languages_translations VALUES ('550', 'cs', 'ru', 'Чешский');
INSERT INTO arcp_icl_languages_translations VALUES ('551', 'cs', 'sl', 'Češčina');
INSERT INTO arcp_icl_languages_translations VALUES ('552', 'cs', 'so', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('553', 'cs', 'sq', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('554', 'cs', 'sr', 'чешки');
INSERT INTO arcp_icl_languages_translations VALUES ('555', 'cs', 'sv', 'Tjeckiska');
INSERT INTO arcp_icl_languages_translations VALUES ('556', 'cs', 'ta', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('557', 'cs', 'th', 'เช็ก');
INSERT INTO arcp_icl_languages_translations VALUES ('558', 'cs', 'tr', 'Çekçe');
INSERT INTO arcp_icl_languages_translations VALUES ('559', 'cs', 'uk', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('560', 'cs', 'ur', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('561', 'cs', 'uz', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('562', 'cs', 'vi', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('563', 'cs', 'yi', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('564', 'cs', 'zh-hans', '捷克语');
INSERT INTO arcp_icl_languages_translations VALUES ('565', 'cs', 'zu', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('566', 'cs', 'zh-hant', '捷克語');
INSERT INTO arcp_icl_languages_translations VALUES ('567', 'cs', 'ms', 'Czech');
INSERT INTO arcp_icl_languages_translations VALUES ('568', 'sk', 'en', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('569', 'sk', 'es', 'Eslavo');
INSERT INTO arcp_icl_languages_translations VALUES ('570', 'sk', 'de', 'Slowakisch');
INSERT INTO arcp_icl_languages_translations VALUES ('571', 'sk', 'fr', 'Slave');
INSERT INTO arcp_icl_languages_translations VALUES ('572', 'sk', 'ar', 'السلافية');
INSERT INTO arcp_icl_languages_translations VALUES ('573', 'sk', 'bs', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('574', 'sk', 'bg', 'Словашки');
INSERT INTO arcp_icl_languages_translations VALUES ('575', 'sk', 'ca', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('576', 'sk', 'cs', 'Slovenština');
INSERT INTO arcp_icl_languages_translations VALUES ('577', 'sk', 'sk', 'Slovenčina');
INSERT INTO arcp_icl_languages_translations VALUES ('578', 'sk', 'cy', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('579', 'sk', 'da', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('580', 'sk', 'el', 'Σλαβικη');
INSERT INTO arcp_icl_languages_translations VALUES ('581', 'sk', 'eo', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('582', 'sk', 'et', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('583', 'sk', 'eu', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('584', 'sk', 'fa', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('585', 'sk', 'fi', 'slaavi');
INSERT INTO arcp_icl_languages_translations VALUES ('586', 'sk', 'ga', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('587', 'sk', 'he', 'סלאבית');
INSERT INTO arcp_icl_languages_translations VALUES ('588', 'sk', 'hi', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('589', 'sk', 'hr', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('590', 'sk', 'hu', 'szláv');
INSERT INTO arcp_icl_languages_translations VALUES ('591', 'sk', 'hy', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('592', 'sk', 'id', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('593', 'sk', 'is', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('594', 'sk', 'it', 'Slavo');
INSERT INTO arcp_icl_languages_translations VALUES ('595', 'sk', 'ja', 'スラヴ語派');
INSERT INTO arcp_icl_languages_translations VALUES ('596', 'sk', 'ko', '슬라브어');
INSERT INTO arcp_icl_languages_translations VALUES ('597', 'sk', 'ku', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('598', 'sk', 'la', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('599', 'sk', 'lv', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('600', 'sk', 'lt', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('601', 'sk', 'mk', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('602', 'sk', 'mt', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('603', 'sk', 'mn', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('604', 'sk', 'ne', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('605', 'sk', 'nl', 'Slavisch');
INSERT INTO arcp_icl_languages_translations VALUES ('606', 'sk', 'nb', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('607', 'sk', 'pa', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('608', 'sk', 'pl', 'słowacki');
INSERT INTO arcp_icl_languages_translations VALUES ('609', 'sk', 'pt-pt', 'Eslavo');
INSERT INTO arcp_icl_languages_translations VALUES ('610', 'sk', 'pt-br', 'Eslavo');
INSERT INTO arcp_icl_languages_translations VALUES ('611', 'sk', 'qu', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('612', 'sk', 'ro', 'Slavă');
INSERT INTO arcp_icl_languages_translations VALUES ('613', 'sk', 'ru', 'Славянский');
INSERT INTO arcp_icl_languages_translations VALUES ('614', 'sk', 'sl', 'Slovaščina');
INSERT INTO arcp_icl_languages_translations VALUES ('615', 'sk', 'so', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('616', 'sk', 'sq', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('617', 'sk', 'sr', 'словачки');
INSERT INTO arcp_icl_languages_translations VALUES ('618', 'sk', 'sv', 'Slavisk');
INSERT INTO arcp_icl_languages_translations VALUES ('619', 'sk', 'ta', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('620', 'sk', 'th', 'สลาวิก');
INSERT INTO arcp_icl_languages_translations VALUES ('621', 'sk', 'tr', 'Slav dili');
INSERT INTO arcp_icl_languages_translations VALUES ('622', 'sk', 'uk', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('623', 'sk', 'ur', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('624', 'sk', 'uz', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('625', 'sk', 'vi', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('626', 'sk', 'yi', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('627', 'sk', 'zh-hans', '斯拉夫语');
INSERT INTO arcp_icl_languages_translations VALUES ('628', 'sk', 'zu', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('629', 'sk', 'zh-hant', '斯拉夫語');
INSERT INTO arcp_icl_languages_translations VALUES ('630', 'sk', 'ms', 'Slovak');
INSERT INTO arcp_icl_languages_translations VALUES ('631', 'cy', 'en', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('632', 'cy', 'es', 'Galés');
INSERT INTO arcp_icl_languages_translations VALUES ('633', 'cy', 'de', 'Walisisch');
INSERT INTO arcp_icl_languages_translations VALUES ('634', 'cy', 'fr', 'Gallois');
INSERT INTO arcp_icl_languages_translations VALUES ('635', 'cy', 'ar', 'الولزية');
INSERT INTO arcp_icl_languages_translations VALUES ('636', 'cy', 'bs', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('637', 'cy', 'bg', 'Уелски');
INSERT INTO arcp_icl_languages_translations VALUES ('638', 'cy', 'ca', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('639', 'cy', 'cs', 'Velšský');
INSERT INTO arcp_icl_languages_translations VALUES ('640', 'cy', 'sk', 'Welština');
INSERT INTO arcp_icl_languages_translations VALUES ('641', 'cy', 'cy', 'Cymraeg');
INSERT INTO arcp_icl_languages_translations VALUES ('642', 'cy', 'da', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('643', 'cy', 'el', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('644', 'cy', 'eo', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('645', 'cy', 'et', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('646', 'cy', 'eu', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('647', 'cy', 'fa', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('648', 'cy', 'fi', 'kymri');
INSERT INTO arcp_icl_languages_translations VALUES ('649', 'cy', 'ga', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('650', 'cy', 'he', 'וולשית');
INSERT INTO arcp_icl_languages_translations VALUES ('651', 'cy', 'hi', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('652', 'cy', 'hr', 'Velški');
INSERT INTO arcp_icl_languages_translations VALUES ('653', 'cy', 'hu', 'vels');
INSERT INTO arcp_icl_languages_translations VALUES ('654', 'cy', 'hy', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('655', 'cy', 'id', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('656', 'cy', 'is', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('657', 'cy', 'it', 'Gallese');
INSERT INTO arcp_icl_languages_translations VALUES ('658', 'cy', 'ja', 'ウェールズ語');
INSERT INTO arcp_icl_languages_translations VALUES ('659', 'cy', 'ko', '웨일즈어');
INSERT INTO arcp_icl_languages_translations VALUES ('660', 'cy', 'ku', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('661', 'cy', 'la', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('662', 'cy', 'lv', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('663', 'cy', 'lt', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('664', 'cy', 'mk', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('665', 'cy', 'mt', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('666', 'cy', 'mn', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('667', 'cy', 'ne', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('668', 'cy', 'nl', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('669', 'cy', 'nb', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('670', 'cy', 'pa', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('671', 'cy', 'pl', 'walijski');
INSERT INTO arcp_icl_languages_translations VALUES ('672', 'cy', 'pt-pt', 'Galês');
INSERT INTO arcp_icl_languages_translations VALUES ('673', 'cy', 'pt-br', 'Galês');
INSERT INTO arcp_icl_languages_translations VALUES ('674', 'cy', 'qu', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('675', 'cy', 'ro', 'Galeză');
INSERT INTO arcp_icl_languages_translations VALUES ('676', 'cy', 'ru', 'Валлийский');
INSERT INTO arcp_icl_languages_translations VALUES ('677', 'cy', 'sl', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('678', 'cy', 'so', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('679', 'cy', 'sq', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('680', 'cy', 'sr', 'велшки');
INSERT INTO arcp_icl_languages_translations VALUES ('681', 'cy', 'sv', 'Walesiska');
INSERT INTO arcp_icl_languages_translations VALUES ('682', 'cy', 'ta', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('683', 'cy', 'th', 'เวลช์');
INSERT INTO arcp_icl_languages_translations VALUES ('684', 'cy', 'tr', 'Galce');
INSERT INTO arcp_icl_languages_translations VALUES ('685', 'cy', 'uk', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('686', 'cy', 'ur', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('687', 'cy', 'uz', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('688', 'cy', 'vi', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('689', 'cy', 'yi', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('690', 'cy', 'zh-hans', '威尔士语');
INSERT INTO arcp_icl_languages_translations VALUES ('691', 'cy', 'zu', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('692', 'cy', 'zh-hant', '威爾士語');
INSERT INTO arcp_icl_languages_translations VALUES ('693', 'cy', 'ms', 'Welsh');
INSERT INTO arcp_icl_languages_translations VALUES ('694', 'da', 'en', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('695', 'da', 'es', 'Danés');
INSERT INTO arcp_icl_languages_translations VALUES ('696', 'da', 'de', 'Dänisch');
INSERT INTO arcp_icl_languages_translations VALUES ('697', 'da', 'fr', 'Danois');
INSERT INTO arcp_icl_languages_translations VALUES ('698', 'da', 'ar', 'الدانماركية');
INSERT INTO arcp_icl_languages_translations VALUES ('699', 'da', 'bs', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('700', 'da', 'bg', 'Датски');
INSERT INTO arcp_icl_languages_translations VALUES ('701', 'da', 'ca', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('702', 'da', 'cs', 'Dánský');
INSERT INTO arcp_icl_languages_translations VALUES ('703', 'da', 'sk', 'Dánčina');
INSERT INTO arcp_icl_languages_translations VALUES ('704', 'da', 'cy', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('705', 'da', 'da', 'Dansk');
INSERT INTO arcp_icl_languages_translations VALUES ('706', 'da', 'el', 'Δανεζικα');
INSERT INTO arcp_icl_languages_translations VALUES ('707', 'da', 'eo', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('708', 'da', 'et', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('709', 'da', 'eu', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('710', 'da', 'fa', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('711', 'da', 'fi', 'tanska');
INSERT INTO arcp_icl_languages_translations VALUES ('712', 'da', 'ga', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('713', 'da', 'he', 'דנית');
INSERT INTO arcp_icl_languages_translations VALUES ('714', 'da', 'hi', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('715', 'da', 'hr', 'Danski');
INSERT INTO arcp_icl_languages_translations VALUES ('716', 'da', 'hu', 'dán');
INSERT INTO arcp_icl_languages_translations VALUES ('717', 'da', 'hy', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('718', 'da', 'id', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('719', 'da', 'is', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('720', 'da', 'it', 'Danese');
INSERT INTO arcp_icl_languages_translations VALUES ('721', 'da', 'ja', 'デンマーク語');
INSERT INTO arcp_icl_languages_translations VALUES ('722', 'da', 'ko', '덴마크어');
INSERT INTO arcp_icl_languages_translations VALUES ('723', 'da', 'ku', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('724', 'da', 'la', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('725', 'da', 'lv', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('726', 'da', 'lt', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('727', 'da', 'mk', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('728', 'da', 'mt', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('729', 'da', 'mn', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('730', 'da', 'ne', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('731', 'da', 'nl', 'Deens');
INSERT INTO arcp_icl_languages_translations VALUES ('732', 'da', 'nb', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('733', 'da', 'pa', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('734', 'da', 'pl', 'duński');
INSERT INTO arcp_icl_languages_translations VALUES ('735', 'da', 'pt-pt', 'Dinamarquês');
INSERT INTO arcp_icl_languages_translations VALUES ('736', 'da', 'pt-br', 'Dinamarquês');
INSERT INTO arcp_icl_languages_translations VALUES ('737', 'da', 'qu', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('738', 'da', 'ro', 'Daneză');
INSERT INTO arcp_icl_languages_translations VALUES ('739', 'da', 'ru', 'Датский');
INSERT INTO arcp_icl_languages_translations VALUES ('740', 'da', 'sl', 'Danščina');
INSERT INTO arcp_icl_languages_translations VALUES ('741', 'da', 'so', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('742', 'da', 'sq', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('743', 'da', 'sr', 'дански');
INSERT INTO arcp_icl_languages_translations VALUES ('744', 'da', 'sv', 'Danska');
INSERT INTO arcp_icl_languages_translations VALUES ('745', 'da', 'ta', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('746', 'da', 'th', 'เดนมาร์ก');
INSERT INTO arcp_icl_languages_translations VALUES ('747', 'da', 'tr', 'Danca');
INSERT INTO arcp_icl_languages_translations VALUES ('748', 'da', 'uk', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('749', 'da', 'ur', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('750', 'da', 'uz', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('751', 'da', 'vi', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('752', 'da', 'yi', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('753', 'da', 'zh-hans', '丹麦语');
INSERT INTO arcp_icl_languages_translations VALUES ('754', 'da', 'zu', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('755', 'da', 'zh-hant', '丹麥語');
INSERT INTO arcp_icl_languages_translations VALUES ('756', 'da', 'ms', 'Danish');
INSERT INTO arcp_icl_languages_translations VALUES ('757', 'el', 'en', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('758', 'el', 'es', 'Griego');
INSERT INTO arcp_icl_languages_translations VALUES ('759', 'el', 'de', 'Griechisch');
INSERT INTO arcp_icl_languages_translations VALUES ('760', 'el', 'fr', 'Grec moderne');
INSERT INTO arcp_icl_languages_translations VALUES ('761', 'el', 'ar', 'اليونانية');
INSERT INTO arcp_icl_languages_translations VALUES ('762', 'el', 'bs', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('763', 'el', 'bg', 'Гръцки');
INSERT INTO arcp_icl_languages_translations VALUES ('764', 'el', 'ca', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('765', 'el', 'cs', 'Řečtina');
INSERT INTO arcp_icl_languages_translations VALUES ('766', 'el', 'sk', 'Gréčtina');
INSERT INTO arcp_icl_languages_translations VALUES ('767', 'el', 'cy', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('768', 'el', 'da', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('769', 'el', 'el', 'Ελληνικα');
INSERT INTO arcp_icl_languages_translations VALUES ('770', 'el', 'eo', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('771', 'el', 'et', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('772', 'el', 'eu', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('773', 'el', 'fa', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('774', 'el', 'fi', 'kreikka');
INSERT INTO arcp_icl_languages_translations VALUES ('775', 'el', 'ga', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('776', 'el', 'he', 'יוונית');
INSERT INTO arcp_icl_languages_translations VALUES ('777', 'el', 'hi', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('778', 'el', 'hr', 'Grčki');
INSERT INTO arcp_icl_languages_translations VALUES ('779', 'el', 'hu', 'görög');
INSERT INTO arcp_icl_languages_translations VALUES ('780', 'el', 'hy', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('781', 'el', 'id', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('782', 'el', 'is', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('783', 'el', 'it', 'Greco');
INSERT INTO arcp_icl_languages_translations VALUES ('784', 'el', 'ja', 'ギリシア語');
INSERT INTO arcp_icl_languages_translations VALUES ('785', 'el', 'ko', '그리스어');
INSERT INTO arcp_icl_languages_translations VALUES ('786', 'el', 'ku', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('787', 'el', 'la', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('788', 'el', 'lv', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('789', 'el', 'lt', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('790', 'el', 'mk', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('791', 'el', 'mt', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('792', 'el', 'mn', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('793', 'el', 'ne', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('794', 'el', 'nl', 'Grieks');
INSERT INTO arcp_icl_languages_translations VALUES ('795', 'el', 'nb', 'Gresk');
INSERT INTO arcp_icl_languages_translations VALUES ('796', 'el', 'pa', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('797', 'el', 'pl', 'grecki');
INSERT INTO arcp_icl_languages_translations VALUES ('798', 'el', 'pt-pt', 'Grego');
INSERT INTO arcp_icl_languages_translations VALUES ('799', 'el', 'pt-br', 'Grego');
INSERT INTO arcp_icl_languages_translations VALUES ('800', 'el', 'qu', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('801', 'el', 'ro', 'Greacă');
INSERT INTO arcp_icl_languages_translations VALUES ('802', 'el', 'ru', 'Греческий');
INSERT INTO arcp_icl_languages_translations VALUES ('803', 'el', 'sl', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('804', 'el', 'so', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('805', 'el', 'sq', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('806', 'el', 'sr', 'грчки');
INSERT INTO arcp_icl_languages_translations VALUES ('807', 'el', 'sv', 'Grekiska');
INSERT INTO arcp_icl_languages_translations VALUES ('808', 'el', 'ta', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('809', 'el', 'th', 'กรีก');
INSERT INTO arcp_icl_languages_translations VALUES ('810', 'el', 'tr', 'Yunanca');
INSERT INTO arcp_icl_languages_translations VALUES ('811', 'el', 'uk', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('812', 'el', 'ur', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('813', 'el', 'uz', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('814', 'el', 'vi', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('815', 'el', 'yi', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('816', 'el', 'zh-hans', '希腊语');
INSERT INTO arcp_icl_languages_translations VALUES ('817', 'el', 'zu', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('818', 'el', 'zh-hant', '希臘語');
INSERT INTO arcp_icl_languages_translations VALUES ('819', 'el', 'ms', 'Greek');
INSERT INTO arcp_icl_languages_translations VALUES ('820', 'eo', 'en', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('821', 'eo', 'es', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('822', 'eo', 'de', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('823', 'eo', 'fr', 'Espéranto');
INSERT INTO arcp_icl_languages_translations VALUES ('824', 'eo', 'ar', 'الاسبرانتو');
INSERT INTO arcp_icl_languages_translations VALUES ('825', 'eo', 'bs', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('826', 'eo', 'bg', 'Есперанто');
INSERT INTO arcp_icl_languages_translations VALUES ('827', 'eo', 'ca', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('828', 'eo', 'cs', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('829', 'eo', 'sk', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('830', 'eo', 'cy', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('831', 'eo', 'da', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('832', 'eo', 'el', 'Εσπεραντο');
INSERT INTO arcp_icl_languages_translations VALUES ('833', 'eo', 'eo', 'Esperanta');
INSERT INTO arcp_icl_languages_translations VALUES ('834', 'eo', 'et', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('835', 'eo', 'eu', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('836', 'eo', 'fa', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('837', 'eo', 'fi', 'esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('838', 'eo', 'ga', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('839', 'eo', 'he', 'אספרנטו');
INSERT INTO arcp_icl_languages_translations VALUES ('840', 'eo', 'hi', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('841', 'eo', 'hr', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('842', 'eo', 'hu', 'eszperantó');
INSERT INTO arcp_icl_languages_translations VALUES ('843', 'eo', 'hy', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('844', 'eo', 'id', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('845', 'eo', 'is', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('846', 'eo', 'it', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('847', 'eo', 'ja', 'エスペラント語');
INSERT INTO arcp_icl_languages_translations VALUES ('848', 'eo', 'ko', '에스페란토어');
INSERT INTO arcp_icl_languages_translations VALUES ('849', 'eo', 'ku', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('850', 'eo', 'la', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('851', 'eo', 'lv', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('852', 'eo', 'lt', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('853', 'eo', 'mk', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('854', 'eo', 'mt', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('855', 'eo', 'mn', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('856', 'eo', 'ne', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('857', 'eo', 'nl', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('858', 'eo', 'nb', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('859', 'eo', 'pa', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('860', 'eo', 'pl', 'esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('861', 'eo', 'pt-pt', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('862', 'eo', 'pt-br', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('863', 'eo', 'qu', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('864', 'eo', 'ro', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('865', 'eo', 'ru', 'Эсперанто');
INSERT INTO arcp_icl_languages_translations VALUES ('866', 'eo', 'sl', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('867', 'eo', 'so', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('868', 'eo', 'sq', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('869', 'eo', 'sr', 'есперанто');
INSERT INTO arcp_icl_languages_translations VALUES ('870', 'eo', 'sv', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('871', 'eo', 'ta', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('872', 'eo', 'th', 'เอสเปอรันโต');
INSERT INTO arcp_icl_languages_translations VALUES ('873', 'eo', 'tr', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('874', 'eo', 'uk', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('875', 'eo', 'ur', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('876', 'eo', 'uz', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('877', 'eo', 'vi', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('878', 'eo', 'yi', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('879', 'eo', 'zh-hans', '世界语');
INSERT INTO arcp_icl_languages_translations VALUES ('880', 'eo', 'zu', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('881', 'eo', 'zh-hant', '世界語');
INSERT INTO arcp_icl_languages_translations VALUES ('882', 'eo', 'ms', 'Esperanto');
INSERT INTO arcp_icl_languages_translations VALUES ('883', 'et', 'en', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('884', 'et', 'es', 'Estonio');
INSERT INTO arcp_icl_languages_translations VALUES ('885', 'et', 'de', 'Estnisch');
INSERT INTO arcp_icl_languages_translations VALUES ('886', 'et', 'fr', 'Estonien');
INSERT INTO arcp_icl_languages_translations VALUES ('887', 'et', 'ar', 'الأستونية');
INSERT INTO arcp_icl_languages_translations VALUES ('888', 'et', 'bs', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('889', 'et', 'bg', 'Естонски');
INSERT INTO arcp_icl_languages_translations VALUES ('890', 'et', 'ca', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('891', 'et', 'cs', 'Estonština');
INSERT INTO arcp_icl_languages_translations VALUES ('892', 'et', 'sk', 'Estónčina');
INSERT INTO arcp_icl_languages_translations VALUES ('893', 'et', 'cy', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('894', 'et', 'da', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('895', 'et', 'el', 'Εσθονικα');
INSERT INTO arcp_icl_languages_translations VALUES ('896', 'et', 'eo', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('897', 'et', 'et', 'Eesti');
INSERT INTO arcp_icl_languages_translations VALUES ('898', 'et', 'eu', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('899', 'et', 'fa', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('900', 'et', 'fi', 'eesti');
INSERT INTO arcp_icl_languages_translations VALUES ('901', 'et', 'ga', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('902', 'et', 'he', 'אסטונית');
INSERT INTO arcp_icl_languages_translations VALUES ('903', 'et', 'hi', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('904', 'et', 'hr', 'Estonski');
INSERT INTO arcp_icl_languages_translations VALUES ('905', 'et', 'hu', 'észt');
INSERT INTO arcp_icl_languages_translations VALUES ('906', 'et', 'hy', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('907', 'et', 'id', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('908', 'et', 'is', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('909', 'et', 'it', 'Estone');
INSERT INTO arcp_icl_languages_translations VALUES ('910', 'et', 'ja', 'エストニア語');
INSERT INTO arcp_icl_languages_translations VALUES ('911', 'et', 'ko', '에스토니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('912', 'et', 'ku', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('913', 'et', 'la', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('914', 'et', 'lv', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('915', 'et', 'lt', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('916', 'et', 'mk', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('917', 'et', 'mt', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('918', 'et', 'mn', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('919', 'et', 'ne', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('920', 'et', 'nl', 'Ests');
INSERT INTO arcp_icl_languages_translations VALUES ('921', 'et', 'nb', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('922', 'et', 'pa', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('923', 'et', 'pl', 'estoński');
INSERT INTO arcp_icl_languages_translations VALUES ('924', 'et', 'pt-pt', 'Estoniano');
INSERT INTO arcp_icl_languages_translations VALUES ('925', 'et', 'pt-br', 'Estoniano');
INSERT INTO arcp_icl_languages_translations VALUES ('926', 'et', 'qu', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('927', 'et', 'ro', 'Estoniană');
INSERT INTO arcp_icl_languages_translations VALUES ('928', 'et', 'ru', 'Эстонский');
INSERT INTO arcp_icl_languages_translations VALUES ('929', 'et', 'sl', 'Estonščina');
INSERT INTO arcp_icl_languages_translations VALUES ('930', 'et', 'so', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('931', 'et', 'sq', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('932', 'et', 'sr', 'естонски');
INSERT INTO arcp_icl_languages_translations VALUES ('933', 'et', 'sv', 'Estniska');
INSERT INTO arcp_icl_languages_translations VALUES ('934', 'et', 'ta', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('935', 'et', 'th', 'เอสโตเนียน');
INSERT INTO arcp_icl_languages_translations VALUES ('936', 'et', 'tr', 'Estonya dili');
INSERT INTO arcp_icl_languages_translations VALUES ('937', 'et', 'uk', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('938', 'et', 'ur', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('939', 'et', 'uz', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('940', 'et', 'vi', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('941', 'et', 'yi', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('942', 'et', 'zh-hans', '爱沙尼亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('943', 'et', 'zu', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('944', 'et', 'zh-hant', '愛沙尼亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('945', 'et', 'ms', 'Estonian');
INSERT INTO arcp_icl_languages_translations VALUES ('946', 'eu', 'en', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('947', 'eu', 'es', 'Euskera');
INSERT INTO arcp_icl_languages_translations VALUES ('948', 'eu', 'de', 'Baskisch');
INSERT INTO arcp_icl_languages_translations VALUES ('949', 'eu', 'fr', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('950', 'eu', 'ar', 'لغة الباسك');
INSERT INTO arcp_icl_languages_translations VALUES ('951', 'eu', 'bs', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('952', 'eu', 'bg', 'Баски');
INSERT INTO arcp_icl_languages_translations VALUES ('953', 'eu', 'ca', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('954', 'eu', 'cs', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('955', 'eu', 'sk', 'Baskičtina');
INSERT INTO arcp_icl_languages_translations VALUES ('956', 'eu', 'cy', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('957', 'eu', 'da', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('958', 'eu', 'el', 'Βασκικα');
INSERT INTO arcp_icl_languages_translations VALUES ('959', 'eu', 'eo', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('960', 'eu', 'et', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('961', 'eu', 'eu', 'Euskara');
INSERT INTO arcp_icl_languages_translations VALUES ('962', 'eu', 'fa', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('963', 'eu', 'fi', 'baski');
INSERT INTO arcp_icl_languages_translations VALUES ('964', 'eu', 'ga', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('965', 'eu', 'he', 'בסקית');
INSERT INTO arcp_icl_languages_translations VALUES ('966', 'eu', 'hi', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('967', 'eu', 'hr', 'Baskijski');
INSERT INTO arcp_icl_languages_translations VALUES ('968', 'eu', 'hu', 'baszk');
INSERT INTO arcp_icl_languages_translations VALUES ('969', 'eu', 'hy', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('970', 'eu', 'id', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('971', 'eu', 'is', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('972', 'eu', 'it', 'Basco');
INSERT INTO arcp_icl_languages_translations VALUES ('973', 'eu', 'ja', 'バスク語');
INSERT INTO arcp_icl_languages_translations VALUES ('974', 'eu', 'ko', '바스크어');
INSERT INTO arcp_icl_languages_translations VALUES ('975', 'eu', 'ku', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('976', 'eu', 'la', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('977', 'eu', 'lv', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('978', 'eu', 'lt', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('979', 'eu', 'mk', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('980', 'eu', 'mt', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('981', 'eu', 'mn', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('982', 'eu', 'ne', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('983', 'eu', 'nl', 'Baskisch');
INSERT INTO arcp_icl_languages_translations VALUES ('984', 'eu', 'nb', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('985', 'eu', 'pa', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('986', 'eu', 'pl', 'baskijski');
INSERT INTO arcp_icl_languages_translations VALUES ('987', 'eu', 'pt-pt', 'Basco');
INSERT INTO arcp_icl_languages_translations VALUES ('988', 'eu', 'pt-br', 'Basco');
INSERT INTO arcp_icl_languages_translations VALUES ('989', 'eu', 'qu', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('990', 'eu', 'ro', 'Bască');
INSERT INTO arcp_icl_languages_translations VALUES ('991', 'eu', 'ru', 'Баскский');
INSERT INTO arcp_icl_languages_translations VALUES ('992', 'eu', 'sl', 'Baskovščina');
INSERT INTO arcp_icl_languages_translations VALUES ('993', 'eu', 'so', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('994', 'eu', 'sq', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('995', 'eu', 'sr', 'баскијски');
INSERT INTO arcp_icl_languages_translations VALUES ('996', 'eu', 'sv', 'Baskiska');
INSERT INTO arcp_icl_languages_translations VALUES ('997', 'eu', 'ta', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('998', 'eu', 'th', 'บาสค์');
INSERT INTO arcp_icl_languages_translations VALUES ('999', 'eu', 'tr', 'Bask dili');
INSERT INTO arcp_icl_languages_translations VALUES ('1000', 'eu', 'uk', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('1001', 'eu', 'ur', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('1002', 'eu', 'uz', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('1003', 'eu', 'vi', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('1004', 'eu', 'yi', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('1005', 'eu', 'zh-hans', '巴斯克语');
INSERT INTO arcp_icl_languages_translations VALUES ('1006', 'eu', 'zu', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('1007', 'eu', 'zh-hant', '巴斯克語');
INSERT INTO arcp_icl_languages_translations VALUES ('1008', 'eu', 'ms', 'Basque');
INSERT INTO arcp_icl_languages_translations VALUES ('1009', 'fa', 'en', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1010', 'fa', 'es', 'Persa');
INSERT INTO arcp_icl_languages_translations VALUES ('1011', 'fa', 'de', 'Persisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1012', 'fa', 'fr', 'Perse');
INSERT INTO arcp_icl_languages_translations VALUES ('1013', 'fa', 'ar', 'الفارسية');
INSERT INTO arcp_icl_languages_translations VALUES ('1014', 'fa', 'bs', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1015', 'fa', 'bg', 'Персийски');
INSERT INTO arcp_icl_languages_translations VALUES ('1016', 'fa', 'ca', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1017', 'fa', 'cs', 'Perský');
INSERT INTO arcp_icl_languages_translations VALUES ('1018', 'fa', 'sk', 'Perzština');
INSERT INTO arcp_icl_languages_translations VALUES ('1019', 'fa', 'cy', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1020', 'fa', 'da', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1021', 'fa', 'el', 'Περσικος');
INSERT INTO arcp_icl_languages_translations VALUES ('1022', 'fa', 'eo', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1023', 'fa', 'et', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1024', 'fa', 'eu', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1025', 'fa', 'fa', 'فارسی');
INSERT INTO arcp_icl_languages_translations VALUES ('1026', 'fa', 'fi', 'persia');
INSERT INTO arcp_icl_languages_translations VALUES ('1027', 'fa', 'ga', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1028', 'fa', 'he', 'פרסית');
INSERT INTO arcp_icl_languages_translations VALUES ('1029', 'fa', 'hi', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1030', 'fa', 'hr', 'Perzijski');
INSERT INTO arcp_icl_languages_translations VALUES ('1031', 'fa', 'hu', 'perzsa');
INSERT INTO arcp_icl_languages_translations VALUES ('1032', 'fa', 'hy', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1033', 'fa', 'id', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1034', 'fa', 'is', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1035', 'fa', 'it', 'Persiano');
INSERT INTO arcp_icl_languages_translations VALUES ('1036', 'fa', 'ja', 'ペルシア語');
INSERT INTO arcp_icl_languages_translations VALUES ('1037', 'fa', 'ko', '페르시아어');
INSERT INTO arcp_icl_languages_translations VALUES ('1038', 'fa', 'ku', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1039', 'fa', 'la', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1040', 'fa', 'lv', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1041', 'fa', 'lt', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1042', 'fa', 'mk', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1043', 'fa', 'mt', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1044', 'fa', 'mn', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1045', 'fa', 'ne', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1046', 'fa', 'nl', 'Perzisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1047', 'fa', 'nb', 'Persisk');
INSERT INTO arcp_icl_languages_translations VALUES ('1048', 'fa', 'pa', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1049', 'fa', 'pl', 'perski');
INSERT INTO arcp_icl_languages_translations VALUES ('1050', 'fa', 'pt-pt', 'Persa');
INSERT INTO arcp_icl_languages_translations VALUES ('1051', 'fa', 'pt-br', 'Persa');
INSERT INTO arcp_icl_languages_translations VALUES ('1052', 'fa', 'qu', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1053', 'fa', 'ro', 'Persană');
INSERT INTO arcp_icl_languages_translations VALUES ('1054', 'fa', 'ru', 'Персидский');
INSERT INTO arcp_icl_languages_translations VALUES ('1055', 'fa', 'sl', 'Perzijski');
INSERT INTO arcp_icl_languages_translations VALUES ('1056', 'fa', 'so', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1057', 'fa', 'sq', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1058', 'fa', 'sr', 'персијски');
INSERT INTO arcp_icl_languages_translations VALUES ('1059', 'fa', 'sv', 'Persiska');
INSERT INTO arcp_icl_languages_translations VALUES ('1060', 'fa', 'ta', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1061', 'fa', 'th', 'เปอร์เซียน');
INSERT INTO arcp_icl_languages_translations VALUES ('1062', 'fa', 'tr', 'Farsça');
INSERT INTO arcp_icl_languages_translations VALUES ('1063', 'fa', 'uk', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1064', 'fa', 'ur', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1065', 'fa', 'uz', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1066', 'fa', 'vi', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1067', 'fa', 'yi', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1068', 'fa', 'zh-hans', '波斯语');
INSERT INTO arcp_icl_languages_translations VALUES ('1069', 'fa', 'zu', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1070', 'fa', 'zh-hant', '波斯語');
INSERT INTO arcp_icl_languages_translations VALUES ('1071', 'fa', 'ms', 'Persian');
INSERT INTO arcp_icl_languages_translations VALUES ('1072', 'fi', 'en', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1073', 'fi', 'es', 'Finlandés');
INSERT INTO arcp_icl_languages_translations VALUES ('1074', 'fi', 'de', 'Finnisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1075', 'fi', 'fr', 'Finnois');
INSERT INTO arcp_icl_languages_translations VALUES ('1076', 'fi', 'ar', 'الفنلندية');
INSERT INTO arcp_icl_languages_translations VALUES ('1077', 'fi', 'bs', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1078', 'fi', 'bg', 'Фински');
INSERT INTO arcp_icl_languages_translations VALUES ('1079', 'fi', 'ca', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1080', 'fi', 'cs', 'Finský');
INSERT INTO arcp_icl_languages_translations VALUES ('1081', 'fi', 'sk', 'Fínština');
INSERT INTO arcp_icl_languages_translations VALUES ('1082', 'fi', 'cy', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1083', 'fi', 'da', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1084', 'fi', 'el', 'Φινλανδικη');
INSERT INTO arcp_icl_languages_translations VALUES ('1085', 'fi', 'eo', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1086', 'fi', 'et', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1087', 'fi', 'eu', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1088', 'fi', 'fa', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1089', 'fi', 'fi', 'Suomi');
INSERT INTO arcp_icl_languages_translations VALUES ('1090', 'fi', 'ga', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1091', 'fi', 'he', 'פינית');
INSERT INTO arcp_icl_languages_translations VALUES ('1092', 'fi', 'hi', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1093', 'fi', 'hr', 'Finski');
INSERT INTO arcp_icl_languages_translations VALUES ('1094', 'fi', 'hu', 'finn');
INSERT INTO arcp_icl_languages_translations VALUES ('1095', 'fi', 'hy', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1096', 'fi', 'id', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1097', 'fi', 'is', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1098', 'fi', 'it', 'Finlandese');
INSERT INTO arcp_icl_languages_translations VALUES ('1099', 'fi', 'ja', 'フィンランド語');
INSERT INTO arcp_icl_languages_translations VALUES ('1100', 'fi', 'ko', '핀란드어');
INSERT INTO arcp_icl_languages_translations VALUES ('1101', 'fi', 'ku', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1102', 'fi', 'la', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1103', 'fi', 'lv', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1104', 'fi', 'lt', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1105', 'fi', 'mk', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1106', 'fi', 'mt', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1107', 'fi', 'mn', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1108', 'fi', 'ne', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1109', 'fi', 'nl', 'Fins');
INSERT INTO arcp_icl_languages_translations VALUES ('1110', 'fi', 'nb', 'Finsk');
INSERT INTO arcp_icl_languages_translations VALUES ('1111', 'fi', 'pa', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1112', 'fi', 'pl', 'fiński');
INSERT INTO arcp_icl_languages_translations VALUES ('1113', 'fi', 'pt-pt', 'Finlandês');
INSERT INTO arcp_icl_languages_translations VALUES ('1114', 'fi', 'pt-br', 'Finlandês');
INSERT INTO arcp_icl_languages_translations VALUES ('1115', 'fi', 'qu', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1116', 'fi', 'ro', 'Finlandeză');
INSERT INTO arcp_icl_languages_translations VALUES ('1117', 'fi', 'ru', 'Финский');
INSERT INTO arcp_icl_languages_translations VALUES ('1118', 'fi', 'sl', 'Finski');
INSERT INTO arcp_icl_languages_translations VALUES ('1119', 'fi', 'so', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1120', 'fi', 'sq', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1121', 'fi', 'sr', 'фински');
INSERT INTO arcp_icl_languages_translations VALUES ('1122', 'fi', 'sv', 'Finska');
INSERT INTO arcp_icl_languages_translations VALUES ('1123', 'fi', 'ta', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1124', 'fi', 'th', 'ฟินนิช');
INSERT INTO arcp_icl_languages_translations VALUES ('1125', 'fi', 'tr', 'Fince');
INSERT INTO arcp_icl_languages_translations VALUES ('1126', 'fi', 'uk', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1127', 'fi', 'ur', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1128', 'fi', 'uz', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1129', 'fi', 'vi', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1130', 'fi', 'yi', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1131', 'fi', 'zh-hans', '芬兰语');
INSERT INTO arcp_icl_languages_translations VALUES ('1132', 'fi', 'zu', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1133', 'fi', 'zh-hant', '芬蘭語');
INSERT INTO arcp_icl_languages_translations VALUES ('1134', 'fi', 'ms', 'Finnish');
INSERT INTO arcp_icl_languages_translations VALUES ('1135', 'ga', 'en', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1136', 'ga', 'es', 'Irlandés');
INSERT INTO arcp_icl_languages_translations VALUES ('1137', 'ga', 'de', 'Irisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1138', 'ga', 'fr', 'Irlandais');
INSERT INTO arcp_icl_languages_translations VALUES ('1139', 'ga', 'ar', 'الأيرلندية');
INSERT INTO arcp_icl_languages_translations VALUES ('1140', 'ga', 'bs', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1141', 'ga', 'bg', 'Ирландски');
INSERT INTO arcp_icl_languages_translations VALUES ('1142', 'ga', 'ca', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1143', 'ga', 'cs', 'Irský');
INSERT INTO arcp_icl_languages_translations VALUES ('1144', 'ga', 'sk', 'Írština');
INSERT INTO arcp_icl_languages_translations VALUES ('1145', 'ga', 'cy', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1146', 'ga', 'da', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1147', 'ga', 'el', 'Ιρλανδικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1148', 'ga', 'eo', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1149', 'ga', 'et', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1150', 'ga', 'eu', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1151', 'ga', 'fa', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1152', 'ga', 'fi', 'iiri');
INSERT INTO arcp_icl_languages_translations VALUES ('1153', 'ga', 'ga', 'Gaeilge');
INSERT INTO arcp_icl_languages_translations VALUES ('1154', 'ga', 'he', 'אירית');
INSERT INTO arcp_icl_languages_translations VALUES ('1155', 'ga', 'hi', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1156', 'ga', 'hr', 'Irci');
INSERT INTO arcp_icl_languages_translations VALUES ('1157', 'ga', 'hu', 'ír');
INSERT INTO arcp_icl_languages_translations VALUES ('1158', 'ga', 'hy', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1159', 'ga', 'id', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1160', 'ga', 'is', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1161', 'ga', 'it', 'Irlandese');
INSERT INTO arcp_icl_languages_translations VALUES ('1162', 'ga', 'ja', 'アイルランド語');
INSERT INTO arcp_icl_languages_translations VALUES ('1163', 'ga', 'ko', '아일랜드어');
INSERT INTO arcp_icl_languages_translations VALUES ('1164', 'ga', 'ku', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1165', 'ga', 'la', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1166', 'ga', 'lv', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1167', 'ga', 'lt', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1168', 'ga', 'mk', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1169', 'ga', 'mt', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1170', 'ga', 'mn', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1171', 'ga', 'ne', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1172', 'ga', 'nl', 'Iers');
INSERT INTO arcp_icl_languages_translations VALUES ('1173', 'ga', 'nb', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1174', 'ga', 'pa', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1175', 'ga', 'pl', 'irlandzki');
INSERT INTO arcp_icl_languages_translations VALUES ('1176', 'ga', 'pt-pt', 'Irlandês');
INSERT INTO arcp_icl_languages_translations VALUES ('1177', 'ga', 'pt-br', 'Irlandês');
INSERT INTO arcp_icl_languages_translations VALUES ('1178', 'ga', 'qu', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1179', 'ga', 'ro', 'Irlandeză');
INSERT INTO arcp_icl_languages_translations VALUES ('1180', 'ga', 'ru', 'Ирландский');
INSERT INTO arcp_icl_languages_translations VALUES ('1181', 'ga', 'sl', 'Irski');
INSERT INTO arcp_icl_languages_translations VALUES ('1182', 'ga', 'so', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1183', 'ga', 'sq', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1184', 'ga', 'sr', 'ирски');
INSERT INTO arcp_icl_languages_translations VALUES ('1185', 'ga', 'sv', 'Irländska');
INSERT INTO arcp_icl_languages_translations VALUES ('1186', 'ga', 'ta', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1187', 'ga', 'th', 'ไอริช');
INSERT INTO arcp_icl_languages_translations VALUES ('1188', 'ga', 'tr', 'İrlanda dili');
INSERT INTO arcp_icl_languages_translations VALUES ('1189', 'ga', 'uk', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1190', 'ga', 'ur', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1191', 'ga', 'uz', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1192', 'ga', 'vi', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1193', 'ga', 'yi', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1194', 'ga', 'zh-hans', '爱尔兰语');
INSERT INTO arcp_icl_languages_translations VALUES ('1195', 'ga', 'zu', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1196', 'ga', 'zh-hant', '愛爾蘭語');
INSERT INTO arcp_icl_languages_translations VALUES ('1197', 'ga', 'ms', 'Irish');
INSERT INTO arcp_icl_languages_translations VALUES ('1198', 'he', 'en', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1199', 'he', 'es', 'Hebreo');
INSERT INTO arcp_icl_languages_translations VALUES ('1200', 'he', 'de', 'Hebräisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1201', 'he', 'fr', 'Hébreu');
INSERT INTO arcp_icl_languages_translations VALUES ('1202', 'he', 'ar', 'العبرية');
INSERT INTO arcp_icl_languages_translations VALUES ('1203', 'he', 'bs', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1204', 'he', 'bg', 'Иврит');
INSERT INTO arcp_icl_languages_translations VALUES ('1205', 'he', 'ca', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1206', 'he', 'cs', 'Hebrejština');
INSERT INTO arcp_icl_languages_translations VALUES ('1207', 'he', 'sk', 'Hebrejčina');
INSERT INTO arcp_icl_languages_translations VALUES ('1208', 'he', 'cy', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1209', 'he', 'da', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1210', 'he', 'el', 'Εβραικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1211', 'he', 'eo', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1212', 'he', 'et', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1213', 'he', 'eu', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1214', 'he', 'fa', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1215', 'he', 'fi', 'heprea');
INSERT INTO arcp_icl_languages_translations VALUES ('1216', 'he', 'ga', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1217', 'he', 'he', 'עברית');
INSERT INTO arcp_icl_languages_translations VALUES ('1218', 'he', 'hi', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1219', 'he', 'hr', 'Hebrejski');
INSERT INTO arcp_icl_languages_translations VALUES ('1220', 'he', 'hu', 'héber');
INSERT INTO arcp_icl_languages_translations VALUES ('1221', 'he', 'hy', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1222', 'he', 'id', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1223', 'he', 'is', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1224', 'he', 'it', 'Ebraico');
INSERT INTO arcp_icl_languages_translations VALUES ('1225', 'he', 'ja', 'ヘブライ語');
INSERT INTO arcp_icl_languages_translations VALUES ('1226', 'he', 'ko', '히브리어');
INSERT INTO arcp_icl_languages_translations VALUES ('1227', 'he', 'ku', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1228', 'he', 'la', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1229', 'he', 'lv', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1230', 'he', 'lt', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1231', 'he', 'mk', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1232', 'he', 'mt', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1233', 'he', 'mn', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1234', 'he', 'ne', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1235', 'he', 'nl', 'Hebreeuws');
INSERT INTO arcp_icl_languages_translations VALUES ('1236', 'he', 'nb', 'Hebraisk');
INSERT INTO arcp_icl_languages_translations VALUES ('1237', 'he', 'pa', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1238', 'he', 'pl', 'hebrajski');
INSERT INTO arcp_icl_languages_translations VALUES ('1239', 'he', 'pt-pt', 'Hebraico');
INSERT INTO arcp_icl_languages_translations VALUES ('1240', 'he', 'pt-br', 'Hebraico');
INSERT INTO arcp_icl_languages_translations VALUES ('1241', 'he', 'qu', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1242', 'he', 'ro', 'Ebraică');
INSERT INTO arcp_icl_languages_translations VALUES ('1243', 'he', 'ru', 'Иврит');
INSERT INTO arcp_icl_languages_translations VALUES ('1244', 'he', 'sl', 'Hebrejščina');
INSERT INTO arcp_icl_languages_translations VALUES ('1245', 'he', 'so', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1246', 'he', 'sq', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1247', 'he', 'sr', 'Хебрејски');
INSERT INTO arcp_icl_languages_translations VALUES ('1248', 'he', 'sv', 'Hebreiska');
INSERT INTO arcp_icl_languages_translations VALUES ('1249', 'he', 'ta', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1250', 'he', 'th', 'ฮิบรู');
INSERT INTO arcp_icl_languages_translations VALUES ('1251', 'he', 'tr', 'İbranice');
INSERT INTO arcp_icl_languages_translations VALUES ('1252', 'he', 'uk', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1253', 'he', 'ur', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1254', 'he', 'uz', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1255', 'he', 'vi', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1256', 'he', 'yi', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1257', 'he', 'zh-hans', '希伯来语');
INSERT INTO arcp_icl_languages_translations VALUES ('1258', 'he', 'zu', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1259', 'he', 'zh-hant', '希伯來語');
INSERT INTO arcp_icl_languages_translations VALUES ('1260', 'he', 'ms', 'Hebrew');
INSERT INTO arcp_icl_languages_translations VALUES ('1261', 'hi', 'en', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1262', 'hi', 'es', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1263', 'hi', 'de', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1264', 'hi', 'fr', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1265', 'hi', 'ar', 'الهندية');
INSERT INTO arcp_icl_languages_translations VALUES ('1266', 'hi', 'bs', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1267', 'hi', 'bg', 'Хинди');
INSERT INTO arcp_icl_languages_translations VALUES ('1268', 'hi', 'ca', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1269', 'hi', 'cs', 'Hindština');
INSERT INTO arcp_icl_languages_translations VALUES ('1270', 'hi', 'sk', 'Hindčina');
INSERT INTO arcp_icl_languages_translations VALUES ('1271', 'hi', 'cy', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1272', 'hi', 'da', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1273', 'hi', 'el', 'Ινδικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1274', 'hi', 'eo', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1275', 'hi', 'et', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1276', 'hi', 'eu', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1277', 'hi', 'fa', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1278', 'hi', 'fi', 'hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1279', 'hi', 'ga', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1280', 'hi', 'he', 'הודית');
INSERT INTO arcp_icl_languages_translations VALUES ('1281', 'hi', 'hi', 'हिन्दी');
INSERT INTO arcp_icl_languages_translations VALUES ('1282', 'hi', 'hr', 'Hindski');
INSERT INTO arcp_icl_languages_translations VALUES ('1283', 'hi', 'hu', 'hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1284', 'hi', 'hy', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1285', 'hi', 'id', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1286', 'hi', 'is', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1287', 'hi', 'it', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1288', 'hi', 'ja', 'ヒンディー語');
INSERT INTO arcp_icl_languages_translations VALUES ('1289', 'hi', 'ko', '힌두어');
INSERT INTO arcp_icl_languages_translations VALUES ('1290', 'hi', 'ku', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1291', 'hi', 'la', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1292', 'hi', 'lv', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1293', 'hi', 'lt', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1294', 'hi', 'mk', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1295', 'hi', 'mt', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1296', 'hi', 'mn', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1297', 'hi', 'ne', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1298', 'hi', 'nl', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1299', 'hi', 'nb', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1300', 'hi', 'pa', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1301', 'hi', 'pl', 'hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1302', 'hi', 'pt-pt', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1303', 'hi', 'pt-br', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1304', 'hi', 'qu', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1305', 'hi', 'ro', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1306', 'hi', 'ru', 'Хинди');
INSERT INTO arcp_icl_languages_translations VALUES ('1307', 'hi', 'sl', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1308', 'hi', 'so', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1309', 'hi', 'sq', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1310', 'hi', 'sr', 'хинди');
INSERT INTO arcp_icl_languages_translations VALUES ('1311', 'hi', 'sv', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1312', 'hi', 'ta', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1313', 'hi', 'th', 'ฮินดิ');
INSERT INTO arcp_icl_languages_translations VALUES ('1314', 'hi', 'tr', 'Hintçe');
INSERT INTO arcp_icl_languages_translations VALUES ('1315', 'hi', 'uk', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1316', 'hi', 'ur', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1317', 'hi', 'uz', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1318', 'hi', 'vi', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1319', 'hi', 'yi', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1320', 'hi', 'zh-hans', '印地语');
INSERT INTO arcp_icl_languages_translations VALUES ('1321', 'hi', 'zu', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1322', 'hi', 'zh-hant', '印地語');
INSERT INTO arcp_icl_languages_translations VALUES ('1323', 'hi', 'ms', 'Hindi');
INSERT INTO arcp_icl_languages_translations VALUES ('1324', 'hr', 'en', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1325', 'hr', 'es', 'Croata');
INSERT INTO arcp_icl_languages_translations VALUES ('1326', 'hr', 'de', 'Kroatisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1327', 'hr', 'fr', 'Croate');
INSERT INTO arcp_icl_languages_translations VALUES ('1328', 'hr', 'ar', 'الكرواتية');
INSERT INTO arcp_icl_languages_translations VALUES ('1329', 'hr', 'bs', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1330', 'hr', 'bg', 'Хърватски');
INSERT INTO arcp_icl_languages_translations VALUES ('1331', 'hr', 'ca', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1332', 'hr', 'cs', 'Chorvatský');
INSERT INTO arcp_icl_languages_translations VALUES ('1333', 'hr', 'sk', 'Chorvátština');
INSERT INTO arcp_icl_languages_translations VALUES ('1334', 'hr', 'cy', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1335', 'hr', 'da', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1336', 'hr', 'el', 'Κροατικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1337', 'hr', 'eo', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1338', 'hr', 'et', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1339', 'hr', 'eu', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1340', 'hr', 'fa', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1341', 'hr', 'fi', 'kroatia');
INSERT INTO arcp_icl_languages_translations VALUES ('1342', 'hr', 'ga', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1343', 'hr', 'he', 'קרוטאית');
INSERT INTO arcp_icl_languages_translations VALUES ('1344', 'hr', 'hi', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1345', 'hr', 'hr', 'Hrvatski');
INSERT INTO arcp_icl_languages_translations VALUES ('1346', 'hr', 'hu', 'horvát');
INSERT INTO arcp_icl_languages_translations VALUES ('1347', 'hr', 'hy', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1348', 'hr', 'id', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1349', 'hr', 'is', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1350', 'hr', 'it', 'Croato');
INSERT INTO arcp_icl_languages_translations VALUES ('1351', 'hr', 'ja', 'クロアチア語');
INSERT INTO arcp_icl_languages_translations VALUES ('1352', 'hr', 'ko', '크로아시아어');
INSERT INTO arcp_icl_languages_translations VALUES ('1353', 'hr', 'ku', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1354', 'hr', 'la', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1355', 'hr', 'lv', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1356', 'hr', 'lt', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1357', 'hr', 'mk', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1358', 'hr', 'mt', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1359', 'hr', 'mn', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1360', 'hr', 'ne', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1361', 'hr', 'nl', 'Kroatisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1362', 'hr', 'nb', 'Kroatisk');
INSERT INTO arcp_icl_languages_translations VALUES ('1363', 'hr', 'pa', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1364', 'hr', 'pl', 'chorwacki');
INSERT INTO arcp_icl_languages_translations VALUES ('1365', 'hr', 'pt-pt', 'Croata');
INSERT INTO arcp_icl_languages_translations VALUES ('1366', 'hr', 'pt-br', 'Croata');
INSERT INTO arcp_icl_languages_translations VALUES ('1367', 'hr', 'qu', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1368', 'hr', 'ro', 'Croată');
INSERT INTO arcp_icl_languages_translations VALUES ('1369', 'hr', 'ru', 'Хорватский');
INSERT INTO arcp_icl_languages_translations VALUES ('1370', 'hr', 'sl', 'Hrvaški');
INSERT INTO arcp_icl_languages_translations VALUES ('1371', 'hr', 'so', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1372', 'hr', 'sq', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1373', 'hr', 'sr', 'хрватски');
INSERT INTO arcp_icl_languages_translations VALUES ('1374', 'hr', 'sv', 'Kroatiska');
INSERT INTO arcp_icl_languages_translations VALUES ('1375', 'hr', 'ta', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1376', 'hr', 'th', 'โครเอเชีย');
INSERT INTO arcp_icl_languages_translations VALUES ('1377', 'hr', 'tr', 'Hırvatça');
INSERT INTO arcp_icl_languages_translations VALUES ('1378', 'hr', 'uk', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1379', 'hr', 'ur', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1380', 'hr', 'uz', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1381', 'hr', 'vi', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1382', 'hr', 'yi', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1383', 'hr', 'zh-hans', '克罗地亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('1384', 'hr', 'zu', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1385', 'hr', 'zh-hant', '克羅地亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('1386', 'hr', 'ms', 'Croatian');
INSERT INTO arcp_icl_languages_translations VALUES ('1387', 'hu', 'en', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1388', 'hu', 'es', 'Húngaro');
INSERT INTO arcp_icl_languages_translations VALUES ('1389', 'hu', 'de', 'Ungarisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1390', 'hu', 'fr', 'Hongrois');
INSERT INTO arcp_icl_languages_translations VALUES ('1391', 'hu', 'ar', 'الهنغارية');
INSERT INTO arcp_icl_languages_translations VALUES ('1392', 'hu', 'bs', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1393', 'hu', 'bg', 'Унгарски');
INSERT INTO arcp_icl_languages_translations VALUES ('1394', 'hu', 'ca', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1395', 'hu', 'cs', 'Maďarština');
INSERT INTO arcp_icl_languages_translations VALUES ('1396', 'hu', 'sk', 'Maďarčina');
INSERT INTO arcp_icl_languages_translations VALUES ('1397', 'hu', 'cy', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1398', 'hu', 'da', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1399', 'hu', 'el', 'Ουγγρικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1400', 'hu', 'eo', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1401', 'hu', 'et', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1402', 'hu', 'eu', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1403', 'hu', 'fa', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1404', 'hu', 'fi', 'unkari');
INSERT INTO arcp_icl_languages_translations VALUES ('1405', 'hu', 'ga', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1406', 'hu', 'he', 'הונגרית');
INSERT INTO arcp_icl_languages_translations VALUES ('1407', 'hu', 'hi', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1408', 'hu', 'hr', 'Mađarski');
INSERT INTO arcp_icl_languages_translations VALUES ('1409', 'hu', 'hu', 'Magyar');
INSERT INTO arcp_icl_languages_translations VALUES ('1410', 'hu', 'hy', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1411', 'hu', 'id', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1412', 'hu', 'is', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1413', 'hu', 'it', 'Ungherese');
INSERT INTO arcp_icl_languages_translations VALUES ('1414', 'hu', 'ja', 'ハンガリー語');
INSERT INTO arcp_icl_languages_translations VALUES ('1415', 'hu', 'ko', '헝가리어');
INSERT INTO arcp_icl_languages_translations VALUES ('1416', 'hu', 'ku', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1417', 'hu', 'la', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1418', 'hu', 'lv', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1419', 'hu', 'lt', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1420', 'hu', 'mk', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1421', 'hu', 'mt', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1422', 'hu', 'mn', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1423', 'hu', 'ne', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1424', 'hu', 'nl', 'Hongaars');
INSERT INTO arcp_icl_languages_translations VALUES ('1425', 'hu', 'nb', 'Ungarsk');
INSERT INTO arcp_icl_languages_translations VALUES ('1426', 'hu', 'pa', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1427', 'hu', 'pl', 'węgierski');
INSERT INTO arcp_icl_languages_translations VALUES ('1428', 'hu', 'pt-pt', 'Húngaro');
INSERT INTO arcp_icl_languages_translations VALUES ('1429', 'hu', 'pt-br', 'Húngaro');
INSERT INTO arcp_icl_languages_translations VALUES ('1430', 'hu', 'qu', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1431', 'hu', 'ro', 'Ungară');
INSERT INTO arcp_icl_languages_translations VALUES ('1432', 'hu', 'ru', 'Венгерский');
INSERT INTO arcp_icl_languages_translations VALUES ('1433', 'hu', 'sl', 'Madžarski');
INSERT INTO arcp_icl_languages_translations VALUES ('1434', 'hu', 'so', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1435', 'hu', 'sq', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1436', 'hu', 'sr', 'мађарски');
INSERT INTO arcp_icl_languages_translations VALUES ('1437', 'hu', 'sv', 'Ungerska');
INSERT INTO arcp_icl_languages_translations VALUES ('1438', 'hu', 'ta', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1439', 'hu', 'th', 'ฮังการี');
INSERT INTO arcp_icl_languages_translations VALUES ('1440', 'hu', 'tr', 'Macarca');
INSERT INTO arcp_icl_languages_translations VALUES ('1441', 'hu', 'uk', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1442', 'hu', 'ur', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1443', 'hu', 'uz', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1444', 'hu', 'vi', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1445', 'hu', 'yi', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1446', 'hu', 'zh-hans', '匈牙利语');
INSERT INTO arcp_icl_languages_translations VALUES ('1447', 'hu', 'zu', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1448', 'hu', 'zh-hant', '匈牙利語');
INSERT INTO arcp_icl_languages_translations VALUES ('1449', 'hu', 'ms', 'Hungarian');
INSERT INTO arcp_icl_languages_translations VALUES ('1450', 'hy', 'en', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1451', 'hy', 'es', 'Armenio');
INSERT INTO arcp_icl_languages_translations VALUES ('1452', 'hy', 'de', 'Armenisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1453', 'hy', 'fr', 'Arménien');
INSERT INTO arcp_icl_languages_translations VALUES ('1454', 'hy', 'ar', 'الأرمينية');
INSERT INTO arcp_icl_languages_translations VALUES ('1455', 'hy', 'bs', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1456', 'hy', 'bg', 'Арменски');
INSERT INTO arcp_icl_languages_translations VALUES ('1457', 'hy', 'ca', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1458', 'hy', 'cs', 'Arménský');
INSERT INTO arcp_icl_languages_translations VALUES ('1459', 'hy', 'sk', 'Arménčina');
INSERT INTO arcp_icl_languages_translations VALUES ('1460', 'hy', 'cy', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1461', 'hy', 'da', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1462', 'hy', 'el', 'Αρμενικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1463', 'hy', 'eo', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1464', 'hy', 'et', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1465', 'hy', 'eu', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1466', 'hy', 'fa', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1467', 'hy', 'fi', 'armenia');
INSERT INTO arcp_icl_languages_translations VALUES ('1468', 'hy', 'ga', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1469', 'hy', 'he', 'ארמנית');
INSERT INTO arcp_icl_languages_translations VALUES ('1470', 'hy', 'hi', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1471', 'hy', 'hr', 'Armenac');
INSERT INTO arcp_icl_languages_translations VALUES ('1472', 'hy', 'hu', 'örmény');
INSERT INTO arcp_icl_languages_translations VALUES ('1473', 'hy', 'hy', 'Հայերեն');
INSERT INTO arcp_icl_languages_translations VALUES ('1474', 'hy', 'id', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1475', 'hy', 'is', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1476', 'hy', 'it', 'Armeno');
INSERT INTO arcp_icl_languages_translations VALUES ('1477', 'hy', 'ja', 'アルメニア語');
INSERT INTO arcp_icl_languages_translations VALUES ('1478', 'hy', 'ko', '아르메니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('1479', 'hy', 'ku', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1480', 'hy', 'la', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1481', 'hy', 'lv', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1482', 'hy', 'lt', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1483', 'hy', 'mk', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1484', 'hy', 'mt', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1485', 'hy', 'mn', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1486', 'hy', 'ne', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1487', 'hy', 'nl', 'Armeens');
INSERT INTO arcp_icl_languages_translations VALUES ('1488', 'hy', 'nb', 'Armensk');
INSERT INTO arcp_icl_languages_translations VALUES ('1489', 'hy', 'pa', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1490', 'hy', 'pl', 'ormiański');
INSERT INTO arcp_icl_languages_translations VALUES ('1491', 'hy', 'pt-pt', 'Arménio');
INSERT INTO arcp_icl_languages_translations VALUES ('1492', 'hy', 'pt-br', 'Arménio');
INSERT INTO arcp_icl_languages_translations VALUES ('1493', 'hy', 'qu', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1494', 'hy', 'ro', 'Armeană');
INSERT INTO arcp_icl_languages_translations VALUES ('1495', 'hy', 'ru', 'Армянский');
INSERT INTO arcp_icl_languages_translations VALUES ('1496', 'hy', 'sl', 'Armenski');
INSERT INTO arcp_icl_languages_translations VALUES ('1497', 'hy', 'so', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1498', 'hy', 'sq', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1499', 'hy', 'sr', 'јерменски');
INSERT INTO arcp_icl_languages_translations VALUES ('1500', 'hy', 'sv', 'Armeniska');
INSERT INTO arcp_icl_languages_translations VALUES ('1501', 'hy', 'ta', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1502', 'hy', 'th', 'อาร์เมเนีย');
INSERT INTO arcp_icl_languages_translations VALUES ('1503', 'hy', 'tr', 'Ermenice');
INSERT INTO arcp_icl_languages_translations VALUES ('1504', 'hy', 'uk', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1505', 'hy', 'ur', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1506', 'hy', 'uz', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1507', 'hy', 'vi', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1508', 'hy', 'yi', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1509', 'hy', 'zh-hans', '亚美尼亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('1510', 'hy', 'zu', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1511', 'hy', 'zh-hant', '亞美尼亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('1512', 'hy', 'ms', 'Armenian');
INSERT INTO arcp_icl_languages_translations VALUES ('1513', 'id', 'en', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1514', 'id', 'es', 'Indonesio');
INSERT INTO arcp_icl_languages_translations VALUES ('1515', 'id', 'de', 'Indonesisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1516', 'id', 'fr', 'Indonésien');
INSERT INTO arcp_icl_languages_translations VALUES ('1517', 'id', 'ar', 'الأندونيسية');
INSERT INTO arcp_icl_languages_translations VALUES ('1518', 'id', 'bs', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1519', 'id', 'bg', 'Индонезийски');
INSERT INTO arcp_icl_languages_translations VALUES ('1520', 'id', 'ca', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1521', 'id', 'cs', 'Indonéský');
INSERT INTO arcp_icl_languages_translations VALUES ('1522', 'id', 'sk', 'Indonézčina');
INSERT INTO arcp_icl_languages_translations VALUES ('1523', 'id', 'cy', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1524', 'id', 'da', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1525', 'id', 'el', 'Ινδονησιακα');
INSERT INTO arcp_icl_languages_translations VALUES ('1526', 'id', 'eo', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1527', 'id', 'et', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1528', 'id', 'eu', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1529', 'id', 'fa', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1530', 'id', 'fi', 'indonesia');
INSERT INTO arcp_icl_languages_translations VALUES ('1531', 'id', 'ga', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1532', 'id', 'he', 'אינדונזית');
INSERT INTO arcp_icl_languages_translations VALUES ('1533', 'id', 'hi', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1534', 'id', 'hr', 'Indonezijski');
INSERT INTO arcp_icl_languages_translations VALUES ('1535', 'id', 'hu', 'indonéz');
INSERT INTO arcp_icl_languages_translations VALUES ('1536', 'id', 'hy', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1537', 'id', 'id', 'Indonesia');
INSERT INTO arcp_icl_languages_translations VALUES ('1538', 'id', 'is', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1539', 'id', 'it', 'Indonesiano');
INSERT INTO arcp_icl_languages_translations VALUES ('1540', 'id', 'ja', 'インドネシア語');
INSERT INTO arcp_icl_languages_translations VALUES ('1541', 'id', 'ko', '인도네시아어');
INSERT INTO arcp_icl_languages_translations VALUES ('1542', 'id', 'ku', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1543', 'id', 'la', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1544', 'id', 'lv', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1545', 'id', 'lt', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1546', 'id', 'mk', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1547', 'id', 'mt', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1548', 'id', 'mn', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1549', 'id', 'ne', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1550', 'id', 'nl', 'Indonesisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1551', 'id', 'nb', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1552', 'id', 'pa', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1553', 'id', 'pl', 'indonezyjski');
INSERT INTO arcp_icl_languages_translations VALUES ('1554', 'id', 'pt-pt', 'Indonésio');
INSERT INTO arcp_icl_languages_translations VALUES ('1555', 'id', 'pt-br', 'Indonésio');
INSERT INTO arcp_icl_languages_translations VALUES ('1556', 'id', 'qu', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1557', 'id', 'ro', 'Indoneziană');
INSERT INTO arcp_icl_languages_translations VALUES ('1558', 'id', 'ru', 'Индонезийский');
INSERT INTO arcp_icl_languages_translations VALUES ('1559', 'id', 'sl', 'Indonezijski');
INSERT INTO arcp_icl_languages_translations VALUES ('1560', 'id', 'so', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1561', 'id', 'sq', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1562', 'id', 'sr', 'индонезијски');
INSERT INTO arcp_icl_languages_translations VALUES ('1563', 'id', 'sv', 'Indonesiska');
INSERT INTO arcp_icl_languages_translations VALUES ('1564', 'id', 'ta', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1565', 'id', 'th', 'อินโดนีเซีย');
INSERT INTO arcp_icl_languages_translations VALUES ('1566', 'id', 'tr', 'Endonezya dili');
INSERT INTO arcp_icl_languages_translations VALUES ('1567', 'id', 'uk', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1568', 'id', 'ur', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1569', 'id', 'uz', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1570', 'id', 'vi', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1571', 'id', 'yi', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1572', 'id', 'zh-hans', '印度尼西亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('1573', 'id', 'zu', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1574', 'id', 'zh-hant', '印尼語');
INSERT INTO arcp_icl_languages_translations VALUES ('1575', 'id', 'ms', 'Indonesian');
INSERT INTO arcp_icl_languages_translations VALUES ('1576', 'is', 'en', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1577', 'is', 'es', 'Islandés');
INSERT INTO arcp_icl_languages_translations VALUES ('1578', 'is', 'de', 'Isländisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1579', 'is', 'fr', 'Islandais');
INSERT INTO arcp_icl_languages_translations VALUES ('1580', 'is', 'ar', 'الأيسلاندية');
INSERT INTO arcp_icl_languages_translations VALUES ('1581', 'is', 'bs', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1582', 'is', 'bg', 'Исландски');
INSERT INTO arcp_icl_languages_translations VALUES ('1583', 'is', 'ca', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1584', 'is', 'cs', 'Islandský');
INSERT INTO arcp_icl_languages_translations VALUES ('1585', 'is', 'sk', 'Islančina');
INSERT INTO arcp_icl_languages_translations VALUES ('1586', 'is', 'cy', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1587', 'is', 'da', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1588', 'is', 'el', 'Ισλανδικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1589', 'is', 'eo', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1590', 'is', 'et', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1591', 'is', 'eu', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1592', 'is', 'fa', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1593', 'is', 'fi', 'islanti');
INSERT INTO arcp_icl_languages_translations VALUES ('1594', 'is', 'ga', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1595', 'is', 'he', 'איסלנדית');
INSERT INTO arcp_icl_languages_translations VALUES ('1596', 'is', 'hi', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1597', 'is', 'hr', 'Islandski');
INSERT INTO arcp_icl_languages_translations VALUES ('1598', 'is', 'hu', 'izlandi');
INSERT INTO arcp_icl_languages_translations VALUES ('1599', 'is', 'hy', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1600', 'is', 'id', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1601', 'is', 'is', 'Íslenska');
INSERT INTO arcp_icl_languages_translations VALUES ('1602', 'is', 'it', 'Islandese');
INSERT INTO arcp_icl_languages_translations VALUES ('1603', 'is', 'ja', 'アイスランド語');
INSERT INTO arcp_icl_languages_translations VALUES ('1604', 'is', 'ko', '아이슬랜드어');
INSERT INTO arcp_icl_languages_translations VALUES ('1605', 'is', 'ku', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1606', 'is', 'la', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1607', 'is', 'lv', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1608', 'is', 'lt', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1609', 'is', 'mk', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1610', 'is', 'mt', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1611', 'is', 'mn', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1612', 'is', 'ne', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1613', 'is', 'nl', 'Ijslands');
INSERT INTO arcp_icl_languages_translations VALUES ('1614', 'is', 'nb', 'Islandsk');
INSERT INTO arcp_icl_languages_translations VALUES ('1615', 'is', 'pa', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1616', 'is', 'pl', 'islandzki');
INSERT INTO arcp_icl_languages_translations VALUES ('1617', 'is', 'pt-pt', 'Islandês');
INSERT INTO arcp_icl_languages_translations VALUES ('1618', 'is', 'pt-br', 'Islandês');
INSERT INTO arcp_icl_languages_translations VALUES ('1619', 'is', 'qu', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1620', 'is', 'ro', 'Islandeză');
INSERT INTO arcp_icl_languages_translations VALUES ('1621', 'is', 'ru', 'Исландский');
INSERT INTO arcp_icl_languages_translations VALUES ('1622', 'is', 'sl', 'Islandski');
INSERT INTO arcp_icl_languages_translations VALUES ('1623', 'is', 'so', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1624', 'is', 'sq', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1625', 'is', 'sr', 'исландски');
INSERT INTO arcp_icl_languages_translations VALUES ('1626', 'is', 'sv', 'Isländska');
INSERT INTO arcp_icl_languages_translations VALUES ('1627', 'is', 'ta', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1628', 'is', 'th', 'ไอซ์แลนด์');
INSERT INTO arcp_icl_languages_translations VALUES ('1629', 'is', 'tr', 'İzlandaca');
INSERT INTO arcp_icl_languages_translations VALUES ('1630', 'is', 'uk', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1631', 'is', 'ur', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1632', 'is', 'uz', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1633', 'is', 'vi', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1634', 'is', 'yi', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1635', 'is', 'zh-hans', '冰岛语');
INSERT INTO arcp_icl_languages_translations VALUES ('1636', 'is', 'zu', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1637', 'is', 'zh-hant', '冰島語');
INSERT INTO arcp_icl_languages_translations VALUES ('1638', 'is', 'ms', 'Icelandic');
INSERT INTO arcp_icl_languages_translations VALUES ('1639', 'it', 'en', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1640', 'it', 'es', 'Italiano');
INSERT INTO arcp_icl_languages_translations VALUES ('1641', 'it', 'de', 'Italienisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1642', 'it', 'fr', 'Italien');
INSERT INTO arcp_icl_languages_translations VALUES ('1643', 'it', 'ar', 'الإيطالية');
INSERT INTO arcp_icl_languages_translations VALUES ('1644', 'it', 'bs', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1645', 'it', 'bg', 'Италиански');
INSERT INTO arcp_icl_languages_translations VALUES ('1646', 'it', 'ca', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1647', 'it', 'cs', 'Ital');
INSERT INTO arcp_icl_languages_translations VALUES ('1648', 'it', 'sk', 'Taliančina');
INSERT INTO arcp_icl_languages_translations VALUES ('1649', 'it', 'cy', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1650', 'it', 'da', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1651', 'it', 'el', 'Ιταλικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1652', 'it', 'eo', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1653', 'it', 'et', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1654', 'it', 'eu', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1655', 'it', 'fa', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1656', 'it', 'fi', 'italia');
INSERT INTO arcp_icl_languages_translations VALUES ('1657', 'it', 'ga', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1658', 'it', 'he', 'איטלקית');
INSERT INTO arcp_icl_languages_translations VALUES ('1659', 'it', 'hi', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1660', 'it', 'hr', 'Talijanski');
INSERT INTO arcp_icl_languages_translations VALUES ('1661', 'it', 'hu', 'olasz');
INSERT INTO arcp_icl_languages_translations VALUES ('1662', 'it', 'hy', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1663', 'it', 'id', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1664', 'it', 'is', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1665', 'it', 'it', 'Italiano');
INSERT INTO arcp_icl_languages_translations VALUES ('1666', 'it', 'ja', 'イタリア語');
INSERT INTO arcp_icl_languages_translations VALUES ('1667', 'it', 'ko', '이태리어');
INSERT INTO arcp_icl_languages_translations VALUES ('1668', 'it', 'ku', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1669', 'it', 'la', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1670', 'it', 'lv', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1671', 'it', 'lt', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1672', 'it', 'mk', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1673', 'it', 'mt', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1674', 'it', 'mn', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1675', 'it', 'ne', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1676', 'it', 'nl', 'Italiaans');
INSERT INTO arcp_icl_languages_translations VALUES ('1677', 'it', 'nb', 'Italiensk');
INSERT INTO arcp_icl_languages_translations VALUES ('1678', 'it', 'pa', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1679', 'it', 'pl', 'włoski');
INSERT INTO arcp_icl_languages_translations VALUES ('1680', 'it', 'pt-pt', 'Italiano');
INSERT INTO arcp_icl_languages_translations VALUES ('1681', 'it', 'pt-br', 'Italiano');
INSERT INTO arcp_icl_languages_translations VALUES ('1682', 'it', 'qu', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1683', 'it', 'ro', 'Italiană');
INSERT INTO arcp_icl_languages_translations VALUES ('1684', 'it', 'ru', 'Итальянский');
INSERT INTO arcp_icl_languages_translations VALUES ('1685', 'it', 'sl', 'Italijanski');
INSERT INTO arcp_icl_languages_translations VALUES ('1686', 'it', 'so', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1687', 'it', 'sq', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1688', 'it', 'sr', 'италијански');
INSERT INTO arcp_icl_languages_translations VALUES ('1689', 'it', 'sv', 'Italienska');
INSERT INTO arcp_icl_languages_translations VALUES ('1690', 'it', 'ta', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1691', 'it', 'th', 'อิตาลี');
INSERT INTO arcp_icl_languages_translations VALUES ('1692', 'it', 'tr', 'İtalyanca');
INSERT INTO arcp_icl_languages_translations VALUES ('1693', 'it', 'uk', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1694', 'it', 'ur', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1695', 'it', 'uz', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1696', 'it', 'vi', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1697', 'it', 'yi', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1698', 'it', 'zh-hans', '意大利语');
INSERT INTO arcp_icl_languages_translations VALUES ('1699', 'it', 'zu', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1700', 'it', 'zh-hant', '義大利語');
INSERT INTO arcp_icl_languages_translations VALUES ('1701', 'it', 'ms', 'Italian');
INSERT INTO arcp_icl_languages_translations VALUES ('1702', 'ja', 'en', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1703', 'ja', 'es', 'Japonés');
INSERT INTO arcp_icl_languages_translations VALUES ('1704', 'ja', 'de', 'Japanisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1705', 'ja', 'fr', 'Japonais');
INSERT INTO arcp_icl_languages_translations VALUES ('1706', 'ja', 'ar', 'اليابانية');
INSERT INTO arcp_icl_languages_translations VALUES ('1707', 'ja', 'bs', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1708', 'ja', 'bg', 'Японски');
INSERT INTO arcp_icl_languages_translations VALUES ('1709', 'ja', 'ca', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1710', 'ja', 'cs', 'Japonský');
INSERT INTO arcp_icl_languages_translations VALUES ('1711', 'ja', 'sk', 'Japonština');
INSERT INTO arcp_icl_languages_translations VALUES ('1712', 'ja', 'cy', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1713', 'ja', 'da', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1714', 'ja', 'el', 'Ιαπωνικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1715', 'ja', 'eo', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1716', 'ja', 'et', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1717', 'ja', 'eu', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1718', 'ja', 'fa', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1719', 'ja', 'fi', 'japani');
INSERT INTO arcp_icl_languages_translations VALUES ('1720', 'ja', 'ga', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1721', 'ja', 'he', 'יפנית');
INSERT INTO arcp_icl_languages_translations VALUES ('1722', 'ja', 'hi', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1723', 'ja', 'hr', 'Japanski');
INSERT INTO arcp_icl_languages_translations VALUES ('1724', 'ja', 'hu', 'japán');
INSERT INTO arcp_icl_languages_translations VALUES ('1725', 'ja', 'hy', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1726', 'ja', 'id', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1727', 'ja', 'is', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1728', 'ja', 'it', 'Giapponese');
INSERT INTO arcp_icl_languages_translations VALUES ('1729', 'ja', 'ja', '日本語');
INSERT INTO arcp_icl_languages_translations VALUES ('1730', 'ja', 'ko', '일어');
INSERT INTO arcp_icl_languages_translations VALUES ('1731', 'ja', 'ku', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1732', 'ja', 'la', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1733', 'ja', 'lv', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1734', 'ja', 'lt', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1735', 'ja', 'mk', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1736', 'ja', 'mt', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1737', 'ja', 'mn', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1738', 'ja', 'ne', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1739', 'ja', 'nl', 'Japans');
INSERT INTO arcp_icl_languages_translations VALUES ('1740', 'ja', 'nb', 'Japansk');
INSERT INTO arcp_icl_languages_translations VALUES ('1741', 'ja', 'pa', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1742', 'ja', 'pl', 'japoński');
INSERT INTO arcp_icl_languages_translations VALUES ('1743', 'ja', 'pt-pt', 'Japonês');
INSERT INTO arcp_icl_languages_translations VALUES ('1744', 'ja', 'pt-br', 'Japonês');
INSERT INTO arcp_icl_languages_translations VALUES ('1745', 'ja', 'qu', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1746', 'ja', 'ro', 'Japoneză');
INSERT INTO arcp_icl_languages_translations VALUES ('1747', 'ja', 'ru', 'Японский');
INSERT INTO arcp_icl_languages_translations VALUES ('1748', 'ja', 'sl', 'Japonski');
INSERT INTO arcp_icl_languages_translations VALUES ('1749', 'ja', 'so', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1750', 'ja', 'sq', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1751', 'ja', 'sr', 'јапански');
INSERT INTO arcp_icl_languages_translations VALUES ('1752', 'ja', 'sv', 'Japanska');
INSERT INTO arcp_icl_languages_translations VALUES ('1753', 'ja', 'ta', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1754', 'ja', 'th', 'ญี่ปุ่น');
INSERT INTO arcp_icl_languages_translations VALUES ('1755', 'ja', 'tr', 'Japonca');
INSERT INTO arcp_icl_languages_translations VALUES ('1756', 'ja', 'uk', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1757', 'ja', 'ur', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1758', 'ja', 'uz', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1759', 'ja', 'vi', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1760', 'ja', 'yi', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1761', 'ja', 'zh-hans', '日语');
INSERT INTO arcp_icl_languages_translations VALUES ('1762', 'ja', 'zu', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1763', 'ja', 'zh-hant', '日語');
INSERT INTO arcp_icl_languages_translations VALUES ('1764', 'ja', 'ms', 'Japanese');
INSERT INTO arcp_icl_languages_translations VALUES ('1765', 'ko', 'en', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1766', 'ko', 'es', 'Coreano');
INSERT INTO arcp_icl_languages_translations VALUES ('1767', 'ko', 'de', 'Koreanisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1768', 'ko', 'fr', 'Coréen');
INSERT INTO arcp_icl_languages_translations VALUES ('1769', 'ko', 'ar', 'الكورية');
INSERT INTO arcp_icl_languages_translations VALUES ('1770', 'ko', 'bs', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1771', 'ko', 'bg', 'Корейски');
INSERT INTO arcp_icl_languages_translations VALUES ('1772', 'ko', 'ca', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1773', 'ko', 'cs', 'Korejský');
INSERT INTO arcp_icl_languages_translations VALUES ('1774', 'ko', 'sk', 'Kórejčina');
INSERT INTO arcp_icl_languages_translations VALUES ('1775', 'ko', 'cy', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1776', 'ko', 'da', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1777', 'ko', 'el', 'Κορεατικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1778', 'ko', 'eo', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1779', 'ko', 'et', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1780', 'ko', 'eu', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1781', 'ko', 'fa', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1782', 'ko', 'fi', 'korea');
INSERT INTO arcp_icl_languages_translations VALUES ('1783', 'ko', 'ga', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1784', 'ko', 'he', 'קוראנית');
INSERT INTO arcp_icl_languages_translations VALUES ('1785', 'ko', 'hi', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1786', 'ko', 'hr', 'Korejski');
INSERT INTO arcp_icl_languages_translations VALUES ('1787', 'ko', 'hu', 'koreai');
INSERT INTO arcp_icl_languages_translations VALUES ('1788', 'ko', 'hy', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1789', 'ko', 'id', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1790', 'ko', 'is', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1791', 'ko', 'it', 'Coreano');
INSERT INTO arcp_icl_languages_translations VALUES ('1792', 'ko', 'ja', '韓国語');
INSERT INTO arcp_icl_languages_translations VALUES ('1793', 'ko', 'ko', '한국어');
INSERT INTO arcp_icl_languages_translations VALUES ('1794', 'ko', 'ku', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1795', 'ko', 'la', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1796', 'ko', 'lv', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1797', 'ko', 'lt', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1798', 'ko', 'mk', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1799', 'ko', 'mt', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1800', 'ko', 'mn', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1801', 'ko', 'ne', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1802', 'ko', 'nl', 'Koreaans');
INSERT INTO arcp_icl_languages_translations VALUES ('1803', 'ko', 'nb', 'Koreanske');
INSERT INTO arcp_icl_languages_translations VALUES ('1804', 'ko', 'pa', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1805', 'ko', 'pl', 'koreański');
INSERT INTO arcp_icl_languages_translations VALUES ('1806', 'ko', 'pt-pt', 'Coreano');
INSERT INTO arcp_icl_languages_translations VALUES ('1807', 'ko', 'pt-br', 'Coreano');
INSERT INTO arcp_icl_languages_translations VALUES ('1808', 'ko', 'qu', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1809', 'ko', 'ro', 'Coreană');
INSERT INTO arcp_icl_languages_translations VALUES ('1810', 'ko', 'ru', 'Корейский');
INSERT INTO arcp_icl_languages_translations VALUES ('1811', 'ko', 'sl', 'Korejski');
INSERT INTO arcp_icl_languages_translations VALUES ('1812', 'ko', 'so', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1813', 'ko', 'sq', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1814', 'ko', 'sr', 'корејски');
INSERT INTO arcp_icl_languages_translations VALUES ('1815', 'ko', 'sv', 'Koreanska');
INSERT INTO arcp_icl_languages_translations VALUES ('1816', 'ko', 'ta', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1817', 'ko', 'th', 'เกาหลี');
INSERT INTO arcp_icl_languages_translations VALUES ('1818', 'ko', 'tr', 'Kore dili');
INSERT INTO arcp_icl_languages_translations VALUES ('1819', 'ko', 'uk', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1820', 'ko', 'ur', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1821', 'ko', 'uz', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1822', 'ko', 'vi', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1823', 'ko', 'yi', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1824', 'ko', 'zh-hans', '韩语');
INSERT INTO arcp_icl_languages_translations VALUES ('1825', 'ko', 'zu', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1826', 'ko', 'zh-hant', '韓語');
INSERT INTO arcp_icl_languages_translations VALUES ('1827', 'ko', 'ms', 'Korean');
INSERT INTO arcp_icl_languages_translations VALUES ('1828', 'ku', 'en', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1829', 'ku', 'es', 'Kurdo');
INSERT INTO arcp_icl_languages_translations VALUES ('1830', 'ku', 'de', 'Kurdisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1831', 'ku', 'fr', 'Kurde');
INSERT INTO arcp_icl_languages_translations VALUES ('1832', 'ku', 'ar', 'الكردية');
INSERT INTO arcp_icl_languages_translations VALUES ('1833', 'ku', 'bs', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1834', 'ku', 'bg', 'Кюрдски');
INSERT INTO arcp_icl_languages_translations VALUES ('1835', 'ku', 'ca', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1836', 'ku', 'cs', 'Kurdský');
INSERT INTO arcp_icl_languages_translations VALUES ('1837', 'ku', 'sk', 'Kurdština');
INSERT INTO arcp_icl_languages_translations VALUES ('1838', 'ku', 'cy', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1839', 'ku', 'da', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1840', 'ku', 'el', 'Κουρδικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1841', 'ku', 'eo', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1842', 'ku', 'et', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1843', 'ku', 'eu', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1844', 'ku', 'fa', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1845', 'ku', 'fi', 'kurdi');
INSERT INTO arcp_icl_languages_translations VALUES ('1846', 'ku', 'ga', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1847', 'ku', 'he', 'כורדית');
INSERT INTO arcp_icl_languages_translations VALUES ('1848', 'ku', 'hi', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1849', 'ku', 'hr', 'Kurdski');
INSERT INTO arcp_icl_languages_translations VALUES ('1850', 'ku', 'hu', 'kurd');
INSERT INTO arcp_icl_languages_translations VALUES ('1851', 'ku', 'hy', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1852', 'ku', 'id', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1853', 'ku', 'is', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1854', 'ku', 'it', 'Curdo');
INSERT INTO arcp_icl_languages_translations VALUES ('1855', 'ku', 'ja', 'クルド語');
INSERT INTO arcp_icl_languages_translations VALUES ('1856', 'ku', 'ko', '쿠르드어');
INSERT INTO arcp_icl_languages_translations VALUES ('1857', 'ku', 'ku', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1858', 'ku', 'la', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1859', 'ku', 'lv', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1860', 'ku', 'lt', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1861', 'ku', 'mk', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1862', 'ku', 'mt', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1863', 'ku', 'mn', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1864', 'ku', 'ne', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1865', 'ku', 'nl', 'Koerdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1866', 'ku', 'nb', 'Kurdisk');
INSERT INTO arcp_icl_languages_translations VALUES ('1867', 'ku', 'pa', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1868', 'ku', 'pl', 'kurdyjski');
INSERT INTO arcp_icl_languages_translations VALUES ('1869', 'ku', 'pt-pt', 'Curdo');
INSERT INTO arcp_icl_languages_translations VALUES ('1870', 'ku', 'pt-br', 'Curdo');
INSERT INTO arcp_icl_languages_translations VALUES ('1871', 'ku', 'qu', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1872', 'ku', 'ro', 'Kurdă');
INSERT INTO arcp_icl_languages_translations VALUES ('1873', 'ku', 'ru', 'Курдский');
INSERT INTO arcp_icl_languages_translations VALUES ('1874', 'ku', 'sl', 'Kurdščina');
INSERT INTO arcp_icl_languages_translations VALUES ('1875', 'ku', 'so', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1876', 'ku', 'sq', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1877', 'ku', 'sr', 'курдски');
INSERT INTO arcp_icl_languages_translations VALUES ('1878', 'ku', 'sv', 'Kurdiska');
INSERT INTO arcp_icl_languages_translations VALUES ('1879', 'ku', 'ta', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1880', 'ku', 'th', 'เคอร์ดิช');
INSERT INTO arcp_icl_languages_translations VALUES ('1881', 'ku', 'tr', 'Kürtçe');
INSERT INTO arcp_icl_languages_translations VALUES ('1882', 'ku', 'uk', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1883', 'ku', 'ur', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1884', 'ku', 'uz', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1885', 'ku', 'vi', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1886', 'ku', 'yi', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1887', 'ku', 'zh-hans', '库尔德语');
INSERT INTO arcp_icl_languages_translations VALUES ('1888', 'ku', 'zu', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1889', 'ku', 'zh-hant', '庫爾德語');
INSERT INTO arcp_icl_languages_translations VALUES ('1890', 'ku', 'ms', 'Kurdish');
INSERT INTO arcp_icl_languages_translations VALUES ('1891', 'la', 'en', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1892', 'la', 'es', 'Latín');
INSERT INTO arcp_icl_languages_translations VALUES ('1893', 'la', 'de', 'Latein');
INSERT INTO arcp_icl_languages_translations VALUES ('1894', 'la', 'fr', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1895', 'la', 'ar', 'اللاتينية');
INSERT INTO arcp_icl_languages_translations VALUES ('1896', 'la', 'bs', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1897', 'la', 'bg', 'Латински');
INSERT INTO arcp_icl_languages_translations VALUES ('1898', 'la', 'ca', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1899', 'la', 'cs', 'Latina');
INSERT INTO arcp_icl_languages_translations VALUES ('1900', 'la', 'sk', 'Latinčina');
INSERT INTO arcp_icl_languages_translations VALUES ('1901', 'la', 'cy', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1902', 'la', 'da', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1903', 'la', 'el', 'Λατινικη');
INSERT INTO arcp_icl_languages_translations VALUES ('1904', 'la', 'eo', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1905', 'la', 'et', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1906', 'la', 'eu', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1907', 'la', 'fa', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1908', 'la', 'fi', 'latina');
INSERT INTO arcp_icl_languages_translations VALUES ('1909', 'la', 'ga', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1910', 'la', 'he', 'לטינית');
INSERT INTO arcp_icl_languages_translations VALUES ('1911', 'la', 'hi', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1912', 'la', 'hr', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1913', 'la', 'hu', 'latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1914', 'la', 'hy', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1915', 'la', 'id', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1916', 'la', 'is', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1917', 'la', 'it', 'Latino');
INSERT INTO arcp_icl_languages_translations VALUES ('1918', 'la', 'ja', 'ラテン語');
INSERT INTO arcp_icl_languages_translations VALUES ('1919', 'la', 'ko', '라틴어');
INSERT INTO arcp_icl_languages_translations VALUES ('1920', 'la', 'ku', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1921', 'la', 'la', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1922', 'la', 'lv', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1923', 'la', 'lt', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1924', 'la', 'mk', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1925', 'la', 'mt', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1926', 'la', 'mn', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1927', 'la', 'ne', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1928', 'la', 'nl', 'Latijn');
INSERT INTO arcp_icl_languages_translations VALUES ('1929', 'la', 'nb', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1930', 'la', 'pa', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1931', 'la', 'pl', 'łaciński');
INSERT INTO arcp_icl_languages_translations VALUES ('1932', 'la', 'pt-pt', 'Latim');
INSERT INTO arcp_icl_languages_translations VALUES ('1933', 'la', 'pt-br', 'Latim');
INSERT INTO arcp_icl_languages_translations VALUES ('1934', 'la', 'qu', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1935', 'la', 'ro', 'Latină');
INSERT INTO arcp_icl_languages_translations VALUES ('1936', 'la', 'ru', 'Латинский');
INSERT INTO arcp_icl_languages_translations VALUES ('1937', 'la', 'sl', 'Latinščina');
INSERT INTO arcp_icl_languages_translations VALUES ('1938', 'la', 'so', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1939', 'la', 'sq', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1940', 'la', 'sr', 'латински');
INSERT INTO arcp_icl_languages_translations VALUES ('1941', 'la', 'sv', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1942', 'la', 'ta', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1943', 'la', 'th', 'ละติน');
INSERT INTO arcp_icl_languages_translations VALUES ('1944', 'la', 'tr', 'Latince');
INSERT INTO arcp_icl_languages_translations VALUES ('1945', 'la', 'uk', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1946', 'la', 'ur', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1947', 'la', 'uz', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1948', 'la', 'vi', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1949', 'la', 'yi', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1950', 'la', 'zh-hans', '拉丁语');
INSERT INTO arcp_icl_languages_translations VALUES ('1951', 'la', 'zu', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1952', 'la', 'zh-hant', '拉丁語');
INSERT INTO arcp_icl_languages_translations VALUES ('1953', 'la', 'ms', 'Latin');
INSERT INTO arcp_icl_languages_translations VALUES ('1954', 'lv', 'en', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1955', 'lv', 'es', 'Letón');
INSERT INTO arcp_icl_languages_translations VALUES ('1956', 'lv', 'de', 'Lettisch');
INSERT INTO arcp_icl_languages_translations VALUES ('1957', 'lv', 'fr', 'Letton');
INSERT INTO arcp_icl_languages_translations VALUES ('1958', 'lv', 'ar', 'اللاتفية');
INSERT INTO arcp_icl_languages_translations VALUES ('1959', 'lv', 'bs', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1960', 'lv', 'bg', 'Латвийски');
INSERT INTO arcp_icl_languages_translations VALUES ('1961', 'lv', 'ca', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1962', 'lv', 'cs', 'Lotyština');
INSERT INTO arcp_icl_languages_translations VALUES ('1963', 'lv', 'sk', 'Lotyština');
INSERT INTO arcp_icl_languages_translations VALUES ('1964', 'lv', 'cy', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1965', 'lv', 'da', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1966', 'lv', 'el', 'Λετονικα');
INSERT INTO arcp_icl_languages_translations VALUES ('1967', 'lv', 'eo', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1968', 'lv', 'et', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1969', 'lv', 'eu', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1970', 'lv', 'fa', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1971', 'lv', 'fi', 'latvia');
INSERT INTO arcp_icl_languages_translations VALUES ('1972', 'lv', 'ga', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1973', 'lv', 'he', 'לטבית');
INSERT INTO arcp_icl_languages_translations VALUES ('1974', 'lv', 'hi', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1975', 'lv', 'hr', 'Letonski');
INSERT INTO arcp_icl_languages_translations VALUES ('1976', 'lv', 'hu', 'lett');
INSERT INTO arcp_icl_languages_translations VALUES ('1977', 'lv', 'hy', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1978', 'lv', 'id', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1979', 'lv', 'is', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1980', 'lv', 'it', 'Lettone');
INSERT INTO arcp_icl_languages_translations VALUES ('1981', 'lv', 'ja', 'ラトビア語');
INSERT INTO arcp_icl_languages_translations VALUES ('1982', 'lv', 'ko', '라트비아어');
INSERT INTO arcp_icl_languages_translations VALUES ('1983', 'lv', 'ku', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1984', 'lv', 'la', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1985', 'lv', 'lv', 'Latviešu');
INSERT INTO arcp_icl_languages_translations VALUES ('1986', 'lv', 'lt', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1987', 'lv', 'mk', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1988', 'lv', 'mt', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1989', 'lv', 'mn', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1990', 'lv', 'ne', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1991', 'lv', 'nl', 'Lets');
INSERT INTO arcp_icl_languages_translations VALUES ('1992', 'lv', 'nb', 'Latvisk');
INSERT INTO arcp_icl_languages_translations VALUES ('1993', 'lv', 'pa', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1994', 'lv', 'pl', 'łotewski');
INSERT INTO arcp_icl_languages_translations VALUES ('1995', 'lv', 'pt-pt', 'Letão');
INSERT INTO arcp_icl_languages_translations VALUES ('1996', 'lv', 'pt-br', 'Letão');
INSERT INTO arcp_icl_languages_translations VALUES ('1997', 'lv', 'qu', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('1998', 'lv', 'ro', 'Letoniană');
INSERT INTO arcp_icl_languages_translations VALUES ('1999', 'lv', 'ru', 'латышский');
INSERT INTO arcp_icl_languages_translations VALUES ('2000', 'lv', 'sl', 'Latvijščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2001', 'lv', 'so', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2002', 'lv', 'sq', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2003', 'lv', 'sr', 'летонски');
INSERT INTO arcp_icl_languages_translations VALUES ('2004', 'lv', 'sv', 'Lettiska');
INSERT INTO arcp_icl_languages_translations VALUES ('2005', 'lv', 'ta', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2006', 'lv', 'th', 'ลัตเวีย');
INSERT INTO arcp_icl_languages_translations VALUES ('2007', 'lv', 'tr', 'Letonca');
INSERT INTO arcp_icl_languages_translations VALUES ('2008', 'lv', 'uk', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2009', 'lv', 'ur', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2010', 'lv', 'uz', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2011', 'lv', 'vi', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2012', 'lv', 'yi', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2013', 'lv', 'zh-hans', '拉脱维亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('2014', 'lv', 'zu', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2015', 'lv', 'zh-hant', '拉脫維亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('2016', 'lv', 'ms', 'Latvian');
INSERT INTO arcp_icl_languages_translations VALUES ('2017', 'lt', 'en', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2018', 'lt', 'es', 'Lituano');
INSERT INTO arcp_icl_languages_translations VALUES ('2019', 'lt', 'de', 'Litauisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2020', 'lt', 'fr', 'Lituanien');
INSERT INTO arcp_icl_languages_translations VALUES ('2021', 'lt', 'ar', 'اللتوانية');
INSERT INTO arcp_icl_languages_translations VALUES ('2022', 'lt', 'bs', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2023', 'lt', 'bg', 'Литовски');
INSERT INTO arcp_icl_languages_translations VALUES ('2024', 'lt', 'ca', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2025', 'lt', 'cs', 'litevský');
INSERT INTO arcp_icl_languages_translations VALUES ('2026', 'lt', 'sk', 'Litovčina');
INSERT INTO arcp_icl_languages_translations VALUES ('2027', 'lt', 'cy', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2028', 'lt', 'da', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2029', 'lt', 'el', 'Λιθουανικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2030', 'lt', 'eo', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2031', 'lt', 'et', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2032', 'lt', 'eu', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2033', 'lt', 'fa', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2034', 'lt', 'fi', 'liettua');
INSERT INTO arcp_icl_languages_translations VALUES ('2035', 'lt', 'ga', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2036', 'lt', 'he', 'ליטאית');
INSERT INTO arcp_icl_languages_translations VALUES ('2037', 'lt', 'hi', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2038', 'lt', 'hr', 'Litvanski');
INSERT INTO arcp_icl_languages_translations VALUES ('2039', 'lt', 'hu', 'litván');
INSERT INTO arcp_icl_languages_translations VALUES ('2040', 'lt', 'hy', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2041', 'lt', 'id', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2042', 'lt', 'is', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2043', 'lt', 'it', 'Lituano');
INSERT INTO arcp_icl_languages_translations VALUES ('2044', 'lt', 'ja', 'リトアニア語');
INSERT INTO arcp_icl_languages_translations VALUES ('2045', 'lt', 'ko', '리투아니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('2046', 'lt', 'ku', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2047', 'lt', 'la', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2048', 'lt', 'lv', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2049', 'lt', 'lt', 'Lietuvos');
INSERT INTO arcp_icl_languages_translations VALUES ('2050', 'lt', 'mk', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2051', 'lt', 'mt', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2052', 'lt', 'mn', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2053', 'lt', 'ne', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2054', 'lt', 'nl', 'Litouws');
INSERT INTO arcp_icl_languages_translations VALUES ('2055', 'lt', 'nb', 'Litauisk');
INSERT INTO arcp_icl_languages_translations VALUES ('2056', 'lt', 'pa', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2057', 'lt', 'pl', 'litewski');
INSERT INTO arcp_icl_languages_translations VALUES ('2058', 'lt', 'pt-pt', 'Lituano');
INSERT INTO arcp_icl_languages_translations VALUES ('2059', 'lt', 'pt-br', 'Lituano');
INSERT INTO arcp_icl_languages_translations VALUES ('2060', 'lt', 'qu', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2061', 'lt', 'ro', 'Lituaniană');
INSERT INTO arcp_icl_languages_translations VALUES ('2062', 'lt', 'ru', 'Литовский');
INSERT INTO arcp_icl_languages_translations VALUES ('2063', 'lt', 'sl', 'Litovščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2064', 'lt', 'so', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2065', 'lt', 'sq', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2066', 'lt', 'sr', 'литвански');
INSERT INTO arcp_icl_languages_translations VALUES ('2067', 'lt', 'sv', 'Litauiska');
INSERT INTO arcp_icl_languages_translations VALUES ('2068', 'lt', 'ta', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2069', 'lt', 'th', 'ลิธัวเนีย');
INSERT INTO arcp_icl_languages_translations VALUES ('2070', 'lt', 'tr', 'Litvanyaca');
INSERT INTO arcp_icl_languages_translations VALUES ('2071', 'lt', 'uk', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2072', 'lt', 'ur', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2073', 'lt', 'uz', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2074', 'lt', 'vi', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2075', 'lt', 'yi', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2076', 'lt', 'zh-hans', '立陶宛语');
INSERT INTO arcp_icl_languages_translations VALUES ('2077', 'lt', 'zu', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2078', 'lt', 'zh-hant', '立陶宛語');
INSERT INTO arcp_icl_languages_translations VALUES ('2079', 'lt', 'ms', 'Lithuanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2080', 'mk', 'en', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2081', 'mk', 'es', 'Macedonio');
INSERT INTO arcp_icl_languages_translations VALUES ('2082', 'mk', 'de', 'Mazedonisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2083', 'mk', 'fr', 'Macédonien');
INSERT INTO arcp_icl_languages_translations VALUES ('2084', 'mk', 'ar', 'المقدونية');
INSERT INTO arcp_icl_languages_translations VALUES ('2085', 'mk', 'bs', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2086', 'mk', 'bg', 'Македонски');
INSERT INTO arcp_icl_languages_translations VALUES ('2087', 'mk', 'ca', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2088', 'mk', 'cs', 'Makedonský');
INSERT INTO arcp_icl_languages_translations VALUES ('2089', 'mk', 'sk', 'Macedónština');
INSERT INTO arcp_icl_languages_translations VALUES ('2090', 'mk', 'cy', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2091', 'mk', 'da', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2092', 'mk', 'el', 'Μακεδονικο');
INSERT INTO arcp_icl_languages_translations VALUES ('2093', 'mk', 'eo', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2094', 'mk', 'et', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2095', 'mk', 'eu', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2096', 'mk', 'fa', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2097', 'mk', 'fi', 'makedonia');
INSERT INTO arcp_icl_languages_translations VALUES ('2098', 'mk', 'ga', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2099', 'mk', 'he', 'מקדונית');
INSERT INTO arcp_icl_languages_translations VALUES ('2100', 'mk', 'hi', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2101', 'mk', 'hr', 'Makedonski');
INSERT INTO arcp_icl_languages_translations VALUES ('2102', 'mk', 'hu', 'macedón');
INSERT INTO arcp_icl_languages_translations VALUES ('2103', 'mk', 'hy', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2104', 'mk', 'id', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2105', 'mk', 'is', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2106', 'mk', 'it', 'Macedone');
INSERT INTO arcp_icl_languages_translations VALUES ('2107', 'mk', 'ja', 'マケドニア語');
INSERT INTO arcp_icl_languages_translations VALUES ('2108', 'mk', 'ko', '마케도니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('2109', 'mk', 'ku', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2110', 'mk', 'la', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2111', 'mk', 'lv', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2112', 'mk', 'lt', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2113', 'mk', 'mk', 'македонски');
INSERT INTO arcp_icl_languages_translations VALUES ('2114', 'mk', 'mt', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2115', 'mk', 'mn', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2116', 'mk', 'ne', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2117', 'mk', 'nl', 'Macedonisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2118', 'mk', 'nb', 'Makedonsk');
INSERT INTO arcp_icl_languages_translations VALUES ('2119', 'mk', 'pa', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2120', 'mk', 'pl', 'macedoński');
INSERT INTO arcp_icl_languages_translations VALUES ('2121', 'mk', 'pt-pt', 'Macedônio');
INSERT INTO arcp_icl_languages_translations VALUES ('2122', 'mk', 'pt-br', 'Macedônio');
INSERT INTO arcp_icl_languages_translations VALUES ('2123', 'mk', 'qu', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2124', 'mk', 'ro', 'Macedoniană');
INSERT INTO arcp_icl_languages_translations VALUES ('2125', 'mk', 'ru', 'Македонский');
INSERT INTO arcp_icl_languages_translations VALUES ('2126', 'mk', 'sl', 'Makedonski');
INSERT INTO arcp_icl_languages_translations VALUES ('2127', 'mk', 'so', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2128', 'mk', 'sq', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2129', 'mk', 'sr', 'македонски');
INSERT INTO arcp_icl_languages_translations VALUES ('2130', 'mk', 'sv', 'Makedonska');
INSERT INTO arcp_icl_languages_translations VALUES ('2131', 'mk', 'ta', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2132', 'mk', 'th', 'มาซิโดเนีย');
INSERT INTO arcp_icl_languages_translations VALUES ('2133', 'mk', 'tr', 'Makedonyaca');
INSERT INTO arcp_icl_languages_translations VALUES ('2134', 'mk', 'uk', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2135', 'mk', 'ur', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2136', 'mk', 'uz', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2137', 'mk', 'vi', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2138', 'mk', 'yi', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2139', 'mk', 'zh-hans', '马其顿语');
INSERT INTO arcp_icl_languages_translations VALUES ('2140', 'mk', 'zu', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2141', 'mk', 'zh-hant', '馬其頓語');
INSERT INTO arcp_icl_languages_translations VALUES ('2142', 'mk', 'ms', 'Macedonian');
INSERT INTO arcp_icl_languages_translations VALUES ('2143', 'mt', 'en', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2144', 'mt', 'es', 'Maltés');
INSERT INTO arcp_icl_languages_translations VALUES ('2145', 'mt', 'de', 'Maltesisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2146', 'mt', 'fr', 'Maltais');
INSERT INTO arcp_icl_languages_translations VALUES ('2147', 'mt', 'ar', 'المالطية');
INSERT INTO arcp_icl_languages_translations VALUES ('2148', 'mt', 'bs', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2149', 'mt', 'bg', 'Малтийски');
INSERT INTO arcp_icl_languages_translations VALUES ('2150', 'mt', 'ca', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2151', 'mt', 'cs', 'Maltština');
INSERT INTO arcp_icl_languages_translations VALUES ('2152', 'mt', 'sk', 'Maltézština');
INSERT INTO arcp_icl_languages_translations VALUES ('2153', 'mt', 'cy', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2154', 'mt', 'da', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2155', 'mt', 'el', 'Μαλτεζικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2156', 'mt', 'eo', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2157', 'mt', 'et', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2158', 'mt', 'eu', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2159', 'mt', 'fa', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2160', 'mt', 'fi', 'malta');
INSERT INTO arcp_icl_languages_translations VALUES ('2161', 'mt', 'ga', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2162', 'mt', 'he', 'מלטזית');
INSERT INTO arcp_icl_languages_translations VALUES ('2163', 'mt', 'hi', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2164', 'mt', 'hr', 'Malteški');
INSERT INTO arcp_icl_languages_translations VALUES ('2165', 'mt', 'hu', 'máltai');
INSERT INTO arcp_icl_languages_translations VALUES ('2166', 'mt', 'hy', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2167', 'mt', 'id', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2168', 'mt', 'is', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2169', 'mt', 'it', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2170', 'mt', 'ja', 'マルタ語');
INSERT INTO arcp_icl_languages_translations VALUES ('2171', 'mt', 'ko', '몰타어');
INSERT INTO arcp_icl_languages_translations VALUES ('2172', 'mt', 'ku', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2173', 'mt', 'la', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2174', 'mt', 'lv', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2175', 'mt', 'lt', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2176', 'mt', 'mk', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2177', 'mt', 'mt', 'Malti');
INSERT INTO arcp_icl_languages_translations VALUES ('2178', 'mt', 'mn', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2179', 'mt', 'ne', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2180', 'mt', 'nl', 'Maltees');
INSERT INTO arcp_icl_languages_translations VALUES ('2181', 'mt', 'nb', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2182', 'mt', 'pa', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2183', 'mt', 'pl', 'maltański');
INSERT INTO arcp_icl_languages_translations VALUES ('2184', 'mt', 'pt-pt', 'Maltês');
INSERT INTO arcp_icl_languages_translations VALUES ('2185', 'mt', 'pt-br', 'Maltês');
INSERT INTO arcp_icl_languages_translations VALUES ('2186', 'mt', 'qu', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2187', 'mt', 'ro', 'Malteză');
INSERT INTO arcp_icl_languages_translations VALUES ('2188', 'mt', 'ru', 'Мальтийский');
INSERT INTO arcp_icl_languages_translations VALUES ('2189', 'mt', 'sl', 'Malteški');
INSERT INTO arcp_icl_languages_translations VALUES ('2190', 'mt', 'so', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2191', 'mt', 'sq', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2192', 'mt', 'sr', 'малтешки');
INSERT INTO arcp_icl_languages_translations VALUES ('2193', 'mt', 'sv', 'Maltesiska');
INSERT INTO arcp_icl_languages_translations VALUES ('2194', 'mt', 'ta', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2195', 'mt', 'th', 'มอลทีส');
INSERT INTO arcp_icl_languages_translations VALUES ('2196', 'mt', 'tr', 'Malta dili');
INSERT INTO arcp_icl_languages_translations VALUES ('2197', 'mt', 'uk', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2198', 'mt', 'ur', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2199', 'mt', 'uz', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2200', 'mt', 'vi', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2201', 'mt', 'yi', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2202', 'mt', 'zh-hans', '马耳他语');
INSERT INTO arcp_icl_languages_translations VALUES ('2203', 'mt', 'zu', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2204', 'mt', 'zh-hant', '馬爾他語');
INSERT INTO arcp_icl_languages_translations VALUES ('2205', 'mt', 'ms', 'Maltese');
INSERT INTO arcp_icl_languages_translations VALUES ('2206', 'mn', 'en', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2207', 'mn', 'es', 'Mongol');
INSERT INTO arcp_icl_languages_translations VALUES ('2208', 'mn', 'de', 'Mongolisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2209', 'mn', 'fr', 'Mongol');
INSERT INTO arcp_icl_languages_translations VALUES ('2210', 'mn', 'ar', 'المنغولية');
INSERT INTO arcp_icl_languages_translations VALUES ('2211', 'mn', 'bs', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2212', 'mn', 'bg', 'Монголски');
INSERT INTO arcp_icl_languages_translations VALUES ('2213', 'mn', 'ca', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2214', 'mn', 'cs', 'Mongolský');
INSERT INTO arcp_icl_languages_translations VALUES ('2215', 'mn', 'sk', 'Mongolština');
INSERT INTO arcp_icl_languages_translations VALUES ('2216', 'mn', 'cy', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2217', 'mn', 'da', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2218', 'mn', 'el', 'Μογγολικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2219', 'mn', 'eo', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2220', 'mn', 'et', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2221', 'mn', 'eu', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2222', 'mn', 'fa', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2223', 'mn', 'fi', 'mongoli');
INSERT INTO arcp_icl_languages_translations VALUES ('2224', 'mn', 'ga', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2225', 'mn', 'he', 'מונגולית');
INSERT INTO arcp_icl_languages_translations VALUES ('2226', 'mn', 'hi', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2227', 'mn', 'hr', 'Mongolski');
INSERT INTO arcp_icl_languages_translations VALUES ('2228', 'mn', 'hu', 'mongol');
INSERT INTO arcp_icl_languages_translations VALUES ('2229', 'mn', 'hy', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2230', 'mn', 'id', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2231', 'mn', 'is', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2232', 'mn', 'it', 'Mongolo');
INSERT INTO arcp_icl_languages_translations VALUES ('2233', 'mn', 'ja', 'モンゴル語');
INSERT INTO arcp_icl_languages_translations VALUES ('2234', 'mn', 'ko', '몽골어');
INSERT INTO arcp_icl_languages_translations VALUES ('2235', 'mn', 'ku', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2236', 'mn', 'la', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2237', 'mn', 'lv', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2238', 'mn', 'lt', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2239', 'mn', 'mk', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2240', 'mn', 'mt', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2241', 'mn', 'mn', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2242', 'mn', 'ne', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2243', 'mn', 'nl', 'Mongools');
INSERT INTO arcp_icl_languages_translations VALUES ('2244', 'mn', 'nb', 'Mongolsk');
INSERT INTO arcp_icl_languages_translations VALUES ('2245', 'mn', 'pa', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2246', 'mn', 'pl', 'mongolski');
INSERT INTO arcp_icl_languages_translations VALUES ('2247', 'mn', 'pt-pt', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2248', 'mn', 'pt-br', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2249', 'mn', 'qu', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2250', 'mn', 'ro', 'Mongoleză');
INSERT INTO arcp_icl_languages_translations VALUES ('2251', 'mn', 'ru', 'Монгольский');
INSERT INTO arcp_icl_languages_translations VALUES ('2252', 'mn', 'sl', 'Mongolski');
INSERT INTO arcp_icl_languages_translations VALUES ('2253', 'mn', 'so', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2254', 'mn', 'sq', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2255', 'mn', 'sr', 'монголски');
INSERT INTO arcp_icl_languages_translations VALUES ('2256', 'mn', 'sv', 'Mongoliska');
INSERT INTO arcp_icl_languages_translations VALUES ('2257', 'mn', 'ta', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2258', 'mn', 'th', 'มองโกเลีย');
INSERT INTO arcp_icl_languages_translations VALUES ('2259', 'mn', 'tr', 'Mongolca');
INSERT INTO arcp_icl_languages_translations VALUES ('2260', 'mn', 'uk', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2261', 'mn', 'ur', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2262', 'mn', 'uz', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2263', 'mn', 'vi', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2264', 'mn', 'yi', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2265', 'mn', 'zh-hans', '蒙古语');
INSERT INTO arcp_icl_languages_translations VALUES ('2266', 'mn', 'zu', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2267', 'mn', 'zh-hant', '蒙古語');
INSERT INTO arcp_icl_languages_translations VALUES ('2268', 'mn', 'ms', 'Mongolian');
INSERT INTO arcp_icl_languages_translations VALUES ('2269', 'ne', 'en', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2270', 'ne', 'es', 'Nepalí');
INSERT INTO arcp_icl_languages_translations VALUES ('2271', 'ne', 'de', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2272', 'ne', 'fr', 'Népalais');
INSERT INTO arcp_icl_languages_translations VALUES ('2273', 'ne', 'ar', 'النيبالية');
INSERT INTO arcp_icl_languages_translations VALUES ('2274', 'ne', 'bs', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2275', 'ne', 'bg', 'Непалски');
INSERT INTO arcp_icl_languages_translations VALUES ('2276', 'ne', 'ca', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2277', 'ne', 'cs', 'Nepálský');
INSERT INTO arcp_icl_languages_translations VALUES ('2278', 'ne', 'sk', 'Nepálčina');
INSERT INTO arcp_icl_languages_translations VALUES ('2279', 'ne', 'cy', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2280', 'ne', 'da', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2281', 'ne', 'el', 'Νεπαλι');
INSERT INTO arcp_icl_languages_translations VALUES ('2282', 'ne', 'eo', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2283', 'ne', 'et', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2284', 'ne', 'eu', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2285', 'ne', 'fa', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2286', 'ne', 'fi', 'nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2287', 'ne', 'ga', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2288', 'ne', 'he', 'נפאלית');
INSERT INTO arcp_icl_languages_translations VALUES ('2289', 'ne', 'hi', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2290', 'ne', 'hr', 'Nepalski');
INSERT INTO arcp_icl_languages_translations VALUES ('2291', 'ne', 'hu', 'nepáli');
INSERT INTO arcp_icl_languages_translations VALUES ('2292', 'ne', 'hy', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2293', 'ne', 'id', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2294', 'ne', 'is', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2295', 'ne', 'it', 'Nepalese');
INSERT INTO arcp_icl_languages_translations VALUES ('2296', 'ne', 'ja', 'ネパール語');
INSERT INTO arcp_icl_languages_translations VALUES ('2297', 'ne', 'ko', '네팔어');
INSERT INTO arcp_icl_languages_translations VALUES ('2298', 'ne', 'ku', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2299', 'ne', 'la', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2300', 'ne', 'lv', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2301', 'ne', 'lt', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2302', 'ne', 'mk', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2303', 'ne', 'mt', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2304', 'ne', 'mn', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2305', 'ne', 'ne', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2306', 'ne', 'nl', 'Nepalees');
INSERT INTO arcp_icl_languages_translations VALUES ('2307', 'ne', 'nb', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2308', 'ne', 'pa', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2309', 'ne', 'pl', 'nepalski');
INSERT INTO arcp_icl_languages_translations VALUES ('2310', 'ne', 'pt-pt', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2311', 'ne', 'pt-br', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2312', 'ne', 'qu', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2313', 'ne', 'ro', 'Nepaleză');
INSERT INTO arcp_icl_languages_translations VALUES ('2314', 'ne', 'ru', 'Непальский');
INSERT INTO arcp_icl_languages_translations VALUES ('2315', 'ne', 'sl', 'Nepalščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2316', 'ne', 'so', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2317', 'ne', 'sq', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2318', 'ne', 'sr', 'непалски');
INSERT INTO arcp_icl_languages_translations VALUES ('2319', 'ne', 'sv', 'Nepalesiska');
INSERT INTO arcp_icl_languages_translations VALUES ('2320', 'ne', 'ta', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2321', 'ne', 'th', 'เนปาล');
INSERT INTO arcp_icl_languages_translations VALUES ('2322', 'ne', 'tr', 'Nepal dili');
INSERT INTO arcp_icl_languages_translations VALUES ('2323', 'ne', 'uk', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2324', 'ne', 'ur', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2325', 'ne', 'uz', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2326', 'ne', 'vi', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2327', 'ne', 'yi', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2328', 'ne', 'zh-hans', '尼泊尔语');
INSERT INTO arcp_icl_languages_translations VALUES ('2329', 'ne', 'zu', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2330', 'ne', 'zh-hant', '尼泊爾語');
INSERT INTO arcp_icl_languages_translations VALUES ('2331', 'ne', 'ms', 'Nepali');
INSERT INTO arcp_icl_languages_translations VALUES ('2332', 'nl', 'en', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2333', 'nl', 'es', 'Holandés');
INSERT INTO arcp_icl_languages_translations VALUES ('2334', 'nl', 'de', 'Niederländisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2335', 'nl', 'fr', 'Néerlandais');
INSERT INTO arcp_icl_languages_translations VALUES ('2336', 'nl', 'ar', 'الهولندية');
INSERT INTO arcp_icl_languages_translations VALUES ('2337', 'nl', 'bs', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2338', 'nl', 'bg', 'Холандски');
INSERT INTO arcp_icl_languages_translations VALUES ('2339', 'nl', 'ca', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2340', 'nl', 'cs', 'Holandský');
INSERT INTO arcp_icl_languages_translations VALUES ('2341', 'nl', 'sk', 'Holandčina');
INSERT INTO arcp_icl_languages_translations VALUES ('2342', 'nl', 'cy', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2343', 'nl', 'da', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2344', 'nl', 'el', 'Ολλανδικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2345', 'nl', 'eo', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2346', 'nl', 'et', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2347', 'nl', 'eu', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2348', 'nl', 'fa', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2349', 'nl', 'fi', 'hollanti');
INSERT INTO arcp_icl_languages_translations VALUES ('2350', 'nl', 'ga', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2351', 'nl', 'he', 'הולנדית');
INSERT INTO arcp_icl_languages_translations VALUES ('2352', 'nl', 'hi', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2353', 'nl', 'hr', 'Holandski');
INSERT INTO arcp_icl_languages_translations VALUES ('2354', 'nl', 'hu', 'holland');
INSERT INTO arcp_icl_languages_translations VALUES ('2355', 'nl', 'hy', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2356', 'nl', 'id', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2357', 'nl', 'is', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2358', 'nl', 'it', 'Olandese');
INSERT INTO arcp_icl_languages_translations VALUES ('2359', 'nl', 'ja', 'オランダ語');
INSERT INTO arcp_icl_languages_translations VALUES ('2360', 'nl', 'ko', '화란어');
INSERT INTO arcp_icl_languages_translations VALUES ('2361', 'nl', 'ku', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2362', 'nl', 'la', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2363', 'nl', 'lv', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2364', 'nl', 'lt', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2365', 'nl', 'mk', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2366', 'nl', 'mt', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2367', 'nl', 'mn', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2368', 'nl', 'ne', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2369', 'nl', 'nl', 'Nederlands');
INSERT INTO arcp_icl_languages_translations VALUES ('2370', 'nl', 'nb', 'Nederlandsk');
INSERT INTO arcp_icl_languages_translations VALUES ('2371', 'nl', 'pa', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2372', 'nl', 'pl', 'holenderski');
INSERT INTO arcp_icl_languages_translations VALUES ('2373', 'nl', 'pt-pt', 'Holandês');
INSERT INTO arcp_icl_languages_translations VALUES ('2374', 'nl', 'pt-br', 'Holandês');
INSERT INTO arcp_icl_languages_translations VALUES ('2375', 'nl', 'qu', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2376', 'nl', 'ro', 'Olaneză');
INSERT INTO arcp_icl_languages_translations VALUES ('2377', 'nl', 'ru', 'Голландский');
INSERT INTO arcp_icl_languages_translations VALUES ('2378', 'nl', 'sl', 'Nizozemščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2379', 'nl', 'so', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2380', 'nl', 'sq', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2381', 'nl', 'sr', 'холандски');
INSERT INTO arcp_icl_languages_translations VALUES ('2382', 'nl', 'sv', 'Nederländska');
INSERT INTO arcp_icl_languages_translations VALUES ('2383', 'nl', 'ta', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2384', 'nl', 'th', 'ดัตช์');
INSERT INTO arcp_icl_languages_translations VALUES ('2385', 'nl', 'tr', 'Hollandaca');
INSERT INTO arcp_icl_languages_translations VALUES ('2386', 'nl', 'uk', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2387', 'nl', 'ur', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2388', 'nl', 'uz', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2389', 'nl', 'vi', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2390', 'nl', 'yi', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2391', 'nl', 'zh-hans', '荷兰语');
INSERT INTO arcp_icl_languages_translations VALUES ('2392', 'nl', 'zu', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2393', 'nl', 'zh-hant', '荷蘭語');
INSERT INTO arcp_icl_languages_translations VALUES ('2394', 'nl', 'ms', 'Dutch');
INSERT INTO arcp_icl_languages_translations VALUES ('2395', 'nb', 'en', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2396', 'nb', 'es', 'Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2397', 'nb', 'de', 'Norwegisch (Buchsprache)');
INSERT INTO arcp_icl_languages_translations VALUES ('2398', 'nb', 'fr', 'Norvégien Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2399', 'nb', 'ar', 'البوكمالية النرويجية');
INSERT INTO arcp_icl_languages_translations VALUES ('2400', 'nb', 'bs', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2401', 'nb', 'bg', 'Норвежки книжовен');
INSERT INTO arcp_icl_languages_translations VALUES ('2402', 'nb', 'ca', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2403', 'nb', 'cs', 'Norwegian bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2404', 'nb', 'sk', 'Nórsky jazyk Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2405', 'nb', 'cy', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2406', 'nb', 'da', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2407', 'nb', 'el', 'Νορβηγικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2408', 'nb', 'eo', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2409', 'nb', 'et', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2410', 'nb', 'eu', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2411', 'nb', 'fa', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2412', 'nb', 'fi', 'kirjanorja');
INSERT INTO arcp_icl_languages_translations VALUES ('2413', 'nb', 'ga', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2414', 'nb', 'he', 'נורווגית');
INSERT INTO arcp_icl_languages_translations VALUES ('2415', 'nb', 'hi', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2416', 'nb', 'hr', 'Književni norveški');
INSERT INTO arcp_icl_languages_translations VALUES ('2417', 'nb', 'hu', 'norvég bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2418', 'nb', 'hy', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2419', 'nb', 'id', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2420', 'nb', 'is', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2421', 'nb', 'it', 'Norvegese Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2422', 'nb', 'ja', 'ノルウェー・ブークモール');
INSERT INTO arcp_icl_languages_translations VALUES ('2423', 'nb', 'ko', '노르웨이 보크말어');
INSERT INTO arcp_icl_languages_translations VALUES ('2424', 'nb', 'ku', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2425', 'nb', 'la', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2426', 'nb', 'lv', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2427', 'nb', 'lt', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2428', 'nb', 'mk', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2429', 'nb', 'mt', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2430', 'nb', 'mn', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2431', 'nb', 'ne', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2432', 'nb', 'nl', 'Noors Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2433', 'nb', 'nb', 'Norsk bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2434', 'nb', 'pa', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2435', 'nb', 'pl', 'norweski bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2436', 'nb', 'pt-pt', 'Norueguês');
INSERT INTO arcp_icl_languages_translations VALUES ('2437', 'nb', 'pt-br', 'Norueguês');
INSERT INTO arcp_icl_languages_translations VALUES ('2438', 'nb', 'qu', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2439', 'nb', 'ro', 'Bokmål (norvegiană)');
INSERT INTO arcp_icl_languages_translations VALUES ('2440', 'nb', 'ru', 'Норвежский букмол');
INSERT INTO arcp_icl_languages_translations VALUES ('2441', 'nb', 'sl', 'Knjižna norveščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2442', 'nb', 'so', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2443', 'nb', 'sq', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2444', 'nb', 'sr', 'Норвешки бокмал');
INSERT INTO arcp_icl_languages_translations VALUES ('2445', 'nb', 'sv', 'Norskt Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2446', 'nb', 'ta', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2447', 'nb', 'th', 'นอร์วิเจียนบอกมาล');
INSERT INTO arcp_icl_languages_translations VALUES ('2448', 'nb', 'tr', 'Bokmal Norveç dili');
INSERT INTO arcp_icl_languages_translations VALUES ('2449', 'nb', 'uk', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2450', 'nb', 'ur', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2451', 'nb', 'uz', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2452', 'nb', 'vi', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2453', 'nb', 'yi', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2454', 'nb', 'zh-hans', '挪威布克莫尔语');
INSERT INTO arcp_icl_languages_translations VALUES ('2455', 'nb', 'zu', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2456', 'nb', 'zh-hant', '挪威布克莫爾語');
INSERT INTO arcp_icl_languages_translations VALUES ('2457', 'nb', 'ms', 'Norwegian Bokmål');
INSERT INTO arcp_icl_languages_translations VALUES ('2458', 'pa', 'en', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2459', 'pa', 'es', 'Panyabí');
INSERT INTO arcp_icl_languages_translations VALUES ('2460', 'pa', 'de', 'Pandschabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2461', 'pa', 'fr', 'Panjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2462', 'pa', 'ar', 'البنجابية');
INSERT INTO arcp_icl_languages_translations VALUES ('2463', 'pa', 'bs', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2464', 'pa', 'bg', 'Панджабски');
INSERT INTO arcp_icl_languages_translations VALUES ('2465', 'pa', 'ca', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2466', 'pa', 'cs', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2467', 'pa', 'sk', 'Pandžábčina');
INSERT INTO arcp_icl_languages_translations VALUES ('2468', 'pa', 'cy', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2469', 'pa', 'da', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2470', 'pa', 'el', 'Panjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2471', 'pa', 'eo', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2472', 'pa', 'et', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2473', 'pa', 'eu', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2474', 'pa', 'fa', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2475', 'pa', 'fi', 'pandzabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2476', 'pa', 'ga', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2477', 'pa', 'he', 'פנג\'אבית');
INSERT INTO arcp_icl_languages_translations VALUES ('2478', 'pa', 'hi', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2479', 'pa', 'hr', 'Pendžabljanin');
INSERT INTO arcp_icl_languages_translations VALUES ('2480', 'pa', 'hu', 'pandzsábi');
INSERT INTO arcp_icl_languages_translations VALUES ('2481', 'pa', 'hy', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2482', 'pa', 'id', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2483', 'pa', 'is', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2484', 'pa', 'it', 'Panjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2485', 'pa', 'ja', 'パンジャーブ語');
INSERT INTO arcp_icl_languages_translations VALUES ('2486', 'pa', 'ko', '펀자브어');
INSERT INTO arcp_icl_languages_translations VALUES ('2487', 'pa', 'ku', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2488', 'pa', 'la', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2489', 'pa', 'lv', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2490', 'pa', 'lt', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2491', 'pa', 'mk', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2492', 'pa', 'mt', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2493', 'pa', 'mn', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2494', 'pa', 'ne', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2495', 'pa', 'nl', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2496', 'pa', 'nb', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2497', 'pa', 'pa', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2498', 'pa', 'pl', 'pendżabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2499', 'pa', 'pt-pt', 'Panjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2500', 'pa', 'pt-br', 'Panjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2501', 'pa', 'qu', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2502', 'pa', 'ro', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2503', 'pa', 'ru', 'Панджаби');
INSERT INTO arcp_icl_languages_translations VALUES ('2504', 'pa', 'sl', 'Pandžabščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2505', 'pa', 'so', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2506', 'pa', 'sq', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2507', 'pa', 'sr', 'панџаби');
INSERT INTO arcp_icl_languages_translations VALUES ('2508', 'pa', 'sv', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2509', 'pa', 'ta', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2510', 'pa', 'th', 'ปัญจาบ');
INSERT INTO arcp_icl_languages_translations VALUES ('2511', 'pa', 'tr', 'Pencapça');
INSERT INTO arcp_icl_languages_translations VALUES ('2512', 'pa', 'uk', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2513', 'pa', 'ur', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2514', 'pa', 'uz', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2515', 'pa', 'vi', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2516', 'pa', 'yi', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2517', 'pa', 'zh-hans', '旁遮普语');
INSERT INTO arcp_icl_languages_translations VALUES ('2518', 'pa', 'zu', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2519', 'pa', 'zh-hant', '旁遮普語');
INSERT INTO arcp_icl_languages_translations VALUES ('2520', 'pa', 'ms', 'Punjabi');
INSERT INTO arcp_icl_languages_translations VALUES ('2521', 'pl', 'en', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2522', 'pl', 'es', 'Polaco');
INSERT INTO arcp_icl_languages_translations VALUES ('2523', 'pl', 'de', 'Polnisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2524', 'pl', 'fr', 'Polonais');
INSERT INTO arcp_icl_languages_translations VALUES ('2525', 'pl', 'ar', 'البولندية');
INSERT INTO arcp_icl_languages_translations VALUES ('2526', 'pl', 'bs', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2527', 'pl', 'bg', 'Полски');
INSERT INTO arcp_icl_languages_translations VALUES ('2528', 'pl', 'ca', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2529', 'pl', 'cs', 'Polský');
INSERT INTO arcp_icl_languages_translations VALUES ('2530', 'pl', 'sk', 'Polština');
INSERT INTO arcp_icl_languages_translations VALUES ('2531', 'pl', 'cy', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2532', 'pl', 'da', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2533', 'pl', 'el', 'Πολωνικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2534', 'pl', 'eo', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2535', 'pl', 'et', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2536', 'pl', 'eu', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2537', 'pl', 'fa', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2538', 'pl', 'fi', 'puola');
INSERT INTO arcp_icl_languages_translations VALUES ('2539', 'pl', 'ga', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2540', 'pl', 'he', 'פולנית');
INSERT INTO arcp_icl_languages_translations VALUES ('2541', 'pl', 'hi', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2542', 'pl', 'hr', 'Poljski');
INSERT INTO arcp_icl_languages_translations VALUES ('2543', 'pl', 'hu', 'lengyel');
INSERT INTO arcp_icl_languages_translations VALUES ('2544', 'pl', 'hy', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2545', 'pl', 'id', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2546', 'pl', 'is', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2547', 'pl', 'it', 'Polacco');
INSERT INTO arcp_icl_languages_translations VALUES ('2548', 'pl', 'ja', 'ポーランド語');
INSERT INTO arcp_icl_languages_translations VALUES ('2549', 'pl', 'ko', '폴란드어');
INSERT INTO arcp_icl_languages_translations VALUES ('2550', 'pl', 'ku', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2551', 'pl', 'la', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2552', 'pl', 'lv', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2553', 'pl', 'lt', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2554', 'pl', 'mk', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2555', 'pl', 'mt', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2556', 'pl', 'mn', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2557', 'pl', 'ne', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2558', 'pl', 'nl', 'Pools');
INSERT INTO arcp_icl_languages_translations VALUES ('2559', 'pl', 'nb', 'Polsk');
INSERT INTO arcp_icl_languages_translations VALUES ('2560', 'pl', 'pa', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2561', 'pl', 'pl', 'polski');
INSERT INTO arcp_icl_languages_translations VALUES ('2562', 'pl', 'pt-pt', 'Polonês');
INSERT INTO arcp_icl_languages_translations VALUES ('2563', 'pl', 'pt-br', 'Polonês');
INSERT INTO arcp_icl_languages_translations VALUES ('2564', 'pl', 'qu', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2565', 'pl', 'ro', 'Poloneză');
INSERT INTO arcp_icl_languages_translations VALUES ('2566', 'pl', 'ru', 'Польский');
INSERT INTO arcp_icl_languages_translations VALUES ('2567', 'pl', 'sl', 'Poljski');
INSERT INTO arcp_icl_languages_translations VALUES ('2568', 'pl', 'so', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2569', 'pl', 'sq', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2570', 'pl', 'sr', 'пољски');
INSERT INTO arcp_icl_languages_translations VALUES ('2571', 'pl', 'sv', 'Polska');
INSERT INTO arcp_icl_languages_translations VALUES ('2572', 'pl', 'ta', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2573', 'pl', 'th', 'โปแลนด์');
INSERT INTO arcp_icl_languages_translations VALUES ('2574', 'pl', 'tr', 'Polonyaca');
INSERT INTO arcp_icl_languages_translations VALUES ('2575', 'pl', 'uk', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2576', 'pl', 'ur', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2577', 'pl', 'uz', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2578', 'pl', 'vi', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2579', 'pl', 'yi', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2580', 'pl', 'zh-hans', '波兰语');
INSERT INTO arcp_icl_languages_translations VALUES ('2581', 'pl', 'zu', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2582', 'pl', 'zh-hant', '波蘭語');
INSERT INTO arcp_icl_languages_translations VALUES ('2583', 'pl', 'ms', 'Polish');
INSERT INTO arcp_icl_languages_translations VALUES ('2584', 'pt-pt', 'en', 'Portuguese (Portugal)');
INSERT INTO arcp_icl_languages_translations VALUES ('2585', 'pt-pt', 'es', 'Portugués, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2586', 'pt-pt', 'de', 'Portugiesisch, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2587', 'pt-pt', 'fr', 'Portugais - du Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2588', 'pt-pt', 'ar', 'البرتغالية ، البرتغال');
INSERT INTO arcp_icl_languages_translations VALUES ('2589', 'pt-pt', 'bs', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2590', 'pt-pt', 'bg', 'Португалски (Португалия)');
INSERT INTO arcp_icl_languages_translations VALUES ('2591', 'pt-pt', 'ca', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2592', 'pt-pt', 'cs', 'Portugalština ( Portugalsko)');
INSERT INTO arcp_icl_languages_translations VALUES ('2593', 'pt-pt', 'sk', 'Portugalština');
INSERT INTO arcp_icl_languages_translations VALUES ('2594', 'pt-pt', 'cy', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2595', 'pt-pt', 'da', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2596', 'pt-pt', 'el', 'Πορτογαλικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2597', 'pt-pt', 'eo', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2598', 'pt-pt', 'et', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2599', 'pt-pt', 'eu', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2600', 'pt-pt', 'fa', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2601', 'pt-pt', 'fi', 'portugali');
INSERT INTO arcp_icl_languages_translations VALUES ('2602', 'pt-pt', 'ga', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2603', 'pt-pt', 'he', 'פורטוגזית');
INSERT INTO arcp_icl_languages_translations VALUES ('2604', 'pt-pt', 'hi', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2605', 'pt-pt', 'hr', 'Portugalski (Portugal)');
INSERT INTO arcp_icl_languages_translations VALUES ('2606', 'pt-pt', 'hu', 'portugál');
INSERT INTO arcp_icl_languages_translations VALUES ('2607', 'pt-pt', 'hy', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2608', 'pt-pt', 'id', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2609', 'pt-pt', 'is', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2610', 'pt-pt', 'it', 'Portoghese, Portogallo');
INSERT INTO arcp_icl_languages_translations VALUES ('2611', 'pt-pt', 'ja', 'ポルトガル語');
INSERT INTO arcp_icl_languages_translations VALUES ('2612', 'pt-pt', 'ko', '포르투갈 포르투갈어');
INSERT INTO arcp_icl_languages_translations VALUES ('2613', 'pt-pt', 'ku', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2614', 'pt-pt', 'la', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2615', 'pt-pt', 'lv', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2616', 'pt-pt', 'lt', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2617', 'pt-pt', 'mk', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2618', 'pt-pt', 'mt', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2619', 'pt-pt', 'mn', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2620', 'pt-pt', 'ne', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2621', 'pt-pt', 'nl', 'Portugees, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2622', 'pt-pt', 'nb', 'Portugisisk (Portugal)');
INSERT INTO arcp_icl_languages_translations VALUES ('2623', 'pt-pt', 'pa', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2624', 'pt-pt', 'pl', 'portugalski, Portugalia');
INSERT INTO arcp_icl_languages_translations VALUES ('2625', 'pt-pt', 'pt-pt', 'Português');
INSERT INTO arcp_icl_languages_translations VALUES ('2626', 'pt-pt', 'pt-br', 'Português');
INSERT INTO arcp_icl_languages_translations VALUES ('2627', 'pt-pt', 'qu', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2628', 'pt-pt', 'ro', 'Portugheză (Portugalia)');
INSERT INTO arcp_icl_languages_translations VALUES ('2629', 'pt-pt', 'ru', 'Португальский, Португалия');
INSERT INTO arcp_icl_languages_translations VALUES ('2630', 'pt-pt', 'sl', 'Portugalščina ( Portugalska )');
INSERT INTO arcp_icl_languages_translations VALUES ('2631', 'pt-pt', 'so', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2632', 'pt-pt', 'sq', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2633', 'pt-pt', 'sr', 'Португалски (Португалија)');
INSERT INTO arcp_icl_languages_translations VALUES ('2634', 'pt-pt', 'sv', 'Portugisiska, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2635', 'pt-pt', 'ta', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2636', 'pt-pt', 'th', 'โปรตุเกส');
INSERT INTO arcp_icl_languages_translations VALUES ('2637', 'pt-pt', 'tr', 'Portekizce, Portekiz');
INSERT INTO arcp_icl_languages_translations VALUES ('2638', 'pt-pt', 'uk', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2639', 'pt-pt', 'ur', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2640', 'pt-pt', 'uz', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2641', 'pt-pt', 'vi', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2642', 'pt-pt', 'yi', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2643', 'pt-pt', 'zh-hans', '葡萄牙语（葡萄牙）');
INSERT INTO arcp_icl_languages_translations VALUES ('2644', 'pt-pt', 'zu', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2645', 'pt-pt', 'zh-hant', '葡萄牙語（葡萄牙）');
INSERT INTO arcp_icl_languages_translations VALUES ('2646', 'pt-pt', 'ms', 'Portuguese, Portugal');
INSERT INTO arcp_icl_languages_translations VALUES ('2647', 'pt-br', 'en', 'Portuguese (Brazil)');
INSERT INTO arcp_icl_languages_translations VALUES ('2648', 'pt-br', 'es', 'Portugués, Brasil');
INSERT INTO arcp_icl_languages_translations VALUES ('2649', 'pt-br', 'de', 'Portugiesisch, Brasilien');
INSERT INTO arcp_icl_languages_translations VALUES ('2650', 'pt-br', 'fr', 'Portugais - du Brésil');
INSERT INTO arcp_icl_languages_translations VALUES ('2651', 'pt-br', 'ar', 'البرتغالية ،البرازيل');
INSERT INTO arcp_icl_languages_translations VALUES ('2652', 'pt-br', 'bs', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2653', 'pt-br', 'bg', 'Португалски (Бразилия)');
INSERT INTO arcp_icl_languages_translations VALUES ('2654', 'pt-br', 'ca', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2655', 'pt-br', 'cs', 'Portugalština ( Brazílie)');
INSERT INTO arcp_icl_languages_translations VALUES ('2656', 'pt-br', 'sk', 'Brazílska Portugalština');
INSERT INTO arcp_icl_languages_translations VALUES ('2657', 'pt-br', 'cy', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2658', 'pt-br', 'da', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2659', 'pt-br', 'el', 'Πορτογαλικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2660', 'pt-br', 'eo', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2661', 'pt-br', 'et', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2662', 'pt-br', 'eu', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2663', 'pt-br', 'fa', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2664', 'pt-br', 'fi', 'Brasilian portugali');
INSERT INTO arcp_icl_languages_translations VALUES ('2665', 'pt-br', 'ga', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2666', 'pt-br', 'he', 'פורטוגזית - ברזיל');
INSERT INTO arcp_icl_languages_translations VALUES ('2667', 'pt-br', 'hi', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2668', 'pt-br', 'hr', 'Portugalski (Brazil)');
INSERT INTO arcp_icl_languages_translations VALUES ('2669', 'pt-br', 'hu', 'brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2670', 'pt-br', 'hy', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2671', 'pt-br', 'id', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2672', 'pt-br', 'is', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2673', 'pt-br', 'it', 'Portoghese, Brasile');
INSERT INTO arcp_icl_languages_translations VALUES ('2674', 'pt-br', 'ja', 'ポルトガル語（ブラジル）');
INSERT INTO arcp_icl_languages_translations VALUES ('2675', 'pt-br', 'ko', '브라질 포르투갈어');
INSERT INTO arcp_icl_languages_translations VALUES ('2676', 'pt-br', 'ku', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2677', 'pt-br', 'la', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2678', 'pt-br', 'lv', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2679', 'pt-br', 'lt', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2680', 'pt-br', 'mk', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2681', 'pt-br', 'mt', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2682', 'pt-br', 'mn', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2683', 'pt-br', 'ne', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2684', 'pt-br', 'nl', 'Portugees, Brazilië');
INSERT INTO arcp_icl_languages_translations VALUES ('2685', 'pt-br', 'nb', 'Portugisisk (Brasil)');
INSERT INTO arcp_icl_languages_translations VALUES ('2686', 'pt-br', 'pa', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2687', 'pt-br', 'pl', 'portugalski, Brazylia');
INSERT INTO arcp_icl_languages_translations VALUES ('2688', 'pt-br', 'pt-pt', 'Português');
INSERT INTO arcp_icl_languages_translations VALUES ('2689', 'pt-br', 'pt-br', 'Português');
INSERT INTO arcp_icl_languages_translations VALUES ('2690', 'pt-br', 'qu', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2691', 'pt-br', 'ro', 'Portugheză (Brazilia)');
INSERT INTO arcp_icl_languages_translations VALUES ('2692', 'pt-br', 'ru', 'Португальский, Бразилия');
INSERT INTO arcp_icl_languages_translations VALUES ('2693', 'pt-br', 'sl', 'Portugalščina ( Brazilija )');
INSERT INTO arcp_icl_languages_translations VALUES ('2694', 'pt-br', 'so', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2695', 'pt-br', 'sq', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2696', 'pt-br', 'sr', 'Португалски (Бразил)');
INSERT INTO arcp_icl_languages_translations VALUES ('2697', 'pt-br', 'sv', 'Portugisiska, Brasilien');
INSERT INTO arcp_icl_languages_translations VALUES ('2698', 'pt-br', 'ta', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2699', 'pt-br', 'th', 'โปรตุเกสบราซิล');
INSERT INTO arcp_icl_languages_translations VALUES ('2700', 'pt-br', 'tr', 'Portekizce, Brezilya');
INSERT INTO arcp_icl_languages_translations VALUES ('2701', 'pt-br', 'uk', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2702', 'pt-br', 'ur', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2703', 'pt-br', 'uz', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2704', 'pt-br', 'vi', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2705', 'pt-br', 'yi', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2706', 'pt-br', 'zh-hans', '葡萄牙语（巴西）');
INSERT INTO arcp_icl_languages_translations VALUES ('2707', 'pt-br', 'zu', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2708', 'pt-br', 'zh-hant', '葡萄牙語（巴西）');
INSERT INTO arcp_icl_languages_translations VALUES ('2709', 'pt-br', 'ms', 'Portuguese, Brazil');
INSERT INTO arcp_icl_languages_translations VALUES ('2710', 'qu', 'en', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2711', 'qu', 'es', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2712', 'qu', 'de', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2713', 'qu', 'fr', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2714', 'qu', 'ar', 'الكويتشوا');
INSERT INTO arcp_icl_languages_translations VALUES ('2715', 'qu', 'bs', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2716', 'qu', 'bg', 'Кечуа');
INSERT INTO arcp_icl_languages_translations VALUES ('2717', 'qu', 'ca', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2718', 'qu', 'cs', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2719', 'qu', 'sk', 'Jazyk Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2720', 'qu', 'cy', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2721', 'qu', 'da', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2722', 'qu', 'el', 'Κετσουα');
INSERT INTO arcp_icl_languages_translations VALUES ('2723', 'qu', 'eo', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2724', 'qu', 'et', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2725', 'qu', 'eu', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2726', 'qu', 'fa', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2727', 'qu', 'fi', 'ketsua');
INSERT INTO arcp_icl_languages_translations VALUES ('2728', 'qu', 'ga', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2729', 'qu', 'he', 'קצ\'ואה');
INSERT INTO arcp_icl_languages_translations VALUES ('2730', 'qu', 'hi', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2731', 'qu', 'hr', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2732', 'qu', 'hu', 'quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2733', 'qu', 'hy', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2734', 'qu', 'id', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2735', 'qu', 'is', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2736', 'qu', 'it', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2737', 'qu', 'ja', 'ケチュア語');
INSERT INTO arcp_icl_languages_translations VALUES ('2738', 'qu', 'ko', '케추아어');
INSERT INTO arcp_icl_languages_translations VALUES ('2739', 'qu', 'ku', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2740', 'qu', 'la', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2741', 'qu', 'lv', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2742', 'qu', 'lt', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2743', 'qu', 'mk', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2744', 'qu', 'mt', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2745', 'qu', 'mn', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2746', 'qu', 'ne', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2747', 'qu', 'nl', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2748', 'qu', 'nb', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2749', 'qu', 'pa', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2750', 'qu', 'pl', 'keczua');
INSERT INTO arcp_icl_languages_translations VALUES ('2751', 'qu', 'pt-pt', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2752', 'qu', 'pt-br', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2753', 'qu', 'qu', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2754', 'qu', 'ro', 'Quechuană');
INSERT INTO arcp_icl_languages_translations VALUES ('2755', 'qu', 'ru', 'Кечуа');
INSERT INTO arcp_icl_languages_translations VALUES ('2756', 'qu', 'sl', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2757', 'qu', 'so', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2758', 'qu', 'sq', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2759', 'qu', 'sr', 'Кечуа');
INSERT INTO arcp_icl_languages_translations VALUES ('2760', 'qu', 'sv', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2761', 'qu', 'ta', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2762', 'qu', 'th', 'คิวชัว');
INSERT INTO arcp_icl_languages_translations VALUES ('2763', 'qu', 'tr', 'Quechua dili');
INSERT INTO arcp_icl_languages_translations VALUES ('2764', 'qu', 'uk', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2765', 'qu', 'ur', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2766', 'qu', 'uz', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2767', 'qu', 'vi', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2768', 'qu', 'yi', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2769', 'qu', 'zh-hans', '盖丘亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('2770', 'qu', 'zu', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2771', 'qu', 'zh-hant', '蓋丘亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('2772', 'qu', 'ms', 'Quechua');
INSERT INTO arcp_icl_languages_translations VALUES ('2773', 'ro', 'en', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2774', 'ro', 'es', 'Rumano');
INSERT INTO arcp_icl_languages_translations VALUES ('2775', 'ro', 'de', 'Rumänisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2776', 'ro', 'fr', 'Roumain');
INSERT INTO arcp_icl_languages_translations VALUES ('2777', 'ro', 'ar', 'الرومانية');
INSERT INTO arcp_icl_languages_translations VALUES ('2778', 'ro', 'bs', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2779', 'ro', 'bg', 'Румънски');
INSERT INTO arcp_icl_languages_translations VALUES ('2780', 'ro', 'ca', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2781', 'ro', 'cs', 'Rumunština');
INSERT INTO arcp_icl_languages_translations VALUES ('2782', 'ro', 'sk', 'Rumunčina');
INSERT INTO arcp_icl_languages_translations VALUES ('2783', 'ro', 'cy', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2784', 'ro', 'da', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2785', 'ro', 'el', 'Ρουμανικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2786', 'ro', 'eo', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2787', 'ro', 'et', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2788', 'ro', 'eu', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2789', 'ro', 'fa', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2790', 'ro', 'fi', 'romania');
INSERT INTO arcp_icl_languages_translations VALUES ('2791', 'ro', 'ga', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2792', 'ro', 'he', 'רומנית');
INSERT INTO arcp_icl_languages_translations VALUES ('2793', 'ro', 'hi', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2794', 'ro', 'hr', 'Rumunjski');
INSERT INTO arcp_icl_languages_translations VALUES ('2795', 'ro', 'hu', 'román');
INSERT INTO arcp_icl_languages_translations VALUES ('2796', 'ro', 'hy', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2797', 'ro', 'id', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2798', 'ro', 'is', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2799', 'ro', 'it', 'Rumeno');
INSERT INTO arcp_icl_languages_translations VALUES ('2800', 'ro', 'ja', 'ルーマニア語');
INSERT INTO arcp_icl_languages_translations VALUES ('2801', 'ro', 'ko', '로마니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('2802', 'ro', 'ku', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2803', 'ro', 'la', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2804', 'ro', 'lv', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2805', 'ro', 'lt', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2806', 'ro', 'mk', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2807', 'ro', 'mt', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2808', 'ro', 'mn', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2809', 'ro', 'ne', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2810', 'ro', 'nl', 'Roemeens');
INSERT INTO arcp_icl_languages_translations VALUES ('2811', 'ro', 'nb', 'Rumensk');
INSERT INTO arcp_icl_languages_translations VALUES ('2812', 'ro', 'pa', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2813', 'ro', 'pl', 'rumuński');
INSERT INTO arcp_icl_languages_translations VALUES ('2814', 'ro', 'pt-pt', 'Romeno');
INSERT INTO arcp_icl_languages_translations VALUES ('2815', 'ro', 'pt-br', 'Romeno');
INSERT INTO arcp_icl_languages_translations VALUES ('2816', 'ro', 'qu', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2817', 'ro', 'ro', 'Română');
INSERT INTO arcp_icl_languages_translations VALUES ('2818', 'ro', 'ru', 'Румынский');
INSERT INTO arcp_icl_languages_translations VALUES ('2819', 'ro', 'sl', 'Romunščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2820', 'ro', 'so', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2821', 'ro', 'sq', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2822', 'ro', 'sr', 'румунски');
INSERT INTO arcp_icl_languages_translations VALUES ('2823', 'ro', 'sv', 'Rumänska');
INSERT INTO arcp_icl_languages_translations VALUES ('2824', 'ro', 'ta', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2825', 'ro', 'th', 'โรมาเนีย');
INSERT INTO arcp_icl_languages_translations VALUES ('2826', 'ro', 'tr', 'Rumence');
INSERT INTO arcp_icl_languages_translations VALUES ('2827', 'ro', 'uk', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2828', 'ro', 'ur', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2829', 'ro', 'uz', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2830', 'ro', 'vi', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2831', 'ro', 'yi', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2832', 'ro', 'zh-hans', '罗马尼亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('2833', 'ro', 'zu', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2834', 'ro', 'zh-hant', '羅馬尼亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('2835', 'ro', 'ms', 'Romanian');
INSERT INTO arcp_icl_languages_translations VALUES ('2836', 'ru', 'en', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2837', 'ru', 'es', 'Ruso');
INSERT INTO arcp_icl_languages_translations VALUES ('2838', 'ru', 'de', 'Russisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2839', 'ru', 'fr', 'Russe');
INSERT INTO arcp_icl_languages_translations VALUES ('2840', 'ru', 'ar', 'الروسية');
INSERT INTO arcp_icl_languages_translations VALUES ('2841', 'ru', 'bs', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2842', 'ru', 'bg', 'Руски');
INSERT INTO arcp_icl_languages_translations VALUES ('2843', 'ru', 'ca', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2844', 'ru', 'cs', 'Ruský');
INSERT INTO arcp_icl_languages_translations VALUES ('2845', 'ru', 'sk', 'Ruština');
INSERT INTO arcp_icl_languages_translations VALUES ('2846', 'ru', 'cy', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2847', 'ru', 'da', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2848', 'ru', 'el', 'Ρωσικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2849', 'ru', 'eo', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2850', 'ru', 'et', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2851', 'ru', 'eu', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2852', 'ru', 'fa', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2853', 'ru', 'fi', 'venäjä');
INSERT INTO arcp_icl_languages_translations VALUES ('2854', 'ru', 'ga', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2855', 'ru', 'he', 'רוסית');
INSERT INTO arcp_icl_languages_translations VALUES ('2856', 'ru', 'hi', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2857', 'ru', 'hr', 'Ruski');
INSERT INTO arcp_icl_languages_translations VALUES ('2858', 'ru', 'hu', 'orosz');
INSERT INTO arcp_icl_languages_translations VALUES ('2859', 'ru', 'hy', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2860', 'ru', 'id', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2861', 'ru', 'is', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2862', 'ru', 'it', 'Russo');
INSERT INTO arcp_icl_languages_translations VALUES ('2863', 'ru', 'ja', 'ロシア語');
INSERT INTO arcp_icl_languages_translations VALUES ('2864', 'ru', 'ko', '러시아어');
INSERT INTO arcp_icl_languages_translations VALUES ('2865', 'ru', 'ku', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2866', 'ru', 'la', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2867', 'ru', 'lv', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2868', 'ru', 'lt', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2869', 'ru', 'mk', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2870', 'ru', 'mt', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2871', 'ru', 'mn', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2872', 'ru', 'ne', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2873', 'ru', 'nl', 'Russisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2874', 'ru', 'nb', 'Russisk');
INSERT INTO arcp_icl_languages_translations VALUES ('2875', 'ru', 'pa', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2876', 'ru', 'pl', 'rosyjski');
INSERT INTO arcp_icl_languages_translations VALUES ('2877', 'ru', 'pt-pt', 'Russo');
INSERT INTO arcp_icl_languages_translations VALUES ('2878', 'ru', 'pt-br', 'Russo');
INSERT INTO arcp_icl_languages_translations VALUES ('2879', 'ru', 'qu', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2880', 'ru', 'ro', 'Rusă');
INSERT INTO arcp_icl_languages_translations VALUES ('2881', 'ru', 'ru', 'Русский');
INSERT INTO arcp_icl_languages_translations VALUES ('2882', 'ru', 'sl', 'Ruščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2883', 'ru', 'so', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2884', 'ru', 'sq', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2885', 'ru', 'sr', 'руски');
INSERT INTO arcp_icl_languages_translations VALUES ('2886', 'ru', 'sv', 'Ryska');
INSERT INTO arcp_icl_languages_translations VALUES ('2887', 'ru', 'ta', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2888', 'ru', 'th', 'รัสเซีย');
INSERT INTO arcp_icl_languages_translations VALUES ('2889', 'ru', 'tr', 'Rusça');
INSERT INTO arcp_icl_languages_translations VALUES ('2890', 'ru', 'uk', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2891', 'ru', 'ur', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2892', 'ru', 'uz', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2893', 'ru', 'vi', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2894', 'ru', 'yi', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2895', 'ru', 'zh-hans', '俄语');
INSERT INTO arcp_icl_languages_translations VALUES ('2896', 'ru', 'zu', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2897', 'ru', 'zh-hant', '俄語');
INSERT INTO arcp_icl_languages_translations VALUES ('2898', 'ru', 'ms', 'Russian');
INSERT INTO arcp_icl_languages_translations VALUES ('2899', 'sl', 'en', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2900', 'sl', 'es', 'Esloveno');
INSERT INTO arcp_icl_languages_translations VALUES ('2901', 'sl', 'de', 'Slowenisch');
INSERT INTO arcp_icl_languages_translations VALUES ('2902', 'sl', 'fr', 'Slovène');
INSERT INTO arcp_icl_languages_translations VALUES ('2903', 'sl', 'ar', 'السلوفانية');
INSERT INTO arcp_icl_languages_translations VALUES ('2904', 'sl', 'bs', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2905', 'sl', 'bg', 'Словенски');
INSERT INTO arcp_icl_languages_translations VALUES ('2906', 'sl', 'ca', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2907', 'sl', 'cs', 'Slovinština');
INSERT INTO arcp_icl_languages_translations VALUES ('2908', 'sl', 'sk', 'Slovinčina');
INSERT INTO arcp_icl_languages_translations VALUES ('2909', 'sl', 'cy', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2910', 'sl', 'da', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2911', 'sl', 'el', 'Σλοβενικα');
INSERT INTO arcp_icl_languages_translations VALUES ('2912', 'sl', 'eo', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2913', 'sl', 'et', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2914', 'sl', 'eu', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2915', 'sl', 'fa', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2916', 'sl', 'fi', 'sloveeni');
INSERT INTO arcp_icl_languages_translations VALUES ('2917', 'sl', 'ga', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2918', 'sl', 'he', 'סלובנית');
INSERT INTO arcp_icl_languages_translations VALUES ('2919', 'sl', 'hi', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2920', 'sl', 'hr', 'Slovenac');
INSERT INTO arcp_icl_languages_translations VALUES ('2921', 'sl', 'hu', 'szlovén');
INSERT INTO arcp_icl_languages_translations VALUES ('2922', 'sl', 'hy', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2923', 'sl', 'id', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2924', 'sl', 'is', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2925', 'sl', 'it', 'Sloveno');
INSERT INTO arcp_icl_languages_translations VALUES ('2926', 'sl', 'ja', 'スロベニア語');
INSERT INTO arcp_icl_languages_translations VALUES ('2927', 'sl', 'ko', '슬로베니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('2928', 'sl', 'ku', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2929', 'sl', 'la', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2930', 'sl', 'lv', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2931', 'sl', 'lt', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2932', 'sl', 'mk', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2933', 'sl', 'mt', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2934', 'sl', 'mn', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2935', 'sl', 'ne', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2936', 'sl', 'nl', 'Sloveens');
INSERT INTO arcp_icl_languages_translations VALUES ('2937', 'sl', 'nb', 'Slovensk');
INSERT INTO arcp_icl_languages_translations VALUES ('2938', 'sl', 'pa', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2939', 'sl', 'pl', 'słoweński');
INSERT INTO arcp_icl_languages_translations VALUES ('2940', 'sl', 'pt-pt', 'Esloveno');
INSERT INTO arcp_icl_languages_translations VALUES ('2941', 'sl', 'pt-br', 'Esloveno');
INSERT INTO arcp_icl_languages_translations VALUES ('2942', 'sl', 'qu', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2943', 'sl', 'ro', 'Slovenă');
INSERT INTO arcp_icl_languages_translations VALUES ('2944', 'sl', 'ru', 'Словенский');
INSERT INTO arcp_icl_languages_translations VALUES ('2945', 'sl', 'sl', 'Slovenščina');
INSERT INTO arcp_icl_languages_translations VALUES ('2946', 'sl', 'so', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2947', 'sl', 'sq', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2948', 'sl', 'sr', 'словеначки');
INSERT INTO arcp_icl_languages_translations VALUES ('2949', 'sl', 'sv', 'Slovenska');
INSERT INTO arcp_icl_languages_translations VALUES ('2950', 'sl', 'ta', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2951', 'sl', 'th', 'สโลวีเนียน');
INSERT INTO arcp_icl_languages_translations VALUES ('2952', 'sl', 'tr', 'Sloven dili');
INSERT INTO arcp_icl_languages_translations VALUES ('2953', 'sl', 'uk', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2954', 'sl', 'ur', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2955', 'sl', 'uz', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2956', 'sl', 'vi', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2957', 'sl', 'yi', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2958', 'sl', 'zh-hans', '斯洛文尼亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('2959', 'sl', 'zu', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2960', 'sl', 'zh-hant', '斯洛文尼亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('2961', 'sl', 'ms', 'Slovenian');
INSERT INTO arcp_icl_languages_translations VALUES ('2962', 'so', 'en', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2963', 'so', 'es', 'Somalí');
INSERT INTO arcp_icl_languages_translations VALUES ('2964', 'so', 'de', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2965', 'so', 'fr', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2966', 'so', 'ar', 'الصومالية');
INSERT INTO arcp_icl_languages_translations VALUES ('2967', 'so', 'bs', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2968', 'so', 'bg', 'Сомалийски');
INSERT INTO arcp_icl_languages_translations VALUES ('2969', 'so', 'ca', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2970', 'so', 'cs', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2971', 'so', 'sk', 'Somálčina');
INSERT INTO arcp_icl_languages_translations VALUES ('2972', 'so', 'cy', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2973', 'so', 'da', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2974', 'so', 'el', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2975', 'so', 'eo', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2976', 'so', 'et', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2977', 'so', 'eu', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2978', 'so', 'fa', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2979', 'so', 'fi', 'somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2980', 'so', 'ga', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2981', 'so', 'he', 'סומלית');
INSERT INTO arcp_icl_languages_translations VALUES ('2982', 'so', 'hi', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2983', 'so', 'hr', 'Somalijski');
INSERT INTO arcp_icl_languages_translations VALUES ('2984', 'so', 'hu', 'szomáli');
INSERT INTO arcp_icl_languages_translations VALUES ('2985', 'so', 'hy', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2986', 'so', 'id', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2987', 'so', 'is', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2988', 'so', 'it', 'Somalo');
INSERT INTO arcp_icl_languages_translations VALUES ('2989', 'so', 'ja', 'ソマリ語');
INSERT INTO arcp_icl_languages_translations VALUES ('2990', 'so', 'ko', '소말리아어');
INSERT INTO arcp_icl_languages_translations VALUES ('2991', 'so', 'ku', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2992', 'so', 'la', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2993', 'so', 'lv', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2994', 'so', 'lt', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2995', 'so', 'mk', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2996', 'so', 'mt', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2997', 'so', 'mn', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2998', 'so', 'ne', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('2999', 'so', 'nl', 'Somalisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3000', 'so', 'nb', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3001', 'so', 'pa', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3002', 'so', 'pl', 'somalijski');
INSERT INTO arcp_icl_languages_translations VALUES ('3003', 'so', 'pt-pt', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3004', 'so', 'pt-br', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3005', 'so', 'qu', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3006', 'so', 'ro', 'Somaleză');
INSERT INTO arcp_icl_languages_translations VALUES ('3007', 'so', 'ru', 'Сомалийский');
INSERT INTO arcp_icl_languages_translations VALUES ('3008', 'so', 'sl', 'Somalski');
INSERT INTO arcp_icl_languages_translations VALUES ('3009', 'so', 'so', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3010', 'so', 'sq', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3011', 'so', 'sr', 'Сомалијски');
INSERT INTO arcp_icl_languages_translations VALUES ('3012', 'so', 'sv', 'Somaliska');
INSERT INTO arcp_icl_languages_translations VALUES ('3013', 'so', 'ta', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3014', 'so', 'th', 'โซมาลี');
INSERT INTO arcp_icl_languages_translations VALUES ('3015', 'so', 'tr', 'Somalice');
INSERT INTO arcp_icl_languages_translations VALUES ('3016', 'so', 'uk', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3017', 'so', 'ur', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3018', 'so', 'uz', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3019', 'so', 'vi', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3020', 'so', 'yi', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3021', 'so', 'zh-hans', '索马里语');
INSERT INTO arcp_icl_languages_translations VALUES ('3022', 'so', 'zu', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3023', 'so', 'zh-hant', '索馬里語');
INSERT INTO arcp_icl_languages_translations VALUES ('3024', 'so', 'ms', 'Somali');
INSERT INTO arcp_icl_languages_translations VALUES ('3025', 'sq', 'en', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3026', 'sq', 'es', 'Albanés');
INSERT INTO arcp_icl_languages_translations VALUES ('3027', 'sq', 'de', 'Albanisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3028', 'sq', 'fr', 'Albanais');
INSERT INTO arcp_icl_languages_translations VALUES ('3029', 'sq', 'ar', 'الألبانية');
INSERT INTO arcp_icl_languages_translations VALUES ('3030', 'sq', 'bs', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3031', 'sq', 'bg', 'Албански');
INSERT INTO arcp_icl_languages_translations VALUES ('3032', 'sq', 'ca', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3033', 'sq', 'cs', 'Albánský');
INSERT INTO arcp_icl_languages_translations VALUES ('3034', 'sq', 'sk', 'Albánčina');
INSERT INTO arcp_icl_languages_translations VALUES ('3035', 'sq', 'cy', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3036', 'sq', 'da', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3037', 'sq', 'el', 'Αλβανικα');
INSERT INTO arcp_icl_languages_translations VALUES ('3038', 'sq', 'eo', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3039', 'sq', 'et', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3040', 'sq', 'eu', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3041', 'sq', 'fa', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3042', 'sq', 'fi', 'albania');
INSERT INTO arcp_icl_languages_translations VALUES ('3043', 'sq', 'ga', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3044', 'sq', 'he', 'אלבנית');
INSERT INTO arcp_icl_languages_translations VALUES ('3045', 'sq', 'hi', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3046', 'sq', 'hr', 'Albanac');
INSERT INTO arcp_icl_languages_translations VALUES ('3047', 'sq', 'hu', 'albán');
INSERT INTO arcp_icl_languages_translations VALUES ('3048', 'sq', 'hy', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3049', 'sq', 'id', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3050', 'sq', 'is', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3051', 'sq', 'it', 'Albanese');
INSERT INTO arcp_icl_languages_translations VALUES ('3052', 'sq', 'ja', 'アルバニア語');
INSERT INTO arcp_icl_languages_translations VALUES ('3053', 'sq', 'ko', '알바니아어');
INSERT INTO arcp_icl_languages_translations VALUES ('3054', 'sq', 'ku', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3055', 'sq', 'la', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3056', 'sq', 'lv', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3057', 'sq', 'lt', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3058', 'sq', 'mk', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3059', 'sq', 'mt', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3060', 'sq', 'mn', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3061', 'sq', 'ne', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3062', 'sq', 'nl', 'Albaans');
INSERT INTO arcp_icl_languages_translations VALUES ('3063', 'sq', 'nb', 'Albansk');
INSERT INTO arcp_icl_languages_translations VALUES ('3064', 'sq', 'pa', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3065', 'sq', 'pl', 'albański');
INSERT INTO arcp_icl_languages_translations VALUES ('3066', 'sq', 'pt-pt', 'Albanês');
INSERT INTO arcp_icl_languages_translations VALUES ('3067', 'sq', 'pt-br', 'Albanês');
INSERT INTO arcp_icl_languages_translations VALUES ('3068', 'sq', 'qu', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3069', 'sq', 'ro', 'Albaneză');
INSERT INTO arcp_icl_languages_translations VALUES ('3070', 'sq', 'ru', 'Албанский');
INSERT INTO arcp_icl_languages_translations VALUES ('3071', 'sq', 'sl', 'Albanski');
INSERT INTO arcp_icl_languages_translations VALUES ('3072', 'sq', 'so', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3073', 'sq', 'sq', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3074', 'sq', 'sr', 'албански');
INSERT INTO arcp_icl_languages_translations VALUES ('3075', 'sq', 'sv', 'Albanska');
INSERT INTO arcp_icl_languages_translations VALUES ('3076', 'sq', 'ta', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3077', 'sq', 'th', 'อัลเบเนีย');
INSERT INTO arcp_icl_languages_translations VALUES ('3078', 'sq', 'tr', 'Arnavutça');
INSERT INTO arcp_icl_languages_translations VALUES ('3079', 'sq', 'uk', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3080', 'sq', 'ur', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3081', 'sq', 'uz', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3082', 'sq', 'vi', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3083', 'sq', 'yi', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3084', 'sq', 'zh-hans', '阿尔巴尼亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('3085', 'sq', 'zu', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3086', 'sq', 'zh-hant', '阿爾巴尼亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('3087', 'sq', 'ms', 'Albanian');
INSERT INTO arcp_icl_languages_translations VALUES ('3088', 'sr', 'en', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3089', 'sr', 'es', 'Serbio');
INSERT INTO arcp_icl_languages_translations VALUES ('3090', 'sr', 'de', 'Serbisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3091', 'sr', 'fr', 'Serbe');
INSERT INTO arcp_icl_languages_translations VALUES ('3092', 'sr', 'ar', 'الصربية');
INSERT INTO arcp_icl_languages_translations VALUES ('3093', 'sr', 'bs', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3094', 'sr', 'bg', 'Сръбски');
INSERT INTO arcp_icl_languages_translations VALUES ('3095', 'sr', 'ca', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3096', 'sr', 'cs', 'Srbský');
INSERT INTO arcp_icl_languages_translations VALUES ('3097', 'sr', 'sk', 'Srbština');
INSERT INTO arcp_icl_languages_translations VALUES ('3098', 'sr', 'cy', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3099', 'sr', 'da', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3100', 'sr', 'el', 'Σερβικα');
INSERT INTO arcp_icl_languages_translations VALUES ('3101', 'sr', 'eo', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3102', 'sr', 'et', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3103', 'sr', 'eu', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3104', 'sr', 'fa', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3105', 'sr', 'fi', 'serbia');
INSERT INTO arcp_icl_languages_translations VALUES ('3106', 'sr', 'ga', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3107', 'sr', 'he', 'סרבית');
INSERT INTO arcp_icl_languages_translations VALUES ('3108', 'sr', 'hi', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3109', 'sr', 'hr', 'Srpski');
INSERT INTO arcp_icl_languages_translations VALUES ('3110', 'sr', 'hu', 'szerb');
INSERT INTO arcp_icl_languages_translations VALUES ('3111', 'sr', 'hy', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3112', 'sr', 'id', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3113', 'sr', 'is', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3114', 'sr', 'it', 'Serbo');
INSERT INTO arcp_icl_languages_translations VALUES ('3115', 'sr', 'ja', 'セルビア語');
INSERT INTO arcp_icl_languages_translations VALUES ('3116', 'sr', 'ko', '세르비아어');
INSERT INTO arcp_icl_languages_translations VALUES ('3117', 'sr', 'ku', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3118', 'sr', 'la', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3119', 'sr', 'lv', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3120', 'sr', 'lt', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3121', 'sr', 'mk', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3122', 'sr', 'mt', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3123', 'sr', 'mn', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3124', 'sr', 'ne', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3125', 'sr', 'nl', 'Servisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3126', 'sr', 'nb', 'Serbisk');
INSERT INTO arcp_icl_languages_translations VALUES ('3127', 'sr', 'pa', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3128', 'sr', 'pl', 'serbski');
INSERT INTO arcp_icl_languages_translations VALUES ('3129', 'sr', 'pt-pt', 'Sérvio');
INSERT INTO arcp_icl_languages_translations VALUES ('3130', 'sr', 'pt-br', 'Sérvio');
INSERT INTO arcp_icl_languages_translations VALUES ('3131', 'sr', 'qu', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3132', 'sr', 'ro', 'Sârbă');
INSERT INTO arcp_icl_languages_translations VALUES ('3133', 'sr', 'ru', 'Сербский');
INSERT INTO arcp_icl_languages_translations VALUES ('3134', 'sr', 'sl', 'Srbski');
INSERT INTO arcp_icl_languages_translations VALUES ('3135', 'sr', 'so', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3136', 'sr', 'sq', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3137', 'sr', 'sr', 'српски');
INSERT INTO arcp_icl_languages_translations VALUES ('3138', 'sr', 'sv', 'Serbiska');
INSERT INTO arcp_icl_languages_translations VALUES ('3139', 'sr', 'ta', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3140', 'sr', 'th', 'เซอร์เบีย');
INSERT INTO arcp_icl_languages_translations VALUES ('3141', 'sr', 'tr', 'Sırpça');
INSERT INTO arcp_icl_languages_translations VALUES ('3142', 'sr', 'uk', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3143', 'sr', 'ur', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3144', 'sr', 'uz', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3145', 'sr', 'vi', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3146', 'sr', 'yi', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3147', 'sr', 'zh-hans', '赛尔维亚语');
INSERT INTO arcp_icl_languages_translations VALUES ('3148', 'sr', 'zu', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3149', 'sr', 'zh-hant', '賽爾維亞語');
INSERT INTO arcp_icl_languages_translations VALUES ('3150', 'sr', 'ms', 'Serbian');
INSERT INTO arcp_icl_languages_translations VALUES ('3151', 'sv', 'en', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3152', 'sv', 'es', 'Sueco');
INSERT INTO arcp_icl_languages_translations VALUES ('3153', 'sv', 'de', 'Schwedisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3154', 'sv', 'fr', 'Suédois');
INSERT INTO arcp_icl_languages_translations VALUES ('3155', 'sv', 'ar', 'السويدية');
INSERT INTO arcp_icl_languages_translations VALUES ('3156', 'sv', 'bs', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3157', 'sv', 'bg', 'Шведски');
INSERT INTO arcp_icl_languages_translations VALUES ('3158', 'sv', 'ca', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3159', 'sv', 'cs', 'Švédský');
INSERT INTO arcp_icl_languages_translations VALUES ('3160', 'sv', 'sk', 'Švédština');
INSERT INTO arcp_icl_languages_translations VALUES ('3161', 'sv', 'cy', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3162', 'sv', 'da', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3163', 'sv', 'el', 'Σουηδικη');
INSERT INTO arcp_icl_languages_translations VALUES ('3164', 'sv', 'eo', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3165', 'sv', 'et', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3166', 'sv', 'eu', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3167', 'sv', 'fa', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3168', 'sv', 'fi', 'ruotsi');
INSERT INTO arcp_icl_languages_translations VALUES ('3169', 'sv', 'ga', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3170', 'sv', 'he', 'שוודית');
INSERT INTO arcp_icl_languages_translations VALUES ('3171', 'sv', 'hi', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3172', 'sv', 'hr', 'švedski');
INSERT INTO arcp_icl_languages_translations VALUES ('3173', 'sv', 'hu', 'svéd');
INSERT INTO arcp_icl_languages_translations VALUES ('3174', 'sv', 'hy', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3175', 'sv', 'id', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3176', 'sv', 'is', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3177', 'sv', 'it', 'Svedese');
INSERT INTO arcp_icl_languages_translations VALUES ('3178', 'sv', 'ja', 'スウェーデン語');
INSERT INTO arcp_icl_languages_translations VALUES ('3179', 'sv', 'ko', '스웨덴어');
INSERT INTO arcp_icl_languages_translations VALUES ('3180', 'sv', 'ku', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3181', 'sv', 'la', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3182', 'sv', 'lv', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3183', 'sv', 'lt', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3184', 'sv', 'mk', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3185', 'sv', 'mt', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3186', 'sv', 'mn', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3187', 'sv', 'ne', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3188', 'sv', 'nl', 'Zweeds');
INSERT INTO arcp_icl_languages_translations VALUES ('3189', 'sv', 'nb', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3190', 'sv', 'pa', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3191', 'sv', 'pl', 'szwedzki');
INSERT INTO arcp_icl_languages_translations VALUES ('3192', 'sv', 'pt-pt', 'Sueco');
INSERT INTO arcp_icl_languages_translations VALUES ('3193', 'sv', 'pt-br', 'Sueco');
INSERT INTO arcp_icl_languages_translations VALUES ('3194', 'sv', 'qu', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3195', 'sv', 'ro', 'Suedeză');
INSERT INTO arcp_icl_languages_translations VALUES ('3196', 'sv', 'ru', 'Шведский');
INSERT INTO arcp_icl_languages_translations VALUES ('3197', 'sv', 'sl', 'Švedščina');
INSERT INTO arcp_icl_languages_translations VALUES ('3198', 'sv', 'so', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3199', 'sv', 'sq', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3200', 'sv', 'sr', 'шведски');
INSERT INTO arcp_icl_languages_translations VALUES ('3201', 'sv', 'sv', 'Svenska');
INSERT INTO arcp_icl_languages_translations VALUES ('3202', 'sv', 'ta', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3203', 'sv', 'th', 'สวีเดน');
INSERT INTO arcp_icl_languages_translations VALUES ('3204', 'sv', 'tr', 'İsveççe');
INSERT INTO arcp_icl_languages_translations VALUES ('3205', 'sv', 'uk', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3206', 'sv', 'ur', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3207', 'sv', 'uz', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3208', 'sv', 'vi', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3209', 'sv', 'yi', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3210', 'sv', 'zh-hans', '瑞典语');
INSERT INTO arcp_icl_languages_translations VALUES ('3211', 'sv', 'zu', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3212', 'sv', 'zh-hant', '瑞典語');
INSERT INTO arcp_icl_languages_translations VALUES ('3213', 'sv', 'ms', 'Swedish');
INSERT INTO arcp_icl_languages_translations VALUES ('3214', 'ta', 'en', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3215', 'ta', 'es', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3216', 'ta', 'de', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3217', 'ta', 'fr', 'Tamoul');
INSERT INTO arcp_icl_languages_translations VALUES ('3218', 'ta', 'ar', 'التاميلية');
INSERT INTO arcp_icl_languages_translations VALUES ('3219', 'ta', 'bs', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3220', 'ta', 'bg', 'Тамилски');
INSERT INTO arcp_icl_languages_translations VALUES ('3221', 'ta', 'ca', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3222', 'ta', 'cs', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3223', 'ta', 'sk', 'Tamilčina');
INSERT INTO arcp_icl_languages_translations VALUES ('3224', 'ta', 'cy', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3225', 'ta', 'da', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3226', 'ta', 'el', 'Ταμιλ');
INSERT INTO arcp_icl_languages_translations VALUES ('3227', 'ta', 'eo', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3228', 'ta', 'et', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3229', 'ta', 'eu', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3230', 'ta', 'fa', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3231', 'ta', 'fi', 'tamili');
INSERT INTO arcp_icl_languages_translations VALUES ('3232', 'ta', 'ga', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3233', 'ta', 'he', 'טמילית');
INSERT INTO arcp_icl_languages_translations VALUES ('3234', 'ta', 'hi', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3235', 'ta', 'hr', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3236', 'ta', 'hu', 'tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3237', 'ta', 'hy', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3238', 'ta', 'id', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3239', 'ta', 'is', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3240', 'ta', 'it', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3241', 'ta', 'ja', 'タミル語');
INSERT INTO arcp_icl_languages_translations VALUES ('3242', 'ta', 'ko', '타밀어');
INSERT INTO arcp_icl_languages_translations VALUES ('3243', 'ta', 'ku', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3244', 'ta', 'la', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3245', 'ta', 'lv', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3246', 'ta', 'lt', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3247', 'ta', 'mk', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3248', 'ta', 'mt', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3249', 'ta', 'mn', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3250', 'ta', 'ne', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3251', 'ta', 'nl', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3252', 'ta', 'nb', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3253', 'ta', 'pa', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3254', 'ta', 'pl', 'tamilski');
INSERT INTO arcp_icl_languages_translations VALUES ('3255', 'ta', 'pt-pt', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3256', 'ta', 'pt-br', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3257', 'ta', 'qu', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3258', 'ta', 'ro', 'Tamilă');
INSERT INTO arcp_icl_languages_translations VALUES ('3259', 'ta', 'ru', 'Тамильский');
INSERT INTO arcp_icl_languages_translations VALUES ('3260', 'ta', 'sl', 'Tamilščina');
INSERT INTO arcp_icl_languages_translations VALUES ('3261', 'ta', 'so', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3262', 'ta', 'sq', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3263', 'ta', 'sr', 'тамилски');
INSERT INTO arcp_icl_languages_translations VALUES ('3264', 'ta', 'sv', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3265', 'ta', 'ta', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3266', 'ta', 'th', 'ทมิฬ');
INSERT INTO arcp_icl_languages_translations VALUES ('3267', 'ta', 'tr', 'Tamil dili');
INSERT INTO arcp_icl_languages_translations VALUES ('3268', 'ta', 'uk', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3269', 'ta', 'ur', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3270', 'ta', 'uz', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3271', 'ta', 'vi', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3272', 'ta', 'yi', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3273', 'ta', 'zh-hans', '泰米尔语');
INSERT INTO arcp_icl_languages_translations VALUES ('3274', 'ta', 'zu', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3275', 'ta', 'zh-hant', '泰米爾語');
INSERT INTO arcp_icl_languages_translations VALUES ('3276', 'ta', 'ms', 'Tamil');
INSERT INTO arcp_icl_languages_translations VALUES ('3277', 'th', 'en', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3278', 'th', 'es', 'Tailandés');
INSERT INTO arcp_icl_languages_translations VALUES ('3279', 'th', 'de', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3280', 'th', 'fr', 'Thaï');
INSERT INTO arcp_icl_languages_translations VALUES ('3281', 'th', 'ar', 'التايلندية');
INSERT INTO arcp_icl_languages_translations VALUES ('3282', 'th', 'bs', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3283', 'th', 'bg', 'Тайски');
INSERT INTO arcp_icl_languages_translations VALUES ('3284', 'th', 'ca', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3285', 'th', 'cs', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3286', 'th', 'sk', 'Thajština');
INSERT INTO arcp_icl_languages_translations VALUES ('3287', 'th', 'cy', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3288', 'th', 'da', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3289', 'th', 'el', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3290', 'th', 'eo', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3291', 'th', 'et', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3292', 'th', 'eu', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3293', 'th', 'fa', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3294', 'th', 'fi', 'thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3295', 'th', 'ga', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3296', 'th', 'he', 'תאילנדית');
INSERT INTO arcp_icl_languages_translations VALUES ('3297', 'th', 'hi', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3298', 'th', 'hr', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3299', 'th', 'hu', 'tájföldi');
INSERT INTO arcp_icl_languages_translations VALUES ('3300', 'th', 'hy', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3301', 'th', 'id', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3302', 'th', 'is', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3303', 'th', 'it', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3304', 'th', 'ja', 'タイ語');
INSERT INTO arcp_icl_languages_translations VALUES ('3305', 'th', 'ko', '태국어');
INSERT INTO arcp_icl_languages_translations VALUES ('3306', 'th', 'ku', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3307', 'th', 'la', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3308', 'th', 'lv', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3309', 'th', 'lt', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3310', 'th', 'mk', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3311', 'th', 'mt', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3312', 'th', 'mn', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3313', 'th', 'ne', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3314', 'th', 'nl', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3315', 'th', 'nb', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3316', 'th', 'pa', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3317', 'th', 'pl', 'tajski');
INSERT INTO arcp_icl_languages_translations VALUES ('3318', 'th', 'pt-pt', 'Tailandês');
INSERT INTO arcp_icl_languages_translations VALUES ('3319', 'th', 'pt-br', 'Tailandês');
INSERT INTO arcp_icl_languages_translations VALUES ('3320', 'th', 'qu', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3321', 'th', 'ro', 'Tailandeză');
INSERT INTO arcp_icl_languages_translations VALUES ('3322', 'th', 'ru', 'Тайский');
INSERT INTO arcp_icl_languages_translations VALUES ('3323', 'th', 'sl', 'Tajski');
INSERT INTO arcp_icl_languages_translations VALUES ('3324', 'th', 'so', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3325', 'th', 'sq', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3326', 'th', 'sr', 'Тајландски');
INSERT INTO arcp_icl_languages_translations VALUES ('3327', 'th', 'sv', 'Thailändska');
INSERT INTO arcp_icl_languages_translations VALUES ('3328', 'th', 'ta', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3329', 'th', 'th', 'ไทย');
INSERT INTO arcp_icl_languages_translations VALUES ('3330', 'th', 'tr', 'Tayca');
INSERT INTO arcp_icl_languages_translations VALUES ('3331', 'th', 'uk', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3332', 'th', 'ur', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3333', 'th', 'uz', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3334', 'th', 'vi', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3335', 'th', 'yi', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3336', 'th', 'zh-hans', '泰语');
INSERT INTO arcp_icl_languages_translations VALUES ('3337', 'th', 'zu', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3338', 'th', 'zh-hant', '泰語');
INSERT INTO arcp_icl_languages_translations VALUES ('3339', 'th', 'ms', 'Thai');
INSERT INTO arcp_icl_languages_translations VALUES ('3340', 'tr', 'en', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3341', 'tr', 'es', 'Turco');
INSERT INTO arcp_icl_languages_translations VALUES ('3342', 'tr', 'de', 'Türkisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3343', 'tr', 'fr', 'Turc');
INSERT INTO arcp_icl_languages_translations VALUES ('3344', 'tr', 'ar', 'التركية');
INSERT INTO arcp_icl_languages_translations VALUES ('3345', 'tr', 'bs', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3346', 'tr', 'bg', 'Турски');
INSERT INTO arcp_icl_languages_translations VALUES ('3347', 'tr', 'ca', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3348', 'tr', 'cs', 'Turečtina');
INSERT INTO arcp_icl_languages_translations VALUES ('3349', 'tr', 'sk', 'Turečtina');
INSERT INTO arcp_icl_languages_translations VALUES ('3350', 'tr', 'cy', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3351', 'tr', 'da', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3352', 'tr', 'el', 'Τουρκικα');
INSERT INTO arcp_icl_languages_translations VALUES ('3353', 'tr', 'eo', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3354', 'tr', 'et', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3355', 'tr', 'eu', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3356', 'tr', 'fa', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3357', 'tr', 'fi', 'turkki');
INSERT INTO arcp_icl_languages_translations VALUES ('3358', 'tr', 'ga', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3359', 'tr', 'he', 'תורכית');
INSERT INTO arcp_icl_languages_translations VALUES ('3360', 'tr', 'hi', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3361', 'tr', 'hr', 'Turski');
INSERT INTO arcp_icl_languages_translations VALUES ('3362', 'tr', 'hu', 'török');
INSERT INTO arcp_icl_languages_translations VALUES ('3363', 'tr', 'hy', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3364', 'tr', 'id', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3365', 'tr', 'is', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3366', 'tr', 'it', 'Turco');
INSERT INTO arcp_icl_languages_translations VALUES ('3367', 'tr', 'ja', 'トルコ語');
INSERT INTO arcp_icl_languages_translations VALUES ('3368', 'tr', 'ko', '터어키어');
INSERT INTO arcp_icl_languages_translations VALUES ('3369', 'tr', 'ku', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3370', 'tr', 'la', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3371', 'tr', 'lv', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3372', 'tr', 'lt', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3373', 'tr', 'mk', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3374', 'tr', 'mt', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3375', 'tr', 'mn', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3376', 'tr', 'ne', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3377', 'tr', 'nl', 'Turks');
INSERT INTO arcp_icl_languages_translations VALUES ('3378', 'tr', 'nb', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3379', 'tr', 'pa', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3380', 'tr', 'pl', 'turecki');
INSERT INTO arcp_icl_languages_translations VALUES ('3381', 'tr', 'pt-pt', 'Turco');
INSERT INTO arcp_icl_languages_translations VALUES ('3382', 'tr', 'pt-br', 'Turco');
INSERT INTO arcp_icl_languages_translations VALUES ('3383', 'tr', 'qu', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3384', 'tr', 'ro', 'Turcă');
INSERT INTO arcp_icl_languages_translations VALUES ('3385', 'tr', 'ru', 'Турецкий');
INSERT INTO arcp_icl_languages_translations VALUES ('3386', 'tr', 'sl', 'Turščina');
INSERT INTO arcp_icl_languages_translations VALUES ('3387', 'tr', 'so', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3388', 'tr', 'sq', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3389', 'tr', 'sr', 'турски');
INSERT INTO arcp_icl_languages_translations VALUES ('3390', 'tr', 'sv', 'Turkiska');
INSERT INTO arcp_icl_languages_translations VALUES ('3391', 'tr', 'ta', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3392', 'tr', 'th', 'ตุรกี');
INSERT INTO arcp_icl_languages_translations VALUES ('3393', 'tr', 'tr', 'Türkçe');
INSERT INTO arcp_icl_languages_translations VALUES ('3394', 'tr', 'uk', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3395', 'tr', 'ur', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3396', 'tr', 'uz', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3397', 'tr', 'vi', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3398', 'tr', 'yi', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3399', 'tr', 'zh-hans', '土耳其语');
INSERT INTO arcp_icl_languages_translations VALUES ('3400', 'tr', 'zu', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3401', 'tr', 'zh-hant', '土耳其語');
INSERT INTO arcp_icl_languages_translations VALUES ('3402', 'tr', 'ms', 'Turkish');
INSERT INTO arcp_icl_languages_translations VALUES ('3403', 'uk', 'en', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3404', 'uk', 'es', 'Ucraniano');
INSERT INTO arcp_icl_languages_translations VALUES ('3405', 'uk', 'de', 'Ukrainisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3406', 'uk', 'fr', 'Ukrainien');
INSERT INTO arcp_icl_languages_translations VALUES ('3407', 'uk', 'ar', 'الأوكرانية');
INSERT INTO arcp_icl_languages_translations VALUES ('3408', 'uk', 'bs', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3409', 'uk', 'bg', 'Украински');
INSERT INTO arcp_icl_languages_translations VALUES ('3410', 'uk', 'ca', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3411', 'uk', 'cs', 'Ukrajinský');
INSERT INTO arcp_icl_languages_translations VALUES ('3412', 'uk', 'sk', 'Ukrajinčina');
INSERT INTO arcp_icl_languages_translations VALUES ('3413', 'uk', 'cy', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3414', 'uk', 'da', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3415', 'uk', 'el', 'Ουκρανικα');
INSERT INTO arcp_icl_languages_translations VALUES ('3416', 'uk', 'eo', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3417', 'uk', 'et', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3418', 'uk', 'eu', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3419', 'uk', 'fa', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3420', 'uk', 'fi', 'ukraina');
INSERT INTO arcp_icl_languages_translations VALUES ('3421', 'uk', 'ga', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3422', 'uk', 'he', 'אוקראינית');
INSERT INTO arcp_icl_languages_translations VALUES ('3423', 'uk', 'hi', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3424', 'uk', 'hr', 'Ukrajinski');
INSERT INTO arcp_icl_languages_translations VALUES ('3425', 'uk', 'hu', 'ukrán');
INSERT INTO arcp_icl_languages_translations VALUES ('3426', 'uk', 'hy', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3427', 'uk', 'id', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3428', 'uk', 'is', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3429', 'uk', 'it', 'Ucraino');
INSERT INTO arcp_icl_languages_translations VALUES ('3430', 'uk', 'ja', 'ウクライナ語');
INSERT INTO arcp_icl_languages_translations VALUES ('3431', 'uk', 'ko', '우크라이나어');
INSERT INTO arcp_icl_languages_translations VALUES ('3432', 'uk', 'ku', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3433', 'uk', 'la', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3434', 'uk', 'lv', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3435', 'uk', 'lt', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3436', 'uk', 'mk', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3437', 'uk', 'mt', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3438', 'uk', 'mn', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3439', 'uk', 'ne', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3440', 'uk', 'nl', 'Oekraïens');
INSERT INTO arcp_icl_languages_translations VALUES ('3441', 'uk', 'nb', 'Ukrainsk');
INSERT INTO arcp_icl_languages_translations VALUES ('3442', 'uk', 'pa', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3443', 'uk', 'pl', 'ukraiński');
INSERT INTO arcp_icl_languages_translations VALUES ('3444', 'uk', 'pt-pt', 'Ucraniano');
INSERT INTO arcp_icl_languages_translations VALUES ('3445', 'uk', 'pt-br', 'Ucraniano');
INSERT INTO arcp_icl_languages_translations VALUES ('3446', 'uk', 'qu', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3447', 'uk', 'ro', 'Ucrainiană');
INSERT INTO arcp_icl_languages_translations VALUES ('3448', 'uk', 'ru', 'Украинский');
INSERT INTO arcp_icl_languages_translations VALUES ('3449', 'uk', 'sl', 'Ukrajinski');
INSERT INTO arcp_icl_languages_translations VALUES ('3450', 'uk', 'so', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3451', 'uk', 'sq', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3452', 'uk', 'sr', 'украјински');
INSERT INTO arcp_icl_languages_translations VALUES ('3453', 'uk', 'sv', 'Ukrainska');
INSERT INTO arcp_icl_languages_translations VALUES ('3454', 'uk', 'ta', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3455', 'uk', 'th', 'ยูเครน');
INSERT INTO arcp_icl_languages_translations VALUES ('3456', 'uk', 'tr', 'Ukraynaca');
INSERT INTO arcp_icl_languages_translations VALUES ('3457', 'uk', 'uk', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3458', 'uk', 'ur', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3459', 'uk', 'uz', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3460', 'uk', 'vi', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3461', 'uk', 'yi', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3462', 'uk', 'zh-hans', '乌克兰语');
INSERT INTO arcp_icl_languages_translations VALUES ('3463', 'uk', 'zu', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3464', 'uk', 'zh-hant', '烏克蘭語');
INSERT INTO arcp_icl_languages_translations VALUES ('3465', 'uk', 'ms', 'Ukrainian');
INSERT INTO arcp_icl_languages_translations VALUES ('3466', 'ur', 'en', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3467', 'ur', 'es', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3468', 'ur', 'de', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3469', 'ur', 'fr', 'Ourdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3470', 'ur', 'ar', 'الأردية');
INSERT INTO arcp_icl_languages_translations VALUES ('3471', 'ur', 'bs', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3472', 'ur', 'bg', 'Урду');
INSERT INTO arcp_icl_languages_translations VALUES ('3473', 'ur', 'ca', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3474', 'ur', 'cs', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3475', 'ur', 'sk', 'Urdština');
INSERT INTO arcp_icl_languages_translations VALUES ('3476', 'ur', 'cy', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3477', 'ur', 'da', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3478', 'ur', 'el', 'Ουρντου');
INSERT INTO arcp_icl_languages_translations VALUES ('3479', 'ur', 'eo', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3480', 'ur', 'et', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3481', 'ur', 'eu', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3482', 'ur', 'fa', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3483', 'ur', 'fi', 'urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3484', 'ur', 'ga', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3485', 'ur', 'he', 'אורדו');
INSERT INTO arcp_icl_languages_translations VALUES ('3486', 'ur', 'hi', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3487', 'ur', 'hr', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3488', 'ur', 'hu', 'urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3489', 'ur', 'hy', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3490', 'ur', 'id', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3491', 'ur', 'is', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3492', 'ur', 'it', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3493', 'ur', 'ja', 'ウルドゥー語');
INSERT INTO arcp_icl_languages_translations VALUES ('3494', 'ur', 'ko', '우르두어');
INSERT INTO arcp_icl_languages_translations VALUES ('3495', 'ur', 'ku', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3496', 'ur', 'la', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3497', 'ur', 'lv', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3498', 'ur', 'lt', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3499', 'ur', 'mk', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3500', 'ur', 'mt', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3501', 'ur', 'mn', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3502', 'ur', 'ne', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3503', 'ur', 'nl', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3504', 'ur', 'nb', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3505', 'ur', 'pa', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3506', 'ur', 'pl', 'urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3507', 'ur', 'pt-pt', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3508', 'ur', 'pt-br', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3509', 'ur', 'qu', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3510', 'ur', 'ro', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3511', 'ur', 'ru', 'Урду');
INSERT INTO arcp_icl_languages_translations VALUES ('3512', 'ur', 'sl', 'Urdujščina');
INSERT INTO arcp_icl_languages_translations VALUES ('3513', 'ur', 'so', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3514', 'ur', 'sq', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3515', 'ur', 'sr', 'урду');
INSERT INTO arcp_icl_languages_translations VALUES ('3516', 'ur', 'sv', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3517', 'ur', 'ta', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3518', 'ur', 'th', 'อุรดู');
INSERT INTO arcp_icl_languages_translations VALUES ('3519', 'ur', 'tr', 'Urduca');
INSERT INTO arcp_icl_languages_translations VALUES ('3520', 'ur', 'uk', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3521', 'ur', 'ur', 'اردو ');
INSERT INTO arcp_icl_languages_translations VALUES ('3522', 'ur', 'uz', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3523', 'ur', 'vi', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3524', 'ur', 'yi', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3525', 'ur', 'zh-hans', '乌尔都语');
INSERT INTO arcp_icl_languages_translations VALUES ('3526', 'ur', 'zu', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3527', 'ur', 'zh-hant', '烏爾都語');
INSERT INTO arcp_icl_languages_translations VALUES ('3528', 'ur', 'ms', 'Urdu');
INSERT INTO arcp_icl_languages_translations VALUES ('3529', 'uz', 'en', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3530', 'uz', 'es', 'Uzbeko');
INSERT INTO arcp_icl_languages_translations VALUES ('3531', 'uz', 'de', 'Usbekisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3532', 'uz', 'fr', 'Ouzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3533', 'uz', 'ar', 'الاوزباكية');
INSERT INTO arcp_icl_languages_translations VALUES ('3534', 'uz', 'bs', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3535', 'uz', 'bg', 'Узбекски');
INSERT INTO arcp_icl_languages_translations VALUES ('3536', 'uz', 'ca', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3537', 'uz', 'cs', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3538', 'uz', 'sk', 'Uzbekčina');
INSERT INTO arcp_icl_languages_translations VALUES ('3539', 'uz', 'cy', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3540', 'uz', 'da', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3541', 'uz', 'el', 'Ουζμπεκικα');
INSERT INTO arcp_icl_languages_translations VALUES ('3542', 'uz', 'eo', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3543', 'uz', 'et', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3544', 'uz', 'eu', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3545', 'uz', 'fa', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3546', 'uz', 'fi', 'uzbekki');
INSERT INTO arcp_icl_languages_translations VALUES ('3547', 'uz', 'ga', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3548', 'uz', 'he', 'אוזבקית');
INSERT INTO arcp_icl_languages_translations VALUES ('3549', 'uz', 'hi', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3550', 'uz', 'hr', 'Uzbečki');
INSERT INTO arcp_icl_languages_translations VALUES ('3551', 'uz', 'hu', 'üzbég');
INSERT INTO arcp_icl_languages_translations VALUES ('3552', 'uz', 'hy', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3553', 'uz', 'id', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3554', 'uz', 'is', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3555', 'uz', 'it', 'Uzbeco');
INSERT INTO arcp_icl_languages_translations VALUES ('3556', 'uz', 'ja', 'ウズベク語');
INSERT INTO arcp_icl_languages_translations VALUES ('3557', 'uz', 'ko', '우즈베크어');
INSERT INTO arcp_icl_languages_translations VALUES ('3558', 'uz', 'ku', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3559', 'uz', 'la', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3560', 'uz', 'lv', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3561', 'uz', 'lt', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3562', 'uz', 'mk', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3563', 'uz', 'mt', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3564', 'uz', 'mn', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3565', 'uz', 'ne', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3566', 'uz', 'nl', 'Oezbeeks');
INSERT INTO arcp_icl_languages_translations VALUES ('3567', 'uz', 'nb', 'Usbekisk');
INSERT INTO arcp_icl_languages_translations VALUES ('3568', 'uz', 'pa', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3569', 'uz', 'pl', 'uzbecki');
INSERT INTO arcp_icl_languages_translations VALUES ('3570', 'uz', 'pt-pt', 'Uzbeque');
INSERT INTO arcp_icl_languages_translations VALUES ('3571', 'uz', 'pt-br', 'Uzbeque');
INSERT INTO arcp_icl_languages_translations VALUES ('3572', 'uz', 'qu', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3573', 'uz', 'ro', 'Uzbecă');
INSERT INTO arcp_icl_languages_translations VALUES ('3574', 'uz', 'ru', 'Узбекский');
INSERT INTO arcp_icl_languages_translations VALUES ('3575', 'uz', 'sl', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3576', 'uz', 'so', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3577', 'uz', 'sq', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3578', 'uz', 'sr', 'Узбек');
INSERT INTO arcp_icl_languages_translations VALUES ('3579', 'uz', 'sv', 'Uzbekiska');
INSERT INTO arcp_icl_languages_translations VALUES ('3580', 'uz', 'ta', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3581', 'uz', 'th', 'อุซเบก');
INSERT INTO arcp_icl_languages_translations VALUES ('3582', 'uz', 'tr', 'Özbekçe');
INSERT INTO arcp_icl_languages_translations VALUES ('3583', 'uz', 'uk', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3584', 'uz', 'ur', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3585', 'uz', 'uz', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3586', 'uz', 'vi', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3587', 'uz', 'yi', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3588', 'uz', 'zh-hans', '乌兹别克语');
INSERT INTO arcp_icl_languages_translations VALUES ('3589', 'uz', 'zu', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3590', 'uz', 'zh-hant', '烏茲別克語');
INSERT INTO arcp_icl_languages_translations VALUES ('3591', 'uz', 'ms', 'Uzbek');
INSERT INTO arcp_icl_languages_translations VALUES ('3592', 'vi', 'en', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3593', 'vi', 'es', 'Vietnamita');
INSERT INTO arcp_icl_languages_translations VALUES ('3594', 'vi', 'de', 'Vietnamesisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3595', 'vi', 'fr', 'Vietnamien');
INSERT INTO arcp_icl_languages_translations VALUES ('3596', 'vi', 'ar', 'الفيتنامية');
INSERT INTO arcp_icl_languages_translations VALUES ('3597', 'vi', 'bs', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3598', 'vi', 'bg', 'Виетнамски');
INSERT INTO arcp_icl_languages_translations VALUES ('3599', 'vi', 'ca', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3600', 'vi', 'cs', 'Vietnamský');
INSERT INTO arcp_icl_languages_translations VALUES ('3601', 'vi', 'sk', 'Vietnamčina');
INSERT INTO arcp_icl_languages_translations VALUES ('3602', 'vi', 'cy', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3603', 'vi', 'da', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3604', 'vi', 'el', 'Βιετναμεζικα');
INSERT INTO arcp_icl_languages_translations VALUES ('3605', 'vi', 'eo', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3606', 'vi', 'et', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3607', 'vi', 'eu', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3608', 'vi', 'fa', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3609', 'vi', 'fi', 'vietnam');
INSERT INTO arcp_icl_languages_translations VALUES ('3610', 'vi', 'ga', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3611', 'vi', 'he', 'וייטנאמית');
INSERT INTO arcp_icl_languages_translations VALUES ('3612', 'vi', 'hi', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3613', 'vi', 'hr', 'Vijetnamski');
INSERT INTO arcp_icl_languages_translations VALUES ('3614', 'vi', 'hu', 'vietnámi');
INSERT INTO arcp_icl_languages_translations VALUES ('3615', 'vi', 'hy', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3616', 'vi', 'id', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3617', 'vi', 'is', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3618', 'vi', 'it', 'Vietnamita');
INSERT INTO arcp_icl_languages_translations VALUES ('3619', 'vi', 'ja', 'ベトナム語');
INSERT INTO arcp_icl_languages_translations VALUES ('3620', 'vi', 'ko', '베트남어');
INSERT INTO arcp_icl_languages_translations VALUES ('3621', 'vi', 'ku', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3622', 'vi', 'la', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3623', 'vi', 'lv', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3624', 'vi', 'lt', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3625', 'vi', 'mk', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3626', 'vi', 'mt', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3627', 'vi', 'mn', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3628', 'vi', 'ne', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3629', 'vi', 'nl', 'Vietnamees');
INSERT INTO arcp_icl_languages_translations VALUES ('3630', 'vi', 'nb', 'Vietnamesisk');
INSERT INTO arcp_icl_languages_translations VALUES ('3631', 'vi', 'pa', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3632', 'vi', 'pl', 'wietnamski');
INSERT INTO arcp_icl_languages_translations VALUES ('3633', 'vi', 'pt-pt', 'Vietnamita');
INSERT INTO arcp_icl_languages_translations VALUES ('3634', 'vi', 'pt-br', 'Vietnamita');
INSERT INTO arcp_icl_languages_translations VALUES ('3635', 'vi', 'qu', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3636', 'vi', 'ro', 'Vietnameză');
INSERT INTO arcp_icl_languages_translations VALUES ('3637', 'vi', 'ru', 'Вьетнамский');
INSERT INTO arcp_icl_languages_translations VALUES ('3638', 'vi', 'sl', 'Vietnamščina');
INSERT INTO arcp_icl_languages_translations VALUES ('3639', 'vi', 'so', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3640', 'vi', 'sq', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3641', 'vi', 'sr', 'вијетнамски');
INSERT INTO arcp_icl_languages_translations VALUES ('3642', 'vi', 'sv', 'Vietnamesiska');
INSERT INTO arcp_icl_languages_translations VALUES ('3643', 'vi', 'ta', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3644', 'vi', 'th', 'เวียดนาม');
INSERT INTO arcp_icl_languages_translations VALUES ('3645', 'vi', 'tr', 'Vietnamca');
INSERT INTO arcp_icl_languages_translations VALUES ('3646', 'vi', 'uk', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3647', 'vi', 'ur', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3648', 'vi', 'uz', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3649', 'vi', 'vi', 'Tiếng Việt');
INSERT INTO arcp_icl_languages_translations VALUES ('3650', 'vi', 'yi', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3651', 'vi', 'zh-hans', '越南语');
INSERT INTO arcp_icl_languages_translations VALUES ('3652', 'vi', 'zu', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3653', 'vi', 'zh-hant', '越南語');
INSERT INTO arcp_icl_languages_translations VALUES ('3654', 'vi', 'ms', 'Vietnamese');
INSERT INTO arcp_icl_languages_translations VALUES ('3655', 'yi', 'en', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3656', 'yi', 'es', 'Yidis');
INSERT INTO arcp_icl_languages_translations VALUES ('3657', 'yi', 'de', 'Jiddisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3658', 'yi', 'fr', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3659', 'yi', 'ar', 'اليديشية');
INSERT INTO arcp_icl_languages_translations VALUES ('3660', 'yi', 'bs', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3661', 'yi', 'bg', 'Идиш');
INSERT INTO arcp_icl_languages_translations VALUES ('3662', 'yi', 'ca', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3663', 'yi', 'cs', 'Jidiš');
INSERT INTO arcp_icl_languages_translations VALUES ('3664', 'yi', 'sk', 'Jidiš');
INSERT INTO arcp_icl_languages_translations VALUES ('3665', 'yi', 'cy', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3666', 'yi', 'da', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3667', 'yi', 'el', 'Γιντις');
INSERT INTO arcp_icl_languages_translations VALUES ('3668', 'yi', 'eo', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3669', 'yi', 'et', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3670', 'yi', 'eu', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3671', 'yi', 'fa', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3672', 'yi', 'fi', 'jiddi');
INSERT INTO arcp_icl_languages_translations VALUES ('3673', 'yi', 'ga', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3674', 'yi', 'he', 'יידיש');
INSERT INTO arcp_icl_languages_translations VALUES ('3675', 'yi', 'hi', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3676', 'yi', 'hr', 'Jidiš');
INSERT INTO arcp_icl_languages_translations VALUES ('3677', 'yi', 'hu', 'jiddis');
INSERT INTO arcp_icl_languages_translations VALUES ('3678', 'yi', 'hy', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3679', 'yi', 'id', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3680', 'yi', 'is', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3681', 'yi', 'it', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3682', 'yi', 'ja', 'イディッシュ語');
INSERT INTO arcp_icl_languages_translations VALUES ('3683', 'yi', 'ko', '이디시어');
INSERT INTO arcp_icl_languages_translations VALUES ('3684', 'yi', 'ku', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3685', 'yi', 'la', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3686', 'yi', 'lv', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3687', 'yi', 'lt', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3688', 'yi', 'mk', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3689', 'yi', 'mt', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3690', 'yi', 'mn', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3691', 'yi', 'ne', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3692', 'yi', 'nl', 'Jiddisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3693', 'yi', 'nb', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3694', 'yi', 'pa', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3695', 'yi', 'pl', 'jidysz');
INSERT INTO arcp_icl_languages_translations VALUES ('3696', 'yi', 'pt-pt', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3697', 'yi', 'pt-br', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3698', 'yi', 'qu', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3699', 'yi', 'ro', 'Idiş');
INSERT INTO arcp_icl_languages_translations VALUES ('3700', 'yi', 'ru', 'Идиш');
INSERT INTO arcp_icl_languages_translations VALUES ('3701', 'yi', 'sl', 'Jidiš');
INSERT INTO arcp_icl_languages_translations VALUES ('3702', 'yi', 'so', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3703', 'yi', 'sq', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3704', 'yi', 'sr', 'јидиш');
INSERT INTO arcp_icl_languages_translations VALUES ('3705', 'yi', 'sv', 'Jiddisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3706', 'yi', 'ta', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3707', 'yi', 'th', 'ยิชดิช');
INSERT INTO arcp_icl_languages_translations VALUES ('3708', 'yi', 'tr', 'Eski İbranice');
INSERT INTO arcp_icl_languages_translations VALUES ('3709', 'yi', 'uk', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3710', 'yi', 'ur', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3711', 'yi', 'uz', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3712', 'yi', 'vi', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3713', 'yi', 'yi', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3714', 'yi', 'zh-hans', '依地语');
INSERT INTO arcp_icl_languages_translations VALUES ('3715', 'yi', 'zu', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3716', 'yi', 'zh-hant', '依地語');
INSERT INTO arcp_icl_languages_translations VALUES ('3717', 'yi', 'ms', 'Yiddish');
INSERT INTO arcp_icl_languages_translations VALUES ('3718', 'zh-hans', 'en', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3719', 'zh-hans', 'es', 'Chino simplificado');
INSERT INTO arcp_icl_languages_translations VALUES ('3720', 'zh-hans', 'de', 'Vereinfachtes Chinesisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3721', 'zh-hans', 'fr', 'Chinois simplifié');
INSERT INTO arcp_icl_languages_translations VALUES ('3722', 'zh-hans', 'ar', 'الصينية المبسطة');
INSERT INTO arcp_icl_languages_translations VALUES ('3723', 'zh-hans', 'bs', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3724', 'zh-hans', 'bg', 'Китайски  (опростен)');
INSERT INTO arcp_icl_languages_translations VALUES ('3725', 'zh-hans', 'ca', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3726', 'zh-hans', 'cs', 'Čínština ( Zjednodušený )');
INSERT INTO arcp_icl_languages_translations VALUES ('3727', 'zh-hans', 'sk', 'Zjednodušená Čínština');
INSERT INTO arcp_icl_languages_translations VALUES ('3728', 'zh-hans', 'cy', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3729', 'zh-hans', 'da', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3730', 'zh-hans', 'el', 'Κινεζικα (Απλοποιημένα)');
INSERT INTO arcp_icl_languages_translations VALUES ('3731', 'zh-hans', 'eo', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3732', 'zh-hans', 'et', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3733', 'zh-hans', 'eu', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3734', 'zh-hans', 'fa', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3735', 'zh-hans', 'fi', 'kiina');
INSERT INTO arcp_icl_languages_translations VALUES ('3736', 'zh-hans', 'ga', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3737', 'zh-hans', 'he', 'סינית');
INSERT INTO arcp_icl_languages_translations VALUES ('3738', 'zh-hans', 'hi', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3739', 'zh-hans', 'hr', 'Kineski (pojednostavljeni)');
INSERT INTO arcp_icl_languages_translations VALUES ('3740', 'zh-hans', 'hu', 'egyszerűsített kínai');
INSERT INTO arcp_icl_languages_translations VALUES ('3741', 'zh-hans', 'hy', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3742', 'zh-hans', 'id', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3743', 'zh-hans', 'is', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3744', 'zh-hans', 'it', 'Cinese semplificato');
INSERT INTO arcp_icl_languages_translations VALUES ('3745', 'zh-hans', 'ja', '簡体中国語');
INSERT INTO arcp_icl_languages_translations VALUES ('3746', 'zh-hans', 'ko', '중국어 간체');
INSERT INTO arcp_icl_languages_translations VALUES ('3747', 'zh-hans', 'ku', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3748', 'zh-hans', 'la', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3749', 'zh-hans', 'lv', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3750', 'zh-hans', 'lt', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3751', 'zh-hans', 'mk', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3752', 'zh-hans', 'mt', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3753', 'zh-hans', 'mn', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3754', 'zh-hans', 'ne', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3755', 'zh-hans', 'nl', 'Vereenvoudigd Chinees');
INSERT INTO arcp_icl_languages_translations VALUES ('3756', 'zh-hans', 'nb', 'Kinesisk (forenklet)');
INSERT INTO arcp_icl_languages_translations VALUES ('3757', 'zh-hans', 'pa', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3758', 'zh-hans', 'pl', 'chiński uproszczony');
INSERT INTO arcp_icl_languages_translations VALUES ('3759', 'zh-hans', 'pt-pt', 'Chinês (Simplificado)');
INSERT INTO arcp_icl_languages_translations VALUES ('3760', 'zh-hans', 'pt-br', 'Chinês (Simplificado)');
INSERT INTO arcp_icl_languages_translations VALUES ('3761', 'zh-hans', 'qu', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3762', 'zh-hans', 'ro', 'Chineza simplificată');
INSERT INTO arcp_icl_languages_translations VALUES ('3763', 'zh-hans', 'ru', 'Китайский (упрощенный)');
INSERT INTO arcp_icl_languages_translations VALUES ('3764', 'zh-hans', 'sl', 'Kitajščina (poenostavljena )');
INSERT INTO arcp_icl_languages_translations VALUES ('3765', 'zh-hans', 'so', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3766', 'zh-hans', 'sq', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3767', 'zh-hans', 'sr', 'Кинески (поједностављени)');
INSERT INTO arcp_icl_languages_translations VALUES ('3768', 'zh-hans', 'sv', 'Förenklad kinesiska');
INSERT INTO arcp_icl_languages_translations VALUES ('3769', 'zh-hans', 'ta', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3770', 'zh-hans', 'th', 'จีนประยุกต์');
INSERT INTO arcp_icl_languages_translations VALUES ('3771', 'zh-hans', 'tr', 'Modern Çince');
INSERT INTO arcp_icl_languages_translations VALUES ('3772', 'zh-hans', 'uk', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3773', 'zh-hans', 'ur', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3774', 'zh-hans', 'uz', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3775', 'zh-hans', 'vi', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3776', 'zh-hans', 'yi', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3777', 'zh-hans', 'zh-hans', '简体中文');
INSERT INTO arcp_icl_languages_translations VALUES ('3778', 'zh-hans', 'zu', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3779', 'zh-hans', 'zh-hant', '簡體中文');
INSERT INTO arcp_icl_languages_translations VALUES ('3780', 'zh-hans', 'ms', 'Chinese (Simplified)');
INSERT INTO arcp_icl_languages_translations VALUES ('3781', 'zu', 'en', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3782', 'zu', 'es', 'Zulú');
INSERT INTO arcp_icl_languages_translations VALUES ('3783', 'zu', 'de', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3784', 'zu', 'fr', 'Zoulou');
INSERT INTO arcp_icl_languages_translations VALUES ('3785', 'zu', 'ar', 'الزولو');
INSERT INTO arcp_icl_languages_translations VALUES ('3786', 'zu', 'bs', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3787', 'zu', 'bg', 'Зулу');
INSERT INTO arcp_icl_languages_translations VALUES ('3788', 'zu', 'ca', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3789', 'zu', 'cs', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3790', 'zu', 'sk', 'Jazyk Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3791', 'zu', 'cy', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3792', 'zu', 'da', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3793', 'zu', 'el', 'Ζουλου');
INSERT INTO arcp_icl_languages_translations VALUES ('3794', 'zu', 'eo', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3795', 'zu', 'et', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3796', 'zu', 'eu', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3797', 'zu', 'fa', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3798', 'zu', 'fi', 'zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3799', 'zu', 'ga', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3800', 'zu', 'he', 'זולו ');
INSERT INTO arcp_icl_languages_translations VALUES ('3801', 'zu', 'hi', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3802', 'zu', 'hr', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3803', 'zu', 'hu', 'zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3804', 'zu', 'hy', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3805', 'zu', 'id', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3806', 'zu', 'is', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3807', 'zu', 'it', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3808', 'zu', 'ja', 'ズールー語');
INSERT INTO arcp_icl_languages_translations VALUES ('3809', 'zu', 'ko', '줄루어');
INSERT INTO arcp_icl_languages_translations VALUES ('3810', 'zu', 'ku', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3811', 'zu', 'la', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3812', 'zu', 'lv', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3813', 'zu', 'lt', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3814', 'zu', 'mk', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3815', 'zu', 'mt', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3816', 'zu', 'mn', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3817', 'zu', 'ne', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3818', 'zu', 'nl', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3819', 'zu', 'nb', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3820', 'zu', 'pa', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3821', 'zu', 'pl', 'zuluski');
INSERT INTO arcp_icl_languages_translations VALUES ('3822', 'zu', 'pt-pt', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3823', 'zu', 'pt-br', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3824', 'zu', 'qu', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3825', 'zu', 'ro', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3826', 'zu', 'ru', 'Зулу');
INSERT INTO arcp_icl_languages_translations VALUES ('3827', 'zu', 'sl', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3828', 'zu', 'so', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3829', 'zu', 'sq', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3830', 'zu', 'sr', 'зулу');
INSERT INTO arcp_icl_languages_translations VALUES ('3831', 'zu', 'sv', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3832', 'zu', 'ta', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3833', 'zu', 'th', 'ซูลู');
INSERT INTO arcp_icl_languages_translations VALUES ('3834', 'zu', 'tr', 'Zulu dili');
INSERT INTO arcp_icl_languages_translations VALUES ('3835', 'zu', 'uk', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3836', 'zu', 'ur', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3837', 'zu', 'uz', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3838', 'zu', 'vi', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3839', 'zu', 'yi', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3840', 'zu', 'zh-hans', '祖鲁语');
INSERT INTO arcp_icl_languages_translations VALUES ('3841', 'zu', 'zu', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3842', 'zu', 'zh-hant', '祖魯語');
INSERT INTO arcp_icl_languages_translations VALUES ('3843', 'zu', 'ms', 'Zulu');
INSERT INTO arcp_icl_languages_translations VALUES ('3844', 'zh-hant', 'en', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3845', 'zh-hant', 'es', 'Chino tradicional');
INSERT INTO arcp_icl_languages_translations VALUES ('3846', 'zh-hant', 'de', 'Traditionelles Chinesisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3847', 'zh-hant', 'fr', 'Chinois traditionnel');
INSERT INTO arcp_icl_languages_translations VALUES ('3848', 'zh-hant', 'ar', 'الصينية التقليدية');
INSERT INTO arcp_icl_languages_translations VALUES ('3849', 'zh-hant', 'bs', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3850', 'zh-hant', 'bg', 'Китайски (традиционен)');
INSERT INTO arcp_icl_languages_translations VALUES ('3851', 'zh-hant', 'ca', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3852', 'zh-hant', 'cs', 'Čínština (tradiční )');
INSERT INTO arcp_icl_languages_translations VALUES ('3853', 'zh-hant', 'sk', 'Tradičná Čínština');
INSERT INTO arcp_icl_languages_translations VALUES ('3854', 'zh-hant', 'cy', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3855', 'zh-hant', 'da', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3856', 'zh-hant', 'el', 'Κινεζικα (Παραδοσιακά)');
INSERT INTO arcp_icl_languages_translations VALUES ('3857', 'zh-hant', 'eo', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3858', 'zh-hant', 'et', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3859', 'zh-hant', 'eu', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3860', 'zh-hant', 'fa', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3861', 'zh-hant', 'fi', 'perinteinen kiina');
INSERT INTO arcp_icl_languages_translations VALUES ('3862', 'zh-hant', 'ga', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3863', 'zh-hant', 'he', 'סינית מסורתית');
INSERT INTO arcp_icl_languages_translations VALUES ('3864', 'zh-hant', 'hi', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3865', 'zh-hant', 'hr', 'Kineski (tradicionalni)');
INSERT INTO arcp_icl_languages_translations VALUES ('3866', 'zh-hant', 'hu', 'hagyományos kínai');
INSERT INTO arcp_icl_languages_translations VALUES ('3867', 'zh-hant', 'hy', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3868', 'zh-hant', 'id', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3869', 'zh-hant', 'is', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3870', 'zh-hant', 'it', 'Cinese tradizionale');
INSERT INTO arcp_icl_languages_translations VALUES ('3871', 'zh-hant', 'ja', '繁体中国語');
INSERT INTO arcp_icl_languages_translations VALUES ('3872', 'zh-hant', 'ko', '중국어 번체');
INSERT INTO arcp_icl_languages_translations VALUES ('3873', 'zh-hant', 'ku', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3874', 'zh-hant', 'la', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3875', 'zh-hant', 'lv', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3876', 'zh-hant', 'lt', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3877', 'zh-hant', 'mk', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3878', 'zh-hant', 'mt', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3879', 'zh-hant', 'mn', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3880', 'zh-hant', 'ne', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3881', 'zh-hant', 'nl', 'Traditioneel Chinees');
INSERT INTO arcp_icl_languages_translations VALUES ('3882', 'zh-hant', 'nb', 'Kinesisk (tradisjonell)');
INSERT INTO arcp_icl_languages_translations VALUES ('3883', 'zh-hant', 'pa', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3884', 'zh-hant', 'pl', 'chiński tradycyjny');
INSERT INTO arcp_icl_languages_translations VALUES ('3885', 'zh-hant', 'pt-pt', 'Chinês (Tradicional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3886', 'zh-hant', 'pt-br', 'Chinês (Tradicional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3887', 'zh-hant', 'qu', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3888', 'zh-hant', 'ro', 'Chineza tradiţională');
INSERT INTO arcp_icl_languages_translations VALUES ('3889', 'zh-hant', 'ru', 'Китайский (традиционный)');
INSERT INTO arcp_icl_languages_translations VALUES ('3890', 'zh-hant', 'sl', 'Kitajščina (tradicionalna)');
INSERT INTO arcp_icl_languages_translations VALUES ('3891', 'zh-hant', 'so', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3892', 'zh-hant', 'sq', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3893', 'zh-hant', 'sr', 'Кинески (традиционални)');
INSERT INTO arcp_icl_languages_translations VALUES ('3894', 'zh-hant', 'sv', 'Traditionell kinesiska');
INSERT INTO arcp_icl_languages_translations VALUES ('3895', 'zh-hant', 'ta', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3896', 'zh-hant', 'th', 'จีนดั้งเดิม');
INSERT INTO arcp_icl_languages_translations VALUES ('3897', 'zh-hant', 'tr', 'Klasik Çince');
INSERT INTO arcp_icl_languages_translations VALUES ('3898', 'zh-hant', 'uk', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3899', 'zh-hant', 'ur', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3900', 'zh-hant', 'uz', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3901', 'zh-hant', 'vi', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3902', 'zh-hant', 'yi', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3903', 'zh-hant', 'zh-hans', '繁体中文');
INSERT INTO arcp_icl_languages_translations VALUES ('3904', 'zh-hant', 'zu', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3905', 'zh-hant', 'zh-hant', '繁體中文');
INSERT INTO arcp_icl_languages_translations VALUES ('3906', 'zh-hant', 'ms', 'Chinese (Traditional)');
INSERT INTO arcp_icl_languages_translations VALUES ('3907', 'ms', 'en', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3908', 'ms', 'es', 'Malayo');
INSERT INTO arcp_icl_languages_translations VALUES ('3909', 'ms', 'de', 'Malaiisch');
INSERT INTO arcp_icl_languages_translations VALUES ('3910', 'ms', 'fr', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3911', 'ms', 'ar', 'لغة الملايو');
INSERT INTO arcp_icl_languages_translations VALUES ('3912', 'ms', 'bs', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3913', 'ms', 'bg', 'Малайски');
INSERT INTO arcp_icl_languages_translations VALUES ('3914', 'ms', 'ca', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3915', 'ms', 'cs', 'Malajský');
INSERT INTO arcp_icl_languages_translations VALUES ('3916', 'ms', 'sk', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3917', 'ms', 'cy', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3918', 'ms', 'da', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3919', 'ms', 'el', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3920', 'ms', 'eo', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3921', 'ms', 'et', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3922', 'ms', 'eu', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3923', 'ms', 'fa', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3924', 'ms', 'fi', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3925', 'ms', 'ga', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3926', 'ms', 'he', 'מלאית');
INSERT INTO arcp_icl_languages_translations VALUES ('3927', 'ms', 'hi', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3928', 'ms', 'hr', 'Malajski');
INSERT INTO arcp_icl_languages_translations VALUES ('3929', 'ms', 'hu', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3930', 'ms', 'hy', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3931', 'ms', 'id', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3932', 'ms', 'is', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3933', 'ms', 'it', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3934', 'ms', 'ja', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3935', 'ms', 'ko', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3936', 'ms', 'ku', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3937', 'ms', 'la', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3938', 'ms', 'lv', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3939', 'ms', 'lt', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3940', 'ms', 'mk', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3941', 'ms', 'mt', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3942', 'ms', 'mn', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3943', 'ms', 'ne', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3944', 'ms', 'nl', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3945', 'ms', 'nb', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3946', 'ms', 'pa', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3947', 'ms', 'pl', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3948', 'ms', 'pt-pt', 'Malaio');
INSERT INTO arcp_icl_languages_translations VALUES ('3949', 'ms', 'pt-br', 'Malaio');
INSERT INTO arcp_icl_languages_translations VALUES ('3950', 'ms', 'qu', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3951', 'ms', 'ro', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3952', 'ms', 'ru', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3953', 'ms', 'sl', 'Malajščina');
INSERT INTO arcp_icl_languages_translations VALUES ('3954', 'ms', 'so', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3955', 'ms', 'sq', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3956', 'ms', 'sr', 'малајски');
INSERT INTO arcp_icl_languages_translations VALUES ('3957', 'ms', 'sv', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3958', 'ms', 'ta', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3959', 'ms', 'th', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3960', 'ms', 'tr', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3961', 'ms', 'uk', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3962', 'ms', 'ur', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3963', 'ms', 'uz', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3964', 'ms', 'vi', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3965', 'ms', 'yi', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3966', 'ms', 'zh-hans', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3967', 'ms', 'zu', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3968', 'ms', 'zh-hant', 'Malay');
INSERT INTO arcp_icl_languages_translations VALUES ('3969', 'ms', 'ms', 'Melayu');

-- ----------------------------
-- Table structure for `arcp_icl_locale_map`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_locale_map`;
CREATE TABLE `arcp_icl_locale_map` (
  `code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `code` (`code`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_locale_map
-- ----------------------------
INSERT INTO arcp_icl_locale_map VALUES ('en', 'en_US');
INSERT INTO arcp_icl_locale_map VALUES ('vi', 'vi_VN');

-- ----------------------------
-- Table structure for `arcp_icl_message_status`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_message_status`;
CREATE TABLE `arcp_icl_message_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) unsigned NOT NULL,
  `object_id` bigint(20) unsigned NOT NULL,
  `from_language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rid` (`rid`),
  KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_message_status
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_node`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_node`;
CREATE TABLE `arcp_icl_node` (
  `nid` bigint(20) NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `links_fixed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_node
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_reminders`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_reminders`;
CREATE TABLE `arcp_icl_reminders` (
  `id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `can_delete` tinyint(4) NOT NULL,
  `show` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_reminders
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_strings`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_strings`;
CREATE TABLE `arcp_icl_strings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` varchar(160) CHARACTER SET utf8 NOT NULL,
  `name` varchar(160) CHARACTER SET utf8 NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `string_package_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LINE',
  `title` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `gettext_context` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain_name_context_md5` varchar(32) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_domain_name_context_md5` (`domain_name_context_md5`),
  KEY `language_context` (`language`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_strings
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_string_positions`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_string_positions`;
CREATE TABLE `arcp_icl_string_positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) NOT NULL,
  `kind` tinyint(4) DEFAULT NULL,
  `position_in_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_id` (`string_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_string_positions
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_string_status`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_string_status`;
CREATE TABLE `arcp_icl_string_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL,
  `string_translation_id` bigint(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_translation_id` (`string_translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_string_status
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_string_translations`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_string_translations`;
CREATE TABLE `arcp_icl_string_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) unsigned NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `translator_id` bigint(20) unsigned DEFAULT NULL,
  `translation_service` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `batch_id` int(11) NOT NULL DEFAULT '0',
  `translation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `string_language` (`string_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_string_translations
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_translate`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_translate`;
CREATE TABLE `arcp_icl_translate` (
  `tid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) unsigned NOT NULL,
  `content_id` bigint(20) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `field_type` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_format` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_translate` tinyint(4) NOT NULL,
  `field_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_data_translated` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_finished` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_translate
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_translate_job`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_translate_job`;
CREATE TABLE `arcp_icl_translate_job` (
  `job_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) unsigned NOT NULL,
  `translator_id` int(10) unsigned NOT NULL,
  `translated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `manager_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`job_id`),
  KEY `rid` (`rid`,`translator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_translate_job
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_translations`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_translations`;
CREATE TABLE `arcp_icl_translations` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `element_type` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post_post',
  `element_id` bigint(20) DEFAULT NULL,
  `trid` bigint(20) NOT NULL,
  `language_code` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_language_code` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `trid_lang` (`trid`,`language_code`),
  UNIQUE KEY `el_type_id` (`element_type`,`element_id`),
  KEY `trid` (`trid`),
  KEY `id_type_language` (`element_id`,`element_type`,`language_code`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_translations
-- ----------------------------
INSERT INTO arcp_icl_translations VALUES ('1', 'post_page', '3', '3', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('2', 'post_page', '2', '2', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('3', 'post_post', '1', '1', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('4', 'tax_category', '1', '5', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('5', 'comment', '1', '7', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('6', 'tax_category', '2', '5', 'en', 'vi');
INSERT INTO arcp_icl_translations VALUES ('7', 'post_page', '8', '8', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('8', 'post_page', '10', '9', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('9', 'post_page', '12', '10', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('10', 'post_page', '14', '11', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('11', 'post_page', '16', '8', 'en', 'vi');
INSERT INTO arcp_icl_translations VALUES ('12', 'tax_nav_menu', '3', '12', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('13', 'post_nav_menu_item', '18', '13', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('14', 'post_nav_menu_item', '19', '14', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('15', 'post_nav_menu_item', '20', '15', 'vi', null);
INSERT INTO arcp_icl_translations VALUES ('16', 'post_nav_menu_item', '21', '16', 'vi', null);

-- ----------------------------
-- Table structure for `arcp_icl_translation_batches`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_translation_batches`;
CREATE TABLE `arcp_icl_translation_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp_id` int(11) DEFAULT NULL,
  `ts_url` text COLLATE utf8mb4_unicode_ci,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_translation_batches
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_icl_translation_status`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_icl_translation_status`;
CREATE TABLE `arcp_icl_translation_status` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `translation_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `translator_id` bigint(20) NOT NULL,
  `needs_update` tinyint(4) NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_service` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` int(11) NOT NULL DEFAULT '0',
  `translation_package` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `links_fixed` tinyint(4) NOT NULL DEFAULT '0',
  `_prevstate` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `translation_id` (`translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_icl_translation_status
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_links`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_links`;
CREATE TABLE `arcp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_links
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_options`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_options`;
CREATE TABLE `arcp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_options
-- ----------------------------
INSERT INTO arcp_options VALUES ('1', 'siteurl', 'http://aura-capit.dev.vn', 'yes');
INSERT INTO arcp_options VALUES ('2', 'home', 'http://aura-capit.dev.vn', 'yes');
INSERT INTO arcp_options VALUES ('3', 'blogname', 'Aura Capital', 'yes');
INSERT INTO arcp_options VALUES ('4', 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO arcp_options VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO arcp_options VALUES ('6', 'admin_email', 'hungdn0502@gmail.com', 'yes');
INSERT INTO arcp_options VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO arcp_options VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO arcp_options VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO arcp_options VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO arcp_options VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO arcp_options VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO arcp_options VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO arcp_options VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO arcp_options VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO arcp_options VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO arcp_options VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO arcp_options VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO arcp_options VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO arcp_options VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO arcp_options VALUES ('21', 'default_pingback_flag', '1', 'yes');
INSERT INTO arcp_options VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO arcp_options VALUES ('23', 'date_format', 'F j, Y', 'yes');
INSERT INTO arcp_options VALUES ('24', 'time_format', 'g:i a', 'yes');
INSERT INTO arcp_options VALUES ('25', 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO arcp_options VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO arcp_options VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO arcp_options VALUES ('28', 'permalink_structure', '/%postname%/', 'yes');
INSERT INTO arcp_options VALUES ('29', 'rewrite_rules', 'a:200:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"banner/?$\";s:26:\"index.php?post_type=banner\";s:39:\"banner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:34:\"banner/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:26:\"banner/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=banner&paged=$matches[1]\";s:10:\"tin-tuc/?$\";s:27:\"index.php?post_type=article\";s:40:\"tin-tuc/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=article&feed=$matches[1]\";s:35:\"tin-tuc/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=article&feed=$matches[1]\";s:27:\"tin-tuc/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=article&paged=$matches[1]\";s:8:\"du-an/?$\";s:27:\"index.php?post_type=project\";s:38:\"du-an/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:33:\"du-an/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:25:\"du-an/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:12:\"du-an-mau/?$\";s:34:\"index.php?post_type=project-sample\";s:42:\"du-an-mau/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=project-sample&feed=$matches[1]\";s:37:\"du-an-mau/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=project-sample&feed=$matches[1]\";s:29:\"du-an-mau/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=project-sample&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"danh-muc-tin-tuc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?danh-muc-tin-tuc=$matches[1]&feed=$matches[2]\";s:52:\"danh-muc-tin-tuc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?danh-muc-tin-tuc=$matches[1]&feed=$matches[2]\";s:33:\"danh-muc-tin-tuc/([^/]+)/embed/?$\";s:49:\"index.php?danh-muc-tin-tuc=$matches[1]&embed=true\";s:45:\"danh-muc-tin-tuc/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?danh-muc-tin-tuc=$matches[1]&paged=$matches[2]\";s:27:\"danh-muc-tin-tuc/([^/]+)/?$\";s:38:\"index.php?danh-muc-tin-tuc=$matches[1]\";s:45:\"tag2/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tag2=$matches[1]&feed=$matches[2]\";s:40:\"tag2/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tag2=$matches[1]&feed=$matches[2]\";s:21:\"tag2/([^/]+)/embed/?$\";s:37:\"index.php?tag2=$matches[1]&embed=true\";s:33:\"tag2/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?tag2=$matches[1]&paged=$matches[2]\";s:15:\"tag2/([^/]+)/?$\";s:26:\"index.php?tag2=$matches[1]\";s:55:\"danh-muc-du-an/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?danh-muc-du-an=$matches[1]&feed=$matches[2]\";s:50:\"danh-muc-du-an/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?danh-muc-du-an=$matches[1]&feed=$matches[2]\";s:31:\"danh-muc-du-an/([^/]+)/embed/?$\";s:47:\"index.php?danh-muc-du-an=$matches[1]&embed=true\";s:43:\"danh-muc-du-an/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?danh-muc-du-an=$matches[1]&paged=$matches[2]\";s:25:\"danh-muc-du-an/([^/]+)/?$\";s:36:\"index.php?danh-muc-du-an=$matches[1]\";s:59:\"danh-muc-du-an-mau/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?danh-muc-du-an-mau=$matches[1]&feed=$matches[2]\";s:54:\"danh-muc-du-an-mau/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?danh-muc-du-an-mau=$matches[1]&feed=$matches[2]\";s:35:\"danh-muc-du-an-mau/([^/]+)/embed/?$\";s:51:\"index.php?danh-muc-du-an-mau=$matches[1]&embed=true\";s:47:\"danh-muc-du-an-mau/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?danh-muc-du-an-mau=$matches[1]&paged=$matches[2]\";s:29:\"danh-muc-du-an-mau/([^/]+)/?$\";s:40:\"index.php?danh-muc-du-an-mau=$matches[1]\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:47:\"banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:42:\"banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"tin-tuc/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"tin-tuc/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"tin-tuc/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"tin-tuc/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"tin-tuc/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"tin-tuc/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"tin-tuc/([^/]+)/embed/?$\";s:40:\"index.php?article=$matches[1]&embed=true\";s:28:\"tin-tuc/([^/]+)/trackback/?$\";s:34:\"index.php?article=$matches[1]&tb=1\";s:48:\"tin-tuc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?article=$matches[1]&feed=$matches[2]\";s:43:\"tin-tuc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?article=$matches[1]&feed=$matches[2]\";s:36:\"tin-tuc/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?article=$matches[1]&paged=$matches[2]\";s:43:\"tin-tuc/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?article=$matches[1]&cpage=$matches[2]\";s:32:\"tin-tuc/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?article=$matches[1]&page=$matches[2]\";s:24:\"tin-tuc/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"tin-tuc/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"tin-tuc/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"tin-tuc/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"tin-tuc/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"tin-tuc/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"du-an/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"du-an/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"du-an/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"du-an/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"du-an/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"du-an/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"du-an/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:26:\"du-an/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:46:\"du-an/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:41:\"du-an/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:34:\"du-an/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:41:\"du-an/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:30:\"du-an/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:22:\"du-an/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"du-an/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"du-an/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"du-an/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"du-an/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"du-an/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"du-an-mau/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"du-an-mau/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"du-an-mau/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"du-an-mau/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"du-an-mau/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"du-an-mau/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"du-an-mau/([^/]+)/embed/?$\";s:47:\"index.php?project-sample=$matches[1]&embed=true\";s:30:\"du-an-mau/([^/]+)/trackback/?$\";s:41:\"index.php?project-sample=$matches[1]&tb=1\";s:50:\"du-an-mau/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?project-sample=$matches[1]&feed=$matches[2]\";s:45:\"du-an-mau/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?project-sample=$matches[1]&feed=$matches[2]\";s:38:\"du-an-mau/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?project-sample=$matches[1]&paged=$matches[2]\";s:45:\"du-an-mau/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?project-sample=$matches[1]&cpage=$matches[2]\";s:34:\"du-an-mau/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?project-sample=$matches[1]&page=$matches[2]\";s:26:\"du-an-mau/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"du-an-mau/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"du-an-mau/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"du-an-mau/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"du-an-mau/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"du-an-mau/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes');
INSERT INTO arcp_options VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO arcp_options VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO arcp_options VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO arcp_options VALUES ('33', 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:40:\"sitepress-multilingual-cms/sitepress.php\";}', 'yes');
INSERT INTO arcp_options VALUES ('34', 'category_base', '', 'yes');
INSERT INTO arcp_options VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO arcp_options VALUES ('36', 'comment_max_links', '2', 'yes');
INSERT INTO arcp_options VALUES ('37', 'gmt_offset', '0', 'yes');
INSERT INTO arcp_options VALUES ('38', 'default_email_category', '1', 'yes');
INSERT INTO arcp_options VALUES ('39', 'recently_edited', '', 'no');
INSERT INTO arcp_options VALUES ('40', 'template', 'auracapit', 'yes');
INSERT INTO arcp_options VALUES ('41', 'stylesheet', 'auracapit', 'yes');
INSERT INTO arcp_options VALUES ('42', 'comment_whitelist', '1', 'yes');
INSERT INTO arcp_options VALUES ('43', 'blacklist_keys', '', 'no');
INSERT INTO arcp_options VALUES ('44', 'comment_registration', '0', 'yes');
INSERT INTO arcp_options VALUES ('45', 'html_type', 'text/html', 'yes');
INSERT INTO arcp_options VALUES ('46', 'use_trackback', '0', 'yes');
INSERT INTO arcp_options VALUES ('47', 'default_role', 'subscriber', 'yes');
INSERT INTO arcp_options VALUES ('48', 'db_version', '38590', 'yes');
INSERT INTO arcp_options VALUES ('49', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO arcp_options VALUES ('50', 'upload_path', '', 'yes');
INSERT INTO arcp_options VALUES ('51', 'blog_public', '1', 'yes');
INSERT INTO arcp_options VALUES ('52', 'default_link_category', '2', 'yes');
INSERT INTO arcp_options VALUES ('53', 'show_on_front', 'page', 'yes');
INSERT INTO arcp_options VALUES ('54', 'tag_base', '', 'yes');
INSERT INTO arcp_options VALUES ('55', 'show_avatars', '1', 'yes');
INSERT INTO arcp_options VALUES ('56', 'avatar_rating', 'G', 'yes');
INSERT INTO arcp_options VALUES ('57', 'upload_url_path', '', 'yes');
INSERT INTO arcp_options VALUES ('58', 'thumbnail_size_w', '150', 'yes');
INSERT INTO arcp_options VALUES ('59', 'thumbnail_size_h', '150', 'yes');
INSERT INTO arcp_options VALUES ('60', 'thumbnail_crop', '1', 'yes');
INSERT INTO arcp_options VALUES ('61', 'medium_size_w', '300', 'yes');
INSERT INTO arcp_options VALUES ('62', 'medium_size_h', '300', 'yes');
INSERT INTO arcp_options VALUES ('63', 'avatar_default', 'mystery', 'yes');
INSERT INTO arcp_options VALUES ('64', 'large_size_w', '1024', 'yes');
INSERT INTO arcp_options VALUES ('65', 'large_size_h', '1024', 'yes');
INSERT INTO arcp_options VALUES ('66', 'image_default_link_type', 'none', 'yes');
INSERT INTO arcp_options VALUES ('67', 'image_default_size', '', 'yes');
INSERT INTO arcp_options VALUES ('68', 'image_default_align', '', 'yes');
INSERT INTO arcp_options VALUES ('69', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO arcp_options VALUES ('70', 'close_comments_days_old', '14', 'yes');
INSERT INTO arcp_options VALUES ('71', 'thread_comments', '1', 'yes');
INSERT INTO arcp_options VALUES ('72', 'thread_comments_depth', '5', 'yes');
INSERT INTO arcp_options VALUES ('73', 'page_comments', '0', 'yes');
INSERT INTO arcp_options VALUES ('74', 'comments_per_page', '50', 'yes');
INSERT INTO arcp_options VALUES ('75', 'default_comments_page', 'newest', 'yes');
INSERT INTO arcp_options VALUES ('76', 'comment_order', 'asc', 'yes');
INSERT INTO arcp_options VALUES ('77', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('79', 'widget_text', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('80', 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('81', 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO arcp_options VALUES ('82', 'timezone_string', '', 'yes');
INSERT INTO arcp_options VALUES ('83', 'page_for_posts', '0', 'yes');
INSERT INTO arcp_options VALUES ('84', 'page_on_front', '8', 'yes');
INSERT INTO arcp_options VALUES ('85', 'default_post_format', '0', 'yes');
INSERT INTO arcp_options VALUES ('86', 'link_manager_enabled', '0', 'yes');
INSERT INTO arcp_options VALUES ('87', 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO arcp_options VALUES ('88', 'site_icon', '0', 'yes');
INSERT INTO arcp_options VALUES ('89', 'medium_large_size_w', '768', 'yes');
INSERT INTO arcp_options VALUES ('90', 'medium_large_size_h', '0', 'yes');
INSERT INTO arcp_options VALUES ('91', 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO arcp_options VALUES ('92', 'show_comments_cookies_opt_in', '0', 'yes');
INSERT INTO arcp_options VALUES ('93', 'initial_db_version', '38590', 'yes');
INSERT INTO arcp_options VALUES ('94', 'arcp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:34:\"wpml_manage_translation_management\";b:1;s:21:\"wpml_manage_languages\";b:1;s:41:\"wpml_manage_theme_and_plugin_localization\";b:1;s:19:\"wpml_manage_support\";b:1;s:36:\"wpml_manage_woocommerce_multilingual\";b:1;s:37:\"wpml_operate_woocommerce_multilingual\";b:1;s:29:\"wpml_manage_media_translation\";b:1;s:22:\"wpml_manage_navigation\";b:1;s:24:\"wpml_manage_sticky_links\";b:1;s:30:\"wpml_manage_string_translation\";b:1;s:33:\"wpml_manage_translation_analytics\";b:1;s:25:\"wpml_manage_wp_menus_sync\";b:1;s:32:\"wpml_manage_taxonomy_translation\";b:1;s:27:\"wpml_manage_troubleshooting\";b:1;s:31:\"wpml_manage_translation_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO arcp_options VALUES ('95', 'fresh_site', '0', 'yes');
INSERT INTO arcp_options VALUES ('96', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('97', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('98', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('99', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('100', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('101', 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO arcp_options VALUES ('102', 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('103', 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('104', 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('105', 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('106', 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('107', 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('108', 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('109', 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('110', 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('111', 'cron', 'a:6:{i:1577112898;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1577134498;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1577177726;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577177848;a:1:{s:24:\"update_wpml_config_index\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577178125;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO arcp_options VALUES ('112', 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576400503;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes');
INSERT INTO arcp_options VALUES ('116', '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.4\";s:7:\"version\";s:5:\"5.1.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.8\";s:7:\"version\";s:5:\"5.0.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.13.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.13.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.13-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.13-new-bundled.zip\";s:7:\"partial\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.13-partial-12.zip\";s:8:\"rollback\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.13-rollback-12.zip\";}s:7:\"current\";s:6:\"4.9.13\";s:7:\"version\";s:6:\"4.9.13\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:6:\"4.9.12\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1577108525;s:15:\"version_checked\";s:6:\"4.9.12\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO arcp_options VALUES ('126', 'can_compress_scripts', '1', 'no');
INSERT INTO arcp_options VALUES ('135', 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('146', 'icl_sitepress_version', '3.6.3', 'yes');
INSERT INTO arcp_options VALUES ('147', 'icl_sitepress_settings', 'a:54:{s:19:\"hide_upgrade_notice\";s:5:\"3.6.3\";s:25:\"icl_capabilities_verified\";b:1;s:21:\"interview_translators\";i:1;s:34:\"existing_content_language_verified\";i:1;s:25:\"language_negotiation_type\";i:3;s:23:\"theme_localization_type\";i:2;s:18:\"icl_lso_link_empty\";i:0;s:18:\"sync_page_ordering\";i:1;s:16:\"sync_page_parent\";i:1;s:18:\"sync_page_template\";i:1;s:16:\"sync_ping_status\";i:1;s:19:\"sync_comment_status\";i:1;s:16:\"sync_sticky_flag\";i:1;s:13:\"sync_password\";i:1;s:17:\"sync_private_flag\";i:1;s:16:\"sync_post_format\";i:1;s:11:\"sync_delete\";i:0;s:15:\"sync_delete_tax\";i:0;s:20:\"sync_post_taxonomies\";i:1;s:14:\"sync_post_date\";i:0;s:21:\"sync_taxonomy_parents\";i:0;s:25:\"translation_pickup_method\";i:0;s:15:\"notify_complete\";i:1;s:26:\"translated_document_status\";i:1;s:17:\"remote_management\";i:0;s:15:\"auto_adjust_ids\";i:1;s:11:\"alert_delay\";i:0;s:12:\"promote_wpml\";i:0;s:18:\"automatic_redirect\";i:0;s:17:\"remember_language\";i:24;s:28:\"icl_lang_sel_copy_parameters\";s:0:\"\";s:28:\"translated_document_page_url\";s:13:\"auto-generate\";s:28:\"sync_comments_on_duplicates \";i:0;s:3:\"seo\";a:3:{s:10:\"head_langs\";i:1;s:27:\"canonicalization_duplicates\";i:1;s:19:\"head_langs_priority\";i:1;}s:22:\"posts_slug_translation\";a:1:{s:2:\"on\";i:0;}s:15:\"languages_order\";a:2:{i:0;s:2:\"en\";i:1;s:2:\"vi\";}s:4:\"urls\";a:5:{s:30:\"directory_for_default_language\";i:0;s:12:\"show_on_root\";s:0:\"\";s:19:\"root_html_file_path\";s:0:\"\";s:9:\"root_page\";i:0;s:23:\"hide_language_switchers\";i:1;}s:12:\"xdomain_data\";i:1;s:16:\"active_languages\";a:2:{i:0;s:2:\"en\";i:1;s:2:\"vi\";}s:22:\"admin_default_language\";s:9:\"_default_\";s:32:\"theme_localization_type_previous\";i:1;s:22:\"taxonomy_names_checked\";b:1;s:14:\"setup_complete\";i:1;s:18:\"ajx_health_checked\";b:1;s:18:\"default_categories\";a:2:{s:2:\"vi\";s:1:\"1\";s:2:\"en\";i:2;}s:16:\"default_language\";s:2:\"vi\";s:17:\"setup_wizard_step\";i:4;s:22:\"translation-management\";a:13:{s:12:\"notification\";a:5:{s:7:\"new-job\";i:1;s:9:\"completed\";i:1;s:8:\"resigned\";i:1;s:9:\"dashboard\";b:1;s:9:\"purge-old\";i:7;}s:25:\"custom_fields_translation\";a:18:{s:5:\"title\";i:2;s:11:\"description\";i:2;s:8:\"keywords\";i:2;s:10:\"_edit_last\";i:0;s:10:\"_edit_lock\";i:0;s:17:\"_wp_page_template\";i:0;s:23:\"_wp_attachment_metadata\";i:0;s:16:\"original_post_id\";i:0;s:22:\"_wpml_original_post_id\";i:0;s:12:\"_wp_old_slug\";i:0;s:20:\"_icl_translator_note\";i:0;s:14:\"_alp_processed\";i:0;s:7:\"_pingme\";i:0;s:10:\"_encloseme\";i:0;s:22:\"_icl_lang_duplicate_of\";i:0;s:13:\"_thumbnail_id\";i:0;s:17:\"_wp_attached_file\";i:0;s:24:\"_wp_attachment_image_alt\";i:2;}s:29:\"custom_fields_readonly_config\";a:18:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:8:\"keywords\";i:3;s:10:\"_edit_last\";i:4;s:10:\"_edit_lock\";i:5;s:17:\"_wp_page_template\";i:6;s:23:\"_wp_attachment_metadata\";i:7;s:16:\"original_post_id\";i:8;s:22:\"_wpml_original_post_id\";i:9;s:12:\"_wp_old_slug\";i:10;s:20:\"_icl_translator_note\";i:11;s:14:\"_alp_processed\";i:12;s:7:\"_pingme\";i:13;s:10:\"_encloseme\";i:14;s:22:\"_icl_lang_duplicate_of\";i:15;s:13:\"_thumbnail_id\";i:16;s:17:\"_wp_attached_file\";i:17;s:24:\"_wp_attachment_image_alt\";}s:32:\"custom_fields_translation_custom\";a:0:{}s:41:\"custom_fields_translation_custom_readonly\";a:0:{}s:22:\"doc_translation_method\";i:0;s:35:\"__custom_types_readonly_config_prev\";a:0:{}s:28:\"custom_types_readonly_config\";a:0:{}s:36:\"__custom_fields_readonly_config_prev\";a:18:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:8:\"keywords\";i:3;s:10:\"_edit_last\";i:4;s:10:\"_edit_lock\";i:5;s:17:\"_wp_page_template\";i:6;s:23:\"_wp_attachment_metadata\";i:7;s:16:\"original_post_id\";i:8;s:22:\"_wpml_original_post_id\";i:9;s:12:\"_wp_old_slug\";i:10;s:20:\"_icl_translator_note\";i:11;s:14:\"_alp_processed\";i:12;s:7:\"_pingme\";i:13;s:10:\"_encloseme\";i:14;s:22:\"_icl_lang_duplicate_of\";i:15;s:13:\"_thumbnail_id\";i:16;s:17:\"_wp_attached_file\";i:17;s:24:\"_wp_attachment_image_alt\";}s:41:\"__custom_term_fields_readonly_config_prev\";a:0:{}s:34:\"custom_term_fields_readonly_config\";a:0:{}s:26:\"taxonomies_readonly_config\";a:1:{s:20:\"translation_priority\";i:1;}s:28:\"custom-types_readonly_config\";a:2:{s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;}}s:24:\"custom_posts_sync_option\";a:2:{s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;}s:22:\"taxonomies_sync_option\";a:1:{s:20:\"translation_priority\";i:1;}s:24:\"custom-types_sync_option\";a:2:{s:10:\"attachment\";i:1;s:8:\"wp_block\";i:1;}s:29:\"language_selector_initialized\";i:1;s:21:\"site_does_not_use_icl\";b:1;s:22:\"theme_language_folders\";N;}', 'yes');
INSERT INTO arcp_options VALUES ('148', 'wpml_dependencies:needs_validation', '', 'yes');
INSERT INTO arcp_options VALUES ('149', 'wpml_dependencies:valid_plugins', 'a:1:{i:0;s:26:\"sitepress-multilingual-cms\";}', 'yes');
INSERT INTO arcp_options VALUES ('150', 'wpml_dependencies:invalid_plugins', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('151', 'wpml_config_index', 'O:8:\"stdClass\":2:{s:7:\"plugins\";a:70:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:33:\"10bit WooCommerce Gateway Yaadpay\";s:14:\"override_local\";b:1;s:4:\"path\";s:61:\"wpml-config/10bit-woocommerce-gateway-yaadpay/wpml-config.xml\";s:7:\"updated\";i:1464939780;s:4:\"hash\";s:32:\"ebdce80f3b6bfa13112b1d4c6a31b560\";}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Book Now\";s:14:\"override_local\";b:0;s:4:\"path\";s:36:\"wpml-config/book-now/wpml-config.xml\";s:7:\"updated\";i:1505319840;s:4:\"hash\";s:32:\"d123c0bb22d447095c3c443cb41c273a\";}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Cornerstone\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/cornerstone/wpml-config.xml\";s:7:\"updated\";i:1575307792;s:4:\"hash\";s:32:\"d2e378d57e72ebfe58d3bd62b9c54f17\";}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"Custom Post Type UI\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/custom-post-type-ui/wpml-config.xml\";s:7:\"updated\";i:1523893440;s:4:\"hash\";s:32:\"e947352f481e0d8ab9cce6bd97316419\";}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"Divi Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/divi-builder/wpml-config.xml\";s:7:\"updated\";i:1576677617;s:4:\"hash\";s:32:\"4bc41027f08a0821e0141c6816583798\";}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Event Tickets Plus\";s:14:\"override_local\";b:0;s:4:\"path\";s:46:\"wpml-config/event-tickets-plus/wpml-config.xml\";s:7:\"updated\";i:1477310580;s:4:\"hash\";s:32:\"f333802d6c6c9836466d3ff52cfe2bd7\";}i:6;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WPBakery Visual Composer\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/js_composer/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"7ef24bd7ea76d60c1bb7adf8439c5957\";}i:7;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/js_composer/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"7ef24bd7ea76d60c1bb7adf8439c5957\";}i:8;O:8:\"stdClass\":5:{s:4:\"name\";s:37:\"Uncode Page Builder (Visual Composer)\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/uncode-js_composer/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"f53eabe7952414574c9e9f551613ac76\";}i:9;O:8:\"stdClass\":5:{s:4:\"name\";s:28:\"Uncode WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/uncode-js_composer/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"f53eabe7952414574c9e9f551613ac76\";}i:10;O:8:\"stdClass\":5:{s:4:\"name\";s:26:\"The7 WPBakery Page Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/js_composer-dt-the7/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"caf05daa7509c1127194c88dee427879\";}i:11;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"MailChimp for WordPress\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/mailchimp-for-wp/wpml-config.xml\";s:7:\"updated\";i:1509614640;s:4:\"hash\";s:32:\"c4f8573312cdf0f71d9329ae82d4ec49\";}i:12;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Members\";s:14:\"override_local\";b:0;s:4:\"path\";s:35:\"wpml-config/members/wpml-config.xml\";s:7:\"updated\";i:1497367620;s:4:\"hash\";s:32:\"37e638f5a56f59208150c3649c291e41\";}i:13;O:8:\"stdClass\":5:{s:4:\"name\";s:46:\"Multibanco (IfthenPay gateway) for WooCommerce\";s:14:\"override_local\";b:0;s:4:\"path\";s:72:\"wpml-config/multibanco-ifthenpay-gateway-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1441014780;s:4:\"hash\";s:32:\"3cddef77fd163e090472f995aa2388d4\";}i:14;O:8:\"stdClass\":5:{s:4:\"name\";s:25:\"NW ADCart for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:53:\"wpml-config/nw-adcart-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1409734260;s:4:\"hash\";s:32:\"91d62df0659fc7b561a3932a7a52de6a\";}i:15;O:8:\"stdClass\":5:{s:4:\"name\";s:22:\"PayPal for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:50:\"wpml-config/paypal-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1504696980;s:4:\"hash\";s:32:\"8d98b39c86e95094e6b7727fda7a6f00\";}i:16;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"Product Enquiry Pro for WooCommerce\";s:14:\"override_local\";b:1;s:4:\"path\";s:63:\"wpml-config/product-enquiry-pro-for-woocommerce/wpml-config.xml\";s:7:\"updated\";i:1409734500;s:4:\"hash\";s:32:\"305232f06370d52a29c346d6b711f50a\";}i:17;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"ProductPrint\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/productprint/wpml-config.xml\";s:7:\"updated\";i:1447155240;s:4:\"hash\";s:32:\"8003e16bcd6efca83d3b83dc3e01dc89\";}i:18;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Sensei\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/sensei/wpml-config.xml\";s:7:\"updated\";i:1519733580;s:4:\"hash\";s:32:\"ae69c1b9e4f553d0153d561cda3e5e9f\";}i:19;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Subscriptio\";s:14:\"override_local\";b:0;s:4:\"path\";s:39:\"wpml-config/subscriptio/wpml-config.xml\";s:7:\"updated\";i:1519647600;s:4:\"hash\";s:32:\"a23128c1dde651ef63093336042948e5\";}i:20;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WPML Multilingual CMS\";s:14:\"override_local\";b:1;s:4:\"path\";s:54:\"wpml-config/sitepress-multilingual-cms/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"38c5ff5f649c25ca04655a2a825b7206\";}i:21;O:8:\"stdClass\":5:{s:4:\"name\";s:19:\"The Events Calendar\";s:14:\"override_local\";b:1;s:4:\"path\";s:47:\"wpml-config/the-events-calendar/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"63b4a9e620c90153b1fef1d8a00fd8a2\";}i:22;O:8:\"stdClass\":5:{s:4:\"name\";s:31:\"The Events Calendar: Filter Bar\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/events-filterbar/wpml-config.xml\";s:7:\"updated\";i:1529671740;s:4:\"hash\";s:32:\"787231e7b7cdb54ca447512234be0768\";}i:23;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"Woocomerce Brands Pro\";s:14:\"override_local\";b:0;s:4:\"path\";s:37:\"wpml-config/woo-brand/wpml-config.xml\";s:7:\"updated\";i:1442243400;s:4:\"hash\";s:32:\"dc7eeb10cd6e0eb80b7960eb8b6058a4\";}i:24;O:8:\"stdClass\":5:{s:4:\"name\";s:39:\"WooCommerce Additional Variation Images\";s:14:\"override_local\";b:1;s:4:\"path\";s:67:\"wpml-config/woocommerce-additional-variation-images/wpml-config.xml\";s:7:\"updated\";i:1479214860;s:4:\"hash\";s:32:\"39b5f72684021b09b12b53b7ff9c7100\";}i:25;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"WooCommerce Advanced Product Labels\";s:14:\"override_local\";b:0;s:4:\"path\";s:63:\"wpml-config/woocommerce-advanced-product-labels/wpml-config.xml\";s:7:\"updated\";i:1441177080;s:4:\"hash\";s:32:\"4b29c29516a1a33b328d90ffc5c4aad7\";}i:26;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"WooCommerce Bookings\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/woocommerce-bookings/wpml-config.xml\";s:7:\"updated\";i:1518696060;s:4:\"hash\";s:32:\"cf704fa60399163e82de88dfca25b644\";}i:27;O:8:\"stdClass\":5:{s:4:\"name\";s:38:\"WooCommerce Catalog Visibility Options\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-catalog-visibility-options/wpml-config.xml\";s:7:\"updated\";i:1408625580;s:4:\"hash\";s:32:\"d10bd6388a88521e488f7e4ba295c94c\";}i:28;O:8:\"stdClass\":5:{s:4:\"name\";s:30:\"WooCommerce Composite Products\";s:14:\"override_local\";b:0;s:4:\"path\";s:58:\"wpml-config/woocommerce-composite-products/wpml-config.xml\";s:7:\"updated\";i:1491207900;s:4:\"hash\";s:32:\"a6c0ed6554be69f56779f64506ab96d1\";}i:29;O:8:\"stdClass\":5:{s:4:\"name\";s:30:\"WooCommerce Currency Converter\";s:14:\"override_local\";b:1;s:4:\"path\";s:58:\"wpml-config/woocommerce-currency-converter/wpml-config.xml\";s:7:\"updated\";i:1452009180;s:4:\"hash\";s:32:\"b2191d7affaf1efe74e6a3ca4b0494c6\";}i:30;O:8:\"stdClass\":5:{s:4:\"name\";s:32:\"WooCommerce DIBS FlexWin Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:60:\"wpml-config/woocommerce-dibs-flexwin-gateway/wpml-config.xml\";s:7:\"updated\";i:1459514460;s:4:\"hash\";s:32:\"d9237f895f0f133c8e11f4753d96eeca\";}i:31;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WooCommerce Embed Slides\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/woocommerce-embed-slides/wpml-config.xml\";s:7:\"updated\";i:1499457300;s:4:\"hash\";s:32:\"243e3a54d920cc2ddf96f17f4ff38f2d\";}i:32;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"WooCommerce Local Pickup Plus\";s:14:\"override_local\";b:1;s:4:\"path\";s:57:\"wpml-config/woocommerce-local-pickup-plus/wpml-config.xml\";s:7:\"updated\";i:1442582820;s:4:\"hash\";s:32:\"816774f477bfa1c481cdba021d33f705\";}i:33;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"WooCommerce Multilingual\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/woocommerce-multilingual/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"bd4f489abd951b8cd74db2e69c9d8574\";}i:34;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"WooCommerce Memberships\";s:14:\"override_local\";b:1;s:4:\"path\";s:51:\"wpml-config/woocommerce-memberships/wpml-config.xml\";s:7:\"updated\";i:1509008280;s:4:\"hash\";s:32:\"216897217946e73b59e0e4f8958cad88\";}i:35;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Name Your Price\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-name-your-price/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"055de38e55802236ee636eec63bdde5e\";}i:36;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Paymill Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-paymill-gateway/wpml-config.xml\";s:7:\"updated\";i:1408626540;s:4:\"hash\";s:32:\"46409842584ff8df43a2aa922ad1d388\";}i:37;O:8:\"stdClass\":5:{s:4:\"name\";s:40:\"WooCommerce PDF Invoices & Packing Slips\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-pdf-invoices-packing-slips/wpml-config.xml\";s:7:\"updated\";i:1461579300;s:4:\"hash\";s:32:\"34ecf8066c5c9042a0bd60b5d40c4c55\";}i:38;O:8:\"stdClass\":5:{s:4:\"name\";s:17:\"WooCommerce Plivo\";s:14:\"override_local\";b:1;s:4:\"path\";s:45:\"wpml-config/woocommerce-plivo/wpml-config.xml\";s:7:\"updated\";i:1409734680;s:4:\"hash\";s:32:\"539d172825c4714d69b8a42ad1826c5d\";}i:39;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"WooCommerce PostePay\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/woocommerce-postepay/wpml-config.xml\";s:7:\"updated\";i:1409063100;s:4:\"hash\";s:32:\"b08722979a25b15ba4a02a16fb555ccc\";}i:40;O:8:\"stdClass\":5:{s:4:\"name\";s:28:\"WooCommerce Price by Country\";s:14:\"override_local\";b:1;s:4:\"path\";s:56:\"wpml-config/woocommerce-price-by-country/wpml-config.xml\";s:7:\"updated\";i:1415282880;s:4:\"hash\";s:32:\"9b296d64ba8afee80cb1ff4fac80144b\";}i:41;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Product Add-ons\";s:14:\"override_local\";b:1;s:4:\"path\";s:55:\"wpml-config/woocommerce-product-add-ons/wpml-config.xml\";s:7:\"updated\";i:1476961740;s:4:\"hash\";s:32:\"69f94bed6e4b3546cc7be2fbd2bf392b\";}i:42;O:8:\"stdClass\":5:{s:4:\"name\";s:27:\"WooCommerce Product Bundles\";s:14:\"override_local\";b:0;s:4:\"path\";s:55:\"wpml-config/woocommerce-product-bundles/wpml-config.xml\";s:7:\"updated\";i:1487080740;s:4:\"hash\";s:32:\"7cddba745169acd899b12f24e3580dcc\";}i:43;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"WooCommerce Product Gift Wrap\";s:14:\"override_local\";b:1;s:4:\"path\";s:57:\"wpml-config/woocommerce-product-gift-wrap/wpml-config.xml\";s:7:\"updated\";i:1429639980;s:4:\"hash\";s:32:\"dd3371d64d2ee01e6e42fd7e0bd134cf\";}i:44;O:8:\"stdClass\":5:{s:4:\"name\";s:38:\"Woocommerce Social Media Share Buttons\";s:14:\"override_local\";b:1;s:4:\"path\";s:66:\"wpml-config/woocommerce-social-media-share-buttons/wpml-config.xml\";s:7:\"updated\";i:1464934800;s:4:\"hash\";s:32:\"3130bbf2a35424d9ecd8d6c3255bf817\";}i:45;O:8:\"stdClass\":5:{s:4:\"name\";s:26:\"WooCommerce Stripe Gateway\";s:14:\"override_local\";b:1;s:4:\"path\";s:54:\"wpml-config/woocommerce-gateway-stripe/wpml-config.xml\";s:7:\"updated\";i:1409061480;s:4:\"hash\";s:32:\"4139e23bcdd0bb3e78cb079fa851ce85\";}i:46;O:8:\"stdClass\":5:{s:4:\"name\";s:23:\"WooCommerce Tab Manager\";s:14:\"override_local\";b:1;s:4:\"path\";s:51:\"wpml-config/woocommerce-tab-manager/wpml-config.xml\";s:7:\"updated\";i:1505158140;s:4:\"hash\";s:32:\"477be025d13abe1c1b89bb7666564ed6\";}i:47;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"WooCommerce Video Tab\";s:14:\"override_local\";b:1;s:4:\"path\";s:49:\"wpml-config/woocommerce-video-tab/wpml-config.xml\";s:7:\"updated\";i:1415284320;s:4:\"hash\";s:32:\"7f9769bc2769e07ae730f3b4cd307741\";}i:48;O:8:\"stdClass\":5:{s:4:\"name\";s:14:\"WP Job Manager\";s:14:\"override_local\";b:0;s:4:\"path\";s:42:\"wpml-config/wp-job-manager/wpml-config.xml\";s:7:\"updated\";i:1499098260;s:4:\"hash\";s:32:\"36842c6b8a11a733ef00ef8d9bc410b9\";}i:49;O:8:\"stdClass\":5:{s:4:\"name\";s:16:\"WPML Test Config\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/wpml-test-config/wpml-config.xml\";s:7:\"updated\";i:1429103280;s:4:\"hash\";s:32:\"9c3bb313d5a4f028bebfa8fc8af990a3\";}i:50;O:8:\"stdClass\":5:{s:4:\"name\";s:29:\"YITH WooCommerce Catalog Mode\";s:14:\"override_local\";b:0;s:4:\"path\";s:57:\"wpml-config/yith-woocommerce-catalog-mode/wpml-config.xml\";s:7:\"updated\";i:1441961340;s:4:\"hash\";s:32:\"ca50a47d4254cbd04254c4448c511e22\";}i:51;O:8:\"stdClass\":5:{s:4:\"name\";s:49:\"YITH WooCommerce Minimum Maximum Quantity Premium\";s:14:\"override_local\";b:1;s:4:\"path\";s:77:\"wpml-config/yith-woocommerce-minimum-maximum-quantity-premium/wpml-config.xml\";s:7:\"updated\";i:1459278720;s:4:\"hash\";s:32:\"8e8c7961e72461a498849880ad418163\";}i:52;O:8:\"stdClass\":5:{s:4:\"name\";s:35:\"YITH WooCommerce Quick View Premium\";s:14:\"override_local\";b:0;s:4:\"path\";s:63:\"wpml-config/yith-woocommerce-quick-view-premium/wpml-config.xml\";s:7:\"updated\";i:1439206200;s:4:\"hash\";s:32:\"656f1dcbcad67f5a4cbc7747520ef4e2\";}i:53;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Yoast SEO\";s:14:\"override_local\";b:1;s:4:\"path\";s:37:\"wpml-config/yoast-seo/wpml-config.xml\";s:7:\"updated\";i:1530098880;s:4:\"hash\";s:32:\"4014a9b37ac42f0cc726390fb9088ebc\";}i:54;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Yoast SEO\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/wordpress-seo/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"1308d47129421d9cbcde366c141a5499\";}i:55;O:8:\"stdClass\":5:{s:4:\"name\";s:17:\"Yoast SEO Premium\";s:14:\"override_local\";b:1;s:4:\"path\";s:49:\"wpml-config/wordpress-seo-premium/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"1308d47129421d9cbcde366c141a5499\";}i:56;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Elementor\";s:14:\"override_local\";b:1;s:4:\"path\";s:37:\"wpml-config/elementor/wpml-config.xml\";s:7:\"updated\";i:1575307792;s:4:\"hash\";s:32:\"1b6770aeda4d80d734e7182956d72186\";}i:57;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Exit Popup\";s:14:\"override_local\";b:0;s:4:\"path\";s:38:\"wpml-config/exit-popup/wpml-config.xml\";s:7:\"updated\";i:1532441340;s:4:\"hash\";s:32:\"9759f24db8621dfa772d7222c9c336dd\";}i:58;O:8:\"stdClass\":5:{s:4:\"name\";s:11:\"Ninja Forms\";s:14:\"override_local\";b:1;s:4:\"path\";s:39:\"wpml-config/ninja-forms/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"7b3321902299b49238e59d0741ce1f8d\";}i:59;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"Rezgo Online Booking\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/rezgo/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"6f3433a4c5eafa13eaf125eea7d84239\";}i:60;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"MasterSlider\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/master-slider/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"2b5b8d5c1d934ee19a547b66d6c76b69\";}i:61;O:8:\"stdClass\":5:{s:4:\"name\";s:21:\"Advanced Comment Form\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/comment-form/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"a84c0e28e4c97dec1a3053c316c27892\";}i:62;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Search & Filter\";s:14:\"override_local\";b:1;s:4:\"path\";s:41:\"wpml-config/search-filter/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"104b64d62b408a4ae7c5da7ff0acd0b2\";}i:63;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"KingComposer\";s:14:\"override_local\";b:1;s:4:\"path\";s:40:\"wpml-config/kingcomposer/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"cadb27cc7ba0e61d3fd2acaf27fef4df\";}i:64;O:8:\"stdClass\":5:{s:4:\"name\";s:15:\"Ultimate Member\";s:14:\"override_local\";b:1;s:4:\"path\";s:43:\"wpml-config/ultimate-member/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"c80a46117b6be17e1099cb0640f8e722\";}i:65;O:8:\"stdClass\":5:{s:4:\"name\";s:24:\"Google Analytics Opt-Out\";s:14:\"override_local\";b:1;s:4:\"path\";s:52:\"wpml-config/google-analytics-opt-out/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"823965222ce323c88eadbcf95dcde0ff\";}i:66;O:8:\"stdClass\":5:{s:4:\"name\";s:16:\"Ajax Search Lite\";s:14:\"override_local\";b:1;s:4:\"path\";s:44:\"wpml-config/ajax-search-lite/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"79dc60103bbc2eaaf6ac2ff25ca8dfa7\";}i:67;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"Paid Memberships Pro\";s:14:\"override_local\";b:1;s:4:\"path\";s:48:\"wpml-config/paid-memberships-pro/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"a26838992708887d6825bd1fbdceca59\";}i:68;O:8:\"stdClass\":5:{s:4:\"name\";s:12:\"Bold Builder\";s:14:\"override_local\";b:1;s:4:\"path\";s:45:\"wpml-config/bold-page-builder/wpml-config.xml\";s:7:\"updated\";i:1535127720;s:4:\"hash\";s:32:\"0157f9a404c3f952deb6025a3d9ed961\";}i:69;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Forminator\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/forminator/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"ae0a6b1f1bc9fc80ada4833f9ee8917c\";}}s:6:\"themes\";a:24:{i:0;O:8:\"stdClass\":5:{s:4:\"name\";s:5:\"Avada\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/avada/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"d7e4672d74ad74278146ccf79fdb4520\";}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Brooklyn\";s:14:\"override_local\";b:1;s:4:\"path\";s:36:\"wpml-config/brooklyn/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"960edb3057ad96e2863221e82a4c69d2\";}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Canvas\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/canvas/wpml-config.xml\";s:7:\"updated\";i:1476729660;s:4:\"hash\";s:32:\"ea1da43b18f87c4aa73982113067cd95\";}i:3;O:8:\"stdClass\":5:{s:4:\"name\";s:9:\"Customizr\";s:14:\"override_local\";b:0;s:4:\"path\";s:37:\"wpml-config/customizr/wpml-config.xml\";s:7:\"updated\";i:1440909000;s:4:\"hash\";s:32:\"d63f73a0df72ab558bdbfaadaeb9c737\";}i:4;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"Divi\";s:14:\"override_local\";b:1;s:4:\"path\";s:32:\"wpml-config/Divi/wpml-config.xml\";s:7:\"updated\";i:1576677617;s:4:\"hash\";s:32:\"4bc41027f08a0821e0141c6816583798\";}i:5;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"The7\";s:14:\"override_local\";b:1;s:4:\"path\";s:35:\"wpml-config/dt-the7/wpml-config.xml\";s:7:\"updated\";i:1534160160;s:4:\"hash\";s:32:\"b99fe39e5d53275b0237a65894036893\";}i:6;O:8:\"stdClass\":5:{s:4:\"name\";s:5:\"Extra\";s:14:\"override_local\";b:1;s:4:\"path\";s:33:\"wpml-config/extra/wpml-config.xml\";s:7:\"updated\";i:1576677617;s:4:\"hash\";s:32:\"6f40ff074142d6392f49267cbb1176f2\";}i:7;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Emerald CV\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/emerald-cv/wpml-config.xml\";s:7:\"updated\";i:1460387160;s:4:\"hash\";s:32:\"3ab5fd101b71e7b306e48a07801c7557\";}i:8;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Enfold\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/enfold/wpml-config.xml\";s:7:\"updated\";i:1575307792;s:4:\"hash\";s:32:\"d416d25c84579464bf0cc59d3d44739f\";}i:9;O:8:\"stdClass\":5:{s:4:\"name\";s:8:\"Function\";s:14:\"override_local\";b:1;s:4:\"path\";s:36:\"wpml-config/function/wpml-config.xml\";s:7:\"updated\";i:1476729720;s:4:\"hash\";s:32:\"bb6dd583fb2a28ee5c4e2a264a770d60\";}i:10;O:8:\"stdClass\":5:{s:4:\"name\";s:7:\"Genesis\";s:14:\"override_local\";b:1;s:4:\"path\";s:35:\"wpml-config/genesis/wpml-config.xml\";s:7:\"updated\";i:1456825680;s:4:\"hash\";s:32:\"795657d127a84e450ad21218284bdd28\";}i:11;O:8:\"stdClass\":5:{s:4:\"name\";s:36:\"IDStore - Responsive WordPress Theme\";s:14:\"override_local\";b:1;s:4:\"path\";s:62:\"wpml-config/idstore-responsive-wordpress-theme/wpml-config.xml\";s:7:\"updated\";i:1499457240;s:4:\"hash\";s:32:\"1c49e6754e661e5eb1c301f8874829da\";}i:12;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"Kleo\";s:14:\"override_local\";b:0;s:4:\"path\";s:32:\"wpml-config/kleo/wpml-config.xml\";s:7:\"updated\";i:1424767800;s:4:\"hash\";s:32:\"442023138b716c2f410690eabeeab185\";}i:13;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Luster\";s:14:\"override_local\";b:0;s:4:\"path\";s:34:\"wpml-config/luster/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"82a924b258dea8a7d87ba0002b561b1a\";}i:14;O:8:\"stdClass\":5:{s:4:\"name\";s:4:\"Port\";s:14:\"override_local\";b:1;s:4:\"path\";s:32:\"wpml-config/port/wpml-config.xml\";s:7:\"updated\";i:1426496160;s:4:\"hash\";s:32:\"788cce209545b94cfede660d543d7013\";}i:15;O:8:\"stdClass\":5:{s:4:\"name\";s:3:\"Pro\";s:14:\"override_local\";b:1;s:4:\"path\";s:31:\"wpml-config/pro/wpml-config.xml\";s:7:\"updated\";i:1532099940;s:4:\"hash\";s:32:\"dcb42604ed20598ed1bee40a90e45f39\";}i:16;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Relevanssi\";s:14:\"override_local\";b:1;s:4:\"path\";s:38:\"wpml-config/relevanssi/wpml-config.xml\";s:7:\"updated\";i:1519735440;s:4:\"hash\";s:32:\"c630dfd3df777607e8f43ea201b413d0\";}i:17;O:8:\"stdClass\":5:{s:4:\"name\";s:18:\"Relevanssi Premium\";s:14:\"override_local\";b:1;s:4:\"path\";s:46:\"wpml-config/relevanssi-premium/wpml-config.xml\";s:7:\"updated\";i:1519735440;s:4:\"hash\";s:32:\"c630dfd3df777607e8f43ea201b413d0\";}i:18;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Resort\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/resort/wpml-config.xml\";s:7:\"updated\";i:1491314280;s:4:\"hash\";s:32:\"363adea9467157a4e0b49d50c2be3b3f\";}i:19;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Reveal\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/reveal/wpml-config.xml\";s:7:\"updated\";i:1461595980;s:4:\"hash\";s:32:\"58db88b09a090c9fcff3d65bd031d14a\";}i:20;O:8:\"stdClass\":5:{s:4:\"name\";s:13:\"ReWalk Parent\";s:14:\"override_local\";b:0;s:4:\"path\";s:41:\"wpml-config/rewalk-parent/wpml-config.xml\";s:7:\"updated\";i:1480345020;s:4:\"hash\";s:32:\"7b17377ed5e4226bc7e3d44270bc7924\";}i:21;O:8:\"stdClass\":5:{s:4:\"name\";s:10:\"Scrollider\";s:14:\"override_local\";b:0;s:4:\"path\";s:38:\"wpml-config/scrollider/wpml-config.xml\";s:7:\"updated\";i:1479395940;s:4:\"hash\";s:32:\"83fbe85052a8e7eb7ac61496187c7271\";}i:22;O:8:\"stdClass\":5:{s:4:\"name\";s:6:\"Uncode\";s:14:\"override_local\";b:1;s:4:\"path\";s:34:\"wpml-config/uncode/wpml-config.xml\";s:7:\"updated\";i:1574177482;s:4:\"hash\";s:32:\"204c2f3ad5235c1a47423a6ce48b3b8b\";}i:23;O:8:\"stdClass\":5:{s:4:\"name\";s:1:\"X\";s:14:\"override_local\";b:1;s:4:\"path\";s:29:\"wpml-config/x/wpml-config.xml\";s:7:\"updated\";i:1534248540;s:4:\"hash\";s:32:\"0d41ca410c22810705838d664c5fa296\";}}}', 'yes');
INSERT INTO arcp_options VALUES ('152', 'wpml_config_index_updated', '1577108557', 'yes');
INSERT INTO arcp_options VALUES ('153', 'wpml_config_files_arr', 'O:8:\"stdClass\":2:{s:6:\"themes\";a:0:{}s:7:\"plugins\";a:1:{s:21:\"WPML Multilingual CMS\";s:15520:\"<wpml-config>\n    <custom-fields>\n        <custom-field action=\"translate\">title</custom-field>\n        <custom-field action=\"translate\">description</custom-field>\n        <custom-field action=\"translate\">keywords</custom-field>\n        <custom-field action=\"ignore\">_edit_last</custom-field>\n        <custom-field action=\"ignore\">_edit_lock</custom-field>\n        <custom-field action=\"ignore\">_wp_page_template</custom-field>\n        <custom-field action=\"ignore\">_wp_attachment_metadata</custom-field>\n        <custom-field action=\"ignore\">original_post_id</custom-field>\n        <custom-field action=\"ignore\">_wpml_original_post_id</custom-field>\n        <custom-field action=\"ignore\">_wp_old_slug</custom-field>\n        <custom-field action=\"ignore\">_icl_translator_note</custom-field>\n        <custom-field action=\"ignore\">_alp_processed</custom-field>\n        <custom-field action=\"ignore\">_pingme</custom-field>\n        <custom-field action=\"ignore\">_encloseme</custom-field>\n        <custom-field action=\"ignore\">_icl_lang_duplicate_of</custom-field>\n        <custom-field action=\"ignore\">_thumbnail_id</custom-field>\n        <custom-field action=\"ignore\">_wp_attached_file</custom-field>\n        <custom-field action=\"translate\">_wp_attachment_image_alt</custom-field>\n    </custom-fields>\n    <taxonomies>\n        <taxonomy translate=\"1\">translation_priority</taxonomy>\n    </taxonomies>\n    <language-switcher-settings>\n        <key name=\"link_empty\">0</key>\n        <key name=\"statics\">\n            <key name=\"footer\">\n                <key name=\"show\">0</key>\n                <key name=\"display_flags\">1</key>\n                <key name=\"display_names_in_current_lang\">1</key>\n                <key name=\"display_names_in_native_lang\">1</key>\n                <key name=\"display_link_for_current_lang\">1</key>\n                <key name=\"font_current_normal\">#444444</key>\n                <key name=\"font_current_hover\">#000000</key>\n                <key name=\"background_current_normal\">#ffffff</key>\n                <key name=\"background_current_hover\">#eeeeee</key>\n                <key name=\"font_other_normal\">#444444</key>\n                <key name=\"font_other_hover\">#000000</key>\n                <key name=\"background_other_normal\">#ffffff</key>\n                <key name=\"background_other_hover\">#eeeeee</key>\n                <key name=\"border\">#cdcdcd</key>\n            </key>\n            <key name=\"post_translations\">\n                <key name=\"show\">0</key>\n                <key name=\"display_flags\">0</key>\n                <key name=\"display_names_in_current_lang\">1</key>\n                <key name=\"display_names_in_native_lang\">1</key>\n                <key name=\"display_link_for_current_lang\">0</key>\n                <key name=\"display_before_content\">1</key>\n                <key name=\"display_after_content\">0</key>\n                <key name=\"availability_text\">This post is also available in: %s</key>\n            </key>\n            <key name=\"shortcode_actions\">\n                <key name=\"show\">0</key>\n                <key name=\"display_flags\">0</key>\n                <key name=\"display_names_in_current_lang\">1</key>\n                <key name=\"display_names_in_native_lang\">1</key>\n                <key name=\"display_link_for_current_lang\">1</key>\n            </key>\n        </key>\n    </language-switcher-settings>\n    <custom-types>\n        <custom-type translate=\"1\">attachment</custom-type>\n        <custom-type translate=\"1\">wp_block</custom-type>\n    </custom-types>\n	<shortcode-list>call_to_action,newsletter,tours_shortcode,cta_button,woocommerce_thankyou,woocommerce_shop,table,custom_profile,symple_heading,row,tagcloud,sform,nano,add_eventon_list,che,era,essa,nel,gli,per,come,anima,ella,quel,show_gd_mylist_btn,su_spoiler,email,vul,wpv-view,wpv-post-field,accordion_item,citation,gallery,foogallery,user-submitted-posts,chronologie,adresse,get_unit_label,get_reference_label,woocommerce_api_manager_lost_api_key,wp-knowledgebase,testimonials_slider,rpwe,posts,nowotworu,intima-media,dostarcza,standaryzowany,jako,czarny,ekstrakt,kwas,std,dwuwodzian,stm_icon_box,ess_grid,rev_slider,linkview,dropcap,permalinklist,testimonial_slider,woocommerce_software_lost_license,text-blocks,wp_sitemap_page,wcmp_vendor,vendor_registration,efsrow,efscolumn,efsbutton,md_rev_slider,md_live_text,md_imagebox_full,flagallery,pbr_quicklinksmenu,rev_slider_vc,opalhotel_reservation_form,pbr_title_heading,pbr_testimonials,embedyt,yith_wcwl_wishlist,wcm_content_restricted,feature_box,woocommerce_en_check,wc_box,wc_row,wc_column,wc_fullwidth,wc_center,wp_social_sharing,infoboxes,testimonials,woocommerce_social_media_share_buttons,wcv_vendor_dashboard,wcv_shop_settings,wcv_orders,inplayer,useyourdrive,wp_blog_designer,us_blog,tt_address,tt_dashboard,envira-gallery,hotspotitem,woocommerce_klarna_checkout,wpml_mailto,contact-field,ux_banner,advanced_iframe,siteorigin_widget,ec_store,simpay_payment_receipt,su-mensaje,borlabs_cookie,contact_info,stm_boats_video,packages_orderdata,yith_ywraq_request_quote,woocommerce_pay,button,supsystic-tables,clean-login,woocommerce_pay,pdf-embedder,insertgenerator,youzer_register,wysija_form,video,customer-area,customer-area-dashboard,customer-area-private-files-home,customer-area-private-files,customer-account-home,customer-area-account,customer-area-logout,bookly-form,bookly-cancellation-confirmation,stm_classic_filter,popup_trigger,mainwp_archived_lists,wcv_vendorslist,dotpay_content,formularz,cyberactive_school_courses_selection_form,cyberactive_school_session_timeout,ditty_news_ticker,donationcampaign,das-list-events,event_embed,sectiontitle,learn_press_profile,ticket-submit,tickets,aanduiding,datum,thim-icon-box,ngg_images,wpdomainchecker,visualizer,mk_page_section,rssreviews,animate_this,simple-sitemap,gravityform,stm_tech_info,fep_submission_form,ucaddon_diagonal_event_box,wcv_feedback_form,newsletters_management,wcv_pro_dashboard,tm_pb_section,wwof_product_listing,res_map,jssupportticket,socialbar,socialbar_service,front-end-pm,stm_sidebar,give_receipt,donation_history,simpay_error,tm_pb_contact_field,jwp,woocommerce_checkout,mk_custom_list,sg_popup,icon,extra_wrap,frontier-post,invierno,appbox,highlight,ci_alert,vc_mad_products,dt_list,geoip-continent,geoip-country,geoip-region,geoip-city,geoip-postalcode,geoip-latitude,geoip-longitude,geoip-location,woocommerce_notices,stm_icon_box,post-timeline,tt_address,private-message,visualizer,ga_optout,manage_serial_key_usage,ut_header,site_name,bfname,order_id,menu-country,menu-prefer,accordion-item,mini-icon,gvlogic,stm_gmap,contact-form,iconbox,woocommerce_my_account,super_form,wpdm-all-packages,photoblocks,et_pb_map_pin,ginger_reset_cookie,su_divider,fbl_login_button,gmw_single_location,one_full,recent_products,custom_list,endif,jours,wpuf-login,lyte,product_table,wpuf-registration,wpuf_dashboard,amazon,member-pricing-table,rozinky,ngg_images,add_to_cart_url,srizonfbgallery,wysija_form,cl-itext,embedyt,icon_counter,text_block,vtftable,header_static,bookingcalendar,flexslider,anova-geoip-meta,zp_vc_slideshow_element,zp_scrollto,my_calendar_upcoming,wpv-post-url,fusion_button,su_tab,freeconsultation_technical_forum_link,vc_images_carousel,otgs_logo_url,wpv-conditional,wpv-view,teaser,dt_fancy_image,fusion_tagline_box,contact_us_add,content_box,tagline_box,us_iconbox,fusion_tab,fisicamente,one_half_sidebar,action-btn,invicta_contacts,pricing_price,button,icon_link,slideshow,vcex_milestone,secondary-demo,vh_pricing_table,category_name,blogurl,q_team,tab_nav_item</shortcode-list>\n\n    <built-with-page-builder><![CDATA[/<!-- wp:/]]></built-with-page-builder>\n\n    <gutenberg-blocks>\n        <gutenberg-block type=\"core/paragraph\" translate=\"1\">\n            <xpath>//p</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/heading\" translate=\"1\">\n            <xpath>//*[self::h1 or self::h2 or self::h3 or self::h4 or self::h5 or self::h6]</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/button\" translate=\"1\">\n            <xpath>//a</xpath>\n            <xpath type=\'link\'>//a/@href</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/image\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n            <xpath>//figure/img/@alt</xpath>\n            <xpath type=\'link\'>//figure/a/@href</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/gallery\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n            <xpath>//figure/img/@alt</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/media-text\" translate=\"1\">\n            <xpath>//figure/img/@alt</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/list\" translate=\"1\">\n            <xpath>//ul/li|//ol/li</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/quote\" translate=\"1\">\n            <xpath>//blockquote/p</xpath>\n            <xpath>//blockquote/cite</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/audio\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/video\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/file\" translate=\"1\">\n            <xpath>//div/a</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/cover\" translate=\"1\">\n            <xpath>//div/p</xpath>\n        </gutenberg-block>\n        <!-- Since WP 5.0.0 core/cover-image is replaced with core/cover -->\n        <gutenberg-block type=\"core/cover-image\" translate=\"1\">\n            <xpath>//div/p</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/subhead\" translate=\"1\">\n            <xpath>//p</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/verse\" translate=\"1\">\n            <xpath>//pre</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/table\" translate=\"1\">\n            <xpath>//td</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/preformatted\" translate=\"1\">\n            <xpath>//pre</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/pullquote\" translate=\"1\">\n            <xpath>//blockquote/p</xpath>\n            <xpath>//blockquote/cite</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core/column\" translate=\"0\" />\n        <gutenberg-block type=\"core/columns\" translate=\"0\" />\n        <gutenberg-block type=\"core/code\" translate=\"0\" />\n        <gutenberg-block type=\"core/more\" translate=\"0\" />\n        <gutenberg-block type=\"core/nextpage\" translate=\"0\" />\n        <gutenberg-block type=\"core/separator\" translate=\"0\" />\n        <gutenberg-block type=\"core/spacer\" translate=\"0\" />\n        <gutenberg-block type=\"core/shortcode\" translate=\"0\" />\n        <gutenberg-block type=\"core-embed/twitter\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/youtube\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/facebook\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/instagram\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/vimeo\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/soundcloud\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/spotify\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/flickr\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/animoto\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/collegehumor\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/dailymotion\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/funnyordie\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/hulu\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/imgur\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/issuu\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/kickstarter\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/meetup-com\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/mixcloud\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/photobucket\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/photobucket\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/polldaddy\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/reddit\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/reverbnation\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/screencast\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/scribd\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/slideshare\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/smugmug\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/speaker\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/ted\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/tumblr\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/videopress\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/wordpress\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n        <gutenberg-block type=\"core-embed/wordpress-tv\" translate=\"1\">\n            <xpath>//figure/figcaption</xpath>\n        </gutenberg-block>\n    </gutenberg-blocks>\n</wpml-config>\n\";}}', 'yes');
INSERT INTO arcp_options VALUES ('155', 'icl_admin_messages', 'a:2:{s:8:\"messages\";a:0:{}s:16:\"instant_messages\";a:0:{}}', 'yes');
INSERT INTO arcp_options VALUES ('156', 'wp_installer_settings', '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', 'yes');
INSERT INTO arcp_options VALUES ('160', 'wpml_dependencies:installed_plugins', 'a:1:{s:26:\"sitepress-multilingual-cms\";s:5:\"3.6.3\";}', 'yes');
INSERT INTO arcp_options VALUES ('162', 'wpml_update_statuses', 'a:1:{s:31:\"wpml-upgrade-localization-files\";b:1;}', 'yes');
INSERT INTO arcp_options VALUES ('165', 'installer_repositories_with_theme', 'a:1:{i:0;s:7:\"toolset\";}', 'yes');
INSERT INTO arcp_options VALUES ('169', 'acf_version', '5.8.7', 'yes');
INSERT INTO arcp_options VALUES ('170', 'category_children_all', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('171', 'category_children_', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('174', 'wpml_language_switcher', 'a:9:{s:8:\"migrated\";i:0;s:18:\"converted_menu_ids\";i:0;s:15:\"languages_order\";a:2:{i:0;s:2:\"en\";i:1;s:2:\"vi\";}s:10:\"link_empty\";i:0;s:14:\"additional_css\";s:0:\"\";s:15:\"copy_parameters\";s:0:\"\";s:5:\"menus\";a:0:{}s:8:\"sidebars\";a:0:{}s:7:\"statics\";a:3:{s:6:\"footer\";O:19:\"WPML_LS_Footer_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:19:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:6:\"footer\";s:4:\"show\";i:0;s:8:\"template\";s:27:\"wpml-legacy-horizontal-list\";s:13:\"display_flags\";i:1;s:29:\"display_link_for_current_lang\";i:1;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";s:0:\"\";s:13:\"border_normal\";s:0:\"\";s:19:\"font_current_normal\";s:7:\"#444444\";s:18:\"font_current_hover\";s:7:\"#000000\";s:25:\"background_current_normal\";s:7:\"#ffffff\";s:24:\"background_current_hover\";s:7:\"#eeeeee\";s:17:\"font_other_normal\";s:7:\"#444444\";s:16:\"font_other_hover\";s:7:\"#000000\";s:23:\"background_other_normal\";s:7:\"#ffffff\";s:22:\"background_other_hover\";s:7:\"#eeeeee\";s:15:\"template_string\";N;}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}s:17:\"post_translations\";O:30:\"WPML_LS_Post_Translations_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:22:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:17:\"post_translations\";s:4:\"show\";i:0;s:8:\"template\";s:29:\"wpml-legacy-post-translations\";s:13:\"display_flags\";i:0;s:29:\"display_link_for_current_lang\";i:0;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";N;s:13:\"border_normal\";N;s:19:\"font_current_normal\";N;s:18:\"font_current_hover\";N;s:25:\"background_current_normal\";N;s:24:\"background_current_hover\";N;s:17:\"font_other_normal\";N;s:16:\"font_other_hover\";N;s:23:\"background_other_normal\";N;s:22:\"background_other_hover\";N;s:15:\"template_string\";N;s:22:\"display_before_content\";i:1;s:21:\"display_after_content\";i:0;s:17:\"availability_text\";s:34:\"This post is also available in: %s\";}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}s:17:\"shortcode_actions\";O:30:\"WPML_LS_Shortcode_Actions_Slot\":2:{s:24:\"\0WPML_LS_Slot\0properties\";a:19:{s:10:\"slot_group\";s:7:\"statics\";s:9:\"slot_slug\";s:17:\"shortcode_actions\";s:4:\"show\";i:1;s:8:\"template\";s:27:\"wpml-legacy-horizontal-list\";s:13:\"display_flags\";i:0;s:29:\"display_link_for_current_lang\";i:1;s:28:\"display_names_in_native_lang\";i:1;s:29:\"display_names_in_current_lang\";i:1;s:17:\"background_normal\";s:0:\"\";s:13:\"border_normal\";s:0:\"\";s:19:\"font_current_normal\";s:0:\"\";s:18:\"font_current_hover\";s:0:\"\";s:25:\"background_current_normal\";s:0:\"\";s:24:\"background_current_hover\";s:0:\"\";s:17:\"font_other_normal\";s:0:\"\";s:16:\"font_other_hover\";s:0:\"\";s:23:\"background_other_normal\";s:0:\"\";s:22:\"background_other_hover\";s:0:\"\";s:15:\"template_string\";N;}s:34:\"\0WPML_LS_Slot\0protected_properties\";a:2:{i:0;s:10:\"slot_group\";i:1;s:9:\"slot_slug\";}}}}', 'yes');
INSERT INTO arcp_options VALUES ('175', 'category_children_vi', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('176', 'category_children', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('177', '_icl_cache', 'a:2:{s:25:\"language_name_cache_class\";a:198:{s:19:\"language_details_sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:19:\"language_details_ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:19:\"language_details_hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:19:\"language_details_eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:19:\"language_details_bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:19:\"language_details_bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:19:\"language_details_ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:24:\"language_details_zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:24:\"language_details_zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:19:\"language_details_hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:19:\"language_details_cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:19:\"language_details_da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:19:\"language_details_nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:19:\"language_details_en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:19:\"language_details_eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:19:\"language_details_et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:19:\"language_details_fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:19:\"language_details_fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:19:\"language_details_de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:19:\"language_details_el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:19:\"language_details_he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:19:\"language_details_hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:19:\"language_details_hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:19:\"language_details_is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:19:\"language_details_id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:19:\"language_details_ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:19:\"language_details_it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:19:\"language_details_ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:19:\"language_details_ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:19:\"language_details_ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:19:\"language_details_la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:19:\"language_details_lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:19:\"language_details_lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:19:\"language_details_mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:19:\"language_details_ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:19:\"language_details_mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:19:\"language_details_mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:19:\"language_details_ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:19:\"language_details_nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:19:\"language_details_fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:19:\"language_details_pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:22:\"language_details_pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:22:\"language_details_pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:19:\"language_details_pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:19:\"language_details_qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:19:\"language_details_ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:19:\"language_details_ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:19:\"language_details_sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:19:\"language_details_sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:19:\"language_details_sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:19:\"language_details_so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:19:\"language_details_es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:19:\"language_details_sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:19:\"language_details_ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:19:\"language_details_th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:19:\"language_details_tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:19:\"language_details_uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:19:\"language_details_ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:19:\"language_details_uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:19:\"language_details_vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:19:\"language_details_cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:19:\"language_details_yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:19:\"language_details_zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}s:27:\"all_language___english_name\";a:63:{s:2:\"sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:2:\"ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:2:\"hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:2:\"eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:2:\"bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:2:\"bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:2:\"ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:7:\"zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:7:\"zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:2:\"hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:2:\"cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:2:\"da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:2:\"nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:2:\"et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:2:\"fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:2:\"fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:2:\"de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:2:\"el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:2:\"he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:2:\"hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:2:\"hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:2:\"is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:2:\"id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:2:\"ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:2:\"it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:2:\"ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:2:\"ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:2:\"ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:2:\"la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:2:\"lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:2:\"lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:2:\"mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:2:\"ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:2:\"mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:2:\"mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:2:\"ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:2:\"nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:2:\"fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:2:\"pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:5:\"pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:5:\"pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:2:\"pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:2:\"qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:2:\"ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:2:\"ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:2:\"sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:2:\"sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:2:\"sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:2:\"so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:2:\"es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:2:\"sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:2:\"ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:2:\"th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:2:\"tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:2:\"uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:2:\"ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:2:\"uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:2:\"cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:2:\"yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:2:\"zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}}s:21:\"language_details_sqen\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:21:\"language_details_aren\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:21:\"language_details_hyen\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:21:\"language_details_euen\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:21:\"language_details_bsen\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:21:\"language_details_bgen\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:21:\"language_details_caen\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:26:\"language_details_zh-hansen\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:26:\"language_details_zh-hanten\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:21:\"language_details_hren\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:21:\"language_details_csen\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:21:\"language_details_daen\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:21:\"language_details_nlen\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:21:\"language_details_enen\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:21:\"language_details_eoen\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:21:\"language_details_eten\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:21:\"language_details_fien\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:21:\"language_details_fren\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:21:\"language_details_deen\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:21:\"language_details_elen\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:21:\"language_details_heen\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:21:\"language_details_hien\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:21:\"language_details_huen\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:21:\"language_details_isen\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:21:\"language_details_iden\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:21:\"language_details_gaen\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:21:\"language_details_iten\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:21:\"language_details_jaen\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:21:\"language_details_koen\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:21:\"language_details_kuen\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:21:\"language_details_laen\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:21:\"language_details_lven\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:21:\"language_details_lten\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:21:\"language_details_mken\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:21:\"language_details_msen\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:21:\"language_details_mten\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:21:\"language_details_mnen\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:21:\"language_details_neen\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:21:\"language_details_nben\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:21:\"language_details_faen\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:21:\"language_details_plen\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:24:\"language_details_pt-bren\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:24:\"language_details_pt-pten\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:21:\"language_details_paen\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:21:\"language_details_quen\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:21:\"language_details_roen\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:21:\"language_details_ruen\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:21:\"language_details_sren\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:21:\"language_details_sken\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:21:\"language_details_slen\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:21:\"language_details_soen\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:21:\"language_details_esen\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:21:\"language_details_sven\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:21:\"language_details_taen\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:21:\"language_details_then\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:21:\"language_details_tren\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:21:\"language_details_uken\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:21:\"language_details_uren\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:21:\"language_details_uzen\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:21:\"language_details_vien\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:21:\"language_details_cyen\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:21:\"language_details_yien\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:21:\"language_details_zuen\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}s:29:\"all_language_en__english_name\";a:63:{s:2:\"sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:2:\"ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:2:\"hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:2:\"eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:2:\"bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:2:\"bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:2:\"ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:7:\"zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:7:\"zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:2:\"hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:2:\"cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:2:\"da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:2:\"nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:2:\"et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:2:\"fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:2:\"fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:2:\"de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:2:\"el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:2:\"he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:2:\"hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:2:\"hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:2:\"is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:2:\"id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:2:\"ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:2:\"it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:2:\"ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:2:\"ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:2:\"ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:2:\"la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:2:\"lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:2:\"lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:2:\"mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:2:\"ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:2:\"mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:2:\"mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:2:\"ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:2:\"nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:2:\"fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:2:\"pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:5:\"pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:5:\"pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:2:\"pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:2:\"qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:2:\"ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:2:\"ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:2:\"sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:2:\"sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:2:\"sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:2:\"so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:2:\"es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:2:\"sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:2:\"ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:2:\"th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:2:\"tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:2:\"uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:2:\"ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:2:\"uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:2:\"cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:2:\"yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:2:\"zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}}s:28:\"in_language_en__english_name\";a:2:{s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}}s:29:\"all_language_en__display_name\";a:63:{s:2:\"sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:2:\"ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:2:\"hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:2:\"eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:2:\"bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:2:\"bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:2:\"ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:7:\"zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:7:\"zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:2:\"hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:2:\"cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:2:\"da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:2:\"nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:2:\"et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:2:\"fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:2:\"fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:2:\"de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:2:\"el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:2:\"he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:2:\"hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:2:\"hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:2:\"is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:2:\"id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:2:\"ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:2:\"it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:2:\"ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:2:\"ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:2:\"ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:2:\"la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:2:\"lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:2:\"lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:2:\"mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:2:\"ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:2:\"mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:2:\"mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:2:\"ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:2:\"nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:2:\"fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:2:\"pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:5:\"pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:19:\"Portuguese (Brazil)\";}s:5:\"pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:21:\"Portuguese (Portugal)\";}s:2:\"pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:2:\"qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:2:\"ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:2:\"ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:2:\"sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:2:\"sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:2:\"sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:2:\"so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:2:\"es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:2:\"sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:2:\"ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:2:\"th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:2:\"tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:2:\"uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:2:\"ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:2:\"uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:10:\"Vietnamese\";}s:2:\"cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:2:\"yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:2:\"zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}}s:21:\"language_details_sqvi\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:21:\"language_details_arvi\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:21:\"language_details_hyvi\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:21:\"language_details_euvi\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:21:\"language_details_bsvi\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:21:\"language_details_bgvi\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:21:\"language_details_cavi\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:26:\"language_details_zh-hansvi\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:26:\"language_details_zh-hantvi\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:21:\"language_details_hrvi\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:21:\"language_details_csvi\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:21:\"language_details_davi\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:21:\"language_details_nlvi\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:21:\"language_details_envi\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:21:\"language_details_eovi\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:21:\"language_details_etvi\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:21:\"language_details_fivi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:21:\"language_details_frvi\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:21:\"language_details_devi\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:21:\"language_details_elvi\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:21:\"language_details_hevi\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:21:\"language_details_hivi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:21:\"language_details_huvi\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:21:\"language_details_isvi\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:21:\"language_details_idvi\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:21:\"language_details_gavi\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:21:\"language_details_itvi\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:21:\"language_details_javi\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:21:\"language_details_kovi\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:21:\"language_details_kuvi\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:21:\"language_details_lavi\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:21:\"language_details_lvvi\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:21:\"language_details_ltvi\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:21:\"language_details_mkvi\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:21:\"language_details_msvi\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:21:\"language_details_mtvi\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:21:\"language_details_mnvi\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:21:\"language_details_nevi\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:21:\"language_details_nbvi\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:21:\"language_details_favi\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:21:\"language_details_plvi\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:24:\"language_details_pt-brvi\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:18:\"Portuguese, Brazil\";}s:24:\"language_details_pt-ptvi\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:20:\"Portuguese, Portugal\";}s:21:\"language_details_pavi\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:21:\"language_details_quvi\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:21:\"language_details_rovi\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:21:\"language_details_ruvi\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:21:\"language_details_srvi\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:21:\"language_details_skvi\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:21:\"language_details_slvi\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:21:\"language_details_sovi\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:21:\"language_details_esvi\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:21:\"language_details_svvi\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:21:\"language_details_tavi\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:21:\"language_details_thvi\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:21:\"language_details_trvi\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:21:\"language_details_ukvi\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:21:\"language_details_urvi\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:21:\"language_details_uzvi\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:21:\"language_details_vivi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:14:\"Tiếng Việt\";}s:21:\"language_details_cyvi\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:21:\"language_details_yivi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:21:\"language_details_zuvi\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}s:29:\"all_language_vi__english_name\";a:63:{s:2:\"sq\";a:10:{s:4:\"code\";s:2:\"sq\";s:2:\"id\";s:2:\"49\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:8:\"Albanian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sq\";s:12:\"display_name\";s:8:\"Albanian\";}s:2:\"ar\";a:10:{s:4:\"code\";s:2:\"ar\";s:2:\"id\";s:1:\"5\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ar\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ar\";s:12:\"display_name\";s:6:\"Arabic\";}s:2:\"hy\";a:10:{s:4:\"code\";s:2:\"hy\";s:2:\"id\";s:2:\"24\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hy\";s:12:\"display_name\";s:8:\"Armenian\";}s:2:\"eu\";a:10:{s:4:\"code\";s:2:\"eu\";s:2:\"id\";s:2:\"16\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eu_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eu\";s:12:\"display_name\";s:6:\"Basque\";}s:2:\"bs\";a:10:{s:4:\"code\";s:2:\"bs\";s:2:\"id\";s:1:\"6\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:7:\"Bosnian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bs\";s:12:\"display_name\";s:7:\"Bosnian\";}s:2:\"bg\";a:10:{s:4:\"code\";s:2:\"bg\";s:2:\"id\";s:1:\"7\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"bg_BG\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"bg\";s:12:\"display_name\";s:9:\"Bulgarian\";}s:2:\"ca\";a:10:{s:4:\"code\";s:2:\"ca\";s:2:\"id\";s:1:\"8\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ca_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ca\";s:12:\"display_name\";s:7:\"Catalan\";}s:7:\"zh-hans\";a:10:{s:4:\"code\";s:7:\"zh-hans\";s:2:\"id\";s:2:\"60\";s:12:\"english_name\";s:20:\"Chinese (Simplified)\";s:11:\"native_name\";s:12:\"简体中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_CN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hans\";s:12:\"display_name\";s:20:\"Chinese (Simplified)\";}s:7:\"zh-hant\";a:10:{s:4:\"code\";s:7:\"zh-hant\";s:2:\"id\";s:2:\"62\";s:12:\"english_name\";s:21:\"Chinese (Traditional)\";s:11:\"native_name\";s:12:\"繁體中文\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"zh_TW\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:7:\"zh-hant\";s:12:\"display_name\";s:21:\"Chinese (Traditional)\";}s:2:\"hr\";a:10:{s:4:\"code\";s:2:\"hr\";s:2:\"id\";s:2:\"22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hr_HR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hr\";s:12:\"display_name\";s:8:\"Croatian\";}s:2:\"cs\";a:10:{s:4:\"code\";s:2:\"cs\";s:2:\"id\";s:1:\"9\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cs_CZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cs\";s:12:\"display_name\";s:5:\"Czech\";}s:2:\"da\";a:10:{s:4:\"code\";s:2:\"da\";s:2:\"id\";s:2:\"12\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"da_DK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"da\";s:12:\"display_name\";s:6:\"Danish\";}s:2:\"nl\";a:10:{s:4:\"code\";s:2:\"nl\";s:2:\"id\";s:2:\"38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nl_NL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nl\";s:12:\"display_name\";s:5:\"Dutch\";}s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"eo\";a:10:{s:4:\"code\";s:2:\"eo\";s:2:\"id\";s:2:\"14\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanta\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"eo_UY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"eo\";s:12:\"display_name\";s:9:\"Esperanto\";}s:2:\"et\";a:10:{s:4:\"code\";s:2:\"et\";s:2:\"id\";s:2:\"15\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"et_EE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"et\";s:12:\"display_name\";s:8:\"Estonian\";}s:2:\"fi\";a:10:{s:4:\"code\";s:2:\"fi\";s:2:\"id\";s:2:\"18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fi_FI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fi\";s:12:\"display_name\";s:7:\"Finnish\";}s:2:\"fr\";a:10:{s:4:\"code\";s:2:\"fr\";s:2:\"id\";s:1:\"4\";s:12:\"english_name\";s:6:\"French\";s:11:\"native_name\";s:9:\"Français\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fr_FR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fr\";s:12:\"display_name\";s:6:\"French\";}s:2:\"de\";a:10:{s:4:\"code\";s:2:\"de\";s:2:\"id\";s:1:\"3\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"de_DE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"de\";s:12:\"display_name\";s:6:\"German\";}s:2:\"el\";a:10:{s:4:\"code\";s:2:\"el\";s:2:\"id\";s:2:\"13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικα\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"el_GR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"el\";s:12:\"display_name\";s:5:\"Greek\";}s:2:\"he\";a:10:{s:4:\"code\";s:2:\"he\";s:2:\"id\";s:2:\"20\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:10:\"עברית\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"he_IL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"he\";s:12:\"display_name\";s:6:\"Hebrew\";}s:2:\"hi\";a:10:{s:4:\"code\";s:2:\"hi\";s:2:\"id\";s:2:\"21\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hi\";s:12:\"display_name\";s:5:\"Hindi\";}s:2:\"hu\";a:10:{s:4:\"code\";s:2:\"hu\";s:2:\"id\";s:2:\"23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"hu_HU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"hu\";s:12:\"display_name\";s:9:\"Hungarian\";}s:2:\"is\";a:10:{s:4:\"code\";s:2:\"is\";s:2:\"id\";s:2:\"26\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"is_IS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"is\";s:12:\"display_name\";s:9:\"Icelandic\";}s:2:\"id\";a:10:{s:4:\"code\";s:2:\"id\";s:2:\"id\";s:2:\"25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:9:\"Indonesia\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"id_ID\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"id\";s:12:\"display_name\";s:10:\"Indonesian\";}s:2:\"ga\";a:10:{s:4:\"code\";s:2:\"ga\";s:2:\"id\";s:2:\"19\";s:12:\"english_name\";s:5:\"Irish\";s:11:\"native_name\";s:7:\"Gaeilge\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ga\";s:12:\"display_name\";s:5:\"Irish\";}s:2:\"it\";a:10:{s:4:\"code\";s:2:\"it\";s:2:\"id\";s:2:\"27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"it_IT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"it\";s:12:\"display_name\";s:7:\"Italian\";}s:2:\"ja\";a:10:{s:4:\"code\";s:2:\"ja\";s:2:\"id\";s:2:\"28\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ja\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ja\";s:12:\"display_name\";s:8:\"Japanese\";}s:2:\"ko\";a:10:{s:4:\"code\";s:2:\"ko\";s:2:\"id\";s:2:\"29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ko_KR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ko\";s:12:\"display_name\";s:6:\"Korean\";}s:2:\"ku\";a:10:{s:4:\"code\";s:2:\"ku\";s:2:\"id\";s:2:\"30\";s:12:\"english_name\";s:7:\"Kurdish\";s:11:\"native_name\";s:7:\"Kurdish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:2:\"ku\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ku\";s:12:\"display_name\";s:7:\"Kurdish\";}s:2:\"la\";a:10:{s:4:\"code\";s:2:\"la\";s:2:\"id\";s:2:\"31\";s:12:\"english_name\";s:5:\"Latin\";s:11:\"native_name\";s:5:\"Latin\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"la\";s:12:\"display_name\";s:5:\"Latin\";}s:2:\"lv\";a:10:{s:4:\"code\";s:2:\"lv\";s:2:\"id\";s:2:\"32\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:9:\"Latviešu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lv_LV\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lv\";s:12:\"display_name\";s:7:\"Latvian\";}s:2:\"lt\";a:10:{s:4:\"code\";s:2:\"lt\";s:2:\"id\";s:2:\"33\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:8:\"Lietuvos\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"lt_LT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"lt\";s:12:\"display_name\";s:10:\"Lithuanian\";}s:2:\"mk\";a:10:{s:4:\"code\";s:2:\"mk\";s:2:\"id\";s:2:\"34\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:20:\"македонски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"mk_MK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mk\";s:12:\"display_name\";s:10:\"Macedonian\";}s:2:\"ms\";a:10:{s:4:\"code\";s:2:\"ms\";s:2:\"id\";s:2:\"63\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:6:\"Melayu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ms_MY\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ms\";s:12:\"display_name\";s:5:\"Malay\";}s:2:\"mt\";a:10:{s:4:\"code\";s:2:\"mt\";s:2:\"id\";s:2:\"35\";s:12:\"english_name\";s:7:\"Maltese\";s:11:\"native_name\";s:5:\"Malti\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mt\";s:12:\"display_name\";s:7:\"Maltese\";}s:2:\"mn\";a:10:{s:4:\"code\";s:2:\"mn\";s:2:\"id\";s:2:\"36\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:9:\"Mongolian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"mn\";s:12:\"display_name\";s:9:\"Mongolian\";}s:2:\"ne\";a:10:{s:4:\"code\";s:2:\"ne\";s:2:\"id\";s:2:\"37\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:6:\"Nepali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ne\";s:12:\"display_name\";s:6:\"Nepali\";}s:2:\"nb\";a:10:{s:4:\"code\";s:2:\"nb\";s:2:\"id\";s:2:\"39\";s:12:\"english_name\";s:17:\"Norwegian Bokmål\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"nb_NO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"nb\";s:12:\"display_name\";s:17:\"Norwegian Bokmål\";}s:2:\"fa\";a:10:{s:4:\"code\";s:2:\"fa\";s:2:\"id\";s:2:\"17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"fa_IR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"fa\";s:12:\"display_name\";s:7:\"Persian\";}s:2:\"pl\";a:10:{s:4:\"code\";s:2:\"pl\";s:2:\"id\";s:2:\"41\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"polski\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pl_PL\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pl\";s:12:\"display_name\";s:6:\"Polish\";}s:5:\"pt-br\";a:10:{s:4:\"code\";s:5:\"pt-br\";s:2:\"id\";s:2:\"43\";s:12:\"english_name\";s:18:\"Portuguese, Brazil\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_BR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-br\";s:12:\"display_name\";s:18:\"Portuguese, Brazil\";}s:5:\"pt-pt\";a:10:{s:4:\"code\";s:5:\"pt-pt\";s:2:\"id\";s:2:\"42\";s:12:\"english_name\";s:20:\"Portuguese, Portugal\";s:11:\"native_name\";s:10:\"Português\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"pt_PT\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:5:\"pt-pt\";s:12:\"display_name\";s:20:\"Portuguese, Portugal\";}s:2:\"pa\";a:10:{s:4:\"code\";s:2:\"pa\";s:2:\"id\";s:2:\"40\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:7:\"Punjabi\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"pa\";s:12:\"display_name\";s:7:\"Punjabi\";}s:2:\"qu\";a:10:{s:4:\"code\";s:2:\"qu\";s:2:\"id\";s:2:\"44\";s:12:\"english_name\";s:7:\"Quechua\";s:11:\"native_name\";s:7:\"Quechua\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"qu\";s:12:\"display_name\";s:7:\"Quechua\";}s:2:\"ro\";a:10:{s:4:\"code\";s:2:\"ro\";s:2:\"id\";s:2:\"45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ro_RO\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ro\";s:12:\"display_name\";s:8:\"Romanian\";}s:2:\"ru\";a:10:{s:4:\"code\";s:2:\"ru\";s:2:\"id\";s:2:\"46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"ru_RU\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ru\";s:12:\"display_name\";s:7:\"Russian\";}s:2:\"sr\";a:10:{s:4:\"code\";s:2:\"sr\";s:2:\"id\";s:2:\"50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:12:\"српски\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sr_RS\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sr\";s:12:\"display_name\";s:7:\"Serbian\";}s:2:\"sk\";a:10:{s:4:\"code\";s:2:\"sk\";s:2:\"id\";s:2:\"10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sk_SK\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sk\";s:12:\"display_name\";s:6:\"Slovak\";}s:2:\"sl\";a:10:{s:4:\"code\";s:2:\"sl\";s:2:\"id\";s:2:\"47\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sl_SI\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sl\";s:12:\"display_name\";s:9:\"Slovenian\";}s:2:\"so\";a:10:{s:4:\"code\";s:2:\"so\";s:2:\"id\";s:2:\"48\";s:12:\"english_name\";s:6:\"Somali\";s:11:\"native_name\";s:6:\"Somali\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"so\";s:12:\"display_name\";s:6:\"Somali\";}s:2:\"es\";a:10:{s:4:\"code\";s:2:\"es\";s:2:\"id\";s:1:\"2\";s:12:\"english_name\";s:7:\"Spanish\";s:11:\"native_name\";s:8:\"Español\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"es_ES\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"es\";s:12:\"display_name\";s:7:\"Spanish\";}s:2:\"sv\";a:10:{s:4:\"code\";s:2:\"sv\";s:2:\"id\";s:2:\"51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"sv_SE\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"sv\";s:12:\"display_name\";s:7:\"Swedish\";}s:2:\"ta\";a:10:{s:4:\"code\";s:2:\"ta\";s:2:\"id\";s:2:\"52\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:5:\"Tamil\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ta\";s:12:\"display_name\";s:5:\"Tamil\";}s:2:\"th\";a:10:{s:4:\"code\";s:2:\"th\";s:2:\"id\";s:2:\"53\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"th_TH\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"th\";s:12:\"display_name\";s:4:\"Thai\";}s:2:\"tr\";a:10:{s:4:\"code\";s:2:\"tr\";s:2:\"id\";s:2:\"54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"tr_TR\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"tr\";s:12:\"display_name\";s:7:\"Turkish\";}s:2:\"uk\";a:10:{s:4:\"code\";s:2:\"uk\";s:2:\"id\";s:2:\"55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:9:\"Ukrainian\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uk_UA\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uk\";s:12:\"display_name\";s:9:\"Ukrainian\";}s:2:\"ur\";a:10:{s:4:\"code\";s:2:\"ur\";s:2:\"id\";s:2:\"56\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:9:\"اردو \";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"ur\";s:12:\"display_name\";s:4:\"Urdu\";}s:2:\"uz\";a:10:{s:4:\"code\";s:2:\"uz\";s:2:\"id\";s:2:\"57\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:5:\"Uzbek\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"uz_UZ\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"uz\";s:12:\"display_name\";s:5:\"Uzbek\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:14:\"Tiếng Việt\";}s:2:\"cy\";a:10:{s:4:\"code\";s:2:\"cy\";s:2:\"id\";s:2:\"11\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:5:\"cy_GB\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"cy\";s:12:\"display_name\";s:5:\"Welsh\";}s:2:\"yi\";a:10:{s:4:\"code\";s:2:\"yi\";s:2:\"id\";s:2:\"59\";s:12:\"english_name\";s:7:\"Yiddish\";s:11:\"native_name\";s:7:\"Yiddish\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"yi\";s:12:\"display_name\";s:7:\"Yiddish\";}s:2:\"zu\";a:10:{s:4:\"code\";s:2:\"zu\";s:2:\"id\";s:2:\"61\";s:12:\"english_name\";s:4:\"Zulu\";s:11:\"native_name\";s:4:\"Zulu\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"0\";s:14:\"default_locale\";s:0:\"\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"zu\";s:12:\"display_name\";s:4:\"Zulu\";}}s:28:\"in_language_vi__english_name\";a:2:{s:2:\"en\";a:10:{s:4:\"code\";s:2:\"en\";s:2:\"id\";s:1:\"1\";s:12:\"english_name\";s:7:\"English\";s:11:\"native_name\";s:7:\"English\";s:5:\"major\";s:1:\"1\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"en_US\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"en\";s:12:\"display_name\";s:7:\"English\";}s:2:\"vi\";a:10:{s:4:\"code\";s:2:\"vi\";s:2:\"id\";s:2:\"58\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:5:\"major\";s:1:\"0\";s:6:\"active\";s:1:\"1\";s:14:\"default_locale\";s:5:\"vi_VN\";s:10:\"encode_url\";s:1:\"0\";s:3:\"tag\";s:2:\"vi\";s:12:\"display_name\";s:14:\"Tiếng Việt\";}}s:4:\"enen\";s:7:\"English\";s:4:\"envi\";s:7:\"English\";s:4:\"vivi\";s:14:\"Tiếng Việt\";}s:17:\"flags_cache_class\";a:63:{s:2:\"en\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"en.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"vi\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"vi.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sq\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sq.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ar\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ar.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"hy\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"hy.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"eu\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"eu.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"bs\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"bs.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"bg\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"bg.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ca\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ca.png\";s:13:\"from_template\";s:1:\"0\";}s:7:\"zh-hans\";O:8:\"stdClass\":2:{s:4:\"flag\";s:11:\"zh-hans.png\";s:13:\"from_template\";s:1:\"0\";}s:7:\"zh-hant\";O:8:\"stdClass\":2:{s:4:\"flag\";s:11:\"zh-hant.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"hr\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"hr.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"cs\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"cs.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"da\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"da.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"nl\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"nl.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"eo\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"eo.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"et\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"et.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"fi\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"fi.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"fr\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"fr.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"de\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"de.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"el\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"el.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"he\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"he.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"hi\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"hi.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"hu\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"hu.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"is\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"is.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"id\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"id.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ga\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ga.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"it\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"it.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ja\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ja.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ko\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ko.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ku\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ku.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"la\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"la.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"lv\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"lv.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"lt\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"lt.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"mk\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"mk.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ms\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ms.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"mt\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"mt.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"mn\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"mn.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ne\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ne.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"nb\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"nb.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"fa\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"fa.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"pl\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"pl.png\";s:13:\"from_template\";s:1:\"0\";}s:5:\"pt-br\";O:8:\"stdClass\":2:{s:4:\"flag\";s:9:\"pt-br.png\";s:13:\"from_template\";s:1:\"0\";}s:5:\"pt-pt\";O:8:\"stdClass\":2:{s:4:\"flag\";s:9:\"pt-pt.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"pa\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"pa.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"qu\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"qu.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ro\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ro.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ru\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ru.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sr\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sr.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sk\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sk.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sl\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sl.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"so\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"so.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"es\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"es.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"sv\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"sv.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ta\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ta.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"th\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"th.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"tr\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"tr.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"uk\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"uk.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"ur\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"ur.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"uz\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"uz.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"cy\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"cy.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"yi\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"yi.png\";s:13:\"from_template\";s:1:\"0\";}s:2:\"zu\";O:8:\"stdClass\":2:{s:4:\"flag\";s:6:\"zu.png\";s:13:\"from_template\";s:1:\"0\";}}}', 'yes');
INSERT INTO arcp_options VALUES ('178', 'wpml_notices', 'a:0:{}', 'no');
INSERT INTO arcp_options VALUES ('179', 'widget_icl_lang_sel_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO arcp_options VALUES ('180', 'current_theme', 'Aura Capital', 'yes');
INSERT INTO arcp_options VALUES ('181', 'theme_mods_auracapit', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}}', 'yes');
INSERT INTO arcp_options VALUES ('182', 'theme_switched', '', 'yes');
INSERT INTO arcp_options VALUES ('183', '_site_transient_timeout_wpml_language_switcher_template_objects', '1578992504', 'no');
INSERT INTO arcp_options VALUES ('184', '_site_transient_wpml_language_switcher_template_objects', 'a:6:{s:20:\"wpml-legacy-dropdown\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:153:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-dropdown\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:8:\"Dropdown\";s:4:\"slug\";s:20:\"wpml-legacy-dropdown\";s:8:\"base_uri\";s:116:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown/\";s:3:\"css\";a:1:{i:0;s:125:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown/style.css\";}s:2:\"js\";a:1:{i:0;s:125:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown/script.js\";}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:2:{i:0;s:8:\"sidebars\";i:1;s:17:\"shortcode_actions\";}s:14:\"force_settings\";a:1:{s:29:\"display_link_for_current_lang\";i:1;}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:153:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-dropdown\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:26:\"wpml-legacy-dropdown-click\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:159:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-dropdown-click\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:14:\"Dropdown click\";s:4:\"slug\";s:26:\"wpml-legacy-dropdown-click\";s:8:\"base_uri\";s:122:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown-click/\";s:3:\"css\";a:1:{i:0;s:131:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown-click/style.css\";}s:2:\"js\";a:1:{i:0;s:131:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-dropdown-click/script.js\";}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:2:{i:0;s:8:\"sidebars\";i:1;s:17:\"shortcode_actions\";}s:14:\"force_settings\";a:1:{s:29:\"display_link_for_current_lang\";i:1;}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:159:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-dropdown-click\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:27:\"wpml-legacy-horizontal-list\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:160:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-list-horizontal\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:15:\"Horizontal List\";s:4:\"slug\";s:27:\"wpml-legacy-horizontal-list\";s:8:\"base_uri\";s:123:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-horizontal/\";s:3:\"css\";a:1:{i:0;s:132:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-horizontal/style.css\";}s:2:\"js\";a:0:{}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:3:{i:0;s:8:\"sidebars\";i:1;s:6:\"footer\";i:2;s:17:\"shortcode_actions\";}s:14:\"force_settings\";a:0:{}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:160:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-list-horizontal\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:25:\"wpml-legacy-vertical-list\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:158:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-list-vertical\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:13:\"Vertical List\";s:4:\"slug\";s:25:\"wpml-legacy-vertical-list\";s:8:\"base_uri\";s:121:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-vertical/\";s:3:\"css\";a:1:{i:0;s:130:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-list-vertical/style.css\";}s:2:\"js\";a:0:{}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:3:{i:0;s:8:\"sidebars\";i:1;s:6:\"footer\";i:2;s:17:\"shortcode_actions\";}s:14:\"force_settings\";a:0:{}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:158:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-list-vertical\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:29:\"wpml-legacy-post-translations\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:162:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-post-translations\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:17:\"Post translations\";s:4:\"slug\";s:29:\"wpml-legacy-post-translations\";s:8:\"base_uri\";s:125:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-post-translations/\";s:3:\"css\";a:1:{i:0;s:134:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/legacy-post-translations/style.css\";}s:2:\"js\";a:0:{}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:1:{i:0;s:17:\"post_translations\";}s:14:\"force_settings\";a:0:{}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:162:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\legacy-post-translations\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}s:14:\"wpml-menu-item\";O:16:\"WPML_LS_Template\":10:{s:26:\"\0WPML_LS_Template\0template\";a:12:{s:4:\"path\";a:1:{i:0;s:147:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\menu-item\";}s:7:\"version\";s:1:\"1\";s:4:\"name\";s:9:\"Menu Item\";s:4:\"slug\";s:14:\"wpml-menu-item\";s:8:\"base_uri\";s:110:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/menu-item/\";s:3:\"css\";a:1:{i:0;s:119:\"http://aura-capit.dev.vn/wp-content/plugins/sitepress-multilingual-cms/templates/language-switchers/menu-item/style.css\";}s:2:\"js\";a:0:{}s:14:\"flags_base_uri\";N;s:14:\"flag_extension\";N;s:7:\"is_core\";b:1;s:3:\"for\";a:1:{i:0;s:5:\"menus\";}s:14:\"force_settings\";a:0:{}}s:23:\"\0WPML_LS_Template\0model\";a:0:{}s:24:\"\0WPML_LS_Template\0prefix\";s:8:\"wpml-ls-\";s:38:\"\0WPML_Templates_Factory\0custom_filters\";a:0:{}s:40:\"\0WPML_Templates_Factory\0custom_functions\";a:0:{}s:17:\"\0*\0template_paths\";a:1:{i:0;s:147:\"C:\\xampp\\htdocs\\project\\2019\\AuraCapit\\03.WWW\\dev-aura-capital\\wp-content\\plugins\\sitepress-multilingual-cms\\templates\\language-switchers\\menu-item\";}s:39:\"\0WPML_Templates_Factory\0cache_directory\";N;s:18:\"\0*\0template_string\";N;s:30:\"\0WPML_Templates_Factory\0wp_api\";N;s:28:\"\0WPML_Templates_Factory\0twig\";N;}}', 'no');
INSERT INTO arcp_options VALUES ('190', 'nav_menu_children_en', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('191', 'nav_menu_children_vi', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('192', 'nav_menu_children_all', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('193', 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes');
INSERT INTO arcp_options VALUES ('200', 'list-commitment_children', 'a:0:{}', 'yes');
INSERT INTO arcp_options VALUES ('203', '_transient_timeout_acf_get_remote_plugin_info', '1577194936', 'no');
INSERT INTO arcp_options VALUES ('204', '_transient_acf_get_remote_plugin_info', 'a:16:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"5.8.7\";s:8:\"homepage\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"author\";s:64:\"<a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>\";s:12:\"contributors\";a:1:{s:12:\"elliotcondon\";a:3:{s:7:\"profile\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"avatar\";s:81:\"https://secure.gravatar.com/avatar/c296f449f92233e8d1102ff01c9bc71e?s=96&d=mm&r=g\";s:12:\"display_name\";s:22:\"Advanced Custom Fields\";}}s:8:\"requires\";s:5:\"4.7.0\";s:12:\"requires_php\";s:3:\"5.4\";s:6:\"tested\";s:5:\"5.3.0\";s:5:\"added\";s:10:\"2014-07-11\";s:12:\"last_updated\";s:10:\"2019-11-12\";s:9:\"changelog\";s:589:\"<h4>5.8.7</h4><p><em>Release Date - 12 November 2019</em></p>\n\n<ul>\n<li>New - Updated admin CSS for new WordPress 5.3 styling.</li>\n<li>Fix - Fixed various issues affecting dynamic metaboxes in the block editor (requires WordPress 5.3)</li>\n<li>Fix - Fixed performance issue when checking network sites for upgrades.</li>\n<li>Fix - Fixed Select2 clones appearing after duplicating a Relationship field.</li>\n<li>Tweak - Repeater field \"Add row\" icons will now hide when maximum rows are reached.</li>\n<li>Tweak - Removed ACF Blocks keyword limit for later versions of Gutenberg.</li>\n</ul>\";s:14:\"upgrade_notice\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"versions\";a:104:{i:0;s:5:\"5.8.6\";i:1;s:5:\"5.8.5\";i:2;s:5:\"5.8.4\";i:3;s:5:\"5.8.3\";i:4;s:5:\"5.8.2\";i:5;s:5:\"5.8.1\";i:6;s:13:\"5.8.0-beta4.1\";i:7;s:11:\"5.8.0-beta4\";i:8;s:11:\"5.8.0-beta3\";i:9;s:11:\"5.8.0-beta2\";i:10;s:11:\"5.8.0-beta1\";i:11;s:9:\"5.8.0-RC2\";i:12;s:9:\"5.8.0-RC1\";i:13;s:5:\"5.8.0\";i:14;s:5:\"5.7.9\";i:15;s:5:\"5.7.8\";i:16;s:5:\"5.7.7\";i:17;s:5:\"5.7.6\";i:18;s:5:\"5.7.5\";i:19;s:5:\"5.7.4\";i:20;s:5:\"5.7.3\";i:21;s:5:\"5.7.2\";i:22;s:6:\"5.7.13\";i:23;s:6:\"5.7.12\";i:24;s:6:\"5.7.10\";i:25;s:5:\"5.7.1\";i:26;s:5:\"5.7.0\";i:27;s:5:\"5.6.9\";i:28;s:5:\"5.6.8\";i:29;s:5:\"5.6.7\";i:30;s:5:\"5.6.6\";i:31;s:5:\"5.6.5\";i:32;s:5:\"5.6.4\";i:33;s:5:\"5.6.3\";i:34;s:5:\"5.6.2\";i:35;s:6:\"5.6.10\";i:36;s:5:\"5.6.1\";i:37;s:11:\"5.6.0-beta2\";i:38;s:11:\"5.6.0-beta1\";i:39;s:9:\"5.6.0-RC2\";i:40;s:9:\"5.6.0-RC1\";i:41;s:5:\"5.6.0\";i:42;s:5:\"5.5.9\";i:43;s:5:\"5.5.7\";i:44;s:5:\"5.5.5\";i:45;s:5:\"5.5.3\";i:46;s:5:\"5.5.2\";i:47;s:6:\"5.5.14\";i:48;s:6:\"5.5.13\";i:49;s:6:\"5.5.12\";i:50;s:6:\"5.5.11\";i:51;s:6:\"5.5.10\";i:52;s:5:\"5.5.1\";i:53;s:5:\"5.5.0\";i:54;s:5:\"5.4.8\";i:55;s:5:\"5.4.7\";i:56;s:5:\"5.4.6\";i:57;s:5:\"5.4.5\";i:58;s:5:\"5.4.4\";i:59;s:5:\"5.4.3\";i:60;s:5:\"5.4.2\";i:61;s:5:\"5.4.1\";i:62;s:5:\"5.4.0\";i:63;s:5:\"5.3.9\";i:64;s:5:\"5.3.8\";i:65;s:5:\"5.3.7\";i:66;s:5:\"5.3.6\";i:67;s:5:\"5.3.5\";i:68;s:5:\"5.3.4\";i:69;s:5:\"5.3.3\";i:70;s:5:\"5.3.2\";i:71;s:6:\"5.3.10\";i:72;s:5:\"5.3.1\";i:73;s:5:\"5.3.0\";i:74;s:5:\"5.2.9\";i:75;s:5:\"5.2.8\";i:76;s:5:\"5.2.7\";i:77;s:5:\"5.2.6\";i:78;s:5:\"5.2.5\";i:79;s:5:\"5.2.4\";i:80;s:5:\"5.2.3\";i:81;s:5:\"5.2.2\";i:82;s:5:\"5.2.1\";i:83;s:5:\"5.2.0\";i:84;s:5:\"5.1.9\";i:85;s:5:\"5.1.8\";i:86;s:5:\"5.1.7\";i:87;s:5:\"5.1.6\";i:88;s:5:\"5.1.5\";i:89;s:5:\"5.1.4\";i:90;s:5:\"5.1.3\";i:91;s:5:\"5.1.2\";i:92;s:5:\"5.1.1\";i:93;s:5:\"5.1.0\";i:94;s:5:\"5.0.9\";i:95;s:5:\"5.0.8\";i:96;s:5:\"5.0.7\";i:97;s:5:\"5.0.6\";i:98;s:5:\"5.0.5\";i:99;s:5:\"5.0.4\";i:100;s:5:\"5.0.3\";i:101;s:5:\"5.0.2\";i:102;s:5:\"5.0.1\";i:103;s:5:\"5.0.0\";}}', 'no');
INSERT INTO arcp_options VALUES ('205', '_site_transient_timeout_theme_roots', '1577110340', 'no');
INSERT INTO arcp_options VALUES ('206', '_site_transient_theme_roots', 'a:4:{s:9:\"auracapit\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');
INSERT INTO arcp_options VALUES ('207', '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1577108546;s:7:\"checked\";a:4:{s:9:\"auracapit\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO arcp_options VALUES ('208', '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1577108549;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.5.11\";s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:3:\"1.7\";s:40:\"sitepress-multilingual-cms/sitepress.php\";s:5:\"3.6.3\";}s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:7:\"package\";s:0:\"\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- ----------------------------
-- Table structure for `arcp_postmeta`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_postmeta`;
CREATE TABLE `arcp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_postmeta
-- ----------------------------
INSERT INTO arcp_postmeta VALUES ('1', '2', '_wp_page_template', 'default');
INSERT INTO arcp_postmeta VALUES ('2', '3', '_wp_page_template', 'default');
INSERT INTO arcp_postmeta VALUES ('5', '3', '_wp_trash_meta_status', 'draft');
INSERT INTO arcp_postmeta VALUES ('6', '3', '_wp_trash_meta_time', '1576400517');
INSERT INTO arcp_postmeta VALUES ('7', '3', '_wp_desired_post_slug', 'privacy-policy');
INSERT INTO arcp_postmeta VALUES ('8', '2', '_wp_trash_meta_status', 'publish');
INSERT INTO arcp_postmeta VALUES ('9', '2', '_wp_trash_meta_time', '1576400521');
INSERT INTO arcp_postmeta VALUES ('10', '2', '_wp_desired_post_slug', 'sample-page');
INSERT INTO arcp_postmeta VALUES ('11', '8', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('12', '8', '_edit_lock', '1577111431:1');
INSERT INTO arcp_postmeta VALUES ('13', '8', '_wp_page_template', 'page-homepage.php');
INSERT INTO arcp_postmeta VALUES ('14', '10', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('15', '10', '_edit_lock', '1577111484:1');
INSERT INTO arcp_postmeta VALUES ('16', '10', '_wp_page_template', 'page-investment.php');
INSERT INTO arcp_postmeta VALUES ('17', '12', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('18', '12', '_edit_lock', '1577111667:1');
INSERT INTO arcp_postmeta VALUES ('19', '12', '_wp_page_template', 'page-investor.php');
INSERT INTO arcp_postmeta VALUES ('20', '14', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('21', '14', '_edit_lock', '1576400562:1');
INSERT INTO arcp_postmeta VALUES ('22', '14', '_wp_page_template', 'page-news.php');
INSERT INTO arcp_postmeta VALUES ('23', '16', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('24', '16', '_wp_page_template', 'page-homepage.php');
INSERT INTO arcp_postmeta VALUES ('25', '16', '_edit_lock', '1576400594:1');
INSERT INTO arcp_postmeta VALUES ('26', '18', '_menu_item_type', 'post_type');
INSERT INTO arcp_postmeta VALUES ('27', '18', '_menu_item_menu_item_parent', '0');
INSERT INTO arcp_postmeta VALUES ('28', '18', '_menu_item_object_id', '14');
INSERT INTO arcp_postmeta VALUES ('29', '18', '_menu_item_object', 'page');
INSERT INTO arcp_postmeta VALUES ('30', '18', '_menu_item_target', '');
INSERT INTO arcp_postmeta VALUES ('31', '18', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO arcp_postmeta VALUES ('32', '18', '_menu_item_xfn', '');
INSERT INTO arcp_postmeta VALUES ('33', '18', '_menu_item_url', '');
INSERT INTO arcp_postmeta VALUES ('35', '19', '_menu_item_type', 'post_type');
INSERT INTO arcp_postmeta VALUES ('36', '19', '_menu_item_menu_item_parent', '0');
INSERT INTO arcp_postmeta VALUES ('37', '19', '_menu_item_object_id', '12');
INSERT INTO arcp_postmeta VALUES ('38', '19', '_menu_item_object', 'page');
INSERT INTO arcp_postmeta VALUES ('39', '19', '_menu_item_target', '');
INSERT INTO arcp_postmeta VALUES ('40', '19', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO arcp_postmeta VALUES ('41', '19', '_menu_item_xfn', '');
INSERT INTO arcp_postmeta VALUES ('42', '19', '_menu_item_url', '');
INSERT INTO arcp_postmeta VALUES ('44', '20', '_menu_item_type', 'post_type');
INSERT INTO arcp_postmeta VALUES ('45', '20', '_menu_item_menu_item_parent', '0');
INSERT INTO arcp_postmeta VALUES ('46', '20', '_menu_item_object_id', '10');
INSERT INTO arcp_postmeta VALUES ('47', '20', '_menu_item_object', 'page');
INSERT INTO arcp_postmeta VALUES ('48', '20', '_menu_item_target', '');
INSERT INTO arcp_postmeta VALUES ('49', '20', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO arcp_postmeta VALUES ('50', '20', '_menu_item_xfn', '');
INSERT INTO arcp_postmeta VALUES ('51', '20', '_menu_item_url', '');
INSERT INTO arcp_postmeta VALUES ('53', '21', '_menu_item_type', 'post_type');
INSERT INTO arcp_postmeta VALUES ('54', '21', '_menu_item_menu_item_parent', '0');
INSERT INTO arcp_postmeta VALUES ('55', '21', '_menu_item_object_id', '8');
INSERT INTO arcp_postmeta VALUES ('56', '21', '_menu_item_object', 'page');
INSERT INTO arcp_postmeta VALUES ('57', '21', '_menu_item_target', '');
INSERT INTO arcp_postmeta VALUES ('58', '21', '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}');
INSERT INTO arcp_postmeta VALUES ('59', '21', '_menu_item_xfn', '');
INSERT INTO arcp_postmeta VALUES ('60', '21', '_menu_item_url', '');
INSERT INTO arcp_postmeta VALUES ('62', '22', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('63', '22', '_edit_lock', '1576401122:1');
INSERT INTO arcp_postmeta VALUES ('64', '23', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('65', '23', '_edit_lock', '1576401133:1');
INSERT INTO arcp_postmeta VALUES ('66', '24', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('67', '24', '_edit_lock', '1576401145:1');
INSERT INTO arcp_postmeta VALUES ('68', '25', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('69', '25', '_edit_lock', '1576401159:1');
INSERT INTO arcp_postmeta VALUES ('70', '26', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('71', '26', '_edit_lock', '1576401174:1');
INSERT INTO arcp_postmeta VALUES ('72', '27', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('73', '27', '_edit_lock', '1576401219:1');
INSERT INTO arcp_postmeta VALUES ('74', '28', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('75', '28', '_edit_lock', '1577111292:1');
INSERT INTO arcp_postmeta VALUES ('76', '31', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('77', '31', '_edit_lock', '1576418478:1');
INSERT INTO arcp_postmeta VALUES ('78', '33', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('79', '33', '_edit_lock', '1576417770:1');
INSERT INTO arcp_postmeta VALUES ('80', '38', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('81', '38', '_edit_lock', '1577110220:1');
INSERT INTO arcp_postmeta VALUES ('82', '43', '_wp_attached_file', '2019/12/about.png');
INSERT INTO arcp_postmeta VALUES ('83', '43', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:574;s:6:\"height\";i:516;s:4:\"file\";s:17:\"2019/12/about.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x270.png\";s:5:\"width\";i:300;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('84', '44', '_wp_attached_file', '2019/12/milestone.png');
INSERT INTO arcp_postmeta VALUES ('85', '44', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:520;s:4:\"file\";s:21:\"2019/12/milestone.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"milestone-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"milestone-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('86', '45', '_wp_attached_file', '2019/12/bg-text.png');
INSERT INTO arcp_postmeta VALUES ('87', '45', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:855;s:4:\"file\";s:19:\"2019/12/bg-text.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bg-text-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bg-text-92x300.png\";s:5:\"width\";i:92;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('88', '8', 'title', 'AURA\r\nCAPITAL‘S\r\nBIZ MODEL');
INSERT INTO arcp_postmeta VALUES ('89', '8', '_title', 'field_5df5fa7346250');
INSERT INTO arcp_postmeta VALUES ('90', '8', 'description', 'Our business model is anchored in a long term vision that stimulates creativity and excellence of each member. This model is a guideline for our business that drives the success of our group and ensures its promising future');
INSERT INTO arcp_postmeta VALUES ('91', '8', '_description', 'field_5df5facb46251');
INSERT INTO arcp_postmeta VALUES ('92', '8', 'thumbnail', '43');
INSERT INTO arcp_postmeta VALUES ('93', '8', '_thumbnail', 'field_5df5fadc46252');
INSERT INTO arcp_postmeta VALUES ('94', '8', 'link', 'http://aura.vn');
INSERT INTO arcp_postmeta VALUES ('95', '8', '_link', 'field_5df5faf446253');
INSERT INTO arcp_postmeta VALUES ('96', '8', 'thumbnail_milestone', '44');
INSERT INTO arcp_postmeta VALUES ('97', '8', '_thumbnail_milestone', 'field_5df5fb20c1a15');
INSERT INTO arcp_postmeta VALUES ('98', '8', 'title_milestone', 'Event calendar');
INSERT INTO arcp_postmeta VALUES ('99', '8', '_title_milestone', 'field_5df5fb7ac1a16');
INSERT INTO arcp_postmeta VALUES ('100', '8', 'description_milestone', 'All pictures and information of events held by\r\nAURA and our upcoming events');
INSERT INTO arcp_postmeta VALUES ('101', '8', '_description_milestone', 'field_5df5fb87c1a17');
INSERT INTO arcp_postmeta VALUES ('102', '8', 'background_text', '45');
INSERT INTO arcp_postmeta VALUES ('103', '8', '_background_text', 'field_5df5fb9cc1a18');
INSERT INTO arcp_postmeta VALUES ('104', '46', 'title', 'AURA\r\nCAPITAL‘S\r\nBIZ MODEL');
INSERT INTO arcp_postmeta VALUES ('105', '46', '_title', 'field_5df5fa7346250');
INSERT INTO arcp_postmeta VALUES ('106', '46', 'description', 'Our business model is anchored in a long term vision that stimulates creativity and excellence of each member. This model is a guideline for our business that drives the success of our group and ensures its promising future');
INSERT INTO arcp_postmeta VALUES ('107', '46', '_description', 'field_5df5facb46251');
INSERT INTO arcp_postmeta VALUES ('108', '46', 'thumbnail', '43');
INSERT INTO arcp_postmeta VALUES ('109', '46', '_thumbnail', 'field_5df5fadc46252');
INSERT INTO arcp_postmeta VALUES ('110', '46', 'link', '');
INSERT INTO arcp_postmeta VALUES ('111', '46', '_link', 'field_5df5faf446253');
INSERT INTO arcp_postmeta VALUES ('112', '46', 'thumbnail_milestone', '44');
INSERT INTO arcp_postmeta VALUES ('113', '46', '_thumbnail_milestone', 'field_5df5fb20c1a15');
INSERT INTO arcp_postmeta VALUES ('114', '46', 'title_milestone', 'Event calendar');
INSERT INTO arcp_postmeta VALUES ('115', '46', '_title_milestone', 'field_5df5fb7ac1a16');
INSERT INTO arcp_postmeta VALUES ('116', '46', 'description_milestone', 'All pictures and information of events held by\r\nAURA and our upcoming events');
INSERT INTO arcp_postmeta VALUES ('117', '46', '_description_milestone', 'field_5df5fb87c1a17');
INSERT INTO arcp_postmeta VALUES ('118', '46', 'background_text', '45');
INSERT INTO arcp_postmeta VALUES ('119', '46', '_background_text', 'field_5df5fb9cc1a18');
INSERT INTO arcp_postmeta VALUES ('120', '22', '_wp_trash_meta_status', 'publish');
INSERT INTO arcp_postmeta VALUES ('121', '22', '_wp_trash_meta_time', '1576416582');
INSERT INTO arcp_postmeta VALUES ('122', '22', '_wp_desired_post_slug', 'real-estate');
INSERT INTO arcp_postmeta VALUES ('123', '23', '_wp_trash_meta_status', 'publish');
INSERT INTO arcp_postmeta VALUES ('124', '23', '_wp_trash_meta_time', '1576416586');
INSERT INTO arcp_postmeta VALUES ('125', '23', '_wp_desired_post_slug', 'education');
INSERT INTO arcp_postmeta VALUES ('126', '24', '_wp_trash_meta_status', 'publish');
INSERT INTO arcp_postmeta VALUES ('127', '24', '_wp_trash_meta_time', '1576416591');
INSERT INTO arcp_postmeta VALUES ('128', '24', '_wp_desired_post_slug', 'fb');
INSERT INTO arcp_postmeta VALUES ('129', '25', '_wp_trash_meta_status', 'publish');
INSERT INTO arcp_postmeta VALUES ('130', '25', '_wp_trash_meta_time', '1576416594');
INSERT INTO arcp_postmeta VALUES ('131', '25', '_wp_desired_post_slug', 'technology');
INSERT INTO arcp_postmeta VALUES ('132', '26', '_wp_trash_meta_status', 'publish');
INSERT INTO arcp_postmeta VALUES ('133', '26', '_wp_trash_meta_time', '1576416597');
INSERT INTO arcp_postmeta VALUES ('134', '26', '_wp_desired_post_slug', 'community');
INSERT INTO arcp_postmeta VALUES ('135', '27', '_wp_trash_meta_status', 'publish');
INSERT INTO arcp_postmeta VALUES ('136', '27', '_wp_trash_meta_time', '1576416599');
INSERT INTO arcp_postmeta VALUES ('137', '27', '_wp_desired_post_slug', 'other-activities');
INSERT INTO arcp_postmeta VALUES ('138', '47', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('139', '47', '_edit_lock', '1576416627:1');
INSERT INTO arcp_postmeta VALUES ('140', '48', '_wp_attached_file', '2019/12/commitment1.png');
INSERT INTO arcp_postmeta VALUES ('141', '48', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:322;s:6:\"height\";i:269;s:4:\"file\";s:23:\"2019/12/commitment1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"commitment1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"commitment1-300x251.png\";s:5:\"width\";i:300;s:6:\"height\";i:251;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('142', '47', '_thumbnail_id', '48');
INSERT INTO arcp_postmeta VALUES ('143', '47', 'description', 'Aura District / FOS Real / Sakura Hotel');
INSERT INTO arcp_postmeta VALUES ('144', '47', '_description', 'field_5df5fa4690029');
INSERT INTO arcp_postmeta VALUES ('145', '49', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('146', '49', '_edit_lock', '1576416859:1');
INSERT INTO arcp_postmeta VALUES ('147', '50', '_wp_attached_file', '2019/12/commitment2.png');
INSERT INTO arcp_postmeta VALUES ('148', '50', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:321;s:6:\"height\";i:276;s:4:\"file\";s:23:\"2019/12/commitment2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"commitment2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"commitment2-300x258.png\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('149', '49', '_thumbnail_id', '50');
INSERT INTO arcp_postmeta VALUES ('150', '49', 'description', 'Aura District / FOS Real / Sakura Hotel');
INSERT INTO arcp_postmeta VALUES ('151', '49', '_description', 'field_5df5fa4690029');
INSERT INTO arcp_postmeta VALUES ('152', '51', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('153', '51', '_edit_lock', '1576416729:1');
INSERT INTO arcp_postmeta VALUES ('154', '52', '_wp_attached_file', '2019/12/commitment4.png');
INSERT INTO arcp_postmeta VALUES ('155', '52', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:321;s:6:\"height\";i:276;s:4:\"file\";s:23:\"2019/12/commitment4.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"commitment4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"commitment4-300x258.png\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('156', '51', '_thumbnail_id', '52');
INSERT INTO arcp_postmeta VALUES ('157', '51', 'description', 'Aura District / FOS Real / Sakura Hotel');
INSERT INTO arcp_postmeta VALUES ('158', '51', '_description', 'field_5df5fa4690029');
INSERT INTO arcp_postmeta VALUES ('159', '53', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('160', '53', '_edit_lock', '1576416765:1');
INSERT INTO arcp_postmeta VALUES ('161', '54', '_wp_attached_file', '2019/12/commitment3.png');
INSERT INTO arcp_postmeta VALUES ('162', '54', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:321;s:6:\"height\";i:276;s:4:\"file\";s:23:\"2019/12/commitment3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"commitment3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"commitment3-300x258.png\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('163', '53', '_thumbnail_id', '54');
INSERT INTO arcp_postmeta VALUES ('164', '53', 'description', 'Aura District / FOS Real / Sakura Hotel');
INSERT INTO arcp_postmeta VALUES ('165', '53', '_description', 'field_5df5fa4690029');
INSERT INTO arcp_postmeta VALUES ('166', '56', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('167', '56', '_edit_lock', '1576416820:1');
INSERT INTO arcp_postmeta VALUES ('168', '56', '_thumbnail_id', '52');
INSERT INTO arcp_postmeta VALUES ('169', '56', 'description', 'Aura District / FOS Real / Sakura Hotel');
INSERT INTO arcp_postmeta VALUES ('170', '56', '_description', 'field_5df5fa4690029');
INSERT INTO arcp_postmeta VALUES ('171', '57', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('172', '57', '_edit_lock', '1576416849:1');
INSERT INTO arcp_postmeta VALUES ('173', '57', '_thumbnail_id', '54');
INSERT INTO arcp_postmeta VALUES ('174', '57', 'description', 'Aura District / FOS Real / Sakura Hotel');
INSERT INTO arcp_postmeta VALUES ('175', '57', '_description', 'field_5df5fa4690029');
INSERT INTO arcp_postmeta VALUES ('176', '58', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('177', '58', '_edit_lock', '1577110758:1');
INSERT INTO arcp_postmeta VALUES ('178', '59', '_wp_attached_file', '2019/12/news.png');
INSERT INTO arcp_postmeta VALUES ('179', '59', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:483;s:4:\"file\";s:16:\"2019/12/news.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"news-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"news-300x260.png\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('180', '58', '_thumbnail_id', '59');
INSERT INTO arcp_postmeta VALUES ('181', '58', 'link', '');
INSERT INTO arcp_postmeta VALUES ('182', '58', '_link', 'field_5df5f9eb45ff1');
INSERT INTO arcp_postmeta VALUES ('183', '58', 'gallery', '');
INSERT INTO arcp_postmeta VALUES ('184', '58', '_gallery', 'field_5df5f9f645ff2');
INSERT INTO arcp_postmeta VALUES ('185', '60', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('186', '60', '_edit_lock', '1577110159:1');
INSERT INTO arcp_postmeta VALUES ('187', '61', '_wp_attached_file', '2019/12/news2.png');
INSERT INTO arcp_postmeta VALUES ('188', '61', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:482;s:4:\"file\";s:17:\"2019/12/news2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news2-300x259.png\";s:5:\"width\";i:300;s:6:\"height\";i:259;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('189', '60', 'link', '');
INSERT INTO arcp_postmeta VALUES ('190', '60', '_link', 'field_5df5f9eb45ff1');
INSERT INTO arcp_postmeta VALUES ('191', '60', 'gallery', 'a:2:{i:0;s:2:\"61\";i:1;s:2:\"59\";}');
INSERT INTO arcp_postmeta VALUES ('192', '60', '_gallery', 'field_5df5f9f645ff2');
INSERT INTO arcp_postmeta VALUES ('193', '8', 'link_milestone', 'http://aura.vn');
INSERT INTO arcp_postmeta VALUES ('194', '8', '_link_milestone', 'field_5e00c7254ea1a');
INSERT INTO arcp_postmeta VALUES ('195', '63', 'title', 'AURA\r\nCAPITAL‘S\r\nBIZ MODEL');
INSERT INTO arcp_postmeta VALUES ('196', '63', '_title', 'field_5df5fa7346250');
INSERT INTO arcp_postmeta VALUES ('197', '63', 'description', 'Our business model is anchored in a long term vision that stimulates creativity and excellence of each member. This model is a guideline for our business that drives the success of our group and ensures its promising future');
INSERT INTO arcp_postmeta VALUES ('198', '63', '_description', 'field_5df5facb46251');
INSERT INTO arcp_postmeta VALUES ('199', '63', 'thumbnail', '43');
INSERT INTO arcp_postmeta VALUES ('200', '63', '_thumbnail', 'field_5df5fadc46252');
INSERT INTO arcp_postmeta VALUES ('201', '63', 'link', 'http://aura.vn');
INSERT INTO arcp_postmeta VALUES ('202', '63', '_link', 'field_5df5faf446253');
INSERT INTO arcp_postmeta VALUES ('203', '63', 'thumbnail_milestone', '44');
INSERT INTO arcp_postmeta VALUES ('204', '63', '_thumbnail_milestone', 'field_5df5fb20c1a15');
INSERT INTO arcp_postmeta VALUES ('205', '63', 'title_milestone', 'Event calendar');
INSERT INTO arcp_postmeta VALUES ('206', '63', '_title_milestone', 'field_5df5fb7ac1a16');
INSERT INTO arcp_postmeta VALUES ('207', '63', 'description_milestone', 'All pictures and information of events held by\r\nAURA and our upcoming events');
INSERT INTO arcp_postmeta VALUES ('208', '63', '_description_milestone', 'field_5df5fb87c1a17');
INSERT INTO arcp_postmeta VALUES ('209', '63', 'background_text', '45');
INSERT INTO arcp_postmeta VALUES ('210', '63', '_background_text', 'field_5df5fb9cc1a18');
INSERT INTO arcp_postmeta VALUES ('211', '63', 'link_milestone', 'http://aura.vn');
INSERT INTO arcp_postmeta VALUES ('212', '63', '_link_milestone', 'field_5e00c7254ea1a');
INSERT INTO arcp_postmeta VALUES ('213', '64', '_edit_last', '1');
INSERT INTO arcp_postmeta VALUES ('214', '64', '_edit_lock', '1577111508:1');
INSERT INTO arcp_postmeta VALUES ('215', '67', '_wp_attached_file', '2019/12/banner-home.jpg');
INSERT INTO arcp_postmeta VALUES ('216', '67', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2019/12/banner-home.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"banner-home-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"banner-home-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"banner-home-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"banner-home-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"banner-home-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('217', '68', '_wp_attached_file', '2019/12/banner-home.png');
INSERT INTO arcp_postmeta VALUES ('218', '68', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:775;s:6:\"height\";i:1186;s:4:\"file\";s:23:\"2019/12/banner-home.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"banner-home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"banner-home-196x300.png\";s:5:\"width\";i:196;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"banner-home-768x1175.png\";s:5:\"width\";i:768;s:6:\"height\";i:1175;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"banner-home-669x1024.png\";s:5:\"width\";i:669;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('219', '8', 'banner_desktop', '67');
INSERT INTO arcp_postmeta VALUES ('220', '8', '_banner_desktop', 'field_5e00cf953e1dd');
INSERT INTO arcp_postmeta VALUES ('221', '8', 'banner_mobile', '68');
INSERT INTO arcp_postmeta VALUES ('222', '8', '_banner_mobile', 'field_5e00cfad3e1de');
INSERT INTO arcp_postmeta VALUES ('223', '69', 'title', 'AURA\r\nCAPITAL‘S\r\nBIZ MODEL');
INSERT INTO arcp_postmeta VALUES ('224', '69', '_title', 'field_5df5fa7346250');
INSERT INTO arcp_postmeta VALUES ('225', '69', 'description', 'Our business model is anchored in a long term vision that stimulates creativity and excellence of each member. This model is a guideline for our business that drives the success of our group and ensures its promising future');
INSERT INTO arcp_postmeta VALUES ('226', '69', '_description', 'field_5df5facb46251');
INSERT INTO arcp_postmeta VALUES ('227', '69', 'thumbnail', '43');
INSERT INTO arcp_postmeta VALUES ('228', '69', '_thumbnail', 'field_5df5fadc46252');
INSERT INTO arcp_postmeta VALUES ('229', '69', 'link', 'http://aura.vn');
INSERT INTO arcp_postmeta VALUES ('230', '69', '_link', 'field_5df5faf446253');
INSERT INTO arcp_postmeta VALUES ('231', '69', 'thumbnail_milestone', '44');
INSERT INTO arcp_postmeta VALUES ('232', '69', '_thumbnail_milestone', 'field_5df5fb20c1a15');
INSERT INTO arcp_postmeta VALUES ('233', '69', 'title_milestone', 'Event calendar');
INSERT INTO arcp_postmeta VALUES ('234', '69', '_title_milestone', 'field_5df5fb7ac1a16');
INSERT INTO arcp_postmeta VALUES ('235', '69', 'description_milestone', 'All pictures and information of events held by\r\nAURA and our upcoming events');
INSERT INTO arcp_postmeta VALUES ('236', '69', '_description_milestone', 'field_5df5fb87c1a17');
INSERT INTO arcp_postmeta VALUES ('237', '69', 'background_text', '45');
INSERT INTO arcp_postmeta VALUES ('238', '69', '_background_text', 'field_5df5fb9cc1a18');
INSERT INTO arcp_postmeta VALUES ('239', '69', 'link_milestone', 'http://aura.vn');
INSERT INTO arcp_postmeta VALUES ('240', '69', '_link_milestone', 'field_5e00c7254ea1a');
INSERT INTO arcp_postmeta VALUES ('241', '69', 'banner_desktop', '67');
INSERT INTO arcp_postmeta VALUES ('242', '69', '_banner_desktop', 'field_5e00cf953e1dd');
INSERT INTO arcp_postmeta VALUES ('243', '69', 'banner_mobile', '68');
INSERT INTO arcp_postmeta VALUES ('244', '69', '_banner_mobile', 'field_5e00cfad3e1de');
INSERT INTO arcp_postmeta VALUES ('245', '70', '_wp_attached_file', '2019/12/banner-investment.jpg');
INSERT INTO arcp_postmeta VALUES ('246', '70', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:29:\"2019/12/banner-investment.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"banner-investment-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"banner-investment-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"banner-investment-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"banner-investment-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"banner-investment-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('247', '71', '_wp_attached_file', '2019/12/banner-investment.png');
INSERT INTO arcp_postmeta VALUES ('248', '71', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:775;s:6:\"height\";i:1034;s:4:\"file\";s:29:\"2019/12/banner-investment.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"banner-investment-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"banner-investment-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"banner-investment-768x1025.png\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"banner-investment-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('249', '10', 'banner_desktop', '70');
INSERT INTO arcp_postmeta VALUES ('250', '10', '_banner_desktop', 'field_5e00cf953e1dd');
INSERT INTO arcp_postmeta VALUES ('251', '10', 'banner_mobile', '71');
INSERT INTO arcp_postmeta VALUES ('252', '10', '_banner_mobile', 'field_5e00cfad3e1de');
INSERT INTO arcp_postmeta VALUES ('253', '72', 'banner_desktop', '70');
INSERT INTO arcp_postmeta VALUES ('254', '72', '_banner_desktop', 'field_5e00cf953e1dd');
INSERT INTO arcp_postmeta VALUES ('255', '72', 'banner_mobile', '71');
INSERT INTO arcp_postmeta VALUES ('256', '72', '_banner_mobile', 'field_5e00cfad3e1de');
INSERT INTO arcp_postmeta VALUES ('257', '73', '_wp_attached_file', '2019/12/banner-investor.jpg');
INSERT INTO arcp_postmeta VALUES ('258', '73', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:27:\"2019/12/banner-investor.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"banner-investor-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"banner-investor-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"banner-investor-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"banner-investor-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"banner-investor-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('259', '74', '_wp_attached_file', '2019/12/banner-investor.png');
INSERT INTO arcp_postmeta VALUES ('260', '74', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:775;s:6:\"height\";i:1034;s:4:\"file\";s:27:\"2019/12/banner-investor.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"banner-investor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"banner-investor-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"banner-investor-768x1025.png\";s:5:\"width\";i:768;s:6:\"height\";i:1025;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"banner-investor-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO arcp_postmeta VALUES ('261', '12', 'banner_desktop', '73');
INSERT INTO arcp_postmeta VALUES ('262', '12', '_banner_desktop', 'field_5e00cf953e1dd');
INSERT INTO arcp_postmeta VALUES ('263', '12', 'banner_mobile', '74');
INSERT INTO arcp_postmeta VALUES ('264', '12', '_banner_mobile', 'field_5e00cfad3e1de');
INSERT INTO arcp_postmeta VALUES ('265', '75', 'banner_desktop', '73');
INSERT INTO arcp_postmeta VALUES ('266', '75', '_banner_desktop', 'field_5e00cf953e1dd');
INSERT INTO arcp_postmeta VALUES ('267', '75', 'banner_mobile', '74');
INSERT INTO arcp_postmeta VALUES ('268', '75', '_banner_mobile', 'field_5e00cfad3e1de');

-- ----------------------------
-- Table structure for `arcp_posts`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_posts`;
CREATE TABLE `arcp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_posts
-- ----------------------------
INSERT INTO arcp_posts VALUES ('1', '1', '2019-12-15 08:54:57', '2019-12-15 08:54:57', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-12-15 08:54:57', '2019-12-15 08:54:57', '', '0', 'http://aura-capit.dev.vn/?p=1', '0', 'post', '', '1');
INSERT INTO arcp_posts VALUES ('2', '1', '2019-12-15 08:54:57', '2019-12-15 08:54:57', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://aura-capit.dev.vn/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-12-15 09:02:01', '2019-12-15 09:02:01', '', '0', 'http://aura-capit.dev.vn/?page_id=2', '0', 'page', '', '0');
INSERT INTO arcp_posts VALUES ('3', '1', '2019-12-15 08:54:57', '2019-12-15 08:54:57', '<h2>Who we are</h2><p>Our website address is: http://aura-capit.dev.vn.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-12-15 09:01:57', '2019-12-15 09:01:57', '', '0', 'http://aura-capit.dev.vn/?page_id=3', '0', 'page', '', '0');
INSERT INTO arcp_posts VALUES ('6', '1', '2019-12-15 09:01:57', '2019-12-15 09:01:57', '<h2>Who we are</h2><p>Our website address is: http://aura-capit.dev.vn.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-12-15 09:01:57', '2019-12-15 09:01:57', '', '3', 'http://aura-capit.dev.vn/2019/12/15/3-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('7', '1', '2019-12-15 09:02:01', '2019-12-15 09:02:01', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://aura-capit.dev.vn/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-12-15 09:02:01', '2019-12-15 09:02:01', '', '2', 'http://aura-capit.dev.vn/2019/12/15/2-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('8', '1', '2019-12-15 09:02:20', '2019-12-15 09:02:20', '', 'Introduction', '', 'publish', 'closed', 'closed', '', 'introduction', '', '', '2019-12-23 14:32:51', '2019-12-23 14:32:51', '', '0', 'http://aura-capit.dev.vn/?page_id=8', '0', 'page', '', '0');
INSERT INTO arcp_posts VALUES ('9', '1', '2019-12-15 09:02:20', '2019-12-15 09:02:20', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-15 09:02:20', '2019-12-15 09:02:20', '', '8', 'http://aura-capit.dev.vn/2019/12/15/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('10', '1', '2019-12-15 09:02:35', '2019-12-15 09:02:35', '', 'Investment', '', 'publish', 'closed', 'closed', '', 'investment', '', '', '2019-12-23 14:33:44', '2019-12-23 14:33:44', '', '0', 'http://aura-capit.dev.vn/?page_id=10', '0', 'page', '', '0');
INSERT INTO arcp_posts VALUES ('11', '1', '2019-12-15 09:02:35', '2019-12-15 09:02:35', '', 'Investment', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-15 09:02:35', '2019-12-15 09:02:35', '', '10', 'http://aura-capit.dev.vn/2019/12/15/10-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('12', '1', '2019-12-15 09:04:49', '2019-12-15 09:04:49', '', 'Investors', '', 'publish', 'closed', 'closed', '', 'investors', '', '', '2019-12-23 14:34:26', '2019-12-23 14:34:26', '', '0', 'http://aura-capit.dev.vn/?page_id=12', '0', 'page', '', '0');
INSERT INTO arcp_posts VALUES ('13', '1', '2019-12-15 09:04:49', '2019-12-15 09:04:49', '', 'Investors', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-12-15 09:04:49', '2019-12-15 09:04:49', '', '12', 'http://aura-capit.dev.vn/2019/12/15/12-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('14', '1', '2019-12-15 09:05:02', '2019-12-15 09:05:02', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2019-12-15 09:05:02', '2019-12-15 09:05:02', '', '0', 'http://aura-capit.dev.vn/?page_id=14', '0', 'page', '', '0');
INSERT INTO arcp_posts VALUES ('15', '1', '2019-12-15 09:05:02', '2019-12-15 09:05:02', '', 'News', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-15 09:05:02', '2019-12-15 09:05:02', '', '14', 'http://aura-capit.dev.vn/2019/12/15/14-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('16', '1', '2019-12-15 09:05:24', '2019-12-15 09:05:24', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2019-12-15 09:05:24', '2019-12-15 09:05:24', '', '0', 'http://aura-capit.dev.vn/?page_id=16', '0', 'page', '', '0');
INSERT INTO arcp_posts VALUES ('17', '1', '2019-12-15 09:05:24', '2019-12-15 09:05:24', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 09:05:24', '2019-12-15 09:05:24', '', '16', 'http://aura-capit.dev.vn/2019/12/15/16-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('18', '1', '2019-12-15 09:06:30', '2019-12-15 09:06:30', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-12-15 09:06:30', '2019-12-15 09:06:30', '', '0', 'http://aura-capit.dev.vn/?p=18', '4', 'nav_menu_item', '', '0');
INSERT INTO arcp_posts VALUES ('19', '1', '2019-12-15 09:06:30', '2019-12-15 09:06:30', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-12-15 09:06:30', '2019-12-15 09:06:30', '', '0', 'http://aura-capit.dev.vn/?p=19', '3', 'nav_menu_item', '', '0');
INSERT INTO arcp_posts VALUES ('20', '1', '2019-12-15 09:06:30', '2019-12-15 09:06:30', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-12-15 09:06:30', '2019-12-15 09:06:30', '', '0', 'http://aura-capit.dev.vn/?p=20', '2', 'nav_menu_item', '', '0');
INSERT INTO arcp_posts VALUES ('21', '1', '2019-12-15 09:06:30', '2019-12-15 09:06:30', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-12-15 09:06:30', '2019-12-15 09:06:30', '', '0', 'http://aura-capit.dev.vn/?p=21', '1', 'nav_menu_item', '', '0');
INSERT INTO arcp_posts VALUES ('22', '1', '2019-12-15 09:14:19', '2019-12-15 09:14:19', '', 'Real Estate', '', 'trash', 'closed', 'closed', '', 'real-estate__trashed', '', '', '2019-12-15 13:29:42', '2019-12-15 13:29:42', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=22', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('23', '1', '2019-12-15 09:14:33', '2019-12-15 09:14:33', '', 'Education', '', 'trash', 'closed', 'closed', '', 'education__trashed', '', '', '2019-12-15 13:29:46', '2019-12-15 13:29:46', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=23', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('24', '1', '2019-12-15 09:14:44', '2019-12-15 09:14:44', '', 'F&B', '', 'trash', 'closed', 'closed', '', 'fb__trashed', '', '', '2019-12-15 13:29:51', '2019-12-15 13:29:51', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=24', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('25', '1', '2019-12-15 09:14:57', '2019-12-15 09:14:57', '', 'Technology', '', 'trash', 'closed', 'closed', '', 'technology__trashed', '', '', '2019-12-15 13:29:54', '2019-12-15 13:29:54', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=25', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('26', '1', '2019-12-15 09:15:12', '2019-12-15 09:15:12', '', 'Community', '', 'trash', 'closed', 'closed', '', 'community__trashed', '', '', '2019-12-15 13:29:57', '2019-12-15 13:29:57', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=26', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('27', '1', '2019-12-15 09:15:28', '2019-12-15 09:15:28', '', 'Other Activities', '', 'trash', 'closed', 'closed', '', 'other-activities__trashed', '', '', '2019-12-15 13:29:59', '2019-12-15 13:29:59', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=27', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('28', '1', '2019-12-15 09:17:07', '2019-12-15 09:17:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"article\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'News', 'news', 'publish', 'closed', 'closed', '', 'group_5df5f9dda4eb5', '', '', '2019-12-15 09:17:07', '2019-12-15 09:17:07', '', '0', 'http://aura-capit.dev.vn/?post_type=acf-field-group&#038;p=28', '0', 'acf-field-group', '', '0');
INSERT INTO arcp_posts VALUES ('29', '1', '2019-12-15 09:17:07', '2019-12-15 09:17:07', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5df5f9eb45ff1', '', '', '2019-12-15 09:17:07', '2019-12-15 09:17:07', '', '28', 'http://aura-capit.dev.vn/?post_type=acf-field&p=29', '0', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('30', '1', '2019-12-15 09:17:07', '2019-12-15 09:17:07', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_5df5f9f645ff2', '', '', '2019-12-15 09:17:07', '2019-12-15 09:17:07', '', '28', 'http://aura-capit.dev.vn/?post_type=acf-field&p=30', '1', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('31', '1', '2019-12-15 09:18:26', '2019-12-15 09:18:26', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"commitment\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Commitment', 'commitment', 'publish', 'closed', 'closed', '', 'group_5df5fa40acf66', '', '', '2019-12-15 09:18:26', '2019-12-15 09:18:26', '', '0', 'http://aura-capit.dev.vn/?post_type=acf-field-group&#038;p=31', '0', 'acf-field-group', '', '0');
INSERT INTO arcp_posts VALUES ('32', '1', '2019-12-15 09:18:26', '2019-12-15 09:18:26', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5df5fa4690029', '', '', '2019-12-15 09:18:26', '2019-12-15 09:18:26', '', '31', 'http://aura-capit.dev.vn/?post_type=acf-field&p=32', '0', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('33', '1', '2019-12-15 09:21:15', '2019-12-15 09:21:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_5df5fa6ddda92', '', '', '2019-12-15 09:21:15', '2019-12-15 09:21:15', '', '0', 'http://aura-capit.dev.vn/?post_type=acf-field-group&#038;p=33', '0', 'acf-field-group', '', '0');
INSERT INTO arcp_posts VALUES ('34', '1', '2019-12-15 09:21:15', '2019-12-15 09:21:15', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5df5fa7346250', '', '', '2019-12-15 09:21:15', '2019-12-15 09:21:15', '', '33', 'http://aura-capit.dev.vn/?post_type=acf-field&p=34', '0', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('35', '1', '2019-12-15 09:21:15', '2019-12-15 09:21:15', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5df5facb46251', '', '', '2019-12-15 09:21:15', '2019-12-15 09:21:15', '', '33', 'http://aura-capit.dev.vn/?post_type=acf-field&p=35', '1', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('36', '1', '2019-12-15 09:21:15', '2019-12-15 09:21:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Thumbnail', 'thumbnail', 'publish', 'closed', 'closed', '', 'field_5df5fadc46252', '', '', '2019-12-15 09:21:15', '2019-12-15 09:21:15', '', '33', 'http://aura-capit.dev.vn/?post_type=acf-field&p=36', '2', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('37', '1', '2019-12-15 09:21:15', '2019-12-15 09:21:15', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5df5faf446253', '', '', '2019-12-15 09:21:15', '2019-12-15 09:21:15', '', '33', 'http://aura-capit.dev.vn/?post_type=acf-field&p=37', '3', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('38', '1', '2019-12-15 09:24:07', '2019-12-15 09:24:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Milestone', 'milestone', 'publish', 'closed', 'closed', '', 'group_5df5fb14732bd', '', '', '2019-12-23 13:55:02', '2019-12-23 13:55:02', '', '0', 'http://aura-capit.dev.vn/?post_type=acf-field-group&#038;p=38', '0', 'acf-field-group', '', '0');
INSERT INTO arcp_posts VALUES ('39', '1', '2019-12-15 09:24:07', '2019-12-15 09:24:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Thumbnail', 'thumbnail_milestone', 'publish', 'closed', 'closed', '', 'field_5df5fb20c1a15', '', '', '2019-12-15 09:24:07', '2019-12-15 09:24:07', '', '38', 'http://aura-capit.dev.vn/?post_type=acf-field&p=39', '0', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('40', '1', '2019-12-15 09:24:07', '2019-12-15 09:24:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title_milestone', 'publish', 'closed', 'closed', '', 'field_5df5fb7ac1a16', '', '', '2019-12-15 09:24:07', '2019-12-15 09:24:07', '', '38', 'http://aura-capit.dev.vn/?post_type=acf-field&p=40', '1', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('41', '1', '2019-12-15 09:24:07', '2019-12-15 09:24:07', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Description', 'description_milestone', 'publish', 'closed', 'closed', '', 'field_5df5fb87c1a17', '', '', '2019-12-15 09:24:07', '2019-12-15 09:24:07', '', '38', 'http://aura-capit.dev.vn/?post_type=acf-field&p=41', '2', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('42', '1', '2019-12-15 09:24:07', '2019-12-15 09:24:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background Text', 'background_text', 'publish', 'closed', 'closed', '', 'field_5df5fb9cc1a18', '', '', '2019-12-15 09:24:07', '2019-12-15 09:24:07', '', '38', 'http://aura-capit.dev.vn/?post_type=acf-field&p=42', '3', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('43', '1', '2019-12-15 13:27:37', '2019-12-15 13:27:37', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2019-12-15 13:27:37', '2019-12-15 13:27:37', '', '8', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/about.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('44', '1', '2019-12-15 13:28:26', '2019-12-15 13:28:26', '', 'milestone', '', 'inherit', 'open', 'closed', '', 'milestone', '', '', '2019-12-15 13:28:26', '2019-12-15 13:28:26', '', '8', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/milestone.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('45', '1', '2019-12-15 13:28:57', '2019-12-15 13:28:57', '', 'bg-text', '', 'inherit', 'open', 'closed', '', 'bg-text', '', '', '2019-12-15 13:28:57', '2019-12-15 13:28:57', '', '8', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/bg-text.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('46', '1', '2019-12-15 13:29:15', '2019-12-15 13:29:15', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-15 13:29:15', '2019-12-15 13:29:15', '', '8', 'http://aura-capit.dev.vn/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('47', '1', '2019-12-15 13:32:39', '2019-12-15 13:32:39', '', '3 Firms Running', '', 'publish', 'closed', 'closed', '', '3-firms-running', '', '', '2019-12-15 13:32:39', '2019-12-15 13:32:39', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=47', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('48', '1', '2019-12-15 13:31:55', '2019-12-15 13:31:55', '', 'commitment1', '', 'inherit', 'open', 'closed', '', 'commitment1', '', '', '2019-12-15 13:31:55', '2019-12-15 13:31:55', '', '47', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/commitment1.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('49', '1', '2019-12-15 13:33:40', '2019-12-15 13:33:40', '', '3 Firms Running 2', '', 'publish', 'closed', 'closed', '', '3-firms-running-2', '', '', '2019-12-15 13:33:40', '2019-12-15 13:33:40', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=49', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('50', '1', '2019-12-15 13:33:27', '2019-12-15 13:33:27', '', 'commitment2', '', 'inherit', 'open', 'closed', '', 'commitment2', '', '', '2019-12-15 13:33:27', '2019-12-15 13:33:27', '', '49', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/commitment2.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('51', '1', '2019-12-15 13:34:27', '2019-12-15 13:34:27', '', '3 Firms Running 3', '', 'publish', 'closed', 'closed', '', '3-firms-running-3', '', '', '2019-12-15 13:34:27', '2019-12-15 13:34:27', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=51', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('52', '1', '2019-12-15 13:34:21', '2019-12-15 13:34:21', '', 'commitment4', '', 'inherit', 'open', 'closed', '', 'commitment4', '', '', '2019-12-15 13:34:21', '2019-12-15 13:34:21', '', '51', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/commitment4.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('53', '1', '2019-12-15 13:35:05', '2019-12-15 13:35:05', '', '3 Firms Running 4', '', 'publish', 'closed', 'closed', '', '3-firms-running-4', '', '', '2019-12-15 13:35:05', '2019-12-15 13:35:05', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=53', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('54', '1', '2019-12-15 13:34:58', '2019-12-15 13:34:58', '', 'commitment3', '', 'inherit', 'open', 'closed', '', 'commitment3', '', '', '2019-12-15 13:34:58', '2019-12-15 13:34:58', '', '53', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/commitment3.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('56', '1', '2019-12-15 13:35:59', '2019-12-15 13:35:59', '', '3 Firms Running 5', '', 'publish', 'closed', 'closed', '', '3-firms-running-5', '', '', '2019-12-15 13:35:59', '2019-12-15 13:35:59', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=56', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('57', '1', '2019-12-15 13:36:24', '2019-12-15 13:36:24', '', '3 Firms Running 6', '', 'publish', 'closed', 'closed', '', '3-firms-running-6', '', '', '2019-12-15 13:36:24', '2019-12-15 13:36:24', '', '0', 'http://aura-capit.dev.vn/?post_type=commitment&#038;p=57', '0', 'commitment', '', '0');
INSERT INTO arcp_posts VALUES ('58', '1', '2019-12-15 13:37:55', '2019-12-15 13:37:55', 'Lasted news from Aura Capital', 'New 1', '', 'publish', 'closed', 'closed', '', 'new-1', '', '', '2019-12-15 13:37:55', '2019-12-15 13:37:55', '', '0', 'http://aura-capit.dev.vn/?post_type=article&#038;p=58', '0', 'article', '', '0');
INSERT INTO arcp_posts VALUES ('59', '1', '2019-12-15 13:37:34', '2019-12-15 13:37:34', '', 'news', '', 'inherit', 'open', 'closed', '', 'news-2', '', '', '2019-12-15 13:38:46', '2019-12-15 13:38:46', '', '58', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/news.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('60', '1', '2019-12-15 13:38:49', '2019-12-15 13:38:49', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendre', 'New 2', '', 'publish', 'closed', 'closed', '', 'new-2', '', '', '2019-12-15 13:38:49', '2019-12-15 13:38:49', '', '0', 'http://aura-capit.dev.vn/?post_type=article&#038;p=60', '0', 'article', '', '0');
INSERT INTO arcp_posts VALUES ('61', '1', '2019-12-15 13:38:25', '2019-12-15 13:38:25', '', 'news2', '', 'inherit', 'open', 'closed', '', 'news2', '', '', '2019-12-15 13:38:42', '2019-12-15 13:38:42', '', '60', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/news2.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('62', '1', '2019-12-23 13:55:02', '2019-12-23 13:55:02', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link_milestone', 'publish', 'closed', 'closed', '', 'field_5e00c7254ea1a', '', '', '2019-12-23 13:55:02', '2019-12-23 13:55:02', '', '38', 'http://aura-capit.dev.vn/?post_type=acf-field&p=62', '4', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('63', '1', '2019-12-23 13:55:59', '2019-12-23 13:55:59', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-23 13:55:59', '2019-12-23 13:55:59', '', '8', 'http://aura-capit.dev.vn/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('64', '1', '2019-12-23 14:31:47', '2019-12-23 14:31:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"top_level\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'group_5e00cf90a59b0', '', '', '2019-12-23 14:31:47', '2019-12-23 14:31:47', '', '0', 'http://aura-capit.dev.vn/?post_type=acf-field-group&#038;p=64', '0', 'acf-field-group', '', '0');
INSERT INTO arcp_posts VALUES ('65', '1', '2019-12-23 14:31:47', '2019-12-23 14:31:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Desktop', 'banner_desktop', 'publish', 'closed', 'closed', '', 'field_5e00cf953e1dd', '', '', '2019-12-23 14:31:47', '2019-12-23 14:31:47', '', '64', 'http://aura-capit.dev.vn/?post_type=acf-field&p=65', '0', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('66', '1', '2019-12-23 14:31:47', '2019-12-23 14:31:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Mobile', 'banner_mobile', 'publish', 'closed', 'closed', '', 'field_5e00cfad3e1de', '', '', '2019-12-23 14:31:47', '2019-12-23 14:31:47', '', '64', 'http://aura-capit.dev.vn/?post_type=acf-field&p=66', '1', 'acf-field', '', '0');
INSERT INTO arcp_posts VALUES ('67', '1', '2019-12-23 14:32:23', '2019-12-23 14:32:23', '', 'banner-home', '', 'inherit', 'open', 'closed', '', 'banner-home', '', '', '2019-12-23 14:32:23', '2019-12-23 14:32:23', '', '8', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/banner-home.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO arcp_posts VALUES ('68', '1', '2019-12-23 14:32:44', '2019-12-23 14:32:44', '', 'banner-home', '', 'inherit', 'open', 'closed', '', 'banner-home-2', '', '', '2019-12-23 14:32:44', '2019-12-23 14:32:44', '', '8', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/banner-home.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('69', '1', '2019-12-23 14:32:51', '2019-12-23 14:32:51', '', 'Introduction', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-23 14:32:51', '2019-12-23 14:32:51', '', '8', 'http://aura-capit.dev.vn/8-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('70', '1', '2019-12-23 14:33:17', '2019-12-23 14:33:17', '', 'banner-investment', '', 'inherit', 'open', 'closed', '', 'banner-investment', '', '', '2019-12-23 14:33:17', '2019-12-23 14:33:17', '', '10', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/banner-investment.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO arcp_posts VALUES ('71', '1', '2019-12-23 14:33:35', '2019-12-23 14:33:35', '', 'banner-investment', '', 'inherit', 'open', 'closed', '', 'banner-investment-2', '', '', '2019-12-23 14:33:35', '2019-12-23 14:33:35', '', '10', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/banner-investment.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('72', '1', '2019-12-23 14:33:44', '2019-12-23 14:33:44', '', 'Investment', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-23 14:33:44', '2019-12-23 14:33:44', '', '10', 'http://aura-capit.dev.vn/10-revision-v1/', '0', 'revision', '', '0');
INSERT INTO arcp_posts VALUES ('73', '1', '2019-12-23 14:34:04', '2019-12-23 14:34:04', '', 'banner-investor', '', 'inherit', 'open', 'closed', '', 'banner-investor', '', '', '2019-12-23 14:34:04', '2019-12-23 14:34:04', '', '12', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/banner-investor.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO arcp_posts VALUES ('74', '1', '2019-12-23 14:34:19', '2019-12-23 14:34:19', '', 'banner-investor', '', 'inherit', 'open', 'closed', '', 'banner-investor-2', '', '', '2019-12-23 14:34:19', '2019-12-23 14:34:19', '', '12', 'http://aura-capit.dev.vn/wp-content/uploads/2019/12/banner-investor.png', '0', 'attachment', 'image/png', '0');
INSERT INTO arcp_posts VALUES ('75', '1', '2019-12-23 14:34:26', '2019-12-23 14:34:26', '', 'Investors', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-12-23 14:34:26', '2019-12-23 14:34:26', '', '12', 'http://aura-capit.dev.vn/12-revision-v1/', '0', 'revision', '', '0');

-- ----------------------------
-- Table structure for `arcp_termmeta`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_termmeta`;
CREATE TABLE `arcp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_termmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `arcp_terms`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_terms`;
CREATE TABLE `arcp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_terms
-- ----------------------------
INSERT INTO arcp_terms VALUES ('1', 'Uncategorized @vi', 'uncategorized-vi', '0');
INSERT INTO arcp_terms VALUES ('2', 'Uncategorized', 'uncategorized', '0');
INSERT INTO arcp_terms VALUES ('3', 'Primary Menu', 'primary-menu', '0');
INSERT INTO arcp_terms VALUES ('4', 'Real Estate', 'real-estate', '0');
INSERT INTO arcp_terms VALUES ('5', 'Education', 'education', '0');
INSERT INTO arcp_terms VALUES ('6', 'F&amp;B', 'fb', '0');
INSERT INTO arcp_terms VALUES ('7', 'Technology', 'technology', '0');
INSERT INTO arcp_terms VALUES ('8', 'Community', 'community', '0');
INSERT INTO arcp_terms VALUES ('9', 'Other activities', 'other-activities', '0');

-- ----------------------------
-- Table structure for `arcp_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_term_relationships`;
CREATE TABLE `arcp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_term_relationships
-- ----------------------------
INSERT INTO arcp_term_relationships VALUES ('1', '1', '0');
INSERT INTO arcp_term_relationships VALUES ('18', '3', '0');
INSERT INTO arcp_term_relationships VALUES ('19', '3', '0');
INSERT INTO arcp_term_relationships VALUES ('20', '3', '0');
INSERT INTO arcp_term_relationships VALUES ('21', '3', '0');
INSERT INTO arcp_term_relationships VALUES ('47', '4', '0');
INSERT INTO arcp_term_relationships VALUES ('49', '5', '0');
INSERT INTO arcp_term_relationships VALUES ('51', '7', '0');
INSERT INTO arcp_term_relationships VALUES ('53', '6', '0');
INSERT INTO arcp_term_relationships VALUES ('56', '8', '0');
INSERT INTO arcp_term_relationships VALUES ('57', '7', '0');

-- ----------------------------
-- Table structure for `arcp_term_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_term_taxonomy`;
CREATE TABLE `arcp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_term_taxonomy
-- ----------------------------
INSERT INTO arcp_term_taxonomy VALUES ('1', '1', 'category', '', '0', '1');
INSERT INTO arcp_term_taxonomy VALUES ('2', '2', 'category', '', '0', '0');
INSERT INTO arcp_term_taxonomy VALUES ('3', '3', 'nav_menu', '', '0', '4');
INSERT INTO arcp_term_taxonomy VALUES ('4', '4', 'list-commitment', '', '0', '1');
INSERT INTO arcp_term_taxonomy VALUES ('5', '5', 'list-commitment', '', '0', '1');
INSERT INTO arcp_term_taxonomy VALUES ('6', '6', 'list-commitment', '', '0', '1');
INSERT INTO arcp_term_taxonomy VALUES ('7', '7', 'list-commitment', '', '0', '2');
INSERT INTO arcp_term_taxonomy VALUES ('8', '8', 'list-commitment', '', '0', '1');
INSERT INTO arcp_term_taxonomy VALUES ('9', '9', 'list-commitment', '', '0', '0');

-- ----------------------------
-- Table structure for `arcp_usermeta`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_usermeta`;
CREATE TABLE `arcp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_usermeta
-- ----------------------------
INSERT INTO arcp_usermeta VALUES ('1', '1', 'nickname', 'sysadmin');
INSERT INTO arcp_usermeta VALUES ('2', '1', 'first_name', '');
INSERT INTO arcp_usermeta VALUES ('3', '1', 'last_name', '');
INSERT INTO arcp_usermeta VALUES ('4', '1', 'description', '');
INSERT INTO arcp_usermeta VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO arcp_usermeta VALUES ('6', '1', 'syntax_highlighting', 'true');
INSERT INTO arcp_usermeta VALUES ('7', '1', 'comment_shortcuts', 'false');
INSERT INTO arcp_usermeta VALUES ('8', '1', 'admin_color', 'fresh');
INSERT INTO arcp_usermeta VALUES ('9', '1', 'use_ssl', '0');
INSERT INTO arcp_usermeta VALUES ('10', '1', 'show_admin_bar_front', 'true');
INSERT INTO arcp_usermeta VALUES ('11', '1', 'locale', 'en_US');
INSERT INTO arcp_usermeta VALUES ('12', '1', 'arcp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO arcp_usermeta VALUES ('13', '1', 'arcp_user_level', '10');
INSERT INTO arcp_usermeta VALUES ('14', '1', 'dismissed_wp_pointers', 'wp496_privacy');
INSERT INTO arcp_usermeta VALUES ('15', '1', 'show_welcome_panel', '1');
INSERT INTO arcp_usermeta VALUES ('16', '1', 'session_tokens', 'a:1:{s:64:\"f942933ee4860f10341a585a6f764c3e305bbfe396f6c1b31ede361f9ec8c754\";a:4:{s:10:\"expiration\";i:1577281467;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1577108667;}}');
INSERT INTO arcp_usermeta VALUES ('17', '1', 'arcp_dashboard_quick_press_last_post_id', '4');
INSERT INTO arcp_usermeta VALUES ('18', '1', 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO arcp_usermeta VALUES ('19', '1', 'icl_admin_language', 'en');
INSERT INTO arcp_usermeta VALUES ('20', '1', 'icl_admin_language_migrated_to_wp47', '1');
INSERT INTO arcp_usermeta VALUES ('21', '1', 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO arcp_usermeta VALUES ('22', '1', 'metaboxhidden_nav-menus', 'a:10:{i:0;s:20:\"add-post-type-banner\";i:1;s:21:\"add-post-type-article\";i:2;s:21:\"add-post-type-project\";i:3;s:28:\"add-post-type-project-sample\";i:4;s:12:\"add-post_tag\";i:5;s:15:\"add-post_format\";i:6;s:20:\"add-danh-muc-tin-tuc\";i:7;s:8:\"add-tag2\";i:8;s:18:\"add-danh-muc-du-an\";i:9;s:22:\"add-danh-muc-du-an-mau\";}');
INSERT INTO arcp_usermeta VALUES ('23', '1', 'arcp_nav_menu_recently_edited', '3');
INSERT INTO arcp_usermeta VALUES ('24', '1', 'arcp_user-settings', 'libraryContent=browse');
INSERT INTO arcp_usermeta VALUES ('25', '1', 'arcp_user-settings-time', '1576416551');
INSERT INTO arcp_usermeta VALUES ('26', '1', 'closedpostboxes_commitment', 'a:0:{}');
INSERT INTO arcp_usermeta VALUES ('27', '1', 'metaboxhidden_commitment', 'a:5:{i:0;s:23:\"acf-group_5df5fa6ddda92\";i:1;s:23:\"acf-group_5df5fb14732bd\";i:2;s:23:\"acf-group_5df5f9dda4eb5\";i:3;s:10:\"postcustom\";i:4;s:7:\"slugdiv\";}');
INSERT INTO arcp_usermeta VALUES ('28', '1', 'closedpostboxes_article', 'a:0:{}');
INSERT INTO arcp_usermeta VALUES ('29', '1', 'metaboxhidden_article', 'a:6:{i:0;s:23:\"acf-group_5df5fa6ddda92\";i:1;s:23:\"acf-group_5df5fa40acf66\";i:2;s:23:\"acf-group_5df5fb14732bd\";i:3;s:10:\"postcustom\";i:4;s:7:\"slugdiv\";i:5;s:14:\"icl_div_config\";}');

-- ----------------------------
-- Table structure for `arcp_users`
-- ----------------------------
DROP TABLE IF EXISTS `arcp_users`;
CREATE TABLE `arcp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arcp_users
-- ----------------------------
INSERT INTO arcp_users VALUES ('1', 'sysadmin', '$P$BO68tHxWg9XQCiOn2zngM5BsMc8GGm/', 'sysadmin', 'hungdn0502@gmail.com', '', '2019-12-15 08:54:57', '', '0', 'sysadmin');
