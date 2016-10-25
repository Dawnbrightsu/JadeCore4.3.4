/*
Navicat MySQL Data Transfer

Source Server         : JadeCore
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : auth434

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-10-18 16:56:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier' ,
`username`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`sha_pass_hash`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`sessionkey`  varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`v`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`s`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`email`  varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`joindate`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
`last_ip`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1' ,
`failed_logins`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`locked`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`last_login`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`online`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`expansion`  tinyint(3) UNSIGNED NOT NULL DEFAULT 3 ,
`mutetime`  bigint(20) NOT NULL DEFAULT 0 ,
`mutereason`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ' ,
`muteby`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`locale`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`os`  varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`recruiter`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Account System'
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `account_access`
-- ----------------------------
DROP TABLE IF EXISTS `account_access`;
CREATE TABLE `account_access` (
`id`  int(10) UNSIGNED NOT NULL ,
`gmlevel`  tinyint(3) UNSIGNED NOT NULL ,
`RealmID`  int(11) NOT NULL DEFAULT '-1' ,
`comment`  varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'name of the account' ,
PRIMARY KEY (`id`, `RealmID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of account_access
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `account_banned`
-- ----------------------------
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE `account_banned` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account id' ,
`bandate`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unbandate`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bannedby`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`banreason`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`id`, `bandate`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Ban List'

;

-- ----------------------------
-- Records of account_banned
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `account_premium`
-- ----------------------------
DROP TABLE IF EXISTS `account_premium`;
CREATE TABLE `account_premium` (
`id`  int(11) NOT NULL DEFAULT 0 COMMENT 'Account id' ,
`setdate`  bigint(40) NOT NULL DEFAULT 0 ,
`unsetdate`  bigint(40) NOT NULL DEFAULT 0 ,
`premium_type`  tinyint(4) UNSIGNED NOT NULL DEFAULT 1 ,
`active`  tinyint(4) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`id`, `setdate`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Premium Accounts'

;

-- ----------------------------
-- Records of account_premium
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `account_punishment`
-- ----------------------------
DROP TABLE IF EXISTS `account_punishment`;
CREATE TABLE `account_punishment` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`account`  int(11) UNSIGNED NOT NULL ,
`by`  int(11) NOT NULL ,
`penalty_points`  int(11) UNSIGNED NOT NULL ,
`comment`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`time`  bigint(20) UNSIGNED NOT NULL ,
`active`  tinyint(3) NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=99

;

-- ----------------------------
-- Records of account_punishment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `account_tempban`
-- ----------------------------
DROP TABLE IF EXISTS `account_tempban`;
CREATE TABLE `account_tempban` (
`accountId`  int(11) NOT NULL ,
`reason`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`accountId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of account_tempban
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `account_warning`
-- ----------------------------
DROP TABLE IF EXISTS `account_warning`;
CREATE TABLE `account_warning` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`accountId`  int(11) UNSIGNED NOT NULL ,
`by_account`  int(11) UNSIGNED NOT NULL ,
`comment`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`time`  bigint(20) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=169

;

-- ----------------------------
-- Records of account_warning
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `accounts_to_delete`
-- ----------------------------
DROP TABLE IF EXISTS `accounts_to_delete`;
CREATE TABLE `accounts_to_delete` (
`id`  int(11) UNSIGNED NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Account System'

;

-- ----------------------------
-- Records of accounts_to_delete
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `bug_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `bug_tickets`;
CREATE TABLE `bug_tickets` (
`ticketId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`realm`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier of ticket creator' ,
`message`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`createTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`pool`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
`closedBy`  int(10) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`ticketId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Support System'
AUTO_INCREMENT=310

;

-- ----------------------------
-- Records of bug_tickets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_currency`
-- ----------------------------
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE `character_currency` (
`guid`  int(10) UNSIGNED NOT NULL ,
`currency`  smallint(5) UNSIGNED NOT NULL ,
`week_count`  int(10) UNSIGNED NOT NULL ,
`total_count`  int(10) UNSIGNED NOT NULL ,
`season_count`  int(11) UNSIGNED NOT NULL ,
PRIMARY KEY (`guid`, `currency`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_currency
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_currency_weekcap`
-- ----------------------------
DROP TABLE IF EXISTS `character_currency_weekcap`;
CREATE TABLE `character_currency_weekcap` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`source`  smallint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`max_week_rating`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`week_cap`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `source`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_currency_weekcap
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `characters_fake`
-- ----------------------------
DROP TABLE IF EXISTS `characters_fake`;
CREATE TABLE `characters_fake` (
`name`  varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`race`  mediumint(3) NOT NULL DEFAULT 0 ,
`class`  mediumint(3) NOT NULL DEFAULT 0 ,
`level`  mediumint(3) NOT NULL DEFAULT 0 ,
`zone`  mediumint(9) NOT NULL DEFAULT 0 ,
`gender`  mediumint(3) NOT NULL DEFAULT 0 ,
`guild`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`online`  mediumint(3) NOT NULL DEFAULT 0 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of characters_fake
-- ----------------------------
BEGIN;
INSERT INTO `characters_fake` VALUES ('Drikish', '10', '8', '51', '38', '0', 'Anathema', '2'), ('Sovelis', '1', '1', '55', '45', '0', 'Anathema', '2'), ('Cuddles', '10', '2', '55', '13', '0', 'Anathema', '2'), ('Epiasdv', '8', '4', '51', '30', '0', 'Anathema', '2'), ('Mac', '5', '4', '51', '8', '0', 'Anathema', '2'), ('Tiesto', '8', '6', '52', '50', '0', 'Anathema', '2'), ('Ihavfacebook', '11', '7', '52', '28', '1', 'Anathema', '2'), ('Mimik', '10', '4', '51', '36', '0', 'Anathema', '2'), ('Deadmau', '5', '4', '55', '210', '0', 'Anathema', '2'), ('Smoosh', '8', '1', '51', '26', '0', 'Anathema', '2'), ('Shadowcrest', '4', '4', '52', '37', '1', 'Anathema', '2'), ('Lolol', '4', '5', '55', '8', '1', 'Anathema', '2'), ('Prox', '11', '1', '51', '28', '1', 'Anathema', '2'), ('Rovip', '10', '4', '52', '17', '0', 'Anathema', '2'), ('Ryan', '10', '8', '52', '49', '0', 'Anathema', '2'), ('Holysmite', '1', '2', '51', '46', '0', '', '2'), ('Airagon', '10', '2', '52', '30', '0', '', '2'), ('Fracture', '5', '1', '52', '12', '0', '', '2'), ('Supershen', '10', '2', '51', '18', '1', '', '2'), ('Jana', '2', '4', '55', '6', '0', '', '2'), ('Gamm', '2', '1', '55', '26', '0', '', '2'), ('Emoarchie', '10', '8', '52', '11', '0', '', '2'), ('Melia', '10', '2', '55', '28', '1', '', '2'), ('Balu', '6', '11', '55', '4', '0', '', '2'), ('Jabari', '2', '1', '55', '38', '0', '', '2'), ('Sinan', '10', '2', '50', '25', '0', '', '2'), ('Shisha', '10', '4', '55', '9', '1', '', '2'), ('Killbill', '1', '4', '55', '23', '0', '', '2'), ('Gaby', '4', '11', '50', '37', '1', '', '2'), ('Fallen', '4', '4', '55', '13', '0', '', '2'), ('Druidita', '6', '11', '51', '210', '0', '', '2'), ('Pigolo', '6', '11', '55', '35', '0', '', '2'), ('Saga', '10', '2', '55', '11', '0', '', '2'), ('Deadmask', '10', '2', '55', '49', '0', '', '2'), ('Assasincz', '4', '4', '55', '12', '0', '', '2'), ('Petracz', '1', '4', '55', '11', '1', '', '2'), ('Aleks', '10', '2', '50', '21', '0', '', '2'), ('Cazadormen', '4', '4', '55', '20', '1', '', '2'), ('Kireth', '1', '2', '55', '38', '1', '', '2'), ('Liesma', '1', '1', '55', '28', '1', '', '2'), ('Tyller', '1', '1', '55', '25', '0', '', '2'), ('Astrabutaz', '1', '2', '55', '210', '0', '', '2'), ('Carlita', '7', '8', '55', '28', '1', '', '2'), ('beanie', '10', '2', '52', '18', '0', 'Panda Lords', '2'), ('Nergal', '10', '3', '55', '210', '0', 'Panda Lords', '2'), ('Smikis', '10', '5', '55', '20', '0', 'Panda Lords', '2'), ('Peperoma', '11', '2', '55', '35', '0', 'Panda Lords', '2'), ('May', '1', '2', '55', '16', '1', 'Panda Lords', '2'), ('Keyadis', '8', '7', '55', '24', '0', 'Panda Lords', '2'), ('Preatorian', '10', '2', '55', '19', '0', 'Panda Lords', '2'), ('Mitza', '1', '9', '55', '24', '0', 'Panda Lords', '2'), ('Keedor', '10', '2', '51', '14', '0', 'Panda Lords', '2'), ('Kekw', '4', '3', '55', '45', '1', 'Panda Lords', '2'), ('Wark', '1', '2', '55', '35', '0', 'Panda Lords', '2'), ('Barrabus', '10', '2', '50', '39', '0', 'Panda Lords', '2'), ('Malodetehepy', '4', '11', '55', '38', '0', 'Panda Lords', '2'), ('Dranati', '10', '2', '55', '24', '0', 'Panda Lords', '2'), ('Sorin', '2', '1', '55', '6', '0', 'Panda Lords', '2'), ('Resan', '4', '4', '55', '7', '0', 'Panda Lords', '2'), ('Silverhilt', '1', '1', '55', '17', '1', 'Panda Lords', '2'), ('Chirica', '10', '2', '55', '15', '0', 'Panda Lords', '2'), ('Trias', '10', '8', '55', '21', '0', 'Panda Lords', '2'), ('Prdo', '5', '1', '55', '10', '0', 'Panda Lords', '2'), ('Guten', '8', '7', '55', '37', '0', 'Panda Lords', '2'), ('Sonsia', '4', '3', '55', '6', '1', 'Panda Lords', '2'), ('Smikiss', '10', '4', '51', '15', '0', 'Panda Lords', '2'), ('Ledy', '4', '1', '55', '9', '1', 'Panda Lords', '2'), ('Rymar', '5', '4', '55', '1', '0', '', '2'), ('Rokass', '5', '1', '55', '25', '0', '', '2'), ('Waisha', '10', '3', '55', '21', '1', '', '2'), ('Xenon', '4', '1', '55', '210', '0', '', '2'), ('Palanoski', '1', '2', '55', '32', '0', '', '2'), ('Helona', '6', '11', '50', '23', '1', '', '2'), ('Skalons', '2', '1', '55', '19', '0', '', '2'), ('Zazlock', '5', '9', '55', '23', '0', '', '2'), ('Zazk', '6', '7', '55', '10', '0', '', '2'), ('Ezekiel', '10', '9', '55', '31', '0', '', '2'), ('Deiv', '10', '8', '55', '24', '0', '', '2'), ('Crashwar', '5', '1', '55', '27', '0', '', '2'), ('Bandaid', '5', '5', '51', '10', '0', '', '2'), ('Hunterherbie', '4', '3', '55', '210', '0', 'Premium Bax', '2'), ('Cheesebeard', '3', '1', '55', '26', '0', 'Premium Bax', '2'), ('Phin', '7', '8', '55', '16', '0', 'Premium Bax', '2'), ('Prig', '10', '5', '55', '50', '0', 'Premium Bax', '2'), ('Eraevel', '10', '5', '55', '3', '1', 'Premium Bax', '2'), ('Bourne', '5', '4', '55', '15', '0', 'Premium Bax', '2'), ('Twoogi', '5', '8', '55', '16', '0', 'Premium Bax', '2'), ('Devon', '5', '4', '42', '33', '0', 'Premium Bax', '2'), ('Ledystar', '1', '2', '51', '18', '1', 'Premium Bax', '2'), ('Frostie', '10', '8', '55', '40', '1', 'Premium Bax', '2'), ('Kie', '5', '4', '55', '43', '0', 'Premium Bax', '2'), ('Reios', '1', '2', '55', '48', '0', 'Premium Bax', '2'), ('Zero', '4', '4', '55', '9', '0', '', '2'), ('Wuk', '2', '1', '55', '50', '0', '', '2'), ('Sylvaediir', '4', '3', '55', '21', '0', '', '2'), ('Kansetsu', '11', '2', '55', '210', '0', '', '2'), ('Makura', '11', '2', '55', '14', '1', '', '2'), ('Demonia', '11', '2', '50', '1', '1', '', '2'), ('Stonebull', '6', '11', '55', '15', '0', '', '2'), ('Marianus', '10', '2', '55', '19', '0', '', '2');
COMMIT;

-- ----------------------------
-- Table structure for `daily_players_reports`
-- ----------------------------
DROP TABLE IF EXISTS `daily_players_reports`;
CREATE TABLE `daily_players_reports` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`creation_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`average`  float NOT NULL DEFAULT 0 ,
`total_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`speed_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`fly_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`jump_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`waterwalk_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`teleportplane_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`climb_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of daily_players_reports
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `ip_banned`
-- ----------------------------
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE `ip_banned` (
`ip`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1' ,
`bandate`  int(10) UNSIGNED NOT NULL ,
`unbandate`  int(10) UNSIGNED NOT NULL ,
`bannedby`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[Console]' ,
`banreason`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'no reason' ,
PRIMARY KEY (`ip`, `bandate`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Banned IPs'

;

-- ----------------------------
-- Records of ip_banned
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `ip2nation`
-- ----------------------------
DROP TABLE IF EXISTS `ip2nation`;
CREATE TABLE `ip2nation` (
`ip`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`country`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of ip2nation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `ip2nationcountries`
-- ----------------------------
DROP TABLE IF EXISTS `ip2nationcountries`;
CREATE TABLE `ip2nationcountries` (
`code`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`iso_code_2`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`iso_code_3`  varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
`iso_country`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`country`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`lat`  float NOT NULL DEFAULT 0 ,
`lon`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`code`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of ip2nationcountries
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
`time`  int(10) UNSIGNED NOT NULL ,
`realm`  int(10) UNSIGNED NOT NULL ,
`type`  tinyint(3) UNSIGNED NOT NULL ,
`level`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`string`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of logs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `players_reports_status`
-- ----------------------------
DROP TABLE IF EXISTS `players_reports_status`;
CREATE TABLE `players_reports_status` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`creation_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`average`  float NOT NULL DEFAULT 0 ,
`total_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`speed_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`fly_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`jump_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`waterwalk_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`teleportplane_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`climb_reports`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of players_reports_status
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `quest_tracker`
-- ----------------------------
DROP TABLE IF EXISTS `quest_tracker`;
CREATE TABLE `quest_tracker` (
`id`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`character_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_accept_time`  datetime NOT NULL ,
`quest_complete_time`  datetime NULL DEFAULT NULL ,
`quest_abandon_time`  datetime NULL DEFAULT NULL ,
`completed_by_gm`  tinyint(1) NOT NULL DEFAULT 0 ,
`core_hash`  varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' ,
`core_revision`  varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of quest_tracker
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_account_groups`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_account_groups`;
CREATE TABLE `rbac_account_groups` (
`accountId`  int(10) UNSIGNED NOT NULL COMMENT 'Account id' ,
`groupId`  int(10) UNSIGNED NOT NULL COMMENT 'Group id' ,
`realmId`  int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm Id, -1 means all' ,
PRIMARY KEY (`accountId`, `groupId`, `realmId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Account-Group relation'

;

-- ----------------------------
-- Records of rbac_account_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_account_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_account_permissions`;
CREATE TABLE `rbac_account_permissions` (
`accountId`  int(10) UNSIGNED NOT NULL COMMENT 'Account id' ,
`permissionId`  int(10) UNSIGNED NOT NULL COMMENT 'Permission id' ,
`granted`  tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Granted = 1, Denied = 0' ,
`realmId`  int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm Id, -1 means all' ,
PRIMARY KEY (`accountId`, `permissionId`, `realmId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Account-Permission relation'

;

-- ----------------------------
-- Records of rbac_account_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_account_roles`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_account_roles`;
CREATE TABLE `rbac_account_roles` (
`accountId`  int(10) UNSIGNED NOT NULL COMMENT 'Account id' ,
`roleId`  int(10) UNSIGNED NOT NULL COMMENT 'Role id' ,
`granted`  tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Granted = 1, Denied = 0' ,
`realmId`  int(11) NOT NULL DEFAULT '-1' COMMENT 'Realm Id, -1 means all' ,
PRIMARY KEY (`accountId`, `roleId`, `realmId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Account-Role relation'

;

-- ----------------------------
-- Records of rbac_account_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_group_roles`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_group_roles`;
CREATE TABLE `rbac_group_roles` (
`groupId`  int(10) UNSIGNED NOT NULL COMMENT 'group id' ,
`roleId`  int(10) UNSIGNED NOT NULL COMMENT 'Role id' ,
PRIMARY KEY (`groupId`, `roleId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Group Role relation'

;

-- ----------------------------
-- Records of rbac_group_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_groups`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_groups`;
CREATE TABLE `rbac_groups` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Group id' ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Group name' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Group List'

;

-- ----------------------------
-- Records of rbac_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_permissions`;
CREATE TABLE `rbac_permissions` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Permission id' ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Permission name' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Permission List'

;

-- ----------------------------
-- Records of rbac_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role_permissions`;
CREATE TABLE `rbac_role_permissions` (
`roleId`  int(10) UNSIGNED NOT NULL COMMENT 'Role id' ,
`permissionId`  int(10) UNSIGNED NOT NULL COMMENT 'Permission id' ,
PRIMARY KEY (`roleId`, `permissionId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Role Permission relation'

;

-- ----------------------------
-- Records of rbac_role_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_roles`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_roles`;
CREATE TABLE `rbac_roles` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Role id' ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Role name' ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Roles List'

;

-- ----------------------------
-- Records of rbac_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `rbac_security_level_groups`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_security_level_groups`;
CREATE TABLE `rbac_security_level_groups` (
`secId`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Security Level id' ,
`groupId`  int(10) UNSIGNED NOT NULL COMMENT 'group id' ,
PRIMARY KEY (`secId`, `groupId`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Default groups to assign when an account is set gm level'

;

-- ----------------------------
-- Records of rbac_security_level_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `realmcharacters`
-- ----------------------------
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE `realmcharacters` (
`realmid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`acctid`  int(10) UNSIGNED NOT NULL ,
`numchars`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`realmid`, `acctid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Realm Character Tracker'

;

-- ----------------------------
-- Records of realmcharacters
-- ----------------------------
BEGIN;
INSERT INTO `realmcharacters` VALUES ('1', '7', '4'), ('1', '8', '3');
COMMIT;

-- ----------------------------
-- Table structure for `realmlist`
-- ----------------------------
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE `realmlist` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'JadeCore 4.3.4' ,
`address`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1' ,
`localAddress`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '127.0.0.1' ,
`localSubnetMask`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '255.255.255.0' ,
`port`  smallint(5) UNSIGNED NOT NULL DEFAULT 8085 ,
`icon`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`flag`  tinyint(3) UNSIGNED NOT NULL DEFAULT 2 ,
`timezone`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`allowedSecurityLevel`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`population`  float UNSIGNED NOT NULL DEFAULT 0 ,
`gamebuild`  int(10) UNSIGNED NOT NULL DEFAULT 15595 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Realm System'
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of realmlist
-- ----------------------------
BEGIN;
INSERT INTO `realmlist` VALUES ('1', 'JadeCore 4.3.4', '127.0.0.1', '127.0.0.1', '255.255.255.0', '8085', '6', '0', '12', '0', '0', '15595');
COMMIT;

-- ----------------------------
-- Table structure for `uptime`
-- ----------------------------
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime` (
`realmid`  int(10) UNSIGNED NOT NULL ,
`starttime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`uptime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxplayers`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`revision`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Trinitycore' ,
PRIMARY KEY (`realmid`, `starttime`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Uptime system'

;

-- ----------------------------
-- Records of uptime
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `vip_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `vip_accounts`;
CREATE TABLE `vip_accounts` (
`id`  int(11) NOT NULL DEFAULT 0 COMMENT 'Account id' ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`setdate`  bigint(40) NOT NULL DEFAULT 0 ,
`unsetdate`  bigint(40) NOT NULL DEFAULT 0 ,
`active`  tinyint(4) NOT NULL DEFAULT 1 ,
PRIMARY KEY (`id`, `setdate`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='VIP Accounts'

;

-- ----------------------------
-- Records of vip_accounts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Indexes structure for table account
-- ----------------------------
CREATE UNIQUE INDEX `idx_username` ON `account`(`username`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `account`
-- ----------------------------
ALTER TABLE `account` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for `account_punishment`
-- ----------------------------
ALTER TABLE `account_punishment` AUTO_INCREMENT=99;

-- ----------------------------
-- Auto increment value for `account_warning`
-- ----------------------------
ALTER TABLE `account_warning` AUTO_INCREMENT=169;

-- ----------------------------
-- Auto increment value for `bug_tickets`
-- ----------------------------
ALTER TABLE `bug_tickets` AUTO_INCREMENT=310;

-- ----------------------------
-- Indexes structure for table ip2nation
-- ----------------------------
CREATE INDEX `ip` ON `ip2nation`(`ip`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table ip2nationcountries
-- ----------------------------
CREATE INDEX `code` ON `ip2nationcountries`(`code`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table rbac_account_groups
-- ----------------------------
CREATE INDEX `fk__rbac_account_groups__rbac_groups` ON `rbac_account_groups`(`groupId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table rbac_account_permissions
-- ----------------------------
CREATE INDEX `fk__rbac_account_roles__rbac_permissions` ON `rbac_account_permissions`(`permissionId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table rbac_account_roles
-- ----------------------------
CREATE INDEX `fk__rbac_account_roles__rbac_roles` ON `rbac_account_roles`(`roleId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table rbac_group_roles
-- ----------------------------
CREATE INDEX `fk__rbac_group_roles__rbac_roles` ON `rbac_group_roles`(`roleId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table rbac_role_permissions
-- ----------------------------
CREATE INDEX `fk__role_permissions__rbac_permissions` ON `rbac_role_permissions`(`permissionId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table rbac_security_level_groups
-- ----------------------------
CREATE INDEX `fk__rbac_security_level_groups__rbac_groups` ON `rbac_security_level_groups`(`groupId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table realmcharacters
-- ----------------------------
CREATE INDEX `acctid` ON `realmcharacters`(`acctid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table realmlist
-- ----------------------------
CREATE UNIQUE INDEX `idx_name` ON `realmlist`(`name`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `realmlist`
-- ----------------------------
ALTER TABLE `realmlist` AUTO_INCREMENT=2;
