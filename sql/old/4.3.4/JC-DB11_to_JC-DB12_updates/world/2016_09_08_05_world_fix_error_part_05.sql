-- Update and Fixed Errors in Database world
-- By Bodeguero for JadeCore.

DELETE FROM `creature_loot_template` WHERE `entry`='47296' and`item`='63473';
DELETE FROM `creature_loot_template` WHERE `entry`='47296' and`item`='63474';
DELETE FROM `creature_loot_template` WHERE `entry`='47296' and`item`='63475';
DELETE FROM `creature_loot_template` WHERE `entry`='47296' and`item`='63476';
DELETE FROM `creature_loot_template` WHERE `entry`='47296' and`item`='65164';
DELETE FROM `creature_loot_template` WHERE `entry`='47162' and`item`='63467';
DELETE FROM `creature_loot_template` WHERE `entry`='47162' and`item`='63468';
DELETE FROM `creature_loot_template` WHERE `entry`='47162' and`item`='63470';
DELETE FROM `creature_loot_template` WHERE `entry`='47162' and`item`='63471';
DELETE FROM `creature_loot_template` WHERE `entry`='47162' and`item`='65163';
DELETE FROM `creature_loot_template` WHERE `entry`='43778' and`item`='65165';
DELETE FROM `creature_loot_template` WHERE `entry`='43778' and`item`='65166';
DELETE FROM `creature_loot_template` WHERE `entry`='43778' and`item`='65167';
DELETE FROM `creature_loot_template` WHERE `entry`='47626' and`item`='65170';
DELETE FROM `creature_loot_template` WHERE `entry`='47626' and`item`='21524';
DELETE FROM `creature_loot_template` WHERE `entry`='47626' and`item`='22206';
DELETE FROM `creature_loot_template` WHERE `entry`='47626' and`item`='44731';
DELETE FROM `creature_loot_template` WHERE `entry`='47626' and`item`='65168';
DELETE FROM `creature_loot_template` WHERE `entry`='47626' and`item`='65169';
DELETE FROM `creature_loot_template` WHERE `entry`='47739' and`item`='65171';
DELETE FROM `creature_loot_template` WHERE `entry`='47739' and`item`='65172';
DELETE FROM `creature_loot_template` WHERE `entry`='47739' and`item`='65173';
DELETE FROM `creature_loot_template` WHERE `entry`='47739' and`item`='65174';
DELETE FROM `creature_loot_template` WHERE `entry`='47739' and`item`='65177';
-- Hunter Camouflage Remove on Pick Flag
DELETE FROM spell_linked_spell WHERE spell_trigger=51753;
REPLACE INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(51753,-23335,0, 'Drop Flag on Camouflage At WSG'),
(51753,-34976, 0, 'Drop Flag on Camouflage At EOS');


REPLACE INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(23335,-51753,0, 'Drop Flag on Camouflage At WSG'),
(34976,-51753, 0, 'Drop Flag on Camouflage At EOS');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('45524', 'spell_dk_chains_of_ice');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('58621', 'spell_dk_glyph_chains_of_ice');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('635', 'spell_pal_avenging_wrath_heal_bonus');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('19750', 'spell_pal_avenging_wrath_heal_bonus');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('20473', 'spell_pal_avenging_wrath_heal_bonus');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('53563', 'spell_pal_avenging_wrath_heal_bonus');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('82326', 'spell_pal_avenging_wrath_heal_bonus');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('82327', 'spell_pal_avenging_wrath_heal_bonus');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('85673', 'spell_pal_avenging_wrath_heal_bonus');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('86452', 'spell_pal_avenging_wrath_heal_bonus');-- High Priest Venoxis
UPDATE `creature_template` SET `lootid` = 52155 WHERE `entry` = 52155;
 
DELETE FROM `creature_loot_template` WHERE `Entry` = 52155;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(52155, 521550, 521550, 100, 1, 1, 1);
 
