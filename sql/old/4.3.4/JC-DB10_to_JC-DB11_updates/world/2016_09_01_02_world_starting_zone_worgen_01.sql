-- Worgen starting zone.
-- By Bodeguero for JadeCore.

-- equipment for http://www.wowhead.com/npc=36396
DELETE FROM creature_equip_template WHERE entry=36396;
REPLACE INTO `creature_equip_template` VALUES ('36396', '2', '23505', '23505', '0');

-- equipment for http://www.wowhead.com/npc=36236
DELETE FROM creature_equip_template WHERE entry=36236;
REPLACE INTO `creature_equip_template` VALUES ('36236', '1', '43611', '0', '0');

-- equipment for http://www.wowhead.com/npc=34511
DELETE FROM creature_equip_template WHERE entry=34511;
REPLACE INTO `creature_equip_template` VALUES ('34511', '2', '2029', '1172', '0');

-- soldier  text from worgens
DELETE FROM smart_scripts WHERE entryorguid=34916;
REPLACE INTO `smart_scripts` VALUES ('34916', '0', '0', '0', '0', '0', '50', '0', '1000', '40000', '120000', '170000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say1');
REPLACE INTO `smart_scripts` VALUES ('34916', '0', '2', '0', '1', '0', '100', '1', '100', '100', '0', '0', '49', '0', '0', '0', '0', '0', '0', '11', '34884', '15', '0', '0', '0', '0', '0', 'attack');
DELETE FROM creature_text WHERE entry=34916;
REPLACE INTO `creature_text` VALUES ('34916', '0', '0', 'Don\'t look into their eyes! They\'re not the people you once knew!', '14', '0', '50', '0', '0', '0', 'Gilneas Guard');
REPLACE INTO `creature_text` VALUES ('34916', '0', '1', 'Hold them back! We must protect the survivors!', '14', '0', '50', '0', '0', '0', 'Gilenas Guard');

-- fix for quest 14098 Evacuate the Merchant Square from worgens map http://www.wowhead.com/quest=14098
DELETE FROM quest_template WHERE id=14098;
REPLACE INTO `quest_template` VALUES ('14098', '2', '2', '1', '0', '4755', '0', '0', '0', '0', '2097152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14099', '14093', '0', '6', '65', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1134', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Evacuate the Merchant Square', 'Evacuate 3 Civilian Homes.', 'The civilians aren\'t safe here anymore.  Not even inside their homes.$B$BWe\'re doing our best to stop the worgen from getting indoors, but their numbers are too great.$B$BHelp us by evacuating the civilian homes.  My father\'s army in the prison district will be able to better protect them.', 'Return to Prince Liam Greymane at the Merchant Square in Gilneas City.', 'Good job, $N.  Thanks to you, many Gilneans will live to see another day.', '', '', '-195327', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Market Homes Evacuated', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');

-- missing objects phase 1 worgens
DELETE FROM gameobject WHERE id=195453;
REPLACE INTO `gameobject` VALUES ('NULL', '195453', '638', '0', '0', '1', '1', '-1575.81', '1320.37', '35.6616', '3.19194', '0', '0', '0.999683', '-0.0251718', '300', '0', '1');
REPLACE INTO `gameobject` VALUES ('NULL', '195453', '638', '0', '0', '1', '1', '-1575.41', '1314.4', '35.6634', '3.24692', '0', '0', '0.998614', '-0.052639', '300', '0', '1');

DELETE FROM gameobject_template WHERE entry=195327;
REPLACE INTO `gameobject_template` VALUES ('195327', '10', '9023', 'Merchant Square Door', 'openhandglow', '', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '14098', '0', '60000', '0', '0', '0', '0', '0', '0', '66639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'SmartGameObjectAI', '', '13329');

-- merchant doors fix
DELETE FROM smart_scripts WHERE entryorguid=195327;
REPLACE INTO `smart_scripts` VALUES ('195327', '1', '0', '0', '64', '0', '100', '0', '0', '0', '0', '0', '12', '34981', '3', '7000', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'spawn a citizen');

-- text for shaken survivor
DELETE FROM smart_scripts WHERE entryorguid=35554;
REPLACE INTO `smart_scripts` VALUES ('35554', '0', '0', '0', '60', '0', '50', '0', '1000', '41000', '30000', '70000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=35554;
REPLACE INTO `creature_text` VALUES ('35554', '0', '0', 'What will happen to us now?', '12', '0', '34', '0', '0', '0', 'say');
REPLACE INTO `creature_text` VALUES ('35554', '0', '1', 'I lost my family and my home!', '12', '0', '33', '0', '0', '0', 'say');
REPLACE INTO `creature_text` VALUES ('35554', '0', '2', 'Those awful creatures will tear us apart!', '12', '0', '33', '0', '0', '0', 'say');

-- fix for text and action of Lord Godfrey
DELETE FROM smart_scripts WHERE entryorguid=36330;
REPLACE INTO `smart_scripts` VALUES ('36330', '0', '0', '0', '54', '0', '100', '1', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('36330', '0', '1', '0', '1', '1', '100', '1', '100', '100', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1823.65', '2295.23', '42.047', '5.899', 'pos');
REPLACE INTO `smart_scripts` VALUES ('36330', '0', '2', '0', '1', '1', '100', '1', '11000', '11000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say1');
REPLACE INTO `smart_scripts` VALUES ('36330', '0', '3', '0', '1', '1', '100', '1', '32000', '32000', '0', '0', '41', '1000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'despawn');
DELETE FROM creature_text WHERE entry=36330;
REPLACE INTO `creature_text` VALUES ('36330', '0', '0', 'Give it up, Krennan. It\'s time to put this one down. It\'s protocol.', '12', '0', '100', '0', '0', '19635', 'Godfrey worgen say');

-- fix for text and action of Lord Godfrey Krennan Aranas <Royal Chemist>
DELETE FROM smart_scripts WHERE entryorguid=36331;
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '0', '0', '54', '0', '100', '1', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '1', '0', '1', '1', '100', '1', '5000', '5000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1821.72', '2291.4', '42.114', '1.6', 'move');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '2', '0', '1', '1', '100', '1', '7000', '7000', '0', '0', '66', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0.84', 'orient');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '3', '0', '1', '1', '100', '1', '40000', '40000', '0', '0', '28', '50220', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'rem');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '4', '0', '1', '1', '100', '1', '7500', '7500', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say treatments');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '5', '0', '1', '1', '100', '1', '40000', '40000', '0', '0', '28', '42716', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'rem');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '6', '0', '1', '1', '100', '1', '7000', '7000', '0', '0', '12', '36330', '1', '120000', '36330', '0', '0', '8', '0', '0', '0', '-1837.88', '2291.45', '42.196', '0.16', 'summon crowley');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '7', '0', '1', '1', '100', '1', '40000', '40000', '0', '0', '28', '68630', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'rem');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '8', '0', '1', '1', '100', '1', '41000', '41000', '0', '0', '41', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'despawn');
DELETE FROM creature_text WHERE entry=36331;
REPLACE INTO `creature_text` VALUES ('36331', '0', '0', 'I am not giving up on you, $N. I don\'t have a cure for the Curse yet... but there are treatments. You\'ll have control again.', '12', '0', '100', '0', '0', '20919', 'Arenas event');

-- fix for text and action of King Genn Greymane
DELETE FROM smart_scripts WHERE entryorguid=36332;
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '0', '4', '20', '0', '100', '1', '14375', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'set p1');
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '1', '0', '1', '1', '100', '1', '23000', '23000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say 1');
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '2', '0', '1', '1', '100', '1', '33000', '33000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say 2');
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '3', '0', '1', '1', '100', '1', '60000', '60000', '0', '0', '78', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'reset');
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '4', '0', '61', '0', '100', '1', '0', '0', '0', '0', '85', '69251', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'set p1');
DELETE FROM creature_text WHERE entry=36332;
REPLACE INTO `creature_text` VALUES ('36332', '0', '0', 'Tell me, Godfrey. Those that stayed in Gilneas City so that we could live. Were they following protocol?', '12', '0', '100', '0', '0', '19721', 'Greymane say1');
REPLACE INTO `creature_text` VALUES ('36332', '1', '0', 'I didn\'t think so. Now hand me that potion, Krennan... and double the dosage.', '12', '0', '100', '0', '0', '19722', 'Greymane say2');

-- text for  http://www.wowhead.com/npc=36132
DELETE FROM creature_text WHERE entry=34571;
REPLACE INTO `creature_text` VALUES ('34571', '0', '0', 'Welcome back! You were fortunate. Krennan\'s treatment doesn\'t always work this well on people who\'ve had the Curse as long as you.', '12', '0', '100', '0', '0', '0', 'gwen');

