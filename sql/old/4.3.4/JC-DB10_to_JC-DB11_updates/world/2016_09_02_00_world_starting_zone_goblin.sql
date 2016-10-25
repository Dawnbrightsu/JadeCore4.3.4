-- Working for Goblin Quest
-- By Bodeguero for JadeCore.

-- KEZAN
-- Fix Quest Sequence
UPDATE `quest_template` SET `PrevQuestId`=14138 WHERE Id IN(14069, 14075); -- Trouble in the mines + Good Help is Hard to find
UPDATE `quest_template` SET `NextQuestId`=25473 WHERE Id IN(14069, 14075); -- Kaja'Cola
UPDATE `quest_template` SET `ExclusiveGroup`= -14069 WHERE Id IN(14069, 14075); -- Kaja'Cola
UPDATE `quest_template` SET `PrevQuestId`=25473 WHERE Id =28349; -- Megs in Marketing
UPDATE `quest_template` SET `PrevQuestId`=28349 WHERE Id =14071; -- Rolling with my Homies
UPDATE `quest_template` SET `PrevQuestId`=14071 WHERE `Id`=28607; -- keys to the hot rod
UPDATE `quest_template` SET `PrevQuestId`=14071 WHERE Id IN(14070, 24567, 26711); -- Report for Tryouts + Do it yourself + Off to the bank
UPDATE `quest_template` SET `PrevQuestId`=26711 WHERE Id = 14110; -- the new you
UPDATE `quest_template` SET `PrevQuestId`=24567 WHERE Id =24488; -- The Replacements
UPDATE `quest_template` SET `PrevQuestId`=24488, `NextQuestIdChain`=28414 WHERE Id =24502; -- Necessary Roughness
UPDATE `quest_template` SET `PrevQuestId`=24502 WHERE Id =28414; -- Fourth and Goal
UPDATE `quest_template` SET `PrevQuestId`=24503 WHERE Id =245200; -- Give Sassy the news


-- Taking care of business
-- QUEST OK

-- Trouble in the mines
UPDATE `creature_template` SET `npcflag`=0, `lootid`=34865, `mindmg`=3.8, `maxdmg`=3.8, `attackpower`=46, `rangeattacktime`=0, `unit_flags`=0, `dynamicflags`=2049, `minrangedmg`=1.9, `maxrangedmg`=1.9 WHERE (`entry`=34865);


-- Good Help is Hard to find
UPDATE quest_template SET method = 2, requirednpcorgo1 = 26612 WHERE id = 14069;
UPDATE creature_template SET npcflag = 16777216 WHERE entry = 34830;
DELETE FROM npc_spellclick_spells WHERE npc_entry = 34830;
REPLACE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags) VALUES
(34830,66306,0),(34830,47208,3);
UPDATE quest_template SET rewardchoiceitemid1 = 4604, rewardchoiceitemcount1 = 1, rewardchoiceitemid2 = 159, rewardchoiceitemcount2 = 1 WHERE id IN (14069);

-- Kaja Cola
-- QUEST OK

-- Megs in Marketing
-- QUEST OK

