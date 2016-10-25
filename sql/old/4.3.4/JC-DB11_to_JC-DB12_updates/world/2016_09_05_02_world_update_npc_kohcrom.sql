-- Update Npc Kohcrom.
-- By Bodeguero for JadeCore.

UPDATE creature_template SET difficulty_entry_1=57774, difficulty_entry_2=57995, difficulty_entry_3=57996, minlevel=88, maxlevel=88, faction_A=14, faction_H=14, mindmg=1320, maxdmg=1566, dmg_multiplier=8.9, unit_class=1, Health_mod=419.13, mana_mod=1, ScriptName='npc_kohcrom', mechanic_immune_mask=2147483647 WHERE entry IN (57773);
UPDATE creature_template SET EXP=3, minlevel=88, maxlevel=88, faction_A=14, faction_H=14, mindmg=1320, maxdmg=1566, dmg_multiplier=15, unit_class=1, Health_mod=250, mana_mod=1, mechanic_immune_mask=2147483647 WHERE entry IN (57774);
UPDATE creature_template SET EXP=3, minlevel=88, maxlevel=88, faction_A=14, faction_H=14, mindmg=1320, maxdmg=1566, dmg_multiplier=8.9, unit_class=1, Health_mod=1187.53, mana_mod=1, mechanic_immune_mask=2147483647 WHERE entry IN (57995);
UPDATE creature_template SET EXP=3, minlevel=88, maxlevel=88, faction_A=14, faction_H=14, mindmg=1320, maxdmg=1566, dmg_multiplier=15, unit_class=1, Health_mod=682.62, mana_mod=1, mechanic_immune_mask=2147483647 WHERE entry IN (57996);