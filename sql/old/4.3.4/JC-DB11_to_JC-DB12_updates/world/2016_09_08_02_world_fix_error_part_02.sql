-- Update and Fixed Errors in Database world
-- By Bodeguero for JadeCore.

-- A Giant's Feast ID 26600
DELETE FROM `npc_vendor` WHERE `entry` = 2664 AND `item` = 59036;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES (2664, 14, 59036);
DELETE FROM `creature_text` WHERE `entry` = 2491;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2491;
UPDATE `creature_template` SET `gossip_menu_id`=50004 WHERE (`entry`=2491);
REPLACE INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `comment`) VALUES (2491, 62, 50004, 1, 56, 59037, 1, 'Orgus - On Gossip - Say');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=2491);

-- Quest: Lycanthoth the Corruptor (25272)
DELETE FROM `event_scripts` WHERE `id`=24005;
INSERT INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`x`,`y`,`z`,`o`) VALUES
(24005,1,10,39446,120000,5132.08,-2307.12,1280.32,6.259);

UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=16,`faction_H`=16,`mindmg`=464,`maxdmg`=604,`attackpower`=708,`exp`=3,`baseattacktime`=2000,`minrangedmg`=353,`maxrangedmg`=512,`rangedattackpower`=112,`mingold`=15,`maxgold`=33,`AIName`='SmartAI',`InhabitType`=1 WHERE `entry`=39446;

DELETE FROM `creature_template_addon` WHERE `entry`=39446;
INSERT INTO `creature_template_addon`(`entry`,`auras`) VALUES
(39446,'74061');