-- text for http://www.wowhead.com/npc=36132
DELETE FROM creature_text WHERE entry=36132;
REPLACE INTO `creature_text` VALUES ('36132', '0', '0', 'Do exercise caution. Don\'t expect anyone to invite you to their homes just yet. But at least they won\'t shoot you outright.', '12', '0', '100', '0', '0', '0', 'aranas');
DELETE FROM smart_scripts WHERE entryorguid=36132;
REPLACE INTO `smart_scripts` VALUES ('36132', '0', '0', '0', '20', '0', '100', '0', '14313', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('36132', '0', '1', '0', '1', '1', '100', '1', '500', '500', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '34571', '20', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('36132', '0', '2', '0', '1', '1', '100', '1', '6000', '6000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('36132', '0', '3', '0', '1', '1', '100', '1', '6500', '6500', '0', '0', '78', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');

-- text for http://www.wowhead.com/npc=36290
DELETE FROM smart_scripts WHERE entryorguid=36290;
REPLACE INTO `smart_scripts` VALUES ('36290', '0', '2', '0', '20', '0', '100', '0', '14386', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('36290', '0', '3', '0', '20', '0', '100', '0', '14386', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '11', '36291', '10', '0', '0', '0', '0', '0', 'say');

-- text for http://www.wowhead.com/npc=36291
DELETE FROM creature_text WHERE entry IN (36290,36291);
REPLACE INTO `creature_text` VALUES ('36290', '0', '0', 'Hold your positions, men!', '14', '0', '100', '0', '0', '21699', 'Godfrey earthquake');
REPLACE INTO `creature_text` VALUES ('36291', '1', '0', 'What is happening?', '12', '0', '100', '0', '0', '0', 'Melinda');

-- fix for cat summoner of Lucius http://www.wowhead.com/npc=36459
DELETE FROM smart_scripts WHERE entryorguid IN (36459,36461);
REPLACE INTO `smart_scripts` VALUES ('36459', '0', '0', '0', '64', '0', '100', '0', '0', '0', '0', '0', '12', '36461', '1', '120000', '36461', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'summon lucius');
REPLACE INTO `smart_scripts` VALUES ('36461', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');

-- text for http://www.wowhead.com/npc=36461
DELETE FROM creature_text WHERE entry=36461;
REPLACE INTO `creature_text` VALUES ('36461', '0', '0', 'It\'s the perfect bait, and it works!', '14', '0', '100', '0', '0', '0', 'lucius');

-- spawn of cat
DELETE FROM creature WHERE id=36459 AND map=654;
REPLACE INTO `creature` VALUES ('NULL', '36459', '654', '0', '0', '1', '1', '5554', '0', '-2102.93', '2333.44', '8.62334', '2.1293', '480', '25', '0', '8', '1', '1', '0', '0', '0');

-- horse who port you to complete quest http://www.wowhead.com/quest=14465/to-greymane-manor
DELETE FROM smart_scripts WHERE entryorguid=38765;
REPLACE INTO `smart_scripts` VALUES ('38765', '0', '0', '2', '40', '0', '100', '0', '9', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'despawn');
REPLACE INTO `smart_scripts` VALUES ('38765', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '62', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-1608.38', '2533.52', '130.25', '0.74', 'despawn');

-- cariage fix to transport  players to next location
DELETE FROM smart_scripts WHERE entryorguid=44928;
REPLACE INTO `smart_scripts` VALUES ('44928', '0', '0', '2', '40', '0', '100', '0', '5', '0', '0', '0', '62', '654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-2214.2', '1809.82', '11.841', '2.908', 'wp');
REPLACE INTO `smart_scripts` VALUES ('44928', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'die');

-- smart script for http://www.wowhead.com/npc=36540
DELETE FROM smart_scripts WHERE entryorguid=36540;
REPLACE INTO `smart_scripts` VALUES ('36540', '0', '0', '0', '8', '0', '100', '0', '73712', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'credit');
REPLACE INTO `smart_scripts` VALUES ('36540', '0', '1', '0', '1', '1', '100', '1', '500', '500', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'die');

-- smart script for http://www.wowhead.com/npc=36457
DELETE FROM smart_scripts WHERE entryorguid=36457;
REPLACE INTO `smart_scripts` VALUES ('36457', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '3000', '3000', '11', '73712', '1', '0', '0', '0', '0', '11', '36540', '5', '0', '0', '0', '0', '0', 'kill');

-- smart script for http://www.wowhead.com/npc=37873
DELETE FROM smart_scripts WHERE entryorguid=37873;
REPLACE INTO `smart_scripts` VALUES ('37873', '0', '0', '0', '20', '0', '100', '0', '24628', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=37873;
REPLACE INTO `creature_text` VALUES ('37873', '0', '0', 'Just as Daral\'nir soothes the cursed druids who gave into the beast and abandoned balance, let Tal\'doren soothe $N.', '12', '0', '100', '0', '0', '0', 'say');

-- smart script for http://www.wowhead.com/npc=38051
DELETE FROM smart_scripts WHERE entryorguid=38051;
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '1', '0', '1', '1', '100', '1', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '2', '0', '1', '1', '100', '1', '7000', '7000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '11', '37195', '30', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '3', '0', '1', '1', '100', '1', '18000', '18000', '0', '0', '41', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'despawn');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '4', '0', '54', '0', '100', '0', '0', '0', '0', '0', '5', '16', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'kneel');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '5', '0', '1', '1', '100', '1', '13000', '13000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=38051;
REPLACE INTO `creature_text` VALUES ('38051', '0', '0', 'Darius! The Dark Rangers have the Scythe! They got to it before we were able to reach it.', '12', '0', '100', '0', '0', '0', 'say darius tobias');
REPLACE INTO `creature_text` VALUES ('38051', '1', '0', 'It will be done!', '12', '0', '100', '0', '0', '0', 'say tobias');

-- smart script for http://www.wowhead.com/npc=37195
DELETE FROM smart_scripts WHERE entryorguid=37195;
DELETE FROM creature_text WHERE entry=37195;
REPLACE INTO `smart_scripts` VALUES ('37195', '0', '0', '0', '20', '0', '100', '0', '24627', '0', '0', '0', '12', '38051', '1', '60000', '38051', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'summon');
REPLACE INTO `creature_text` VALUES ('37195', '0', '0', 'Lorna!', '14', '0', '100', '0', '0', '19511', 'crowley');
REPLACE INTO `creature_text` VALUES ('37195', '1', '0', 'Get our men in position immediately, Tobias. We cannot let the Scythe fall into the hands of the Forsaken!', '12', '0', '100', '0', '0', '0', 'say darius tobias');
REPLACE INTO `creature_text` VALUES ('37195', '2', '0', 'Does this toad speak for you, Genn? You come to our dwelling as a friend, or do you come as a tyrant?', '14', '0', '100', '0', '0', '19510', 'crowley');
REPLACE INTO `creature_text` VALUES ('37195', '3', '0', 'Aye, Genn. It is not law that binds us. It is something far stronger. My men are ready to give their lives under your command.', '12', '0', '100', '0', '0', '19512', 'crowley');

-- text for those 2 npc
DELETE FROM creature_text WHERE entry=37875;
DELETE FROM creature_text WHERE entry=37876;
REPLACE INTO `creature_text` VALUES ('37875', '0', '0', 'No...i\'d sooner die than have one of your kind for a king!', '12', '0', '100', '0', '0', '19631', 'godfrey');
REPLACE INTO `creature_text` VALUES ('37876', '0', '0', 'It\'s over, Godfrey. You have no support left among the eastern lords.', '12', '0', '100', '0', '0', '0', 'greymane');

-- smart script for http://www.wowhead.com/npc=37875
DELETE FROM smart_scripts WHERE entryorguid=37875;
-- smart script for http://www.wowhead.com/npc=37876
DELETE FROM smart_scripts WHERE entryorguid=37876;
REPLACE INTO `smart_scripts` VALUES ('37875', '0', '0', '0', '1', '0', '100', '1', '10000', '10000', '0', '0', '2', '35', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'f');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '0', '0', '20', '0', '100', '0', '24592', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '1', '0', '1', '1', '100', '1', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '2', '0', '1', '1', '100', '1', '6000', '6000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '37875', '10', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '3', '0', '1', '1', '100', '1', '9000', '9000', '0', '0', '2', '14', '0', '0', '0', '0', '0', '11', '37875', '10', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '4', '0', '1', '1', '100', '1', '11000', '11000', '0', '0', '78', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '5', '0', '1', '1', '100', '1', '10000', '10000', '0', '0', '81', '1', '0', '0', '0', '0', '0', '11', '38764', '10', '0', '0', '0', '0', '0', 'p1');

-- smart script for http://www.wowhead.com/npc=38764
DELETE FROM smart_scripts WHERE entryorguid=38764;
REPLACE INTO `smart_scripts` VALUES ('38764', '0', '0', '0', '62', '0', '100', '0', '38764', '0', '0', '0', '62', '654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-1379.65', '1221.52', '35.55', '0.33', 'at lorna');
REPLACE INTO `smart_scripts` VALUES ('38764', '0', '1', '0', '1', '0', '100', '0', '40000', '40000', '40000', '40000', '81', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'set flag');

-- smart script for http://www.wowhead.com/npc=37803
DELETE FROM smart_scripts WHERE entryorguid=37803;
REPLACE INTO `smart_scripts` VALUES ('37803', '0', '0', '0', '19', '0', '100', '0', '24674', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('37803', '0', '1', '0', '64', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=37803;
REPLACE INTO `creature_text` VALUES ('37803', '0', '0', 'We will not die as slaves...we\'re Gilneans!', '12', '0', '100', '0', '0', '0', 'marcus');
REPLACE INTO `creature_text` VALUES ('37803', '1', '0', 'This is our land..they\'re not going to take it away without a fight!', '12', '0', '100', '0', '0', '0', 'marcus');


-- smart script for http://www.wowhead.com/npc=38507
DELETE FROM smart_scripts WHERE entryorguid=38507;
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '1', '0', '1', '1', '100', '1', '4000', '4000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1654.68', '1603.6', '23.131', '0.98', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '2', '0', '1', '1', '100', '1', '4000', '4000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '3', '0', '1', '1', '100', '1', '9000', '9000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1664.22', '1615.85', '20.49', '2.19', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '4', '0', '1', '1', '100', '1', '17000', '17000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1632.82', '1621.85', '20.49', '0.18', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '5', '0', '1', '1', '100', '1', '26000', '26000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '6', '0', '1', '1', '100', '1', '28000', '28000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1589.17', '1607.13', '21.6', '5.97', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '7', '0', '1', '1', '100', '1', '50000', '50000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1569.75', '1631.44', '20.589', '5.77', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '8', '0', '1', '1', '100', '1', '62000', '62000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1490.2', '1577.88', '20.486', '5.65', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '9', '0', '1', '1', '100', '1', '93000', '93000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '10', '0', '1', '1', '100', '1', '94000', '94000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1504.73', '1577', '20.486', '3.18', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '11', '0', '1', '1', '100', '1', '101000', '101000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1529.4', '1576.88', '26.68', '3.14', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '12', '0', '1', '1', '100', '1', '109500', '109500', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1545.55', '1571.63', '29.2', '4.02', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '13', '0', '1', '1', '100', '1', '118000', '118000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1594.87', '1524.96', '29.235', '3.87', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '14', '0', '1', '1', '100', '1', '138000', '138000', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '15', '0', '1', '1', '100', '1', '140000', '140000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1614.23', '1537.65', '29.3', '5.5', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '16', '0', '1', '1', '100', '1', '139000', '139000', '0', '0', '12', '46026', '4', '120000', '46026', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '17', '0', '1', '1', '100', '0', '150000', '150000', '1000', '1000', '33', '38507', '0', '0', '0', '0', '0', '18', '20', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '18', '0', '1', '1', '100', '1', '240000', '240000', '0', '0', '41', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
DELETE FROM creature_text WHERE entry=38507;
REPLACE INTO `creature_text` VALUES ('38507', '0', '0', 'Let us go at once. We will track Sylvanas down. For Gilneas!', '12', '0', '100', '0', '0', '0', 'tobias');
REPLACE INTO `creature_text` VALUES ('38507', '1', '0', 'Let\'s do our best not to be seen!', '12', '0', '100', '0', '0', '0', 'tobias');
REPLACE INTO `creature_text` VALUES ('38507', '2', '0', 'Did you hear that? Sylvanas is headed to the cathedral. Let\'s hurry!', '12', '0', '100', '0', '0', '0', 'tobias');
REPLACE INTO `creature_text` VALUES ('38507', '3', '0', 'Quick, hide in the water!', '12', '0', '100', '0', '0', '0', 'tobias');

-- smart script for http://www.wowhead.com/npc=38611
DELETE FROM smart_scripts WHERE entryorguid=38611;
REPLACE INTO `smart_scripts` VALUES ('38611', '0', '0', '0', '19', '0', '100', '0', '24902', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('38611', '0', '1', '0', '19', '0', '100', '0', '24902', '0', '0', '0', '12', '38507', '1', '600000', '38507', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=38611;
REPLACE INTO `creature_text` VALUES ('38611', '0', '0', 'Follow Tobias Mistmantle into the Cathedral District.', '41', '0', '100', '0', '0', '0', 'Lorna');


-- spawn bat by the 38539 for quest 24920
DELETE FROM smart_scripts WHERE entryorguid=38539;
REPLACE INTO `smart_scripts` VALUES ('38539', '0', '0', '0', '19', '0', '100', '0', '24920', '0', '0', '0', '12', '38615', '3', '420000', '38615', '0', '0', '8', '0', '0', '0', '-1670.18', '1656.61', '20.49', '5.03', '');

-- smart script for http://www.wowhead.com/npc=46026
DELETE FROM smart_scripts WHERE entryorguid=46026;
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '1', '0', '1', '1', '100', '1', '2000', '2000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1600.63', '1516.84', '29.24', '0.83', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '2', '0', '1', '1', '100', '1', '10000', '10000', '0', '0', '12', '38533', '4', '60000', '38533', '0', '0', '8', '0', '0', '0', '-1596.64', '1524.42', '29.24', '4.01', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '3', '0', '1', '1', '100', '1', '10000', '10000', '0', '0', '12', '38537', '4', '90000', '38537', '0', '0', '8', '0', '0', '0', '-1594.51', '1522.57', '29.24', '3.88', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '4', '0', '1', '1', '100', '1', '11000', '11000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '38533', '20', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '5', '0', '1', '1', '100', '1', '20000', '20000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '6', '0', '1', '1', '100', '1', '26000', '26000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '11', '38533', '20', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '7', '0', '1', '1', '100', '1', '35000', '35000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '8', '0', '1', '1', '100', '1', '47000', '47000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '11', '38533', '20', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '9', '0', '1', '1', '100', '1', '55000', '55000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '10', '0', '1', '1', '100', '1', '62000', '62000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '38537', '20', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '11', '0', '1', '1', '100', '1', '71000', '71000', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '12', '0', '1', '1', '100', '1', '82000', '82000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '11', '38537', '20', '0', '0', '0', '0', '0', 'p1');
-- text for Lady sylvanas
DELETE FROM creature_text WHERE entry=46026;
REPLACE INTO `creature_text` VALUES ('46026', '0', '0', 'You can assure Garrosh that this is a minor setback. Our victory in Gilneas will be absolute.', '12', '0', '100', '0', '0', '20492', 'sylvanas');
REPLACE INTO `creature_text` VALUES ('46026', '1', '0', 'You\'d do well to watch your tone, General! Neither you nor Garrosh have anything to worry about. We\'ve seized all production of the plague, as he ordered. We\'d never deploy it without his permission.', '12', '0', '100', '0', '0', '20493', 'sylvanas');
REPLACE INTO `creature_text` VALUES ('46026', '2', '0', 'Go with honor... General.', '12', '0', '100', '0', '0', '20494', 'sylvanas');
REPLACE INTO `creature_text` VALUES ('46026', '3', '0', 'What kind of question is that? Of course we\'re deploying the plague, as planned! Let the gilneans enjoy their small victory. Not even their bones will remain by tomorrow!', '12', '0', '100', '0', '0', '20495', 'sylvanas');

-- text for General Warhowl
DELETE FROM creature_text WHERE entry=38533;
REPLACE INTO `creature_text` VALUES ('38533', '0', '0', 'It appears you\'re losing control of Gilneas, Sylvanas. Garrosh fears he\'s going to have to carry out this invasion himself.', '12', '0', '100', '0', '0', '22620', 'warhowl');
REPLACE INTO `creature_text` VALUES ('38533', '1', '0', 'You sound very confident, your Majesty. I sincerely hope you do not plan to use the plague. Garrosh has expllicitely forbidden it.', '12', '0', '100', '0', '0', '22621', 'warhowl');
REPLACE INTO `creature_text` VALUES ('38533', '2', '0', 'I will deliver my report to our leader, then. By your leave, my lady.', '12', '0', '100', '0', '0', '22622', 'warhowl');

-- text for High Executor Crenshaw
DELETE FROM creature_text WHERE entry=38537;
REPLACE INTO `creature_text` VALUES ('38537', '0', '0', 'My Lady! Should i order my men to stop the deployment of the plague? Or ar we to continue as planned?', '12', '0', '100', '0', '0', '20917', 'crenshaw');
REPLACE INTO `creature_text` VALUES ('38537', '1', '0', 'As you wish!', '12', '0', '100', '0', '0', '20918', 'crenshaw');

-- spawn glaive vehicle for quest 24681 by Lord Darius
DELETE FROM smart_scripts WHERE entryorguid=38149;
REPLACE INTO `smart_scripts` VALUES ('38149', '0', '0', '0', '19', '0', '100', '0', '24681', '0', '0', '0', '12', '38150', '1', '600000', '38150', '0', '0', '8', '0', '0', '0', '-1338.06', '2123.55', '5.63', '2.64', 'glaive');

-- for quest endgame spawn hyppogryph mount by Lorna Crowley
DELETE FROM smart_scripts WHERE entryorguid=43727;
REPLACE INTO `smart_scripts` VALUES ('43727', '0', '0', '0', '19', '0', '100', '0', '26706', '0', '0', '0', '12', '43751', '4', '60000', '43751', '0', '0', '8', '0', '0', '0', '-1298.12', '2128.67', '5.546', '2.58', 'summ gryph');
REPLACE INTO `smart_scripts` VALUES ('43727', '0', '1', '0', '19', '0', '100', '0', '26706', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '43749', '30', '0', '0', '0', '0', '0', 'say');

-- text of tobias 
DELETE FROM creature_text WHERE entry=43749;
REPLACE INTO `creature_text` VALUES ('43749', '0', '0', 'Hop on a hyppogryph, now\'s our chance!', '12', '0', '100', '0', '0', '0', 'tobias');


-- script of Lorna from ship in quest Endgame
DELETE FROM smart_scripts WHERE entryorguid=50773;
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '0', '0', '62', '0', '100', '0', '50773', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '1', '0', '60', '1', '100', '1', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '2', '0', '60', '1', '100', '1', '4000', '4000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '3', '0', '60', '1', '100', '1', '14000', '14000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '4', '0', '60', '1', '100', '1', '18000', '18000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1483.87', '3235.84', '127.67', '5.3', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '5', '0', '60', '1', '100', '1', '25000', '25000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1463.91', '3211.84', '111.24', '5.63', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '6', '0', '60', '1', '100', '1', '34000', '34000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1442.7', '3208.56', '105.88', '6.14', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '7', '0', '60', '1', '100', '1', '48000', '48000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1473.31', '3263', '99.89', '2.11', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '8', '0', '60', '1', '100', '1', '61000', '61000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1487.15', '3286.83', '104.15', '2.11', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '9', '0', '60', '1', '100', '1', '78000', '78000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1477.79', '3271.9', '102.49', '5.16', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '10', '0', '60', '1', '100', '1', '78000', '78000', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '11', '0', '60', '1', '100', '1', '81000', '81000', '0', '0', '12', '43567', '1', '120000', '43567', '0', '0', '8', '0', '0', '0', '-1457', '3234.82', '100.88', '2', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '12', '0', '60', '1', '100', '1', '85000', '85000', '0', '0', '1', '4', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '13', '0', '60', '1', '100', '1', '95000', '95000', '0', '0', '1', '5', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '14', '0', '60', '1', '100', '1', '105000', '105000', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
-- text of Lorna in quest EndGame
DELETE FROM creature_text WHERE entry=50773;
REPLACE INTO `creature_text` VALUES ('50773', '0', '0', 'Secure the shafters!', '14', '0', '100', '0', '0', '19688', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '1', '0', 'Heads up, greenskins! My men and I will give you your new bearing! If you try anything funny, I\'ll fill you with led!', '14', '0', '100', '0', '0', '19690', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '2', '0', 'The rest of you, follow me downstairs!', '14', '0', '100', '0', '0', '19691', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '3', '0', 'We\'ve got the explosives in the furnace room. just hold them off now!', '12', '0', '100', '0', '0', '19692', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '4', '0', 'That\'s...one big orc!', '14', '0', '100', '0', '0', '19693', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '5', '0', 'It\'s about to blow, jump on the wyverns!', '14', '0', '100', '0', '0', '19694', 'lorna');

-- endgame  mount gryphon wyvern from ship 
DELETE FROM smart_scripts WHERE entryorguid=43713;
REPLACE INTO `smart_scripts` VALUES ('43713', '0', '0', '0', '62', '0', '100', '0', '43713', '0', '0', '0', '62', '654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-1300', '2132', '5.54', '2.67', 'tele');

-- spawn or mount in ship for quest endgame
DELETE FROM creature WHERE id=43713;
REPLACE INTO `creature` VALUES ('NULL', '43713', '654', '0', '0', '1', '1', '0', '0', '-1486.11', '3241.1', '106.079', '6.853', '10', '0', '0', '247', '1', '0', '0', '0', '0');

-- Lorna Crowley gossip menu from quest endgame
DELETE FROM gossip_menu_option WHERE menu_id=50773;
REPLACE INTO `gossip_menu_option` VALUES ('50773', '0', '0', 'Let\'s destroy the gunship!', '1', '1', '0', '0', '0', '0', '');

-- Lorna spawn in ship for quest endgame
DELETE FROM creature WHERE id=50773;
REPLACE INTO `creature` VALUES ('NULL', '50773', '654', '0', '0', '1', '1', '0', '0', '-1474.44', '3250.97', '127.453', '5.38377', '10', '0', '0', '1092', '1', '0', '0', '0', '0');

-- spawn of http://www.wowhead.com/npc=42141 in ship from quets endgame and for http://www.wowhead.com/npc=43703
DELETE FROM creature WHERE id=42141;
DELETE FROM creature WHERE id=43703;
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1487.14, 3244.16, 128.637, 0, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1449.4, 3262.16, 125.87, 0, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1439.39, 3211.91, 105.826, -4.11168, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1466.35, 3250.68, 99.585, 5.21, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1477.07, 3268.68, 99.746, -1.17823, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1485.23, 3284.27, 103.923, 5.23, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1487.14, 3244.16, 128.637, 0, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1449.4, 3262.16, 125.87, 0, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1508.2, 3248.51, 181.594, 5.56019, 300, 0, 0, 42, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1508.2, 3248.51, 181.594, 5.56019, 300, 0, 0, 247, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1508.2, 3248.51, 181.594, 5.56019, 300, 0, 0, 273, 1, 0, 0, 0, 0);


-- wyverns mount from ship from quest endgame  gossip menu
DELETE FROM gossip_menu_option WHERE menu_id=43713;
REPLACE INTO `gossip_menu_option` VALUES ('43713', '0', '0', 'Get me out of here please!', '1', '1', '0', '0', '0', '0', '');

-- gossip menu for hyppogryph who port  players to ship from  quest endgame
DELETE FROM gossip_menu_option WHERE menu_id=43751;
REPLACE INTO `gossip_menu_option` VALUES ('43751', '0', '0', 'I need to get on the Horde Gunship!', '1', '1', '0', '0', '0', '0', '');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261593;
REPLACE INTO `waypoint_data` VALUES ('261593', '1', '-1566.38', '1390.77', '36.0179', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '2', '-1562.88', '1390.8', '35.8483', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '3', '-1552.39', '1391.06', '35.5647', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '4', '-1543.65', '1391.48', '35.5569', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '5', '-1536.38', '1392.49', '35.5569', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '6', '-1529.91', '1394.04', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '7', '-1518.78', '1397.43', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '8', '-1509.72', '1398.06', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '9', '-1503.52', '1399.04', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '10', '-1503.44', '1419.89', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '11', '-1509.61', '1424.39', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '12', '-1521.63', '1424.52', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '13', '-1535.63', '1424.61', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '14', '-1546.13', '1424.69', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '15', '-1550.36', '1423.18', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '16', '-1551.67', '1414.06', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '17', '-1553.42', '1405.86', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '18', '-1556.58', '1399.83', '35.6472', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '19', '-1561.39', '1397.71', '35.8006', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '20', '-1568.3', '1396.2', '36.0972', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '21', '-1568.9', '1392.2', '36.1942', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '22', '-1565.91', '1390.87', '35.9986', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261594;
REPLACE INTO `waypoint_data` VALUES ('261594', '1', '-1557.66', '1333.98', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '2', '-1555.33', '1334.13', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '3', '-1537.64', '1336.42', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '4', '-1523.44', '1340.18', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '5', '-1510.65', '1344.58', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '6', '-1504.29', '1351.4', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '7', '-1503.61', '1364.9', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '8', '-1505.01', '1389.47', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '9', '-1508.9', '1393.26', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '10', '-1534.01', '1394.26', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '11', '-1546.39', '1392.92', '35.5565', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '12', '-1551.4', '1386.18', '35.5581', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '13', '-1553.69', '1378.1', '35.5935', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '14', '-1557.53', '1357.82', '35.5571', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '15', '-1557.61', '1334.4', '35.5571', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261595;
REPLACE INTO `waypoint_data` VALUES ('261595', '1', '-1475.92', '1355.62', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '2', '-1475', '1352.49', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '3', '-1471.66', '1350.14', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '4', '-1463.43', '1352.34', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '5', '-1455.32', '1353.23', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '6', '-1446.92', '1354.6', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '7', '-1437.3', '1357', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '8', '-1431.66', '1358.47', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '9', '-1411.23', '1363.31', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '10', '-1400.7', '1368.13', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '11', '-1409.56', '1371.61', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '12', '-1427.2', '1369.01', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '13', '-1439.38', '1365.83', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '14', '-1451.75', '1361.66', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '15', '-1461.53', '1357.83', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '16', '-1471.03', '1354.79', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '17', '-1475.85', '1355.64', '35.5559', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261592;
REPLACE INTO `waypoint_data` VALUES ('261592', '1', '-1458.68', '1418.54', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '2', '-1448.37', '1419.77', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '3', '-1428.7', '1420.94', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '4', '-1413.35', '1420.38', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '5', '-1401.1', '1424.14', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '6', '-1401.63', '1439.68', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '7', '-1405.32', '1443.2', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '8', '-1408.36', '1437.72', '35.933', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '9', '-1412.54', '1426.12', '35.7332', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '10', '-1421.61', '1424.9', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '11', '-1433.14', '1425.22', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '12', '-1449.45', '1426.06', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '13', '-1463.22', '1426.51', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '14', '-1479.06', '1426.89', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '15', '-1484.9', '1426.01', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '16', '-1493.33', '1417.68', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '17', '-1490.45', '1415.73', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '18', '-1485.15', '1415.22', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '19', '-1478.28', '1416.56', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '20', '-1468.43', '1418.47', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '21', '-1459.05', '1418.52', '35.5558', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261596;
REPLACE INTO `waypoint_data` VALUES ('261596', '1', '-1432.88', '1431.65', '35.5957', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '2', '-1435.21', '1433.2', '35.6692', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '3', '-1440.34', '1434.15', '35.7517', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '4', '-1447.91', '1434.46', '35.7548', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '5', '-1453.63', '1434.68', '35.7571', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '6', '-1464.34', '1435.36', '35.7717', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '7', '-1473.31', '1435.78', '35.7773', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '8', '-1480.31', '1436.02', '35.7831', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '9', '-1488.11', '1436.2', '35.7927', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '10', '-1497.09', '1435.88', '35.7782', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '11', '-1504.43', '1433.15', '35.645', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '12', '-1505.15', '1426.76', '35.5562', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '13', '-1503.82', '1415.79', '35.5562', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '14', '-1500.94', '1406.18', '35.5562', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '15', '-1497.7', '1398.69', '35.5562', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '16', '-1494.42', '1393.34', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '17', '-1488.06', '1387.5', '35.7308', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '18', '-1476.38', '1386.3', '36.0042', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '19', '-1471.37', '1386.38', '36.0042', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '20', '-1461.34', '1386.64', '36.0042', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '21', '-1454.47', '1388.17', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '22', '-1449.23', '1395.78', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '23', '-1447.68', '1403.17', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '24', '-1447.43', '1412.26', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '25', '-1448.42', '1420.48', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '26', '-1451.08', '1430.13', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '27', '-1453.24', '1437.15', '35.8628', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '28', '-1447.38', '1436.53', '35.8446', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '29', '-1442.62', '1436.05', '35.8279', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '30', '-1435.86', '1436.1', '35.8285', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '31', '-1432.93', '1431.98', '35.6075', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261597;
REPLACE INTO `waypoint_data` VALUES ('261597', '1', '-1398.11', '1431.06', '35.6393', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '2', '-1398.29', '1427.45', '35.6398', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '3', '-1398.24', '1417.77', '35.6398', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '4', '-1397.79', '1409.39', '35.6398', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '5', '-1397.71', '1402.74', '35.64', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '6', '-1397.79', '1396.21', '35.6403', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '7', '-1398.92', '1387.65', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '8', '-1404.42', '1383.02', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '9', '-1411.85', '1379.74', '35.9987', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '10', '-1418.21', '1378.95', '35.9987', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '11', '-1427.88', '1379.24', '35.9987', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '12', '-1432.98', '1385.09', '35.7849', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '13', '-1432.24', '1393.68', '36.0032', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '14', '-1431.77', '1400.66', '36.0032', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '15', '-1431.27', '1407.64', '36.0032', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '16', '-1429.09', '1416.92', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '17', '-1424.57', '1419.91', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '18', '-1415.81', '1423.06', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '19', '-1409.5', '1424.17', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '20', '-1399.37', '1426.07', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '21', '-1397.31', '1430.59', '35.962', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '22', '-1397.97', '1431.24', '35.962', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261598;
REPLACE INTO `waypoint_data` VALUES ('261598', '1', '-1527.87', '1362.03', '36.005', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '2', '-1544.73', '1361.77', '36.0047', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '3', '-1550.23', '1355.78', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '4', '-1552.66', '1346.25', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '5', '-1546.86', '1336.25', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '6', '-1534.03', '1338.23', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '7', '-1525.78', '1340.33', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '8', '-1512.64', '1344.79', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '9', '-1506.93', '1348.41', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '10', '-1505.42', '1355.28', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '11', '-1507.81', '1361.72', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '12', '-1510.89', '1362.21', '36', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '13', '-1513.45', '1361.98', '36', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '14', '-1527.82', '1362.01', '36.0025', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=260536;
REPLACE INTO `waypoint_data` VALUES ('260536', '1', '-1402.63', '1419.77', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '2', '-1404.71', '1417.89', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '3', '-1408.48', '1413.35', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '4', '-1409.77', '1406.12', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '5', '-1410.41', '1395.65', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '6', '-1410.06', '1375.82', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '7', '-1406.57', '1368.96', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '8', '-1399.56', '1374.29', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '9', '-1397.11', '1382.71', '35.9617', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '10', '-1396.86', '1395.42', '35.9617', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '11', '-1397.47', '1403.91', '35.9617', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '12', '-1398.81', '1410.05', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '13', '-1401.46', '1417.39', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '14', '-1402.6', '1419.57', '35.5563', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261599;
REPLACE INTO `waypoint_data` VALUES ('261599', '1', '-1430.29', '1439.38', '35.9533', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '2', '-1430.65', '1436.37', '35.8871', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '3', '-1430.54', '1428.21', '35.7422', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '4', '-1430.86', '1419.47', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '5', '-1431.28', '1412.49', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '6', '-1431.71', '1405.5', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '7', '-1432.38', '1395.02', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '8', '-1433.75', '1385.31', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '9', '-1441.35', '1382.43', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '10', '-1448.35', '1386.24', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '11', '-1451.56', '1393.44', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '12', '-1453.35', '1403.19', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '13', '-1456.44', '1414.07', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '14', '-1457.86', '1420.56', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '15', '-1457.59', '1430.63', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '16', '-1454.31', '1433.61', '35.714', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '17', '-1449.26', '1435.31', '35.7895', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '18', '-1441.17', '1437.06', '35.8645', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '19', '-1430.13', '1439.47', '35.9562', '0', '0', '0', '0', '100', '0', '0');

-- made the quest how it should with the right config
DELETE FROM quest_template WHERE id=14218;
REPLACE INTO `quest_template` VALUES ('14218', '2', '5', '1', '0', '4755', '0', '0', '0', '0', '2097152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14212', '0', '0', '0', '5', '100', '270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '262144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '55009', '55010', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '1134', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'By Blood and Ash', 'Slay 80 Bloodfang Stalkers using the Rebel Cannons.', 'The time has come, $N.  If we\'re going to put a dent in their numbers, the time is now.$B$BWe have the position.$B$BWe have the firepower.$B$BAll that remains to be seen is whether we have the courage... and I sure don\'t see a coward standing in front of me.', 'Return to Tobias Mistmantle outside the Light\'s Dawn Cathedral in Gilneas City after slaying 80 Bloodfang Stalkers.', 'You\'ve done well, $N.  You\'ve done more than could be asked of any Gilnean.$B$BWe\'re running low on ammunition.  It\'s time to regroup inside now.', '', 'Bloodfang Stalkers slain', '35229', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodfang Stalkers slain', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');

-- equipment for 34511
DELETE FROM creature_equip_template WHERE entry=34511;
REPLACE INTO `creature_equip_template` VALUES ('34511', '2','2029', '1172', '0');

-- wrong equipment lol
UPDATE creature_template SET equipment_id=0 WHERE entry=385;
DELETE FROM creature_equip_template WHERE entry=385;

DELETE FROM creature WHERE guid IN (265110,265114,265115,265122);

-- script for drawning man
DELETE FROM smart_scripts WHERE entryorguid=36440;
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '0', '8', '64', '0', '100', '0', '0', '0', '0', '0', '11', '46598', '1', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'credit on gossip');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '1', '0', '10', '0', '100', '0', '1', '10', '7000', '7000', '75', '68735', '5', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'credit on gossip');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '2', '3', '8', '0', '100', '0', '73712', '0', '2000', '2000', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'phase');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '3', '4', '61', '0', '100', '1', '0', '0', '0', '0', '28', '46598', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'die');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '4', '5', '61', '0', '100', '1', '0', '0', '0', '0', '28', '68730', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'die');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '5', '6', '61', '0', '100', '1', '0', '0', '0', '0', '41', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'die');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '6', '0', '61', '0', '100', '1', '0', '0', '0', '0', '33', '36440', '0', '0', '0', '0', '0', '18', '5', '0', '0', '0', '0', '0', '0', 'die');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '7', '0', '1', '0', '100', '1', '100', '100', '0', '0', '11', '68730', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'drowning');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '8', '0', '61', '0', '100', '0', '0', '0', '0', '0', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'credit on gossip');

-- fixing error
DELETE FROM creature WHERE guid=247947;
REPLACE INTO `creature` VALUES (247947, 34511, 654, 0, 0, 1, 1, 0, 0, -1917.31, 2405.52, 29.895, 4.57276, 90, 0, 0, 1, 0, 0, 0, 0, 0);

-- add missing crocodile from quest http://www.wowhead.com/quest=24468
DELETE FROM quest_template WHERE id=24468;
REPLACE INTO `quest_template` VALUES ('24468', '2', '8', '5', '0', '4714', '0', '0', '0', '0', '2097152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24438', '0', '0', '0', '5', '225', '420', '0', '0', '0', '0', '0', '0', '0', '0', '0', '262152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '54994', '54995', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '1134', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stranded at the Marsh', 'Rescue 5 Crash Survivors at the Hailwood Marsh.', 'The ogres got two of our stagecoaches: this one and one that fell into the marsh just north of here.$B$BI want you to head there and rescue any survivors while we hatch up a plan to deal with these ogres.', 'Return to Liam Greymane at the Stagecoach Crash Site.', 'You\'ve done it again, $N.  You have my thanks.', '', '', '37078', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Swamp Crocolisk Slain', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');

DELETE FROM creature WHERE id=37078 AND map=654;
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2055.49, 1809.52, 6.53047, 3.27654, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2002.88, 1805.51, 7.87269, 4.13108, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2026.9, 1759.82, 6.6302, 3.1729, 10, 0, 0, 156, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2078.41, 1735.21, 5.56232, 2.63254, 10, 0, 0, 156, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2050.38, 1779.11, 6.15966, 0.441281, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -1960.49, 1789.13, 5.67995, 2.31446, 10, 0, 0, 156, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -1961.41, 1763.24, 5.90216, 3.62215, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -1990.27, 1756.08, 5.57936, 5.98227, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2073.69, 1777.1, 6.1768, 3.39438, 10, 0, 0, 156, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2097.49, 1760.56, 5.42465, 2.64747, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2078.75, 1806.95, 6.00604, 4.03134, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2036.77, 1833.72, 6.036, 1.1827, 10, 0, 0, 156, 1, 0, 0, 0, 0);

-- equipment for http://www.wowhead.com/npc=36396
DELETE FROM creature_equip_template WHERE entry=36396;
REPLACE INTO `creature_equip_template` VALUES ('36396', '2', '23505', '23505', '0');

-- equipment for http://www.wowhead.com/npc=36236
DELETE FROM creature_equip_template WHERE entry=36236;
REPLACE INTO `creature_equip_template` VALUES ('36236', '1', '43611', '0', '0');

-- equipment for http://www.wowhead.com/npc=34511
DELETE FROM creature_equip_template WHERE entry=34511;
REPLACE INTO `creature_equip_template` VALUES ('34511', '2', '2029', '1172', '0');

-- soldier  text from worgens
DELETE FROM smart_scripts WHERE entryorguid=34916;
REPLACE INTO `smart_scripts` VALUES ('34916', '0', '0', '0', '0', '0', '50', '0', '1000', '40000', '120000', '170000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say1');
REPLACE INTO `smart_scripts` VALUES ('34916', '0', '2', '0', '1', '0', '100', '1', '100', '100', '0', '0', '49', '0', '0', '0', '0', '0', '0', '11', '34884', '15', '0', '0', '0', '0', '0', 'attack');
DELETE FROM creature_text WHERE entry=34916;
REPLACE INTO `creature_text` VALUES ('34916', '0', '0', 'Don\'t look into their eyes! They\'re not the people you once knew!', '14', '0', '50', '0', '0', '0', 'Gilneas Guard');
REPLACE INTO `creature_text` VALUES ('34916', '0', '1', 'Hold them back! We must protect the survivors!', '14', '0', '50', '0', '0', '0', 'Gilenas Guard');

-- fix for quest 14098 Evacuate the Merchant Square from worgens map http://www.wowhead.com/quest=14098
DELETE FROM quest_template WHERE id=14098;
REPLACE INTO `quest_template` VALUES ('14098', '2', '2', '1', '0', '4755', '0', '0', '0', '0', '2097152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14099', '14093', '0', '6', '65', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1134', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Evacuate the Merchant Square', 'Evacuate 3 Civilian Homes.', 'The civilians aren\'t safe here anymore.  Not even inside their homes.$B$BWe\'re doing our best to stop the worgen from getting indoors, but their numbers are too great.$B$BHelp us by evacuating the civilian homes.  My father\'s army in the prison district will be able to better protect them.', 'Return to Prince Liam Greymane at the Merchant Square in Gilneas City.', 'Good job, $N.  Thanks to you, many Gilneans will live to see another day.', '', '', '-195327', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Market Homes Evacuated', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');

-- missing objects phase 1 worgens
DELETE FROM gameobject WHERE id=195453;
REPLACE INTO `gameobject` VALUES ('NULL', '195453', '638', '0', '0', '1', '1', '-1575.81', '1320.37', '35.6616', '3.19194', '0', '0', '0.999683', '-0.0251718', '300', '0', '1');
REPLACE INTO `gameobject` VALUES ('NULL', '195453', '638', '0', '0', '1', '1', '-1575.41', '1314.4', '35.6634', '3.24692', '0', '0', '0.998614', '-0.052639', '300', '0', '1');

DELETE FROM gameobject_template WHERE entry=195327;
REPLACE INTO `gameobject_template` VALUES ('195327', '10', '9023', 'Merchant Square Door', 'openhandglow', '', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '14098', '0', '60000', '0', '0', '0', '0', '0', '0', '66639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'SmartGameObjectAI', '', '13329');

-- merchant doors fix
DELETE FROM smart_scripts WHERE entryorguid=195327;
REPLACE INTO `smart_scripts` VALUES ('195327', '1', '0', '0', '64', '0', '100', '0', '0', '0', '0', '0', '12', '34981', '3', '7000', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'spawn a citizen');

-- text for shaken survivor
DELETE FROM smart_scripts WHERE entryorguid=35554;
REPLACE INTO `smart_scripts` VALUES ('35554', '0', '0', '0', '60', '0', '50', '0', '1000', '41000', '30000', '70000', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=35554;
REPLACE INTO `creature_text` VALUES ('35554', '0', '0', 'What will happen to us now?', '12', '0', '34', '0', '0', '0', 'say');
REPLACE INTO `creature_text` VALUES ('35554', '0', '1', 'I lost my family and my home!', '12', '0', '33', '0', '0', '0', 'say');
REPLACE INTO `creature_text` VALUES ('35554', '0', '2', 'Those awful creatures will tear us apart!', '12', '0', '33', '0', '0', '0', 'say');

-- fix for text and action of Lord Godfrey
DELETE FROM smart_scripts WHERE entryorguid=36330;
REPLACE INTO `smart_scripts` VALUES ('36330', '0', '0', '0', '54', '0', '100', '1', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('36330', '0', '1', '0', '1', '1', '100', '1', '100', '100', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1823.65', '2295.23', '42.047', '5.899', 'pos');
REPLACE INTO `smart_scripts` VALUES ('36330', '0', '2', '0', '1', '1', '100', '1', '11000', '11000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say1');
REPLACE INTO `smart_scripts` VALUES ('36330', '0', '3', '0', '1', '1', '100', '1', '32000', '32000', '0', '0', '41', '1000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'despawn');
DELETE FROM creature_text WHERE entry=36330;
REPLACE INTO `creature_text` VALUES ('36330', '0', '0', 'Give it up, Krennan. It\'s time to put this one down. It\'s protocol.', '12', '0', '100', '0', '0', '19635', 'Godfrey worgen say');

-- fix for text and action of Lord Godfrey Krennan Aranas <Royal Chemist>
DELETE FROM smart_scripts WHERE entryorguid=36331;
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '0', '0', '54', '0', '100', '1', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '1', '0', '1', '1', '100', '1', '5000', '5000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1821.72', '2291.4', '42.114', '1.6', 'move');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '2', '0', '1', '1', '100', '1', '7000', '7000', '0', '0', '66', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0.84', 'orient');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '3', '0', '1', '1', '100', '1', '40000', '40000', '0', '0', '28', '50220', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'rem');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '4', '0', '1', '1', '100', '1', '7500', '7500', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say treatments');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '5', '0', '1', '1', '100', '1', '40000', '40000', '0', '0', '28', '42716', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'rem');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '6', '0', '1', '1', '100', '1', '7000', '7000', '0', '0', '12', '36330', '1', '120000', '36330', '0', '0', '8', '0', '0', '0', '-1837.88', '2291.45', '42.196', '0.16', 'summon crowley');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '7', '0', '1', '1', '100', '1', '40000', '40000', '0', '0', '28', '68630', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'rem');
REPLACE INTO `smart_scripts` VALUES ('36331', '0', '8', '0', '1', '1', '100', '1', '41000', '41000', '0', '0', '41', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'despawn');
DELETE FROM creature_text WHERE entry=36331;
REPLACE INTO `creature_text` VALUES ('36331', '0', '0', 'I am not giving up on you, $N. I don\'t have a cure for the Curse yet... but there are treatments. You\'ll have control again.', '12', '0', '100', '0', '0', '20919', 'Arenas event');

-- fix for text and action of King Genn Greymane
DELETE FROM smart_scripts WHERE entryorguid=36332;
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '0', '4', '20', '0', '100', '1', '14375', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'set p1');
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '1', '0', '1', '1', '100', '1', '23000', '23000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say 1');
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '2', '0', '1', '1', '100', '1', '33000', '33000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say 2');
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '3', '0', '1', '1', '100', '1', '60000', '60000', '0', '0', '78', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'reset');
REPLACE INTO `smart_scripts` VALUES ('36332', '0', '4', '0', '61', '0', '100', '1', '0', '0', '0', '0', '85', '69251', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'set p1');
DELETE FROM creature_text WHERE entry=36332;
REPLACE INTO `creature_text` VALUES ('36332', '0', '0', 'Tell me, Godfrey. Those that stayed in Gilneas City so that we could live. Were they following protocol?', '12', '0', '100', '0', '0', '19721', 'Greymane say1');
REPLACE INTO `creature_text` VALUES ('36332', '1', '0', 'I didn\'t think so. Now hand me that potion, Krennan... and double the dosage.', '12', '0', '100', '0', '0', '19722', 'Greymane say2');

-- text for  http://www.wowhead.com/npc=36132
DELETE FROM creature_text WHERE entry=34571;
REPLACE INTO `creature_text` VALUES ('34571', '0', '0', 'Welcome back! You were fortunate. Krennan\'s treatment doesn\'t always work this well on people who\'ve had the Curse as long as you.', '12', '0', '100', '0', '0', '0', 'gwen');

-- text for http://www.wowhead.com/npc=36132
DELETE FROM creature_text WHERE entry=36132;
REPLACE INTO `creature_text` VALUES ('36132', '0', '0', 'Do exercise caution. Don\'t expect anyone to invite you to their homes just yet. But at least they won\'t shoot you outright.', '12', '0', '100', '0', '0', '0', 'aranas');
DELETE FROM smart_scripts WHERE entryorguid=36132;
REPLACE INTO `smart_scripts` VALUES ('36132', '0', '0', '0', '20', '0', '100', '0', '14313', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('36132', '0', '1', '0', '1', '1', '100', '1', '500', '500', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '34571', '20', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('36132', '0', '2', '0', '1', '1', '100', '1', '6000', '6000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('36132', '0', '3', '0', '1', '1', '100', '1', '6500', '6500', '0', '0', '78', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');

-- text for http://www.wowhead.com/npc=36290
DELETE FROM smart_scripts WHERE entryorguid=36290;
REPLACE INTO `smart_scripts` VALUES ('36290', '0', '2', '0', '20', '0', '100', '0', '14386', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('36290', '0', '3', '0', '20', '0', '100', '0', '14386', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '11', '36291', '10', '0', '0', '0', '0', '0', 'say');

-- text for http://www.wowhead.com/npc=36291
DELETE FROM creature_text WHERE entry IN (36290,36291);
REPLACE INTO `creature_text` VALUES ('36290', '0', '0', 'Hold your positions, men!', '14', '0', '100', '0', '0', '21699', 'Godfrey earthquake');
REPLACE INTO `creature_text` VALUES ('36291', '1', '0', 'What is happening?', '12', '0', '100', '0', '0', '0', 'Melinda');

-- fix for cat summoner of Lucius http://www.wowhead.com/npc=36459
DELETE FROM smart_scripts WHERE entryorguid IN (36459,36461);
REPLACE INTO `smart_scripts` VALUES ('36459', '0', '0', '0', '64', '0', '100', '0', '0', '0', '0', '0', '12', '36461', '1', '120000', '36461', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'summon lucius');
REPLACE INTO `smart_scripts` VALUES ('36461', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');

-- text for http://www.wowhead.com/npc=36461
DELETE FROM creature_text WHERE entry=36461;
REPLACE INTO `creature_text` VALUES ('36461', '0', '0', 'It\'s the perfect bait, and it works!', '14', '0', '100', '0', '0', '0', 'lucius');

-- spawn of cat
DELETE FROM creature WHERE id=36459 AND map=654;
REPLACE INTO `creature` VALUES ('NULL', '36459', '654', '0', '0', '1', '1', '5554', '0', '-2102.93', '2333.44', '8.62334', '2.1293', '480', '25', '0', '8', '1', '1', '0', '0', '0');

-- horse who port you to complete quest http://www.wowhead.com/quest=14465/to-greymane-manor
DELETE FROM smart_scripts WHERE entryorguid=38765;
REPLACE INTO `smart_scripts` VALUES ('38765', '0', '0', '2', '40', '0', '100', '0', '9', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'despawn');
REPLACE INTO `smart_scripts` VALUES ('38765', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '62', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-1608.38', '2533.52', '130.25', '0.74', 'despawn');

-- cariage fix to transport  players to next location
DELETE FROM smart_scripts WHERE entryorguid=44928;
REPLACE INTO `smart_scripts` VALUES ('44928', '0', '0', '2', '40', '0', '100', '0', '5', '0', '0', '0', '62', '654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-2214.2', '1809.82', '11.841', '2.908', 'wp');
REPLACE INTO `smart_scripts` VALUES ('44928', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'die');

-- smart script for http://www.wowhead.com/npc=36540
DELETE FROM smart_scripts WHERE entryorguid=36540;
REPLACE INTO `smart_scripts` VALUES ('36540', '0', '0', '0', '8', '0', '100', '0', '73712', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'credit');
REPLACE INTO `smart_scripts` VALUES ('36540', '0', '1', '0', '1', '1', '100', '1', '500', '500', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'die');

-- smart script for http://www.wowhead.com/npc=36457
DELETE FROM smart_scripts WHERE entryorguid=36457;
REPLACE INTO `smart_scripts` VALUES ('36457', '0', '0', '0', '1', '0', '100', '0', '2000', '2000', '3000', '3000', '11', '73712', '1', '0', '0', '0', '0', '11', '36540', '5', '0', '0', '0', '0', '0', 'kill');

-- smart script for http://www.wowhead.com/npc=37873
DELETE FROM smart_scripts WHERE entryorguid=37873;
REPLACE INTO `smart_scripts` VALUES ('37873', '0', '0', '0', '20', '0', '100', '0', '24628', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=37873;
REPLACE INTO `creature_text` VALUES ('37873', '0', '0', 'Just as Daral\'nir soothes the cursed druids who gave into the beast and abandoned balance, let Tal\'doren soothe $N.', '12', '0', '100', '0', '0', '0', 'say');

-- smart script for http://www.wowhead.com/npc=38051
DELETE FROM smart_scripts WHERE entryorguid=38051;
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '1', '0', '1', '1', '100', '1', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '2', '0', '1', '1', '100', '1', '7000', '7000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '11', '37195', '30', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '3', '0', '1', '1', '100', '1', '18000', '18000', '0', '0', '41', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'despawn');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '4', '0', '54', '0', '100', '0', '0', '0', '0', '0', '5', '16', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'kneel');
REPLACE INTO `smart_scripts` VALUES ('38051', '0', '5', '0', '1', '1', '100', '1', '13000', '13000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=38051;
REPLACE INTO `creature_text` VALUES ('38051', '0', '0', 'Darius! The Dark Rangers have the Scythe! They got to it before we were able to reach it.', '12', '0', '100', '0', '0', '0', 'say darius tobias');
REPLACE INTO `creature_text` VALUES ('38051', '1', '0', 'It will be done!', '12', '0', '100', '0', '0', '0', 'say tobias');

-- smart script for http://www.wowhead.com/npc=37195
DELETE FROM smart_scripts WHERE entryorguid=37195;
DELETE FROM creature_text WHERE entry=37195;
REPLACE INTO `smart_scripts` VALUES ('37195', '0', '0', '0', '20', '0', '100', '0', '24627', '0', '0', '0', '12', '38051', '1', '60000', '38051', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'summon');
REPLACE INTO `creature_text` VALUES ('37195', '0', '0', 'Lorna!', '14', '0', '100', '0', '0', '19511', 'crowley');
REPLACE INTO `creature_text` VALUES ('37195', '1', '0', 'Get our men in position immediately, Tobias. We cannot let the Scythe fall into the hands of the Forsaken!', '12', '0', '100', '0', '0', '0', 'say darius tobias');
REPLACE INTO `creature_text` VALUES ('37195', '2', '0', 'Does this toad speak for you, Genn? You come to our dwelling as a friend, or do you come as a tyrant?', '14', '0', '100', '0', '0', '19510', 'crowley');
REPLACE INTO `creature_text` VALUES ('37195', '3', '0', 'Aye, Genn. It is not law that binds us. It is something far stronger. My men are ready to give their lives under your command.', '12', '0', '100', '0', '0', '19512', 'crowley');

-- text for those 2 npc
DELETE FROM creature_text WHERE entry=37875;
DELETE FROM creature_text WHERE entry=37876;
REPLACE INTO `creature_text` VALUES ('37875', '0', '0', 'No...i\'d sooner die than have one of your kind for a king!', '12', '0', '100', '0', '0', '19631', 'godfrey');
REPLACE INTO `creature_text` VALUES ('37876', '0', '0', 'It\'s over, Godfrey. You have no support left among the eastern lords.', '12', '0', '100', '0', '0', '0', 'greymane');

-- smart script for http://www.wowhead.com/npc=37875
DELETE FROM smart_scripts WHERE entryorguid=37875;
-- smart script for http://www.wowhead.com/npc=37876
DELETE FROM smart_scripts WHERE entryorguid=37876;
REPLACE INTO `smart_scripts` VALUES ('37875', '0', '0', '0', '1', '0', '100', '1', '10000', '10000', '0', '0', '2', '35', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'f');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '0', '0', '20', '0', '100', '0', '24592', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '1', '0', '1', '1', '100', '1', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '2', '0', '1', '1', '100', '1', '6000', '6000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '37875', '10', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '3', '0', '1', '1', '100', '1', '9000', '9000', '0', '0', '2', '14', '0', '0', '0', '0', '0', '11', '37875', '10', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '4', '0', '1', '1', '100', '1', '11000', '11000', '0', '0', '78', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('37876', '0', '5', '0', '1', '1', '100', '1', '10000', '10000', '0', '0', '81', '1', '0', '0', '0', '0', '0', '11', '38764', '10', '0', '0', '0', '0', '0', 'p1');

-- smart script for http://www.wowhead.com/npc=38764
DELETE FROM smart_scripts WHERE entryorguid=38764;
REPLACE INTO `smart_scripts` VALUES ('38764', '0', '0', '0', '62', '0', '100', '0', '38764', '0', '0', '0', '62', '654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-1379.65', '1221.52', '35.55', '0.33', 'at lorna');
REPLACE INTO `smart_scripts` VALUES ('38764', '0', '1', '0', '1', '0', '100', '0', '40000', '40000', '40000', '40000', '81', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'set flag');

-- smart script for http://www.wowhead.com/npc=37803
DELETE FROM smart_scripts WHERE entryorguid=37803;
REPLACE INTO `smart_scripts` VALUES ('37803', '0', '0', '0', '19', '0', '100', '0', '24674', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('37803', '0', '1', '0', '64', '0', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=37803;
REPLACE INTO `creature_text` VALUES ('37803', '0', '0', 'We will not die as slaves...we\'re Gilneans!', '12', '0', '100', '0', '0', '0', 'marcus');
REPLACE INTO `creature_text` VALUES ('37803', '1', '0', 'This is our land..they\'re not going to take it away without a fight!', '12', '0', '100', '0', '0', '0', 'marcus');


-- smart script for http://www.wowhead.com/npc=38507
DELETE FROM smart_scripts WHERE entryorguid=38507;
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '1', '0', '1', '1', '100', '1', '4000', '4000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1654.68', '1603.6', '23.131', '0.98', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '2', '0', '1', '1', '100', '1', '4000', '4000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '3', '0', '1', '1', '100', '1', '9000', '9000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1664.22', '1615.85', '20.49', '2.19', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '4', '0', '1', '1', '100', '1', '17000', '17000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1632.82', '1621.85', '20.49', '0.18', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '5', '0', '1', '1', '100', '1', '26000', '26000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '6', '0', '1', '1', '100', '1', '28000', '28000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1589.17', '1607.13', '21.6', '5.97', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '7', '0', '1', '1', '100', '1', '50000', '50000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1569.75', '1631.44', '20.589', '5.77', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '8', '0', '1', '1', '100', '1', '62000', '62000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1490.2', '1577.88', '20.486', '5.65', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '9', '0', '1', '1', '100', '1', '93000', '93000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '10', '0', '1', '1', '100', '1', '94000', '94000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1504.73', '1577', '20.486', '3.18', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '11', '0', '1', '1', '100', '1', '101000', '101000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1529.4', '1576.88', '26.68', '3.14', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '12', '0', '1', '1', '100', '1', '109500', '109500', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1545.55', '1571.63', '29.2', '4.02', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '13', '0', '1', '1', '100', '1', '118000', '118000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1594.87', '1524.96', '29.235', '3.87', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '14', '0', '1', '1', '100', '1', '138000', '138000', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '15', '0', '1', '1', '100', '1', '140000', '140000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1614.23', '1537.65', '29.3', '5.5', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '16', '0', '1', '1', '100', '1', '139000', '139000', '0', '0', '12', '46026', '4', '120000', '46026', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '17', '0', '1', '1', '100', '0', '150000', '150000', '1000', '1000', '33', '38507', '0', '0', '0', '0', '0', '18', '20', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('38507', '0', '18', '0', '1', '1', '100', '1', '240000', '240000', '0', '0', '41', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
DELETE FROM creature_text WHERE entry=38507;
REPLACE INTO `creature_text` VALUES ('38507', '0', '0', 'Let us go at once. We will track Sylvanas down. For Gilneas!', '12', '0', '100', '0', '0', '0', 'tobias');
REPLACE INTO `creature_text` VALUES ('38507', '1', '0', 'Let\'s do our best not to be seen!', '12', '0', '100', '0', '0', '0', 'tobias');
REPLACE INTO `creature_text` VALUES ('38507', '2', '0', 'Did you hear that? Sylvanas is headed to the cathedral. Let\'s hurry!', '12', '0', '100', '0', '0', '0', 'tobias');
REPLACE INTO `creature_text` VALUES ('38507', '3', '0', 'Quick, hide in the water!', '12', '0', '100', '0', '0', '0', 'tobias');

-- smart script for http://www.wowhead.com/npc=38611
DELETE FROM smart_scripts WHERE entryorguid=38611;
REPLACE INTO `smart_scripts` VALUES ('38611', '0', '0', '0', '19', '0', '100', '0', '24902', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'say');
REPLACE INTO `smart_scripts` VALUES ('38611', '0', '1', '0', '19', '0', '100', '0', '24902', '0', '0', '0', '12', '38507', '1', '600000', '38507', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'say');
DELETE FROM creature_text WHERE entry=38611;
REPLACE INTO `creature_text` VALUES ('38611', '0', '0', 'Follow Tobias Mistmantle into the Cathedral District.', '41', '0', '100', '0', '0', '0', 'Lorna');


-- spawn bat by the 38539 for quest 24920
DELETE FROM smart_scripts WHERE entryorguid=38539;
REPLACE INTO `smart_scripts` VALUES ('38539', '0', '0', '0', '19', '0', '100', '0', '24920', '0', '0', '0', '12', '38615', '3', '420000', '38615', '0', '0', '8', '0', '0', '0', '-1670.18', '1656.61', '20.49', '5.03', '');

-- smart script for http://www.wowhead.com/npc=46026
DELETE FROM smart_scripts WHERE entryorguid=46026;
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '1', '0', '1', '1', '100', '1', '2000', '2000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1600.63', '1516.84', '29.24', '0.83', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '2', '0', '1', '1', '100', '1', '10000', '10000', '0', '0', '12', '38533', '4', '60000', '38533', '0', '0', '8', '0', '0', '0', '-1596.64', '1524.42', '29.24', '4.01', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '3', '0', '1', '1', '100', '1', '10000', '10000', '0', '0', '12', '38537', '4', '90000', '38537', '0', '0', '8', '0', '0', '0', '-1594.51', '1522.57', '29.24', '3.88', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '4', '0', '1', '1', '100', '1', '11000', '11000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '38533', '20', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '5', '0', '1', '1', '100', '1', '20000', '20000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '6', '0', '1', '1', '100', '1', '26000', '26000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '11', '38533', '20', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '7', '0', '1', '1', '100', '1', '35000', '35000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '8', '0', '1', '1', '100', '1', '47000', '47000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '11', '38533', '20', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '9', '0', '1', '1', '100', '1', '55000', '55000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '10', '0', '1', '1', '100', '1', '62000', '62000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '38537', '20', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '11', '0', '1', '1', '100', '1', '71000', '71000', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('46026', '0', '12', '0', '1', '1', '100', '1', '82000', '82000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '11', '38537', '20', '0', '0', '0', '0', '0', 'p1');
-- text for Lady sylvanas
DELETE FROM creature_text WHERE entry=46026;
REPLACE INTO `creature_text` VALUES ('46026', '0', '0', 'You can assure Garrosh that this is a minor setback. Our victory in Gilneas will be absolute.', '12', '0', '100', '0', '0', '20492', 'sylvanas');
REPLACE INTO `creature_text` VALUES ('46026', '1', '0', 'You\'d do well to watch your tone, General! Neither you nor Garrosh have anything to worry about. We\'ve seized all production of the plague, as he ordered. We\'d never deploy it without his permission.', '12', '0', '100', '0', '0', '20493', 'sylvanas');
REPLACE INTO `creature_text` VALUES ('46026', '2', '0', 'Go with honor... General.', '12', '0', '100', '0', '0', '20494', 'sylvanas');
REPLACE INTO `creature_text` VALUES ('46026', '3', '0', 'What kind of question is that? Of course we\'re deploying the plague, as planned! Let the gilneans enjoy their small victory. Not even their bones will remain by tomorrow!', '12', '0', '100', '0', '0', '20495', 'sylvanas');

-- text for General Warhowl
DELETE FROM creature_text WHERE entry=38533;
REPLACE INTO `creature_text` VALUES ('38533', '0', '0', 'It appears you\'re losing control of Gilneas, Sylvanas. Garrosh fears he\'s going to have to carry out this invasion himself.', '12', '0', '100', '0', '0', '22620', 'warhowl');
REPLACE INTO `creature_text` VALUES ('38533', '1', '0', 'You sound very confident, your Majesty. I sincerely hope you do not plan to use the plague. Garrosh has expllicitely forbidden it.', '12', '0', '100', '0', '0', '22621', 'warhowl');
REPLACE INTO `creature_text` VALUES ('38533', '2', '0', 'I will deliver my report to our leader, then. By your leave, my lady.', '12', '0', '100', '0', '0', '22622', 'warhowl');

-- text for High Executor Crenshaw
DELETE FROM creature_text WHERE entry=38537;
REPLACE INTO `creature_text` VALUES ('38537', '0', '0', 'My Lady! Should i order my men to stop the deployment of the plague? Or ar we to continue as planned?', '12', '0', '100', '0', '0', '20917', 'crenshaw');
REPLACE INTO `creature_text` VALUES ('38537', '1', '0', 'As you wish!', '12', '0', '100', '0', '0', '20918', 'crenshaw');

-- spawn glaive vehicle for quest 24681 by Lord Darius
DELETE FROM smart_scripts WHERE entryorguid=38149;
REPLACE INTO `smart_scripts` VALUES ('38149', '0', '0', '0', '19', '0', '100', '0', '24681', '0', '0', '0', '12', '38150', '1', '600000', '38150', '0', '0', '8', '0', '0', '0', '-1338.06', '2123.55', '5.63', '2.64', 'glaive');

-- for quest endgame spawn hyppogryph mount by Lorna Crowley
DELETE FROM smart_scripts WHERE entryorguid=43727;
REPLACE INTO `smart_scripts` VALUES ('43727', '0', '0', '0', '19', '0', '100', '0', '26706', '0', '0', '0', '12', '43751', '4', '60000', '43751', '0', '0', '8', '0', '0', '0', '-1298.12', '2128.67', '5.546', '2.58', 'summ gryph');
REPLACE INTO `smart_scripts` VALUES ('43727', '0', '1', '0', '19', '0', '100', '0', '26706', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '11', '43749', '30', '0', '0', '0', '0', '0', 'say');

-- text of tobias 
DELETE FROM creature_text WHERE entry=43749;
REPLACE INTO `creature_text` VALUES ('43749', '0', '0', 'Hop on a hyppogryph, now\'s our chance!', '12', '0', '100', '0', '0', '0', 'tobias');


-- script of Lorna from ship in quest Endgame
DELETE FROM smart_scripts WHERE entryorguid=50773;
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '0', '0', '62', '0', '100', '0', '50773', '0', '0', '0', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '1', '0', '60', '1', '100', '1', '1000', '1000', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '2', '0', '60', '1', '100', '1', '4000', '4000', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '3', '0', '60', '1', '100', '1', '14000', '14000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '4', '0', '60', '1', '100', '1', '18000', '18000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1483.87', '3235.84', '127.67', '5.3', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '5', '0', '60', '1', '100', '1', '25000', '25000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1463.91', '3211.84', '111.24', '5.63', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '6', '0', '60', '1', '100', '1', '34000', '34000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1442.7', '3208.56', '105.88', '6.14', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '7', '0', '60', '1', '100', '1', '48000', '48000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1473.31', '3263', '99.89', '2.11', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '8', '0', '60', '1', '100', '1', '61000', '61000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1487.15', '3286.83', '104.15', '2.11', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '9', '0', '60', '1', '100', '1', '78000', '78000', '0', '0', '69', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '-1477.79', '3271.9', '102.49', '5.16', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '10', '0', '60', '1', '100', '1', '78000', '78000', '0', '0', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '11', '0', '60', '1', '100', '1', '81000', '81000', '0', '0', '12', '43567', '1', '120000', '43567', '0', '0', '8', '0', '0', '0', '-1457', '3234.82', '100.88', '2', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '12', '0', '60', '1', '100', '1', '85000', '85000', '0', '0', '1', '4', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '13', '0', '60', '1', '100', '1', '95000', '95000', '0', '0', '1', '5', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
REPLACE INTO `smart_scripts` VALUES ('50773', '0', '14', '0', '60', '1', '100', '1', '105000', '105000', '0', '0', '37', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'p1');
-- text of Lorna in quest EndGame
DELETE FROM creature_text WHERE entry=50773;
REPLACE INTO `creature_text` VALUES ('50773', '0', '0', 'Secure the shafters!', '14', '0', '100', '0', '0', '19688', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '1', '0', 'Heads up, greenskins! My men and I will give you your new bearing! If you try anything funny, I\'ll fill you with led!', '14', '0', '100', '0', '0', '19690', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '2', '0', 'The rest of you, follow me downstairs!', '14', '0', '100', '0', '0', '19691', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '3', '0', 'We\'ve got the explosives in the furnace room. just hold them off now!', '12', '0', '100', '0', '0', '19692', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '4', '0', 'That\'s...one big orc!', '14', '0', '100', '0', '0', '19693', 'lorna');
REPLACE INTO `creature_text` VALUES ('50773', '5', '0', 'It\'s about to blow, jump on the wyverns!', '14', '0', '100', '0', '0', '19694', 'lorna');

-- endgame  mount gryphon wyvern from ship 
DELETE FROM smart_scripts WHERE entryorguid=43713;
REPLACE INTO `smart_scripts` VALUES ('43713', '0', '0', '0', '62', '0', '100', '0', '43713', '0', '0', '0', '62', '654', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-1300', '2132', '5.54', '2.67', 'tele');

-- spawn or mount in ship for quest endgame
DELETE FROM creature WHERE id=43713;
REPLACE INTO `creature` VALUES ('NULL', '43713', '654', '0', '0', '1', '1', '0', '0', '-1486.11', '3241.1', '106.079', '6.853', '10', '0', '0', '247', '1', '0', '0', '0', '0');

-- Lorna Crowley gossip menu from quest endgame
DELETE FROM gossip_menu_option WHERE menu_id=50773;
REPLACE INTO `gossip_menu_option` VALUES ('50773', '0', '0', 'Let\'s destroy the gunship!', '1', '1', '0', '0', '0', '0', '');

-- Lorna spawn in ship for quest endgame
DELETE FROM creature WHERE id=50773;
REPLACE INTO `creature` VALUES ('NULL', '50773', '654', '0', '0', '1', '1', '0', '0', '-1474.44', '3250.97', '127.453', '5.38377', '10', '0', '0', '1092', '1', '0', '0', '0', '0');

-- spawn of http://www.wowhead.com/npc=42141 in ship from quets endgame and for http://www.wowhead.com/npc=43703
DELETE FROM creature WHERE id=42141;
DELETE FROM creature WHERE id=43703;
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1487.14, 3244.16, 128.637, 0, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1449.4, 3262.16, 125.87, 0, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1439.39, 3211.91, 105.826, -4.11168, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1466.35, 3250.68, 99.585, 5.21, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1477.07, 3268.68, 99.746, -1.17823, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 42141, 654, 0, 0, 1, 1, 0, 0, -1485.23, 3284.27, 103.923, 5.23, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1487.14, 3244.16, 128.637, 0, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1449.4, 3262.16, 125.87, 0, 10, 0, 0, 273, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1508.2, 3248.51, 181.594, 5.56019, 300, 0, 0, 42, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1508.2, 3248.51, 181.594, 5.56019, 300, 0, 0, 247, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 43703, 654, 0, 0, 1, 1, 0, 0, -1508.2, 3248.51, 181.594, 5.56019, 300, 0, 0, 273, 1, 0, 0, 0, 0);


-- wyverns mount from ship from quest endgame  gossip menu
DELETE FROM gossip_menu_option WHERE menu_id=43713;
REPLACE INTO `gossip_menu_option` VALUES ('43713', '0', '0', 'Get me out of here please!', '1', '1', '0', '0', '0', '0', '');

-- gossip menu for hyppogryph who port  players to ship from  quest endgame
DELETE FROM gossip_menu_option WHERE menu_id=43751;
REPLACE INTO `gossip_menu_option` VALUES ('43751', '0', '0', 'I need to get on the Horde Gunship!', '1', '1', '0', '0', '0', '0', '');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261593;
REPLACE INTO `waypoint_data` VALUES ('261593', '1', '-1566.38', '1390.77', '36.0179', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '2', '-1562.88', '1390.8', '35.8483', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '3', '-1552.39', '1391.06', '35.5647', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '4', '-1543.65', '1391.48', '35.5569', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '5', '-1536.38', '1392.49', '35.5569', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '6', '-1529.91', '1394.04', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '7', '-1518.78', '1397.43', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '8', '-1509.72', '1398.06', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '9', '-1503.52', '1399.04', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '10', '-1503.44', '1419.89', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '11', '-1509.61', '1424.39', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '12', '-1521.63', '1424.52', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '13', '-1535.63', '1424.61', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '14', '-1546.13', '1424.69', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '15', '-1550.36', '1423.18', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '16', '-1551.67', '1414.06', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '17', '-1553.42', '1405.86', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '18', '-1556.58', '1399.83', '35.6472', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '19', '-1561.39', '1397.71', '35.8006', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '20', '-1568.3', '1396.2', '36.0972', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '21', '-1568.9', '1392.2', '36.1942', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261593', '22', '-1565.91', '1390.87', '35.9986', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261594;
REPLACE INTO `waypoint_data` VALUES ('261594', '1', '-1557.66', '1333.98', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '2', '-1555.33', '1334.13', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '3', '-1537.64', '1336.42', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '4', '-1523.44', '1340.18', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '5', '-1510.65', '1344.58', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '6', '-1504.29', '1351.4', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '7', '-1503.61', '1364.9', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '8', '-1505.01', '1389.47', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '9', '-1508.9', '1393.26', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '10', '-1534.01', '1394.26', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '11', '-1546.39', '1392.92', '35.5565', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '12', '-1551.4', '1386.18', '35.5581', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '13', '-1553.69', '1378.1', '35.5935', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '14', '-1557.53', '1357.82', '35.5571', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261594', '15', '-1557.61', '1334.4', '35.5571', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261595;
REPLACE INTO `waypoint_data` VALUES ('261595', '1', '-1475.92', '1355.62', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '2', '-1475', '1352.49', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '3', '-1471.66', '1350.14', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '4', '-1463.43', '1352.34', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '5', '-1455.32', '1353.23', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '6', '-1446.92', '1354.6', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '7', '-1437.3', '1357', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '8', '-1431.66', '1358.47', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '9', '-1411.23', '1363.31', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '10', '-1400.7', '1368.13', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '11', '-1409.56', '1371.61', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '12', '-1427.2', '1369.01', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '13', '-1439.38', '1365.83', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '14', '-1451.75', '1361.66', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '15', '-1461.53', '1357.83', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '16', '-1471.03', '1354.79', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261595', '17', '-1475.85', '1355.64', '35.5559', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261592;
REPLACE INTO `waypoint_data` VALUES ('261592', '1', '-1458.68', '1418.54', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '2', '-1448.37', '1419.77', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '3', '-1428.7', '1420.94', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '4', '-1413.35', '1420.38', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '5', '-1401.1', '1424.14', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '6', '-1401.63', '1439.68', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '7', '-1405.32', '1443.2', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '8', '-1408.36', '1437.72', '35.933', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '9', '-1412.54', '1426.12', '35.7332', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '10', '-1421.61', '1424.9', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '11', '-1433.14', '1425.22', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '12', '-1449.45', '1426.06', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '13', '-1463.22', '1426.51', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '14', '-1479.06', '1426.89', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '15', '-1484.9', '1426.01', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '16', '-1493.33', '1417.68', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '17', '-1490.45', '1415.73', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '18', '-1485.15', '1415.22', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '19', '-1478.28', '1416.56', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '20', '-1468.43', '1418.47', '35.5558', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261592', '21', '-1459.05', '1418.52', '35.5558', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261596;
REPLACE INTO `waypoint_data` VALUES ('261596', '1', '-1432.88', '1431.65', '35.5957', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '2', '-1435.21', '1433.2', '35.6692', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '3', '-1440.34', '1434.15', '35.7517', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '4', '-1447.91', '1434.46', '35.7548', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '5', '-1453.63', '1434.68', '35.7571', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '6', '-1464.34', '1435.36', '35.7717', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '7', '-1473.31', '1435.78', '35.7773', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '8', '-1480.31', '1436.02', '35.7831', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '9', '-1488.11', '1436.2', '35.7927', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '10', '-1497.09', '1435.88', '35.7782', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '11', '-1504.43', '1433.15', '35.645', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '12', '-1505.15', '1426.76', '35.5562', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '13', '-1503.82', '1415.79', '35.5562', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '14', '-1500.94', '1406.18', '35.5562', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '15', '-1497.7', '1398.69', '35.5562', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '16', '-1494.42', '1393.34', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '17', '-1488.06', '1387.5', '35.7308', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '18', '-1476.38', '1386.3', '36.0042', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '19', '-1471.37', '1386.38', '36.0042', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '20', '-1461.34', '1386.64', '36.0042', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '21', '-1454.47', '1388.17', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '22', '-1449.23', '1395.78', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '23', '-1447.68', '1403.17', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '24', '-1447.43', '1412.26', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '25', '-1448.42', '1420.48', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '26', '-1451.08', '1430.13', '35.5572', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '27', '-1453.24', '1437.15', '35.8628', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '28', '-1447.38', '1436.53', '35.8446', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '29', '-1442.62', '1436.05', '35.8279', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '30', '-1435.86', '1436.1', '35.8285', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261596', '31', '-1432.93', '1431.98', '35.6075', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261597;
REPLACE INTO `waypoint_data` VALUES ('261597', '1', '-1398.11', '1431.06', '35.6393', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '2', '-1398.29', '1427.45', '35.6398', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '3', '-1398.24', '1417.77', '35.6398', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '4', '-1397.79', '1409.39', '35.6398', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '5', '-1397.71', '1402.74', '35.64', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '6', '-1397.79', '1396.21', '35.6403', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '7', '-1398.92', '1387.65', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '8', '-1404.42', '1383.02', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '9', '-1411.85', '1379.74', '35.9987', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '10', '-1418.21', '1378.95', '35.9987', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '11', '-1427.88', '1379.24', '35.9987', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '12', '-1432.98', '1385.09', '35.7849', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '13', '-1432.24', '1393.68', '36.0032', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '14', '-1431.77', '1400.66', '36.0032', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '15', '-1431.27', '1407.64', '36.0032', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '16', '-1429.09', '1416.92', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '17', '-1424.57', '1419.91', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '18', '-1415.81', '1423.06', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '19', '-1409.5', '1424.17', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '20', '-1399.37', '1426.07', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '21', '-1397.31', '1430.59', '35.962', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261597', '22', '-1397.97', '1431.24', '35.962', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261598;
REPLACE INTO `waypoint_data` VALUES ('261598', '1', '-1527.87', '1362.03', '36.005', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '2', '-1544.73', '1361.77', '36.0047', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '3', '-1550.23', '1355.78', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '4', '-1552.66', '1346.25', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '5', '-1546.86', '1336.25', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '6', '-1534.03', '1338.23', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '7', '-1525.78', '1340.33', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '8', '-1512.64', '1344.79', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '9', '-1506.93', '1348.41', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '10', '-1505.42', '1355.28', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '11', '-1507.81', '1361.72', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '12', '-1510.89', '1362.21', '36', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '13', '-1513.45', '1361.98', '36', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261598', '14', '-1527.82', '1362.01', '36.0025', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=260536;
REPLACE INTO `waypoint_data` VALUES ('260536', '1', '-1402.63', '1419.77', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '2', '-1404.71', '1417.89', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '3', '-1408.48', '1413.35', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '4', '-1409.77', '1406.12', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '5', '-1410.41', '1395.65', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '6', '-1410.06', '1375.82', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '7', '-1406.57', '1368.96', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '8', '-1399.56', '1374.29', '35.556', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '9', '-1397.11', '1382.71', '35.9617', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '10', '-1396.86', '1395.42', '35.9617', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '11', '-1397.47', '1403.91', '35.9617', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '12', '-1398.81', '1410.05', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '13', '-1401.46', '1417.39', '35.5563', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('260536', '14', '-1402.6', '1419.57', '35.5563', '0', '0', '0', '0', '100', '0', '0');

-- fixing gilneas console errors about waypoints for  panicked citizens
DELETE FROM waypoint_data WHERE id=261599;
REPLACE INTO `waypoint_data` VALUES ('261599', '1', '-1430.29', '1439.38', '35.9533', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '2', '-1430.65', '1436.37', '35.8871', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '3', '-1430.54', '1428.21', '35.7422', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '4', '-1430.86', '1419.47', '35.5559', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '5', '-1431.28', '1412.49', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '6', '-1431.71', '1405.5', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '7', '-1432.38', '1395.02', '36.0049', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '8', '-1433.75', '1385.31', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '9', '-1441.35', '1382.43', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '10', '-1448.35', '1386.24', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '11', '-1451.56', '1393.44', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '12', '-1453.35', '1403.19', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '13', '-1456.44', '1414.07', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '14', '-1457.86', '1420.56', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '15', '-1457.59', '1430.63', '35.5561', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '16', '-1454.31', '1433.61', '35.714', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '17', '-1449.26', '1435.31', '35.7895', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '18', '-1441.17', '1437.06', '35.8645', '0', '0', '0', '0', '100', '0', '0');
REPLACE INTO `waypoint_data` VALUES ('261599', '19', '-1430.13', '1439.47', '35.9562', '0', '0', '0', '0', '100', '0', '0');

-- made the quest how it should with the right config
DELETE FROM quest_template WHERE id=14218;
REPLACE INTO `quest_template` VALUES ('14218', '2', '5', '1', '0', '4755', '0', '0', '0', '0', '2097152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14212', '0', '0', '0', '5', '100', '270', '0', '0', '0', '0', '0', '0', '0', '0', '0', '262144', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '55009', '55010', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '1134', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'By Blood and Ash', 'Slay 80 Bloodfang Stalkers using the Rebel Cannons.', 'The time has come, $N.  If we\'re going to put a dent in their numbers, the time is now.$B$BWe have the position.$B$BWe have the firepower.$B$BAll that remains to be seen is whether we have the courage... and I sure don\'t see a coward standing in front of me.', 'Return to Tobias Mistmantle outside the Light\'s Dawn Cathedral in Gilneas City after slaying 80 Bloodfang Stalkers.', 'You\'ve done well, $N.  You\'ve done more than could be asked of any Gilnean.$B$BWe\'re running low on ammunition.  It\'s time to regroup inside now.', '', 'Bloodfang Stalkers slain', '35229', '0', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Bloodfang Stalkers slain', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');

-- equipment for 34511
DELETE FROM creature_equip_template WHERE entry=34511;
REPLACE INTO `creature_equip_template` VALUES ('34511', '2','2029', '1172', '0');

-- wrong equipment lol
UPDATE creature_template SET equipment_id=0 WHERE entry=385;
DELETE FROM creature_equip_template WHERE entry=385;

DELETE FROM creature WHERE guid IN (265110,265114,265115,265122);

-- script for drawning man
DELETE FROM smart_scripts WHERE entryorguid=36440;
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '0', '8', '64', '0', '100', '0', '0', '0', '0', '0', '11', '46598', '1', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'credit on gossip');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '1', '0', '10', '0', '100', '0', '1', '10', '7000', '7000', '75', '68735', '5', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'credit on gossip');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '2', '3', '8', '0', '100', '0', '73712', '0', '2000', '2000', '22', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'phase');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '3', '4', '61', '0', '100', '1', '0', '0', '0', '0', '28', '46598', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'die');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '4', '5', '61', '0', '100', '1', '0', '0', '0', '0', '28', '68730', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'die');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '5', '6', '61', '0', '100', '1', '0', '0', '0', '0', '41', '100', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'die');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '6', '0', '61', '0', '100', '1', '0', '0', '0', '0', '33', '36440', '0', '0', '0', '0', '0', '18', '5', '0', '0', '0', '0', '0', '0', 'die');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '7', '0', '1', '0', '100', '1', '100', '100', '0', '0', '11', '68730', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'drowning');
REPLACE INTO `smart_scripts` VALUES ('36440', '0', '8', '0', '61', '0', '100', '0', '0', '0', '0', '0', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'credit on gossip');

-- fixing error
DELETE FROM creature WHERE guid=247947;
REPLACE INTO `creature` VALUES (247947, 34511, 654, 0, 0, 1, 1, 0, 0, -1917.31, 2405.52, 29.895, 4.57276, 90, 0, 0, 1, 0, 0, 0, 0, 0);

-- add missing crocodile from quest http://www.wowhead.com/quest=24468
DELETE FROM quest_template WHERE id=24468;
REPLACE INTO `quest_template` VALUES ('24468', '2', '8', '5', '0', '4714', '0', '0', '0', '0', '2097152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24438', '0', '0', '0', '5', '225', '420', '0', '0', '0', '0', '0', '0', '0', '0', '0', '262152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '54994', '54995', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '1134', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stranded at the Marsh', 'Rescue 5 Crash Survivors at the Hailwood Marsh.', 'The ogres got two of our stagecoaches: this one and one that fell into the marsh just north of here.$B$BI want you to head there and rescue any survivors while we hatch up a plan to deal with these ogres.', 'Return to Liam Greymane at the Stagecoach Crash Site.', 'You\'ve done it again, $N.  You have my thanks.', '', '', '37078', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Swamp Crocolisk Slain', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');

DELETE FROM creature WHERE id=37078 AND map=654;
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2055.49, 1809.52, 6.53047, 3.27654, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2002.88, 1805.51, 7.87269, 4.13108, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2026.9, 1759.82, 6.6302, 3.1729, 10, 0, 0, 156, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2078.41, 1735.21, 5.56232, 2.63254, 10, 0, 0, 156, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2050.38, 1779.11, 6.15966, 0.441281, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -1960.49, 1789.13, 5.67995, 2.31446, 10, 0, 0, 156, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -1961.41, 1763.24, 5.90216, 3.62215, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -1990.27, 1756.08, 5.57936, 5.98227, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2073.69, 1777.1, 6.1768, 3.39438, 10, 0, 0, 156, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2097.49, 1760.56, 5.42465, 2.64747, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2078.75, 1806.95, 6.00604, 4.03134, 10, 0, 0, 137, 1, 0, 0, 0, 0);
REPLACE INTO `creature` VALUES (NULL, 37078, 654, 0, 0, 1, 1, 0, 0, -2036.77, 1833.72, 6.036, 1.1827, 10, 0, 0, 156, 1, 0, 0, 0, 0);

-- Prince Liam Greymane
UPDATE creature_template SET ScriptName = '' WHERE entry = 34850;
UPDATE creature_template SET AIName = 'SmartAI' WHERE entry = 34850;

DELETE FROM smart_scripts WHERE entryorguid = 34850;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34850, 0, 0, 0, 1, 0, 100, 0, 5000, 5000, 60000, 60000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'SAY Ramdom');

DELETE FROM creature_text WHERE entry = 34850;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(34850, 0, 0, 'I want the perimeter secured and the gates manned by two guards at all times. No one gets in, no one gets out.', 12, 0, 30, 0, 0, 19615, 'LD Text 1'),
(34850, 0, 1, 'We protected Gilneas from the Scourge. We protected Gilneas during the Northgate rebellion. We will protect Gilneas from whatever this new threat may be.', 12, 0, 30, 0, 0, 19614, 'LD Text 2'),
(34850, 0, 2, 'Stand ready, guards! We don\'t know how many intruders we\'re dealing with, but the Headlands are overrun and we\'re cut off from the harbor towns. Expect to be outnumbered.', 12, 0, 30, 0, 0, 19616, 'LD Text 3');

-- Gwen Armstead
UPDATE creature_template SET ScriptName = '' WHERE entry = 35840;
UPDATE creature_template SET AIName = 'SmartAI' WHERE entry = 35840;

DELETE FROM smart_scripts WHERE entryorguid = 35840;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35840, 0, 0, 0, 1, 0, 100, 0, 5000, 5000, 60000, 60000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'SAY Ramdom');

DELETE FROM creature_text WHERE entry = 35840;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(35840, 0, 0, 'We mast stick together to survive. Move around in groups', 12, 0, 1, 0, 0, 0, 'Gwen Armstead - Text 1'),
(35840, 0, 1, 'The King\'s men will protect us. We`re almost here.', 12, 0, 1, 0, 0, 0, 'Gwen Armstead - Text 2'),
(35840, 0, 2, 'The plan is to keep moving south. We can`t go back to the Merchant Square. It\'s not safe.', 12, 0, 1, 0, 0, 0, 'Gwen Armstead  - Text 3');

-- Duskhaven objects and creature spawns use to be phaseMask 12
UPDATE creature SET phaseMask = 1 WHERE map = 654;
UPDATE gameobject SET phaseMask = 1 WHERE map = 654;

UPDATE creature_template SET AIName = 'SmartAI' WHERE entry = 36132;

DELETE FROM smart_scripts WHERE entryorguid = 36132;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36132, 0, 0, 0, 20, 0, 100, 0, 14313, 0, 0, 0, 1, 0, 7000, 0, 0, 0, 0, 19, 34571, 15, 0, 0, 0, 0, 0, 'On quest complete, say Gwen'),
(36132, 0, 2, 0, 52, 0, 100, 0, 0, 34571, 0, 0, 1, 0, 5000, 0, 0, 0, 0, 19, 36132, 0, 0, 0, 0, 0, 0, 'On textover, Krennan say ');

DELETE FROM creature_text WHERE entry IN (34571,36132);
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(34571, 0, 0, 'Welcome back $N. You were fortunate. Krennan\'s treatment doesn\'t always work this well on people who\'ve had the Curse as long as you.', 12, 0, 100, 1, 0, 0, ''),
(36132, 0, 0, 'Do exercise caution. Don\'t expect anyone to invite you to their homes just yet. But at least they won\'t shoot you outright.', 12, 0, 100, 1, 0, 0, '');


UPDATE creature_template SET AIName = 'SmartAI' WHERE entry = 34511;

DELETE FROM smart_scripts WHERE entryorguid = -247947;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-247947, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM creature_text WHERE entry = 34511;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(34511, 0, 0, 'Gilneas will soon belong to the forsaken!', 12, 0, 100, 0, 0, 0, '');

UPDATE quest_template SET Method = 2 WHERE id = 14368;

-- Save the children is not done i still need to add quest credit
-- James

DELETE FROM creature WHERE guid = 247582;

UPDATE creature_template SET AIName = 'SmartAI' WHERE entry IN (36289,36287,36288);

DELETE FROM smart_scripts WHERE entryorguid = 36289;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36289, 0, 0, 0, 10, 0, 100, 0, 1, 3, 4000, 7000, 84, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(36289, 0, 1, 0, 10, 0, 100, 0, 1, 3, 9000, 12000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM creature_text WHERE entry = 36289;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(36289, 0, 0, 'Your mothers in the basement next door. Get to her now!', 12, 0, 100, 1, 0, 0, ''),
(36289, 1, 0, 'Dont hurt me! I was just looking for my sisters! I think Ashley inside the house!', 12, 0, 100, 1, 0, 0, '');

-- Cynthia
DELETE FROM smart_scripts WHERE entryorguid = 36287;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36287, 0, 0, 0, 10, 0, 100, 0, 1, 3, 4000, 7000, 84, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(36287, 0, 1, 0, 10, 0, 100, 0, 1, 3, 9000, 12000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM creature_text WHERE entry = 36287;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(36287, 0, 0, 'Its not safe here. Go to the Allens basment.', 12, 0, 100, 1, 0, 0, ''),
(36287, 1, 0, 'You are scary! I want my mommy!', 12, 0, 100, 1, 0, 0, '');

-- Ashley
DELETE FROM smart_scripts WHERE entryorguid = 36288;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36288, 0, 0, 0, 10, 0, 100, 0, 1, 3, 4000, 7000, 84, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(36288, 0, 1, 0, 10, 0, 100, 0, 1, 3, 9000, 12000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM creature_text WHERE entry = 36288;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(36288, 0, 0, 'Join the others inside the basement next door. Hurry!', 12, 0, 100, 1, 0, 0, ''),
(36288, 1, 0, 'Are you one of the good worgen, mister? Did you see Chynthia in the shed outside?', 12, 0, 100, 1, 0, 0, '');

-- Duskhaven event 
UPDATE creature_template SET ScriptName = 'npc_trigger_event_first_c3' WHERE entry = 36331;
UPDATE creature_template SET ScriptName = '' WHERE entry = 14029;

DELETE FROM creature_text WHERE entry IN (36330,36331,36332);
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(36331, 0, 0, 'I am not giving up on you. I don\'t have a cure for the Curse yet... but there are treatments. You will have control again.', 12, 0, 100, 0, 0, 20919, 'Krennan Aranas'),
(36332, 0, 0, 'Tell me, Godfrey. Those that stayed in Gilneas City so that we could live. Were they following protocol?', 12, 0, 100, 0, 0, 19721, 'King Genn Greymane'),
(36332, 1, 0, 'I didn\'t think so. Now, hand me that potion, Krennan... and double the dosage.', 12, 0, 100, 0, 0, 19722, 'King Genn Greymane'),
(36330, 0, 0, 'Give it up, Krennan. It\'s time to put this one down. It\'s protocol.', 12, 0, 100, 0, 0, 19635, 'Lord Godfrey');

DELETE FROM creature WHERE id = 14026;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(294506, 14026, 654, 4714, 4786, 1, 1, 0, 1, -1823.3, 2293.67, 42.0455, 0.112287, 300, 0, 0, 175983, 8909, 0, 0, 0, 0);

-- You Can't Take 'Em Alone - 14348
UPDATE creature_template SET ScriptName = 'npc_horrid_abomination' WHERE entry = 36231;

DELETE FROM creature_text WHERE entry = 36231;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(36231, 0, 0, 'Barrel smell like gunpowder...', 14, 0, 100, 0, 0, 0, ''),
(36231, 0, 1, 'GAH!!!! I CAN\'T SEE IN HERE!!!!', 14, 0, 100, 0, 0, 0, ''),
(36231, 0, 2, 'Get back here! I smashes you!', 14, 0, 100, 0, 0, 0, ''),
(36231, 0, 3, 'I gots bad feeling...', 14, 0, 100, 0, 0, 0, ''),
(36231, 0, 4, 'This not be good...', 14, 0, 100, 0, 0, 0, ''),
(36231, 0, 5, 'Uh-oh... this gonna hurts me...', 14, 0, 100, 0, 0, 0, ''); 

-- wrong  npc quest
DELETE FROM creature_questrelation WHERE id=35830;
-- set  faction for npc 
UPDATE  creature_template SET faction_A=7, faction_H=7 WHERE entry=38210;
-- update map gilneas for worgens to be now visible
UPDATE creature SET map=654 WHERE map=638;
UPDATE gameobject SET map=654 WHERE map=638;

DELETE FROM creature_template WHERE entry IN (44470,44469,44468,44465,44464,44463,44461,44460,44459,44455,44427,35911,35554,35552,35551);
REPLACE INTO `creature_template` VALUES (35551, 0, 0, 0, 0, 0, 29463, 0, 0, 0, 'Prince Liam Greymane', '', '', 0, 5, 5, 0, 0, 2173, 2173, 2, 1, 1.38571, 1, 1.38571, 1, 3, 13, 17, 0, 42, 35, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 169, 7, 264192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (35552, 0, 0, 0, 0, 0, 29694, 0, 0, 0, 'Lord Darius Crowley', '', '', 0, 10, 10, 0, 0, 2173, 2173, 3, 1, 1.14286, 1, 1.14286, 1, 1, 13, 17, 0, 42, 7.5, 1111, 2000, 1, 33024, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 262148, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 11, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 613097436, 0, 'npc_lord_darius_crowley_c2', 13623);
REPLACE INTO `creature_template` VALUES (35554, 0, 0, 0, 0, 0, 30217, 30218, 30217, 30218, 'Shaken Survivor', '', '', 0, 10, 10, 0, 0, 2163, 2163, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (35911, 0, 0, 0, 0, 0, 29613, 0, 0, 0, 'King Genn Greymane', '', '', 0, 10, 10, 0, 0, 2173, 2173, 3, 1, 1.38571, 1, 1.38571, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 262148, 0, 0, 0, 0, 0, 192, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44427, 0, 0, 0, 0, 0, 238, 0, 0, 0, 'Crowley\'s Horse', '', 'vehichleCursor', 0, 5, 5, 0, 0, 35, 35, 0, 1, 1.28571, 1, 1.28571, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44455, 0, 0, 0, 0, 0, 29935, 0, 0, 0, 'Sergeant Cleese', 'Warrior Trainer', '', 10694, 5, 5, 0, 0, 2173, 2173, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 1, 256, 2048, 0, 0, 0, 0, 1, 0, 9, 13, 0, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44459, 0, 0, 0, 0, 0, 29961, 0, 0, 0, 'Celestine of the Harvest', 'Druid Trainer', '', 10696, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 32768, 34816, 0, 0, 0, 0, 11, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44460, 0, 0, 0, 0, 0, 29290, 0, 0, 0, 'Gwen Armstead', '', '', 0, 1, 1, 0, 0, 2163, 2163, 2, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44461, 0, 0, 0, 0, 0, 29960, 0, 0, 0, 'Huntsman Blake', 'Hunter Trainer', '', 10697, 5, 5, 0, 0, 12, 12, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 2, 768, 2048, 0, 0, 0, 0, 3, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 112, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44463, 0, 0, 0, 0, 0, 30213, 0, 0, 0, 'Baron', 'Huntsman Blake\'s Pet', '', 0, 3, 3, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 1, 0, 2048, 0, 52, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44464, 0, 0, 0, 0, 0, 29957, 0, 0, 0, 'Loren the Fence', 'Rogue Trainer', '', 10699, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 4, 32768, 2048, 0, 0, 0, 0, 4, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44465, 0, 0, 0, 0, 0, 29956, 0, 0, 0, 'Myriam Spellwaker', 'Mage Trainer', '', 10698, 5, 5, 0, 0, 2173, 2173, 51, 1, 1.14286, 1, 1.14286, 1, 1, 13, 17, 0, 42, 7.5, 1111, 2000, 8, 32768, 2048, 0, 0, 0, 0, 8, 0, 9, 13, 0, 7, 262144, 0, 0, 0, 0, 0, 131, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 3, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44468, 0, 0, 0, 0, 0, 29958, 0, 0, 0, 'Sister Almyra', 'Priest Trainer', '', 10700, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1111, 2000, 2, 32768, 2048, 0, 0, 0, 0, 5, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 112, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44469, 0, 0, 0, 0, 0, 29959, 0, 0, 0, 'Vitus Darkwalker', 'Warlock Trainer', '', 10702, 5, 5, 0, 0, 2163, 2163, 51, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 1500, 2000, 1, 768, 34816, 0, 0, 0, 0, 9, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);
REPLACE INTO `creature_template` VALUES (44470, 0, 0, 0, 0, 0, 30217, 30218, 30214, 30215, 'Injured Citizen', '', '', 0, 10, 10, 0, 0, 2163, 2163, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 1111, 2000, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 192, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 13623);

-- Drowning Watchman SAY
DELETE FROM creature_text WHERE entry = 36440;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(36440, 0, 0, 'The land gave way from under our feet... I thought I was dead. I owe you one.', 12, 0, 100, 0, 0, 0, 'Drowning Watchman says'),
(36440, 0, 1, 'Thank you... *gasp* I owe you my life.', 12, 0, 100, 0, 0, 0, 'Drowning Watchman says'),
(36440, 0, 2, 'I... I thought I was a goner. Thanks.', 12, 0, 100, 0, 0, 0, 'Drowning Watchman says');

-- Drowning Watchman
DELETE FROM npc_spellclick_spells WHERE npc_entry = 36440;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(36440, 68735, 1, 0);

DELETE FROM creature_template WHERE entry = 36440;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36440, 0, 0, 0, 0, 0, 30231, 30232, 0, 0, 'Drowning Watchman', '', 'Interact', 0, 5, 5, 0, 0, 2163, 2163, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_drowning_watchman', 13623);

-- Prince Liam Greymane Duskhaven
DELETE FROM creature_template WHERE entry = 36451;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36451, 0, 0, 0, 0, 0, 30052, 0, 0, 0, 'Prince Liam Greymane', '', '', 10773, 7, 7, 3, 0, 2165, 2165, 3, 1, 1.14286, 1, 1.14286, 1, 3, 4, 9, 0, 2, 2, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36451, 0, 0, 'npc_prince_liam_greymane', 13623);

-- Gwen Armstead Duskhaven
DELETE FROM creature_template WHERE entry = 34571;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(34571, 0, 0, 0, 0, 0, 29290, 0, 0, 0, 'Gwen Armstead', 'Mayor of Duskhaven', '', 0, 10, 10, 0, 0, 2163, 2163, 3, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 34571, 0, 0, 'npc_gwen_armstead_qi', 13623);

DELETE FROM creature_template WHERE entry IN (36287,36288,36289);
REPLACE INTO `creature_template` VALUES 
('36287', '0', '0', '0', '0', '0', '80', '0', '0', '0', 'Cynthia', '', 'Speak', '0', '1', '1', '0', '0', '35', '35', '16777216', '1', '1.14286', '1', '1.14286', '1', '0', '2', '2', '0', '24', '1', '2000', '2000', '1', '16384', '2048', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, 'SmartAI', '0', '3', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', 'npc_cynthia', '13623'),
('36288', '0', '0', '0', '0', '0', '257', '0', '0', '0', 'Ashley', '', 'Speak', '0', '1', '1', '0', '0', '35', '35', '16777216', '1', '1.14286', '1', '1.14286', '1', '0', '2', '2', '0', '24', '1', '2000', '2000', '1', '16384', '2048', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, 'SmartAI', '0', '3', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', 'npc_ashley', '13623'),
('36289', '0', '0', '0', '0', '0', '79', '0', '0', '0', 'James', '', 'Speak', '0', '1', '1', '0', '0', '35', '35', '16777216', '1', '1.14286', '1', '1.14286', '1', '0', '2', '2', '0', '24', '1', '2000', '2000', '1', '16384', '2048', '0', '0', '0', '0', '0', '0', '1', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, null, 'SmartAI', '0', '3', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', 'npc_james', '13623');


DELETE FROM npc_spellclick_spells WHERE npc_entry IN (36289,36288,36287);
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(36289, 68596, 1, 0),
(36288, 68598, 1, 0),
(36287, 68597, 1, 0);

DELETE FROM spell_script_names WHERE spell_id = 68659;
REPLACE INTO spell_script_names (spell_id, ScriptName) VALUES
(68659, 'spell_gen_launch');

DELETE FROM spell_script_names WHERE spell_id = 103558;
REPLACE INTO `spell_script_names` VALUES ('103558', 'spell_choking_smoke_bomb');

DELETE FROM creature_template WHERE entry = 36283;
REPLACE INTO `creature_template` VALUES ('36283', '0', '0', '0', '0', '0', '23884', '0', '0', '0', 'Forsaken Catapult', '', 'vehichleCursor', '0', '11', '11', '0', '0', '35', '35', '16777216', '1', '1', '1', '1', '1', '0', '2', '2', '0', '68', '1', '2000', '2000', '1', '16384', '2048', '0', '0', '0', '0', '0', '0', '1', '1', '44', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '68659', '0', '0', '0', '0', '0', '0', '0', '0', '516', '0', '0', null, null, '', '0', '3', '0', '10', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', 'npc_forsaken_catapult_qtbs', '13623');

DELETE FROM npc_spellclick_spells WHERE npc_entry IN (36289,36283,36287,36288);
REPLACE INTO `npc_spellclick_spells` VALUES 
('36289', '68596', '1', '0'),
('36283', '69434', '1', '0'),
('36287', '68597', '1', '0'),
('36288', '68598', '1', '0');

-- npc_swift_mountain_horse
DELETE FROM creature_template WHERE entry = 36741;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36741, 0, 0, 0, 0, 0, 65, 0, 0, 0, 'Swift Mountain Horse', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 542, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 177, 1, 0, 0, 0, 'npc_swift_mountain_horse', 13623);

DELETE FROM script_waypoint WHERE entry = 36741;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES 
(36741, 1, -1902.86, 2263.62, 42.3231, 0, ''),
(36741, 2, -1875.48, 2292.34, 42.2551, 0, ''),
(36741, 3, -1852.71, 2302.98, 41.8658, 0, ''),
(36741, 4, -1832.2, 2321.67, 37.9518, 2000, ''),
(36741, 5, -1799.26, 2345.02, 35.7393, 0, ''),
(36741, 6, -1784.89, 2365.27, 39.1875, 0, ''),
(36741, 7, -1777.29, 2413.63, 52.9219, 0, ''),
(36741, 8, -1767.03, 2449.39, 63.1745, 0, ''),
(36741, 9, -1751.81, 2463.86, 69.9014, 0, ''),
(36741, 10, -1718.04, 2465.8, 80.5825, 0, ''),
(36741, 11, -1705.98, 2469.33, 84.9378, 0, ''),
(36741, 12, -1691.09, 2494.77, 95.5378, 2000, ''),
(36741, 13, -1672.92, 2515.75, 97.8955, 0, '');

-- npc_wahl
DELETE FROM creature_template WHERE entry = 36458;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36458, 0, 0, 0, 0, 0, 30288, 0, 0, 0, 'Grandma Wahl', '', '', 0, 5, 5, 0, 0, 2173, 2173, 3, 1, 1.14286, 1, 1.14286, 1, 0, 5, 7, 0, 32, 1, 2000, 2000, 1, 33280, 2048, 0, 0, 0, 0, 0, 0, 3, 4, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36458, 0, 0, 'npc_wahl', 13623);

-- npc_lucius_the_cruel
DELETE FROM creature_template WHERE entry = 36461;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36461, 0, 0, 0, 0, 0, 30056, 0, 0, 0, 'Lucius the Cruel', '', '', 0, 7, 7, 0, 0, 2201, 2201, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 2, 2, 24, 7, 0, 0, 36461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 2.5, 1, 1, 1, 0, 49281, 0, 0, 0, 0, 0, 0, 1, 36461, 0, 0, 'npc_lucius_the_cruel', 13623);

-- npc_chance_the_cat
DELETE FROM npc_spellclick_spells WHERE npc_entry = 36459;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(36459, 68743, 1, 0);

DELETE FROM creature_template WHERE entry = 36459;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36459, 0, 0, 0, 0, 0, 5554, 0, 0, 0, 'Chance', '', 'Pickup', 0, 1, 1, 0, 0, 35, 35, 16777216, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 16384, 2048, 8, 0, 0, 0, 0, 0, 1, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_chance_the_cat', 13623);

-- npc_gwen_armstead
DELETE FROM creature_template WHERE entry IN (34571,36452);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(34571, 0, 0, 0, 0, 0, 29290, 0, 0, 0, 'Gwen Armstead', 'Mayor of Duskhaven', '', 0, 10, 10, 0, 0, 2163, 2163, 3, 1, 1.14286, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 34571, 0, 0, 'npc_gwen_armstead_qi', 13623),
(36452, 0, 0, 0, 0, 0, 29290, 0, 0, 0, 'Gwen Armstead', 'Mayor of Duskhaven', '', 10833, 10, 10, 0, 0, 2163, 2163, 3, 1, 1.38571, 1, 1.38571, 1, 0, 13, 17, 0, 42, 1, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36452, 0, 0, 'npc_gwen_armstead', 13623);

DELETE FROM creature_template WHERE entry = 36140;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36140, 0, 0, 0, 0, 0, 30052, 0, 0, 0, 'Prince Liam Greymane', '', '', 10773, 7, 7, 0, 0, 2166, 2166, 3, 1, 1.14286, 1, 1.14286, 1, 3, 9, 12, 0, 36, 35, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 6, 8, 169, 7, 262152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 1, 0, 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36140, 613097436, 0, 'npc_prince_liam_greymane_dh', 14480);

DELETE FROM creature_template WHERE entry = 36743;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(36743, 0, 0, 0, 0, 0, 29613, 0, 0, 0, 'King Genn Greymane', '', '', 0, 10, 10, 0, 0, 2173, 2173, 3, 1, 1.14286, 1, 1.14286, 1, 0, 2, 11, 0, 24, 1, 2000, 2000, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 262148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36743, 0, 0, 'npc_king_genn_greymane_c3', 13623);

DELETE FROM creature_template WHERE entry = 37067;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(37067, 0, 0, 0, 0, 0, 30217, 30218, 30214, 30215, 'Crash Survivor', '', '', 0, 8, 9, 0, 0, 2207, 2207, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 9, 0, 24, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 37067, 0, 0, 'npc_crash_survivor', 13623);

DELETE FROM creature_template WHERE entry = 37078;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(37078, 0, 0, 0, 0, 0, 33450, 0, 0, 0, 'Swamp Crocolisk', '', '', 0, 7, 8, 0, 0, 14, 14, 0, 1, 1.14286, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2000, 2000, 1, 0, 2048, 0, 6, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 37078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_swamp_crocolisk', 13623);

DELETE FROM creature_template WHERE entry = 37065;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(37065, 0, 0, 0, 0, 0, 30502, 0, 0, 0, 'Prince Liam Greymane', '', '', 10773, 7, 7, 3, 0, 2165, 2165, 3, 1, 1.14286, 1, 1.14286, 1, 3, 5, 9, 0, 2, 1, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 399, 559, 169, 7, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 3, 0, 241, 138, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 1, 37065, 0, 0, 'npc_prince_liam_greymane_qiao', 13623);

DELETE FROM gameobject WHERE map = 638;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (
293608, 300246, 638, 0, 0, 1, 4, -1674.09, 1348.42, 15.2845, 0.0996814, 0, 0, 0.0498201, 0.998758, 300, 0, 1),
(56783, 195306, 638, 0, 0, 1, 2, -1477.25, 1406.77, 35.5559, 3.17653, 0, 0, 0, 1, 120, 255, 1),
(56784, 195306, 638, 0, 0, 1, 2, -1466.05, 1362.19, 36.0039, 3.17653, 0, 0, 0, 1, 120, 255, 1),
(56785, 195306, 638, 0, 0, 1, 2, -1523.36, 1413.34, 35.5559, 4.59022, 0, 0, 0, 1, 120, 255, 1),
(56786, 195306, 638, 0, 0, 1, 2, -1506.12, 1439.24, 35.9363, 0, 0, 0, 0, 1, 120, 255, 1),
(56787, 195306, 638, 0, 0, 1, 2, -1541.22, 1381.21, 36.0039, 3.17653, 0, 0, 0, 1, 120, 255, 1),
(56788, 195306, 638, 0, 0, 1, 2, -1537.45, 1406.86, 35.5559, 0, 0, 0, 0, 1, 120, 255, 1),
(56789, 195306, 638, 0, 0, 1, 2, -1548.74, 1305.17, 35.8792, 3.28124, 0, 0, 0, 1, 120, 255, 1),
(56790, 195306, 638, 0, 0, 1, 2, -1574.02, 1401.14, 36.6302, 3.17653, 0, 0, 0, 1, 120, 255, 1),
(56791, 195306, 638, 0, 0, 1, 2, -1561.4, 1432.83, 35.9623, 0, 0, 0, 0, 1, 120, 255, 1),
(56792, 195306, 638, 0, 0, 1, 2, -1524.05, 1442.07, 35.9939, 0, 0, 0, 0, 1, 120, 255, 1),
(56793, 195306, 638, 0, 0, 1, 2, -1493.9, 1362.94, 35.9987, 0, 0, 0, 0, 1, 120, 255, 1),
(56794, 195306, 638, 0, 0, 1, 2, -1429.87, 1399.26, 36.0039, 4.59022, 0, 0, 0, 1, 120, 255, 1),
(56795, 195306, 638, 0, 0, 1, 2, -1478.73, 1380.34, 36.0039, 3.17653, 0, 0, 0, 1, 120, 255, 1),
(56796, 195306, 638, 0, 0, 1, 2, -1477.67, 1412.66, 35.5559, 0, 0, 0, 0, 1, 120, 255, 1),
(56797, 195306, 638, 0, 0, 1, 2, -1457.3, 1409.06, 35.5559, 4.59022, 0, 0, 0, 1, 120, 255, 1),
(56798, 195306, 638, 0, 0, 1, 2, -1440.89, 1440.72, 35.9799, 0, 0, 0, 0, 1, 120, 255, 1),
(56799, 195306, 638, 0, 0, 1, 2, -1419.04, 1428.56, 35.7935, 4.59022, 0, 0, 0, 1, 120, 255, 1),
(56800, 195327, 638, 0, 0, 1, 7, -1426.66, 1436.56, 36.3902, 3.07177, 0, 0, 0, 1, 120, 255, 1),
(56801, 195327, 638, 0, 0, 1, 7, -1463.9, 1444.26, 36.5957, 4.71239, 0, 0, 0, 1, 120, 255, 1),
(56802, 195327, 638, 0, 0, 1, 7, -1421.08, 1412.98, 36.7944, 1.53589, 0, 0, 0, 1, 120, 255, 1),
(56803, 195327, 638, 0, 0, 1, 7, -1394.59, 1403.33, 36.4232, 3.12412, 0, 0, 0, 1, 120, 255, 1),
(56804, 195327, 638, 0, 0, 1, 7, -1537.47, 1443.97, 36.7051, 4.71239, 0, 0, 0, 1, 120, 255, 1),
(56805, 195327, 638, 0, 0, 1, 7, -1513.22, 1371.14, 36.535, 6.21337, 0, 0, 0, 1, 120, 255, 1),
(56806, 195327, 638, 0, 0, 1, 7, -1486.29, 1334.58, 36.4891, 1.83259, 0, 0, 0, 1, 120, 255, 1),
(56807, 195327, 638, 0, 0, 1, 7, -1493.83, 1371.16, 36.5577, 3.08918, 0, 0, 0, 1, 120, 255, 1),
(56808, 195327, 638, 0, 0, 1, 7, -1529.5, 1322.8, 36.5849, 1.83259, 0, 0, 0, 1, 120, 255, 1),
(56809, 195327, 638, 0, 0, 1, 7, -1549.55, 1309.61, 36.4266, 3.38594, 0, 0, 0, 1, 120, 255, 1),
(56810, 195327, 638, 0, 0, 1, 7, -1576.57, 1335.94, 36.535, 6.26573, 0, 0, 0, 1, 120, 255, 1),
(56811, 195327, 638, 0, 0, 1, 7, -1583.43, 1359.09, 36.535, 1.53589, 0, 0, 0, 1, 120, 255, 1),
(56812, 195327, 638, 0, 0, 1, 7, -1562.48, 1409.71, 36.532, 6.26573, 0, 0, 0, 1, 120, 255, 1),
(56813, 195327, 638, 0, 0, 1, 7, -1569.8, 1384.91, 36.9995, 1.46608, 0, 0, 0, 1, 120, 255, 1),
(56815, 195454, 638, 0, 0, 1, 12, -1764.93, 1415.87, 20.1221, 1.40499, 0, 0, 0, 1, 120, 255, 1),
(56816, 195465, 638, 0, 0, 1, 12, -1794.13, 1402.51, 20.1318, 2.15548, 0, 0, 0, 1, 120, 255, 1),
(56817, 195466, 638, 0, 0, 1, 12, -1805.29, 1399.5, 20.261, 1.26536, 0, 0, 0, 1, 120, 255, 1),
(56818, 195579, 638, 0, 0, 1, 1, -1432.54, 1682.67, 20.4855, 3.89499, 0, 0, 0, 1, 120, 255, 1),
(56819, 195580, 638, 0, 0, 1, 1, -1765.74, 1682.84, 21.8777, 5.57922, 0, 0, 0, 1, 120, 255, 1),
(56821, 195621, 638, 0, 0, 1, 3, -1790.03, 1435.53, 21.7358, 1.66817, 0, 0, 0, 1, 0, 255, 1),
(56822, 196399, 638, 0, 0, 1, 1, -1817.84, 2333.37, 36.3445, 3.79899, 0, 0, 0, 1, 120, 255, 1),
(56823, 196400, 638, 0, 0, 1, 1, -1542.02, 1978.71, 5.61611, 3.70883, 0, 0, 0, 1, 120, 255, 1),
(56824, 196401, 638, 0, 0, 1, 1, -1681.84, 2507.57, 97.7786, 3.93862, 0, 0, 0, 1, 120, 255, 1),
(56825, 196404, 638, 0, 0, 1, 1, -1880.47, 2545.83, 3.08704, 3.82227, 0, 0, 0.942641, -0.333807, 120, 255, 0),
(56826, 196412, 638, 0, 0, 1, 1, -1872.92, 2073.58, 89.1548, 1.54751, 0, 0, 0, 1, 120, 255, 1),
(56827, 196841, 638, 0, 0, 1, 1, -1843.01, 2320.08, 42.7547, 1.90241, 0, 0, 0, 1, 120, 255, 1),
(56828, 196846, 638, 0, 0, 1, 1, -1902.33, 2275.4, 42.165, 0.767944, 0, 0, 0, 1, 120, 255, 1),
(56829, 196850, 638, 0, 0, 1, 1, -1844.13, 2320.45, 42.2819, 3.86591, 0, 0, 0, 1, 120, 255, 1),
(56830, 196851, 638, 0, 0, 1, 1, -1844.3, 2319.4, 41.2125, 5.39307, 0, 0, 0, 1, 120, 255, 1),
(56831, 196854, 638, 0, 0, 1, 1, -1874.56, 2312.8, 42.2812, 3.22886, 0, 0, 0, 1, 120, 255, 1),
(56832, 196866, 638, 0, 0, 1, 1, -1912.21, 2265.34, 43.4427, 4.66003, 0, 0, 0, 1, 120, 255, 1),
(56833, 196867, 638, 0, 0, 1, 1, -1911.66, 2264.62, 45.5267, 6.18719, 0, 0, 0, 1, 120, 255, 1),
(56834, 196868, 638, 0, 0, 1, 1, -1912.17, 2265.58, 44.661, 4.23242, 0, 0, 0, 1, 120, 255, 1),
(56835, 196869, 638, 0, 0, 1, 1, -1912.09, 2265.75, 46.0034, 3.94445, 0, 0, 0, 1, 120, 255, 1),
(56836, 196879, 638, 0, 0, 1, 1, -1869.11, 2229.79, 42.3233, 1.72787, 0, 0, 0, 1, 120, 255, 1),
(56837, 196880, 638, 0, 0, 1, 1, -1865.89, 2232.71, 42.3229, 5.37562, 0, 0, 0, 1, 120, 255, 1),
(56838, 202191, 638, 0, 0, 1, 1, -1586.27, 1613.42, 20.3519, 1.41661, 0, 0, 0, 1, 120, 255, 1),
(56839, 202591, 638, 0, 0, 1, 1, -1496.14, 1409.73, 35.5236, 6.27446, 0, 0, 0, 1, 120, 255, 1),
(56840, 202666, 638, 0, 0, 1, 1, -1601.08, 1509.74, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56841, 202668, 638, 0, 0, 1, 1, -1598.02, 1512.75, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56842, 202669, 638, 0, 0, 1, 1, -1594.95, 1515.76, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56843, 202670, 638, 0, 0, 1, 1, -1591.89, 1518.77, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56844, 202671, 638, 0, 0, 1, 1, -1588.82, 1521.78, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56845, 202672, 638, 0, 0, 1, 1, -1595.65, 1528.73, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56846, 202673, 638, 0, 0, 1, 1, -1598.71, 1525.72, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56847, 202674, 638, 0, 0, 1, 1, -1601.78, 1522.7, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56848, 202675, 638, 0, 0, 1, 1, -1604.84, 1519.69, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56849, 202676, 638, 0, 0, 1, 1, -1607.9, 1516.68, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56850, 202677, 638, 0, 0, 1, 1, -1598.71, 1531.08, 29.2592, 4.2586, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56851, 202678, 638, 0, 0, 1, 1, -1601.78, 1528.07, 29.2592, 4.2586, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56852, 202679, 638, 0, 0, 1, 1, -1604.84, 1525.06, 29.2592, 4.2586, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56853, 202680, 638, 0, 0, 1, 1, -1607.91, 1522.05, 29.2592, 4.2586, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56854, 202681, 638, 0, 0, 1, 1, -1610.97, 1519.04, 29.2592, 4.2586, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56855, 202682, 638, 0, 0, 1, 1, -1586.5, 1518.69, 29.2592, 3.56048, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56856, 202683, 638, 0, 0, 1, 1, -1589.56, 1515.68, 29.2592, 3.56048, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56857, 202684, 638, 0, 0, 1, 1, -1592.62, 1512.66, 29.2592, 3.56048, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56858, 202685, 638, 0, 0, 1, 1, -1595.69, 1509.65, 29.2592, 3.56048, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56859, 202686, 638, 0, 0, 1, 1, -1598.75, 1506.64, 29.2592, 3.56048, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56860, 202687, 638, 0, 0, 1, 1, -1592.58, 1531.74, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56861, 202688, 638, 0, 0, 1, 1, -1585.76, 1524.8, 29.2592, 3.90954, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56862, 202691, 638, 0, 0, 1, 1, -1595.65, 1534.09, 29.2592, 4.2586, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56863, 202692, 638, 0, 0, 1, 1, -1583.43, 1521.7, 29.2592, 3.56048, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56864, 202694, 638, 0, 0, 1, 1, -1583.41, 1546.47, 29.2014, 1.91114, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56865, 202695, 638, 0, 0, 1, 1, -1587.66, 1543.98, 29.2014, 2.34746, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56866, 202696, 638, 0, 0, 1, 1, -1588.72, 1539.92, 29.2014, 3.04558, 0, 0, 0.925541, -0.378649, 120, 255, 1),
(56867, 204986, 638, 0, 0, 1, 1, -1586.27, 1613.42, 20.3519, 1.41661, 0, 0, 0, 1, 120, 255, 1),
(56868, 205028, 638, 0, 0, 1, 1, -1862.61, 2256.2, 44.579, 3.49067, 0, 0, 0.922201, -0.386711, 120, 255, 1),
(56869, 205029, 638, 0, 0, 1, 1, -1863.38, 2257.05, 44.6525, 1.35263, 0, 0, 0.922201, -0.386711, 120, 255, 1),
(56870, 205030, 638, 0, 0, 1, 1, -1891.33, 2245.94, 44.4011, 5.52397, 0, 0, 0.92388, 0.382684, 120, 255, 1),
(56871, 205030, 638, 0, 0, 1, 1, -1891.33, 2245.94, 44.4011, 5.52397, 0, 0, 0.92388, 0.382684, 120, 255, 1),
(56872, 205031, 638, 0, 0, 1, 1, -1890.45, 2246.84, 44.4277, 3.13286, 0, 0, 0.92388, 0.382684, 120, 255, 1),
(56873, 205032, 638, 0, 0, 1, 1, -1911.12, 2289.85, 44.3695, 5.53269, 0, 0, 0.390731, 0.920505, 120, 255, 1),
(56874, 205034, 638, 0, 0, 1, 1, -1891.45, 2307.65, 44.5064, 3.91827, 0, 0, 0.390731, 0.920505, 120, 255, 1),
(56875, 205035, 638, 0, 0, 1, 1, -1891.88, 2309.34, 44.4515, 4.9131, 0, 0, 0.390731, 0.920505, 120, 255, 1),
(56876, 206693, 638, 0, 0, 1, 1, -1880.47, 2545.83, 3.08704, 3.82227, 0, 0, 0.942641, -0.333807, 120, 255, 1),
(56877, 207093, 638, 0, 0, 1, 1, -1651.25, 1607.09, 22.8441, 2.40452, 0, 0, 0.999997, -0.00259022, 120, 255, 1),
(56878, 207093, 638, 0, 0, 1, 1, -1651.25, 1607.08, 23.2676, 2.40452, 0, 0, 0.999997, -0.00259022, 120, 255, 1),
(56879, 207330, 638, 0, 0, 1, 1, -1672.76, 1579.18, 20.2763, 4.02299, 0, 0, 0, 1, 120, 255, 1),
(56880, 207417, 638, 0, 0, 1, 1, -1615.21, 1310.43, 18.9967, 0, 0, 0, 0, 1, 120, 255, 1),
(56881, 207417, 638, 0, 0, 1, 1, -1405.87, 1442.18, 35.5559, 0, 0, 0, 0, 1, 120, 255, 1),
(56882, 207417, 638, 0, 0, 1, 1, -1835.24, 2287.93, 42.3233, 0, 0, 0, 0, 1, 120, 255, 1),
(56883, 207417, 638, 0, 0, 1, 1, -1799.16, 1547.6, 22.7369, 0.750491, 0, 0, 0, 1, 120, 255, 1),
(56884, 207417, 638, 0, 0, 1, 1, -1797.11, 1550.61, 22.7323, 0.750491, 0, 0, 0, 1, 120, 255, 1),
(295118, 195453, 638, 0, 0, 1, 1, -1575.41, 1314.4, 35.6634, 3.24692, 0, 0, 0.998614, -0.052639, 300, 0, 1),
(201081, 402362, 638, 0, 0, 1, 1, -1486.87, 1357.83, 35.8334, 0.0785386, 0, 0, 0.0392592, 0.999229, 300, 0, 1),
(201082, 401862, 638, 0, 0, 1, 1, -1493.51, 1357.36, 35.7989, 0.0117798, 0, 0, 0.00588986, 0.999983, 300, 0, 1),
(201083, 401862, 638, 0, 0, 1, 1, -1488.11, 1418.26, 35.5564, 5.04618, 0, 0, 0.579817, -0.814746, 300, 0, 1),
(201084, 401862, 638, 0, 0, 1, 1, -1429.18, 1375.58, 35.687, 2.13628, 0, 0, 0.876305, 0.481757, 300, 0, 1),
(201085, 401862, 638, 0, 0, 1, 1, -1539.91, 1346.38, 35.7626, 2.05381, 0, 0, 0.855701, 0.51747, 300, 0, 1),
(201086, 401863, 638, 0, 0, 1, 1, -1530.18, 1352.76, 36.0583, 5.66664, 0, 0, 0.303413, -0.952859, 300, 0, 1),
(201087, 402361, 638, 0, 0, 1, 1, -1535.72, 1356.68, 35.817, 0.00391817, 0, 0, 0.00195908, 0.999998, 300, 0, 1),
(201088, 402362, 638, 0, 0, 1, 1, -1543.96, 1356.11, 35.729, 2.45436, 0, 0, 0.941543, 0.336893, 300, 0, 1),
(201089, 401862, 638, 0, 0, 1, 1, -1536.2, 1350.01, 35.9364, 2.52898, 0, 0, 0.953453, 0.301541, 300, 0, 1),
(201090, 402362, 638, 0, 0, 1, 1, -1511.35, 1358.83, 35.5576, 0.0903118, 0, 0, 0.0451406, 0.998981, 300, 0, 1),
(201091, 402361, 638, 0, 0, 1, 1, -1517.9, 1358.24, 35.63, 0.592967, 0, 0, 0.292159, 0.95637, 300, 0, 1),
(201092, 401862, 638, 0, 0, 1, 1, -1519.77, 1353.63, 35.9139, 2.50934, 0, 0, 0.950447, 0.310888, 300, 0, 1),
(201093, 401862, 638, 0, 0, 1, 1, -1568.27, 1338.49, 35.7816, 3.53429, 0, 0, 0.980786, -0.195089, 300, 0, 1),
(201094, 402361, 638, 0, 0, 1, 1, -1453.15, 1370.15, 35.8176, 4.76344, 0, 0, 0.688829, -0.724924, 300, 0, 1),
(201095, 402361, 638, 0, 0, 1, 1, -1449.85, 1370, 35.6124, 0.212054, 0, 0, 0.105828, 0.994384, 300, 0, 1),
(201096, 401863, 638, 0, 0, 1, 1, -1450.76, 1375.34, 35.7253, 5.14436, 0, 0, 0.539137, -0.842218, 300, 0, 1),
(201097, 401862, 638, 0, 0, 1, 1, -1447.33, 1377.7, 35.5561, 4.08801, 0, 0, 0.890111, -0.455743, 300, 0, 1),
(201098, 401863, 638, 0, 0, 1, 1, -1428.45, 1443.51, 36.0091, 1.20166, 0, 0, 0.565327, 0.824867, 300, 0, 1),
(201099, 401862, 638, 0, 0, 1, 1, -1429.85, 1440.95, 35.9821, 1.19381, 0, 0, 0.562084, 0.82708, 300, 0, 1),
(295117, 195453, 638, 0, 0, 1, 1, -1575.81, 1320.37, 35.6616, 3.19194, 0, 0, 0.999683, -0.0251718, 300, 0, 1);

-- Evacuate the Merchant Square
UPDATE quest_template SET RequiredNpcOrGo1 = 35830 WHERE id = 14098;

-- lorna crowley add the correct scriptname for her so now the script and text will work
UPDATE creature_template SET ScriptName = 'npc_lorna_crowley_p4' WHERE entry = 35378;

-- Crowley\'s Horse has the correct spell now it it work so you will get quest credit
DELETE FROM creature_template WHERE entry = 35231;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_fly`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `currencyId`, `currencyCount`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(35231, 0, 0, 0, 0, 0, 238, 0, 0, 0, 'Crowley\'s Horse', '', '', 0, 4, 4, 0, 0, 2203, 2203, 0, 1, 1.28571, 1, 1.28571, 1, 0, 13, 17, 0, 42, 1, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 13, 17, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 67063, 0, 0, 0, 0, 0, 0, 0, 0, 463, 0, 0, NULL, NULL, '', 0, 3, 1, 10, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2147483647, 0, 'npc_crowley_horse', 13623);

-- thery are in wrong phase definition and they are spawnd by script on quest accept
DELETE from creature WHERE id = 35627 and map = 638;

-- fix Quest  Good Help is Hard to Find

UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='34830');
