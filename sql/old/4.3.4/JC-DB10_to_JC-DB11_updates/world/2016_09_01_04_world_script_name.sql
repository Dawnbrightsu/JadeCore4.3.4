-- Working for ScriptName.
-- By Bodeguero for JadeCore.

DELETE FROM `spell_script_names` WHERE `spell_id`=78; -- Warrior - Heroic Strike
REPLACE INTO `spell_script_names` VALUES (78, 'spell_warr_heroic_strike');

DELETE FROM `spell_bonus_data` WHERE `entry`=78; -- Warrior - Heroic Strike
REPLACE INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (78, 0, 0, 0.6, 0, 'Warrior - Heroic Strike');

DELETE FROM `spell_script_names` WHERE `spell_id`=845; -- Warrior - Cleave
REPLACE INTO `spell_script_names` VALUES (845, 'spell_warr_cleave');

DELETE FROM `spell_bonus_data` WHERE `entry`=845; -- Warrior - Cleave
REPLACE INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (845, 0.0036, 0.0036, 0.45, 0.0036, 'Warrior - Cleave');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (11366, 12654, 92315); -- spell_mage_pyromaniac
REPLACE INTO `spell_script_names` VALUES (12654, 'spell_mage_pyromaniac');
REPLACE INTO `spell_script_names` VALUES (92315, 'spell_mage_pyromaniac');
DELETE FROM `spell_script_names` WHERE spell_id = 79637;
REPLACE INTO `spell_script_names` VALUES (79637, 'spell_item_flask_of_enhancement');

DELETE FROM `spell_script_names` WHERE spell_id = 82174;
REPLACE INTO `spell_script_names` VALUES (82174, 'spell_item_synapse_springs');

DELETE FROM `spell_script_names` WHERE spell_id = 82626;
REPLACE INTO `spell_script_names` VALUES (82626, 'grounded_plasma_shield');
DELETE FROM spell_script_names WHERE spell_id IN (31930, 89906);
REPLACE INTO spell_script_names VALUES
(31930, 'spell_pal_judgements_of_the_wise'),
(89906, 'spell_pal_judgements_of_the_bold');
-- Priest Spell spirit_of redemption
REPLACE INTO spell_script_names VALUE (20711, 'spell_pri_spirit_of_redemption');
REPLACE INTO spell_script_names VALUE (27827, 'spell_pri_spirit_of_redemption_form');

-- Hunter Silencing Shot
DELETE FROM spell_script_names WHERE spell_id=34490;
REPLACE INTO `spell_script_names` VALUES (34490, 'spell_hun_silencing_shot');

-- (56836) Glyph of Silencing Shot
DELETE FROM `spell_proc_event` WHERE `entry` IN (56836);
REPLACE INTO `spell_proc_event` VALUES (56836, 0x00, 0x09, 0x00040000, 0x00000000, 0x00000000, 0x00000100, 0x00000000, 0, 0, 0);DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '61336';
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('61336', '50322', '1', 'Survival Instincts');-- (87099) Sin and Punishment (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (87099);
REPLACE INTO `spell_proc_event` VALUES (87099, 0x01, 0x06, 0x00000000, 0x00000000, 0x00000000, 0x00040000, 0x00000002, 0, 100, 0);

-- lacerate
DELETE FROM `spell_script_names` WHERE `spell_id`=33745;
REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (33745,'spell_dru_lacerate');DELETE FROM `spell_proc_event` WHERE `entry` IN (96879, 96924);
REPLACE INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `CustomChance`, `Cooldown`) VALUES 
(96924, 0, 0, 0, 0, 0, 0x00000014, 0x0000002, 100, 0),
(96879, 0, 0, 0, 0, 0, 0x00008000, 0, 100, 0);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (96880, 96934,91836);
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(96934, 'spell_gen_blessing_of_khazgoroth'),
(96880, 'spell_gen_tipping_of_scales'),
(91836, 'spell_gen_forged_fury');DELETE FROM `spell_script_names` WHERE (`spell_id`='103558');
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (103558, 'spell_choking_smoke_bomb');
DELETE FROM spell_script_names WHERE ScriptName = 'spell_hun_glyph_kill_shot';
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
('53351', 'spell_hun_glyph_kill_shot');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (34861,64844,64904,54968,48438,17,73325,71610,2825,51556,52759,61295,1064,71641,82984,82988,30881,77755,77756,77762,88756,88764,51562,51490,-51490);
REPLACE INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(34861,'spell_pri_circle_of_healing'),
(64844, 'spell_pri_divine_hymn'),
(64904, 'spell_pri_hymn_of_hope'),
(17, 'spell_pri_body_and_soul'),
(73325, 'spell_pri_body_and_soul'),
(54968, 'spell_pal_glyph_of_holy_light'),
(48438,'spell_dru_wild_growth'),
(71610, 'spell_item_echoes_of_light'),
(2825,'spell_sha_bloodlust'),
(52759,'spell_sha_ancestral_awakening_proc'),
(51556,'spell_sha_ancestral_awakening'),
(71641, 'spell_item_echoes_of_light'),
(51562,'spell_sha_tidal_waves'),
(82984, 'spell_sha_telluric_currents'),
(30881,'spell_sha_nature_guardian'),
(82988, 'spell_sha_telluric_currents'),
(77755, 'spell_sha_lava_surge'),
(77756, 'spell_sha_lava_surge'),
(77762, 'spell_sha_lava_surge_proc'),
(88756, 'spell_sha_rolling_thunder'),
(88764, 'spell_sha_rolling_thunder'),
(1064,'spell_sha_chain_heal'),
(51490,'spell_sha_thunderstorm');


DELETE FROM `spell_proc_event` WHERE `entry` IN (82984,82988);
REPLACE INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(82984, 0, 11, 0x1, 0, 0, 0, 0, 0, 0, 0),
(82988, 0, 11, 0x1, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (31641,30881);
REPLACE INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(30881, 30881, 1),
(30881, 30883, 2),
(30881, 30884, 3);

DELETE FROM `spell_proc_event` WHERE `entry` IN (30881,30883,30884);