DELETE FROM `reference_loot_template` WHERE `Entry` = 521550;
REPLACE INTO `reference_loot_template` (`Entry`, `Item`, `Chance`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) VALUES
(521550, 69600, 0, 1, 1, 1, 1), -- Belt of Slithering Serpents
(521550, 69603, 0, 1, 1, 1, 1), -- Breastplate of Serenity
(521550, 69604, 0, 1, 1, 1, 1), -- Coils of Hate
(521550, 69601, 0, 1, 1, 1, 1), -- Serpentine Leggings
(521550, 69602, 0, 1, 1, 1, 1); -- Signet of Venoxis
 
-- Bloodlord Mandokir
UPDATE `creature_template` SET `lootid` = 52151 WHERE `entry` = 52151;
 
DELETE FROM `creature_loot_template` WHERE `entry`= 52151;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(52151, 521510, 521510, 100, 1, 1, 1);
 
DELETE FROM `reference_loot_template` WHERE `Entry` = 521510;
REPLACE INTO `reference_loot_template` (`Entry`, `Item`, `Chance`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) VALUES
(521510, 69605, 0, 1, 1, 1, 1), -- Amulet of the Watcher
(521510, 69609, 0, 1, 1, 1, 1), -- Bloodlord's Protector
(521510, 69608, 0, 1, 1, 1, 1), -- Deathcharged Wristguards
(521510, 69606, 0, 1, 1, 1, 1), -- Hakkari Loa Drape
(521510, 69607, 0, 1, 1, 1, 1), -- Touch of Discord
(521510, 68823, 1, 1, 2, 1, 1); -- Amored Razzashi Raptor MountDELETE FROM spell_bonus_data WHERE entry=23922;
REPLACE INTO `spell_bonus_data`  VALUES (23922, 0, 0, 0.6, 0, 'warrior- shield slam');
-- High Priest Venoxis
UPDATE `creature_template` SET `lootid` = 52155 WHERE `entry` = 52155;
DELETE FROM `creature_loot_template` WHERE `Entry` = 52155;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(52155, -52155, 99, 1, 1, -52155, 1);
DELETE FROM `reference_loot_template` WHERE `Entry` = 52155;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxCount`) VALUES
(52155, 69600, 23, 1, 1, 1, 1), -- Belt of Slithering Serpents
(52155, 69603, 15, 1, 1, 1, 1), -- Breastplate of Serenity
(52155, 69604, 15, 1, 1, 1, 1), -- Coils of Hate
(52155, 69601, 23, 1, 1, 1, 1), -- Serpentine Leggings
(52155, 69602, 23, 1, 1, 1, 1); -- Signet of Venoxis
 
-- Bloodlord Mandokir
UPDATE `creature_template` SET `lootid` = 52151 WHERE `entry` = 52151;
DELETE FROM `creature_loot_template` WHERE `entry`= 52151;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(52151, -52151, 99, 1, 1, -52151, 1);
DELETE FROM `reference_loot_template` WHERE `Entry` = 52151;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxCount`) VALUES
(52151, 69605, 20.1994, 1, 1, 1, 1), -- Amulet of the Watcher
(52151, 69609, 16.4335, 1, 1, 1, 1), -- Bloodlord's Protector
(52151, 69608, 20.6003, 1, 1, 1, 1), -- Deathcharged Wristguards
(52151, 69606, 11.063, 1, 1, 1, 1), -- Hakkari Loa Drape
(52151, 69607, 19.429, 1, 1, 1, 1), -- Touch of Discord
(52151, 68823, 1.0358, 1, 2, 1, 1); -- Amored Razzashi Raptor Mount 
-- remove invisible mobs from Hour Of Twilight dungeon  who was make trouble to players
DELETE FROM creature WHERE id IN (54560,57197,54646,55466,55445,32639,55389,55384,55385,54522,54599,54644,54628) AND map=940;
-- to avoid fight between thrall and boss Archbishop Benedictus
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE (`entry`='54971');
-- add right phase to trall for quest 30103 inside of map 940
UPDATE `creature` SET `phaseMask`='1' WHERE (`guid`='274298'); 
DELETE FROM spell_linked_spell WHERE spell_trigger=86150;/*								SCRIPTS ARE NOT FOR FREE
***********************************************************************************
//////////////////////										//////////////////////*
//////////////////////		Scripts made by MAYOR 			//////////////////////*
//////////////////////	blizzlike fixes for WowSource V9 DB	//////////////////////*
//////////////////////			 							//////////////////////*	
//////////////////////		For more scripst Contac me 		//////////////////////*		
//////////////////////		yurialicia2012@gmail.com        //////////////////////*	
***********************************************************************************

*/

 
-- SAI VARIABLES
SET @MORTUS			 := 44615; 
SET @SYLVANAS		 := 44365;
SET @AGATHA			 := 44608;
SET @GARROSH		 := 44629;
SET @CROMUSH		 := 44640;
SET @FALLENHUMAN	 := 44592;
SET @PORTAL			 := 44630;
SET @QUEST			 := 26965;
SET @HELLSCREAMELITE := 44636;
SET @FORSAKEN_TRUPER := 44596;
SET @SPELL1			 := 83173; -- Spell Raise Forsaken
SET @SPELL2          := 55761; -- Air Revenant Entrance
SET @QUEST_QREDIT    := 83384; -- SPELL QUEST CREDIT
SET @SPELL4          := 12980; -- Simple Teleport
SET @TRIGER1		 := 144951; -- TRIGER DE LOS FALLEN HUMAN
SET @TRIGER2		 := 144953; -- TRIGER DE LOS FALLEN HUMAN


