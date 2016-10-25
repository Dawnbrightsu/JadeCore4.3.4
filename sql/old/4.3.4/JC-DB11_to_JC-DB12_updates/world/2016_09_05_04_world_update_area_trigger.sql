-- Update Area Trigger.
-- By Bodeguero for JadeCore.

DELETE FROM `areatrigger_scripts` WHERE `entry` = 6076;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(6076, 'at_rockdoor_break');