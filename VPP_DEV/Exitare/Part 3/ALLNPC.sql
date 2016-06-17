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


