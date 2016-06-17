DELETE FROM `creature_template` WHERE `entry` = 800053;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800053,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */27211,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Kraserius',
  /*  Subname */'Stellvertreter der Sammler',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1.14286,
  /*  scale */1,
  /*  rank  Normal, Elite?*/1,
  /*  dmgschool Normal Holy Fire? */1,
  /* BaseAttackTime`  */1,
  /* RangeAttackTime`  */1,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flkag */2,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
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
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */0, 
  /*Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
DELETE FROM `creature` WHERE `id` = 800053;   
  
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800053','800053','571','1','1','27211','0','5342.16','4865.82','-186.68','5.95','25','0','0','1000000','250000','0');







DELETE FROM `creature_template` WHERE `entry` = 800054;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800054,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */25610,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Groot',
  /*  Subname */'Prinz der Sammler',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1.14286,
  /*  scale */1,
  /*  rank  Normal, Elite?*/1,
  /*  dmgschool Normal Holy Fire? */1,
  /* BaseAttackTime`  */1,
  /* RangeAttackTime`  */1,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flkag */2,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
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
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */0, 
  /*Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
DELETE FROM `creature` WHERE `id` = 800054;   
  
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800054','800054','571','1','1','25610','0','5351.29','4869.99','-188.94','5.4','25','0','0','1000000','250000','0');







DELETE FROM `creature_template` WHERE `entry` = 800055;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800055,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */16662,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Lucion',
  /*  Subname */'Hochlord der Sammler',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1.14286,
  /*  scale */1,
  /*  rank  Normal, Elite?*/1,
  /*  dmgschool Normal Holy Fire? */1,
  /* BaseAttackTime`  */1,
  /* RangeAttackTime`  */1,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flkag */2,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
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
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */0, 
  /*Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
DELETE FROM `creature` WHERE `id` = 800055;   
  
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800055','800055','571','1','1','16662','0','5341.62','4855.35','-188.34','0.23','25','0','0','1000000','250000','0');







DELETE FROM `creature_template` WHERE `entry` = 800056;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800056,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */27782,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Alanna',
  /*  Subname */'Prinzessin der Sammler',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1.14286,
  /*  scale */1,
  /*  rank  Normal, Elite?*/1,
  /*  dmgschool Normal Holy Fire? */1,
  /* BaseAttackTime`  */1,
  /* RangeAttackTime`  */1,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flkag */2,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
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
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */0, 
  /*Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'');
  
DELETE FROM `creature` WHERE `id` = 800056;   
  
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800056','800056','571','1','1','27782','0','5370.32','4859.68','-196.49','2.87','25','0','0','1000000','250000','0');







DELETE FROM `creature_template` WHERE `entry` = 800057;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800057,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */27782,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'SupportNPC',
  /*  Subname */'Made by Exitare',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1.14286,
  /*  scale */1,
  /*  rank  Normal, Elite?*/1,
  /*  dmgschool Normal Holy Fire? */1,
  /* BaseAttackTime`  */1,
  /* RangeAttackTime`  */1,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flkag */2,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
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
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */0, 
  /*Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'supportnpc');
  
DELETE FROM `creature` WHERE `id` = 800057;   
  
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800057','800057','1','1','1','27782','0','1583.59','-4396.05','5.77','5.00','25','0','0','1000000','250000','0');

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('798009','800057','0','1','1','27782','0','-8792.51','651.39','95.03','3.78','25','0','0','1000000','250000','0');






DELETE FROM `creature_loot_template` WHERE `Entry` = 800058;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47241, 0, 100, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 38186, 0, 1, 0, 1, 0, 5, 7);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47249, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47248, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47498, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47510, 0, 25, 0, 1, 1, 1, 1); 

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47512, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47522, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47495, 0, 25, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47468, 0, 12.5, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800058, 47561, 0, 12.5, 0, 1, 2, 1, 1); 




DELETE FROM `creature_template` WHERE `entry` = 800058;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800058,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */9391,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Tolreos',
  /* Subname */'Ein vergessener Schrecken',
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
  /* dynamicflag */1,
  /* Family  */0,
  /* Trainer type */0,
  /* trainer spell */0,
  /* trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /* lootid */800058,
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
  /*  mechanic_immune_mask` */642465663, 
  /*  flags_extra` */0, 
  /*  Scriptname  */'tolreos');

UPDATE `creature_template` SET `HealthModifier`=550, `ArmorModifier`=200, `DamageModifier`=110 WHERE `entry`=800058;



DELETE FROM `creature` WHERE `guid` = 800058;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800058','800058','530','1','1','9391','0','-856.30','1583.93','448.26','5.48','14400','0','0','1000000','250000','0');




