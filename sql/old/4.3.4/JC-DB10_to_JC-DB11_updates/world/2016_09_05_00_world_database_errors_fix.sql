-- GunShip Battle starting zone.
-- By Gabriel Ferreira for DeathCore.

DELETE FROM `creature_addon` WHERE `guid` IN(244425, 244424, 244423, 244422, 244421, 244420, 244419, 244418, 244417, 244416, 244415, 244414, 244413, 244412, 244411, 244410, 244409, 244408, 244118, 244119, 244120, 244121, 244122, 244123, 244124, 244125, 244126, 244127, 244128, 244129, 244130, 244131, 244132, 244133, 244134, 244135, 244136, 244137, 244138, 244139, 244140, 244141, 244142, 244143, 244144, 244145, 244146, 244147, 244148, 244149, 244150, 244151, 244152, 244153, 244154, 244155, 244156, 244157, 244158, 244159, 244160, 244161, 244162, 244163, 244164, 244165, 244166, 244167, 244168, 244169, 244170, 244171, 244172, 244173, 244174, 244175, 244176, 244177, 244178, 244179, 244180, 244181, 244182, 244183, 244184, 244185, 244186, 244187, 244188, 244189, 244190, 244191, 244192, 244193, 244194, 244195, 244196, 244197, 244203, 244204, 244205, 244206, 244207, 244208, 244217, 244218, 244219, 244220, 244221, 244222, 244223, 244224, 244225, 244226, 244227, 244228, 244229, 244230, 244231, 244232, 244233, 244234, 244235, 244236, 244237, 244238, 244239, 244240, 244241, 244242, 244243, 244244, 244245, 244246, 244247, 244248, 244249, 244250, 244251, 244252, 244253, 244254, 244255, 244256, 244257, 244258, 244259, 244260, 244261, 244262, 244263, 244264, 244265, 244266, 244267, 244268, 244269, 244270, 244271, 244272, 244273, 244274, 244275, 244276, 244277, 244278, 244279, 244280, 244281, 244282, 244283, 244284, 244285, 244286, 244301, 244302, 244303, 292065);
UPDATE `creature_template` SET `npcflag`=16 WHERE  `entry`=50006;
UPDATE `creature_template` SET `npcflag`=16 WHERE  `entry`=50004;
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=34865;
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=34957;
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=34958;
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=34959;
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=37598;
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=39509;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=553120;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=553082;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=553080;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=553081;
UPDATE `quest_template` SET `RequiredNPCOrGoCount2`=1 WHERE `entry`=24920;
UPDATE `quest_template` SET `RequiredNPCOrGoCount1`=1 WHERE `entry`=24920;
UPDATE `quest_template` SET `RequiredNPCOrGoCount1`=1 WHERE `entry`=24681;
UPDATE `quest_template` SET `RequiredNPCOrGoCount2`=1 WHERE `entry`=24681;
UPDATE `quest_template` SET `RequiredNPCOrGoCount3`=1 WHERE `entry`=24681;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=35201;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=35186;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=35185;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=35175;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=35222;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=37602;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=34874;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=34872;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=34693;
UPDATE `creature_template` SET `equipment_id`=46643 WHERE `entry`=34668;
DELETE FROM `creature_loot_template` WHERE `entry`=38258;