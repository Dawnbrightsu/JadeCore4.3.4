-- Actionlist SAI
SET @ENTRY := 4491400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,83835,0,0,0,0,0,1,0,0,0,0,0,0,0,"cast 83835 on self"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 0");

-- Actionlist SAI
SET @ENTRY := 4488201;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,46598,0,0,0,0,0,11,44884,15,0,0,0,0,0,"enter vehicle"),
(@ENTRY,9,1,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 2"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,97,15,15,0,0,0,0,8,0,0,0,1296.29,1206.47,58.5,0,"jump"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"die self");

-- Actionlist SAI
SET @ENTRY := 4436500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 0"),
(@ENTRY,9,1,0,1,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 1"),
(@ENTRY,9,2,0,0,0,100,0,25000,25000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 2"),
(@ENTRY,9,3,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 3"),
(@ENTRY,9,4,0,0,0,100,0,16000,16000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 4 "),
(@ENTRY,9,5,0,0,0,100,0,8000,8000,8000,8000,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 5"),
(@ENTRY,9,6,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 6"),
(@ENTRY,9,7,0,0,0,100,0,5000,5000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 7"),
(@ENTRY,9,8,0,0,0,100,0,10000,10000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 8 1min21"),
(@ENTRY,9,9,0,0,0,100,0,3000,3000,0,0,45,0,1,0,0,0,0,10,59236,44608,0,0,0,0,0,"send data 1 to valkir 1min24"),
(@ENTRY,9,10,0,0,0,100,0,32000,32000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 9"),
(@ENTRY,9,11,0,0,0,100,0,20000,20000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"talk 10");

-- Darnell SAI
SET @ENTRY := 49141;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"On summoned call time action 4914100"),
(@ENTRY,0,1,0,38,0,100,1,0,1,0,0,80,@ENTRY*100+01,0,0,0,0,0,1,0,0,0,0,0,0,0,"On data set do event 4914101"),
(@ENTRY,0,3,0,38,0,100,0,0,2,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"On data set 2 despawn self");

-- Scarlet Corpse SAI
SET @ENTRY := 49340;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,91942,0,0,0,45,0,3,0,0,0,0,19,49337,10,0,0,0,0,0,"on spellhit 91942 set data 3 to darnell"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,11,46598,0,0,0,0,0,19,49337,0,0,0,0,0,0,"Jump on darnell"),
(@ENTRY,0,2,0,38,0,100,0,0,1,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"die self");

DELETE FROM `creature_addon` WHERE `guid` IN (316560,316857,316880,316895,316887,316888,316891,316886,316879,316858,316864,316861,316867,316889,316897,316900,316902,316905,316903,316894,316882,316859,316863,316877,316875,316874,316872,316871,316866);

UPDATE `creature` SET `position_x`=1695.631592, `position_y`=1680.963135, `position_z`=134.870605, `orientation`=2.953877 WHERE  `guid`=325130;

-- Risen Recruit SAI
SET @ENTRY := 50414;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,1,0,0,0,0,53,0,50414,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Recruit - On Reset - Start Waypoint (No Repeat)"),
(@ENTRY,0,1,0,40,0,100,0,1,50414,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Recruit - On Waypoint 1 Reached - Run Script");

DELETE FROM `creature_text` WHERE `entry` IN (1568, 50414);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(1568, 0, 0, 'Let\'s see, I just saw a corpse with a jaw that would fit you', 12, 0, 100, 0, 0, 0, 'Mordo'),
(1568, 1, 0, 'That should do the job. Come back right away if it falls off again.', 12, 0, 100, 0, 0, 0, 'Mordo'),
(50414, 0, 0, 'T-thank you, Under-t-taker.', 12, 0, 100, 0, 0, 0, 'Risen Recruit');

-- Actionlist SAI
SET @ENTRY := 5041400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,5,16,0,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Recruit - On Script - Play Emote 16"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,5,69,0,0,0,0,0,19,1568,10,0,0,0,0,0,"Risen Recruit - On Script - Play Emote 69"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,1568,10,0,0,0,0,0,"Risen Recruit - On Script - Say Line 0"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,5,26,0,0,0,0,0,19,1568,10,0,0,0,0,0,"On Script - Play Emote 26"),
(@ENTRY,9,4,0,0,0,100,0,2000,2000,0,0,5,25,0,0,0,0,0,19,1568,10,0,0,0,0,0,"On Script - Play Emote 25"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,19,1568,10,0,0,0,0,0,"On Script - Say Line 1"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,5,26,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Play Emote 26"),
(@ENTRY,9,7,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,8,0,0,0,100,0,2000,2000,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Play Emote 66"),
(@ENTRY,9,9,0,0,0,100,0,3000,3000,0,0,53,0,504140,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Start Waypoint"),
(@ENTRY,9,10,0,0,0,100,0,6000,6000,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Despawn In 2000 ms");

DELETE FROM `waypoints` WHERE `entry` IN (50414, 504140);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(50414, 1, 1691.527100, 1675.772339, 135.228180, 'Risen Recruit'),
(504140, 1, 1700.930054, 1655.510010, 129.171005, 'Risen Recruit');

UPDATE `quest_template` SET `EmoteOnIncomplete` = 1, `EmoteOnComplete` = 4 WHERE `Id` >=1;
UPDATE `quest_template` SET `DetailsEmote1` = 1, `DetailsEmote2` = 1, `DetailsEmote3` = 1, `DetailsEmote4` = 1,`DetailsEmoteDelay1` = 1, `DetailsEmoteDelay2` = 1, `DetailsEmoteDelay3` = 1, `DetailsEmoteDelay4` = 1 WHERE `Id` >=1;
UPDATE `creature` SET `spawntimesecs` = 1 WHERE `guid` = 63971;

-- QUEST 7 Recruitment (QUEST AUTOCOMPLETE, TODO Darnell's script)
-- Fix same values in quest_template, removed ReqCreatureOrGoId1 and duplicated entry in quest_start_scripts
UPDATE quest_template SET RequiredRaces=16, PrevQuestId=25089, NextQuestId=28653, NextQuestIdChain=0 WHERE Id=26800;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 0, `RequiredNpcOrGoCount1` = 0 WHERE `Id` = 26800; --To remove when Darnell's script will be fix
DELETE FROM quest_start_scripts WHERE id=26800;
INSERT INTO quest_start_scripts VALUES (26800, 0, 15, 91576, 2, 0, 0, 0, 0, 0);


-- QUEST 8 Shadow Priest Sarvis
-- Fix same values in quest_template 
UPDATE quest_template SET RequiredRaces=16, PrevQuestId=26800, NextQuestId=26801, NextQuestIdChain=0 WHERE Id=28653;


-- QUEST 9 Scourge on our Perimeter
-- Fix same values in quest_template, added KillCredit to Wretched Ghoul=1502 and Rattlecage Skeleton=1890 npcflag
UPDATE quest_template SET RequiredRaces=16, NextQuestId=24961, NextQuestIdChain=0 WHERE Id=26801;
UPDATE creature_template SET KillCredit1=1890 WHERE entry=1502;
UPDATE creature_template SET npcflag=0 WHERE entry=1890;



-- QUEST Night Web's Hollow=24973
-- Fix npcflag to npc Young Night Web Spider=1504 and Night Web Spider=1505
UPDATE creature_template SET npcflag=0 WHERE entry IN (1504, 1505);


-- QUEST Assault on the Rotbrain Encampment=24971
-- Fix same values in quest_template and npc Rotbrain Berserker=49422, Rotbrain Magus=49423, Marshal Redpath=424
UPDATE quest_template SET Method=2 WHERE Id=24971;
UPDATE creature_template SET npcflag=0 WHERE entry IN (49422, 49424);
UPDATE creature_template SET faction_A=14, faction_H=14 where entry BETWEEN 49422 AND 49424;

UPDATE creature_template SET scale=2 WHERE entry=1508;
UPDATE creature_template SET scale=2 WHERE entry=1509;
UPDATE creature_template SET scale=3 WHERE entry=1512;
UPDATE creature_template SET scale=3 WHERE entry=1513;

DELETE FROM `creature_equip_template` WHERE (`entry`=1931);

-- Rotbrain Berserker
SET @ENTRY := 49422;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,30,0,0,11,63227,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP'),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP'),
(@ENTRY,0,2,0,0,0,100,0,4000,7000,15000,18000,11,79881,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Slam'),
(@ENTRY,0,3,0,1,0,100,0,0,0,0,0,5,36,0,0,0,0,0,11,49428,5,0,0,0,0,0,"Showfight");
-- NPC talk text insert
SET @ENTRY := 49422;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage');

-- Rotbrain Magus
SET @ENTRY := 49423;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,18000,25000,11,11962,1,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Immolate'),
(@ENTRY,0,2,0,1,0,100,0,0,0,0,0,5,36,0,0,0,0,0,11,49428,5,0,0,0,0,0,"Showfight");

-- Marshal Redpath SAI
SET @ENTRY := 49424;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,0,0,0,5,36,0,0,0,0,0,11,49428,5,0,0,0,0,0,"Showfight"),
(@ENTRY,0,1,0,0,0,100,1,0,0,0,0,11,83015,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cast 83015 on victim"),
(@ENTRY,0,2,0,0,0,100,0,6000,9000,5000,9000,11,33239,0,0,0,0,0,2,0,0,0,0,0,0,0,"cast 33239 on victim"),
(@ENTRY,0,3,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"on aggro talk");