DELETE FROM `creature_template` WHERE `entry` = 800059;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800059,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */27782,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'MMOwning Challenge',
  /*  Subname */'Made by Exitare',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1.14286,
  /*  scale */1,
  /*  rank  Normal, Elite?*/1,
  /*  dmgschool Normal Holy Fire? */1,
  /* BaseAttackTime`  */1,
  /* RangeAttackTime`  */1,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flkag */2,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
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
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */0, 
  /*Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'challenge');
  







DELETE FROM `creature_template` WHERE `entry` = 800060;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800060,
  /*  Dificculty 1 */0,
 /* Dif2  */ 0,
  /*  Dif3 */0,
  /* KillCredit1  */0,
  /*  KillCredit2  */0,
  /* Modelid  */22911,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
 /* Name  */'Darkshadow',
  /*  Subname */'Der Enterbte Prinz',
  /*  Iconname */'',
  /* gossip_menu_id`  */0,
  /*  Min Level */80,
  /* Max Level  */80,
  /*  Exp */0,
  35,
  /*  npcflag Was ist er Questgeber oder weiteres? */3,
  /*  Speedwalk */1,
 /*  speedrun */ 1.14286,
  /*  scale */1,
  /*  rank  Normal, Elite?*/1,
  /*  dmgschool Normal Holy Fire? */1,
  /* BaseAttackTime`  */5000,
  /* RangeAttackTime`  */2000,
  /*  Welche Klasse? Krieger Pala, also Mana oder kein MAna? */0,
  /*  unit flkag */2,
  /*  unit flags2  */0,
  /*  dynamicflag */0,
  /* Family  */0,
  /*  Trainer type */0,
  /*  trainer spell */0,
  /*  trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /*  lootid */0,
  /*  pickpocketloot` */0,
/*Skinloot*/ 0,  
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
 /*   VehicleId` */ 0, 
  /* mingold`  */0, 
  /* MaxGold  */0, 
  /*  AiName */'',
  /*  Movement Type */0, 
  /*Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /* Racial Leader  */0,
 /* movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */0, 
  /*  flags_extra` */0, 
  /* Scriptname  */'dark');
  
DELETE FROM `creature` WHERE `id` = 800060;   
UPDATE `creature_template` SET `HealthModifier`=550, `ArmorModifier`=200, `DamageModifier`=15000 WHERE `entry`=800060;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
('800060','800060','0','1','1','22911','0','-9786.02','2133.69','10.65','4.58','25','0','0','1000000','250000','0');







DELETE FROM `creature_loot_template` WHERE `Entry` = 800061;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47241, 0, 100, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 38186, 0, 1, 0, 1, 0, 5, 7);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47249, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47248, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47498, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47510, 0, 25, 0, 1, 1, 1, 1); 


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47512, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47522, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47495, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47307, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800061, 47561, 0, 20, 0, 1, 2, 1, 1); 



DELETE FROM `creature_template` WHERE `entry` = 800061;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800061,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */22911,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Lightshadow',
  /* Subname */'Der unrechtmäßige Prinz',
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
  /* dynamicflag */1,
  /* Family  */0,
  /* Trainer type */0,
  /* trainer spell */0,
  /* trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /* lootid */800061,
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
  /*  Scriptname  */'light');

UPDATE `creature_template` SET `HealthModifier`=550, `ArmorModifier`=200, `DamageModifier`=110 WHERE `entry`=800061;



DELETE FROM `creature` WHERE `guid` = 800061;
-- REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
-- ('800061','800061','0','1','1','22911','0','-7181.47','-4313.64','264.42','0.01','14400','0','0','1000000','250000','0');


DELETE FROM `creature_text` WHERE `entry`=800061;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800061,0,0,'Da kommt mein kleiner erbärmlicher Bruder mit seiner Gefolgschaft!',14,0,100,1,0,17457,'Say Aggro');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800061,1,0,'Hat er Euch wirklich so belogen?',14,0,100,1,0,17458,'Random');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800061,2,0,'Einer von Euch lausigen Maden weniger.',14,0,100,1,0,17459,'Kill');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800061,3,0,'Ihr werdet bereuen was ihr getan habt. Ihr wisst nicht wer Darkshadow wirklich ist!',14,0,100,1,0,17460,'Dead');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800061,4,0,'Spürt die frostige Kälte!',14,0,100,1,0,17460,'Blizzard');



DELETE FROM `creature_template` WHERE `entry` = 800062;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800062,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */22911,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Darkshadow',
  /* Subname */'Der Enterbte Prinz',
  /* Iconname */'',
  /* gossip_menu_id`  */0,
  /* Min Level */83,
  /* Max Level  */83,
  /* Exp */0,
  120,
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
  /* dynamicflag */1,
  /* Family  */0,
  /* Trainer type */0,
  /* trainer spell */0,
  /* trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /* lootid */800062,
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
  /*  AiName */'AggressorAI',
  /*  Movement Type */1, 
  /*  Inahbit Type   */1, 
  /*  Hoverheight */0, 
  /*  Racial Leader  */0,
  /*  movement id  */ 0, 
  /*  RegenHealth`` */1, 
  /*  mechanic_immune_mask` */617299839, 
  /*  flags_extra` */32768, 
  /*  Scriptname  */'');

UPDATE `creature_template` SET `HealthModifier`=5550, `ArmorModifier`=200, `DamageModifier`=110 WHERE `entry`=800062;DELETE FROM `creature_loot_template` WHERE `Entry` = 800063;

REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47241, 0, 100, 0, 1, 0, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 38186, 0, 1, 0, 1, 0, 5, 7);


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47249, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47248, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47498, 0, 25, 0, 1, 1, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47510, 0, 25, 0, 1, 1, 1, 1); 


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47512, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47522, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47495, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47307, 0, 20, 0, 1, 2, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 47561, 0, 20, 0, 1, 2, 1, 1); 



REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50213, 0, 12.5, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50206, 0, 12.5, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50215, 0, 12.5, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50211, 0, 12.5, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50303, 0, 12.5, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50311, 0, 12.5, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50305, 0, 12.5, 0, 1, 3, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50306, 0, 12.5, 0, 1, 3, 1, 1); 


REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50212, 0, 12.5, 0, 1, 4, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50210, 0, 12.5, 0, 1, 4, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50203, 0, 12.5, 0, 1, 4, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50302, 0, 12.5, 0, 1, 4, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50313, 0, 12.5, 0, 1, 4, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50300, 0, 12.5, 0, 4, 4, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50298, 0, 12.5, 0, 1, 4, 1, 1); 
REPLACE INTO `creature_loot_template` (`Entry`,`Item`,`Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`)
VALUES (800063, 50294, 0, 12.5, 0, 1, 4, 1, 1); 




DELETE FROM `creature_template` WHERE `entry` = 800063;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`,`faction` ,`npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES ( /*  ID */ 800063,
  /* Dificculty 1 */0,
  /* Dif2  */ 0,
  /* Dif3 */0,
  /* KillCredit1  */0,
  /* KillCredit2  */0,
  /* Modelid  */22911,
  /* Modelid2  */0,
  /* Modelid3   */0,
  /* Model4  */ 0,
  /* Name  */'Lightshadow',
  /* Subname */'Der unrechtmäßige Prinz',
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
  /* dynamicflag */1,
  /* Family  */0,
  /* Trainer type */0,
  /* trainer spell */0,
  /* trainer class */0,
  /* trainer race  */0,
  /* type  */0,
  /* type flag  */ 0,
  /* lootid */800063,
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
  /*  Scriptname  */'lighthardmode');

UPDATE `creature_template` SET `HealthModifier`=1050, `ArmorModifier`=200, `DamageModifier`=150 WHERE `entry`=800063;



DELETE FROM `creature` WHERE `guid` = 800063;
-- REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
-- ('800063','800063','0','1','1','22911','0','-7181.47','-4313.64','264.42','0.01','14400','0','0','1000000','250000','0');


DELETE FROM `creature_text` WHERE `entry`=800063;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800063,0,0,'Da kommt mein kleiner erbärmlicher Bruder mit seiner Gefolgschaft!',14,0,100,1,0,17457,'Say Aggro');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800063,1,0,'Hat er Euch wirklich so belogen?',14,0,100,1,0,17458,'Random');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800063,2,0,'Einer von Euch lausigen Maden weniger.',14,0,100,1,0,17459,'Kill');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800063,3,0,'Ihr werdet bereuen was ihr getan habt. Ihr wisst nicht wer Darkshadow wirklich ist!',14,0,100,1,0,17460,'Dead');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (800063,4,0,'Spürt die frostige Kälte!',14,0,100,1,0,17460,'Blizzard');


DELETE FROM `quest_template` WHERE  `id` = 800554;
DELETE FROM `quest_template_addon` WHERE `id` = 800554;
DELETE FROM `creature_questender` WHERE `id` = 800053   AND `quest` = 800554;
DELETE FROM `creature_queststarter` WHERE `id` = 800053   AND `quest` = 800554;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */800554,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80,
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 0,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */70,
 /*  RewardOrRequiredMoney  */ 20000,
 /*  RewardMoneyMaxLevel  */ 20000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 4096,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten    */ 700518,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 1,
 /*  RewardAmount2 */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4 */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Erweißt Euch würdig',
 /*  LogDescription  */  'Sammelt 30 Waffen der Unterstützer',
 /*  QuestDescription   */ 'Hallo $C $N, schön das ihr euren Weg hierher gefunden habt. Ich hab eine wichtige Aufgabe für Euch, die für das Königshaus ernorm wichtig ist. Sammelt 30 Waffen der Unterstützer. Sie sind über ganz Azeroth und die Scherbenwelt verteilt. Um genauere Angaben zu finden geht auf die Homepage und sucht im Arsenal nach den Waffen.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Sammelt 30 Waffen der Unterstützer.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 700519,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 30,
 /*  RequiredItemCount2  */ 0,
 /*  RequiredItemCount3  */ 0,
 /*  RequiredItemCount4  */ 0,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */ '',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4   */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);



REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */800554,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 870002,
  /*  NextQuestID  */0,
  /*  ExclusiveGroup  */ 0,
  /*   RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*   RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*   SpecialFlags */ 0);


REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800053, 800554);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800053, 800554);
DELETE FROM `quest_template` WHERE  `id` = 802036;
DELETE FROM `quest_template_addon` WHERE `id` = 802036;
DELETE FROM `creature_questender` WHERE `id` = 16991   AND `quest` = 802036;
DELETE FROM `creature_queststarter` WHERE `id` = 16991   AND `quest` = 802036;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802036,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80,
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 0,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */70,
 /*  RewardOrRequiredMoney  */ 4000000,
 /*  RewardMoneyMaxLevel  */ 4000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 0,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten    */ 41600,
 /*  RewardItem2   */ 700515,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 1,
 /*  RewardAmount2 */ 1,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4 */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Die erste Spur',
 /*  LogDescription  */  'Wir haben eine erste Spur, bringt Kayoulas zerbrochene Anhängerstücke zu mir.',
 /*  QuestDescription   */ 'Hallo $N, ich habe aufregende Neuigkeiten für Euch. Wir haben durch die Auktionspapiere einen ersten Unterhändler ausfindig machen können. Anscheinend soll er am Überfall auf Exitares Frau beteiligt gewesen sein. Geht zu ihm und prüft ob er beteiligt war, und bringt entsprechende Beweise zu mir zurück. Ob er dabei am Leben bleibt oder nicht, ist mir egal. Macht was ihr wollt mit ihm.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Wir haben eine erste Spur, bringt Kayoulas zerbrochener Anhänger zu mir.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 700510,
 /*  RequiredItemId2  */ 700512,
 /*  RequiredItemId3  */ 700513,
 /*  RequiredItemId4  */ 700514,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 1,
 /*  RequiredItemCount2  */ 1,
 /*  RequiredItemCount3  */ 1,
 /*  RequiredItemCount4  */ 1,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */ '',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4   */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);



REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */802036,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802035,
  /*  NextQuestID  */802037,
  /*  ExclusiveGroup  */ 0,
  /*   RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*   RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*   SpecialFlags */ 0);


REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(16991, 802036);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(16991, 802036);
DELETE FROM `quest_template` WHERE  `id` = 802037;
DELETE FROM `quest_template_addon` WHERE `id` = 802037;
DELETE FROM `creature_questender` WHERE `id` = 16991   AND `quest` = 802037;
DELETE FROM `creature_queststarter` WHERE `id` = 16991   AND `quest` = 802037;



REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802037,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80,
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 62,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */70,
 /*  RewardOrRequiredMoney  */ 2000000,
 /*  RewardMoneyMaxLevel  */ 2000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 0,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten    */ 700517,
 /*  RewardItem2   */ 0,
 /*  RewardItem3   */ 0,
 /*  RewardItem4   */ 0,
 /*  RewardAmount1 */ 1,
 /*  RewardAmount2 */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4 */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Die Verfeinerung',
 /*  LogDescription  */  'Bringt mir die glitzernde Spinnenseide.',
 /*  QuestDescription   */ 'Hallo $N, wir haben den fertiggestellten Anhänger hier. Nun muss er mit glitzernder Spinnenseide umgarnt werden. Diese können wir nur bei der Königin der Spinnen finden. Maexxa. Geht zu ihr und entwedet ihr diesen extrem seltenen Seidenstoff. ',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Bringt mir die glitzernde Spinnenseide.',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 700515,
 /*  RequiredItemId2  */ 700516,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 1,
 /*  RequiredItemCount2  */ 1,
 /*  RequiredItemCount3  */ 0,
 /*  RequiredItemCount4  */ 0,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */ '',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4   */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);



REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */802037,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802036,
  /*  NextQuestID  */802038,
  /*  ExclusiveGroup  */ 0,
  /*   RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*   RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*   SpecialFlags */ 0);


REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(16991, 802037);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(16991, 802037);
DELETE FROM `quest_template` WHERE  `id` = 802309;
DELETE FROM `quest_template_addon` WHERE `id` = 802309;
DELETE FROM `creature_questender` WHERE `id` = 800006   AND `quest` = 802309;
DELETE FROM `creature_queststarter` WHERE `id` = 800006   AND `quest` = 802309;


REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802309,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80,
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 62,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */70,
 /*  RewardOrRequiredMoney  */ 5000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 1381,
 /*  Flags  */ 0,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 49632,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */  0,
 /*  RewardChoiceItemID6 */  0,
 /*  RewardChoiceItemQuantity1  */ 5,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Das flammende Herz',
 /*  LogDescription  */  'Bringt Torvan das flammende Herz',
 /*  QuestDescription   */ 'Jetzt wo ihr mir mein Gold gebracht habt, kann ich ja normal mit Euch reden. Bringt mir das flammende Herz des Verdammniswandlers! És ist ein wertvolles episches Stück! Damit lässt sich auf dem Schwarzmarkt ein guter Preis erzielen.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Bringt Torvan das flammende Herz',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 700507,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 1,
 /*  RequiredItemCount2  */ 0,
 /*  RequiredItemCount3  */ 0,
 /*  RequiredItemCount4  */ 0,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */ '',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4   */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);



REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */802309,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802308,
  /*  NextQuestID  */ 802310,
  /*  ExclusiveGroup  */ 0,
  /*   RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*   RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*   SpecialFlags */ 0);


REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800006, 802309);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800006, 802309);

DELETE FROM `quest_template` WHERE  `id` = 802310;
DELETE FROM `quest_template_addon` WHERE `id` = 802310;
DELETE FROM `creature_questender` WHERE `id` = 800006   AND `quest` = 802310;
DELETE FROM `creature_queststarter` WHERE `id` = 800006   AND `quest` = 802310;


REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */802310,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80,
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 62,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */70,
 /*  RewardOrRequiredMoney  */ 50000000,
 /*  RewardMoneyMaxLevel  */ 10000000,
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 1381,
 /*  Flags  */ 0,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardIten */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3 */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5 */  0,
 /*  RewardChoiceItemID6 */  0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Das brennende Herz',
 /*  LogDescription  */  'Bringt Torvan das brennende Herz',
 /*  QuestDescription   */ 'Der Verkauf des flammenden Herzen hat mir eine Menge Gold eingebracht. Ich habe von einem weiteren Herzen gehört. Bringt mir das brennende Herz des Verdammniswandlers Kazzak! És ist ein wertvolles episches Stück! Damit lässt sich auf dem Schwarzmarkt ein guter Preis erzielen. Wenn ihr mir beides gebracht habt, bekommt ihr ein Teil des Erlöses.',
 /*  EndText   */  '',
 /*  OfferRewardText  */  'Seid ihr fertig?',
 /*  RequestItemsText  */ 'Bringt Torvan das brennende Herz',
 /*  QuestCompletionLog  */ 'Es ist Eure Sache was ihr tut.',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 700508,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 1,
 /*  RequiredItemCount2  */ 0,
 /*  RequiredItemCount3  */ 0,
 /*  RequiredItemCount4  */ 0,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */ '',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4   */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);



REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */802310,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*   PrevQuestID */ 802308,
  /*  NextQuestID  */ 802311,
  /*  ExclusiveGroup  */ 0,
  /*   RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*   RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*   SpecialFlags */ 0);


REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800006, 802310);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800006, 802310);

DELETE FROM `quest_template` WHERE  `id` = 870002;
DELETE FROM `quest_template_addon` WHERE `id` = 870002;
DELETE FROM `creature_questender` WHERE `id` = 800053   AND `quest` = 870002;
DELETE FROM `creature_queststarter` WHERE `id` = 800028   AND `quest` = 870002;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */870002,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80, 
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 0,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 100000,
 /*  RewardMoneyMaxLevel  */ 100000,	
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 0,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardItem1  */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3  */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Reise zum Außenposten der Sammler',
 /*  LogDescription  */  'Reist zum Außenposten der Sammler um Euch dort mit Moons Stellvertreter zu treffen.',
 /*  QuestDescription   */ 'Hallo $N. Ihr habt es geschafft. Ihr habt bewiesen das ihr würdig seid den Sammlern gegenüber treten zu können. Am Flussnabel ist unser erster Außenposten. Reißt dorthin um in unsere Gemeinschaft aufgenommen zu werden.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Reist zum Außenposten der Sammler um Euch dort mit Moons Stellvertreter zu treffen.',
 /*  RequestItemsText  */ 'Hallo $N, hast du die Aufgabe abgeschlossen?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 0,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 0,
 /*  RequiredItemCount2  */ 0,
 /*  RequiredItemCount3  */ 0,
 /*  RequiredItemCount4  */ 0,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */'',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4  */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);

REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */870002,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 870001,
  /*  NextQuestID  */870003,
  /*  ExclusiveGroup  */ 0,
  /*  RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*  RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*  SpecialFlags */ 0);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800028, 870002);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800053, 870002);


DELETE FROM `quest_template` WHERE  `id` = 870003;
DELETE FROM `quest_template_addon` WHERE `id` = 870003;
DELETE FROM `creature_questender` WHERE `id` = 800056   AND `quest` = 870003;
DELETE FROM `creature_queststarter` WHERE `id` = 800053   AND `quest` = 870003;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */870003,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80, 
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 0,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 100000,
 /*  RewardMoneyMaxLevel  */ 100000,	
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 0,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardItem1  */ 0,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 0,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3  */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Die Prinzessin',
 /*  LogDescription  */  'Geht zur Prinzessin der Sammler und hört Euch ihre Geschichte an.',
 /*  QuestDescription   */ 'Hallo $N. Willkommen im Außenposten der Sammler. Macht es Euch bequem, und wenn ihr Interesse habt geht zu Prinzessin Alanna. Sie braucht bestimmt ein offenes Ohr. Wenn ihr Zeit habt, wird sie Euch vielleicht etwas erzählen.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Geht zur Prinzessin der Sammler und hört Euch ihre Geschichte an.',
 /*  RequestItemsText  */ 'Hallo $N, hast du die Aufgabe abgeschlossen?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 0,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 0,
 /*  RequiredItemCount2  */ 0,
 /*  RequiredItemCount3  */ 0,
 /*  RequiredItemCount4  */ 0,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */'',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4  */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);

REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */870003,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 870002,
  /*  NextQuestID  */870004,
  /*  ExclusiveGroup  */ 0,
  /*  RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*  RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*  SpecialFlags */ 0);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800053, 870003);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800056, 870003);


DELETE FROM `quest_template` WHERE  `id` = 870100;
DELETE FROM `quest_template_addon` WHERE `id` = 870100;
DELETE FROM `creature_questender` WHERE `id` = 800056   AND `quest` = 870100;
DELETE FROM `creature_queststarter` WHERE `id` = 800056   AND `quest` = 870100;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */870100,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80, 
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 0,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 100000,
 /*  RewardMoneyMaxLevel  */ 100000,	
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 0,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardItem1  */ 44580,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 10,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3  */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'Die verlorene Scherbe',
 /*  LogDescription  */  'Bringt mir meine Scherbe zurück sofort.',
 /*  QuestDescription   */ 'Hey $c. Ich hab meine Scherbe verloren und da ich gehört habe ihr müsst für uns arbeiten und vorallem für mich, die wunderschöne Prinzessin, sollt ihr mir die Scherbe zurückholen. Und wenn ihr sie auch nur ein bisschen verkratzt braucht ihr gar nicht zurück kommen. Ich werde mich dann bei Moon beschweren.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Bringt mir meine Scherbe zurück sofort.',
 /*  RequestItemsText  */ '$C $N, warst du endlich fähig die Aufgabe abzuschließen?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 700509,
 /*  RequiredItemId2  */ 0,
 /*  RequiredItemId3  */ 0,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 1,
 /*  RequiredItemCount2  */ 0,
 /*  RequiredItemCount3  */ 0,
 /*  RequiredItemCount4  */ 0,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */'',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4  */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);

REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */870100,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 870003,
  /*  NextQuestID  */870101,
  /*  ExclusiveGroup  */ 0,
  /*  RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*  RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*  SpecialFlags */ 0);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800056, 870100);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800056, 870100);


DELETE FROM `quest_template` WHERE  `id` = 890002;
DELETE FROM `quest_template_addon` WHERE `id` = 890002;
DELETE FROM `creature_questender` WHERE `id` = 800052   AND `quest` = 890002;
DELETE FROM `creature_queststarter` WHERE `id` = 800052   AND `quest` = 890002;

