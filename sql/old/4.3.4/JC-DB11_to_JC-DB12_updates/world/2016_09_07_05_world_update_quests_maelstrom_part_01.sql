-- Update and Fixed Maelstrom Quests.
-- By Bodeguero for JadeCore.

-- Fix The Eye of the Storm (28805, 28826)
-- Waters of Farseeing SAI
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `ScriptName`='' WHERE `entry` IN (207414, 207416);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (207414, 207416) AND `source_type`=1;
INSERT INTO `smart_scripts` 
(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(207414, 1, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 33, 50054, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waters of Farseeing - On gossip hello - Killcredit'),
(207414, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 94687, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waters of Farseeing - On link - Remove Waters of Farseeing'),
(207416, 1, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 33, 50054, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waters of Farseeing - On gossip hello - Killcredit'),
(207416, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 94687, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Waters of Farseeing - On link - Remove Waters of Farseeing');


-- Fixed Quest The Maelstrom (27203)
-- Spawn Portals to the Maelstrom
DELETE FROM `gameobject` WHERE `id`=205268;
INSERT INTO `gameobject` 
(`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `state`) VALUES 
(@, 205268, 1, 1, 1, 2048.06, -4377.16, 98.9305, 0, 300, 1), -- Orgrimmar
(@, 205268, 0, 1, 1, -8209.03, 428.774, 118.164, 2.84488, 300, 1); -- Stormwind City

DELETE FROM `spell_target_position` WHERE `id`=84464;
INSERT INTO `spell_target_position` 
(`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84464, 0, 730, 851.307, 1067.76, -10.0183, 4.50656); -- Teleport to the Maelstrom

DELETE FROM `conditions` WHERE `SourceEntry`=84464 AND `SourceTypeOrReferenceId`=17;
INSERT INTO `conditions` 
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 84464, 0, 0, 28, 0, 27203, 0, 0, 0, 0, '', 'Show gossip if complete quest 27203 taken');
-- Trall
UPDATE `creature` SET `modelid`=0 WHERE `id`=45042; -- Remove model id

-- Fix Deepholm, Realm of Earth (27123)
-- Wyvern SAI
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=43713;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=43713;
INSERT INTO `smart_scripts` VALUES
(43713, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 28, 46598, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On just summoned - Remove Ride Vehicle Hardcoded'),
(43713, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 84700, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On link - Cast Teleport to Temple of Earth'),
(43713, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On link - Force despawn');

DELETE FROM `spell_target_position` WHERE `id`=84700;
INSERT INTO `spell_target_position` 
(`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84700, 0, 646, 1076.78, 537.665, -44.5984, 3.38237); -- Teleport to Temple of Earth

DELETE FROM `conditions` WHERE `SourceGroup`=45005 AND `SourceTypeOrReferenceId`=18;
INSERT INTO `conditions` 
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 45005, 81780, 0, 0, 28, 0, 27123, 0, 0, 0, 0, '', 'Show gossip if complete quest 27123 taken');

-- Fix Deepholm, Realm of Earth (27123)
-- Wyvern SAI
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=43713;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=43713;
INSERT INTO `smart_scripts` VALUES
(43713, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 28, 46598, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On just summoned - Remove Ride Vehicle Hardcoded'),
(43713, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 84700, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On link - Cast Teleport to Temple of Earth'),
(43713, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wyvern - On link - Force despawn');

DELETE FROM `spell_target_position` WHERE `id`=84700;
INSERT INTO `spell_target_position` 
(`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84700, 0, 646, 1076.78, 537.665, -44.5984, 3.38237); -- Teleport to Temple of Earth

DELETE FROM `conditions` WHERE `SourceGroup`=45005 AND `SourceTypeOrReferenceId`=18;
INSERT INTO `conditions` 
(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 45005, 81780, 0, 0, 28, 0, 27123, 0, 0, 0, 0, '', 'Show gossip if complete quest 27123 taken');

-- Added Quest A Personal Summons to Hero's Call Board
DELETE FROM `gameobject_questrelation` WHERE `id` IN (206111, 206294) AND `quest`=28825;
INSERT INTO `gameobject_questrelation` 
(`id`, `quest`) VALUES 
(206111, 28825),
(206294, 28825);

-- Fixed Quest The Maelstrom (Alliance)
UPDATE `quest_template` SET `NextQuestId`=27203 WHERE `Id` IN (27722, 27727);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id`=27203;

-- Portal to the Maelstrom
UPDATE `gameobject_template` SET `AIName`='', `ScriptName`='', `data0`=84464 WHERE `entry`=205268;

-- Correct position
DELETE FROM `spell_target_position` WHERE `id`=84464;
INSERT INTO `spell_target_position` 
(`id`, `effIndex`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(84464, 0, 730, 851.307, 1067.76, -10.0183, 4.50656); -- Portal to the Maelstrom

-- Wyvern
UPDATE `creature_template` SET `AIName`='', `ScriptName`='', `npcflag`=16777216, `IconName`='vehichleCursor' WHERE `entry`=45005;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=45005;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(45005, 81780, 1, 0); -- Force Cast Summon Wyvern