-- SCRIPTS VARIABLES +00
SET @SCRIPT_MORTUS 		:= @MORTUS*100;
SET @SCRIPT_SYLVANAS 	:= @SYLVANAS*100;
SET @SCRIPT_AGATHA 		:= @AGATHA*100;
SET @SCRIPT_GARROSH	    := @GARROSH*100;
SET @SCRIPT_CROMUSH	    := @CROMUSH*100;
SET @SCRIPT_FALLENHUMAN := @FALLENHUMAN*100;

-- Equipment for Garrosh And Elites
DELETE FROM `creature_equip_template` WHERE (`entry`=@GARROSH);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)
 VALUES (@GARROSH, 1, 30414, 0, 0);
DELETE FROM `creature_equip_template` WHERE (`entry`=@HELLSCREAMELITE);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)
 VALUES (@HELLSCREAMELITE, 1, 10612, 0, 0);
DELETE FROM `creature_equip_template` WHERE (`entry`=@CROMUSH);
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)
 VALUES (@CROMUSH, 1, 30414, 0, 0);

-- Bist para Ascla y Arthura esto hace q se queden volando
DELETE FROM `creature_template_addon` WHERE (`entry`=44609);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44609, '', 0, 50331648, 1, 0, '');
DELETE FROM `creature_template_addon` WHERE (`entry`=44610);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (44610, '', 0, 50331648, 1, 0, '');
-- AGATA LOCATIOn
DELETE FROM `creature` WHERE (`guid`=25764);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (25764, 44608, 0, 1, 1, 33996, 0, 1364, 1028, 55, 0.715585, 300, 0, 0, 9030, 6520, 0, 0, 0, 0);

-- Aura de agata q no se dejava ver
DELETE FROM `creature_addon` WHERE (`guid`=25764);
-- Creature template Update field Para SAI
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@MORTUS;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@SYLVANAS;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@AGATHA;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@GARROSH;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@CROMUSH;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@FALLENHUMAN;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@PORTAL;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@HELLSCREAMELITE;
-- DELETE SAI ANTERIORES
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MORTUS AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SYLVANAS AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@AGATHA AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GARROSH AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CROMUSH AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@FALLENHUMAN AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@PORTAL AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@HELLSCREAMELITE AND `source_type`=0;

-- DELETE SCRIPTS AENTERIORES 
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_MORTUS AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_SYLVANAS AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_AGATHA AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_GARROSH AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_CROMUSH AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SCRIPT_FALLENHUMAN AND `source_type`=9;


-- Grand Executor Mortuus SAI Grand Executor Mortuus
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)
 VALUES