DELETE FROM `smart_scripts` WHERE `entryorguid`=39446 AND `source_type`=0;
REPLACE INTO `smart_scripts`(`entryorguid`,`event_type`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(39446,0,8000,8000,18000,21000,11,37776,1,'Lycanthoth - In combat - Cast Blood Howl');


-- Ever So Lonely (Fixed Part 1)
UPDATE `quest_template` SET `RequiredNpcOrGo2`=0, `RequiredNpcOrGoCount2`=0 WHERE  `Id`=24974;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=1543;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=1544;

DELETE FROM `smart_scripts` WHERE  `entryorguid`=1543;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=1544;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1543, 0, 0, 0, 8, 0, 100, 0, 73108, 0, 0, 0, 33, 38923, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Spellhit - Give credit'),
(1543, 0, 1, 0, 8, 0, 100, 0, 73108, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Spellhit - Change factin'),
(1543, 0, 2, 0, 8, 0, 100, 0, 73108, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Spellhit - Despawn after 2 sec'),
(1544, 0, 0, 0, 8, 0, 100, 0, 73108, 0, 0, 0, 33, 38923, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - Give credit'),
(1544, 0, 1, 0, 8, 0, 100, 0, 73108, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Spellhit - Change factin'),
(1544, 0, 2, 0, 8, 0, 100, 0, 73108, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Spellhit - Despawn after 2 sec');

-- Rallying the Troops
UPDATE creature_template SET `AIName`='SmartAI' WHERE entry=26261;

DELETE FROM `smart_scripts` WHERE entryorguid=26261 AND event_param1=47394;
REPLACE INTO `smart_scripts` VALUES (26261, 0, 0, 0, 8, 0, 100, 0, 47394, 0, 0, 0, 33, 26261, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Spellhit call Killcredit for Q 12070');

-- Where the Wild Things Roam
-- Quest item will work only at Dragonblight and if the quest is incomplete!
DELETE FROM `conditions` WHERE SourceEntry=47627;
INSERT INTO `conditions` VALUES
(17,0,47627,0,0,9,0,12111,0,0,0,0, 0,'',NULL),
(17,0,47627,0,0,23,0,65,0,0,0,0, 0,'',NULL);
UPDATE `creature_template` SET AIName='SmartAI' WHERE entry IN (26615,26482);
DELETE FROM `creature_ai_scripts`WHERE creature_id IN (26615,26482);
DELETE FROM `smart_scripts` WHERE entryorguid IN (26615,26482);
REPLACE INTO `smart_scripts` VALUES
(26615,0,0,0,9,0,100,1,0,5,8000,12000,11,15976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Snowfall Elk - Cast Puncture'),
(26615,0,1,2,23,0,100,1,47628,1,1,1,11,47675,0,0,0,0,0,1,0,0,0,0,0,0,0,'Snowfall Elk - On Aura - Cast Recently Inoculated'),
(26615,0,2,3,61,0,100,1,0,0,0,0,33,26895,0,0,0,0,0,18,40,0,0,0,0,0,0,'Snowfall Elk - Event Linked - Credit'),
(26615,0,3,0,61,0,100,1,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Snowfall Elk - Event Linked - Despawn Delay 5 Seconds'),
(26482,0,0,1,23,0,100,1,47628,1,1,1,11,47675,0,0,0,0,0,1,0,0,0,0,0,0,0,'Arctic Grizzly - On Aura - Cast Recently Inoculated'),
(26482,0,1,2,61,0,100,1,0,0,0,0,33,26882,0,0,0,0,0,18,40,0,0,0,0,0,0,'Arctic Grizzly - Event Linked - Credit'),
(26482,0,2,0,61,0,100,1,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Arctic Grizzly - Event Linked - Despawn Delay 5 Seconds');


-- Quest 26583 Wrath of the Fungalmancer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43503');
DELETE FROM smart_scripts WHERE entryorguid IN (43503);
REPLACE INTO `smart_scripts` VALUES (43503, 0, 1, 2, 62, 0, 100, 0, 43503, 0, 0, 0, 33, 43503, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
REPLACE INTO `smart_scripts` VALUES (43503, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
REPLACE INTO `smart_scripts` VALUES (43503, 0, 5, 8, 61, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
REPLACE INTO `smart_scripts` VALUES (43503, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 43372, 6, 60, 0, 0, 0, 8, 0, 0, 0, 1669.90, -494.84, 151.78, 0.38, 'summon mob');

UPDATE `creature_template` SET `gossip_menu_id`='43503' WHERE (`entry`='43503');

DELETE FROM gossip_menu_option WHERE menu_id = 43503;
INSERT INTO gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) VALUES
(43503,0,"I m ready when you are. Norsala.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='43503') AND (`groupid`='1') AND (`id`='0');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('43503','1','0','Let s finish with this quickly. ','12','0','100','0','0','0','Life party');

-- Quest 26337 Beating the Market
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42777');
UPDATE `creature_template` SET `gossip_menu_id`='42777' WHERE (`entry`='42777');
delete from gossip_menu_option where menu_id = 42777;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(42777,0,"Nobody shorts Garrosh Hellscream. You finish those ships - and finish them right - or this get personal",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (42777) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(42777, 0, 1, 2, 62, 0, 100, 0, 42777, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mob change faction'),
(42777, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42777, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(42777, 0, 4, 0,  6, 0, 100, 0, 0, 0, 0, 0, 33, 42798, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0,"Credit after death");

DELETE FROM `creature_text` WHERE (`entry`='42777') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42777','1','0','Nobody tell me how to run my business here.','12','0','100','0','0','0','Enrage');
DELETE FROM `conditions` WHERE (`ConditionValue1`='26337');
INSERT INTO `conditions` VALUES (15, 42777, 0, 0, 0, 9, 0, 26337, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 26374 Ready the Ground Troops
UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`='1' WHERE (`entry`='42646');
UPDATE `creature_template` SET `gossip_menu_id`='42646' WHERE (`entry`='42646');
DELETE FROM gossip_menu_option WHERE menu_id = 42646;
INSERT INTO gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) VALUES
(42646,0,"AWOOOOOL",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (42646) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(42646, 0, 1, 2, 62, 0, 100, 0, 42646, 0, 0, 0, 27, 42646, 80017, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Player scream'),
(42646, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42646, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(42646, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 33, 42893, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0,"Credit"),
(42646, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

DELETE FROM `creature_text` WHERE (`entry`='42646') AND (`groupid`='1');
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
('42646','1','0','Please don t tell the Warlord...','12','0','100','0','0','0','Frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='26374');
INSERT INTO `conditions` VALUES (15, 42646, 0, 0, 0, 9, 0, 26374, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- honor challenge
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=30037;
DELETE FROM `smart_scripts` WHERE `entryorguid`=30037 AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30037,0,0,0,8,0,100,0,21855,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mjordin Combatant - set to phase 1 when aggroed by spell'),
(30037,0,1,0,6,1,100,0,0,0,0,0,33,30038,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Mjordin Combatant - give credit only when it has buff');

-- Eliminate the competition
SET @NPC_SIGRID        := 30086; -- Sigrid Iceborn
SET @MENUID_SIGRID     := 9870;
SET @NPC_EFREM         := 30081; -- Efrem the Faithful
SET @MENUID_EFREM      := 9869;
SET @NPC_ONUZUN        := 30180; -- Onu'zun
SET @MENUID_ONUZUN     := 9878;
SET @NPC_TINKY         := 30162; -- Tinky Wickwhistle
SET @MENUID_TINKY      := 9875;
UPDATE `creature_template` SET `npcflag`=1,`unit_flags`=33024,`AIName`='SmartAI' WHERE `entry` IN (@NPC_SIGRID,@NPC_EFREM,@NPC_ONUZUN,@NPC_TINKY);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@NPC_SIGRID,@NPC_EFREM,@NPC_ONUZUN,@NPC_TINKY);
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Sigrid Iceborn
(@NPC_SIGRID,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@NPC_SIGRID,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@NPC_SIGRID,0,2,0,4,1,100,1,0,0,0,0,11,61168,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw on Aggro'),
(@NPC_SIGRID,0,3,0,9,1,100,0,5,30,3500,4100,11,61168,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw'),
(@NPC_SIGRID,0,4,0,9,1,100,0,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Throw Range'),
(@NPC_SIGRID,0,5,0,9,1,100,0,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@NPC_SIGRID,0,6,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Throw Range'),
(@NPC_SIGRID,0,7,0,9,1,100,0,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Throw Range'),
(@NPC_SIGRID,0,8,0,0,1,100,0,3000,7000,13000,16700,11,61164,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Impale'),
(@NPC_SIGRID,0,9,0,13,1,100,0,12000,18000,0,0,11,57635,0,0,0,0,0,6,1,0,0,0,0,0,0,'Cast Disengage on Target Spellcast'),
(@NPC_SIGRID,0,10,0,1,0,100,0,500,1000,600000,600000,11,61165,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frostbite Weapon on Spawn'),
(@NPC_SIGRID,0,11,12,62,0,100,0,@MENUID_SIGRID,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Close gossip'),
(@NPC_SIGRID,0,12,13,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set invincible'),
(@NPC_SIGRID,0,13,14,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Remove flags 256+512'),
(@NPC_SIGRID,0,14,15,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set faction hostile'),
(@NPC_SIGRID,0,15,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_SIGRID,0,16,17,2,0,100,0,0,1,0,0,33,@NPC_SIGRID,0,0,0,0,0,7,0,0,0,0,0,0,0,'On 1 hp - Give killcredit'),
(@NPC_SIGRID,0,17,18,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Restore faction'),
(@NPC_SIGRID,0,18,19,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_SIGRID,0,19,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Evade'),
-- Efrem the Faithful
(@NPC_EFREM,0,0,0,1,0,100,0,500,1000,600000,600000,11,17232,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Devotion Aura on Spawn'),
(@NPC_EFREM,0,1,0,2,0,100,1,0,50,0,0,11,17233,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lay on Hands at 50% HP'),
(@NPC_EFREM,0,2,0,0,0,100,0,3300,5500,16000,17600,11,14518,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Crusader Strike'),
(@NPC_EFREM,0,3,0,0,0,80,0,9900,9900,21000,32000,11,13005,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Hammer of Justice'),
(@NPC_EFREM,0,4,5,62,0,100,0,@MENUID_EFREM,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Close gossip'),
(@NPC_EFREM,0,5,6,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set invincible'),
(@NPC_EFREM,0,6,7,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Remove flags 256+512'),
(@NPC_EFREM,0,7,8,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set faction hostile'),
(@NPC_EFREM,0,8,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_EFREM,0,9,10,2,0,100,0,0,1,0,0,33,@NPC_EFREM,0,0,0,0,0,7,0,0,0,0,0,0,0,'On 1 hp - Give killcredit'),
(@NPC_EFREM,0,10,11,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Restore faction'),
(@NPC_EFREM,0,11,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Evade'),
-- Onu'zun
(@NPC_ONUZUN,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@NPC_ONUZUN,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@NPC_ONUZUN,0,2,0,4,1,100,1,0,0,0,0,11,15242,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@NPC_ONUZUN,0,3,0,9,1,100,0,0,40,3400,4700,11,15242,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@NPC_ONUZUN,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@NPC_ONUZUN,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@NPC_ONUZUN,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@NPC_ONUZUN,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@NPC_ONUZUN,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@NPC_ONUZUN,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@NPC_ONUZUN,0,10,0,1,0,100,0,500,1000,600000,600000,11,18100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frost Armor on Spawn'),
(@NPC_ONUZUN,0,11,0,13,0,100,0,12000,18000,0,0,11,15122,0,0,0,0,0,6,1,0,0,0,0,0,0,'Cast Counterspell on Target Spellcast'),
(@NPC_ONUZUN,0,12,0,0,1,100,0,5000,5000,14500,17800,11,15244,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cone of Cold'),
(@NPC_ONUZUN,0,13,14,62,0,100,0,@MENUID_ONUZUN,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Close gossip'),
(@NPC_ONUZUN,0,14,15,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set invincible'),
(@NPC_ONUZUN,0,15,16,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Remove flags 256+512'),
(@NPC_ONUZUN,0,16,17,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set faction hostile'),
(@NPC_ONUZUN,0,17,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_ONUZUN,0,18,19,2,0,100,0,0,1,0,0,33,@NPC_ONUZUN,0,0,0,0,0,7,0,0,0,0,0,0,0,'On 1 hp - Give killcredit'),
(@NPC_ONUZUN,0,19,20,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Restore faction'),
(@NPC_ONUZUN,0,20,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Evade'),
-- Tinky Wickwhistle
(@NPC_TINKY,0,0,0,0,0,100,0,7000,8000,15600,17800,11,61552,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wrench Strike'),
(@NPC_TINKY,0,1,0,0,0,100,0,13000,14000,21300,23400,11,37666,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Heavy Dynamite'),
(@NPC_TINKY,0,2,3,62,0,100,0,@MENUID_TINKY,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Close gossip'),
(@NPC_TINKY,0,3,4,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set invincible'),
(@NPC_TINKY,0,4,5,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Remove flags 256+512'),
(@NPC_TINKY,0,5,6,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set faction hostile'),
(@NPC_TINKY,0,6,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_TINKY,0,7,8,2,0,100,0,0,1,0,0,33,@NPC_TINKY,0,0,0,0,0,7,0,0,0,0,0,0,0,'On 1 hp - Give killcredit'),
(@NPC_TINKY,0,8,9,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Restore faction'),
(@NPC_TINKY,0,9,10,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_TINKY,0,10,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Evade');
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_SIGRID,@NPC_EFREM,@NPC_ONUZUN,@NPC_TINKY);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_SIGRID,0,0,'Taste my steel, little $g boy : girl;!',12,0,100,0,0,0,'say'),
(@NPC_SIGRID,1,0,'You fight well, little one. I am bested for now. We will meet again I assure you. When we do I will be better prepared!',12,0,100,66,0,0,'say'),
(@NPC_EFREM,0,0,'You dare to touch ME?! You won''t keep me from proving myself to the Lich King!',12,0,100,0,0,0,'say'),
(@NPC_ONUZUN,0,0,'Onu''zun gonna kill you dead!',12,0,100,0,0,0,'say'),
(@NPC_TINKY,0,0,'Grrrrrrrr! I''ll kneecap ya!',12,0,100,0,0,0,'say'),
(@NPC_TINKY,1,0,'WHEE!!!',12,0,100,0,0,0,'say');

-- Blood in the Water
SET @RavenousJaws=29392;

UPDATE `creature_template` SET `ainame`='SmartAI' WHERE `entry`=@RavenousJaws;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=6509;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17,0,6509,0,0,1,1,47172,0,0,0,0,0,0,'Cast Gore Bladder only if Cosmetic - Underwater Blood (no sound) aura is active');
DELETE FROM `smart_scripts` WHERE `entryorguid`=@RavenousJaws AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@RavenousJaws,0,0,0,0,0,100,0,2000,5000,4000,7000,11,3391,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ravenous Jaws - In combat - cast Thrash'),
(@RavenousJaws,0,1,0,6,0,100,0,0,0,0,0,11,47172,2,0,0,0,0,1,0,0,0,0,0,0,0,'Ravenous Jaws - On death - cast Underwater Blood'),
(@RavenousJaws,0,2,3,8,0,100,0,6509,0,0,0,28,47172,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ravenous Jaws - On spell hit Gore Bladder - remove aura'),
(@RavenousJaws,0,3,0,61,0,100,0,0,0,0,0,33,29391,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ravenous Jaws - Link previous event - give quest credit');

-- Raise the Barricades
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=31887;
DELETE FROM `smart_scripts` WHERE `entryorguid`=31887 AND `source_type`=0;
REPLACE INTO `smart_scripts`(`entryorguid`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(31887,0,1,8,59925,88,3188700,3188702,1,'Ebon Blade Marker - On spell hit of Construct Barricade - Call random actionlist'),
(31887,1,2,61,0,33,31887,0,7,'Ebon Blade Marker - On spell hit of Construct Barricade - Give quest credit'),
(31887,2,0,61,0,41,0,0,1,'Ebon Blade Marker - On spell hit of Construct Barricade - Despawn');

DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 3188700 AND 3188702 AND `source_type`=9;
REPLACE INTO `smart_scripts`(`entryorguid`,`source_type`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(3188700,9,11,59922,1,'Ebon Blade Marker - Actionlist - Cast Summon Barricade A'),
(3188701,9,11,59923,1,'Ebon Blade Marker - Actionlist - Cast Summon Barricade B'),
(3188702,9,11,59924,1,'Ebon Blade Marker - Actionlist - Cast Summon Barricade C');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=59925;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUE
(13,1,59925,31,3,31887,'Construct Barricade - Target must be Ebon Blade Marker');

UPDATE `creature_addon` INNER JOIN `creature` ON `creature`.`guid`=`creature_addon`.`guid` SET `auras`='59919' WHERE `id`=31887;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id`=31887;

-- Slim Pickings
UPDATE `creature_template` SET `AIName` = 'SmartAI',`npcflag`=`npcflag`|1 WHERE `entry` =26809;

DELETE FROM `smart_scripts` WHERE `entryorguid`=26809 AND `event_type`IN (25,61,64);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(26809, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 31261, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ravaged Crystalline Ice Giant - On Spawn - Cast Permanent Feign Death (Root) on self'),
(26809, 0, 1, 2, 64, 0, 100, 0, 0, 0, 0, 0, 56, 36765, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ravaged Crystalline Ice Giant - On Hello - Add Sample of Rockflesh'),
(26809, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ravaged Crystalline Ice Giant - Linked with Previous Event - Close Gossip'),
(26809, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Ravaged Crystalline Ice Giant - Linked with Previous Event - Close Gossip - On No quest or complete');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` =26809;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,2,26809,0,0,9,0,12075,0,0,0,0,'','Ravaged Crystalline Ice Giant - Add Sample of Rockflesh only if player is on and has not completed slim pickings');
DELETE FROM creature_template WHERE entry IN (44470,44469,44468,44465,44464,44463,44461,44460,44459,44455,44427,35911,35554,35552,35551);
INSERT INTO `creature_template` VALUES (35551, 0, 0, 0, 0, 0, 29463, 0, 0, 0, 'Prince Liam Greymane', '', '', 0, 5, 5, 0, 0, 2173, 2173, 2, 1, 1.38571, 1, 1.38571, 1, 3, 13, 17, 0, 42, 35, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 169, 7, 264192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (35552, 0, 0, 0, 0, 0, 29694, 0, 0, 0, 'Lord Darius Crowley', '', '', 0, 10, 10, 0, 0, 2173, 2173, 3, 1, 1.14286, 1, 1.14286, 1, 1, 13, 17, 0, 42, 7.5, 1111, 2000, 1, 33024, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 262148, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 11, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 613097436, 0, 'npc_lord_darius_crowley_c2', 13623);
INSERT INTO `creature_template` VALUES (35554, 0, 0, 0, 0, 0, 30217, 30218, 30217, 30218, 'Shaken Survivor', '', '', 0, 10, 10, 0, 0, 2163, 2163, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (35911, 0, 0, 0, 0, 0, 29613, 0, 0, 0, 'King Genn Greymane', '', '', 0, 10, 10, 0, 0, 2173, 2173, 3, 1, 1.38571, 1, 1.38571, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 262148, 0, 0, 0, 0, 0, 192, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44427, 0, 0, 0, 0, 0, 238, 0, 0, 0, 'Crowley\'s Horse', '', 'vehichleCursor', 0, 5, 5, 0, 0, 35, 35, 0, 1, 1.28571, 1, 1.28571, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44455, 0, 0, 0, 0, 0, 29935, 0, 0, 0, 'Sergeant Cleese', 'Warrior Trainer', '', 10694, 5, 5, 0, 0, 2173, 2173, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 1, 256, 2048, 0, 0, 0, 0, 1, 0, 9, 13, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44459, 0, 0, 0, 0, 0, 29961, 0, 0, 0, 'Celestine of the Harvest', 'Druid Trainer', '', 10696, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 32768, 34816, 0, 0, 0, 0, 11, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44460, 0, 0, 0, 0, 0, 29290, 0, 0, 0, 'Gwen Armstead', '', '', 0, 1, 1, 0, 0, 2163, 2163, 2, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44461, 0, 0, 0, 0, 0, 29960, 0, 0, 0, 'Huntsman Blake', 'Hunter Trainer', '', 10697, 5, 5, 0, 0, 12, 12, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 2, 768, 2048, 0, 0, 0, 0, 3, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 112, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44463, 0, 0, 0, 0, 0, 30213, 0, 0, 0, 'Baron', 'Huntsman Blake\'s Pet', '', 0, 3, 3, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 0, 2048, 0, 52, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44464, 0, 0, 0, 0, 0, 29957, 0, 0, 0, 'Loren the Fence', 'Rogue Trainer', '', 10699, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 4, 32768, 2048, 0, 0, 0, 0, 4, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44465, 0, 0, 0, 0, 0, 29956, 0, 0, 0, 'Myriam Spellwaker', 'Mage Trainer', '', 10698, 5, 5, 0, 0, 2173, 2173, 51, 1, 1.14286, 1, 1.14286, 1, 1, 13, 17, 0, 42, 7.5, 1111, 2000, 8, 32768, 2048, 0, 0, 0, 0, 8, 0, 9, 13, 0, 7, 262144, 0, 0, 0, 0, 0, 131, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 3, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44468, 0, 0, 0, 0, 0, 29958, 0, 0, 0, 'Sister Almyra', 'Priest Trainer', '', 10700, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 5, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 112, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44469, 0, 0, 0, 0, 0, 29959, 0, 0, 0, 'Vitus Darkwalker', 'Warlock Trainer', '', 10702, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 1, 768, 34816, 0, 0, 0, 0, 9, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (44470, 0, 0, 0, 0, 0, 30217, 30218, 30214, 30215, 'Injured Citizen', '', '', 0, 10, 10, 0, 0, 2163, 2163, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 192, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
DELETE FROM creature_template WHERE entry IN (3125,3300,51913,12350,12346,7952,12349,14544,7953,14543,14545,3140,3185,10578,3188,3297,49997,6408,3099,50011,5951,3187,3304,50002,50001,50006,49998,10369,3186,10676,3194,50015,50004,3933,3184,41142,6491);

INSERT INTO `creature_template` VALUES (3099, 0, 0, 0, 0, 0, 381, 0, 0, 0, 'Dire Mottled Boar', NULL, NULL, 0, 6, 7, 0, 0, 189, 189, 0, 1, 0.857143, 1, 0.857143, 1, 0, 9, 12, 0, 36, 1, 2000, 2000, 1, 0, 2048, 0, 5, 0, 0, 0, 0, 6, 8, 0, 1, 1, 0, 3099, 0, 3099, 0, 0, 0, 0, 0, 0, 3385, 0, 0, 0, 0, 0, 0, 0, 9069, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (3125, 0, 0, 0, 0, 0, 2486, 0, 0, 0, 'Clattering Scorpid', '', '', 0, 1, 6, 0, 0, 413, 413, 0, 1, 0.857143, 1, 0.857143, 1, 0, 7, 9, 0, 34, 1, 2000, 2000, 1, 0, 2048, 0, 20, 0, 0, 0, 0, 4, 6, 0, 1, 1, 0, 3125, 0, 3125, 0, 0, 0, 0, 0, 0, 73672, 0, 0, 0, 0, 0, 0, 0, 12968, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (3140, 0, 0, 0, 0, 0, 4070, 0, 0, 0, 'Lar Prowltusk', NULL, NULL, 0, 7, 7, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 9, 12, 0, 36, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 6, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3184, 0, 0, 0, 0, 0, 4071, 0, 0, 0, 'Miao\'zan', 'Alchemy Trainer', NULL, 0, 25, 25, 0, 0, 126, 126, 81, 1, 1.14286, 1, 1.14286, 1, 0, 35, 48, 0, 86, 1, 2000, 2000, 1, 512, 2048, 0, 0, 2, 0, 0, 0, 24, 36, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.02, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3185, 0, 0, 0, 0, 0, 4085, 0, 0, 0, 'Mishiki', 'Herbalism Trainer', NULL, 0, 14, 14, 0, 0, 126, 126, 81, 1, 1.14286, 1, 1.14286, 1, 0, 20, 27, 0, 50, 1, 2000, 2000, 1, 512, 2048, 0, 0, 2, 0, 0, 0, 13, 20, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3186, 0, 0, 0, 0, 0, 4089, 0, 0, 0, 'K\'waii', 'General Goods', NULL, 0, 11, 11, 0, 0, 126, 126, 641, 1, 1.14286, 1, 1.14286, 1, 0, 15, 20, 0, 44, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 9, 14, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3187, 0, 0, 0, 0, 0, 4087, 0, 0, 0, 'Tai\'tasi', 'Trade Supplies', NULL, 0, 12, 12, 0, 0, 126, 126, 129, 1, 1.14286, 1, 1.14286, 1, 0, 17, 22, 0, 46, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 11, 17, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3188, 0, 0, 0, 0, 0, 4072, 0, 0, 0, 'Master Gadrin', NULL, NULL, 0, 12, 12, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 17, 22, 0, 46, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 11, 17, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3194, 0, 0, 0, 0, 0, 4074, 0, 0, 0, 'Vel\'rin Fang', NULL, NULL, 0, 7, 7, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 9, 12, 0, 36, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 6, 8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3297, 0, 0, 0, 0, 0, 4083, 4084, 0, 0, 'Sen\'jin Watcher', NULL, NULL, 0, 15, 15, 0, 0, 877, 877, 0, 1, 1.14286, 1, 1.14286, 1, 0, 22, 29, 0, 54, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 15, 22, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (3300, 0, 0, 0, 0, 0, 1987, 1206, 0, 0, 'Adder', NULL, NULL, 0, 1, 1, 0, 0, 7, 7, 0, 1, 0.857143, 1, 0.857143, 1, 0, 2, 2, 0, 24, 4.6, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 1, 3, 0, 0.5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (3304, 0, 0, 0, 0, 0, 4086, 0, 0, 0, 'Master Vornal', NULL, NULL, 0, 11, 11, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 15, 20, 0, 44, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 9, 14, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (3933, 0, 0, 0, 0, 0, 4082, 0, 0, 0, 'Hai\'zan', 'Butcher', NULL, 0, 14, 14, 0, 0, 126, 126, 641, 1, 1.14286, 1, 1.14286, 1, 0, 20, 27, 0, 50, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 13, 20, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (5951, 0, 0, 0, 0, 0, 1560, 0, 0, 0, 'Hare', NULL, NULL, 0, 1, 1, 0, 0, 31, 31, 0, 1, 0.857143, 1, 0.857143, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 5951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 1, 3, 0, 0.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (6408, 0, 0, 0, 0, 0, 5370, 0, 0, 0, 'Ula\'elek', NULL, NULL, 0, 35, 35, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 49, 64, 0, 118, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 33, 49, 11, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (6491, 0, 0, 0, 0, 0, 5233, 0, 0, 0, 'Spirit Healer', '', '', 0, 60, 60, 0, 0, 35, 35, 16384, 1, 1, 1, 1, 1, 0, 197.6, 262.2, 0, 479, 1, 2000, 0, 1, 768, 2048, 2048, 0, 0, 0, 0, 0, 136.8, 201.4, 34, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 1, 3, 1, 1.35, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (7952, 0, 0, 0, 0, 0, 7037, 0, 0, 0, 'Zjolnir', 'Raptor Handler', NULL, 0, 45, 45, 0, 0, 126, 126, 131, 1, 1.14286, 1, 1.14286, 1, 0, 76, 100, 0, 184, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 52, 76, 17, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 'npc_mount_vendor', 12340);
INSERT INTO `creature_template` VALUES (7953, 0, 0, 0, 0, 0, 7040, 0, 0, 0, 'Xar\'Ti', 'Riding Trainer', NULL, 0, 50, 50, 0, 0, 126, 126, 83, 1, 1.14286, 1, 1.14286, 1, 0, 85, 112, 0, 206, 1, 2000, 2000, 1, 512, 2048, 0, 0, 1, 0, 0, 8, 58, 86, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (10369, 0, 0, 0, 0, 0, 9768, 0, 0, 0, 'Trayexir', 'Weapon Merchant', NULL, 0, 12, 12, 0, 0, 126, 126, 4225, 1, 1.14286, 1, 1.14286, 1, 0, 17, 22, 0, 46, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 11, 17, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1.05, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (10578, 0, 0, 0, 0, 0, 9911, 0, 0, 0, 'Bom\'bay', 'Witch Doctor in Training', NULL, 0, 8, 8, 0, 0, 126, 126, 3, 1, 1.14286, 1, 1.14286, 1, 0, 10, 14, 0, 38, 1, 2000, 2000, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 10, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (10676, 0, 0, 0, 0, 0, 10009, 0, 0, 0, 'Raider Jhash', NULL, NULL, 0, 35, 35, 0, 0, 85, 85, 3, 1, 1.38571, 1, 1.38571, 1, 0, 49, 64, 0, 118, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 33, 49, 11, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 12340);
INSERT INTO `creature_template` VALUES (12346, 0, 0, 0, 0, 0, 4806, 0, 0, 0, 'Emerald Riding Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (12349, 0, 0, 0, 0, 0, 6472, 0, 0, 0, 'Turquoise Riding Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (12350, 0, 0, 0, 0, 0, 6473, 0, 0, 0, 'Violet Riding Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 26, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (14543, 0, 0, 0, 0, 0, 14344, 0, 0, 0, 'Swift Olive Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 26, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (14544, 0, 0, 0, 0, 0, 14342, 0, 0, 0, 'Swift Orange Raptor', NULL, NULL, 0, 1, 2, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 26, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (14545, 0, 0, 0, 0, 0, 14339, 0, 0, 0, 'Swift Blue Raptor', NULL, NULL, 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.38571, 1, 1.38571, 1, 0, 2, 2, 0, 26, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 2, '', 12340);
INSERT INTO `creature_template` VALUES (41142, 0, 0, 0, 0, 0, 31726, 0, 0, 0, 'Handler Marnlek', 'Bat Handler', '', 0, 85, 85, 3, 0, 1074, 1074, 8193, 1, 1.14286, 1, 1.14286, 1, 0, 516, 696, 0, 813, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 0, 0, 389, 545, 104, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, NULL, NULL, '', 0, 1, 0, 4.3979, 1.00952, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (49997, 0, 0, 0, 0, 0, 36789, 0, 0, 0, 'Den\'chulu', 'Druid Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 33, 45, 0, 80, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 11, 0, 23, 31, 6, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (49998, 0, 0, 0, 0, 0, 36861, 0, 0, 0, 'Gusini', 'Warlock Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 25, 36, 0, 37, 1, 2000, 2000, 8, 32768, 2048, 2048, 0, 0, 0, 9, 0, 22, 32, 15, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50002, 0, 0, 0, 0, 0, 36806, 0, 0, 0, 'Bomsanchu', 'Mage Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 25, 36, 0, 37, 1, 2000, 2000, 8, 32768, 2048, 2048, 0, 0, 0, 8, 0, 22, 32, 15, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50004, 0, 0, 0, 0, 0, 36860, 0, 0, 0, 'Jamai', 'Hunter Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 33, 45, 0, 80, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 3, 0, 23, 31, 6, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50006, 0, 0, 0, 0, 0, 36857, 0, 0, 0, 'Yeniss', 'Warrior Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 35, 48, 0, 86, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 1, 0, 24, 36, 6, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50011, 0, 0, 0, 0, 0, 36793, 0, 0, 0, 'Cona', 'Shaman Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 33, 45, 0, 80, 1, 2000, 2000, 2, 32768, 2048, 2048, 0, 0, 0, 7, 0, 23, 31, 6, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (50015, 0, 0, 0, 0, 0, 36859, 0, 0, 0, 'Munalti', 'Rogue Trainer', '', 0, 25, 25, 0, 0, 126, 126, 49, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 4, 32768, 2048, 2048, 0, 0, 0, 4, 0, 0, 0, 0, 7, 266240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
INSERT INTO `creature_template` VALUES (51913, 0, 0, 0, 0, 0, 4083, 4084, 0, 0, 'Sen\'jin Guardian', '', '', 0, 85, 85, 3, 0, 877, 877, 0, 1, 1.14286, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 1, 1.13552, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);


DELETE FROM gameobject WHERE guid IN (13310,13305,13306);
REPLACE INTO `gameobject` VALUES (13305, 204135, 1, 0, 0, 1, 1, -845.583, -4910.47, 20.8159, 3.14101, 0, 0, 0, 1, 120, 255, 1);
REPLACE INTO `gameobject` VALUES (13306, 104555, 1, 0, 0, 1, 1, -813.096, -4940.28, 20.5151, 3.64774, 0, 0, 0, 1, 120, 255, 1);
REPLACE INTO `gameobject` VALUES (13310, 207206, 1, 0, 0, 1, 1, -814.552, -4927.98, 19.8773, 2.73144, 0, 0, 0, 1, 120, 255, 1);

-- Parata
DELETE FROM `creature_template` WHERE `entry` = '50001';
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ('50001', '0', '0', '0', '0', '0', '36858', '0', '0', '0', 'Parata', 'Priest Trainer', '', '0', '25', '25', '0', '0', '126', '126', '49', '1', '1.14286', '1', '1', '1', '0', '23', '34', '0', '9', '1.4', '2000', '2000', '8', '32768', '2048', '0', '0', '0', '0', '5', '0', '18', '27', '7', '7', '266240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '15595');
DELETE FROM `creature_template_addon` WHERE `entry` = '50001';
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('50001', '0', '0', '0', '257', '0', '');

DELETE FROM `creature` WHERE id = 50001;
INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (317467, '50001', '1', '0', '0', '1', '1', '36858', '1', '-784.384', '-4944.82', '38.3644', '2.35619', '300', '0', '0', '562', '1633', '0', '0', '0', '0');


DELETE FROM `creature_model_info` WHERE `modelid` = 36858;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(36858, '0.306', '1.5', '1', '0');
DELETE FROM creature WHERE id IN (55445,54735,57197,55728);
DELETE FROM `creature_involvedrelation` WHERE `id` = 53422;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(53422, '29309'),
(53422, '29312');
DELETE FROM `creature_model_info` WHERE `modelid` = 20570;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(20570, '1', '1.5', '2', '0');
DELETE FROM `creature_model_info` WHERE `modelid` = 38326;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(38326, '5', '25', '2', '0');
DELETE FROM creature WHERE id=53422;
INSERT INTO `creature` VALUES ('317468', '53422', '1', '1637', '5356', '1', '3969', '0', '1', '1656.76', '-4349.55', '117.778', '3.47916', '300', '0', '0', '9077488', '0', '1', '0', '0', '0');
-- download here http://www.mediafire.com/download/hkd6y1x13h6z864/TRANSLATE+LANGUGES+434.zip
DELETE FROM vehicle_template_accessory WHERE entry IN (35491,38500,28009,28451,30204,29351,29708,30174,29460,29500,29358,25968,38431,38585,38586,38431,38585,38586,28669,39860,36794
,25881,33114,33114,34776,34776,34776,35069,35069,35069,42015,28710,50473,48476,29863,27761,42008,39251,48805,48805,48805,48805,48805,48806,48806,48806,48806,48806,48721,48721,48721
,48721,48721,37598,37598,37598,37598,37676,35995,36514,47204,47204,47204,47204,47204,47204,47204,47204,46748,43561,33217,33297,33298,33299,33300,33301,33316,33317,33318,33319,33320,33321,33322,33323,33324,33408,33409,33414,33416,33418);
REPLACE INTO `vehicle_template_accessory` VALUES (33217, 35328, 0, 1, 'Stormwind Steed', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33297, 35328, 0, 1, 'Stormwind Steed', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33298, 35332, 0, 1, 'Darnassian Nightsaber', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33299, 35323, 0, 1, 'Darkspear Raptor', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33300, 35325, 0, 1, 'Thunder Bluff Kodo', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33301, 35331, 0, 1, 'Gnomeregan Mechanostrider', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33316, 35329, 0, 1, 'Ironforge Ram', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33317, 35331, 0, 1, 'Gnomeregan Mechanostrider', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33318, 35330, 0, 1, 'Exodar Elekk', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33319, 35332, 0, 1, 'Darnassian Nightsaber', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33320, 35314, 0, 1, 'Orgrimmar Wolf', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33321, 35323, 0, 1, 'Darkspear Raptor', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33322, 35325, 0, 1, 'Thunder Bluff Kodo', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33323, 35326, 0, 1, 'Silvermoon Hawkstrider', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33324, 35327, 0, 1, 'Forsaken Warhorse', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33408, 35329, 0, 1, 'Ironforge Ram', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33409, 35314, 0, 1, 'Orgrimmar Wolf', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33414, 35327, 0, 1, 'Forsaken Warhorse', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33416, 35330, 0, 1, 'Exodar Elekk', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33418, 35326, 0, 1, 'Silvermoon Hawkstrider', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (35491, 35451, 0, 0, 'Death Knight', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (38500, 38493, 0, 0, 'Argent Crusader', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (28009, 28093, 0, 0, 'Sholazar Tickbird', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (28451, 28468, 0, 0, 'Hemet Nesingwary', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (30204, 30268, 0, 0, 'Webbed Crusader', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (29351, 29558, 0, 0, 'Frost Giant Target Bunny', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (29708, 29805, 0, 1, 'Captive Proto Drake Beam Bunny', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (30174, 30175, 0, 0, 'Hyldsmeet Bear Rider', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (29460, 29458, 0, 0, 'Brunnhildar Drakerider', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (29500, 29498, 0, 0, 'Brunnhildar Warmaiden', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (29358, 29558, 0, 0, 'Frost Giant Target Bunny', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (25968, 25801, 0, 0, 'Nedar, Lord of Rhinos', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (38431, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (38585, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (38586, 38309, 0, 0, 'Slimy Tentacle Stalker', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (38431, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (38585, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (38586, 38308, 1, 1, 'Ooze Covered Tentacle Stalker', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (28669, 28717, 1, 1, 'Flying Fiend', 8, 0);
REPLACE INTO `vehicle_template_accessory` VALUES (39860, 39264, 0, 0, 'Gnomeregan Mechano-Tank Pilot', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (36794, 36658, 0, 0, 'Scourgelord Tyrannus', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (25881, 25802, 0, 0, 'Kaw the Mammoth Destroyer mounted on Moria', 5, 0);
REPLACE INTO `vehicle_template_accessory` VALUES (33114, 33142, 1, 0, 'Overload Control Device', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (33114, 33143, 2, 0, 'Leviathan Defense Turret', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (34776, 34777, 7, 0, 'Isle of Conquest Siege Engine  - main turret (ally)', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (34776, 36356, 1, 0, 'Isle of Conquest Siege Engine  - flame turret 1 (ally)', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (34776, 36356, 2, 0, 'Isle of Conquest Siege Engine  - flame turret 2 (ally)', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (35069, 36355, 7, 0, 'Isle of Conquest Siege Engine - main turret (horde)', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (35069, 34778, 1, 0, 'Isle of Conquest Siege Engine - flame turret 1 (horde)', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (35069, 34778, 2, 0, 'Isle of Conquest Siege Engine - flame turret 2 (horde)', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (42015, 42017, 0, 0, 'Gnomish Bomber', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (28710, 28646, 0, 1, 'Pilot Vic', 7, 0);
REPLACE INTO `vehicle_template_accessory` VALUES (50473, 50472, 0, 1, 'Earthen Ring Shaman', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48476, 48477, 0, 1, 'Earthen Ring Shaman', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (29863, 28518, 0, 1, 'Persistence', 8, 0);
REPLACE INTO `vehicle_template_accessory` VALUES (27761, 27535, 0, 1, 'Fordragon Battle Steed', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (42008, 42010, 0, 1, 'Dark Iron Golem', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (39251, 39245, 0, 1, 'Dark Iron Golem', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48805, 48340, 0, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48805, 48341, 1, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48805, 48341, 2, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48805, 48342, 3, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48805, 48343, 4, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48806, 48340, 0, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48806, 48341, 1, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48806, 48341, 2, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48806, 48342, 3, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48806, 48343, 4, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48721, 48340, 0, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48721, 48341, 1, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48721, 48341, 2, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48721, 48342, 3, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (48721, 48343, 4, 0, 'KTC Waiter', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (37598, 37599, 0, 1, 'Gasbot', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (37598, 37599, 1, 1, 'Gasbot', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (37598, 37599, 2, 1, 'Gasbot', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (37598, 37599, 3, 1, 'Gasbot', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (37676, 37680, 0, 1, 'Hot Rod - Sassy Hardwrench', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (35995, 36042, 0, 0, 'Strangle Vine', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (36514, 36403, 0, 1, 'Sling Rocket', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (47204, 47203, 0, 0, 'Infested Bear', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (47204, 47203, 1, 0, 'Infested Bear', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (47204, 47203, 2, 0, 'Infested Bear', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (47204, 47203, 3, 0, 'Infested Bear', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (47204, 47203, 4, 0, 'Infested Bear', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (47204, 47203, 5, 0, 'Infested Bear', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (47204, 47203, 6, 0, 'Infested Bear', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (47204, 47203, 7, 0, 'Infested Bear', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (46748, 46749, 0, 1, 'Stonard Kodo Beast', 6, 30000);
REPLACE INTO `vehicle_template_accessory` VALUES (43561, 43560, 0, 0, 'Smilin\' Timmy Sticks', 6, 30000);
-- Horde Cannon 
UPDATE `creature_template` SET `npcflag` = '16777216', `unit_flags` = '262148', `dynamicflags` = '8', `spell1` = '84575', `VehicleId` = '244', `mingold` = '15', `maxgold` = '33', `mechanic_immune_mask` = '613097436' WHERE `entry` = 45263;
DELETE FROM npc_spellclick_spells WHERE npc_entry=45263;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(45263, 60962, 1, 0);
-- Horde Hauler 
UPDATE npc_spellclick_spells SET cast_flags=1 WHERE npc_entry=44731;
-- Horde Haulder 
DELETE FROM vehicle_template_accessory WHERE entry=44731;
REPLACE INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(44731, 44734, 0, 0, 'Horde Engineer on Horde Hauler', 6, 30000),
(44731, 44732, 1, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44732, 3, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 4, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 5, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000),
(44731, 44733, 6, 0, 'Forsaken Trooper on Horde Hauler', 6, 30000);
-- Fenwick Thatros 
DELETE FROM creature_text WHERE  entry=47008;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(47008, 0, 0, 'All I wanted was a little peace and quiet!', 1, 0, 100, 0, 0, 0, 'Fenwick Thatros 1');
-- Fiona's Caravan
DELETE FROM vehicle_template_accessory WHERE entry=45423;
REPLACE INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(45423, 45431, 0, 0, 'Gidwin Goldbraids on Caravan', 6, 30000),
(45423, 45417, 1, 0, 'Fiona on Caravan', 6, 30000),
(45400, 45729, 2, 0, 'Fiona on Caravan', 6, 30000);
DELETE FROM vehicle_template_accessory WHERE entry=45400;
REPLACE INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(45400, 45431, 0, 0, 'Gidwin Goldbraids on Caravan', 6, 30000),
(45400, 45417, 1, 0, 'Fiona on Caravan', 6, 30000),
(45400, 45729, 2, 0, 'Fiona on Caravan', 6, 30000);
UPDATE creature_template SET vehicleId=1104 WHERE entry=45423;
DELETE FROM npc_spellclick_spells WHERE npc_entry IN   (25881,39860,38586,38585,38431,25968,28451,28009,35491,33418,33416,33414,33409,33408,33301,33300,33299,33298,33297,42015,50473,48476,29863,42008,39251,48805,48806,48721,37598,37676,35995,36514,47204,46748,43561,45400);
INSERT INTO `npc_spellclick_spells` VALUES ('45400', '86807', '1', '0');
INSERT INTO `npc_spellclick_spells` VALUES (25881, 46260, 0, 0);
INSERT INTO `npc_spellclick_spells` VALUES (25968, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (28009, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (28451, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (29863, 46598, 0, 1);
INSERT INTO `npc_spellclick_spells` VALUES (33297, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33298, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33299, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33300, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33301, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33408, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33409, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33414, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33416, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (33418, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (35491, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (35995, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (36514, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (37598, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (37676, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38431, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38585, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (38586, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (39251, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (39860, 47020, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (42008, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (42015, 78357, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (43561, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (46748, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (47204, 90105, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48476, 88258, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48721, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48805, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (48806, 46598, 1, 0);
INSERT INTO `npc_spellclick_spells` VALUES (50473, 91271, 1, 0);
UPDATE creature_template SET npcflag=16777216 WHERE entry IN (28451,39251,39860,42008);
DELETE FROM creature_equip_template WHERE entry=45431;
INSERT INTO `creature_equip_template` VALUES ('45431', '1', '19104', '55428', '0');
-- insert entry 27893 for DRW
DELETE FROM creature_template WHERE entry= 27893;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ('27893', '0', '0', '0', '0', '0', '1126', '11686', '0', '0', 'Rune Weapon', '', '', '0', '1', '1', '0', '0', '6', '6', '0', '1', '1.14286', '1', '1', '1', '0', '0', '0', '0', '24', '1', '3500', '0', '1', '0', '2048', '8', '0', '0', '0', '0', '0', '1', '1', '0', '10', '1096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', 'npc_dancing_rune_weapon', '15595');
-- update flags pacified and non selectable
UPDATE creature_template SET unit_flags=33685504 WHERE entry=27893 LIMIT 1;
-- process for copy Damage
DELETE FROM spell_proc_event Where entry=49028;
INSERT INTO `spell_proc_event` (entry, procFlags) VALUES
('49028','69652');DELETE FROM `spell_script_names` WHERE `spell_id`=51460;
REPLACE INTO `spell_script_names` VALUES
(51460,"spell_dk_runic_corruption");-- Delete Runic Corruption From Spell Script
DELETE FROM `spell_script_names` WHERE `spell_id`=51460;
-- Fix Runic EmpowerMent Chance 45%
DELETE FROM spell_proc_event WHERE entry=81229;
INSERT INTO `spell_proc_event` VALUES (81229, 0, 15, 8192, 536870916, 0, 69648, 0, 0, 45, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (23666,23661,23664);
UPDATE `creature_template` SET `AIName`='' WHERE  entry IN (23666,23661,23664);
