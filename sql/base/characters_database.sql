/*
Navicat MySQL Data Transfer

Source Server         : JadeCore
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : characters434

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-10-18 16:57:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_data`
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
`accountId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier' ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  blob NOT NULL ,
PRIMARY KEY (`accountId`, `type`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of account_data
-- ----------------------------
BEGIN;
INSERT INTO `account_data` VALUES ('7', '0', '1459548104', 0x53455420666C61676765645475746F7269616C732022760123232423234523232523232D23232723232823232E23235A23233823233A23235B23232923233123234B23232B23233B23234E220D0A5345542063616D65726144697374616E63654D6178466163746F72202231220D0A), ('8', '0', '1466443551', 0x534554206175746F4469736D6F756E74466C79696E67202231220D0A53455420696E7465726163744F6E4C656674436C69636B202230220D0A534554207370656C6C41637469766174696F6E4F7665726C61794F7061636974792022302E3235220D0A53455420666C61676765645475746F7269616C732022760123232423233A23233123233923234923234423233023234A23235623235B23234123234223233623232B23233523234523232523232D23232723232823232E23235A23233823233B23232923234B23234323232C23233F23234023233723234623233C23236023234F23235E23235D23234E23233323234C23234723234823235923233E23233D23235823235F220D0A534554206C6F636B416374696F6E42617273202230220D0A53455420656E61626C65436F6D62617454657874202230220D0A534554206663745370656C6C4D656368616E696373202231220D0A5345542063616D65726156696577202231220D0A5345542063616D657261536D6F6F74685374796C65202231220D0A5345542063616D65726144697374616E63654D6178466163746F722022312E32303030303030343736383337220D0A5345542073686F774E657762696554697073202230220D0A5345542055626572546F6F6C74697073202230220D0A5345542073686F775475746F7269616C73202230220D0A5345542074616C656E744672616D6553686F776E202231220D0A), ('8', '2', '1466443552', 0x42494E44494E474D4F444520300D0A62696E642052204D554C5449414354494F4E42415231425554544F4E340D0A62696E642046204D554C5449414354494F4E42415231425554544F4E350D0A), ('8', '4', '1466443553', 0x4D4143524F203120222E6469652220224162696C6974795F43726561747572655F4375727365645F3032220D0A2E6469650D0A454E440D0A4D4143524F2034202264656C2220224162696C6974795F43726561747572655F4375727365645F3033220D0A2E6E70632064656C0D0A454E440D0A4D4143524F203720226C6F6C2220224162696C6974795F44727569645F436F776572220D0A2F6C6F6C0D0A454E440D0A4D4143524F203820226E706320616464222022494E565F4D4953435F4E4F54455F3032220D0A2E6E7063206164642034313736380D0A454E440D0A4D4143524F203620226E706320696E662220224162696C6974795F43726561747572655F446973656173655F3035220D0A2E6E706320696E666F0D0A454E440D0A4D4143524F2039202270686173652031222022494E565F4D4953435F5155455354494F4E4D41524B220D0A2E6D6F6469667920706861736520310D0A454E440D0A4D4143524F2035202271756573742220224142494C4954595F52414349414C5F54494D4549534D4F4E4559220D0A2E717565737420636F6D706C6574652031343132340D0A454E440D0A4D4143524F2033202271756573742220224162696C6974795F43726561747572655F4375727365645F3031220D0A2E676F626A65637420616464203139353230310D0A454E440D0A4D4143524F2032202273696C6C792220224162696C6974795F416D62757368220D0A2F73696C6C790D0A454E440D0A);
COMMIT;

-- ----------------------------
-- Table structure for `account_instance_times`
-- ----------------------------
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times` (
`accountId`  int(10) UNSIGNED NOT NULL ,
`instanceId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`releaseTime`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`accountId`, `instanceId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of account_instance_times
-- ----------------------------
BEGIN;
INSERT INTO `account_instance_times` VALUES ('1', '8', '1389892256'), ('2', '2', '1389886680'), ('2', '4', '1389886879'), ('2', '5', '1389887697'), ('6', '1', '1389896867'), ('8', '1', '1461351405');
COMMIT;

-- ----------------------------
-- Table structure for `account_tutorial`
-- ----------------------------
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE `account_tutorial` (
`accountId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier' ,
`tut0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tut7`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`accountId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of account_tutorial
-- ----------------------------
BEGIN;
INSERT INTO `account_tutorial` VALUES ('7', '13639859', '8389762', '0', '0', '0', '0', '0', '0'), ('8', '4227381171', '284427499', '0', '0', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
-- Table structure for `addons`
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
`name`  varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`crc`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`name`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Addons'

;

-- ----------------------------
-- Records of addons
-- ----------------------------
BEGIN;
INSERT INTO `addons` VALUES ('Blizzard_AchievementUI', '1276933997'), ('Blizzard_ArchaeologyUI', '1276933997'), ('Blizzard_ArenaUI', '1276933997'), ('Blizzard_AuctionUI', '1276933997'), ('Blizzard_BarbershopUI', '1276933997'), ('Blizzard_BattlefieldMinimap', '1276933997'), ('Blizzard_BindingUI', '1276933997'), ('Blizzard_Calendar', '1276933997'), ('Blizzard_ClientSavedVariables', '1276933997'), ('Blizzard_CombatLog', '1276933997'), ('Blizzard_CombatText', '1276933997'), ('Blizzard_CompactRaidFrames', '1276933997'), ('Blizzard_CUFProfiles', '1276933997'), ('Blizzard_DebugTools', '1276933997'), ('Blizzard_EncounterJournal', '1276933997'), ('Blizzard_GlyphUI', '1276933997'), ('Blizzard_GMChatUI', '1276933997'), ('Blizzard_GMSurveyUI', '1276933997'), ('Blizzard_GuildBankUI', '1276933997'), ('Blizzard_GuildControlUI', '1276933997'), ('Blizzard_GuildUI', '1276933997'), ('Blizzard_InspectUI', '1276933997'), ('Blizzard_ItemAlterationUI', '1276933997'), ('Blizzard_ItemSocketingUI', '1276933997'), ('Blizzard_LookingForGuildUI', '1276933997'), ('Blizzard_MacroUI', '1276933997'), ('Blizzard_MovePad', '1276933997'), ('Blizzard_RaidUI', '1276933997'), ('Blizzard_ReforgingUI', '1276933997'), ('Blizzard_TalentUI', '1276933997'), ('Blizzard_TimeManager', '1276933997'), ('Blizzard_TokenUI', '1276933997'), ('Blizzard_TradeSkillUI', '1276933997'), ('Blizzard_TrainerUI', '1276933997'), ('Blizzard_VoidStorageUI', '1276933997');
COMMIT;

-- ----------------------------
-- Table structure for `arena_team`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
`arenaTeamId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`captainGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`rating`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonGames`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonWins`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`weekGames`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`weekWins`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`rank`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`backgroundColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`emblemColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`borderColor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`emblemStyle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`borderStyle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`arenaTeamId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of arena_team
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `arena_team_member`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
`arenaTeamId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`weekGames`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`weekWins`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonGames`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`seasonWins`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`personalRating`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`arenaTeamId`, `guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of arena_team_member
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `auctionhouse`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`auctioneerguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemowner`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`buyoutprice`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`buyguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`lastbid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`startbid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`deposit`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of auctionhouse
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `auctionhousebot`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhousebot`;
CREATE TABLE `auctionhousebot` (
`auctionhouse`  int(11) NOT NULL DEFAULT 0 COMMENT 'mapID of the auctionhouse.' ,
`name`  char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Text name of the auctionhouse.' ,
`minitems`  int(11) NULL DEFAULT 0 COMMENT 'This is the minimum number of items you want to keep in the auction house. a 0 here will make it the same as the maximum.' ,
`maxitems`  int(11) NULL DEFAULT 0 COMMENT 'This is the number of items you want to keep in the auction house.' ,
`percentgreytradegoods`  int(11) NULL DEFAULT 0 COMMENT 'Sets the percentage of the Grey Trade Goods auction items' ,
`percentwhitetradegoods`  int(11) NULL DEFAULT 27 COMMENT 'Sets the percentage of the White Trade Goods auction items' ,
`percentgreentradegoods`  int(11) NULL DEFAULT 12 COMMENT 'Sets the percentage of the Green Trade Goods auction items' ,
`percentbluetradegoods`  int(11) NULL DEFAULT 10 COMMENT 'Sets the percentage of the Blue Trade Goods auction items' ,
`percentpurpletradegoods`  int(11) NULL DEFAULT 1 COMMENT 'Sets the percentage of the Purple Trade Goods auction items' ,
`percentorangetradegoods`  int(11) NULL DEFAULT 0 COMMENT 'Sets the percentage of the Orange Trade Goods auction items' ,
`percentyellowtradegoods`  int(11) NULL DEFAULT 0 COMMENT 'Sets the percentage of the Yellow Trade Goods auction items' ,
`percentgreyitems`  int(11) NULL DEFAULT 0 COMMENT 'Sets the percentage of the non trade Grey auction items' ,
`percentwhiteitems`  int(11) NULL DEFAULT 10 COMMENT 'Sets the percentage of the non trade White auction items' ,
`percentgreenitems`  int(11) NULL DEFAULT 30 COMMENT 'Sets the percentage of the non trade Green auction items' ,
`percentblueitems`  int(11) NULL DEFAULT 8 COMMENT 'Sets the percentage of the non trade Blue auction items' ,
`percentpurpleitems`  int(11) NULL DEFAULT 2 COMMENT 'Sets the percentage of the non trade Purple auction items' ,
`percentorangeitems`  int(11) NULL DEFAULT 0 COMMENT 'Sets the percentage of the non trade Orange auction items' ,
`percentyellowitems`  int(11) NULL DEFAULT 0 COMMENT 'Sets the percentage of the non trade Yellow auction items' ,
`minpricegrey`  int(11) NULL DEFAULT 100 COMMENT 'Minimum price of Grey items (percentage).' ,
`maxpricegrey`  int(11) NULL DEFAULT 150 COMMENT 'Maximum price of Grey items (percentage).' ,
`minpricewhite`  int(11) NULL DEFAULT 150 COMMENT 'Minimum price of White items (percentage).' ,
`maxpricewhite`  int(11) NULL DEFAULT 250 COMMENT 'Maximum price of White items (percentage).' ,
`minpricegreen`  int(11) NULL DEFAULT 800 COMMENT 'Minimum price of Green items (percentage).' ,
`maxpricegreen`  int(11) NULL DEFAULT 1400 COMMENT 'Maximum price of Green items (percentage).' ,
`minpriceblue`  int(11) NULL DEFAULT 1250 COMMENT 'Minimum price of Blue items (percentage).' ,
`maxpriceblue`  int(11) NULL DEFAULT 1750 COMMENT 'Maximum price of Blue items (percentage).' ,
`minpricepurple`  int(11) NULL DEFAULT 2250 COMMENT 'Minimum price of Purple items (percentage).' ,
`maxpricepurple`  int(11) NULL DEFAULT 4550 COMMENT 'Maximum price of Purple items (percentage).' ,
`minpriceorange`  int(11) NULL DEFAULT 3250 COMMENT 'Minimum price of Orange items (percentage).' ,
`maxpriceorange`  int(11) NULL DEFAULT 5550 COMMENT 'Maximum price of Orange items (percentage).' ,
`minpriceyellow`  int(11) NULL DEFAULT 5250 COMMENT 'Minimum price of Yellow items (percentage).' ,
`maxpriceyellow`  int(11) NULL DEFAULT 6550 COMMENT 'Maximum price of Yellow items (percentage).' ,
`minbidpricegrey`  int(11) NULL DEFAULT 70 COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 70' ,
`maxbidpricegrey`  int(11) NULL DEFAULT 100 COMMENT 'Starting bid price of Grey items as a percentage of the randomly chosen buyout price. Default: 100' ,
`minbidpricewhite`  int(11) NULL DEFAULT 70 COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 70' ,
`maxbidpricewhite`  int(11) NULL DEFAULT 100 COMMENT 'Starting bid price of White items as a percentage of the randomly chosen buyout price. Default: 100' ,
`minbidpricegreen`  int(11) NULL DEFAULT 80 COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 80' ,
`maxbidpricegreen`  int(11) NULL DEFAULT 100 COMMENT 'Starting bid price of Green items as a percentage of the randomly chosen buyout price. Default: 100' ,
`minbidpriceblue`  int(11) NULL DEFAULT 75 COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 75' ,
`maxbidpriceblue`  int(11) NULL DEFAULT 100 COMMENT 'Starting bid price of Blue items as a percentage of the randomly chosen buyout price. Default: 100' ,
`minbidpricepurple`  int(11) NULL DEFAULT 80 COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 80' ,
`maxbidpricepurple`  int(11) NULL DEFAULT 100 COMMENT 'Starting bid price of Purple items as a percentage of the randomly chosen buyout price. Default: 100' ,
`minbidpriceorange`  int(11) NULL DEFAULT 80 COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 80' ,
`maxbidpriceorange`  int(11) NULL DEFAULT 100 COMMENT 'Starting bid price of Orange items as a percentage of the randomly chosen buyout price. Default: 100' ,
`minbidpriceyellow`  int(11) NULL DEFAULT 80 COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 80' ,
`maxbidpriceyellow`  int(11) NULL DEFAULT 100 COMMENT 'Starting bid price of Yellow items as a percentage of the randomly chosen buyout price. Default: 100' ,
`maxstackgrey`  int(11) NULL DEFAULT 0 COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.' ,
`maxstackwhite`  int(11) NULL DEFAULT 0 COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.' ,
`maxstackgreen`  int(11) NULL DEFAULT 0 COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.' ,
`maxstackblue`  int(11) NULL DEFAULT 0 COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.' ,
`maxstackpurple`  int(11) NULL DEFAULT 0 COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.' ,
`maxstackorange`  int(11) NULL DEFAULT 0 COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.' ,
`maxstackyellow`  int(11) NULL DEFAULT 0 COMMENT 'Stack size limits for item qualities - a value of 0 will disable a maximum stack size for that quality, which will allow the bot to create items in stack as large as the item allows.' ,
`buyerpricegrey`  int(11) NULL DEFAULT 1 COMMENT 'Multiplier to vendorprice when buying grey items from auctionhouse' ,
`buyerpricewhite`  int(11) NULL DEFAULT 3 COMMENT 'Multiplier to vendorprice when buying white items from auctionhouse' ,
`buyerpricegreen`  int(11) NULL DEFAULT 5 COMMENT 'Multiplier to vendorprice when buying green items from auctionhouse' ,
`buyerpriceblue`  int(11) NULL DEFAULT 12 COMMENT 'Multiplier to vendorprice when buying blue items from auctionhouse' ,
`buyerpricepurple`  int(11) NULL DEFAULT 15 COMMENT 'Multiplier to vendorprice when buying purple items from auctionhouse' ,
`buyerpriceorange`  int(11) NULL DEFAULT 20 COMMENT 'Multiplier to vendorprice when buying orange items from auctionhouse' ,
`buyerpriceyellow`  int(11) NULL DEFAULT 22 COMMENT 'Multiplier to vendorprice when buying yellow items from auctionhouse' ,
`buyerbiddinginterval`  int(11) NULL DEFAULT 1 COMMENT 'Interval how frequently AHB bids on each AH. Time in minutes' ,
`buyerbidsperinterval`  int(11) NULL DEFAULT 1 COMMENT 'number of bids to put in per bidding interval' ,
PRIMARY KEY (`auctionhouse`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of auctionhousebot
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `bugreport`
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier' ,
`type`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Debug System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of bugreport
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `calendar_events`
-- ----------------------------
DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE `calendar_events` (
`id`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`creator`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`type`  tinyint(1) UNSIGNED NOT NULL DEFAULT 4 ,
`dungeon`  int(10) NOT NULL DEFAULT '-1' ,
`eventtime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`time2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of calendar_events
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `calendar_invites`
-- ----------------------------
DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE `calendar_invites` (
`id`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`event`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`invitee`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`sender`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`status`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`statustime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rank`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 ,
`text`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of calendar_invites
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `channels`
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
`name`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`team`  int(10) UNSIGNED NOT NULL ,
`announce`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`ownership`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`password`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`bannedList`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`lastUsed`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`name`, `team`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Channel System'

;

-- ----------------------------
-- Records of channels
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_account_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  blob NOT NULL ,
PRIMARY KEY (`guid`, `type`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_account_data
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
`guid`  int(10) UNSIGNED NOT NULL ,
`achievement`  smallint(5) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `achievement`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_achievement
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
`guid`  int(10) UNSIGNED NOT NULL ,
`criteria`  smallint(5) UNSIGNED NOT NULL ,
`counter`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`date`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `criteria`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_achievement_progress
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_action`
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`button`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`action`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spec`, `button`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_action
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_arena_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_stats`;
CREATE TABLE `character_arena_stats` (
`guid`  int(10) NOT NULL ,
`slot`  tinyint(3) NOT NULL ,
`matchMakerRating`  smallint(5) NOT NULL ,
PRIMARY KEY (`guid`, `slot`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_arena_stats
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_aura`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`caster_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier' ,
`item_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`effect_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`recalculate_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stackcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`amount0`  int(11) NOT NULL DEFAULT 0 ,
`amount1`  int(11) NOT NULL DEFAULT 0 ,
`amount2`  int(11) NOT NULL DEFAULT 0 ,
`base_amount0`  int(11) NOT NULL DEFAULT 0 ,
`base_amount1`  int(11) NOT NULL DEFAULT 0 ,
`base_amount2`  int(11) NOT NULL DEFAULT 0 ,
`maxduration`  int(11) NOT NULL DEFAULT 0 ,
`remaintime`  int(11) NOT NULL DEFAULT 0 ,
`remaincharges`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `caster_guid`, `item_guid`, `spell`, `effect_mask`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_aura
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_banned`
-- ----------------------------
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bandate`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`unbandate`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bannedby`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`banreason`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`guid`, `bandate`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Ban List'

;

-- ----------------------------
-- Records of character_banned
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_battleground_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`instanceId`  int(10) UNSIGNED NOT NULL COMMENT 'Instance Identifier' ,
`team`  smallint(5) UNSIGNED NOT NULL ,
`joinX`  float NOT NULL DEFAULT 0 ,
`joinY`  float NOT NULL DEFAULT 0 ,
`joinZ`  float NOT NULL DEFAULT 0 ,
`joinO`  float NOT NULL DEFAULT 0 ,
`joinMapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`taxiStart`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`taxiEnd`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mountSpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_battleground_data
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_battleground_random`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_battleground_random
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_bug_submission`
-- ----------------------------
DROP TABLE IF EXISTS `character_bug_submission`;
CREATE TABLE `character_bug_submission` (
`id`  int(10) NOT NULL AUTO_INCREMENT ,
`content`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`playerId`  bigint(20) NULL DEFAULT NULL ,
`position_x`  float NULL DEFAULT NULL ,
`position_y`  float NULL DEFAULT NULL ,
`position_z`  float NULL DEFAULT NULL ,
`orientation`  float NULL DEFAULT NULL ,
`mapId`  int(10) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of character_bug_submission
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_cuf_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `character_cuf_profiles`;
CREATE TABLE `character_cuf_profiles` (
`guid`  int(10) UNSIGNED NOT NULL COMMENT 'Character Guid' ,
`id`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Profile Id (0-4)' ,
`name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Profile Name' ,
`frameHeight`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Frame Height' ,
`frameWidth`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Frame Width' ,
`sortBy`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame Sort By' ,
`healthText`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame Health Text' ,
`boolOptions`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Many Configurable Bool Options' ,
`unk146`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Unk Int8' ,
`unk147`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Unk Int8' ,
`unk148`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Unk Int8' ,
`unk150`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Unk Int16' ,
`unk152`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Unk Int16' ,
`unk154`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Unk Int16' ,
PRIMARY KEY (`guid`, `id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_cuf_profiles
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
-- Table structure for `character_current_artifacts`
-- ----------------------------
DROP TABLE IF EXISTS `character_current_artifacts`;
CREATE TABLE `character_current_artifacts` (
`guid`  int(10) UNSIGNED NOT NULL ,
`branchId`  int(10) NOT NULL DEFAULT 0 ,
`entry`  int(10) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `branchId`, `entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_current_artifacts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`genitive`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`dative`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`accusative`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`instrumental`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`prepositional`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_declinedname
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_digsites`
-- ----------------------------
DROP TABLE IF EXISTS `character_digsites`;
CREATE TABLE `character_digsites` (
`guid`  int(10) UNSIGNED NOT NULL ,
`entry`  int(10) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `entry`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_digsites
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_equipmentsets`
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
`guid`  int(10) NOT NULL DEFAULT 0 ,
`setguid`  bigint(20) NOT NULL AUTO_INCREMENT ,
`setindex`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`iconname`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ignore_mask`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item0`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item1`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item2`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item3`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item4`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item5`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item6`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item7`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item8`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item9`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item10`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item11`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item12`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item13`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item14`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item15`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item16`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item17`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
`item18`  int(11) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`setguid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of character_equipmentsets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`item_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`item_guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_gifts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_glyphs`
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
`guid`  int(10) UNSIGNED NOT NULL ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`glyph1`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph2`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph3`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph4`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph5`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph6`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph7`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph8`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
`glyph9`  smallint(5) UNSIGNED NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spec`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_glyphs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_guild_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_guild_reputation`;
CREATE TABLE `character_guild_reputation` (
`guid`  int(10) UNSIGNED NOT NULL ,
`guildid`  int(10) UNSIGNED NOT NULL COMMENT 'Guild Identificator' ,
`disband_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`weekly_rep`  bigint(20) NOT NULL DEFAULT 0 ,
`total_rep`  bigint(20) NOT NULL DEFAULT 0 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Characters Guild Reputation System'

;

-- ----------------------------
-- Records of character_guild_reputation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_homebind`
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`zoneId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_homebind
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_instance`
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`permanent`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `instance`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_instance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`bag`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`item`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Global Unique Identifier' ,
PRIMARY KEY (`item`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_inventory
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`owner`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`modelid`  int(10) UNSIGNED NULL DEFAULT 0 ,
`CreatedBySpell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`PetType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`exp`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Reactstate`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Pet' ,
`renamed`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`curhealth`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`curmana`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`savetime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`abdata`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Records of character_pet
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`owner`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`genitive`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`dative`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`accusative`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`instrumental`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`prepositional`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_pet_declinedname
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_queststatus`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
`status`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`explored`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`timer`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`mobcount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount1`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount2`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount3`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`itemcount4`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`playercount`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_queststatus_daily`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_queststatus_daily
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_queststatus_monthly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE `character_queststatus_monthly` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_queststatus_monthly
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_queststatus_rewarded`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
`active`  tinyint(10) UNSIGNED NOT NULL DEFAULT 1 ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_queststatus_rewarded
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_queststatus_seasonal`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
CREATE TABLE `character_queststatus_seasonal` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
`event`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event Identifier' ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_queststatus_seasonal
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_queststatus_weekly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`quest`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier' ,
PRIMARY KEY (`guid`, `quest`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_queststatus_weekly
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`faction`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`standing`  int(11) NOT NULL DEFAULT 0 ,
`flags`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `faction`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_reputation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_skills`
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
`guid`  int(10) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier' ,
`skill`  smallint(5) UNSIGNED NOT NULL ,
`value`  smallint(5) UNSIGNED NOT NULL ,
`max`  smallint(5) UNSIGNED NOT NULL ,
PRIMARY KEY (`guid`, `skill`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_skills
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_social`
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`friend`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Global Unique Identifier' ,
`flags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Flags' ,
`note`  varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Friend Note' ,
PRIMARY KEY (`guid`, `friend`, `flags`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_social
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_spell`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`disabled`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of character_spell
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`item`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Identifier' ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`maxhealth`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`maxpower5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`strength`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`agility`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`stamina`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`intellect`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spirit`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`armor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resHoly`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resFire`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resNature`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resFrost`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resShadow`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resArcane`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`blockPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`dodgePct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`parryPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`critPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`rangedCritPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`spellCritPct`  float UNSIGNED NOT NULL DEFAULT 0 ,
`attackPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rangedAttackPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`spellPower`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resilience`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_stats
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_talent`
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
`guid`  int(10) UNSIGNED NOT NULL ,
`spell`  mediumint(8) UNSIGNED NOT NULL ,
`spec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`, `spec`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_talent
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `character_void_storage`
-- ----------------------------
DROP TABLE IF EXISTS `character_void_storage`;
CREATE TABLE `character_void_storage` (
`itemId`  bigint(20) UNSIGNED NOT NULL ,
`playerGuid`  int(10) UNSIGNED NOT NULL ,
`itemEntry`  mediumint(8) UNSIGNED NOT NULL ,
`slot`  tinyint(3) UNSIGNED NOT NULL ,
`creatorGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`randomProperty`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`suffixFactor`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`itemId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of character_void_storage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`account`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier' ,
`name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`race`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`class`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`gender`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`xp`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`money`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`playerBytes`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerBytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerFlags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`position_x`  float NOT NULL DEFAULT 0 ,
`position_y`  float NOT NULL DEFAULT 0 ,
`position_z`  float NOT NULL DEFAULT 0 ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`instance_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instance_mode_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`taximask`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`online`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`cinematic`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`totaltime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`leveltime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`logout_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`is_logout_resting`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`rest_bonus`  float NOT NULL DEFAULT 0 ,
`resettalents_cost`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`resettalents_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`trans_x`  float NOT NULL DEFAULT 0 ,
`trans_y`  float NOT NULL DEFAULT 0 ,
`trans_z`  float NOT NULL DEFAULT 0 ,
`trans_o`  float NOT NULL DEFAULT 0 ,
`transguid`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`extra_flags`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`stable_slots`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`at_login`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`zone`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`death_expire_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`taxi_path`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`totalKills`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`todayKills`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`yesterdayKills`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`chosenTitle`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`watchedFaction`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`drunk`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`health`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`power5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`latency`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`speccount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`activespec`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`exploredZones`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`equipmentCache`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`knownTitles`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`actionBars`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`deleteInfos_Account`  int(10) UNSIGNED NULL DEFAULT NULL ,
`deleteInfos_Name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`deleteDate`  int(10) UNSIGNED NULL DEFAULT NULL ,
`achievementPoint`  int(10) NOT NULL DEFAULT 0 ,
`slot`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`grantableLevels`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`currentPetSlot`  smallint(2) NOT NULL DEFAULT 0 ,
`talentTree`  varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0 0' ,
`guildId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'

;

-- ----------------------------
-- Records of characters
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
COMMIT;

-- ----------------------------
-- Table structure for `corpse`
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
`corpseGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
`orientation`  float NOT NULL DEFAULT 0 ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier' ,
`phaseMask`  smallint(5) UNSIGNED NOT NULL DEFAULT 1 ,
`displayId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemCache`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`bytes1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`bytes2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`flags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`dynFlags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`corpseType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`instanceId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier' ,
PRIMARY KEY (`corpseGuid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Death System'

;

-- ----------------------------
-- Records of corpse
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `creature_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`respawnTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mapId`  smallint(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instanceId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier' ,
PRIMARY KEY (`guid`, `instanceId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Grid Loading System'

;

-- ----------------------------
-- Records of creature_respawn
-- ----------------------------
BEGIN;
INSERT INTO `creature_respawn` VALUES ('7164', '1389682230', '0', '0'), ('7165', '1389682228', '0', '0'), ('7167', '1389682223', '0', '0'), ('7187', '1389682217', '0', '0'), ('7188', '1389682225', '0', '0'), ('7190', '1389682217', '0', '0'), ('7218', '1389682205', '0', '0'), ('7220', '1389682222', '0', '0'), ('7221', '1389682219', '0', '0'), ('7222', '1389682216', '0', '0'), ('7223', '1389682214', '0', '0'), ('7247', '1389682198', '0', '0'), ('7250', '1389682211', '0', '0'), ('7251', '1389682221', '0', '0'), ('7252', '1389682191', '0', '0'), ('7253', '1389682217', '0', '0'), ('7254', '1389682202', '0', '0'), ('7255', '1389682200', '0', '0'), ('7259', '1389682214', '0', '0'), ('8015', '1389598108', '0', '0'), ('8041', '1461946802', '0', '0'), ('8046', '1461946801', '0', '0'), ('8048', '1461946792', '0', '0'), ('8049', '1461946734', '0', '0'), ('8089', '1461018065', '0', '0'), ('8965', '1461348058', '0', '0'), ('9210', '1389601896', '0', '0'), ('9462', '1389601899', '0', '0'), ('9464', '1389601884', '0', '0'), ('9466', '1389601901', '0', '0'), ('9474', '1389601920', '0', '0'), ('9479', '1389601907', '0', '0'), ('9480', '1389601912', '0', '0'), ('9481', '1389601920', '0', '0'), ('12038', '1389601908', '0', '0'), ('12039', '1389601891', '0', '0'), ('12044', '1389601914', '0', '0'), ('12045', '1389601874', '0', '0'), ('12046', '1389601868', '0', '0'), ('12052', '1389601928', '0', '0'), ('12053', '1389601906', '0', '0'), ('12054', '1389601861', '0', '0'), ('12056', '1389601893', '0', '0'), ('12442', '1389872192', '0', '0'), ('12443', '1389872439', '0', '0'), ('13452', '1389871798', '0', '0'), ('13453', '1389871769', '0', '0'), ('13454', '1389871806', '0', '0'), ('13455', '1389871735', '0', '0'), ('13456', '1389871698', '0', '0'), ('13457', '1389871725', '0', '0'), ('13512', '1389870679', '0', '0'), ('14236', '1389879040', '0', '0'), ('18802', '1389598118', '0', '0'), ('18805', '1389598127', '0', '0'), ('18806', '1466452374', '0', '0'), ('18822', '1466452377', '0', '0'), ('18827', '1389598100', '0', '0'), ('18830', '1389598109', '0', '0'), ('18832', '1389598119', '0', '0'), ('18837', '1389598106', '0', '0'), ('18838', '1389598103', '0', '0'), ('18841', '1389598113', '0', '0'), ('18868', '1389598112', '0', '0'), ('18877', '1466452362', '0', '0'), ('18878', '1466452366', '0', '0'), ('18880', '1466452378', '0', '0'), ('18883', '1389598122', '0', '0'), ('18890', '1389598107', '0', '0'), ('18891', '1466452359', '0', '0'), ('18895', '1466452375', '0', '0'), ('18905', '1389598109', '0', '0'), ('18924', '1389598105', '0', '0'), ('18934', '1389598105', '0', '0'), ('18954', '1389598102', '0', '0'), ('18972', '1466452370', '0', '0'), ('18986', '1389598099', '0', '0'), ('18987', '1466452367', '0', '0'), ('18993', '1389598097', '0', '0'), ('18994', '1466452380', '0', '0'), ('19806', '1461946796', '0', '0'), ('20123', '1389682203', '0', '0'), ('20131', '1389682207', '0', '0'), ('20135', '1389682202', '0', '0'), ('20142', '1389682214', '0', '0'), ('20263', '1389682202', '0', '0'), ('20272', '1389682224', '0', '0'), ('20355', '1389682198', '0', '0'), ('20371', '1389601879', '0', '0'), ('20372', '1389601923', '0', '0'), ('21785', '1389601903', '0', '0'), ('23210', '1389871691', '0', '0'), ('23222', '1389871802', '0', '0'), ('26124', '1389871789', '0', '0'), ('27016', '1389682200', '0', '0'), ('27027', '1389682199', '0', '0'), ('27057', '1389682200', '0', '0'), ('27164', '1389682208', '0', '0'), ('27211', '1389682202', '0', '0'), ('27269', '1389682205', '0', '0');
INSERT INTO `creature_respawn` VALUES ('27348', '1389682201', '0', '0'), ('27537', '1389682213', '0', '0'), ('27545', '1389682211', '0', '0'), ('27549', '1389682205', '0', '0'), ('27561', '1389682209', '0', '0'), ('27593', '1389682201', '0', '0'), ('27670', '1389682196', '0', '0'), ('27775', '1389682208', '0', '0'), ('27798', '1389682214', '0', '0'), ('27843', '1389682197', '0', '0'), ('27869', '1389682202', '0', '0'), ('27919', '1389682212', '0', '0'), ('27947', '1389682204', '0', '0'), ('30363', '1461946799', '0', '0'), ('30943', '1389598099', '0', '0'), ('32196', '1466452246', '0', '0'), ('32797', '1461946723', '0', '0'), ('32807', '1461946836', '0', '0'), ('32813', '1461946807', '0', '0'), ('32865', '1461946822', '0', '0'), ('32871', '1461946721', '0', '0'), ('32885', '1461946788', '0', '0'), ('32897', '1461946810', '0', '0'), ('32946', '1461946737', '0', '0'), ('32998', '1461946832', '0', '0'), ('33007', '1461946726', '0', '0'), ('33066', '1461946804', '0', '0'), ('33075', '1461947243', '0', '0'), ('33113', '1461946741', '0', '0'), ('33160', '1461946749', '0', '0'), ('33161', '1461947217', '0', '0'), ('33249', '1461946820', '0', '0'), ('33269', '1461947266', '0', '0'), ('33314', '1461946786', '0', '0'), ('33352', '1461946728', '0', '0'), ('33386', '1461947237', '0', '0'), ('33414', '1461946796', '0', '0'), ('33425', '1461946777', '0', '0'), ('33522', '1461946732', '0', '0'), ('33550', '1461946731', '0', '0'), ('33563', '1461946723', '0', '0'), ('33569', '1461946845', '0', '0'), ('33597', '1461946755', '0', '0'), ('33598', '1461946726', '0', '0'), ('33599', '1461946800', '0', '0'), ('33627', '1461946812', '0', '0'), ('33728', '1461947241', '0', '0'), ('33752', '1461946812', '0', '0'), ('33768', '1461946759', '0', '0'), ('33822', '1461018248', '0', '0'), ('33841', '1461946830', '0', '0'), ('33850', '1461946720', '0', '0'), ('33861', '1461946806', '0', '0'), ('33904', '1461946765', '0', '0'), ('33911', '1461946810', '0', '0'), ('33935', '1461946788', '0', '0'), ('33985', '1461946795', '0', '0'), ('34001', '1461946815', '0', '0'), ('34018', '1461947245', '0', '0'), ('34023', '1461946731', '0', '0'), ('34089', '1461946754', '0', '0'), ('34125', '1461946775', '0', '0'), ('34131', '1461946812', '0', '0'), ('34157', '1461946834', '0', '0'), ('34213', '1461946738', '0', '0'), ('34248', '1461946818', '0', '0'), ('34286', '1461946690', '0', '0'), ('34299', '1461946748', '0', '0'), ('34312', '1461946685', '0', '0'), ('34330', '1461946791', '0', '0'), ('34381', '1461947231', '0', '0'), ('34392', '1461946725', '0', '0'), ('36411', '1389601919', '0', '0'), ('41748', '1389601907', '0', '0'), ('41810', '1459587099', '0', '0'), ('41921', '1389601884', '0', '0'), ('41933', '1389601896', '0', '0'), ('42208', '1389601922', '0', '0'), ('42344', '1389601915', '0', '0'), ('42463', '1389601957', '0', '0'), ('42490', '1459587098', '0', '0'), ('42568', '1459587145', '0', '0'), ('42612', '1389601896', '0', '0'), ('42619', '1459587100', '0', '0'), ('42633', '1459586912', '0', '0'), ('42747', '1389601892', '0', '0'), ('42786', '1459587095', '0', '0'), ('42831', '1389601917', '0', '0'), ('42835', '1389601916', '0', '0'), ('42995', '1389601897', '0', '0'), ('43058', '1459586924', '0', '0'), ('43106', '1389601885', '0', '0'), ('43137', '1389601966', '0', '0'), ('43192', '1459587093', '0', '0'), ('43699', '1389682212', '0', '0'), ('43700', '1389682225', '0', '0'), ('43701', '1389682215', '0', '0'), ('43702', '1389682223', '0', '0'), ('43720', '1389682217', '0', '0'), ('43810', '1389682227', '0', '0');
INSERT INTO `creature_respawn` VALUES ('43826', '1389682217', '0', '0'), ('43827', '1389682225', '0', '0'), ('43829', '1389682221', '0', '0'), ('43869', '1389682222', '0', '0'), ('43871', '1389682221', '0', '0'), ('43872', '1389682215', '0', '0'), ('48356', '1459630361', '0', '0'), ('48357', '1459630490', '0', '0'), ('48358', '1459630430', '0', '0'), ('48360', '1459630357', '0', '0'), ('48363', '1459630367', '0', '0'), ('48364', '1459630407', '0', '0'), ('48365', '1459630397', '0', '0'), ('48369', '1459630359', '0', '0'), ('48370', '1459630390', '0', '0'), ('48380', '1459630373', '0', '0'), ('49844', '1459586984', '0', '0'), ('49856', '1459586992', '0', '0'), ('49892', '1459587014', '0', '0'), ('49905', '1459586992', '0', '0'), ('49908', '1459586987', '0', '0'), ('49910', '1459586981', '0', '0'), ('49911', '1459587053', '0', '0'), ('49917', '1459587047', '0', '0'), ('49957', '1459586901', '0', '0'), ('49959', '1459587010', '0', '0'), ('49965', '1459587210', '0', '0'), ('49973', '1459587068', '0', '0'), ('49982', '1459587050', '0', '0'), ('49983', '1459586975', '0', '0'), ('49986', '1459586938', '0', '0'), ('49988', '1459586996', '0', '0'), ('49994', '1459586972', '0', '0'), ('50007', '1389601945', '0', '0'), ('50009', '1459587048', '0', '0'), ('50011', '1459587030', '0', '0'), ('50013', '1459587011', '0', '0'), ('50021', '1459586991', '0', '0'), ('50025', '1459587013', '0', '0'), ('50041', '1459586976', '0', '0'), ('50048', '1459586937', '0', '0'), ('50050', '1459587034', '0', '0'), ('50053', '1459587048', '0', '0'), ('50054', '1459586979', '0', '0'), ('50062', '1459587050', '0', '0'), ('50071', '1459587000', '0', '0'), ('50073', '1459587002', '0', '0'), ('50074', '1459587013', '0', '0'), ('50081', '1459587000', '0', '0'), ('50083', '1459586973', '0', '0'), ('50098', '1459587079', '0', '0'), ('50867', '1389601889', '0', '0'), ('50868', '1389601900', '0', '0'), ('50877', '1389601884', '0', '0'), ('50882', '1389601881', '0', '0'), ('50891', '1389601930', '0', '0'), ('50896', '1389601925', '0', '0'), ('50916', '1389601932', '0', '0'), ('50932', '1389601927', '0', '0'), ('50933', '1389601925', '0', '0'), ('50939', '1389601858', '0', '0'), ('51244', '1459630795', '0', '0'), ('51307', '1459630436', '0', '0'), ('51308', '1459630361', '0', '0'), ('51309', '1459630357', '0', '0'), ('51311', '1459630367', '0', '0'), ('51314', '1459630359', '0', '0'), ('51316', '1459630498', '0', '0'), ('51355', '1459630383', '0', '0'), ('51356', '1459630390', '0', '0'), ('51357', '1459630463', '0', '0'), ('51358', '1459630493', '0', '0'), ('51361', '1459630392', '0', '0'), ('51362', '1459630355', '0', '0'), ('51365', '1459630365', '0', '0'), ('51366', '1459630357', '0', '0'), ('51374', '1459630377', '0', '0'), ('51375', '1459630446', '0', '0'), ('56185', '1389884245', '0', '0'), ('61244', '1461946737', '0', '0'), ('61246', '1461946836', '0', '0'), ('61248', '1461947094', '0', '0'), ('61251', '1461947054', '0', '0'), ('61252', '1461946826', '0', '0'), ('61255', '1461946812', '0', '0'), ('61256', '1461947064', '0', '0'), ('61291', '1461947072', '0', '0'), ('61292', '1461946792', '0', '0'), ('61330', '1461946826', '0', '0'), ('61333', '1461946800', '0', '0'), ('61382', '1461946716', '0', '0'), ('61383', '1461946688', '0', '0'), ('61384', '1461946686', '0', '0'), ('61387', '1461946768', '0', '0'), ('61388', '1461947002', '0', '0'), ('61393', '1461946810', '0', '0'), ('61394', '1461947088', '0', '0'), ('61427', '1461946806', '0', '0'), ('61433', '1461947086', '0', '0'), ('61434', '1461946800', '0', '0');
INSERT INTO `creature_respawn` VALUES ('61439', '1461947049', '0', '0'), ('61442', '1461946777', '0', '0'), ('61444', '1461946692', '0', '0'), ('61445', '1461946686', '0', '0'), ('61460', '1461946687', '0', '0'), ('61461', '1461946723', '0', '0'), ('61462', '1461946727', '0', '0'), ('61463', '1461946732', '0', '0'), ('61464', '1461946745', '0', '0'), ('61465', '1461946721', '0', '0'), ('61475', '1461946791', '0', '0'), ('61476', '1461946804', '0', '0'), ('61480', '1461946819', '0', '0'), ('61481', '1461946798', '0', '0'), ('61524', '1461946803', '0', '0'), ('61526', '1461946794', '0', '0'), ('61532', '1461946792', '0', '0'), ('61533', '1461946796', '0', '0'), ('61547', '1461946726', '0', '0'), ('61549', '1461946724', '0', '0'), ('61550', '1461946724', '0', '0'), ('61551', '1461946723', '0', '0'), ('61567', '1461946730', '0', '0'), ('61568', '1461946721', '0', '0'), ('61622', '1461946722', '0', '0'), ('61665', '1461946805', '0', '0'), ('61686', '1461946802', '0', '0'), ('61703', '1461946792', '0', '0'), ('61729', '1461946724', '0', '0'), ('61731', '1461946727', '0', '0'), ('61733', '1461946724', '0', '0'), ('61824', '1461946725', '0', '0'), ('61825', '1461946731', '0', '0'), ('61879', '1461946790', '0', '0'), ('61881', '1461946797', '0', '0'), ('61882', '1461946800', '0', '0'), ('61888', '1461946800', '0', '0'), ('61889', '1461946791', '0', '0'), ('61891', '1461946803', '0', '0'), ('62017', '1461018307', '0', '0'), ('62040', '1461946727', '0', '0'), ('62144', '1461017976', '0', '0'), ('62150', '1461018299', '0', '0'), ('62151', '1461946800', '0', '0'), ('62159', '1461946799', '0', '0'), ('62298', '1461018304', '0', '0'), ('62300', '1461018305', '0', '0'), ('62423', '1461018295', '0', '0'), ('62588', '1461018294', '0', '0'), ('62614', '1461018171', '0', '0'), ('62617', '1461018177', '0', '0'), ('63448', '1466452381', '0', '0'), ('63462', '1466452375', '0', '0'), ('63953', '1466452360', '0', '0'), ('63984', '1466452363', '0', '0'), ('63986', '1466452364', '0', '0'), ('64129', '1466452394', '0', '0'), ('64148', '1466452363', '0', '0'), ('64155', '1389598101', '0', '0'), ('64156', '1389598103', '0', '0'), ('64249', '1389598118', '0', '0'), ('64250', '1389598105', '0', '0'), ('64251', '1389598101', '0', '0'), ('64252', '1389598116', '0', '0'), ('64259', '1389598116', '0', '0'), ('64260', '1389598112', '0', '0'), ('64261', '1389598105', '0', '0'), ('64266', '1389598116', '0', '0'), ('64302', '1389598102', '0', '0'), ('64304', '1389598112', '0', '0'), ('64366', '1389598108', '0', '0'), ('64374', '1389598119', '0', '0'), ('64546', '1389598105', '0', '0'), ('64553', '1389598117', '0', '0'), ('64594', '1389598125', '0', '0'), ('67396', '1389871117', '0', '0'), ('71632', '1459630400', '0', '0'), ('71636', '1459630372', '0', '0'), ('71637', '1459630357', '0', '0'), ('71816', '1389886971', '1', '0'), ('78176', '1389883214', '1', '0'), ('78272', '1389883208', '1', '0'), ('90488', '1389883211', '1', '0'), ('112622', '1389883204', '1', '0'), ('119461', '1389711036', '1', '0'), ('119462', '1389711066', '1', '0'), ('119750', '1389711044', '1', '0'), ('119752', '1389710980', '1', '0'), ('119753', '1389711022', '1', '0'), ('119754', '1389711026', '1', '0'), ('119755', '1389710996', '1', '0'), ('119756', '1389710980', '1', '0'), ('121031', '1389684436', '1', '0'), ('121112', '1389684433', '1', '0'), ('129299', '1389883207', '1', '0'), ('129308', '1389883205', '1', '0'), ('129310', '1389883210', '1', '0'), ('129312', '1389883210', '1', '0'), ('159829', '1466519207', '530', '0'), ('169916', '1389711408', '530', '0');
INSERT INTO `creature_respawn` VALUES ('176246', '1389710959', '530', '0'), ('176258', '1389710935', '530', '0'), ('195978', '1389864050', '571', '0'), ('195981', '1389866451', '571', '0'), ('232302', '1466521070', '609', '0'), ('232303', '1466521056', '609', '0'), ('232322', '1466521090', '609', '0'), ('232330', '1466521076', '609', '0'), ('232331', '1466521053', '609', '0'), ('232377', '1466521125', '609', '0'), ('232595', '1466521079', '609', '0'), ('232597', '1466521119', '609', '0'), ('232606', '1466521093', '609', '0'), ('232607', '1466521070', '609', '0'), ('232608', '1466521081', '609', '0'), ('232609', '1466521065', '609', '0'), ('232611', '1466521071', '609', '0'), ('232612', '1466521114', '609', '0'), ('232613', '1466521067', '609', '0'), ('232895', '1466521133', '609', '0'), ('232896', '1466521085', '609', '0'), ('232897', '1466521107', '609', '0'), ('232898', '1466521117', '609', '0'), ('232899', '1466521118', '609', '0'), ('232906', '1466521592', '609', '0'), ('232993', '1466522090', '609', '0'), ('232999', '1466522150', '609', '0'), ('233000', '1466522133', '609', '0'), ('233001', '1466521895', '609', '0'), ('233003', '1466522141', '609', '0'), ('233004', '1466521932', '609', '0'), ('233008', '1466521922', '609', '0'), ('233033', '1466522202', '609', '0'), ('233036', '1466521918', '609', '0'), ('233042', '1466521907', '609', '0'), ('233043', '1466522121', '609', '0'), ('233049', '1466521619', '609', '0'), ('233050', '1466521858', '609', '0'), ('233051', '1466522151', '609', '0'), ('233052', '1466521750', '609', '0'), ('233053', '1466521742', '609', '0'), ('233054', '1466522217', '609', '0'), ('233087', '1466521752', '609', '0'), ('233088', '1466521859', '609', '0'), ('233089', '1466521702', '609', '0'), ('233090', '1466521632', '609', '0'), ('233091', '1466522217', '609', '0'), ('233092', '1466521891', '609', '0'), ('233094', '1466522069', '609', '0'), ('233095', '1466522159', '609', '0'), ('233098', '1466521681', '609', '0'), ('233099', '1466522217', '609', '0'), ('233100', '1466521660', '609', '0'), ('233101', '1466521699', '609', '0'), ('233102', '1466521711', '609', '0'), ('233116', '1466522069', '609', '0'), ('233117', '1466522063', '609', '0'), ('233123', '1466522046', '609', '0'), ('233124', '1466522149', '609', '0'), ('233129', '1466522141', '609', '0'), ('233143', '1466522217', '609', '0'), ('233150', '1466522067', '609', '0'), ('233151', '1466522192', '609', '0'), ('233152', '1466521904', '609', '0'), ('233153', '1466521940', '609', '0'), ('233154', '1466522172', '609', '0'), ('233155', '1466521883', '609', '0'), ('233156', '1466521875', '609', '0'), ('233167', '1466521857', '609', '0'), ('233168', '1466522064', '609', '0'), ('233175', '1466522137', '609', '0'), ('233177', '1466521869', '609', '0'), ('233184', '1466521595', '609', '0'), ('233186', '1466521887', '609', '0'), ('233187', '1466521638', '609', '0'), ('233189', '1466521642', '609', '0'), ('233216', '1466522217', '609', '0'), ('233222', '1466521638', '609', '0'), ('233225', '1466521733', '609', '0'), ('233226', '1466521846', '609', '0'), ('233227', '1466521837', '609', '0'), ('233228', '1466522130', '609', '0'), ('233229', '1466522120', '609', '0'), ('233230', '1466522114', '609', '0'), ('233231', '1466522105', '609', '0'), ('233232', '1466522099', '609', '0'), ('233233', '1466522217', '609', '0'), ('233249', '1466521830', '609', '0'), ('233254', '1466521630', '609', '0'), ('233255', '1466522217', '609', '0'), ('233260', '1466522038', '609', '0'), ('233261', '1466522089', '609', '0'), ('233262', '1466522030', '609', '0'), ('233263', '1466522077', '609', '0'), ('233264', '1466522018', '609', '0'), ('233290', '1466522217', '609', '0'), ('233329', '1466524447', '609', '0'), ('233336', '1466522149', '609', '0'), ('233350', '1466521707', '609', '0'), ('233629', '1466521691', '609', '0');
INSERT INTO `creature_respawn` VALUES ('233631', '1466521735', '609', '0'), ('233632', '1466521740', '609', '0'), ('233794', '1466521111', '609', '0'), ('233829', '1466521066', '609', '0'), ('233858', '1466521613', '609', '0'), ('233902', '1466521615', '609', '0'), ('233949', '1466521670', '609', '0'), ('233951', '1466521682', '609', '0'), ('233997', '1466521697', '609', '0'), ('234384', '1466521681', '609', '0'), ('234392', '1466521713', '609', '0'), ('234393', '1466521694', '609', '0'), ('234407', '1466521700', '609', '0'), ('234410', '1466521733', '609', '0'), ('234587', '1466521712', '609', '0'), ('234588', '1466521693', '609', '0'), ('234595', '1466521668', '609', '0'), ('234596', '1466521712', '609', '0'), ('234599', '1466521699', '609', '0'), ('236050', '1459550611', '638', '0'), ('236350', '1459550750', '638', '0'), ('236351', '1459550747', '638', '0'), ('236851', '1459550617', '638', '0'), ('236860', '1459550637', '638', '0'), ('236865', '1459550645', '638', '0'), ('236870', '1459550631', '638', '0'), ('242071', '1459586029', '648', '0'), ('242475', '1459586075', '648', '0'), ('243112', '1389808467', '648', '0'), ('243117', '1389808465', '648', '0'), ('243125', '1389808465', '648', '0'), ('243134', '1389808468', '648', '0'), ('243138', '1389808470', '648', '0'), ('243142', '1389808487', '648', '0'), ('243144', '1389808466', '648', '0'), ('243146', '1389808484', '648', '0'), ('243148', '1389808478', '648', '0'), ('243150', '1389808475', '648', '0'), ('243164', '1389808479', '648', '0'), ('245284', '1461018117', '638', '0'), ('258322', '1459586979', '0', '0'), ('260574', '1459586438', '648', '0'), ('261534', '1461018263', '638', '0'), ('261585', '1461018123', '638', '0'), ('300693', '1389682353', '638', '0'), ('310738', '1459583294', '648', '0'), ('310757', '1459583294', '648', '0'), ('310761', '1459583294', '648', '0'), ('313579', '1459584741', '638', '0'), ('313580', '1459584753', '638', '0'), ('314042', '1459550854', '638', '0'), ('314043', '1459550844', '638', '0'), ('314044', '1459550860', '638', '0'), ('314102', '1459550856', '638', '0'), ('314131', '1459550862', '638', '0'), ('314132', '1459550852', '638', '0'), ('314134', '1459550794', '638', '0'), ('314135', '1459550846', '638', '0'), ('314139', '1459550908', '638', '0'), ('314324', '1459583294', '648', '0'), ('319507', '1466521613', '609', '0'), ('319881', '1466521617', '609', '0'), ('319882', '1466521570', '609', '0'), ('319883', '1466521569', '609', '0'), ('319884', '1466521613', '609', '0'), ('319885', '1466521585', '609', '0'), ('319886', '1466521565', '609', '0'), ('319887', '1466521563', '609', '0'), ('319888', '1466521613', '609', '0'), ('319889', '1466521559', '609', '0'), ('319890', '1466521611', '609', '0'), ('319891', '1466521605', '609', '0'), ('319892', '1466521605', '609', '0'), ('319893', '1466521596', '609', '0'), ('319894', '1466521579', '609', '0'), ('319895', '1466521566', '609', '0'), ('319896', '1466521557', '609', '0'), ('319897', '1466521578', '609', '0'), ('319898', '1466521603', '609', '0'), ('319899', '1466521599', '609', '0'), ('319900', '1466521581', '609', '0'), ('319901', '1466521575', '609', '0'), ('319902', '1466521633', '609', '0'), ('319903', '1466521638', '609', '0'), ('319904', '1466521641', '609', '0'), ('319905', '1466521647', '609', '0'), ('319906', '1466521598', '609', '0'), ('319907', '1466521586', '609', '0'), ('319908', '1466521599', '609', '0'), ('319909', '1466521602', '609', '0'), ('319910', '1466521580', '609', '0'), ('319911', '1466521594', '609', '0'), ('319912', '1466521600', '609', '0'), ('319913', '1466521605', '609', '0'), ('319914', '1466521598', '609', '0'), ('319915', '1466521603', '609', '0'), ('319916', '1466521597', '609', '0'), ('319917', '1466521601', '609', '0'), ('319918', '1466521588', '609', '0'), ('319919', '1466521592', '609', '0');
INSERT INTO `creature_respawn` VALUES ('319920', '1466521570', '609', '0'), ('319921', '1466521582', '609', '0'), ('319922', '1466521578', '609', '0'), ('319923', '1466521573', '609', '0'), ('319924', '1466521566', '609', '0'), ('319925', '1466521570', '609', '0'), ('319926', '1466521592', '609', '0'), ('319927', '1466521572', '609', '0'), ('319928', '1466521574', '609', '0'), ('319929', '1466521574', '609', '0'), ('319930', '1466521607', '609', '0'), ('319931', '1466521593', '609', '0'), ('322296', '1459659275', '0', '0'), ('328243', '1461018355', '638', '0'), ('335006', '1459630606', '0', '0'), ('335007', '1459630694', '0', '0'), ('335008', '1459630632', '0', '0'), ('335009', '1459630579', '0', '0'), ('335010', '1459630630', '0', '0'), ('335012', '1459630566', '0', '0'), ('335013', '1459630590', '0', '0'), ('335014', '1459630602', '0', '0'), ('335015', '1459630591', '0', '0'), ('335022', '1459630682', '0', '0'), ('335023', '1459630657', '0', '0'), ('335025', '1459630598', '0', '0'), ('335026', '1459630684', '0', '0'), ('335027', '1459630567', '0', '0'), ('710058', '1389711047', '1', '0'), ('710211', '1389711089', '1', '0'), ('710226', '1389711156', '1', '0'), ('15461666', '1389871689', '0', '0');
COMMIT;

-- ----------------------------
-- Table structure for `cronjobs`
-- ----------------------------
DROP TABLE IF EXISTS `cronjobs`;
CREATE TABLE `cronjobs` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`guid`  int(11) UNSIGNED NOT NULL ,
`type`  tinyint(3) UNSIGNED NOT NULL ,
`param1`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`param2`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`x`  float NOT NULL DEFAULT 0 ,
`y`  float NOT NULL DEFAULT 0 ,
`z`  float NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of cronjobs
-- ----------------------------
BEGIN;
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
-- Table structure for `game_event_condition_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
`condition_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`done`  float NULL DEFAULT 0 ,
`eventEntry`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`eventEntry`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of game_event_condition_save
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `game_event_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
`eventEntry`  tinyint(3) UNSIGNED NOT NULL ,
`state`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`next_start`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`eventEntry`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of game_event_save
-- ----------------------------
BEGIN;
INSERT INTO `game_event_save` VALUES ('33', '2', '0'), ('34', '2', '0'), ('35', '2', '0'), ('36', '2', '0'), ('37', '2', '0'), ('38', '2', '0'), ('39', '2', '0'), ('40', '2', '0'), ('41', '2', '0'), ('43', '2', '0'), ('44', '2', '0'), ('45', '2', '0'), ('46', '2', '0'), ('47', '2', '0');
COMMIT;

-- ----------------------------
-- Table structure for `gameobject_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`respawnTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instanceId`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier' ,
`mapId`  smallint(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `instanceId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Grid Loading System'

;

-- ----------------------------
-- Records of gameobject_respawn
-- ----------------------------
BEGIN;
INSERT INTO `gameobject_respawn` VALUES ('4972', '1466452124', '0', '0'), ('4973', '1466452126', '0', '0');
COMMIT;

-- ----------------------------
-- Table structure for `gm_subsurveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys` (
`surveyId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`subsurveyId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rank`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`surveyId`, `subsurveyId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of gm_subsurveys
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `gm_surveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
`guid`  int(10) NOT NULL ,
`surveyId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`mainSurvey`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`overallComment`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`createTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`surveyId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of gm_surveys
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `gm_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
`ticketId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier of ticket creator' ,
`name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Name of ticket creator' ,
`message`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`createTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
`lastModifiedTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`closedBy`  int(10) NOT NULL DEFAULT 0 ,
`assignedTo`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned' ,
`comment`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`response`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`completed`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`escalated`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`viewed`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`haveTicket`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`ticketId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of gm_tickets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `group_instance`
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`instance`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`permanent`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `instance`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of group_instance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `group_member`
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`memberGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`memberFlags`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`subgroup`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`roles`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`memberGuid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Groups'

;

-- ----------------------------
-- Records of group_member
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
`guid`  int(10) UNSIGNED NOT NULL ,
`leaderGuid`  int(10) UNSIGNED NOT NULL ,
`lootMethod`  tinyint(3) UNSIGNED NOT NULL ,
`looterGuid`  int(10) UNSIGNED NOT NULL ,
`lootThreshold`  tinyint(3) UNSIGNED NOT NULL ,
`icon1`  int(10) UNSIGNED NOT NULL ,
`icon2`  int(10) UNSIGNED NOT NULL ,
`icon3`  int(10) UNSIGNED NOT NULL ,
`icon4`  int(10) UNSIGNED NOT NULL ,
`icon5`  int(10) UNSIGNED NOT NULL ,
`icon6`  int(10) UNSIGNED NOT NULL ,
`icon7`  int(10) UNSIGNED NOT NULL ,
`icon8`  int(10) UNSIGNED NOT NULL ,
`groupType`  tinyint(3) UNSIGNED NOT NULL ,
`difficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`raiddifficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Groups'

;

-- ----------------------------
-- Records of groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`leaderguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EmblemStyle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`EmblemColor`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`BorderStyle`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`BorderColor`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`BackgroundColor`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`info`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`motd`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`createdate`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`BankMoney`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  int(10) UNSIGNED NULL DEFAULT 1 ,
`todayExperience`  bigint(20) UNSIGNED NULL DEFAULT 0 ,
`RaidChallenge`  int(10) NOT NULL DEFAULT 0 ,
`ChallengeCount`  int(32) UNSIGNED NOT NULL DEFAULT 0 ,
`RatedBGChallenge`  int(10) NOT NULL DEFAULT 0 ,
`DungeonChallenge`  int(10) NOT NULL DEFAULT 0 ,
`experience`  bigint(20) UNSIGNED NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Records of guild
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement`;
CREATE TABLE `guild_achievement` (
`guildId`  int(10) UNSIGNED NOT NULL ,
`achievement`  smallint(5) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`guids`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`guildId`, `achievement`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of guild_achievement
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement_progress`;
CREATE TABLE `guild_achievement_progress` (
`guildId`  int(10) UNSIGNED NOT NULL ,
`criteria`  smallint(5) UNSIGNED NOT NULL ,
`counter`  int(10) UNSIGNED NOT NULL ,
`date`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`completedGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildId`, `criteria`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of guild_achievement_progress
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_bank_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild Identificator' ,
`LogGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Log record identificator - auxiliary column' ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild bank TabId' ,
`EventType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event type' ,
`PlayerGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ItemOrMoney`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`ItemStackCount`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`DestTabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Destination Tab Id' ,
`TimeStamp`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event UNIX time' ,
PRIMARY KEY (`guildid`, `LogGuid`, `TabId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of guild_bank_eventlog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_bank_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`SlotId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`item_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `TabId`, `SlotId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of guild_bank_item
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_bank_right`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`rid`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`gbright`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`SlotPerDay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `TabId`, `rid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of guild_bank_right
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_bank_tab`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`TabId`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`TabName`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`TabIcon`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`TabText`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`guildid`, `TabId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of guild_bank_tab
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_challenges_completed`
-- ----------------------------
DROP TABLE IF EXISTS `guild_challenges_completed`;
CREATE TABLE `guild_challenges_completed` (
`guildId`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`challengeId`  int(10) UNSIGNED NULL DEFAULT NULL ,
`dateCompleted`  int(10) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`guildId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of guild_challenges_completed
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
`guildid`  int(10) UNSIGNED NOT NULL COMMENT 'Guild Identificator' ,
`LogGuid`  int(10) UNSIGNED NOT NULL COMMENT 'Log record identificator - auxiliary column' ,
`EventType`  tinyint(3) UNSIGNED NOT NULL COMMENT 'Event type' ,
`PlayerGuid1`  int(10) UNSIGNED NOT NULL COMMENT 'Player 1' ,
`PlayerGuid2`  int(10) UNSIGNED NOT NULL COMMENT 'Player 2' ,
`NewRank`  tinyint(3) UNSIGNED NOT NULL COMMENT 'New rank(in case promotion/demotion)' ,
`TimeStamp`  int(10) UNSIGNED NOT NULL COMMENT 'Event UNIX time' ,
PRIMARY KEY (`guildid`, `LogGuid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild Eventlog'

;

-- ----------------------------
-- Records of guild_eventlog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_finder_applicant`
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_applicant`;
CREATE TABLE `guild_finder_applicant` (
`guildId`  int(10) UNSIGNED NULL DEFAULT NULL ,
`playerGuid`  int(10) UNSIGNED NULL DEFAULT NULL ,
`availability`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`classRole`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`interests`  tinyint(3) UNSIGNED NULL DEFAULT 0 ,
`comment`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`submitTime`  int(10) UNSIGNED NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of guild_finder_applicant
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_finder_guild_settings`
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_guild_settings`;
CREATE TABLE `guild_finder_guild_settings` (
`guildId`  int(10) UNSIGNED NOT NULL ,
`availability`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`classRoles`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`interests`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`level`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`listed`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`guildId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of guild_finder_guild_settings
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
`guildid`  int(10) UNSIGNED NOT NULL COMMENT 'Guild Identificator' ,
`guid`  int(10) UNSIGNED NOT NULL ,
`rank`  tinyint(3) UNSIGNED NOT NULL ,
`pnote`  varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`offnote`  varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`activity`  bigint(20) NOT NULL ,
`profession1_skillID`  int(10) NOT NULL DEFAULT 0 ,
`weekReputation`  int(10) NOT NULL DEFAULT 0 ,
`profession2_rank`  int(10) NOT NULL DEFAULT 0 ,
`profession2_skillID`  int(10) NOT NULL DEFAULT 0 ,
`profession1_rank`  int(10) NOT NULL DEFAULT 0 ,
`weekActivity`  int(10) NOT NULL DEFAULT 0 ,
`profession1_level`  int(10) NOT NULL DEFAULT 0 ,
`profession2_level`  int(10) NOT NULL DEFAULT 0 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Records of guild_member
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_member_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member_withdraw`;
CREATE TABLE `guild_member_withdraw` (
`guid`  int(10) UNSIGNED NOT NULL ,
`tab0`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tab1`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tab2`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tab3`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tab4`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tab5`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tab6`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`tab7`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`money`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild Member Dayly Withdraws'

;

-- ----------------------------
-- Records of guild_member_withdraw
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_newslog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_newslog`;
CREATE TABLE `guild_newslog` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`TimeStamp`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`PlayerGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`LogGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`Flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`EventType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`Value`  int(10) UNSIGNED NOT NULL DEFAULT 0 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild Newslog'

;

-- ----------------------------
-- Records of guild_newslog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_old_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_old_member`;
CREATE TABLE `guild_old_member` (
`guid`  int(10) NOT NULL ,
`guildId`  int(10) NOT NULL ,
`weekReputation`  int(10) NOT NULL ,
`leaveDate`  int(10) NOT NULL 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of guild_old_member
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `guild_rank`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
`guildid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`rid`  tinyint(3) UNSIGNED NOT NULL ,
`rname`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`rights`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`BankMoneyPerDay`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guildid`, `rid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Records of guild_rank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `instance`
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`map`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`resettime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`completedEncounters`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`data`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of instance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `instance_reset`
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
`mapid`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`difficulty`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`resettime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`mapid`, `difficulty`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
BEGIN;
INSERT INTO `instance_reset` VALUES ('33', '1', '1466568000'), ('36', '1', '1466568000'), ('249', '0', '1466913600'), ('249', '1', '1466913600'), ('269', '1', '1466568000'), ('409', '0', '1466913600'), ('469', '0', '1466913600'), ('509', '0', '1466740800'), ('531', '0', '1466913600'), ('532', '0', '1466913600'), ('533', '0', '1466913600'), ('533', '1', '1466913600'), ('534', '0', '1466913600'), ('540', '1', '1466568000'), ('542', '1', '1466568000'), ('543', '1', '1466568000'), ('544', '0', '1466913600'), ('545', '1', '1466568000'), ('546', '1', '1466568000'), ('547', '1', '1466568000'), ('548', '0', '1466913600'), ('550', '0', '1466913600'), ('552', '1', '1466568000'), ('553', '1', '1466568000'), ('554', '1', '1466568000'), ('555', '1', '1466568000'), ('556', '1', '1466568000'), ('557', '1', '1466568000'), ('558', '1', '1466568000'), ('560', '1', '1466568000'), ('564', '0', '1466913600'), ('565', '0', '1466913600'), ('568', '1', '1466568000'), ('574', '1', '1466568000'), ('575', '1', '1466568000'), ('576', '1', '1466568000'), ('578', '1', '1466568000'), ('580', '0', '1466913600'), ('585', '1', '1466568000'), ('595', '1', '1466568000'), ('598', '1', '1466568000'), ('599', '1', '1466568000'), ('600', '1', '1466568000'), ('601', '1', '1466568000'), ('602', '1', '1466568000'), ('603', '0', '1466913600'), ('603', '1', '1466913600'), ('604', '1', '1466568000'), ('608', '1', '1466568000'), ('615', '0', '1466913600'), ('615', '1', '1466913600'), ('616', '0', '1466913600'), ('616', '1', '1466913600'), ('619', '1', '1466568000'), ('624', '0', '1466913600'), ('624', '1', '1466913600'), ('631', '0', '1466913600'), ('631', '1', '1466913600'), ('631', '2', '1466913600'), ('631', '3', '1466913600'), ('632', '1', '1466568000'), ('643', '1', '1466568000'), ('644', '1', '1466568000'), ('645', '1', '1466568000'), ('649', '0', '1466913600'), ('649', '1', '1466913600'), ('649', '2', '1466913600'), ('649', '3', '1466913600'), ('650', '1', '1466568000'), ('657', '1', '1466568000'), ('658', '1', '1466568000'), ('668', '1', '1466568000'), ('669', '0', '1466913600'), ('669', '1', '1466913600'), ('669', '2', '1466913600'), ('669', '3', '1466913600'), ('670', '1', '1466568000'), ('671', '0', '1466913600'), ('671', '1', '1466913600'), ('671', '2', '1466913600'), ('671', '3', '1466913600'), ('720', '0', '1466913600'), ('720', '1', '1466913600'), ('720', '2', '1466913600'), ('720', '3', '1466913600'), ('724', '0', '1466913600'), ('724', '1', '1466913600'), ('724', '2', '1466913600'), ('724', '3', '1466913600'), ('725', '1', '1466568000'), ('754', '0', '1466913600'), ('754', '1', '1466913600'), ('754', '2', '1466913600'), ('754', '3', '1466913600'), ('755', '1', '1466568000'), ('757', '0', '1466913600'), ('757', '1', '1466913600'), ('859', '1', '1466568000'), ('938', '1', '1466568000'), ('939', '1', '1466568000');
INSERT INTO `instance_reset` VALUES ('940', '1', '1466568000'), ('967', '0', '1466913600'), ('967', '1', '1466913600'), ('967', '2', '1466913600'), ('967', '3', '1466913600');
COMMIT;

-- ----------------------------
-- Table structure for `item_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`itemEntry`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`owner_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`creatorGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`giftCreatorGuid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`count`  int(10) UNSIGNED NOT NULL DEFAULT 1 ,
`duration`  int(10) NOT NULL DEFAULT 0 ,
`charges`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`flags`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`enchantments`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`randomPropertyId`  smallint(5) NOT NULL DEFAULT 0 ,
`durability`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`playedTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`text`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item System'

;

-- ----------------------------
-- Records of item_instance
-- ----------------------------
BEGIN;
INSERT INTO `item_instance` VALUES ('2', '49403', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('4', '49404', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('6', '49406', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('8', '35', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('10', '6948', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('11', '2591', '1', '0', '0', '3', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('12', '1414', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('13', '2589', '1', '0', '0', '3', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('14', '1364', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '60', '0', ''), ('19', '55004', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('20', '52040', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('22', '3370', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('25', '55005', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '20', '0', ''), ('27', '49399', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('29', '49400', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('31', '49401', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('33', '35', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('35', '6948', '2', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('37', '52550', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('39', '52551', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('41', '6948', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('43', '52552', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('45', '36', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '35', '0', ''), ('47', '2362', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('49', '54293', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('52', '46856', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('53', '54296', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '20', '0', ''), ('54', '54299', '3', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '45', '0', ''), ('56', '49505', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('58', '49506', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('60', '49508', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('62', '6948', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('64', '35', '4', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('65', '54975', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '20', '0', ''), ('66', '48707', '1', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('92', '20977', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '34', '0', ''), ('94', '58238', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('96', '20896', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('98', '20898', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('100', '50057', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('102', '28979', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('104', '6948', '6', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('106', '20904', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('108', '20902', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('110', '20903', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '25', '0', ''), ('112', '23346', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('114', '6948', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('115', '20997', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '30', '0', ''), ('116', '20845', '7', '0', '0', '2', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('117', '20846', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('118', '21014', '7', '0', '0', '1', '0', '0 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '60', '0', ''), ('120', '34652', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '70', '0', ''), ('122', '34655', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '70', '0', ''), ('124', '34659', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('126', '34650', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '115', '0', ''), ('128', '34653', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('130', '34649', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('132', '34651', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '40', '0', ''), ('134', '34656', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '85', '0', ''), ('136', '34648', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '55', '0', ''), ('138', '34657', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('140', '34658', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('142', '38145', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('144', '38145', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('146', '38145', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('148', '38145', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('150', '38147', '8', '0', '0', '1', '0', '0 0 0 0 0 ', '1', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', ''), ('152', '41751', '8', '0', '0', '10', '0', '-1 0 0 0 0 ', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0', '0', '0', '');
COMMIT;

-- ----------------------------
-- Table structure for `item_loot_items`
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_items`;
CREATE TABLE `item_loot_items` (
`container_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'guid of container (item_instance.guid)' ,
`item_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'loot item entry (item_instance.itemEntry)' ,
`item_count`  int(10) NOT NULL DEFAULT 0 COMMENT 'stack size' ,
`follow_rules`  tinyint(1) NOT NULL DEFAULT 0 COMMENT 'follow loot rules' ,
`ffa`  tinyint(1) NOT NULL DEFAULT 0 COMMENT 'free-for-all' ,
`blocked`  tinyint(1) NOT NULL DEFAULT 0 ,
`counted`  tinyint(1) NOT NULL DEFAULT 0 ,
`under_threshold`  tinyint(1) NOT NULL DEFAULT 0 ,
`needs_quest`  tinyint(1) NOT NULL DEFAULT 0 COMMENT 'quest drop' ,
`rnd_prop`  int(10) NOT NULL DEFAULT 0 COMMENT 'random enchantment added when originally rolled' ,
`rnd_suffix`  int(10) NOT NULL DEFAULT 0 COMMENT 'random suffix added when originally rolled' 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of item_loot_items
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `item_loot_money`
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_money`;
CREATE TABLE `item_loot_money` (
`container_id`  int(10) NOT NULL DEFAULT 0 COMMENT 'guid of container (item_instance.guid)' ,
`money`  int(10) NOT NULL DEFAULT 0 COMMENT 'money loot (in copper)' 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of item_loot_money
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `item_refund_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (
`item_guid`  int(10) UNSIGNED NOT NULL COMMENT 'Item GUID' ,
`player_guid`  int(10) UNSIGNED NOT NULL COMMENT 'Player GUID' ,
`paidMoney`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`paidExtendedCost`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`item_guid`, `player_guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item Refund System'

;

-- ----------------------------
-- Records of item_refund_instance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `item_soulbound_trade_data`
-- ----------------------------
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data` (
`itemGuid`  int(10) UNSIGNED NOT NULL COMMENT 'Item GUID' ,
`allowedPlayers`  text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade' ,
PRIMARY KEY (`itemGuid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Item Refund System'

;

-- ----------------------------
-- Records of item_soulbound_trade_data
-- ----------------------------
BEGIN;
INSERT INTO `item_soulbound_trade_data` VALUES ('151', '8 9'), ('152', '8 9'), ('164', '8 9'), ('165', '8 9'), ('170', '8 9'), ('406', '17 18');
COMMIT;

-- ----------------------------
-- Table structure for `lag_reports`
-- ----------------------------
DROP TABLE IF EXISTS `lag_reports`;
CREATE TABLE `lag_reports` (
`reportId`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`lagType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`mapId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`posX`  float NOT NULL DEFAULT 0 ,
`posY`  float NOT NULL DEFAULT 0 ,
`posZ`  float NOT NULL DEFAULT 0 ,
`latency`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`createTime`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`reportId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player System'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of lag_reports
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `lfg_data`
-- ----------------------------
DROP TABLE IF EXISTS `lfg_data`;
CREATE TABLE `lfg_data` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`dungeon`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`state`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='LFG Data'

;

-- ----------------------------
-- Records of lfg_data
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
`id`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier' ,
`messageType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stationery`  tinyint(3) NOT NULL DEFAULT 41 ,
`mailTemplateId`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 ,
`sender`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`receiver`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
`subject`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`body`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`has_items`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`expire_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`deliver_time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`money`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`cod`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 ,
`checked`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Mail System'

;

-- ----------------------------
-- Records of mail
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `mail_items`
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
`mail_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`item_guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`receiver`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier' ,
PRIMARY KEY (`item_guid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of mail_items
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`caster_guid`  bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Full Global Unique Identifier' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 ,
`effect_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`recalculate_mask`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
`stackcount`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 ,
`amount0`  mediumint(8) NOT NULL ,
`amount1`  mediumint(8) NOT NULL ,
`amount2`  mediumint(8) NOT NULL ,
`base_amount0`  mediumint(8) NOT NULL ,
`base_amount1`  mediumint(8) NOT NULL ,
`base_amount2`  mediumint(8) NOT NULL ,
`maxduration`  int(11) NOT NULL DEFAULT 0 ,
`remaintime`  int(11) NOT NULL DEFAULT 0 ,
`remaincharges`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`, `effect_mask`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Records of pet_aura
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`active`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Pet System'

;

-- ----------------------------
-- Records of pet_spell
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
`guid`  int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part' ,
`spell`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier' ,
`time`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`guid`, `spell`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of pet_spell_cooldown
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `petition`
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
`ownerguid`  int(10) UNSIGNED NOT NULL ,
`petitionguid`  int(10) UNSIGNED NULL DEFAULT 0 ,
`name`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`ownerguid`, `type`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Records of petition
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `petition_sign`
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
`ownerguid`  int(10) UNSIGNED NOT NULL ,
`petitionguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`playerguid`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`player_account`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`type`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`petitionguid`, `playerguid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Guild System'

;

-- ----------------------------
-- Records of petition_sign
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
-- Table structure for `pool_quest_save`
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save` (
`pool_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`quest_id`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
PRIMARY KEY (`pool_id`, `quest_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of pool_quest_save
-- ----------------------------
BEGIN;
INSERT INTO `pool_quest_save` VALUES ('348', '24635'), ('349', '14102'), ('350', '13905'), ('351', '13916'), ('352', '11377'), ('353', '11665'), ('354', '13425'), ('356', '11368'), ('357', '11389'), ('372', '28059'), ('372', '28130'), ('373', '27949'), ('373', '27967'), ('374', '27975'), ('374', '27991'), ('375', '27970'), ('375', '27972'), ('376', '28685'), ('376', '28687'), ('377', '28678'), ('377', '28681'), ('378', '28694'), ('378', '28697'), ('379', '28689'), ('379', '28691'), ('380', '12737'), ('381', '12762'), ('382', '12734'), ('383', '12759'), ('5662', '13674'), ('5663', '13762'), ('5664', '13770'), ('5665', '13775'), ('5666', '13778'), ('5667', '13783'), ('5668', '13666'), ('5669', '13603'), ('5670', '13741'), ('5671', '13747'), ('5672', '13758'), ('5673', '13753'), ('5674', '13103'), ('5675', '13116'), ('5676', '13832'), ('5677', '12960'), ('5678', '24581'), ('50003', '26226'), ('50004', '26183'), ('50005', '25162'), ('50006', '25156'), ('50007', '26556'), ('50008', '26420'), ('100000', '29123'), ('100001', '29125'), ('100002', '29179'), ('100003', '29304'), ('100004', '29143'), ('100005', '29264'), ('100006', '29293'), ('100007', '29288'), ('100008', '29211'), ('100009', '29160'), ('100009', '29189'), ('100010', '29275'), ('100011', '29255'), ('100012', '29205'), ('100013', '29297'), ('225969', '25160'), ('225970', '25105'), ('225971', '29362'), ('225972', '26235'), ('225973', '29360'), ('225974', '26153'), ('225975', '29353'), ('225976', '29318'), ('225977', '26588'), ('225978', '29345'), ('225979', '29322'), ('225980', '26420'), ('225981', '29342'), ('225982', '29323');
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
-- Table structure for `reserved_name`
-- ----------------------------
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name` (
`name`  varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
PRIMARY KEY (`name`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Player Reserved Names'

;

-- ----------------------------
-- Records of reserved_name
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `warden_action`
-- ----------------------------
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE `warden_action` (
`wardenId`  smallint(5) UNSIGNED NOT NULL ,
`action`  tinyint(3) UNSIGNED NULL DEFAULT NULL ,
PRIMARY KEY (`wardenId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of warden_action
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `worldstates`
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates` (
`entry`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`value`  int(10) UNSIGNED NOT NULL DEFAULT 0 ,
`comment`  tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`entry`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='Variable Saves'

;

-- ----------------------------
-- Records of worldstates
-- ----------------------------
BEGIN;
INSERT INTO `worldstates` VALUES ('3781', '9000000', null), ('3801', '0', null), ('3802', '1', null), ('20001', '1466996400', null), ('20002', '1467048225', null), ('20003', '1466564400', null), ('20006', '1466564400', null), ('20007', '1467320400', null), ('20050', '1467048225', null);
COMMIT;

-- ----------------------------
-- Indexes structure for table auctionhouse
-- ----------------------------
CREATE UNIQUE INDEX `item_guid` ON `auctionhouse`(`itemguid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `bugreport`
-- ----------------------------
ALTER TABLE `bugreport` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `character_bug_submission`
-- ----------------------------
ALTER TABLE `character_bug_submission` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table character_cuf_profiles
-- ----------------------------
CREATE INDEX `index` ON `character_cuf_profiles`(`id`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_equipmentsets
-- ----------------------------
CREATE UNIQUE INDEX `idx_set` ON `character_equipmentsets`(`guid`, `setguid`, `setindex`) USING BTREE ;
CREATE INDEX `Idx_setindex` ON `character_equipmentsets`(`setindex`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `character_equipmentsets`
-- ----------------------------
ALTER TABLE `character_equipmentsets` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table character_gifts
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_gifts`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_guild_reputation
-- ----------------------------
CREATE UNIQUE INDEX `guid_key` ON `character_guild_reputation`(`guid`) USING BTREE ;
CREATE INDEX `guildid_key` ON `character_guild_reputation`(`guildid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_instance
-- ----------------------------
CREATE INDEX `instance` ON `character_instance`(`instance`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_inventory
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_inventory`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_pet
-- ----------------------------
CREATE INDEX `owner` ON `character_pet`(`owner`) USING BTREE ;
CREATE INDEX `idx_slot` ON `character_pet`(`slot`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_pet_declinedname
-- ----------------------------
CREATE INDEX `owner_key` ON `character_pet_declinedname`(`owner`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_queststatus_daily
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_queststatus_daily`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_queststatus_monthly
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_queststatus_monthly`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_queststatus_seasonal
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_queststatus_seasonal`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_queststatus_weekly
-- ----------------------------
CREATE INDEX `idx_guid` ON `character_queststatus_weekly`(`guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_social
-- ----------------------------
CREATE INDEX `friend` ON `character_social`(`friend`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table character_void_storage
-- ----------------------------
CREATE UNIQUE INDEX `idx_player_slot` ON `character_void_storage`(`playerGuid`, `slot`) USING BTREE ;
CREATE INDEX `idx_player` ON `character_void_storage`(`playerGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table characters
-- ----------------------------
CREATE INDEX `idx_account` ON `characters`(`account`) USING BTREE ;
CREATE INDEX `idx_online` ON `characters`(`online`) USING BTREE ;
CREATE INDEX `idx_name` ON `characters`(`name`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table corpse
-- ----------------------------
CREATE INDEX `idx_type` ON `corpse`(`corpseType`) USING BTREE ;
CREATE INDEX `idx_time` ON `corpse`(`time`) USING BTREE ;
CREATE INDEX `idx_player` ON `corpse`(`guid`) USING BTREE ;
CREATE INDEX `idx_instance` ON `corpse`(`instanceId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table creature_respawn
-- ----------------------------
CREATE INDEX `idx_instance` ON `creature_respawn`(`instanceId`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `cronjobs`
-- ----------------------------
ALTER TABLE `cronjobs` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table gameobject_respawn
-- ----------------------------
CREATE INDEX `idx_instance` ON `gameobject_respawn`(`instanceId`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `gm_subsurveys`
-- ----------------------------
ALTER TABLE `gm_subsurveys` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `gm_surveys`
-- ----------------------------
ALTER TABLE `gm_surveys` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `gm_tickets`
-- ----------------------------
ALTER TABLE `gm_tickets` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table group_instance
-- ----------------------------
CREATE INDEX `instance` ON `group_instance`(`instance`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table groups
-- ----------------------------
CREATE INDEX `leaderGuid` ON `groups`(`leaderGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_bank_eventlog
-- ----------------------------
CREATE INDEX `guildid_key` ON `guild_bank_eventlog`(`guildid`) USING BTREE ;
CREATE INDEX `Idx_PlayerGuid` ON `guild_bank_eventlog`(`PlayerGuid`) USING BTREE ;
CREATE INDEX `Idx_LogGuid` ON `guild_bank_eventlog`(`LogGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_bank_item
-- ----------------------------
CREATE INDEX `guildid_key` ON `guild_bank_item`(`guildid`) USING BTREE ;
CREATE INDEX `Idx_item_guid` ON `guild_bank_item`(`item_guid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_bank_right
-- ----------------------------
CREATE INDEX `guildid_key` ON `guild_bank_right`(`guildid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_bank_tab
-- ----------------------------
CREATE INDEX `guildid_key` ON `guild_bank_tab`(`guildid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_challenges_completed
-- ----------------------------
CREATE INDEX `challengeId` ON `guild_challenges_completed`(`challengeId`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_eventlog
-- ----------------------------
CREATE INDEX `Idx_PlayerGuid1` ON `guild_eventlog`(`PlayerGuid1`) USING BTREE ;
CREATE INDEX `Idx_PlayerGuid2` ON `guild_eventlog`(`PlayerGuid2`) USING BTREE ;
CREATE INDEX `Idx_LogGuid` ON `guild_eventlog`(`LogGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_finder_applicant
-- ----------------------------
CREATE UNIQUE INDEX `guildId` ON `guild_finder_applicant`(`guildId`, `playerGuid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_member
-- ----------------------------
CREATE UNIQUE INDEX `guid_key` ON `guild_member`(`guid`) USING BTREE ;
CREATE INDEX `guildid_key` ON `guild_member`(`guildid`) USING BTREE ;
CREATE INDEX `guildid_rank_key` ON `guild_member`(`guildid`, `rank`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_newslog
-- ----------------------------
CREATE INDEX `Idx_PlayerGuid` ON `guild_newslog`(`PlayerGuid`) USING BTREE ;
CREATE INDEX `Idx_LogGuid` ON `guild_newslog`(`LogGuid`) USING BTREE ;
CREATE INDEX `guildid_key` ON `guild_newslog`(`guildid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table guild_rank
-- ----------------------------
CREATE INDEX `Idx_rid` ON `guild_rank`(`rid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table instance
-- ----------------------------
CREATE INDEX `map` ON `instance`(`map`) USING BTREE ;
CREATE INDEX `resettime` ON `instance`(`resettime`) USING BTREE ;
CREATE INDEX `difficulty` ON `instance`(`difficulty`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table instance_reset
-- ----------------------------
CREATE INDEX `difficulty` ON `instance_reset`(`difficulty`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table item_instance
-- ----------------------------
CREATE INDEX `idx_owner_guid` ON `item_instance`(`owner_guid`) USING BTREE ;

-- ----------------------------
-- Auto increment value for `lag_reports`
-- ----------------------------
ALTER TABLE `lag_reports` AUTO_INCREMENT=1;

-- ----------------------------
-- Indexes structure for table mail
-- ----------------------------
CREATE INDEX `idx_receiver` ON `mail`(`receiver`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table mail_items
-- ----------------------------
CREATE INDEX `idx_receiver` ON `mail_items`(`receiver`) USING BTREE ;
CREATE INDEX `idx_mail_id` ON `mail_items`(`mail_id`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table petition
-- ----------------------------
CREATE UNIQUE INDEX `index_ownerguid_petitionguid` ON `petition`(`ownerguid`, `petitionguid`) USING BTREE ;

-- ----------------------------
-- Indexes structure for table petition_sign
-- ----------------------------
CREATE INDEX `Idx_playerguid` ON `petition_sign`(`playerguid`) USING BTREE ;
CREATE INDEX `Idx_ownerguid` ON `petition_sign`(`ownerguid`) USING BTREE ;