REPLACE INTO `quest_template` (`ID`, `Method`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestType`, `SuggestedGroupNum`, `LimitTime`, `RequiredRaces`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `RewardTitle`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `LogTitle`, `LogDescription`, `QuestDescription`, `EndText`, `OfferRewardText`, `RequestItemsText`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `VerifiedBuild`) VALUES
(/*  ID    */890002,
 /*  Method  */ 2,
 /*  QuestLevel  */ 80, 
 /*  MinLevel   */80,
 /*  QuestSortID  */ -1,
 /*  QuestType*/ 83,
 /*  SuggestedGroupNum  */ 0,
 /*  LimitTime  */ 0,
 /*  RequiredRaces   */1791,
 /*  RequiredFactionId1   */ 0,
 /*  RequiredFactionId2  */ 0,
 /*  RequiredFactionValue1  */ 0,
 /*  RequiredFactionValue2   */ 0,
 /*  NextQuestIdChain  */ 0,
 /*  RewardXPId   */0,
 /*  RewardOrRequiredMoney  */ 50000000,
 /*  RewardMoneyMaxLevel  */ 50000000,	
 /*  RewardSpell   */ 0,
 /*  RewardSpellCast  */ 0,
 /*  RewardHonor  */ 0,
 /*  RewardHonorMultiplier  */ 0,
 /*  SourceItemId  */ 0,
 /*  Flags  */ 0,
 /*  RewardTitle  */ 0,
 /*  RequiredPlayerKills  */ 0,
 /*  RewardTalents  */ 0,
 /*  RewardArenaPoints  */ 0,
 /*  RewardItem1  */ 50250,
 /*  RewardItem2  */ 0,
 /*  RewardItem3  */ 0,
 /*  RewardItem4  */ 0,
 /*  RewardAmount1*/ 1,
 /*  RewardAmount2  */ 0,
 /*  RewardAmount3  */ 0,
 /*  RewardAmount4  */ 0,
 /*  RewardChoiceItemID1  */ 0,
 /*  RewardChoiceItemID2  */ 0,
 /*  RewardChoiceItemID3  */ 0,
 /*  RewardChoiceItemID4  */ 0,
 /*  RewardChoiceItemID5  */ 0,
 /*  RewardChoiceItemID6  */ 0,
 /*  RewardChoiceItemQuantity1  */ 0,
 /*  RewardChoiceItemQuantity2  */ 0,
 /*  RewardChoiceItemQuantity3  */ 0,
 /*  RewardChoiceItemQuantity4  */ 0,
 /*  RewardChoiceItemQuantity5  */ 0,
 /*  RewardChoiceItemQuantity6  */ 0,
 /*  RewardFactionID1  */ 0,
 /*  RewardFactionID2  */ 0,
 /*  RewardFactionID3  */ 0,
 /*  RewardFactionID4  */ 0,
 /*  RewardFactionID5  */ 0,
 /*  RewardFactionValue1  */ 0,
 /*  RewardFactionValue2  */ 0,
 /*  RewardFactionValue3  */ 0,
 /*  RewardFactionValue4  */ 0,
 /*  RewardFactionValue5 */ 0,
 /*  RewardFactionOverride1  */ 0,
 /*  RewardFactionOverride2  */ 0,
 /*  RewardFactionOverride3  */ 0,
 /*  RewardFactionOverride4  */ 0,
 /*  RewardFactionOverride5  */ 0,
 /*  PointMapId  */ 0,
 /*  PointX  */ 0,
 /*  PointY  */ 0,
 /*  PointOption  */ 0,
 /*  LogTitle  */ 'MMOWNING WORLD',
 /*  LogDescription  */  'Sammelt 600 Königstinte, 600 Löwentinte, 450 Meerestinte',
 /*  QuestDescription   */ 'Hallo $N. Heute müsst ihr mir Tinten sammeln. Ich brauche einiges an Tinten da ich die Bibel neu schreiben möchte. Und das per Hand. Da braucht man eben unter Wasser einiges an Tinten.',
 /*  EndText */  '',
 /*  OfferRewardText bevor man beendet  */  'Geht zu Orca und begrüßt ihn hier auf MMOwning World.',
 /*  RequestItemsText  */ 'Hallo $N, hast du die Aufgabe abgeschlossen?',
 /*  Quest Completed Text wird rechts im Questlog angezeigt der Text */ '',
 /*  RequiredNpcOrGo1  */ 0,
 /*  RequiredNpcOrGo2  */ 0,
 /*  RequiredNpcOrGo3  */ 0,
 /*  RequiredNpcOrGo4  */ 0,
 /*  RequiredNpcOrGoCount1  */ 0,
 /*  RequiredNpcOrGoCount2  */ 0,
 /*  RequiredNpcOrGoCount3  */ 0,
 /*  RequiredNpcOrGoCount4  */ 0,
 /*  RequiredSourceItemId1  */ 0,
 /*  RequiredSourceItemId2  */ 0,
 /*  RequiredSourceItemId3  */ 0,
 /*  RequiredSourceItemId4  */ 0,
 /*  RequiredSourceItemCount1  */ 0,
 /*  RequiredSourceItemCount2  */ 0,
 /*  RequiredSourceItemCount3  */ 0,
 /*  RequiredSourceItemCount4  */ 0,
 /*  RequiredItemId1  */ 43116,
 /*  RequiredItemId2  */ 43119,
 /*  RequiredItemId3  */ 43126,
 /*  RequiredItemId4  */ 0,
 /*  RequiredItemId5  */ 0,
 /*  RequiredItemId6  */ 0,
 /*  RequiredItemCount1  */ 600,
 /*  RequiredItemCount2  */ 600,
 /*  RequiredItemCount3  */ 450,
 /*  RequiredItemCount4  */ 0,
 /*  RequiredItemCount5  */ 0,
 /*  RequiredItemCount6  */ 0,
 /*  Unknown0  */ 0,
 /*  ObjectiveText1  */'',
 /*  ObjectiveText2  */'',
 /*  ObjectiveText3  */'',
 /*  ObjectiveText4  */'',
 /*  DetailsEmote1  */ 0,
 /*  DetailsEmote2  */ 0,
 /*  DetailsEmote3  */ 0,
 /*  DetailsEmote4  */ 0,
 /*  DetailsEmoteDelay1  */ 0,
 /*  DetailsEmoteDelay2  */ 0,
 /*  DetailsEmoteDelay3  */ 0,
 /*  DetailsEmoteDelay4  */ 0,
 /*  EmoteOnIncomplete  */ 0,
 /*  EmoteOnComplete  */ 0,
 /*  OfferRewardEmote1  */ 0,
 /*  OfferRewardEmote2  */ 0,
 /*  OfferRewardEmote3  */ 0,
 /*  OfferRewardEmote4  */ 0,
 /*  OfferRewardEmoteDelay1  */ 0,
 /*  OfferRewardEmoteDelay2  */ 0,
 /*  OfferRewardEmoteDelay3  */ 0,
 /*  OfferRewardEmoteDelay4  */ 0,
 1);

REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
( /*  ID  */890002,
  /*  MaxLevel  */80,
  /*  AllowableClasses  */2047,
  /*  SourceSpellID  */ 0,
  /*  PrevQuestID */ 890000,
  /*  NextQuestID  */890002,
  /*  ExclusiveGroup  */ 0,
  /*  RewardMailTemplateID */ 0,
  /*  RewardMailDelay  */ 0,
  /*  RequiredSkillID  */ 0,
  /*  RequiredSkillPoints  */ 0,
  /*  RequiredMinRepFaction  */ 0,
  /*  RequiredMaxRepFaction  */ 0,
  /*  RequiredMinRepValue */ 0,
  /*  RequiredMaxRepValue  */ 0,
  /*  ProvidedItemCount  */ 0,
  /*  SpecialFlags */ 0);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(800052, 890002);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(800052, 890002);


DELETE FROM `creature_loot_template` WHERE `Entry` = 5710 and `Item` = 700509;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('5710', '700509', '0', '2.5', '0', '1', '0', '1', '1');
DELETE FROM `item_template` WHERE `entry` = 700509;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) 
VALUES (700509, 12, 0, 'Zerbrochene Scherbe', 7339, 2, 2147483904, 0, 0, 0, 0, 0, 2047, 1791, 80, 80, 0, 0, 0, 0, 0, 1770, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eigentum der Prinzessin der Sammler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);



DELETE FROM `creature_loot_template` WHERE `Entry` = 17308 and `Item` = 700510;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('17308', '700510', '0', '2.5', '1', '1', '0', '1', '1');
DELETE FROM `item_template` WHERE `entry` = 700510;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700510, 12, 0, 'Zerbrochenes Stück des Anhängers', 7339, 5, 8, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Er strahlt Liebe aus.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);



DELETE FROM `item_template` WHERE `entry` = 700511;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700511, 12, 0, 'Magisches Medallion der Sammler', 7339, 5, 72, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Magische Töne kommen aus dem Inneren.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,'teleportitem', 0, 0, 0, 0, 4);



DELETE FROM `creature_loot_template` WHERE `Entry` = 20886 and `Item` = 700512;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('20886', '700512', '0', '2.5', '1', '1', '0', '1', '1');
DELETE FROM `item_template` WHERE `entry` = 700512;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700512, 12, 0, 'Zerbrochenes Stück des Anhängers', 7339, 5, 8, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Er strahlt Liebe aus.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);


DELETE FROM `creature_loot_template` WHERE `Entry` = 17798 and `Item` = 700513;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('17798', '700513', '0', '2.5', '1', '1', '0', '1', '1');
DELETE FROM `item_template` WHERE `entry` = 700513;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700513, 12, 0, 'Zerbrochenes Stück des Anhängers', 7339, 5, 8, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Er strahlt Liebe aus.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);


DELETE FROM `creature_loot_template` WHERE `Entry` = 17879 and `Item` = 700514;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('17879', '700514', '0', '2.5', '1', '1', '0', '1', '1');
DELETE FROM `item_template` WHERE `entry` = 700514;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700514, 12, 0, 'Zerbrochenes Stück des Anhängers', 7339, 5, 8, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Er strahlt Liebe aus.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);


DELETE FROM `item_template` WHERE `entry` = 700515;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700515, 12, 0, 'Zusammengesetzter Anhänger', 7339, 5, 8, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Magie durchströmt ihn.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);




DELETE FROM `creature_loot_template` WHERE `Entry` = 15952 and `Item` = 700516;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('15952', '700516', '0', '15', '1', '1', '0', '1', '1');
DELETE FROM `item_template` WHERE `entry` = 700516;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700516, 12, 0, 'Glitzernde Spinnenseide', 7339, 5, 8, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,'Sie ist weich und flauschig.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);



DELETE FROM `item_template` WHERE `entry` = 700517;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) VALUES (700517, 12, 0, 'Seidener Anhänger', 7339, 5, 8, 0, 0, 0, 0, 0, 2047, 1791, 1, 80, 0, 0, 0, 0, 0, 1770, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,'Sie ist weich und flauschig.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 4);



DELETE FROM `item_template` WHERE `entry` = 700518;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) 
VALUES (700518, 12, 0, 'Abzeichen von Darkshadow', 7339, 2, 2147483904, 0, 0, 0, 0, 0, 2047, 1791, 80, 80, 0, 0, 0, 0, 0, 1770, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eigentum der Prinzessin der Sammler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
UPDATE `item_template` SET `stackable`='100' WHERE `entry`='700518';




DELETE FROM `creature_loot_template` WHERE `Entry` = 36478 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 36522 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 36564 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 36499 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 28011 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 28096 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 24601 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 25600 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 17151 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 17954 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 21124 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 20459 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 683 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 736 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 531 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 7039 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 485 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 2579 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 3823 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 3809 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 7092 and `Item` = 700519;
DELETE FROM `creature_loot_template` WHERE `Entry` = 14458 and `Item` = 700519;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('36478', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('36522', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('36564', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('36499', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('28011', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('28096', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('24601', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('25600', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('17151', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('17954', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('21124', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('20459', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('683', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('736', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('531', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('7039', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('485', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('2579', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('3823', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('3809', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('7092', '700519', '0', '5', '0', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES ('14458', '700519', '0', '5', '0', '1', '0', '1', '1');

DELETE FROM `item_template` WHERE `entry` = 700519;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`) 
VALUES (700519, 12, 0, 'Waffen der Unterstützer', 55276, 2, 2147483904, 0, 0, 0, 0, 0, 2047, 1791, 80, 80, 0, 0, 0, 0, 0, 1770, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Das Königshaus sucht nach diesen Waffen', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
UPDATE `item_template` SET `stackable`='100' WHERE `entry`='700519';
