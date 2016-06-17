DELETE FROM `creature_loot_template` WHERE `Entry` = 800050;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 52006, 0, 1, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 38186, 0, 1, 0, 1, 0, 5, 7);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 50449, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 50450, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 50451, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 50452, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 50447, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 50453, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 50444, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 40429, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800050, 43991, 0, 12.5, 0, 1, 2, 1, 1); 




DELETE FROM `creature_template` WHERE `entry` = 800050;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800050,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */29492,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Tyranium',
  /* Subname */'Der geflügelte Schrecken',
  /* Iconname */'',
  /* gossip_menu_id`  */0,
  /* Min Level */83,
  /* Max Level  */83,
  /* Exp */0,
  21,
  /* npcflag Was ist er Questgeber oder weiteres? */0,
  /* Speedwalk */1,
  /* speedrun */ 1.14286,
  /* scale */2,
  /* rank  Normal, Elite?*/3,
  /* dmgschool Normal Holy Fire? */0,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */2000,
  /* Welche Klasse? Krieger Pala, also Mana oder kein MAna? */2,
  /* unit flkag */0,
  /* unit flags2  */0,
  /* dynamicflag */0,
  /* Family  */0,
  /* Trainer type */0,
  /* trainer spell */0,
  /* trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /* lootid */800050,
  /* pickpocketloot` */0,
  /* Skinloot*/ 0,  
  /* Restistance1  */100,
  /*   */100,
  /*   */100,
  /*   */100,
  /*   */100,
  /*  Resi 6*/100,
  /* spell1  */0, 
  /*   */0,
  /*   */0,
  /*   */0,
  /*   */0, 
  /*   */0, 
  /*   */0, 
  /*  Spell8 */0, 
  /*  Petspelldataid */0, 
  /*  VehicleId` */ 0, 
  /*  mingold`  */3000000, 
  /*  MaxGold  */ 9000000, 
  /*  AiName */'',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'tyranium');

UPDATE `creature_template` SET `HealthModifier`=500, `ArmorModifier`=200, `DamageModifier`=100 WHERE `entry`=800050;
UPDATE `creature_template` SET `ManaModifier`='1400' WHERE `entry`='800050';


DELETE FROM `creature` WHERE `guid` = 800050;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800050','800050','0','1','1','27039','0','-4673.73','-1949.52','521.96','4.60','14400','0','0','1000000','250000','0');