-- Rolling With My Homies (ancora a metà, manca che ti seguano usare spell 66600 - 66405 - 66646)
UPDATE `creature_template` SET `IconName`='vehichleCursor', `speed_walk`=3, `speed_run`=3.14286, `unit_flags`=32768, `type_flags`=0, `VehicleId`=468 WHERE (`entry`=34840);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 34840;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES (34840, 46598, 1);
DELETE FROM creature WHERE id IN (34957, 34958, 34959);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (34957, 648, 1, 1, 0, 0, -8067.96, 1473.91, 8.93369, 3.07847, 500, 0, 0, 156, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (34958, 648, 1, 1, 0, 0, -8179.48, 1321.45, 27.6133, 5.24695, 500, 0, 0, 156, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (34959, 648, 1, 1, 0, 0, -8508.19, 1343.1, 101.697, 6.25734, 500, 10, 0, 42, 0, 1, 0, 0, 0);

-- Ace
UPDATE `creature_template` SET `npcflag`=1, `gossip_menu_id`=34957, `minlevel`=8, `maxlevel`=8, `mindmg`=19, `maxdmg`=26.6, `attackpower`=72, `minrangedmg`=13.3, `maxrangedmg`=19, `AIName`='SmartAI' WHERE (`entry`=34957);
DELETE FROM `smart_scripts` WHERE `entryorguid`= 34957;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34957, 0, 0, 0, 62, 0, 100, 0, 34957, 0, 0, 0, 33, 34957, 0, 0, 0, 0, 0, 18, 1, 0, 0, 0, 0, 0, 0, 'Ace');
DELETE FROM `gossip_menu` WHERE `entry` = 34957;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (34957, 34957);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 34957;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (34957, 0, 0, 'Let\'s Party!', 1, 3, 0, 0, 0, 0, 'Are you sure i\'m welcome?');
DELETE FROM `npc_text` WHERE `ID` = 34957;
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES (34957, NULL, 'Rolling with my Homies!', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1);
-- Gobber
UPDATE `creature_template` SET `npcflag`=1, `gossip_menu_id`=34958, `minlevel`=8, `maxlevel`=8, `mindmg`=19, `maxdmg`=26.6, `attackpower`=72, `minrangedmg`=13.3, `maxrangedmg`=19, `AIName`='SmartAI' WHERE (`entry`=34958);
DELETE FROM `smart_scripts` WHERE `entryorguid`= 34958;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34958, 0, 0, 0, 62, 0, 100, 0, 34958, 0, 0, 0, 33, 34958, 0, 0, 0, 0, 0, 18, 1, 0, 0, 0, 0, 0, 0, 'Gobber');
DELETE FROM `gossip_menu` WHERE `entry` = 34958;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (34958, 34958);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 34958;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (34958, 0, 0, 'Let\'s Party!', 1, 3, 0, 0, 0, 0, 'Are you sure i\'m welcome?');
DELETE FROM `npc_text` WHERE `ID` = 34958;
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES (34958, NULL, 'Rolling with my Homies!', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1);
-- Izzy
UPDATE `creature_template` SET `npcflag`=1, `gossip_menu_id`=34959, `minlevel`=8, `maxlevel`=8, `mindmg`=19, `maxdmg`=26.6, `attackpower`=72, `minrangedmg`=13.3, `maxrangedmg`=19, `AIName`='SmartAI' WHERE (`entry`=34959);
DELETE FROM `smart_scripts` WHERE `entryorguid`= 34959;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34959, 0, 0, 0, 62, 0, 100, 0, 34959, 0, 0, 0, 33, 34959, 0, 0, 0, 0, 0, 18, 1, 0, 0, 0, 0, 0, 0, 'Izzy');
DELETE FROM `gossip_menu` WHERE `entry` = 34959;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (34959, 34959);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 34959;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES (34959, 0, 0, 'Let\'s Party!', 1, 3, 0, 0, 0, 0, 'Are you sure i\'m welcome?');
DELETE FROM `npc_text` WHERE `ID` = 34959;
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `WDBVerified`) VALUES (34959, NULL, 'Rolling with my Homies!', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- Rimosse 2 quest doppie non necessarie 26712 e 14109
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (26712, 14109);
DELETE FROM `creature_questrelation` WHERE `quest` IN(26712, 14109);

-- Do it Yourself
UPDATE `creature_template` SET `npcflag`=0, `type_flags`=0 WHERE `entry` IN(34835, 34876, 34877, 34878);
DELETE FROM creature_questrelation WHERE `id` IN(34835, 34876, 34877, 34878);
-- non hai i tuoi amici

-- Off to the Bank
-- QUEST OK

-- A New You
UPDATE creature_template SET npcflag = 129, gossip_menu_id=0 WHERE entry in (35128,35130,35126);
INSERT ignore INTO npc_vendor (entry,item) VALUES 
(35128,47046),(35130,47047),(35126,47045);

-- Report For Tryouts
-- QUEST OK

-- The Replacements
-- QUEST OK

-- Necessary Roughness
DELETE FROM `creature_questrelation` WHERE `id`=37114;
DELETE FROM `creature_involvedrelation` WHERE quest = 24502;
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (37106, 24502);

Delete from `creature` WHERE id = 37114;
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (37114, 648, 1, 1, 0, 0, -8294, 1491.11, 44.1671, 6.26241, 300, 0, 0, 42, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (37114, 648, 1, 1, 0, 0, -8294.6, 1483.96, 44.2093, 0.154719, 300, 0, 0, 42, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (37114, 648, 1, 1, 0, 0, -8294.73, 1477.16, 44.1359, 6.2354, 300, 0, 0, 42, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (37114, 648, 1, 1, 0, 0, -8290.66, 1480.78, 43.9591, 0.0287194, 300, 0, 0, 42, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (37114, 648, 1, 1, 0, 0, -8290.28, 1488.24, 43.9472, 6.2219, 300, 0, 0, 42, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (37114, 648, 1, 1, 0, 0, -8291.17, 1494.68, 44.1959, 6.1769, 300, 0, 0, 42, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (37114, 648, 1, 1, 0, 0, -8291.83, 1473.94, 44.016, 6.22191, 300, 0, 0, 42, 0, 0, 0, 0, 0);

UPDATE `quest_template` SET `SourceSpellId`=70015 WHERE (`Id`=24502);

UPDATE quest_template SET method = 2, flags = 128, requirednpcorgo2 = 371790 WHERE id = 24502;

UPDATE creature_template SET vehicleid = 116, spell1 = 69992 WHERE entry = 37179;

INSERT IGNORE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags) VALUES 
(37179,60968,1);

DELETE FROM spell_linked_spell WHERE COMMENT = "quest pallone goblin";
REPLACE INTO spell_linked_spell (spell_trigger,spell_effect,TYPE,COMMENT) VALUES
(69992,60041,0,"quest pallone goblin");

DELETE FROM spell_scripts WHERE id = 60041;
REPLACE INTO spell_scripts (id,command,datalong,datalong2) VALUES
(60041,10,371790,600000);

DELETE FROM creature_template WHERE entry = 371790;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('371790','0','0','0','0','0','11686','0','0','0','Steemwheedle Shark Footbombed','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','','12340');

UPDATE creature_template SET ainame = "SmartAI", faction_a = 35, faction_h = 35 WHERE entry IN (371790);
DELETE FROM smart_scripts WHERE entryorguid IN (371790) AND source_type = 0;
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(371790,0,1,0,1,0,100,1,100,110,0,0,33,371790,0,0,0,0,0,21,20,0,0,0,0,0,0,"Kill credit"),
(371790,0,2,0,1,0,100,1,100,110,0,0,33,37179,0,0,0,0,0,21,20,0,0,0,0,0,0,"Kill credit"),
(371790,0,3,0,1,0,100,1,100,110,0,0,11,30977,7,0,0,0,0,19,37114,20,0,0,0,0,0,"Kill credit"),
(371790,0,4,0,1,0,100,0,300,410,2000,2100,37,0,0,0,0,0,0,21,20,0,0,0,0,0,0,"crepa");

-- Fourth and Goal
DELETE FROM `creature_questrelation` WHERE `id`=37203;
UPDATE quest_template SET method = 2, `SourceSpellId`=70075, flags = 128, requirednpcorgo1 = 371791 WHERE id = 28414;

DELETE FROM creature WHERE id = 37213;
UPDATE creature_template SET vehicleid = 116, spell1 = 70051 WHERE entry = 37213;

INSERT IGNORE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags) VALUES 
(37213,60968,1);

DELETE FROM spell_linked_spell WHERE COMMENT = "quest pallone goblin2";
REPLACE INTO spell_linked_spell (spell_trigger,spell_effect,TYPE,COMMENT) VALUES
(70051,59590,0,"quest pallone goblin2");

DELETE FROM spell_scripts WHERE id = 59590;
REPLACE INTO spell_scripts (id,command,datalong,datalong2) VALUES
(59590,10,371791,600000);


DELETE FROM creature_template WHERE entry = 371791;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('371791','0','0','0','0','0','11686','0','0','0','Partita vinta','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1', '0','0','','12340');

UPDATE creature_template SET ainame = "SmartAI", faction_a = 35, faction_h = 35 WHERE entry IN (371791);
DELETE FROM smart_scripts WHERE entryorguid IN (371791) AND source_type = 0;
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(371791,0,1,0,1,0,100,1,100,110,0,0,12,46484,2,9000000,0,0,0,8,0,0,0,-8203, 1484, 86,3.17,"spawn deathwing"),
(371791,0,2,0,1,0,100,1,200,210,0,0,11,66772,7,0,0,0,0,21,20,0,0,0,0,0,0,"Earthquake"),
(371791,0,3,0,1,0,100,1,100,110,0,0,11,30977,7,0,0,0,0,19,37213,20,0,0,0,0,0,"Leva robot"),
(371791,0,4,0,1,0,100,1,10000,11000,0,0,33,371791,0,0,0,0,0,21,20,0,0,0,0,0,0,"Kill credit"),
(371791,0,5,0,1,0,100,1,10000,11000,0,0,7,245200,0,0,0,0,0,21,20,0,0,0,0,0,0,"Aggiunge quest seguente"),
(371791,0,12,0,1,0,100,0,11300,11410,2000,2100,37,0,0,0,0,0,0,21,120,0,0,0,0,0,0,"crepa");

UPDATE creature_template SET ainame = "SmartAI", health_mod = 1000, inhabittype = 4, faction_a = 35, faction_h = 35 WHERE entry IN (46484);
DELETE FROM smart_scripts WHERE entryorguid IN (46484) AND source_type = 0;
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(46484,0,1,0,1,0,100,1,200,310,0,0,69,5,5,0,0,0,0,8,0,0,0,-9098, 1419, 435,3.17,"movimento"),
(46484,0,2,0,1,0,100,1,100,110,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"volo"),
(46484,0,3,0,1,0,100,1,5100,5110,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"volo"),
(46484,0,12,0,1,0,100,0,60300,60410,2000,2100,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn");

DELETE FROM creature_text WHERE comment = "Deathwing dai goblin";
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('46484','1','0','Il sole tramonta su questo mondo mortale, folli! Arrendetevi alla vostra fine, poiché arriva l\'Ora del Crepuscolo!','14','0','100','0','0','0','Deathwing dai goblin');

-- Give Sassy the news
UPDATE quest_template SET flags = 128 WHERE id = 24520;

UPDATE quest_template SET nextquestidchain = 24520, nextquestid = 24520 WHERE id = 28414;

DELETE FROM `quest_template` WHERE (`id`='245200');
REPLACE INTO `quest_template` (`id`, `Method`, `ZoneOrSort`, `requiredclasses`, `MinLevel`, `MaxLevel`, `Level`, `Type`, `RequiredRaces`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionValue1`, `RequiredFactionId2`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `rewardtalents`, `RewardArenaPoints`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `SourceItemId`, `SourceItemCount`, `SourceSpellid`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `requirednpcorgo1`, `requirednpcorgo2`, `requirednpcorgo3`, `requirednpcorgo4`, `requirednpcorgocount1`, `requirednpcorgocount2`, `requirednpcorgocount3`, `requirednpcorgocount4`, `requiredspellcast1`, `requiredspellcast2`, `requiredspellcast3`, `requiredspellcast4`, `rewardchoiceitemid1`, `rewardchoiceitemid2`, `rewardchoiceitemid3`, `rewardchoiceitemid4`, `rewardchoiceitemid5`, `rewardchoiceitemid6`, `rewardchoiceitemcount1`, `rewardchoiceitemcount2`, `rewardchoiceitemcount3`, `rewardchoiceitemcount4`, `rewardchoiceitemcount5`, `rewardchoiceitemcount6`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `RewardHonor`, `RewardHonorMultiplier`, `RequiredSkillId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardMailTemplateId`, `RewardMailDelay`, `PointMapId`, `PointX`, `PointY`, `PoINTOption`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `RewardSkillId`, `RewardSkillPoints`, `SoundAccept`, `QuestGivertextWindow`, `QuestTurntextWindow`, `RewardCurrencyId1`, `RewardCurrencyCount1`, `RewardCurrencyId2`, `RewardCurrencyCount2`, `RewardCurrencyId3`, `RewardCurrencyCount3`, `RewardCurrencyId4`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyCount1`, `RequiredCurrencyId2`, `RequiredCurrencyCount2`, `RequiredCurrencyId3`, `RequiredCurrencyCount3`, `RequiredCurrencyId4`, `RequiredCurrencyCount4`, `SoundTurnIn`, `RequiredSpell`, `WDBVerified`) VALUES('245200','2','4737','0','1','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','128','0','0','0','0','0','28414','0','0','14070','1','0','0','0','Give Sassy the News','I\'d celebrate with you, $N, but it feels like that dragon did a number on ol\' Mount Kajaro. I... uh... I think I\'m gonna grab my stuff and get on the first ship leaving the island!$B$BAnyways, you should probably head back to headquarters and let Sassy know that you won the Footbomb title for us. I\'m sure she\'ll also want to know about the dragon and Mount Kajaro.$B$BGood luck!','Speak with Sassy Hardwrench at KTC Headquarters on Kezan.',NULL,NULL,'','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1133','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','59073','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','878','0','1');

UPDATE creature_questrelation SET quest = 245200 WHERE quest = 24520;
UPDATE creature_involvedrelation SET quest = 245200 WHERE quest = 24520;
UPDATE quest_template SET prevquestid = 245200 WHERE prevquestid = 24520;
UPDATE quest_template SET nextquestid = 245200 WHERE nextquestid = 24520;
UPDATE quest_template SET nextquestidchain = 245200 WHERE nextquestidchain = 24520;

UPDATE quest_template SET prevquestid = 28414 WHERE id = 245200;
UPDATE quest_template SET nextquestidchain = 0 WHERE nextquestidchain IN (245200) AND id != 28414;
UPDATE quest_template SET flags = (128+65536) WHERE id = 245200;
-- via spell cambiafase, era 59073
UPDATE quest_template SET RewardSpellcast = 0, nextquestidchain = 0 WHERE id = 245200;



-- KEZAN DOPO LA COMPARSA DI DEATHWING

-- Level 3 Class Quest da fare, poca roba
-- Life of the party
DELETE FROM `creature_questrelation` WHERE (`id`=35054) AND (`quest`=14153);
DELETE FROM `creature_questrelation` WHERE `id`=35715;
DELETE FROM `creature_questrelation` WHERE `quest`=14113;
DELETE FROM `creature_involvedrelation` WHERE `quest`=14113;
DELETE FROM creature WHERE id IN (35175,35185,35186,35201);
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`) VALUES
('35175','648','1','1','0','35175','-8464.19','1375.84','101.697','4.21048','300','55'),
('35201','648','1','1','0','35175','-8468.9','1295.09','102.288','3.62614','300','42'),
('35175','648','1','1','0','35175','-8486.85','1309.99','101.697','2.42527','300','55'),
('35175','648','1','1','0','35175','-8456.7','1356.29','101.697','4.3','300','42'),
('35185','648','1','1','0','35185','-8467.13','1346.13','102.533','3.21145','300','42'),
('35185','648','1','1','0','35185','-8493.88','1306.83','101.697','0.860754','300','42'),
('35185','648','1','1','0','35185','-8497.64','1346.66','102.534','4.80502','300','55'),
('35185','648','1','1','0','35185','-8456.62','1365.83','101.69','3.69996','300','55'),
('35186','648','1','1','0','35186','-8469.78','1293.34','102.347','1.26995','300','42'),
('35186','648','1','1','0','35186','-8461.95','1325.31','101.698','3.26092','300','55'),
('35201','648','1','1','0','35201','-8496.07','1307.72','101.697','1.57704','300','55'),
('35201','648','1','1','0','35201','-8498.17','1329.97','102.534','6.15983','300','55'),
('35186','648','1','1','0','35201','-8502.81','1311.05','101.697','0.987984','300','42'),
('35201','648','1','1','0','35201','-8511.93','1349.28','101.697','0.0337248','300','42');

UPDATE quest_template SET sourcespellid = 66928, flags = 128, `PrevQuestId`=245200 WHERE id = 14153;

DELETE FROM gossip_menu_option WHERE menu_id = 35175;
REPLACE INTO gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) VALUES
(35175,0,"Ehilà! Come butta?",1,1),
(35175,1,"Sei uno schianto stasera!",1,1),
(35175,2,"Benvenuto al miglior party sulla faccia di Azeroth!",1,1),
(35175,3,"Hai messo su un po\' di ciccia, eh?",1,1);

UPDATE creature_template SET ainame = "SmartAI", gossip_menu_id = 35175, npcflag = 1 WHERE entry IN (35175,35185,35186,35201);
DELETE FROM smart_scripts WHERE entryorguid IN (35175,35185,35186,35201) AND source_type = 0;
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(35175,0,1,2,62,0,100,1,35175,0,0,0,33,35175,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(35175,0,2,3,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35175,0,3,5,61,0,100,1,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Leva flag gossip"),
(35175,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(35175,0,4,0,1,0,100,1,10000,61000,60000,61000,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mette flag gossip"),

(35185,0,1,2,62,0,100,1,35175,1,0,0,33,35175,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(35185,0,2,3,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35185,0,3,5,61,0,100,1,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Leva flag gossip"),
(35185,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(35185,0,4,0,1,0,100,1,10000,61000,60000,61000,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mette flag gossip"),

(35186,0,1,2,62,0,100,1,35175,2,0,0,33,35175,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(35186,0,2,3,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35186,0,3,5,61,0,100,1,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Leva flag gossip"),
(35186,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(35186,0,4,0,1,0,100,1,10000,61000,60000,61000,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mette flag gossip"),

(35201,0,1,2,62,0,100,1,35175,3,0,0,33,35175,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(35201,0,2,3,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35201,0,3,5,61,0,100,1,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Leva flag gossip"),
(35201,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(35201,0,4,0,1,0,100,1,10000,61000,60000,61000,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mette flag gossip"),

(35175,0,6,7,62,0,100,1,35175,1,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35175,0,7,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35175,0,8,7,62,0,100,1,35175,2,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35175,0,9,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35175,0,10,7,62,0,100,1,35175,3,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35175,0,11,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),

(35185,0,6,7,62,0,100,1,35175,0,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35185,0,7,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35185,0,8,7,62,0,100,1,35175,2,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35185,0,9,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35185,0,10,7,62,0,100,1,35175,3,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35185,0,11,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),

(35186,0,6,7,62,0,100,1,35175,0,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35186,0,7,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35186,0,8,7,62,0,100,1,35175,1,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35186,0,9,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35186,0,10,7,62,0,100,1,35175,3,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35186,0,11,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),

(35201,0,6,7,62,0,100,1,35175,0,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35201,0,7,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35201,0,8,7,62,0,100,1,35175,1,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35201,0,9,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(35201,0,10,7,62,0,100,1,35175,2,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Frase"),
(35201,0,11,0,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");

UPDATE smart_scripts SET event_flags = 0 WHERE entryorguid IN (35175,35185,35186,35201) AND source_type = 0;

DELETE FROM creature_text WHERE comment = "Life party";
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('35175','1','0','Tu sì che ci stai dentro!','12','0','100','0','0','0','Life party'),
('35175','1','1','Bella $N , questo party spacca!','12','0','100','0','0','0','Life party'),
('35175','1','2','Che storia, mi fai scompisciare!','12','0','100','0','0','0','Life party'),
('35175','1','3','Wow, sei il top del max!','12','0','100','0','0','0','Life party'),
('35175','2','0','Sparisci, sfigomatico!','12','0','100','0','0','0','Life party'),
('35175','2','1','Che orribile rozzezza!','12','0','100','0','0','0','Life party'),
('35175','2','2','Gira al largo, non vedi che ho da fare?','12','0','100','0','0','0','Life party'),
('35175','2','3','Ecco, a questa festa noiosa mancava solo il pagliaccio...','12','0','100','0','0','0','Life party'),
('35185','1','0','Tu sì che ci stai dentro!','12','0','100','0','0','0','Life party'),
('35185','1','1','Bella $N , questo party spacca!','12','0','100','0','0','0','Life party'),
('35185','1','2','Che storia, mi fai scompisciare!','12','0','100','0','0','0','Life party'),
('35185','1','3','Wow, sei il top del max!','12','0','100','0','0','0','Life party'),
('35185','2','0','Sparisci, sfigomatico!','12','0','100','0','0','0','Life party'),
('35185','2','1','Che orribile rozzezza!','12','0','100','0','0','0','Life party'),
('35185','2','2','Gira al largo, non vedi che ho da fare?','12','0','100','0','0','0','Life party'),
('35185','2','3','Ecco, a questa festa noiosa mancava solo il pagliaccio...','12','0','100','0','0','0','Life party'),
('35186','1','0','Tu sì che ci stai dentro!','12','0','100','0','0','0','Life party'),
('35186','1','1','Bella $N , questo party spacca!','12','0','100','0','0','0','Life party'),
('35186','1','2','Che storia, mi fai scompisciare!','12','0','100','0','0','0','Life party'),
('35186','1','3','Wow, sei il top del max!','12','0','100','0','0','0','Life party'),
('35186','2','0','Sparisci, sfigomatico!','12','0','100','0','0','0','Life party'),
('35186','2','1','Che orribile rozzezza!','12','0','100','0','0','0','Life party'),
('35186','2','2','Gira al largo, non vedi che ho da fare?','12','0','100','0','0','0','Life party'),
('35186','2','3','Ecco, a questa festa noiosa mancava solo il pagliaccio...','12','0','100','0','0','0','Life party'),
('35201','1','0','Tu sì che ci stai dentro!','12','0','100','0','0','0','Life party'),
('35201','1','1','Bella $N , questo party spacca!','12','0','100','0','0','0','Life party'),
('35201','1','2','Che storia, mi fai scompisciare!','12','0','100','0','0','0','Life party'),
('35201','1','3','Wow, sei il top del max!','12','0','100','0','0','0','Life party'),
('35201','2','0','Sparisci, sfigomatico!','12','0','100','0','0','0','Life party'),
('35201','2','1','Che orribile rozzezza!','12','0','100','0','0','0','Life party'),
('35201','2','2','Gira al largo, non vedi che ho da fare?','12','0','100','0','0','0','Life party'),
('35201','2','3','Ecco, a questa festa noiosa mancava solo il pagliaccio...','12','0','100','0','0','0','Life party');

-- Pirate Party Crashers
UPDATE `creature_template` SET `npcflag`=0, `mindmg`=7.6, `maxdmg`=9.5, `attackpower`=52, `rangeattacktime`=0, `unit_flags`=32768, `unit_flags2`=2048, `dynamicflags`=1, `lootid`=35200, `mingold`=20, `maxgold`=40 WHERE (`entry`=35200);
DELETE FROM `creature_loot_template` WHERE `entry`=35200;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35200, 117, 46.9, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35200, 159, 25.9, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35200, 805, 4.5, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35200, 828, 4.7, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35200, 4496, 6.3, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35200, 5571, 5.5, 1, 0, 1, 1);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35200, 5572, 6.3, 1, 0, 1, 1);
UPDATE quest_template SET `PrevQuestId`=14153 WHERE id = 14115;
UPDATE creature SET spawntimesecs = 360 WHERE id = 35200;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=34668);
DELETE FROM `smart_scripts` WHERE entryorguid = 34668;
REPLACE INTO `smart_scripts` VALUES (34668, 0, 0, 0, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8457.13, 1313.54, 103, 0.494, 'Summon Pirate 1');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 1, 0, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8469.18, 1309.97, 103, 0.494, 'Summon Pirate 2');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 2, 1, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8464.18, 1294.91, 103, 0.494, 'Summon Pirate 3');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 3, 2, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8484, 1303, 103, 0.494, 'Summon Pirate 4');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 4, 3, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8503.18, 1302, 103, 0.494, 'Summon Pirate 5');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 5, 4, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8495.18, 1321, 103, 0.494, 'Summon Pirate 6');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 6, 5, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8505, 1335.50, 103, 0.494, 'Summon Pirate 7');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 7, 6, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8523, 1346, 103, 0.494, 'Summon Pirate 8');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 8, 7, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8511, 1363, 103, 0.494, 'Summon Pirate 9');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 9, 8, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8508, 1378, 103, 0.494, 'Summon Pirate 10');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 10, 9, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8490, 1370, 103, 0.494, 'Summon Pirate 11');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 11, 10, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8483, 1350, 103, 0.494, 'Summon Pirate 12');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 12, 11, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8462, 1368, 103, 0.494, 'Summon Pirate 13');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 13, 12, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8457, 1352, 103, 0.494, 'Summon Pirate 14');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 14, 13, 19, 0, 100, 0, 14115, 0, 0, 0, 12, 35200, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -8470.56, 1335.55, 103, 0.494, 'Summon Pirate 15');
REPLACE INTO `smart_scripts` VALUES (34668, 0, 15, 14, 19, 0, 100, 0, 14115, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, "Leva aura party");

-- The uninvited guest
UPDATE quest_template SET `PrevQuestId`=14115 WHERE id = 14116;
DELETE FROM creature WHERE id = 35222;
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35222','648','1','2','0','35222','-8411.57','1342.22','102.501','4.55701','300','0','0','774900','45580','0','0','0','0');
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('35222','648','1','1','0','35222','-8423.91','1362.6','116.862','1.53756','300','0','0','774900','44120','0','0','134250496','0');

-- A bazilion macaroon
UPDATE quest_template SET prevquestid = 14116 WHERE id = 14120;

-- QUEST IN FASE 4
UPDATE quest_template SET prevquestid = 14120, nextquestid = 14125, NextQuestIdChain=14125, ExclusiveGroup = -14121, flags = 128, sourcespellid = 59074 WHERE id IN (14123,14121, 14122, 14124);
DELETE FROM creature WHERE phaseMask = 4 AND map=648;
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`) VALUES
(34668, 648, 1, 4, 34668, -8424, 1320, 104.676, 1.320, 300, 0, 0, 102), 
(34693, 648, 1, 4, 34693, -8412.4, 1346.41, 102.654, 4.31884, 300, 0, 0, 120), 
(34872, 648, 1, 4, 34872, -8409.11, 1321.15, 102.173, 1.73252, 300, 0, 0, 102), 
(34874, 648, 1, 4, 34874, -8404.91, 1340.96, 102.194, 3.31353, 300, 0, 0, 306),
(35609, 648, 1, 4, 1, -8144.3, 1894.33, 68.6184, 4.88471, 300, 0, 0, 71),
(35609, 648, 1, 4, 1, -8130.25, 1890.93, 56.4126, 0.146212, 300, 0, 0, 86),
(35609, 648, 1, 4, 1, -8069.03, 1886.51, 55.1698, 6.14033, 300, 0, 0, 71),
(35609, 648, 1, 4, 1, -8066.43, 1911.74, 53.9813, 6.14033, 300, 0, 0, 71),
(35609, 648, 1, 4, 1, -8049.22, 1947.39, 52.5154, 4.73515, 300, 0, 0, 71),
(35609, 648, 1, 4, 1, -8007.34, 1868.93, 52.5169, 1.88321, 300, 0, 0, 71),
(35609, 648, 1, 4, 1, -8051.62, 1852.94, 51.971, 4.3864, 300, 0, 0, 71),
(35609, 648, 1, 4, 1, -8060.28, 1856.51, 51.1949, 4.3864, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8183.33, 1591.26, 23.9013, 0.313306, 300, 0, 0, 86),
(35234, 648, 1, 4, 1, -8158.16, 1594.88, 19.1679, 4.46006, 300, 0, 0, 86),
(35234, 648, 1, 4, 1, -8173.19, 1643.25, 23.4518, 4.87518, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8138.53, 1623.9, 15.0183, 1.53618, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8301.27, 1760.08, 50.8806, 4.67387, 300, 0, 0, 86),
(35234, 648, 1, 4, 1, -8319.37, 1685.93, 50.8795, 0.192931, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8291.1, 1701.31, 48.966, 3.65793, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8423.1, 1666.22, 49.3457, 5.40512, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8446.59, 1632.23, 43.3873, 4.91124, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8441.73, 1599.59, 43.4014, 2.45306, 300, 0, 0, 86),
(35234, 648, 1, 4, 1, -8431.34, 1540.35, 48.3255, 0.668806, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8266.6, 1519.3, 43.2558, 6.08456, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8310.09, 1506.19, 45.7644, 0.647371, 300, 0, 0, 86),
(35234, 648, 1, 4, 1, -8293.69, 1457.28, 43.6096, 2.192, 300, 0, 0, 71),
(35234, 648, 1, 4, 1, -8249.84, 1459.28, 41.1048, 6.14756, 300, 0, 0, 71),
(35294, 648, 1, 4, 1, -8447.15, 1240.01, 55.6204, 0.922724, 300, 0, 0, 71),
(35294, 648, 1, 4, 1, -8472.2, 1249.49, 54.3624, 0.018224, 300, 0, 0, 71),
(35294, 648, 1, 4, 1, -8470.84, 1166.35, 41.2606, 1.28272, 300, 0, 0, 71),
(35294, 648, 1, 4, 1, -8428.76, 1165.65, 40.6432, 2.48197, 300, 0, 0, 71),
(35294, 648, 1, 4, 1, -8426.49, 1196.18, 40.7903, 4.1886, 300, 0, 0, 86),
(35294, 648, 1, 4, 1, -8461.51, 1198.56, 41.9387, 5.9616, 300, 0, 0, 71),
(35294, 648, 1, 4, 1, -8488.71, 1207.62, 42.0583, 5.9616, 300, 0, 0, 86),
(35294, 648, 1, 4, 1, -8473.51, 1131.67, 40.7274, 1.63591, 300, 0, 0, 86),
(35294, 648, 1, 4, 1, -8488.13, 1164.65, 41.6917, 0.137414, 300, 0, 0, 71);

DELETE FROM gameobject WHERE phaseMask = 4 AND map = 648;
REPLACE INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(195492, 648, 1, 4, -8470.32, 1200.92, 42.5747, 3.35847, 0, 0, 0.994126, -0.108227, 300, 0, 1),
(195492, 648, 1, 4, -8471.43, 1205.86, 41.9639, 6.03035, 0, 0, 0.126083, -0.99202, 300, 0, 1),
(195492, 648, 1, 4, -8474.97, 1204.73, 41.9353, 6.03035, 0, 0, 0.126083, -0.99202, 300, 0, 1),
(195492, 648, 1, 4, -8493.04, 1209.14, 42.2304, 5.08985, 0, 0, 0.561891, -0.827211, 300, 0, 1),
(195492, 648, 1, 4, -8492.99, 1211.69, 42.1428, 2.8691, 0, 0, 0.990732, 0.135828, 300, 0, 1),
(195492, 648, 1, 4, -8488.39, 1209.46, 41.9679, 1.8566, 0, 0, 0.800601, 0.599198, 300, 0, 1),
(195492, 648, 1, 4, -8490.09, 1205.14, 42.2838, 1.8566, 0, 0, 0.800601, 0.599198, 300, 0, 1),
(195492, 648, 1, 4, -8483.62, 1180.77, 41.934, 2.54847, 0, 0, 0.956347, 0.292233, 300, 0, 1),
(195492, 648, 1, 4, -8488.86, 1178.49, 41.9347, 2.18053, 0, 0, 0.886751, 0.462248, 300, 0, 1),
(195492, 648, 1, 4, -8485.18, 1175.66, 41.9347, 2.18053, 0, 0, 0.886751, 0.462248, 300, 0, 1),
(195492, 648, 1, 4, -8479.93, 1158.89, 40.6317, 1.28278, 0, 0, 0.598312, 0.801263, 300, 0, 1),
(195492, 648, 1, 4, -8483.83, 1157.23, 40.2456, 1.28278, 0, 0, 0.598312, 0.801263, 300, 0, 1),
(195492, 648, 1, 4, -8480.79, 1163.13, 41.1168, 2.57878, 0, 0, 0.960667, 0.277705, 300, 0, 1),
(195492, 648, 1, 4, -8461.59, 1152.86, 40.4704, 1.15791, 0, 0, 0.547149, 0.837035, 300, 0, 1),
(195492, 648, 1, 4, -8464.24, 1149.9, 40.0042, 1.45603, 0, 0, 0.665391, 0.746495, 300, 0, 1),
(195492, 648, 1, 4, -8458.23, 1147.68, 39.7468, 2.24578, 0, 0, 0.901357, 0.433077, 300, 0, 1),
(195489, 648, 1, 4, -8491.63, 1209.25, 42.0011, 3.02103, 0, 0, 0.998184, 0.0602457, 300, 0, 1),
(195489, 648, 1, 4, -8470.8, 1204.3, 41.9436, 1.24465, 0, 0, 0.582927, 0.812524, 300, 0, 1),
(195489, 648, 1, 4, -8486.89, 1180.51, 41.9353, 1.85215, 0, 0, 0.799268, 0.600974, 300, 0, 1),
(195489, 648, 1, 4, -8481.39, 1161.48, 40.9354, 1.61815, 0, 0, 0.72365, 0.690167, 300, 0, 1),
(195489, 648, 1, 4, -8480.57, 1144.27, 39.8852, 1.61815, 0, 0, 0.72365, 0.690167, 300, 0, 1),
(195489, 648, 1, 4, -8461.27, 1136.99, 39.7566, 3.75228, 0, 0, 0.953744, -0.30062, 300, 0, 1),
(202593, 648, 1, 4, -8461.28, 1149.2, 39.8729, 3.75228, 0, 0, 0.953744, -0.30062, 300, 0, 1),
(195489, 648, 1, 4, -8457.09, 1161.14, 40.055, 0.120778, 0, 0, 0.0603525, 0.998177, 300, 0, 1),
(195492, 648, 1, 4, -8458.4, 1162.96, 40.3538, 1.16928, 0, 0, 0.551899, 0.833911, 300, 0, 1),
(195492, 648, 1, 4, -8456.77, 1158.6, 39.8227, 3.82428, 0, 0, 0.942306, -0.334753, 300, 0, 1),
(195492, 648, 1, 4, -8453.59, 1161.19, 39.8362, 3.82428, 0, 0, 0.942306, -0.334753, 300, 0, 1),
(195492, 648, 1, 4, -8435.04, 1170.35, 40.6362, 4.49928, 0, 0, 0.7783, -0.627893, 300, 0, 1),
(195492, 648, 1, 4, -8439.37, 1169.11, 40.5856, 0.0925933, 0, 0, 0.0462801, 0.998928, 300, 0, 1),
(195492, 648, 1, 4, -8438.02, 1165.88, 40.5567, 0.695593, 0, 0, 0.340827, 0.940126, 300, 0, 1),
(195489, 648, 1, 4, -8436.42, 1167.24, 40.5976, 4.85478, 0, 0, 0.655016, -0.755615, 300, 0, 1),
(195489, 648, 1, 4, -8433.44, 1183.69, 40.6533, 0.601094, 0, 0, 0.296043, 0.955175, 300, 0, 1),
(195492, 648, 1, 4, -8431.91, 1186.12, 40.6078, 5.76709, 0, 0, 0.255191, -0.966891, 300, 0, 1),
(195492, 648, 1, 4, -8430.5, 1184.19, 40.6454, 0.00590938, 0, 0, 0.00295469, 0.999996, 300, 0, 1),
(195492, 648, 1, 4, -8429.56, 1185.08, 40.6415, 3.02541, 0, 0, 0.998313, 0.0580589, 300, 0, 1),
(195492, 648, 1, 4, -8422.07, 1181.22, 40.692, 3.02541, 0, 0, 0.998313, 0.0580589, 300, 0, 1);

-- The Great Bank Heist
UPDATE quest_template SET requireditemid1 = 46858, requireditemcount1 = 1 WHERE id = 14122;
UPDATE `quest_template` SET `RequiredNpcOrGo1`=0, `RequiredNpcOrGoCount1`=0, `RequiredItemId2`=0, `RequiredItemCount2`=0, `ObjectiveText1`='' WHERE (`Id`=14122);

DELETE FROM gameobject_template WHERE entry = 14122;
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES
('14122','3','7605','Kezan Bank Vault','','94','0','1','57','14122','0','1','0','0','0','0','0','0','1','0','1','0','0','1','0','0','0','0','0','0','0','0','');

DELETE FROM gameobject_loot_template WHERE entry = 14122;
REPLACE INTO gameobject_loot_template (entry,item,chanceorquestchance,mincountorref,maxcount) VALUES (14122,46858,-100,1,1);

DELETE FROM gameobject WHERE id = 14122;
REPLACE INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES('14122','648','1','4','-8365.42','1725.06','40','0.1630','0','0','0.999374','0.0353781','60','0','1');

-- Robbing hoods
UPDATE creature SET spawntimesecs = 60 WHERE id = 35234;
UPDATE `creature_template` SET `dynamicflags`=2048, `lootid`=35234 WHERE (`entry`=35234);
DELETE FROM `creature_loot_template` WHERE `entry`= 35234;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (35234, 4753, -99);

-- Waltz right in
DELETE FROM `gameobject` WHERE `id` IN (195515, 195516, 195518) AND `phaseMask` = 4;
REPLACE INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(195518, 648, 1, 4, -8007.97, 1860.43, 53.1966, 1.738, 0, 0, 0.763684, 0.64559, 300, 0, 1), 
(195515, 648, 1, 4, -8141.25, 1899.17, 69.4056, 2.89018, 0, 0, 0.992109, 0.125377, 300, 0, 1), 
(195516, 648, 1, 4, -8044.86, 1953.15, 54.0352, 3.15486, 0, 0, 0.999978, -0.00663125, 300, 0, 1);

-- 447
DELETE FROM`gameobject` WHERE `id` IN (201735, 201733, 201734) AND `phaseMask` = 4;
REPLACE INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('201735','648','1','4','-8401.92','1365.01','104.706','3.62138','0','0','0.971363','-0.237599','300','0','1'),
('201733','648','1','4','-8401.95','1371.51','104.685','3.07746','0','0','0.999486','0.0320618','300','0','1'),
('201734','648','1','4','-8404.56','1363.87','117.269','3.2259','0','0','0.999112','-0.0421391','300','0','1');

DELETE FROM `creature` WHERE `id` = 37598 AND `phaseMask` = 4;
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('37598','648','1','4','0','0','-8413.94','1359.76','117.256','1.63232','300','0','0','42','0','0','0','0','0');

DELETE FROM gossip_menu_option WHERE menu_id = 37598;
REPLACE INTO gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) VALUES
(37598,0,"Rilascia il gas!",1,1);

UPDATE creature_template SET ainame = "SmartAI", gossip_menu_id = 37598, npcflag = 1 WHERE entry IN (37598);
DELETE FROM smart_scripts WHERE entryorguid IN (37598) AND source_type = 0;
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(37598,0,1,2,62,0,100,0,37598,0,0,0,33,37598,0,0,0,0,0,7,0,0,0,0,0,0,0,"gasbot credit"),
(37598,0,2,4,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(37598,0,4,5,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Leva flag gossip"),
(37598,0,5,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fase 1"),

(37598,0,6,0,1,1,100,0,1000,1100,30000,30100,11,70256,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gas stream"),
(37598,0,7,0,1,1,100,0,20000,20100,30000,30100,11,70259,7,0,0,0,0,1,0,0,0,0,0,0,0,"Esplosione"),
(37598,0,8,0,1,1,100,0,29000,29100,30000,30100,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Esplosione"),
(37598,0,9,0,1,1,100,0,30000,30100,30000,30100,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fase 0");

UPDATE creature_template_addon SET auras = "" WHERE entry = 37602;

DELETE FROM `creature` WHERE `id` = 37602 AND `phaseMask` = 4;
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('37602','648','1','4','0','37602','-8391.5','1321.86','102.52','2.57794','300','0','0','102','0','0','0','0','0');

-- Life savings
DELETE FROM `creature` WHERE `id` = 35222 AND `phaseMask` = 4;
REPLACE INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('35222','648','1','4','0','35222','-7881.89','1836.87','4.18856','3.31935','300','0','0','774900','44120','0','0','134250496','0');

UPDATE quest_template SET flags = 128, RewardSpellcast = 0 WHERE id = 14126;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=35222);
DELETE FROM smart_scripts WHERE entryorguid = 35222;
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(35222,0,1,0,20,0,100,0,14126,0,0,0,68,22,0,0,0,0,0,21,10,0,0,0,0,0,0,"Filmato"),
(35222,0,3,2,20,0,100,0,14126,0,0,0,62,1,0,0,0,0,0,21,10,0,0,1497,-4418,26.60,0.17,"Teleport alle Lost Isle"),
(35222, 0, 4, 3, 20, 0, 100, 0, 14126, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, "Leva aura phase 4");