(@MORTUS,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@SCRIPT_MORTUS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Executor Mortuus - On Quest 'The Warchief Cometh' Taken - Run Script"),
(@SCRIPT_MORTUS,9,0,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@SYLVANAS,50,0,0,0,0,0,"Grand Executor Mortuus - On Script - Set Data 0 1"),
(@SCRIPT_MORTUS,9,1,0,0,0,100,0,5000,5000,0,0,12,@PORTAL,3,174000,0,0,0,8,0,0,0,1358.62,1054.72,53.12,0,"Grand Executor Mortuus - On Script - Summon Creature 'Portal from Orgrimmar'"),
(@SCRIPT_MORTUS,9,2,0,0,0,100,0,0,0,0,0,12,@PORTAL,3,174000,0,0,0,8,0,0,0,1393.27,1021.2,53.2225,0,"Grand Executor Mortuus - On Script - Summon Creature 'Portal from Orgrimmar'"),
(@SCRIPT_MORTUS,9,3,0,0,0,100,0,0,0,0,0,12,@PORTAL,3,174000,0,0,0,8,0,0,0,1404.71,1063.73,60.5617,0,"Grand Executor Mortuus - On Script - Summon Creature 'Portal from Orgrimmar'"),
(@SCRIPT_MORTUS,9,4,0,0,0,100,0,3000,3000,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,0.9,1029.71,53.2185,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"), 
(@SCRIPT_MORTUS,9,5,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1389.79,1024.51,53.2083,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,6,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1388.05,1026.91,53.2083,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,7,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1388.16,1020.88,53.2552,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,8,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1385.79,1025.99,53.2259,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,9,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1386.69,1023.26,53.2439,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,10,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1384.33,1022.04,53.2812,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,11,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1391.1,1027.73,53.2048,2.82743,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,12,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1359.1,1046.55,52.9705,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,13,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1360.89,1051.81,53.1979,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,14,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1360.75,1048.84,53.1289,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,15,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1364.43,1053.62,53.2934,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,16,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1363.08,1048.15,53.2222,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,17,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1364.08,1050.84,53.2916,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,18,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1366.69,1050.31,53.342,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"),
(@SCRIPT_MORTUS,9,19,0,0,0,100,0,0,0,0,0,12,@HELLSCREAMELITE,3,170000,0,0,0,8,0,0,0,1357.85,1050.12,52.9982,5.25344,"Grand Executor Mortuus - On Script - Summon Creature 'Hellscream's Elite'"), 
(@SCRIPT_MORTUS,9,20,0,0,0,100,0,0,0,0,0,12,@GARROSH,3,170000,0,0,0,8,0,0,0,1399.31,1064.2,60.5617,3.92699,"Grand Executor Mortuus - On Script - Summon Creature 'Garrosh Hellscream'"), -- FIXED By MAYOR
(@SCRIPT_MORTUS,9,21,0,0,0,100,0,0,0,0,0,12,@CROMUSH,3,170000,0,0,0,8,0,0,0,1366.92,1054.46,53.1978,5.62373,"Grand Executor Mortuus - On Script - Summon Creature 'High Warlord Cromush'"), -- FIXED By MAYOR
(@SCRIPT_MORTUS,9,22,0,0,0,100,0,167000,167000,0,0,11,@QUEST_QREDIT,0,0,0,0,0,7,0,0,0,0,0,0,0,"Grand Executor Mortuus - On Script - Cast quest credit'"), -- FIXED By MAYOR
-- Lady Sylvanas Windrunner SAI
(@SYLVANAS,0,0,0,38,0,100,0,0,1,0,0,80,@SCRIPT_SYLVANAS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Data Set 0 1 - Run Script"),
(@SCRIPT_SYLVANAS,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 0"),
(@SCRIPT_SYLVANAS,9,1,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner -  - Say Line 1"),
(@SCRIPT_SYLVANAS,9,2,0,0,0,100,0,25000,25000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 2"),
(@SCRIPT_SYLVANAS,9,3,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 3"), 
(@SCRIPT_SYLVANAS,9,4,0,0,0,100,0,16000,16000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 4"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,5,0,0,0,100,0,8000,8000,8000,8000,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 5"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,6,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 6"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,7,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 7"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,8,0,0,0,100,0,10000,10000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 8"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,9,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,11,@AGATHA,150,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Set Data 0 1"), -- FIXED By MAYOR
(@SCRIPT_SYLVANAS,9,10,0,0,0,100,0,32000,32000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 9"),
(@SCRIPT_SYLVANAS,9,11,0,0,0,100,0,20000,20000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lady Sylvanas Windrunner - On Script - Say Line 10"), 
-- Agatha SAI  
(@AGATHA,0,0,0,38,0,100,0,0,1,0,0,80,@SCRIPT_AGATHA,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agatha - On Data Set 0 1 - Run Script"),
(@SCRIPT_AGATHA,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1363.66,1028.2,64.706,0.686,"Agatha - On Script - Move To Position"), -- FIXED By MAYOR
(@SCRIPT_AGATHA,9,1,0,0,0,100,0,3000,3000,3000,3000,69,0,0,0,0,0,0,8,0,0,0,1370.7,1033.03,59.019,0.667,"Agatha - On Script - Move To Position"), -- FIXED By MAYOR
(@SCRIPT_AGATHA,9,2,0,0,0,100,0,6200,6200,0,0,11,83173,0,0,0,0,0,9,44592,0,100,0,0,0,0,"Agatha - On Script - Cast 'Raise Forsaken'"), -- FIXED By MAYOR
(@SCRIPT_AGATHA,9,3,0,0,0,100,0,8000,8000,0,0,69,0,0,0,0,0,0,8,0,0,0,1364,1028,55,0.855,"Agatha - On Script - Move To Position"), -- FIXED By MAYOR
(@SCRIPT_AGATHA,9,4,0,0,0,100,0,7300,7300,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.855,"Agatha - On Script - Set Orientation 0,855"), -- FIXED By MAYOR
-- Fallen Human SAI
(@FALLENHUMAN,0,0,0,8,0,100,0,83173,0,0,0,80,@SCRIPT_FALLENHUMAN,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Spellhit - Cast Spell Raise Forsaken' - Run Script"),
(@SCRIPT_FALLENHUMAN,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,19,@TRIGER1,15,0,0,0,0,0,"Fallen Human - On Script - Move To Closest Creature 'Invisible Trigger One'"),
(@SCRIPT_FALLENHUMAN,9,1,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,19,@TRIGER2,15,0,0,0,0,0,"Fallen Human - On Script - Move To Closest Creature 'Invisible Trigger One'"),
(@SCRIPT_FALLENHUMAN,9,2,0,0,0,100,0,2000,2000,0,0,12,@FORSAKEN_TRUPER,3,30000,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Summon Creature 'Forsaken Trooper'"),
(@SCRIPT_FALLENHUMAN,9,3,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fallen Human - On Script - Despawn Instant"),
-- Garrosh Hellscream SAI
(@GARROSH,0,0,0,54,0,100,0,0,0,0,0,80,@SCRIPT_GARROSH,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Just Summoned - Run Script"),
(@SCRIPT_GARROSH,9,0,0,0,0,100,0,0,0,0,0,11,96441,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Cast 'Thermalsprung JUMP'"), -- ACTION JUMP POSITION is not working -- FIXED By MAYOR
(@SCRIPT_GARROSH,9,1,0,0,0,100,0,3100,3100,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 0"),
(@SCRIPT_GARROSH,9,2,0,0,0,100,0,13000,13000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 1"),
(@SCRIPT_GARROSH,9,3,0,0,0,100,0,32000,32000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 2"),
(@SCRIPT_GARROSH,9,4,0,0,0,100,0,47000,47000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 3"),
(@SCRIPT_GARROSH,9,5,0,0,0,100,0,22000,22000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 4"),
(@SCRIPT_GARROSH,9,6,0,0,0,100,0,5500,5500,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 5"),
(@SCRIPT_GARROSH,9,7,0,0,0,100,0,12000,12000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 6"),
(@SCRIPT_GARROSH,9,8,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 7"),
(@SCRIPT_GARROSH,9,9,0,0,0,100,0,16000,16000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Say Line 8"),
(@SCRIPT_GARROSH,9,10,0,0,0,100,0,11000,11000,0,0,69,0,0,0,0,0,0,8,0,0,0,1351.29,1045.22,52.292,0,"Garrosh Hellscream - On Script - Move To Position"), 
(@SCRIPT_GARROSH,9,11,0,0,0,100,0,170000,170000,0,0,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Garrosh Hellscream - On Script - Cast 'Simple Teleport'"), -- FIXED By MAYOR
-- High Warlord Cromush SAI
(@CROMUSH,0,0,0,54,0,100,0,0,0,0,0,80,@SCRIPT_CROMUSH,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush - On Just Summoned - Run Script"),
(@SCRIPT_CROMUSH,9,0,0,0,0,100,0,0,0,0,0,53,0,4464000,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush - On Script - Start Waypoint"), 
(@SCRIPT_CROMUSH,9,1,0,0,0,100,0,95000,95000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush - On Script - Say Line 0"), -- FIXED By MAYOR
(@SCRIPT_CROMUSH,9,2,0,0,0,100,0,60000,60000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"High Warlord Cromush - On Script - Say Line 1"), -- FIXED By MAYOR
-- Portal from Orgrimmar SAI
(@PORTAL,0,0,0,54,0,100,0,0,0,0,0,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Portal from Orgrimmar - On Just Summoned - Cast 'Air Revenant Entrance'"),
-- Hellscream's Elite SAI
(@HELLSCREAMELITE,0,0,0,54,0,100,0,0,0,0,0,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hellscream's Elite - On Just Summoned - Cast 'Simple Teleport'"),
(@HELLSCREAMELITE,0,1,0,60,0,100,0,169000,169000,169000,169000,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hellscream's Elite - On Update - Cast 'Simple Teleport'");
/*	
							SCRIPTS ARE NOT FOR FREE
***********************************************************************************
//////////////////////										//////////////////////*
//////////////////////			Scripts made by MAYOR 		//////////////////////*
//////////////////////	blizzlike fixes for WowSource V9 DB	//////////////////////*
//////////////////////			  WowSource V9 DB			//////////////////////*	
//////////////////////		For more scripst Contac me 		//////////////////////*		
//////////////////////		yurialicia2012@gmail.com        //////////////////////*	
***********************************************************************************

*/

SET @YORICK			:= 44882;
SET @IVAR 		    := 44884;
SET @CROWLY 		:= 44883;
SET @SPELL1			:= 34189; -- SPELL Stealth
SET @SPELL2			:= 46598; -- SPELL Ride Vehicle Hardcoded
SET @SPELL3		    := 80743; -- SPELL Eject Passenger 1
SET @SPELL4			:= 83788; -- SPELL Hide in Aimore
SET @QUEST 			:= 27045;
SET @AIMORE 		:= 44894;
SET @AIMORE2		:= 44893;

SET @YORICK_SCRIPT	:= @YORICK*100;
SET @YORICK_SCRIPT2	:= @YORICK*101;
SET @IVAR_SCRIPT	:= @IVAR*100;
SET @CROWLY_SCRIPT	:= @CROWLY*100;

-- REQUERIMIENDO CORRECTO
UPDATE quest_template SET CompletedText="",ObjectiveText1="Learn of Darius Crowley's Plans" WHERE Id=@QUEST;


-- Disminuido el tamaño del aimore para poder el spell de la camara recto
-- Añadido el flag para q el aimore 1 se pudiera targetiar 
-- Quitado el quest giver flag que tenia Yorick
UPDATE creature_template SET scale=0.5 WHERE entry=@AIMORE2;
UPDATE creature_template SET npcflag=1 WHERE entry=@AIMORE;
UPDATE creature_template SET npcflag=0 WHERE entry=@YORICK;
-- UPDATE creature comportamiento en template 
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@YORICK;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@IVAR;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@CROWLY;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@AIMORE;
-- Borrados antiguos SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=@YORICK AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IVAR AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CROWLY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@AIMORE AND `source_type`=0;
-- Borado de los scripts
DELETE FROM `smart_scripts` WHERE `entryorguid`=@YORICK_SCRIPT AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IVAR_SCRIPT AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CROWLY_SCRIPT AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@YORICK_SCRIPT2 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@YORICK_SCRIPT1 AND `source_type`=9;
-- SAI Y SCRIPT DE LAS CREATURAS Q INTERVIENE EN EL QUEST
-- Deathstalker Rane Yorick SAI
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@YORICK,0,0,0,54,0,100,0,0,0,0,0,80,@YORICK_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Just Summoned - Run Script"),
(@YORICK,0,1,0,38,0,100,0,0,1,0,0,80,@YORICK_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Data Set 0 1 - Run Script"),
(@YORICK_SCRIPT,9,0,0,0,0,100,0,0,0,0,0,53,0,@YORICK_SCRIPT,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Start Waypoint"),
(@YORICK_SCRIPT,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Say Line 0"),
(@YORICK_SCRIPT,9,2,0,0,0,100,0,35000,35000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Say Line 1"),
(@YORICK_SCRIPT,9,3,0,0,0,100,0,500,500,0,0,11,34189,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Cast 'Stealth'"),
(@YORICK_SCRIPT,9,4,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.65,"Deathstalker Rane Yorick - On Script - Set Orientation 5,65"),-- FIXED BY MAYPR
(@YORICK_SCRIPT,9,5,0,0,0,100,0,2000,2000,2000,2000,12,@CROWLY,3,180000,0,0,0,8,0,0,0,1299.36,1206.64,58.5706,0,"Deathstalker Rane Yorick - On Script - Summon Creature 'Lord Darius Crowley'"),
(@YORICK_SCRIPT,9,6,0,0,0,100,0,0,0,0,0,12,@IVAR,3,180000,0,0,0,8,0,0,0,1296.2,1210.54,58.5533,0,"Deathstalker Rane Yorick - On Script - Summon Creature 'Packleader Ivar Bloodfang'"),
(@YORICK_SCRIPT2,9,0,0,0,0,100,0,0,0,0,0,11,@SPELL2,0,0,0,0,0,11,@IVAR,15,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Cast 'Ride Vehicle Hardcoded'"),
(@YORICK_SCRIPT2,9,1,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Say Line 2"),
(@YORICK_SCRIPT2,9,3,0,0,0,100,0,0,0,0,0,97,15,15,0,0,0,0,8,0,0,0,1296.29,1206.47,58.5,0,"Deathstalker Rane Yorick - On Script - Jump To Pos"),
(@YORICK_SCRIPT2,9,4,0,0,0,100,0,1000,1000,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Kill Self"),
(@YORICK_SCRIPT2,9,5,0,0,0,100,0,0,0,0,0,33,@YORICK,0,0,0,0,0,7,0,0,0,0,0,0,0,"Deathstalker Rane Yorick - On Script - Quest Credit 'Waiting to Exsanguinate'"),-- FIXED BY MAYOR

-- Packleader Ivar Bloodfang SAI
(@IVAR,0,0,0,54,0,100,0,0,0,0,0,80,@IVAR_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Just Summoned - Run Script"),
(@IVAR_SCRIPT,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1308.4,1206.28,58.5109,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,1,0,0,0,100,0,15500,15500,15500,15500,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 0"),
(@IVAR_SCRIPT,9,2,0,0,0,100,0,31000,31000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 1"),
(@IVAR_SCRIPT,9,3,0,0,0,100,0,11000,11000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 2"),
(@IVAR_SCRIPT,9,4,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 3"),
(@IVAR_SCRIPT,9,5,0,0,0,100,0,17000,17000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 4"),
(@IVAR_SCRIPT,9,6,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,1312.2,1208.56,58.51,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,7,0,0,0,100,0,2000,2000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 5"),
(@IVAR_SCRIPT,9,8,0,0,0,100,0,5000,5000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 6"),
(@IVAR_SCRIPT,9,9,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,1313.58,1210.62,58.51,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,10,0,0,0,100,0,3000,3000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 7"),
(@IVAR_SCRIPT,9,11,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,11,@YORICK,10,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Set Data 0 1"),
(@IVAR_SCRIPT,9,12,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1309.41,1206.23,58.51,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,13,0,0,0,100,0,3000,3000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 8"),
(@IVAR_SCRIPT,9,14,0,0,0,100,0,11000,11000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 9"),-- FIXED BY MAYOR
(@IVAR_SCRIPT,9,15,0,0,0,100,0,0,0,0,0,11,@SPELL3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Cast 'Eject Passenger 1'"),
(@IVAR_SCRIPT,9,16,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,11,44883,30,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Set Orientation Closest Creature 'Lord Darius Crowley'"),
(@IVAR_SCRIPT,9,17,0,0,0,100,0,1000,1000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Say Line 10"),
(@IVAR_SCRIPT,9,18,0,0,0,100,0,7000,7000,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Set Run On"),
(@IVAR_SCRIPT,9,19,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1297.07,1212.5,58.49,0,"Packleader Ivar Bloodfang - On Script - Move To Position"),
(@IVAR_SCRIPT,9,20,0,0,0,100,0,3000,3000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Packleader Ivar Bloodfang - On Script - Despawn Instant"),
-- Crowly SCRIPT
(@CROWLY,0,0,0,54,0,100,0,0,0,0,0,80,@CROWLY_SCRIPT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Just Summoned - Run Script"),
(@CROWLY_SCRIPT,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,1313.48,1206.09,58.5119,0,"Lord Darius Crowley - On Script - Move To Position"),
(@CROWLY_SCRIPT,9,1,0,0,0,100,0,8000,8000,8000,8000,66,0,0,0,0,0,0,11,@IVAR,30,0,0,0,0,0,"Lord Darius Crowley - On Script - Set Orientation Closest Creature 'Packleader Ivar Bloodfang'"),
(@CROWLY_SCRIPT,9,2,0,0,0,100,0,5000,5000,5000,5000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Say Line 0"),
(@CROWLY_SCRIPT,9,3,0,0,0,100,0,19000,19000,19000,19000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Say Line 1"),
(@CROWLY_SCRIPT,9,4,0,0,0,100,0,8000,8000,8000,8000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Say Line 2"),
(@CROWLY_SCRIPT,9,5,0,0,0,100,0,29000,29000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Say Line 3"),
(@CROWLY_SCRIPT,9,6,0,0,0,100,0,52000,52000,0,0,69,0,0,0,0,0,0,8,0,0,0,1297.23,1212.63,58.58,0,"Lord Darius Crowley - On Script - Move To Position"),
(@CROWLY_SCRIPT,9,7,0,0,0,100,0,4000,4000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - On Script - Despawn Instant"),
(@AIMORE,0,0,0,64,0,100,0,0,0,0,0,86,@SPELL4,0,7,0,0,0,19,@AIMORE2,10,0,0,0,0,0,"Armoire - On Gossip Hello - Cross Cast 'HIDE AIMORE'");
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('57755', 'spell_warr_glyph_of_heroic_throw');REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('45477', 'spell_dk_merciless_combat'); -- Icy toush
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('49184', 'spell_dk_merciless_combat'); -- Howling Blast
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('49020', 'spell_dk_merciless_combat'); -- Obliterate
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('49143', 'spell_dk_merciless_combat'); -- Frost StrikeDELETE FROM `spell_bonus_data` WHERE `entry` IN (44457, 30455, 83853);
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('30455', 'spell_mage_ice_lance');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('44457', 'spell_mage_living_bomb_tic');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('83853', 'spell_mage_combustion_tic');







UPDATE `creature_template` SET `ScriptName`='npc_sassy_handwrench' WHERE `entry`='37680';