-- Update and Fixed Errors in Database world
-- By Bodeguero for JadeCore.

INSERT INTO item_script_names (Id, ScriptName) VALUES (62237, 'item_adventurers_journal');
DELETE FROM item_script_names WHERE id=71949;
INSERT INTO item_script_names (Id, ScriptName) VALUES (71949, 'item_tome_of_burning_jewels');

DELETE FROM creature WHERE id=52055;
DELETE FROM creature WHERE id=52054;DELETE FROM creature WHERE id=52062;-- DELETE
DELETE FROM spell_linked_spell WHERE spell_trigger IN (92315,11366);
-- INSERT
REPLACE INTO `spell_linked_spell` VALUES (92315, -48108, 0, 0, 'Hot streak');
REPLACE INTO `spell_linked_spell` VALUES (92315, -11366, 1, 0, 'Pyro Instant Dot');
REPLACE INTO `spell_linked_spell` VALUES (11366, -92315, 1, 0, 'Pyro Dot');
delete from creature_template where entry=52302;
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('52302','0','0','0','0','0','1126','11686','0','0','Venomous Effusion Stalker','','','0','1','1','0','0','35','35','0','1','1.14286','1','1.14286','1','0','0','0','0','0','1','2000','2000','1','0','2048','0','0','0','0','0','0','0','0','0','10','1024','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',NULL,NULL,'','0','3','1','1976.05','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','npc_venoxis_bloodvenom','15595');
-- remove all and reimport npc that is crew to bootybay transport ship
DELETE FROM `creature_transport` WHERE transport_entry=20808;
INSERT INTO `creature_transport` VALUES (1, 20808, 25097, -11.4014, 6.67999, 6.09785, 2.93715, 0);
INSERT INTO `creature_transport` VALUES (2, 20808, 25082, 15.6121, 1.09944, 6.09764, 2.52482, 0);
INSERT INTO `creature_transport` VALUES (3, 20808, 18569, -14285.5966, 596.8205, 5.7758, 6.0165, 0);
INSERT INTO `creature_transport` VALUES (4, 20808, 25096, -14253.5000, 576.2670, 19.4437, 6.2050, 0);
INSERT INTO `creature_transport` VALUES (5, 20808, 25089, 17.8437, -7.84575, 6.09877, 1.64493, 0);
INSERT INTO `creature_transport` VALUES (6, 20808, 25078, 34.095, 3.54049, 17.8892, 5.50987, 0);
INSERT INTO `creature_transport` VALUES (7, 20808, 25094, 34.0585, -0.04162, 18.2865, 3.17017, 0);
INSERT INTO `creature_transport` VALUES (8, 20808, 25095, 9.39981, 9.17899, 11.5941, 1.52083, 432);
INSERT INTO `creature_transport` VALUES (9, 20808, 25093, 15.8067, -5.80051, 11.9732, 1.86484, 0);
INSERT INTO `creature_transport` VALUES (10, 20808, 25111, 6.20811, 0.005208, 14.0554, 2.54813, 0);
-- remove duplicates from bootybay
DELETE FROM creature WHERE guid IN(68952,68808,68814,68804,68806,68807,68809,17418,17575,17871,18024,18569,68802,68803,17278);
-- reposition the location of npc Gim'hila
DELETE FROM creature WHERE id=48797;
INSERT INTO `creature` VALUES ('18516', '48797', '0', '5287', '35', '1', '1', '0', '1', '-14328.8', '576.669', '-35.8068', '5.2272', '300', '0', '0', '1220', '0', '0', '0', '0', '0');
-- remake the bird stats and make it fly randomly
DELETE FROM `creature_template` WHERE `entry`=25111;
INSERT INTO `creature_template` ( `entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ( 25111, 0, 0, 0, 0, 0, 22902, 0, 0, 0, "Treasure", "The Maiden's Fancy", "", 0, 1, 1, 0, 120, 120, 0, 1.0, 0.857143, 1.0, 0, 2, 3, 0, 24, 1.0, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 2, 3, 24, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "", 1, 4, 1.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, "", "12340");
UPDATE creature SET MovementType=1 WHERE id=25111;
UPDATE creature SET spawndist=11 WHERE id=25111;
-- DELETE here 63645,63644,-87336
DELETE FROM spell_linked_spell WHERE spell_trigger IN (63645,63644,-87336,-77485);

-- Chakra Remove At Change Spec
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `Req_aura`, `comment`)  VALUES (63645, -81209, 0, 0, 'Chakra: Chastise - remove when change talents');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `Req_aura`, `comment`)  VALUES (63645, -81208, 0, 0, 'Chakra: Serenity - remove when change talents');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `Req_aura`, `comment`)  VALUES (63645, -81206, 0, 0, 'Chakra: Sanctuary - remove when change talents');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `Req_aura`, `comment`)  VALUES (63645, -76691, 0, 0, 'Vengeance - remove when change talents');
                                                                          
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `Req_aura`, `comment`)  VALUES (63644, -81209, 0, 0, 'Chakra: Chastise - remove when change talents');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `Req_aura`, `comment`)  VALUES (63644, -81208, 0, 0, 'Chakra: Serenity - remove when change talents');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `Req_aura`, `comment`)  VALUES (63644, -81206, 0, 0, 'Chakra: Sanctuary -remove when change talents');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `Req_aura`, `comment`)  VALUES (63644, -76691, 0, 0, 'Vengeance remove - when change talents');

-- Chakra Remove At Reset Talent (Temp Hack)
-- Spiritual Healing 87336
-- Echo of Light 77485( this one need to be learn by trainers so we use 87336)
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `req_aura`, `comment`)  VALUES (-77485, -81209, 0, 0, 'Chakra: Chastise - remove when Reset talents');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `req_aura`, `comment`)  VALUES (-77485, -81208, 0, 0, 'Chakra: Serenity - remove when Reset talents');
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `req_aura`, `comment`)  VALUES (-77485, -81206, 0, 0, 'Chakra: Sanctuary - remove when Reset talents');DELETE FROM spell_bonus_data WHERE entry=19236;
REPLACE INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (19236, 0.8068, 0, 0, 0, 'Priest - Desperate Prayer');
-- wrong  npc quest
DELETE FROM creature_questrelation WHERE id=35830;
-- set  faction for npc 
UPDATE  creature_template SET faction_A=7, faction_H=7 WHERE entry=38210;
-- update map gilneas for worgens to be now visible
UPDATE creature SET map=654 WHERE map=638;
UPDATE gameobject SET map=654 WHERE map=638;
DELETE FROM spell_linked_spell WHERE spell_trigger=86150;
-- Delete This icorrect line :REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `req_aura`, `comment`) VALUES (86150, 86698, 0, 0, 'Guardian of Ancient Kings');
-- DELETE
DELETE FROM spell_proc_event WHERE entry IN (99013,99190,99134);

-- priest healer
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES ('99134', '5');
-- shaman resto
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`) VALUES ('99190', '11', '16', '262144', '40'); 
-- Druid resto
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`) VALUES ('99013', '7', '16', '262144', '40'); -- this will fix currency amount problem
UPDATE quest_template SET RewardCurrencyCount1 = RewardCurrencyCount1 * 100 WHERE RewardCurrencyCount1 < 1000 AND id = ANY(SELECT firstQuestID FROM lfg_dungeon_rewards);
UPDATE quest_template SET RewardCurrencyCount2 = RewardCurrencyCount2 * 100 WHERE RewardCurrencyCount2 < 1000 AND id = ANY(SELECT firstQuestID FROM lfg_dungeon_rewards);
UPDATE quest_template SET RewardCurrencyCount3 = RewardCurrencyCount3 * 100 WHERE RewardCurrencyCount3 < 1000 AND id = ANY(SELECT firstQuestID FROM lfg_dungeon_rewards);
UPDATE quest_template SET RewardCurrencyCount4 = RewardCurrencyCount4 * 100 WHERE RewardCurrencyCount4 < 1000 AND id = ANY(SELECT firstQuestID FROM lfg_dungeon_rewards);

UPDATE quest_template SET RewardCurrencyCount1 = RewardCurrencyCount1 * 100 WHERE RewardCurrencyCount1 < 1000 AND id = ANY(SELECT otherQuestId FROM lfg_dungeon_rewards);
UPDATE quest_template SET RewardCurrencyCount2 = RewardCurrencyCount2 * 100 WHERE RewardCurrencyCount2 < 1000 AND id = ANY(SELECT otherQuestId FROM lfg_dungeon_rewards);
UPDATE quest_template SET RewardCurrencyCount3 = RewardCurrencyCount3 * 100 WHERE RewardCurrencyCount3 < 1000 AND id = ANY(SELECT otherQuestId FROM lfg_dungeon_rewards);
UPDATE quest_template SET RewardCurrencyCount4 = RewardCurrencyCount4 * 100 WHERE RewardCurrencyCount4 < 1000 AND id = ANY(SELECT otherQuestId FROM lfg_dungeon_rewards);
